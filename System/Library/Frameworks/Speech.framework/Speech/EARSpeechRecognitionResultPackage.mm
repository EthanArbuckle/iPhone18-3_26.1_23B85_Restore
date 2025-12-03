@interface EARSpeechRecognitionResultPackage
- (EARSpeechRecognitionResultPackage)initWithCoder:(id)coder;
- (EARSpeechRecognitionResultPackage)initWithPackage:(id)package needsLeadingSpace:(BOOL)space;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARSpeechRecognitionResultPackage

- (EARSpeechRecognitionResultPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = EARSpeechRecognitionResultPackage;
  v5 = [(EARSpeechRecognitionResultPackage *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recognition"];
    recognition = v5->_recognition;
    v5->_recognition = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preITNRecognition"];
    preITNRecognition = v5->_preITNRecognition;
    v5->_preITNRecognition = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unrepairedRecognition"];
    unrepairedRecognition = v5->_unrepairedRecognition;
    v5->_unrepairedRecognition = v10;

    v5->_isFinal = [coderCopy decodeBoolForKey:@"isFinal"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioAnalytics"];
    audioAnalytics = v5->_audioAnalytics;
    v5->_audioAnalytics = v12;

    [coderCopy decodeDoubleForKey:@"utteranceStart"];
    v5->_utteranceStart = v14;
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"correctPartialResultIndexList"];
    correctPartialResultIndexList = v5->_correctPartialResultIndexList;
    v5->_correctPartialResultIndexList = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"nBestVoiceCommandInterpretations"];
    nBestVoiceCommandInterpretations = v5->_nBestVoiceCommandInterpretations;
    v5->_nBestVoiceCommandInterpretations = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"preITNNBestVoiceCommandInterpretations"];
    preITNNBestVoiceCommandInterpretations = v5->_preITNNBestVoiceCommandInterpretations;
    v5->_preITNNBestVoiceCommandInterpretations = v28;

    v5->_recognitionPaused = [coderCopy decodeBoolForKey:@"recognitionPaused"];
    v5->_firstResultAfterResume = [coderCopy decodeBoolForKey:@"firstResultAfterResume"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endOfSentenceLikelihood"];
    endOfSentenceLikelihood = v5->_endOfSentenceLikelihood;
    v5->_endOfSentenceLikelihood = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latticeMitigatorResult"];
    latticeMitigatorResult = v5->_latticeMitigatorResult;
    v5->_latticeMitigatorResult = v32;

    v5->_numOneBestTokensExcludingTriggerPhrase = [coderCopy decodeIntegerForKey:@"numOneBestTokensExcludingTriggerPhrase"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceCommandDebugInfo"];
    voiceCommandDebugInfo = v5->_voiceCommandDebugInfo;
    v5->_voiceCommandDebugInfo = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"performanceMarkers"];
    performanceMarkers = v5->_performanceMarkers;
    v5->_performanceMarkers = v36;

    v5->_needsLeadingSpace = [coderCopy decodeBoolForKey:@"needsLeadingSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  recognition = self->_recognition;
  coderCopy = coder;
  [coderCopy encodeObject:recognition forKey:@"recognition"];
  [coderCopy encodeObject:self->_preITNRecognition forKey:@"preITNRecognition"];
  [coderCopy encodeObject:self->_unrepairedRecognition forKey:@"unrepairedRecognition"];
  [coderCopy encodeBool:self->_isFinal forKey:@"isFinal"];
  [coderCopy encodeObject:self->_audioAnalytics forKey:@"audioAnalytics"];
  [coderCopy encodeDouble:@"utteranceStart" forKey:self->_utteranceStart];
  [coderCopy encodeObject:self->_correctPartialResultIndexList forKey:@"correctPartialResultIndexList"];
  [coderCopy encodeObject:self->_nBestVoiceCommandInterpretations forKey:@"nBestVoiceCommandInterpretations"];
  [coderCopy encodeObject:self->_preITNNBestVoiceCommandInterpretations forKey:@"preITNNBestVoiceCommandInterpretations"];
  [coderCopy encodeBool:self->_recognitionPaused forKey:@"recognitionPaused"];
  [coderCopy encodeBool:self->_firstResultAfterResume forKey:@"firstResultAfterResume"];
  [coderCopy encodeObject:self->_endOfSentenceLikelihood forKey:@"endOfSentenceLikelihood"];
  [coderCopy encodeObject:self->_latticeMitigatorResult forKey:@"latticeMitigatorResult"];
  [coderCopy encodeInteger:self->_numOneBestTokensExcludingTriggerPhrase forKey:@"numOneBestTokensExcludingTriggerPhrase"];
  [coderCopy encodeObject:self->_voiceCommandDebugInfo forKey:@"voiceCommandDebugInfo"];
  [coderCopy encodeObject:self->_performanceMarkers forKey:@"performanceMarkers"];
  [coderCopy encodeBool:self->_needsLeadingSpace forKey:@"needsLeadingSpace"];
}

- (EARSpeechRecognitionResultPackage)initWithPackage:(id)package needsLeadingSpace:(BOOL)space
{
  packageCopy = package;
  v47.receiver = self;
  v47.super_class = EARSpeechRecognitionResultPackage;
  v7 = [(EARSpeechRecognitionResultPackage *)&v47 init];
  if (v7)
  {
    v8 = [EARSpeechRecognition alloc];
    recognition = [packageCopy recognition];
    v10 = [(EARSpeechRecognition *)v8 initWithRecognition:recognition];

    v11 = [EARSpeechRecognition alloc];
    preITNRecognition = [packageCopy preITNRecognition];
    v13 = [(EARSpeechRecognition *)v11 initWithRecognition:preITNRecognition];

    v14 = [EARAudioAnalytics alloc];
    audioAnalytics = [packageCopy audioAnalytics];
    v16 = [(EARAudioAnalytics *)v14 initWithAnalytics:audioAnalytics];

    v17 = [EARSpeechRecognition alloc];
    unrepairedRecognition = [packageCopy unrepairedRecognition];
    v19 = [(EARSpeechRecognition *)v17 initWithRecognition:unrepairedRecognition];

    v20 = [EARLatticeMitigatorResult alloc];
    latticeMitigatorResult = [packageCopy latticeMitigatorResult];
    v22 = [(EARLatticeMitigatorResult *)v20 initWithLatticeMitigatorResult:latticeMitigatorResult];

    recognition = v7->_recognition;
    v7->_recognition = v10;
    v24 = v10;

    preITNRecognition = v7->_preITNRecognition;
    v7->_preITNRecognition = v13;
    v26 = v13;

    unrepairedRecognition = v7->_unrepairedRecognition;
    v7->_unrepairedRecognition = v19;
    v28 = v19;

    v7->_isFinal = [packageCopy isFinal];
    audioAnalytics = v7->_audioAnalytics;
    v7->_audioAnalytics = v16;
    v30 = v16;

    [packageCopy utteranceStart];
    v7->_utteranceStart = v31;
    correctPartialResultIndexList = [packageCopy correctPartialResultIndexList];
    correctPartialResultIndexList = v7->_correctPartialResultIndexList;
    v7->_correctPartialResultIndexList = correctPartialResultIndexList;

    nBestVoiceCommandInterpretations = [packageCopy nBestVoiceCommandInterpretations];
    nBestVoiceCommandInterpretations = v7->_nBestVoiceCommandInterpretations;
    v7->_nBestVoiceCommandInterpretations = nBestVoiceCommandInterpretations;

    preITNNBestVoiceCommandInterpretations = [packageCopy preITNNBestVoiceCommandInterpretations];
    preITNNBestVoiceCommandInterpretations = v7->_preITNNBestVoiceCommandInterpretations;
    v7->_preITNNBestVoiceCommandInterpretations = preITNNBestVoiceCommandInterpretations;

    v7->_recognitionPaused = [packageCopy recognitionPaused];
    v7->_firstResultAfterResume = [packageCopy firstResultAfterResume];
    endOfSentenceLikelihood = [packageCopy endOfSentenceLikelihood];
    endOfSentenceLikelihood = v7->_endOfSentenceLikelihood;
    v7->_endOfSentenceLikelihood = endOfSentenceLikelihood;

    latticeMitigatorResult = v7->_latticeMitigatorResult;
    v7->_latticeMitigatorResult = v22;
    v41 = v22;

    v7->_numOneBestTokensExcludingTriggerPhrase = [packageCopy numTokensExcludingTriggerPhrase];
    voiceCommandDebugInfo = [packageCopy voiceCommandDebugInfo];
    voiceCommandDebugInfo = v7->_voiceCommandDebugInfo;
    v7->_voiceCommandDebugInfo = voiceCommandDebugInfo;

    performanceMarkers = [packageCopy performanceMarkers];
    performanceMarkers = v7->_performanceMarkers;
    v7->_performanceMarkers = performanceMarkers;

    v7->_needsLeadingSpace = space;
  }

  return v7;
}

@end