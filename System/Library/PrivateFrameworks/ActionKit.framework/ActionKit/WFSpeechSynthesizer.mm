@interface WFSpeechSynthesizer
+ (id)defaultAudioFileSettings;
- (AVSpeechSynthesizer)avSynthesizer;
- (SiriTTSDaemonSession)stsSynthesizer;
- (WFSpeechSynthesizer)init;
- (id)avSpeechUtteranceForVoice:(id)a3 utterance:(id)a4 rate:(double)a5 pitch:(double)a6;
- (id)invalidAudioBufferError;
- (id)outputFileURLForUtterance:(id)a3;
- (id)stsSpeechRequestForVoice:(id)a3 utterance:(id)a4 rate:(double)a5 pitch:(double)a6 intoFile:(BOOL)a7;
- (unint64_t)audioFormatForSettings:(id)a3;
- (void)failSpeakingAVUtterance:(id)a3 withError:(id)a4;
- (void)failSpeakingUtterance:(id)a3 withError:(id)a4;
- (void)speakUtterance:(id)a3 usingVoice:(id)a4 rate:(double)a5 pitch:(double)a6;
- (void)speakUtteranceIntoFile:(id)a3 usingVoice:(id)a4 rate:(double)a5 pitch:(double)a6;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)speechSynthesizer:(id)a3 willSpeakRangeOfSpeechString:(_NSRange)a4 utterance:(id)a5;
@end

@implementation WFSpeechSynthesizer

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v15 = a4;
  v5 = [(WFSpeechSynthesizer *)self avUtteranceOutputTable];
  v6 = [v5 objectForKey:v15];

  v7 = [(WFSpeechSynthesizer *)self avUtteranceOutputTable];
  [v7 removeObjectForKey:v15];

  if (v6 && ([(WFSpeechSynthesizer *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, (v9 & 1) != 0))
  {
    v10 = [MEMORY[0x277CFC3C8] fileWithURL:v6 options:1];
    v11 = [(WFSpeechSynthesizer *)self delegate];
    v12 = [v15 speechString];
    [v11 speechSynthesizer:self didFinishSpeakingUtterance:v12 intoFile:v10];
  }

  else
  {
    v13 = [(WFSpeechSynthesizer *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }

    v10 = [(WFSpeechSynthesizer *)self delegate];
    v11 = [v15 speechString];
    [v10 speechSynthesizer:self didFinishSpeakingUtterance:v11];
  }

LABEL_7:
}

- (void)speechSynthesizer:(id)a3 willSpeakRangeOfSpeechString:(_NSRange)a4 utterance:(id)a5
{
  length = a4.length;
  location = a4.location;
  v12 = a5;
  v8 = [(WFSpeechSynthesizer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(WFSpeechSynthesizer *)self delegate];
    v11 = [v12 speechString];
    [v10 speechSynthesizer:self willSpeakRangeOfUtterance:location utterance:{length, v11}];
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

- (unint64_t)audioFormatForSettings:(id)a3
{
  v3 = a3;
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
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMIsFloatKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"WFSpeechSynthesizer.m" lineNumber:44 description:{@"%s", dlerror(), v20, v21, v22, v23}];
LABEL_22:

    __break(1u);
    return result;
  }

  v6 = [v3 objectForKey:*v4];
  v7 = [v6 BOOLValue];

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
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAVLinearPCMBitDepthKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"WFSpeechSynthesizer.m" lineNumber:43 description:{@"%s", dlerror(), v20, v21, v22, v23}];
    goto LABEL_22;
  }

  v10 = [v3 objectForKey:*v8];
  v11 = [v10 integerValue];

  v12 = 16;
  if (v7)
  {
    v12 = 64;
  }

  v13 = 2;
  if (!v7)
  {
    v13 = 3;
  }

  v14 = 4;
  if (v7)
  {
    v14 = 1;
  }

  if (v11 == v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 == 32)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return v16;
}

- (id)avSpeechUtteranceForVoice:(id)a3 utterance:(id)a4 rate:(double)a5 pitch:(double)a6
{
  v12 = a3;
  v13 = a4;
  if (!v13)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:287 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
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
  v16 = [v14 speechUtteranceWithString:v13];
  *&v17 = a6;
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
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float getAVSpeechUtteranceMinimumSpeechRate(void)"];
    [v12 handleFailureInFunction:v13 file:@"WFSpeechSynthesizer.m" lineNumber:47 description:{@"%s", dlerror()}];
LABEL_35:

    __break(1u);
LABEL_36:
    v35 = [MEMORY[0x277CCA890] currentHandler];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [v35 handleFailureInFunction:v36 file:@"WFSpeechSynthesizer.m" lineNumber:70 description:@"max must be >= min"];

    goto LABEL_17;
  }

  LODWORD(a6) = *v19;
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
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float getAVSpeechUtteranceMaximumSpeechRate(void)"];
    [v12 handleFailureInFunction:v13 file:@"WFSpeechSynthesizer.m" lineNumber:48 description:{@"%s", dlerror()}];
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
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"float getAVSpeechUtteranceDefaultSpeechRate(void)"];
    [v12 handleFailureInFunction:v13 file:@"WFSpeechSynthesizer.m" lineNumber:49 description:{@"%s", dlerror()}];
    goto LABEL_35;
  }

  v18 = *v25;
  if (a5 < 0.0 || a5 > 1.0)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [v37 handleFailureInFunction:v38 file:@"WFSpeechSynthesizer.m" lineNumber:69 description:{@"unitValue must be [0, 1]"}];
  }

  if (v6 < *&a6)
  {
    goto LABEL_36;
  }

LABEL_17:
  if (v18 < *&a6 || v18 > v6)
  {
    v39 = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [v39 handleFailureInFunction:v40 file:@"WFSpeechSynthesizer.m" lineNumber:71 description:{@"default must be >= min, <= max"}];
  }

  v28 = a5 + -0.5;
  if (a5 >= 0.5)
  {
    v29 = v18;
  }

  else
  {
    v29 = *&a6;
  }

  if (a5 >= 0.5)
  {
    v30 = v6;
  }

  else
  {
    v30 = v18;
  }

  if (a5 < 0.5)
  {
    v28 = a5;
  }

  v31 = v29 + (v30 - v29) * (v28 + v28);
  *&v31 = v31;
  [v16 setRate:v31];
  v32 = [v12 avVoice];
  if (v32)
  {
    [v16 setVoice:v32];
  }

  return v16;
}

- (id)stsSpeechRequestForVoice:(id)a3 utterance:(id)a4 rate:(double)a5 pitch:(double)a6 intoFile:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
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
  v17 = [v12 languageCode];
  v18 = [v12 vsVoiceName];
  v19 = [v16 initWithLanguage:v17 name:v18];

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
  v22 = [[v20 alloc] initWithText:v13 voice:v19];
  if (a5 < 0.0 || a5 > 1.0)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat WFScaledValue(CGFloat, CGFloat, CGFloat, CGFloat)"}];
    [v31 handleFailureInFunction:v32 file:@"WFSpeechSynthesizer.m" lineNumber:69 description:{@"unitValue must be [0, 1]"}];
  }

  v23 = a5 + -0.5;
  v24 = 0.5;
  v25 = 1.0;
  if (a5 < 0.5)
  {
    v25 = 0.5;
    v23 = a5;
  }

  v26 = v23 + v23;
  if (a5 >= 0.5)
  {
    v24 = 3.0;
  }

  v27 = v25 + v24 * v26;
  *&v27 = v27;
  [v22 setRate:v27];
  *&v28 = a6;
  [v22 setPitch:v28];
  if (v7)
  {
    v29 = [(WFSpeechSynthesizer *)self outputFileURLForUtterance:v13];
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

- (id)outputFileURLForUtterance:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v6 = [MEMORY[0x277CFC3C8] sanitizedFilename:v5 withExtension:@"caf"];
  v7 = [MEMORY[0x277CFC538] proposedSharedTemporaryFileURLForFilename:v6];

  return v7;
}

- (void)failSpeakingUtterance:(id)a3 withError:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (!v12)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v8 = [(WFSpeechSynthesizer *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(WFSpeechSynthesizer *)self delegate];
    [v10 speechSynthesizer:self didFailSpeakingUtterance:v12 error:v7];
  }
}

- (void)failSpeakingAVUtterance:(id)a3 withError:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v8 = [(WFSpeechSynthesizer *)self avUtteranceOutputTable];
  [v8 removeObjectForKey:v11];

  v9 = [v11 speechString];
  [(WFSpeechSynthesizer *)self failSpeakingUtterance:v9 withError:v7];
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

- (void)speakUtteranceIntoFile:(id)a3 usingVoice:(id)a4 rate:(double)a5 pitch:(double)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v13 = getWFTextToSpeechLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v25 = "[WFSpeechSynthesizer speakUtteranceIntoFile:usingVoice:rate:pitch:]";
    v26 = 2112;
    v27 = v11;
    v28 = 2048;
    v29 = a5;
    v30 = 2048;
    v31 = a6;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_23DE30000, v13, OS_LOG_TYPE_INFO, "%s Asked to synthesize '%@' into file at rate %f, pitch %f using voice %@", buf, 0x34u);
  }

  v14 = [(WFSpeechSynthesizer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__WFSpeechSynthesizer_speakUtteranceIntoFile_usingVoice_rate_pitch___block_invoke;
  block[3] = &unk_278C1B988;
  block[4] = self;
  v20 = v12;
  v21 = v11;
  v22 = a5;
  v23 = a6;
  v15 = v11;
  v16 = v12;
  dispatch_async(v14, block);

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

- (void)speakUtterance:(id)a3 usingVoice:(id)a4 rate:(double)a5 pitch:(double)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFSpeechSynthesizer.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"utterance"}];
  }

  v13 = getWFTextToSpeechLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v26 = "[WFSpeechSynthesizer speakUtterance:usingVoice:rate:pitch:]";
    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    v30 = a5;
    v31 = 2048;
    v32 = a6;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_23DE30000, v13, OS_LOG_TYPE_INFO, "%s Asked to synthesize '%@' at rate %f, pitch %f using voice %@", buf, 0x34u);
  }

  v14 = [(WFSpeechSynthesizer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFSpeechSynthesizer_speakUtterance_usingVoice_rate_pitch___block_invoke;
  block[3] = &unk_278C1B988;
  v20 = v12;
  v21 = self;
  v22 = v11;
  v23 = a5;
  v24 = a6;
  v15 = v11;
  v16 = v12;
  dispatch_async(v14, block);

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

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    avUtteranceOutputTable = v2->_avUtteranceOutputTable;
    v2->_avUtteranceOutputTable = v7;

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
  v3 = [v2 settings];

  return v3;
}

@end