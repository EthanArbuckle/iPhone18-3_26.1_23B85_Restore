@interface APCPlayerEngine
+ (id)playerWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error;
- (APCPlayerEmbedInfo)embeddingInfo;
- (APCPlayerEngine)initWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error;
- (BOOL)startEngineAtTime:(unint64_t)time withBeginning:(id)beginning callbackTime:(unint64_t)callbackTime;
- (float)evaluateAsset;
- (id)createAU:(AudioComponentDescription *)u;
- (void)_playbackBufferLoopCompletionHdlr;
- (void)_stopAudioEngineAndSession;
- (void)createEngineAndAttachNodes;
- (void)endPasscodeEmbedding;
- (void)makeEngineConnections;
- (void)setDispatchQueue:(id)queue;
- (void)setupAudioSession;
- (void)startAPCPlayLoopAtTime:(unint64_t)time;
- (void)stopEngine:(BOOL)engine withCompletion:(id)completion;
- (void)stopEngineAfterMinimumLoops:(unint64_t)loops withCompletion:(id)completion;
- (void)stopEngineWithFadeOut:(float)out completion:(id)completion;
@end

@implementation APCPlayerEngine

- (id)createAU:(AudioComponentDescription *)u
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  buf = *u;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __28__APCPlayerEngine_createAU___block_invoke;
  v13[3] = &unk_278CE1CE0;
  v13[4] = &v14;
  v13[5] = &v26;
  v13[6] = &v20;
  [MEMORY[0x277CB8430] instantiateWithComponentDescription:&buf options:0 completionHandler:v13];
  v4 = v21[5];
  v5 = dispatch_time(0, 5000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v27[5] || v6)
  {
    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v27[5];
      if (v9)
      {
        localizedDescription = [v27[5] localizedDescription];
      }

      else
      {
        localizedDescription = @"AVAudioUnit instantiateWithComponentDescription timed out";
      }

      buf.componentType = 138412290;
      *&buf.componentSubType = localizedDescription;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "AU instatiation failed with %@", &buf, 0xCu);
      if (v9)
      {
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

void __28__APCPlayerEngine_createAU___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

+ (id)playerWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error
{
  lCopy = l;
  configCopy = config;
  payloadCopy = payload;
  v12 = [[APCPlayerEngine alloc] initWithAssetURL:lCopy codecConfig:configCopy payload:payloadCopy error:error];

  return v12;
}

- (APCPlayerEngine)initWithAssetURL:(id)l codecConfig:(id)config payload:(id)payload error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  lCopy = l;
  configCopy = config;
  payloadCopy = payload;
  v53.receiver = self;
  v53.super_class = APCPlayerEngine;
  v13 = [(APCPlayerEngine *)&v53 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_35;
  }

  if (lCopy && configCopy && payloadCopy)
  {
    v13->_isRunning = 0;
    v13->_prePlayVolume = 0.5;
    +[AUPasscodeEncoder registerAU];
    +[AUPasscodeEncoder getAUDesc];
    v15 = [(APCPlayerEngine *)v14 createAU:buf];
    encoderAUNode = v14->_encoderAUNode;
    v14->_encoderAUNode = v15;

    v17 = v14->_encoderAUNode;
    if (v17)
    {
      aUAudioUnit = [(AVAudioUnit *)v17 AUAudioUnit];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = APCLogObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138412290;
          v55 = v32;
          _os_log_impl(&dword_24158E000, v30, OS_LOG_TYPE_ERROR, "Encoder AU is not the expected class, it is a %@", buf, 0xCu);
        }

        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
        }

        goto LABEL_27;
      }

      aUAudioUnit2 = [(AVAudioUnit *)v14->_encoderAUNode AUAudioUnit];
      encoderAU = v14->_encoderAU;
      v14->_encoderAU = aUAudioUnit2;

      v52 = 0;
      v21 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:lCopy error:&v52];
      v22 = v52;
      if (v22)
      {
        v23 = v22;
        v24 = APCLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v23;
          _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_ERROR, "Failed to open the player asset: %@", buf, 0xCu);
        }

        if (error)
        {
          v25 = v23;
          *error = v23;
        }

LABEL_27:
        v29 = 0;
        goto LABEL_36;
      }

      v33 = objc_alloc(MEMORY[0x277CB83C8]);
      processingFormat = [v21 processingFormat];
      v35 = [v33 initWithPCMFormat:processingFormat frameCapacity:objc_msgSend(v21, "length")];
      assetBuffer = v14->_assetBuffer;
      v14->_assetBuffer = v35;

      [configCopy setPayloadLengthBytes:{objc_msgSend(payloadCopy, "length")}];
      processingFormat2 = [v21 processingFormat];
      [processingFormat2 sampleRate];
      [configCopy setSampleRate:v38];

      [(AUPasscodeEncoder *)v14->_encoderAU setPayload:payloadCopy];
      [(AUPasscodeEncoder *)v14->_encoderAU setCodecConfig:configCopy];
      -[AUPasscodeEncoder setAssetLength:](v14->_encoderAU, "setAssetLength:", [v21 length]);
      objc_initWeak(&location, v14);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __62__APCPlayerEngine_initWithAssetURL_codecConfig_payload_error___block_invoke;
      v49[3] = &unk_278CE1D08;
      objc_copyWeak(&v50, &location);
      [(AUPasscodeEncoder *)v14->_encoderAU setAssetEndedAndSilencedHandler:v49];
      v39 = objc_alloc_init(MEMORY[0x277CB83E0]);
      player = v14->_player;
      v14->_player = v39;

      v41 = v14->_assetBuffer;
      v48 = 0;
      [v21 readIntoBuffer:v41 error:&v48];
      v42 = v48;
      if (v42)
      {
        v43 = APCLogObject();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v42;
          _os_log_impl(&dword_24158E000, v43, OS_LOG_TYPE_ERROR, "Failed to read the asset file into the PCM buffer (Error=%@)", buf, 0xCu);
        }

        if (error)
        {
          v44 = v42;
          *error = v42;
        }
      }

      else
      {
        [(APCPlayerEngine *)v14 setupAudioSession];
        [(APCPlayerEngine *)v14 createEngineAndAttachNodes];
        [(APCPlayerEngine *)v14 makeEngineConnections];
        callbackDispatchSrc = v14->_callbackDispatchSrc;
        v14->_callbackDispatchSrc = 0;
      }

      objc_destroyWeak(&v50);
      objc_destroyWeak(&location);

      if (v42)
      {
        goto LABEL_27;
      }

LABEL_35:
      v29 = v14;
      goto LABEL_36;
    }

    v28 = APCLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v28, OS_LOG_TYPE_ERROR, "Failed to create the encoder AU", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
  }

  else
  {
    v26 = APCLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v26, OS_LOG_TYPE_ERROR, "Bad arguments to APCPlayerEngine", buf, 2u);
    }

    if (!error)
    {
      goto LABEL_27;
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:1 userInfo:0];
  }

  v29 = 0;
  *error = v27;
LABEL_36:

  v46 = *MEMORY[0x277D85DE8];
  return v29;
}

void __62__APCPlayerEngine_initWithAssetURL_codecConfig_payload_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopAudioEngineAndSession];

  v5 = objc_loadWeakRetained((a1 + 32));
  v2 = [v5 stopEngineCompletion];

  if (v2)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v3 = [v6 stopEngineCompletion];
    v3[2]();
  }
}

- (void)setupAudioSession
{
  v44 = *MEMORY[0x277D85DE8];
  auxiliarySession = [MEMORY[0x277CB83F8] auxiliarySession];
  session = self->_session;
  self->_session = auxiliarySession;

  v5 = self->_session;
  v6 = *MEMORY[0x277CB8030];
  v39 = 0;
  [(AVAudioSession *)v5 setCategory:v6 error:&v39];
  v7 = v39;
  if (v7)
  {
    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v7;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Error setting session category to record: %@", buf, 0xCu);
    }
  }

  v9 = self->_session;
  v10 = *MEMORY[0x277CB80A8];
  v38 = 0;
  [(AVAudioSession *)v9 setMode:v10 error:&v38];
  v11 = v38;
  if (v11)
  {
    v12 = APCLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v11;
      _os_log_impl(&dword_24158E000, v12, OS_LOG_TYPE_ERROR, "Error setting session mode to default: %@", buf, 0xCu);
    }
  }

  v13 = self->_session;
  codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
  v37 = 0;
  -[AVAudioSession setPreferredSampleRate:error:](v13, "setPreferredSampleRate:error:", &v37, [codecConfig sampleRate]);
  v15 = v37;

  if (v15)
  {
    v16 = APCLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      codecConfig2 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
      sampleRate = [codecConfig2 sampleRate];
      *buf = 134218242;
      v41 = llround(sampleRate);
      v42 = 2112;
      v43 = v15;
      _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "Error setting preferred sample rate to %ld: %@", buf, 0x16u);
    }
  }

  outputNumberOfChannels = [(AVAudioSession *)self->_session outputNumberOfChannels];
  codecConfig3 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
  LOBYTE(outputNumberOfChannels) = outputNumberOfChannels == [codecConfig3 numChannels];

  if (outputNumberOfChannels)
  {
    v21 = v15;
  }

  else
  {
    v22 = self->_session;
    codecConfig4 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
    v36 = v15;
    -[AVAudioSession setPreferredOutputNumberOfChannels:error:](v22, "setPreferredOutputNumberOfChannels:error:", [codecConfig4 numChannels], &v36);
    v21 = v36;

    if (v21)
    {
      v24 = APCLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        codecConfig5 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
        numChannels = [codecConfig5 numChannels];
        *buf = 134218242;
        v41 = numChannels;
        v42 = 2112;
        v43 = v21;
        _os_log_impl(&dword_24158E000, v24, OS_LOG_TYPE_ERROR, "Could not set preferred number of output channels to %ld (AU will handle the mapping): %@", buf, 0x16u);
      }
    }
  }

  [(AVAudioSession *)self->_session sampleRate];
  v27 = self->_session;
  v35 = v21;
  v29 = 256.0 / v28;
  v30 = [(AVAudioSession *)v27 setPreferredIOBufferDuration:&v35 error:256.0 / v28];
  v31 = v35;

  if (!v30)
  {
    v32 = APCLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v31 localizedDescription];
      *buf = 134218242;
      v41 = *&v29;
      v42 = 2112;
      v43 = localizedDescription;
      _os_log_impl(&dword_24158E000, v32, OS_LOG_TYPE_ERROR, "Error setting preferred io buffer duration to %0.3f seconds: %@", buf, 0x16u);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)createEngineAndAttachNodes
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8388]);
  engine = self->_engine;
  self->_engine = v3;

  [(AVAudioEngine *)self->_engine attachNode:self->_encoderAUNode];
  [(AVAudioEngine *)self->_engine attachNode:self->_player];
  outputNode = [(AVAudioEngine *)self->_engine outputNode];
  audioUnit = [outputNode audioUnit];

  inData = [(AVAudioSession *)self->_session opaqueSessionID];
  v7 = AudioUnitSetProperty(audioUnit, 0x7E7u, 0, 0, &inData, 4u);
  if (v7)
  {
    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v7;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Setting the audio session ID for the player's output node failed: %d", buf, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)makeEngineConnections
{
  format = [(AVAudioPCMBuffer *)self->_assetBuffer format];
  [(AVAudioEngine *)self->_engine connect:self->_player to:self->_encoderAUNode format:?];
  engine = self->_engine;
  encoderAUNode = self->_encoderAUNode;
  outputNode = [(AVAudioEngine *)engine outputNode];
  [(AVAudioEngine *)engine connect:encoderAUNode to:outputNode format:format];
}

- (float)evaluateAsset
{
  codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
  assetBuffer = self->_assetBuffer;
  v20 = 0;
  [APCCodecFactory evaluateCarrierWithConfig:codecConfig carrier:assetBuffer embeddingResult:&v20];
  v6 = v5;
  v7 = v20;

  if (v7)
  {
    aUAudioUnit = [(AVAudioUnit *)self->_encoderAUNode AUAudioUnit];
    [aUAudioUnit setPasscodeEmbedInfo:v7];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:108];
    v10 = [v7 objectForKey:v9];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:1000];
    v13 = [v7 objectForKey:v12];
    unsignedIntegerValue2 = [v13 unsignedIntegerValue];

    codecConfig2 = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
    sampleRate = [codecConfig2 sampleRate];

    v17 = [[APCPlayerEmbedInfo alloc] initWithPasscodeDurationNSec:((unsignedIntegerValue2 + unsignedIntegerValue) / sampleRate * 1000000000.0)];
    embeddingInfo = self->_embeddingInfo;
    self->_embeddingInfo = v17;
  }

  return v6;
}

- (BOOL)startEngineAtTime:(unint64_t)time withBeginning:(id)beginning callbackTime:(unint64_t)callbackTime
{
  v50 = *MEMORY[0x277D85DE8];
  beginningCopy = beginning;
  engine = self->_engine;
  if (!engine)
  {
    v10 = APCLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Audio engine is nil while trying to start it!";
LABEL_9:
      _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }

LABEL_10:
    v9 = 0;
LABEL_39:

    goto LABEL_40;
  }

  if (!self->_player)
  {
    v10 = APCLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Encoded asset player is nil while trying to start the audio engine!";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (![(AVAudioEngine *)engine isRunning])
  {
    session = self->_session;
    v43 = 0;
    v9 = [(AVAudioSession *)session setActive:1 error:&v43];
    v13 = v43;
    if (((v13 == 0) & v9) == 0)
    {
      v10 = v13;
      mEMORY[0x277D26E58] = APCLogObject();
      if (os_log_type_enabled(mEMORY[0x277D26E58], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        timeCopy = v10;
        _os_log_impl(&dword_24158E000, mEMORY[0x277D26E58], OS_LOG_TYPE_ERROR, "Error activating session: %@", buf, 0xCu);
      }

      goto LABEL_38;
    }

    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    [mEMORY[0x277D26E58] getActiveCategoryVolume:&self->_prePlayVolume andName:0];
    [APCDefaults floatForDefault:0];
    [mEMORY[0x277D26E58] setActiveCategoryVolumeTo:?];
    v15 = self->_engine;
    v42 = 0;
    v9 = [(AVAudioEngine *)v15 startAndReturnError:&v42];
    v10 = v42;
    if (((v10 == 0) & v9) == 0)
    {
      v20 = APCLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        *buf = 138412290;
        timeCopy = localizedDescription;
        _os_log_impl(&dword_24158E000, v20, OS_LOG_TYPE_ERROR, "Couldn't start audio engine, %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    if (beginningCopy)
    {
      v16 = __udivti3();
      v17 = mach_absolute_time();
      v18 = v17;
      if (time && v17 + v16 > time)
      {
        v19 = APCLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_24158E000, v19, OS_LOG_TYPE_ERROR, "APCPlayer start time is too early to set up a beginning callback", buf, 2u);
        }

        v20 = APCLogObject();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 134218496;
        timeCopy = time;
        v46 = 2048;
        v47 = v18;
        v48 = 2048;
        v49 = v18 + v16;
        v21 = "- Input hostTime: %llu, Current Time: %llu, Min expected Time: %llu";
        v22 = v20;
        v23 = 32;
        goto LABEL_35;
      }

      v25 = __udivti3();
      if (time - v16 >= v18)
      {
        v26 = v25;
      }

      else
      {
        v26 = -v25;
      }

      dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
      if (dispatchQueue)
      {
        [(APCPlayerEngine *)self dispatchQueue];
      }

      else
      {
        dispatch_get_global_queue(0, 0);
      }
      v28 = ;
      v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v28);
      callbackDispatchSrc = self->_callbackDispatchSrc;
      self->_callbackDispatchSrc = v29;

      if (!self->_callbackDispatchSrc)
      {
        v20 = APCLogObject();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_36:
          v9 = 0;
LABEL_37:

          goto LABEL_38;
        }

        *buf = 0;
        v21 = "APCPlayer can't schedule the beginning callback timer";
        v22 = v20;
        v23 = 2;
LABEL_35:
        _os_log_impl(&dword_24158E000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
        goto LABEL_36;
      }

      v31 = MEMORY[0x245CEABB0](beginningCopy);
      beginningCallback = self->_beginningCallback;
      self->_beginningCallback = v31;

      v33 = self->_callbackDispatchSrc;
      v34 = dispatch_time(0, v26 & ~(v26 >> 63));
      assetLength = [(AUPasscodeEncoder *)self->_encoderAU assetLength];
      codecConfig = [(AUPasscodeEncoder *)self->_encoderAU codecConfig];
      dispatch_source_set_timer(v33, v34, 1000000000 * assetLength / [codecConfig sampleRate], 0);

      v37 = self->_callbackDispatchSrc;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __64__APCPlayerEngine_startEngineAtTime_withBeginning_callbackTime___block_invoke;
      handler[3] = &unk_278CE1D30;
      v41 = beginningCopy;
      dispatch_source_set_event_handler(v37, handler);
      dispatch_resume(self->_callbackDispatchSrc);
    }

    [(APCPlayerEngine *)self startAPCPlayLoopAtTime:time];
    [(AVAudioPlayerNode *)self->_player play];
    v9 = 1;
LABEL_38:

    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_playbackBufferLoopCompletionHdlr
{
  if (self->_requestingStop)
  {
    [(APCPlayerEngine *)self _stopAudioEngineAndSession];
    self->_requestingStop = 0;
    if (self->_stopEngineCompletion)
    {
      dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
      if (dispatchQueue)
      {
        [(APCPlayerEngine *)self dispatchQueue];
      }

      else
      {
        dispatch_get_global_queue(0, 0);
      }
      v4 = ;

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__APCPlayerEngine__playbackBufferLoopCompletionHdlr__block_invoke;
      block[3] = &unk_278CE1D58;
      block[4] = self;
      dispatch_async(v4, block);
    }
  }

  else
  {

    [(APCPlayerEngine *)self startAPCPlayLoop];
  }
}

- (void)startAPCPlayLoopAtTime:(unint64_t)time
{
  timeCopy = time;
  if (time)
  {
    timeCopy = [objc_alloc(MEMORY[0x277CB8428]) initWithHostTime:time];
  }

  player = self->_player;
  assetBuffer = self->_assetBuffer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__APCPlayerEngine_startAPCPlayLoopAtTime___block_invoke;
  v7[3] = &unk_278CE1D58;
  v7[4] = self;
  [(AVAudioPlayerNode *)player scheduleBuffer:assetBuffer atTime:timeCopy options:4 completionHandler:v7];
}

void __42__APCPlayerEngine_startAPCPlayLoopAtTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchQueue];
  if (v2)
  {
    v3 = [*(a1 + 32) dispatchQueue];
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__APCPlayerEngine_startAPCPlayLoopAtTime___block_invoke_2;
  block[3] = &unk_278CE1D58;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

- (void)_stopAudioEngineAndSession
{
  [(AVAudioPlayerNode *)self->_player pause];
  [(AVAudioEngine *)self->_engine pause];
  [(AUPasscodeEncoder *)self->_encoderAU reset];
  [(AVAudioPlayerNode *)self->_player reset];
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  *&v4 = self->_prePlayVolume;
  v5 = mEMORY[0x277D26E58];
  [mEMORY[0x277D26E58] setActiveCategoryVolumeTo:v4];
  [(AVAudioSession *)self->_session setActive:0 error:0];
}

- (void)endPasscodeEmbedding
{
  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    encoderAU = self->_encoderAU;

    [(AUPasscodeEncoder *)encoderAU setEmbedPasscode:0];
  }
}

- (void)stopEngine:(BOOL)engine withCompletion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  if (engineCopy)
  {
    self->_requestingStop = 1;
  }

  else
  {
    [(AUPasscodeEncoder *)self->_encoderAU setSilenceOutputOnNextAssetEnding:1];
  }

  v6 = MEMORY[0x245CEABB0](completionCopy);
  stopEngineCompletion = self->_stopEngineCompletion;
  self->_stopEngineCompletion = v6;

  callbackDispatchSrc = self->_callbackDispatchSrc;
  if (callbackDispatchSrc)
  {
    dispatch_source_cancel(callbackDispatchSrc);
    v9 = self->_callbackDispatchSrc;
    self->_callbackDispatchSrc = 0;
  }
}

- (void)stopEngineWithFadeOut:(float)out completion:(id)completion
{
  v6 = MEMORY[0x245CEABB0](completion, a2);
  stopEngineCompletion = self->_stopEngineCompletion;
  self->_stopEngineCompletion = v6;

  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    *&v8 = out;
    [(AUPasscodeEncoder *)self->_encoderAU setFadeOutTimeSeconds:v8];
    [(AUPasscodeEncoder *)self->_encoderAU setTriggerFadeOut:1];
  }

  else if (self->_stopEngineCompletion)
  {
    dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
    if (dispatchQueue)
    {
      [(APCPlayerEngine *)self dispatchQueue];
    }

    else
    {
      dispatch_get_global_queue(0, 0);
    }
    v10 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__APCPlayerEngine_stopEngineWithFadeOut_completion___block_invoke;
    block[3] = &unk_278CE1D58;
    block[4] = self;
    dispatch_async(v10, block);
  }

  callbackDispatchSrc = self->_callbackDispatchSrc;
  if (callbackDispatchSrc)
  {
    dispatch_source_cancel(callbackDispatchSrc);
    v12 = self->_callbackDispatchSrc;
    self->_callbackDispatchSrc = 0;
  }
}

- (void)stopEngineAfterMinimumLoops:(unint64_t)loops withCompletion:(id)completion
{
  v6 = MEMORY[0x245CEABB0](completion, a2);
  stopEngineCompletion = self->_stopEngineCompletion;
  self->_stopEngineCompletion = v6;

  if ([(AVAudioEngine *)self->_engine isRunning])
  {
    [(AUPasscodeEncoder *)self->_encoderAU setNumLoopsToStopAfter:loops];
  }

  else if (self->_stopEngineCompletion)
  {
    dispatchQueue = [(APCPlayerEngine *)self dispatchQueue];
    if (dispatchQueue)
    {
      [(APCPlayerEngine *)self dispatchQueue];
    }

    else
    {
      dispatch_get_global_queue(0, 0);
    }
    v9 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__APCPlayerEngine_stopEngineAfterMinimumLoops_withCompletion___block_invoke;
    block[3] = &unk_278CE1D58;
    block[4] = self;
    dispatch_async(v9, block);
  }

  callbackDispatchSrc = self->_callbackDispatchSrc;
  if (callbackDispatchSrc)
  {
    dispatch_source_cancel(callbackDispatchSrc);
    v11 = self->_callbackDispatchSrc;
    self->_callbackDispatchSrc = 0;
  }
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  objc_storeStrong(&self->_dispatchQueue, queue);
  encoderAU = self->_encoderAU;
  if (encoderAU)
  {
    [(AUPasscodeEncoder *)encoderAU setDispatchQueue:queueCopy];
  }
}

- (APCPlayerEmbedInfo)embeddingInfo
{
  if (self->_embeddingInfo)
  {
    aUAudioUnit = [(AVAudioUnit *)self->_encoderAUNode AUAudioUnit];
    passcodeEmbedInfo = [aUAudioUnit passcodeEmbedInfo];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:1001];
    v6 = [passcodeEmbedInfo objectForKey:v5];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    [(APCPlayerEmbedInfo *)self->_embeddingInfo setMeasPasscodeDuration:unsignedIntegerValue];
    embeddingInfo = self->_embeddingInfo;
  }

  else
  {
    embeddingInfo = 0;
  }

  return embeddingInfo;
}

@end