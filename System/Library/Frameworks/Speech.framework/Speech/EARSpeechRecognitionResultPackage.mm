@interface EARSpeechRecognitionResultPackage
- (EARSpeechRecognitionResultPackage)initWithCoder:(id)a3;
- (EARSpeechRecognitionResultPackage)initWithPackage:(id)a3 needsLeadingSpace:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARSpeechRecognitionResultPackage

- (EARSpeechRecognitionResultPackage)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = EARSpeechRecognitionResultPackage;
  v5 = [(EARSpeechRecognitionResultPackage *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recognition"];
    recognition = v5->_recognition;
    v5->_recognition = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preITNRecognition"];
    preITNRecognition = v5->_preITNRecognition;
    v5->_preITNRecognition = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unrepairedRecognition"];
    unrepairedRecognition = v5->_unrepairedRecognition;
    v5->_unrepairedRecognition = v10;

    v5->_isFinal = [v4 decodeBoolForKey:@"isFinal"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioAnalytics"];
    audioAnalytics = v5->_audioAnalytics;
    v5->_audioAnalytics = v12;

    [v4 decodeDoubleForKey:@"utteranceStart"];
    v5->_utteranceStart = v14;
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"correctPartialResultIndexList"];
    correctPartialResultIndexList = v5->_correctPartialResultIndexList;
    v5->_correctPartialResultIndexList = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"nBestVoiceCommandInterpretations"];
    nBestVoiceCommandInterpretations = v5->_nBestVoiceCommandInterpretations;
    v5->_nBestVoiceCommandInterpretations = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"preITNNBestVoiceCommandInterpretations"];
    preITNNBestVoiceCommandInterpretations = v5->_preITNNBestVoiceCommandInterpretations;
    v5->_preITNNBestVoiceCommandInterpretations = v28;

    v5->_recognitionPaused = [v4 decodeBoolForKey:@"recognitionPaused"];
    v5->_firstResultAfterResume = [v4 decodeBoolForKey:@"firstResultAfterResume"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endOfSentenceLikelihood"];
    endOfSentenceLikelihood = v5->_endOfSentenceLikelihood;
    v5->_endOfSentenceLikelihood = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latticeMitigatorResult"];
    latticeMitigatorResult = v5->_latticeMitigatorResult;
    v5->_latticeMitigatorResult = v32;

    v5->_numOneBestTokensExcludingTriggerPhrase = [v4 decodeIntegerForKey:@"numOneBestTokensExcludingTriggerPhrase"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceCommandDebugInfo"];
    voiceCommandDebugInfo = v5->_voiceCommandDebugInfo;
    v5->_voiceCommandDebugInfo = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"performanceMarkers"];
    performanceMarkers = v5->_performanceMarkers;
    v5->_performanceMarkers = v36;

    v5->_needsLeadingSpace = [v4 decodeBoolForKey:@"needsLeadingSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  recognition = self->_recognition;
  v5 = a3;
  [v5 encodeObject:recognition forKey:@"recognition"];
  [v5 encodeObject:self->_preITNRecognition forKey:@"preITNRecognition"];
  [v5 encodeObject:self->_unrepairedRecognition forKey:@"unrepairedRecognition"];
  [v5 encodeBool:self->_isFinal forKey:@"isFinal"];
  [v5 encodeObject:self->_audioAnalytics forKey:@"audioAnalytics"];
  [v5 encodeDouble:@"utteranceStart" forKey:self->_utteranceStart];
  [v5 encodeObject:self->_correctPartialResultIndexList forKey:@"correctPartialResultIndexList"];
  [v5 encodeObject:self->_nBestVoiceCommandInterpretations forKey:@"nBestVoiceCommandInterpretations"];
  [v5 encodeObject:self->_preITNNBestVoiceCommandInterpretations forKey:@"preITNNBestVoiceCommandInterpretations"];
  [v5 encodeBool:self->_recognitionPaused forKey:@"recognitionPaused"];
  [v5 encodeBool:self->_firstResultAfterResume forKey:@"firstResultAfterResume"];
  [v5 encodeObject:self->_endOfSentenceLikelihood forKey:@"endOfSentenceLikelihood"];
  [v5 encodeObject:self->_latticeMitigatorResult forKey:@"latticeMitigatorResult"];
  [v5 encodeInteger:self->_numOneBestTokensExcludingTriggerPhrase forKey:@"numOneBestTokensExcludingTriggerPhrase"];
  [v5 encodeObject:self->_voiceCommandDebugInfo forKey:@"voiceCommandDebugInfo"];
  [v5 encodeObject:self->_performanceMarkers forKey:@"performanceMarkers"];
  [v5 encodeBool:self->_needsLeadingSpace forKey:@"needsLeadingSpace"];
}

- (EARSpeechRecognitionResultPackage)initWithPackage:(id)a3 needsLeadingSpace:(BOOL)a4
{
  v6 = a3;
  v47.receiver = self;
  v47.super_class = EARSpeechRecognitionResultPackage;
  v7 = [(EARSpeechRecognitionResultPackage *)&v47 init];
  if (v7)
  {
    v8 = [EARSpeechRecognition alloc];
    v9 = [v6 recognition];
    v10 = [(EARSpeechRecognition *)v8 initWithRecognition:v9];

    v11 = [EARSpeechRecognition alloc];
    v12 = [v6 preITNRecognition];
    v13 = [(EARSpeechRecognition *)v11 initWithRecognition:v12];

    v14 = [EARAudioAnalytics alloc];
    v15 = [v6 audioAnalytics];
    v16 = [(EARAudioAnalytics *)v14 initWithAnalytics:v15];

    v17 = [EARSpeechRecognition alloc];
    v18 = [v6 unrepairedRecognition];
    v19 = [(EARSpeechRecognition *)v17 initWithRecognition:v18];

    v20 = [EARLatticeMitigatorResult alloc];
    v21 = [v6 latticeMitigatorResult];
    v22 = [(EARLatticeMitigatorResult *)v20 initWithLatticeMitigatorResult:v21];

    recognition = v7->_recognition;
    v7->_recognition = v10;
    v24 = v10;

    preITNRecognition = v7->_preITNRecognition;
    v7->_preITNRecognition = v13;
    v26 = v13;

    unrepairedRecognition = v7->_unrepairedRecognition;
    v7->_unrepairedRecognition = v19;
    v28 = v19;

    v7->_isFinal = [v6 isFinal];
    audioAnalytics = v7->_audioAnalytics;
    v7->_audioAnalytics = v16;
    v30 = v16;

    [v6 utteranceStart];
    v7->_utteranceStart = v31;
    v32 = [v6 correctPartialResultIndexList];
    correctPartialResultIndexList = v7->_correctPartialResultIndexList;
    v7->_correctPartialResultIndexList = v32;

    v34 = [v6 nBestVoiceCommandInterpretations];
    nBestVoiceCommandInterpretations = v7->_nBestVoiceCommandInterpretations;
    v7->_nBestVoiceCommandInterpretations = v34;

    v36 = [v6 preITNNBestVoiceCommandInterpretations];
    preITNNBestVoiceCommandInterpretations = v7->_preITNNBestVoiceCommandInterpretations;
    v7->_preITNNBestVoiceCommandInterpretations = v36;

    v7->_recognitionPaused = [v6 recognitionPaused];
    v7->_firstResultAfterResume = [v6 firstResultAfterResume];
    v38 = [v6 endOfSentenceLikelihood];
    endOfSentenceLikelihood = v7->_endOfSentenceLikelihood;
    v7->_endOfSentenceLikelihood = v38;

    latticeMitigatorResult = v7->_latticeMitigatorResult;
    v7->_latticeMitigatorResult = v22;
    v41 = v22;

    v7->_numOneBestTokensExcludingTriggerPhrase = [v6 numTokensExcludingTriggerPhrase];
    v42 = [v6 voiceCommandDebugInfo];
    voiceCommandDebugInfo = v7->_voiceCommandDebugInfo;
    v7->_voiceCommandDebugInfo = v42;

    v44 = [v6 performanceMarkers];
    performanceMarkers = v7->_performanceMarkers;
    v7->_performanceMarkers = v44;

    v7->_needsLeadingSpace = a4;
  }

  return v7;
}

@end