@interface WFSpeechSynthesizer
+ (id)defaultAudioFileSettings;
- (AVSpeechSynthesizer)avSynthesizer;
- (SiriTTSDaemonSession)stsSynthesizer;
- (WFSpeechSynthesizer)init;
- (id)avSpeechUtteranceForVoice:(id)voice utterance:(id)utterance rate:(double)rate pitch:(double)pitch;
- (id)invalidAudioBufferError;
- (id)outputFileURLForUtterance:(id)utterance;
- (id)stsSpeechRequestForVoice:(id)voice utterance:(id)utterance rate:(double)rate pitch:(double)pitch intoFile:(BOOL)file;
- (unint64_t)audioFormatForSettings:(id)settings;
- (void)failSpeakingAVUtterance:(id)utterance withError:(id)error;
- (void)failSpeakingUtterance:(id)utterance withError:(id)error;
- (void)speakUtterance:(id)utterance usingVoice:(id)voice rate:(double)rate pitch:(double)pitch;
- (void)speakUtteranceIntoFile:(id)file usingVoice:(id)voice rate:(double)rate pitch:(double)pitch;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)speechSynthesizer:(id)synthesizer willSpeakRangeOfSpeechString:(_NSRange)string utterance:(id)utterance;
@end

@implementation WFSpeechSynthesizer

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  utteranceCopy = utterance;
  avUtteranceOutputTable = [(WFSpeechSynthesizer *)self avUtteranceOutputTable];
  v6 = [avUtteranceOutputTable objectForKey:utteranceCopy];

  avUtteranceOutputTable2 = [(WFSpeechSynthesizer *)self avUtteranceOutputTable];
  [avUtteranceOutputTable2 removeObjectForKey:utteranceCopy];

  if (v6 && ([(WFSpeechSynthesizer *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    delegate3 = [MEMORY[0x277CFC3C8] fileWithURL:v6 options:1];
    delegate = [(WFSpeechSynthesizer *)self delegate];
    speechString = [utteranceCopy speechString];
    [delegate speechSynthesizer:self didFinishSpeakingUtterance:speechString intoFile:delegate3];
  }

  else
  {
    delegate2 = [(WFSpeechSynthesizer *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate3 = [(WFSpeechSynthesizer *)self delegate];
    delegate = [utteranceCopy speechString];
    [delegate3 speechSynthesizer:self didFinishSpeakingUtterance:delegate];
  }

LABEL_7:
}

- (void)speechSynthesizer:(id)synthesizer willSpeakRangeOfSpeechString:(_NSRange)string utterance:(id)utterance
{
  length = string.length;
  location = string.location;
  utteranceCopy = utterance;
  delegate = [(WFSpeechSynthesizer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(WFSpeechSynthesizer *)self delegate];
    speechString = [utteranceCopy speechString];
    [delegate2 speechSynthesizer:self willSpeakRangeOfUtterance:location utterance:{length, speechString}];
  }
}

- (id)invalidAudioBufferError
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v3 = WFLocalizedString(@"Unable to Make Spoken Audio from Text");
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"WFSpeechSynthesizerErrorDomain" code:0 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)audioFormatForSettings:(id)settings
{
  settingsCopy = settings;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v4 = getAVLinearPCMIsFloatKeySymbolLoc_ptr;
  v27 = getAVLinearPCMIsFloatKeySymbolLoc_ptr;
  if (!getAVLinearPCMIsFloatKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getAVLinearPCMIsFloatKeySymbolLoc_block_invoke;
    v23 = &unk_278C222B8;
    v5 = AVFoundationLibrary();
    v25[3] = dlsym(v5, "AVLinearPCMIsFloatKey");
    getAVLinearPCMIsFloatKeySymbolLoc_ptr = v25[3];
    v4 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMIsFloatKey(void)"];
    [currentHandler handleFailureInFunction:v19 file:@"WFSpeechSynthesizer.m" lineNumber:44 description:{@"%s", dlerror(), v20, v21, v22, v23}];
LABEL_22:

    __break(1u);
    return result;
  }

  v6 = [settingsCopy objectForKey:*v4];
  bOOLValue = [v6 BOOLValue];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getAVLinearPCMBitDepthKeySymbolLoc_ptr;
  v27 = getAVLinearPCMBitDepthKeySymbolLoc_ptr;
  if (!getAVLinearPCMBitDepthKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getAVLinearPCMBitDepthKeySymbolLoc_block_invoke;
    v23 = &unk_278C222B8;
    v9 = AVFoundationLibrary();
    v25[3] = dlsym(v9, "AVLinearPCMBitDepthKey");
    getAVLinearPCMBitDepthKeySymbolLoc_ptr = v25[3];
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMBitDepthKey(void)"];
    [currentHandler handleFailureInFunction:v19 file:@"WFSpeechSynthesizer.m" lineNumber:43 description:{@"%s", dlerror(), v20, v21, v22, v23}];
    goto LABEL_22;
  }

  v10 = [settingsCopy objectForKey:*v8];
  integerValue = [v10 integerValue];

  v12 = 16;
  if (bOOLValue)
  {
    v12 = 64;
  }

  v13 = 2;
  if (!bOOLValue)
  {
    v13 = 3;
  }

  v14 = 4;
  if (bOOLValue)
  {
    v14 = 1;
  }

  if (integerValue == v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (integerValue == 32)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (id)avSpeechUtteranceForVoice:(id)voice utterance:(id)utterance rate:(double)rate pitch:(double)pitch
{
  voiceCopy = voice;
  utteranceCopy = utterance;
  if (!utteranceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2050000000;
  v14 = getAVSpeechUtteranceClass_softClass;
  v49 = getAVSpeechUtteranceClass_softClass;
  if (!getAVSpeechUtteranceClass_softClass)
  {
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __getAVSpeechUtteranceClass_block_invoke;
    v44 = &unk_278C222B8;
    v45 = &v46;
    __getAVSpeechUtteranceClass_block_invoke(&v41);
    v14 = v47[3];
  }

  v15 = v14;
  _Block_object_dispose(&v46, 8);
  v16 = [v14 speechUtteranceWithString:utteranceCopy];
  *&v17 = pitch;
  [v16 setPitchMultiplier:v17];
  v46 = 0;
  v47 = &v46;
  v18 = 1.0842e-19;
  v48 = 0x2020000000;
  v19 = getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_ptr;
  v49 = getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_ptr;
  if (!getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_ptr)
  {
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_block_invoke;
    v44 = &unk_278C222B8;
    v45 = &v46;
    v20 = AVFoundationLibrary();
    v21 = dlsym(v20, "AVSpeechUtteranceMinimumSpeechRate");
    *(v45[1] + 24) = v21;
    getAVSpeechUtteranceMinimumSpeechRateSymbolLoc_ptr = *(v45[1] + 24);
    v19 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v19)
  {
    voiceCopy = [MEMORY[0x277CCA890] currentHandler];
    utteranceCopy = [MEMORY[0x277CCACA8] stringWithUTF8String:"float getAVSpeechUtteranceMinimumSpeechRate(void)"];
    [voiceCopy handleFailureInFunction:utteranceCopy file:@"WFSpeechSynthesizer.m" lineNumber:47 description:{@"%s", dlerror()}];
LABEL_35:

    __break(1u);
LABEL_36:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [currentHandler2 handleFailureInFunction:v36 file:@"WFSpeechSynthesizer.m" lineNumber:70 description:@"max must be >= min"];

    goto LABEL_17;
  }

  LODWORD(pitch) = *v19;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v22 = getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_ptr;
  v49 = getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_ptr;
  if (!getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_ptr)
  {
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_block_invoke;
    v44 = &unk_278C222B8;
    v45 = &v46;
    v23 = AVFoundationLibrary();
    v24 = dlsym(v23, "AVSpeechUtteranceMaximumSpeechRate");
    *(v45[1] + 24) = v24;
    getAVSpeechUtteranceMaximumSpeechRateSymbolLoc_ptr = *(v45[1] + 24);
    v22 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v22)
  {
    voiceCopy = [MEMORY[0x277CCA890] currentHandler];
    utteranceCopy = [MEMORY[0x277CCACA8] stringWithUTF8String:"float getAVSpeechUtteranceMaximumSpeechRate(void)"];
    [voiceCopy handleFailureInFunction:utteranceCopy file:@"WFSpeechSynthesizer.m" lineNumber:48 description:{@"%s", dlerror()}];
    goto LABEL_35;
  }

  v6 = *v22;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v25 = getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_ptr;
  v49 = getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_ptr;
  if (!getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_ptr)
  {
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_block_invoke;
    v44 = &unk_278C222B8;
    v45 = &v46;
    v26 = AVFoundationLibrary();
    v27 = dlsym(v26, "AVSpeechUtteranceDefaultSpeechRate");
    *(v45[1] + 24) = v27;
    getAVSpeechUtteranceDefaultSpeechRateSymbolLoc_ptr = *(v45[1] + 24);
    v25 = v47[3];
  }

  _Block_object_dispose(&v46, 8);
  if (!v25)
  {
    voiceCopy = [MEMORY[0x277CCA890] currentHandler];
    utteranceCopy = [MEMORY[0x277CCACA8] stringWithUTF8String:"float getAVSpeechUtteranceDefaultSpeechRate(void)"];
    [voiceCopy handleFailureInFunction:utteranceCopy file:@"WFSpeechSynthesizer.m" lineNumber:49 description:{@"%s", dlerror()}];
    goto LABEL_35;
  }

  v18 = *v25;
  if (rate < 0.0 || rate > 1.0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [currentHandler3 handleFailureInFunction:v38 file:@"WFSpeechSynthesizer.m" lineNumber:69 description:{@"unitValue must be [0, 1]"}];
  }

  if (v6 < *&pitch)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v18 < *&pitch || v18 > v6)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [currentHandler4 handleFailureInFunction:v40 file:@"WFSpeechSynthesizer.m" lineNumber:71 description:{@"default must be >= min, <= max"}];
  }

  rateCopy = rate + -0.5;
  if (rate >= 0.5)
  {
    v29 = v18;
  }

  else
  {
    v29 = *&pitch;
  }

  if (rate >= 0.5)
  {
    v30 = v6;
  }

  else
  {
    v30 = v18;
  }

  if (rate < 0.5)
  {
    rateCopy = rate;
  }

  v31 = v29 + (v30 - v29) * (rateCopy + rateCopy);
  *&v31 = v31;
  [v16 setRate:v31];
  avVoice = [voiceCopy avVoice];
  if (avVoice)
  {
    [v16 setVoice:avVoice];
  }

  return v16;
}

- (id)stsSpeechRequestForVoice:(id)voice utterance:(id)utterance rate:(double)rate pitch:(double)pitch intoFile:(BOOL)file
{
  fileCopy = file;
  voiceCopy = voice;
  utteranceCopy = utterance;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v14 = getSiriTTSSynthesisVoiceClass_softClass;
  v41 = getSiriTTSSynthesisVoiceClass_softClass;
  if (!getSiriTTSSynthesisVoiceClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getSiriTTSSynthesisVoiceClass_block_invoke;
    v36 = &unk_278C222B8;
    v37 = &v38;
    __getSiriTTSSynthesisVoiceClass_block_invoke(&v33);
    v14 = v39[3];
  }

  v15 = v14;
  _Block_object_dispose(&v38, 8);
  v16 = [v14 alloc];
  languageCode = [voiceCopy languageCode];
  vsVoiceName = [voiceCopy vsVoiceName];
  v19 = [v16 initWithLanguage:languageCode name:vsVoiceName];

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v20 = getSiriTTSSpeechRequestClass_softClass;
  v41 = getSiriTTSSpeechRequestClass_softClass;
  if (!getSiriTTSSpeechRequestClass_softClass)
  {
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __getSiriTTSSpeechRequestClass_block_invoke;
    v36 = &unk_278C222B8;
    v37 = &v38;
    __getSiriTTSSpeechRequestClass_block_invoke(&v33);
    v20 = v39[3];
  }

  v21 = v20;
  _Block_object_dispose(&v38, 8);
  v22 = [[v20 alloc] initWithText:utteranceCopy voice:v19];
  if (rate < 0.0 || rate > 1.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [currentHandler handleFailureInFunction:v32 file:@"WFSpeechSynthesizer.m" lineNumber:69 description:{@"unitValue must be [0, 1]"}];
  }

  rateCopy = rate + -0.5;
  v24 = 0.5;
  v25 = 1.0;
  if (rate < 0.5)
  {
    v25 = 0.5;
    rateCopy = rate;
  }

  v26 = rateCopy + rateCopy;
  if (rate >= 0.5)
  {
    v24 = 3.0;
  }

  v27 = v25 + v24 * v26;
  *&v27 = v27;
  [v22 setRate:v27];
  *&v28 = pitch;
  [v22 setPitch:v28];
  if (fileCopy)
  {
    v29 = [(WFSpeechSynthesizer *)self outputFileURLForUtterance:utteranceCopy];
    [v22 setOutputPath:v29];
  }

  return v22;
}

- (SiriTTSDaemonSession)stsSynthesizer
{
  stsSynthesizer = self->_stsSynthesizer;
  if (!stsSynthesizer)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getSiriTTSDaemonSessionClass_softClass;
    v13 = getSiriTTSDaemonSessionClass_softClass;
    if (!getSiriTTSDaemonSessionClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getSiriTTSDaemonSessionClass_block_invoke;
      v9[3] = &unk_278C222B8;
      v9[4] = &v10;
      __getSiriTTSDaemonSessionClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_stsSynthesizer;
    self->_stsSynthesizer = v6;

    stsSynthesizer = self->_stsSynthesizer;
  }

  return stsSynthesizer;
}

- (id)outputFileURLForUtterance:(id)utterance
{
  utteranceCopy = utterance;
  if (!utteranceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v6 = [MEMORY[0x277CFC3C8] sanitizedFilename:utteranceCopy withExtension:@"caf"];
  v7 = [MEMORY[0x277CFC538] proposedSharedTemporaryFileURLForFilename:v6];

  return v7;
}

- (void)failSpeakingUtterance:(id)utterance withError:(id)error
{
  utteranceCopy = utterance;
  errorCopy = error;
  if (!utteranceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  delegate = [(WFSpeechSynthesizer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(WFSpeechSynthesizer *)self delegate];
    [delegate2 speechSynthesizer:self didFailSpeakingUtterance:utteranceCopy error:errorCopy];
  }
}

- (void)failSpeakingAVUtterance:(id)utterance withError:(id)error
{
  utteranceCopy = utterance;
  errorCopy = error;
  if (!utteranceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  avUtteranceOutputTable = [(WFSpeechSynthesizer *)self avUtteranceOutputTable];
  [avUtteranceOutputTable removeObjectForKey:utteranceCopy];

  speechString = [utteranceCopy speechString];
  [(WFSpeechSynthesizer *)self failSpeakingUtterance:speechString withError:errorCopy];
}

- (AVSpeechSynthesizer)avSynthesizer
{
  avSynthesizer = self->_avSynthesizer;
  if (!avSynthesizer)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getAVSpeechSynthesizerClass_softClass;
    v13 = getAVSpeechSynthesizerClass_softClass;
    if (!getAVSpeechSynthesizerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getAVSpeechSynthesizerClass_block_invoke;
      v9[3] = &unk_278C222B8;
      v9[4] = &v10;
      __getAVSpeechSynthesizerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    [(AVSpeechSynthesizer *)v6 setIsInternalSynth:1];
    [(AVSpeechSynthesizer *)v6 setDelegate:self];
    v7 = self->_avSynthesizer;
    self->_avSynthesizer = v6;

    avSynthesizer = self->_avSynthesizer;
  }

  return avSynthesizer;
}

- (void)speakUtteranceIntoFile:(id)file usingVoice:(id)voice rate:(double)rate pitch:(double)pitch
{
  v34 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  voiceCopy = voice;
  if (!fileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v13 = getWFTextToSpeechLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v25 = "[WFSpeechSynthesizer speakUtteranceIntoFile:usingVoice:rate:pitch:]";
    v26 = 2112;
    v27 = fileCopy;
    v28 = 2048;
    rateCopy = rate;
    v30 = 2048;
    pitchCopy = pitch;
    v32 = 2112;
    v33 = voiceCopy;
    _os_log_impl(&dword_23DE30000, v13, OS_LOG_TYPE_INFO, "%s Asked to synthesize '%@' into file at rate %f, pitch %f using voice %@", buf, 0x34u);
  }

  queue = [(WFSpeechSynthesizer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WFSpeechSynthesizer_speakUtteranceIntoFile_usingVoice_rate_pitch___block_invoke;
  block[3] = &unk_278C1B988;
  block[4] = self;
  v20 = voiceCopy;
  v21 = fileCopy;
  rateCopy2 = rate;
  pitchCopy2 = pitch;
  v15 = fileCopy;
  v16 = voiceCopy;
  dispatch_async(queue, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __68__WFSpeechSynthesizer_speakUtteranceIntoFile_usingVoice_rate_pitch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) avSpeechUtteranceForVoice:*(a1 + 40) utterance:*(a1 + 48) rate:*(a1 + 56) pitch:*(a1 + 64)];
  v3 = [*(a1 + 40) avVoice];
  v4 = [v3 audioFileSettings];
  v5 = [v4 mutableCopy];

  if (![v5 count])
  {
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() defaultAudioFileSettings];
    v8 = [v7 mutableCopy];

    v5 = v8;
  }

  v9 = [*(a1 + 32) outputFileURLForUtterance:*(a1 + 48)];
  v10 = [*(a1 + 32) avUtteranceOutputTable];
  [v10 setObject:v9 forKey:v2];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v11 = getAVAudioFileTypeKeySymbolLoc_ptr;
  v38 = getAVAudioFileTypeKeySymbolLoc_ptr;
  if (!getAVAudioFileTypeKeySymbolLoc_ptr)
  {
    location = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __getAVAudioFileTypeKeySymbolLoc_block_invoke;
    v33 = &unk_278C222B8;
    v34 = &v35;
    v12 = AVFoundationLibrary();
    v36[3] = dlsym(v12, "AVAudioFileTypeKey");
    getAVAudioFileTypeKeySymbolLoc_ptr = *(v34[1] + 24);
    v11 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v11)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVAudioFileTypeKey(void)"];
    [v23 handleFailureInFunction:v24 file:@"WFSpeechSynthesizer.m" lineNumber:39 description:{@"%s", dlerror()}];
LABEL_17:

    __break(1u);
    return;
  }

  [v5 setObject:&unk_28509BA20 forKey:*v11];
  v13 = [*(a1 + 32) audioFormatForSettings:v5];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v14 = getAVLinearPCMIsNonInterleavedSymbolLoc_ptr;
  v38 = getAVLinearPCMIsNonInterleavedSymbolLoc_ptr;
  if (!getAVLinearPCMIsNonInterleavedSymbolLoc_ptr)
  {
    location = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __getAVLinearPCMIsNonInterleavedSymbolLoc_block_invoke;
    v33 = &unk_278C222B8;
    v34 = &v35;
    v15 = AVFoundationLibrary();
    v36[3] = dlsym(v15, "AVLinearPCMIsNonInterleaved");
    getAVLinearPCMIsNonInterleavedSymbolLoc_ptr = *(v34[1] + 24);
    v14 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (!v14)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMIsNonInterleaved(void)"];
    [v23 handleFailureInFunction:v24 file:@"WFSpeechSynthesizer.m" lineNumber:45 description:{@"%s", dlerror()}];
    goto LABEL_17;
  }

  v16 = [v5 objectForKey:*v14];
  v17 = [v16 BOOLValue];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v18 = getAVAudioFileClass_softClass;
  v38 = getAVAudioFileClass_softClass;
  if (!getAVAudioFileClass_softClass)
  {
    location = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __getAVAudioFileClass_block_invoke;
    v33 = &unk_278C222B8;
    v34 = &v35;
    __getAVAudioFileClass_block_invoke(&location);
    v18 = v36[3];
  }

  v19 = v18;
  _Block_object_dispose(&v35, 8);
  v29 = 0;
  v20 = [[v18 alloc] initForWriting:v9 settings:v5 commonFormat:v13 interleaved:v17 ^ 1u error:&v29];
  v21 = v29;
  if (v20)
  {
    objc_initWeak(&location, *(a1 + 32));
    v22 = [*(a1 + 32) avSynthesizer];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__WFSpeechSynthesizer_speakUtteranceIntoFile_usingVoice_rate_pitch___block_invoke_184;
    v25[3] = &unk_278C1B9B0;
    objc_copyWeak(&v28, &location);
    v26 = v2;
    v27 = v20;
    [v22 writeUtterance:v26 toBufferCallback:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) failSpeakingAVUtterance:v2 withError:v21];
  }
}

void __68__WFSpeechSynthesizer_speakUtteranceIntoFile_usingVoice_rate_pitch___block_invoke_184(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v5 = getAVAudioPCMBufferClass_softClass;
  v19 = getAVAudioPCMBufferClass_softClass;
  if (!getAVAudioPCMBufferClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getAVAudioPCMBufferClass_block_invoke;
    v15[3] = &unk_278C222B8;
    v15[4] = &v16;
    __getAVAudioPCMBufferClass_block_invoke(v15);
    v5 = v17[3];
  }

  v6 = v5;
  _Block_object_dispose(&v16, 8);
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v3 || (isKindOfClass & 1) == 0)
  {
    v13 = *(a1 + 32);
    v10 = [WeakRetained invalidAudioBufferError];
    v12 = WeakRetained;
    v11 = v13;
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  v14 = 0;
  v9 = [v8 writeFromBuffer:v3 error:&v14];
  v10 = v14;
  if ((v9 & 1) == 0)
  {
    v11 = *(a1 + 32);
    v12 = WeakRetained;
LABEL_8:
    [v12 failSpeakingAVUtterance:v11 withError:v10];
  }
}

- (void)speakUtterance:(id)utterance usingVoice:(id)voice rate:(double)rate pitch:(double)pitch
{
  v35 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  voiceCopy = voice;
  if (!utteranceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v13 = getWFTextToSpeechLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v26 = "[WFSpeechSynthesizer speakUtterance:usingVoice:rate:pitch:]";
    v27 = 2112;
    v28 = utteranceCopy;
    v29 = 2048;
    rateCopy = rate;
    v31 = 2048;
    pitchCopy = pitch;
    v33 = 2112;
    v34 = voiceCopy;
    _os_log_impl(&dword_23DE30000, v13, OS_LOG_TYPE_INFO, "%s Asked to synthesize '%@' at rate %f, pitch %f using voice %@", buf, 0x34u);
  }

  queue = [(WFSpeechSynthesizer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFSpeechSynthesizer_speakUtterance_usingVoice_rate_pitch___block_invoke;
  block[3] = &unk_278C1B988;
  v20 = voiceCopy;
  selfCopy = self;
  v22 = utteranceCopy;
  rateCopy2 = rate;
  pitchCopy2 = pitch;
  v15 = utteranceCopy;
  v16 = voiceCopy;
  dispatch_async(queue, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __60__WFSpeechSynthesizer_speakUtterance_usingVoice_rate_pitch___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isSiriVoice];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v2)
  {
    v8 = [v3 stsSpeechRequestForVoice:v4 utterance:v5 rate:0 pitch:v6 intoFile:v7];
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[WFSpeechSynthesizer speakUtterance:usingVoice:rate:pitch:]_block_invoke";
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s We are using a Siri voice - let's use it. Assembled STS request %@", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 40));
    v10 = [*(a1 + 40) stsSynthesizer];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__WFSpeechSynthesizer_speakUtterance_usingVoice_rate_pitch___block_invoke_179;
    v16[3] = &unk_278C1B960;
    objc_copyWeak(&v18, buf);
    v11 = v8;
    v17 = v11;
    [v10 speakWithSpeechRequest:v11 didFinish:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v15 = [v3 avSpeechUtteranceForVoice:v4 utterance:v5 rate:v6 pitch:v7];
    v13 = [*(a1 + 40) avSynthesizer];
    [v13 speakUtterance:v15];

    v14 = *MEMORY[0x277D85DE8];
  }
}

void __60__WFSpeechSynthesizer_speakUtterance_usingVoice_rate_pitch___block_invoke_179(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) text];
    if (v8)
    {
      [WeakRetained failSpeakingUtterance:v4 withError:?];
    }

    else
    {
      v5 = [WeakRetained delegate];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [WeakRetained delegate];
        [v7 speechSynthesizer:WeakRetained didFinishSpeakingUtterance:v4];
      }
    }
  }
}

- (WFSpeechSynthesizer)init
{
  v11.receiver = self;
  v11.super_class = WFSpeechSynthesizer;
  v2 = [(WFSpeechSynthesizer *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_get_global_queue(21, 0);
    v5 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.WFSpeechSynthesizer", v3, v4);
    queue = v2->_queue;
    v2->_queue = v5;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    avUtteranceOutputTable = v2->_avUtteranceOutputTable;
    v2->_avUtteranceOutputTable = strongToStrongObjectsMapTable;

    v9 = v2;
  }

  return v2;
}

+ (id)defaultAudioFileSettings
{
  v8 = 32;
  v5 = 0x40D5888000000000;
  v7 = 0x100000004;
  v6 = xmmword_23E24ABF0;
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&v5];
  settings = [v2 settings];

  return settings;
}

@end