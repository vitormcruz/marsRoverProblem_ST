as yet unclassified
testLandingRoversInMars

	| transcriptMarsRover transcriptFake |
	
	transcriptFake := TranscriptFake new.
 
	transcriptMarsRover := TranscriptMarsRover newWithTranscript: transcriptFake.
	
	transcriptMarsRover startScript 
								put: '5 5'; 
								put: '1 2 N';												
								put: 'LMLMLMLMM';
								put: '3 3 E';
								put: 'MMRMMRMRRM';
								finishAndSendRoversToMars.
	
	self assert: transcriptFake messages equals: #('1 3 N' '5 1 E') asOrderedCollection.
	