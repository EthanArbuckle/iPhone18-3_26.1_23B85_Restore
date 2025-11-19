@interface APCListenerEngine
+ (id)listenerWithCodecConfig:(id)a3 queue:(id)a4 dataReceivedHandler:(id)a5 error:(id *)a6;
+ (id)listenerWithCodecConfig:(id)a3 queue:(id)a4 dataReceivedHandler:(id)a5 resultData:(id)a6 error:(id *)a7;
- (APCListenerEngine)initWithCodecConfig:(id)a3 queue:(id)a4 dataReceivedHandler:(id)a5 resultData:(id)a6 error:(id *)a7;
- (BOOL)validateInputNodeWithFormat:(id)a3;
- (id)createAU:(AudioComponentDescription *)a3;
- (void)createEngineAndAttachNodes;
- (void)makeEngineConnectionsWithError:(id *)a3;
- (void)setupAudioSession;
- (void)startEngineWithError:(id *)a3;
- (void)stopEngine;
@end

@implementation APCListenerEngine

- (id)createAU:(AudioComponentDescription *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  buf = *a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__APCListenerEngine_createAU___block_invoke;
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
        v10 = [v27[5] localizedDescription];
      }

      else
      {
        v10 = @"AVAudioUnit instantiateWithComponentDescription timed out";
      }

      buf.componentType = 138412290;
      *&buf.componentSubType = v10;
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

void __30__APCListenerEngine_createAU___block_invoke(void *a1, void *a2, void *a3)
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

+ (id)listenerWithCodecConfig:(id)a3 queue:(id)a4 dataReceivedHandler:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[APCListenerEngine alloc] initWithCodecConfig:v9 queue:v10 dataReceivedHandler:v11 resultData:0 error:a6];

  return v12;
}

+ (id)listenerWithCodecConfig:(id)a3 queue:(id)a4 dataReceivedHandler:(id)a5 resultData:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [[APCListenerEngine alloc] initWithCodecConfig:v11 queue:v12 dataReceivedHandler:v13 resultData:v14 error:a7];

  return v15;
}

- (APCListenerEngine)initWithCodecConfig:(id)a3 queue:(id)a4 dataReceivedHandler:(id)a5 resultData:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v38.receiver = self;
  v38.super_class = APCListenerEngine;
  v17 = [(APCListenerEngine *)&v38 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    if (v13)
    {
      objc_storeStrong(&v17->_codecConfig, a3);
      +[AUPasscodeDecoder registerAU];
      +[AUPasscodeDecoder getAUDesc];
      v19 = [p_isa createAU:buf];
      v20 = p_isa[3];
      p_isa[3] = v19;

      v21 = p_isa[3];
      if (v21)
      {
        v22 = [v21 AUAudioUnit];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [p_isa[3] AUAudioUnit];
          v24 = p_isa[4];
          p_isa[4] = v23;

          [p_isa[4] setCodecConfig:v13];
          v25 = v14;
          if (!v14)
          {
            v25 = dispatch_get_global_queue(0, 0);
          }

          [p_isa[4] setDispatchQueue:v25];
          if (!v14)
          {
          }

          [p_isa[4] setDataHandler:v15];
          [p_isa[4] setResultData:v16];
          v26 = [p_isa[4] resultData];
          v27 = v26 == 0;

          if (!v27)
          {
            v28 = [p_isa[4] resultData];
            [v28 reset];
          }

          [p_isa setupAudioSession];
          [p_isa createEngineAndAttachNodes];

          goto LABEL_12;
        }

        v33 = APCLogObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = 138412290;
          v40 = v35;
          _os_log_impl(&dword_24158E000, v33, OS_LOG_TYPE_ERROR, "Encoder AU is not the expected class, it's a %@", buf, 0xCu);
        }

        if (a7)
        {
          *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
        }

LABEL_27:
        v29 = 0;
        goto LABEL_28;
      }

      v32 = APCLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v32, OS_LOG_TYPE_ERROR, "Failed to create the decoder AU", buf, 2u);
      }

      if (!a7)
      {
        goto LABEL_27;
      }

      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:0 userInfo:0];
    }

    else
    {
      v30 = APCLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v30, OS_LOG_TYPE_ERROR, "Bad arguments to APCListenerEngine", buf, 2u);
      }

      if (!a7)
      {
        goto LABEL_27;
      }

      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AudioPasscodeDomain" code:1 userInfo:0];
    }

    v29 = 0;
    *a7 = v31;
    goto LABEL_28;
  }

LABEL_12:
  v29 = p_isa;
LABEL_28:

  v36 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)setupAudioSession
{
  v102 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CB83F8] auxiliarySession];
  session = self->_session;
  self->_session = v2;

  [(AVAudioSession *)self->_session setEligibleForBTSmartRoutingConsideration:0 error:0];
  v4 = self->_session;
  v5 = *MEMORY[0x277CB8028];
  v94 = 0;
  [(AVAudioSession *)v4 setCategory:v5 withOptions:41 error:&v94];
  v6 = v94;
  if (v6)
  {
    v7 = APCLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v97 = v6;
      _os_log_impl(&dword_24158E000, v7, OS_LOG_TYPE_ERROR, "Error setting session category to record: %@", buf, 0xCu);
    }
  }

  v8 = self->_session;
  v93 = v6;
  [(AVAudioSession *)v8 preferDecoupledIO:1 error:&v93];
  v9 = v93;

  if (v9)
  {
    v10 = APCLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v97 = v9;
      _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_ERROR, "Error setting preferDecoupledIO on session: %@", buf, 0xCu);
    }
  }

  [(AVAudioSession *)self->_session availableInputs];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  obj = v90 = 0u;
  v11 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
  if (v11)
  {
    v12 = *v90;
    v13 = *MEMORY[0x277CB8190];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v90 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v89 + 1) + 8 * i);
        v15 = [v72 portType];
        v16 = [v15 isEqualToString:v13];

        if (v16)
        {
          v18 = self->_session;
          v88 = v9;
          [(AVAudioSession *)v18 setPreferredInput:v72 error:&v88];
          v17 = v88;

          if (v17)
          {
            v19 = APCLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v97 = v17;
              _os_log_impl(&dword_24158E000, v19, OS_LOG_TYPE_ERROR, "Failed to set preferred input to built-in mic: %@", buf, 0xCu);
            }
          }

          else
          {
            v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v72 dataSources];
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v74 = v85 = 0u;
            v20 = [v74 countByEnumeratingWithState:&v84 objects:v100 count:16];
            if (v20)
            {
              v21 = *v85;
              v22 = *MEMORY[0x277CB80F8];
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v85 != v21)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v24 = *(*(&v84 + 1) + 8 * j);
                  v25 = APCLogObject();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    v26 = [v24 location];
                    v27 = [v24 orientation];
                    *buf = 138412546;
                    v97 = v26;
                    v98 = 2112;
                    v99 = v27;
                    _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_INFO, "Mic location/orientation is %@ %@", buf, 0x16u);
                  }

                  v28 = [v24 orientation];
                  v29 = [v28 isEqualToString:v22];

                  if (v29)
                  {
                    [v73 addObject:v24];
                  }
                }

                v20 = [v74 countByEnumeratingWithState:&v84 objects:v100 count:16];
              }

              while (v20);
            }

            if ([v73 count])
            {
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v30 = v73;
              v31 = [v30 countByEnumeratingWithState:&v80 objects:v95 count:16];
              if (v31)
              {
                v32 = *v81;
                v33 = *MEMORY[0x277CB8090];
                while (2)
                {
                  for (k = 0; k != v31; ++k)
                  {
                    if (*v81 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v35 = *(*(&v80 + 1) + 8 * k);
                    v36 = [v35 location];
                    v37 = [v36 isEqualToString:v33];

                    if (v37)
                    {
                      v44 = APCLogObject();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                      {
                        v45 = [v35 location];
                        v46 = [v35 orientation];
                        *buf = 138412546;
                        v97 = v45;
                        v98 = 2112;
                        v99 = v46;
                        _os_log_impl(&dword_24158E000, v44, OS_LOG_TYPE_INFO, "Setting preferred microphone as '%@ %@'", buf, 0x16u);
                      }

                      v79 = 0;
                      [v72 setPreferredDataSource:v35 error:&v79];
                      v17 = v79;
                      if (v17)
                      {
                        v47 = APCLogObject();
                        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v97 = v17;
                          _os_log_impl(&dword_24158E000, v47, OS_LOG_TYPE_ERROR, "Failed to set preferred mic source: %@", buf, 0xCu);
                        }
                      }

                      goto LABEL_52;
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v80 objects:v95 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

              v38 = APCLogObject();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = [v30 objectAtIndexedSubscript:0];
                v40 = [v39 location];
                v41 = [v30 objectAtIndexedSubscript:0];
                v42 = [v41 orientation];
                *buf = 138412546;
                v97 = v40;
                v98 = 2112;
                v99 = v42;
                _os_log_impl(&dword_24158E000, v38, OS_LOG_TYPE_INFO, "Choosing first available back microphone: '%@ %@'", buf, 0x16u);
              }

              v43 = [v30 objectAtIndexedSubscript:0];
              v78 = 0;
              [v72 setPreferredDataSource:v43 error:&v78];
              v17 = v78;

              if (v17)
              {
                v30 = APCLogObject();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v97 = v17;
                  _os_log_impl(&dword_24158E000, v30, OS_LOG_TYPE_ERROR, "Failed to set preferred mic source: %@", buf, 0xCu);
                }

LABEL_52:
              }
            }

            else
            {
              v17 = 0;
            }

            v19 = v73;
          }

          goto LABEL_56;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = v9;
LABEL_56:

  v48 = self->_session;
  v49 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
  v77 = 0;
  -[AVAudioSession setPreferredSampleRate:error:](v48, "setPreferredSampleRate:error:", &v77, [v49 sampleRate]);
  v50 = v77;

  if (v50)
  {
    v51 = APCLogObject();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
      v53 = [v52 sampleRate];
      *buf = 134218242;
      v97 = llround(v53);
      v98 = 2112;
      v99 = v50;
      _os_log_impl(&dword_24158E000, v51, OS_LOG_TYPE_ERROR, "Error setting preferred sample rate to %ld: %@", buf, 0x16u);
    }
  }

  v54 = [(AVAudioSession *)self->_session inputNumberOfChannels];
  v55 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
  LOBYTE(v54) = v54 == [v55 numChannels];

  if (v54)
  {
    v56 = v50;
  }

  else
  {
    v57 = self->_session;
    v58 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
    v76 = v50;
    -[AVAudioSession setPreferredInputNumberOfChannels:error:](v57, "setPreferredInputNumberOfChannels:error:", [v58 numChannels], &v76);
    v56 = v76;

    if (v56)
    {
      v59 = APCLogObject();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = [(AUPasscodeDecoder *)self->_decoderAU codecConfig];
        v61 = [v60 numChannels];
        *buf = 134218242;
        v97 = v61;
        v98 = 2112;
        v99 = v56;
        _os_log_impl(&dword_24158E000, v59, OS_LOG_TYPE_ERROR, "Couldn't set preferred number of input channels to %ld (AU will handle the mapping): %@", buf, 0x16u);
      }
    }
  }

  [(AVAudioSession *)self->_session sampleRate];
  v62 = self->_session;
  v75 = v56;
  v64 = 256.0 / v63;
  v65 = [(AVAudioSession *)v62 setPreferredIOBufferDuration:&v75 error:256.0 / v63];
  v66 = v75;

  if (!v65)
  {
    v67 = APCLogObject();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = [v66 localizedDescription];
      *buf = 134218242;
      v97 = *&v64;
      v98 = 2112;
      v99 = v68;
      _os_log_impl(&dword_24158E000, v67, OS_LOG_TYPE_ERROR, "Error setting preferred io buffer duration to %0.3f seconds: %@", buf, 0x16u);
    }
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (void)createEngineAndAttachNodes
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CB8388]);
  engine = self->_engine;
  self->_engine = v3;

  [(AVAudioEngine *)self->_engine attachNode:self->_decoderAUNode];
  inData = [(AVAudioSession *)self->_session opaqueSessionID];
  v5 = [(AVAudioEngine *)self->_engine inputNode];
  v6 = [v5 audioUnit];

  v7 = AudioUnitSetProperty(v6, 0x7E7u, 0, 0, &inData, 4u);
  if (v7)
  {
    v8 = APCLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v7;
      _os_log_impl(&dword_24158E000, v8, OS_LOG_TYPE_ERROR, "Setting the audio session ID for the listener's input node failed: %d", buf, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateInputNodeWithFormat:(id)a3
{
  v3 = a3;
  v4 = v3;
  v6 = v3 && ([v3 sampleRate], v5 > 0.0) && objc_msgSend(v4, "channelCount") != 0;

  return v6;
}

- (void)makeEngineConnectionsWithError:(id *)a3
{
  [(AVAudioUnit *)self->_decoderAUNode removeTapOnBus:0];
  v5 = [(AVAudioEngine *)self->_engine inputNode];
  v9 = [v5 inputFormatForBus:0];

  if ([(APCListenerEngine *)self validateInputNodeWithFormat:v9])
  {
    engine = self->_engine;
    v7 = [(AVAudioEngine *)engine inputNode];
    [(AVAudioEngine *)engine connect:v7 to:self->_decoderAUNode format:v9];

    [(AVAudioUnit *)self->_decoderAUNode installTapOnBus:0 bufferSize:0x2000 format:v9 block:&__block_literal_global_0];
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10868 userInfo:0];
  }

  *a3 = v8;
}

- (void)startEngineWithError:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (![(AVAudioEngine *)self->_engine isRunning])
  {
    session = self->_session;
    v20 = 0;
    v6 = [(AVAudioSession *)session setActive:1 error:&v20];
    v7 = v20;
    if (v7 == 0 && v6)
    {
      v19 = 0;
      [(APCListenerEngine *)self makeEngineConnectionsWithError:&v19];
      v8 = v19;
      if (v8)
      {
        v9 = v8;
        v10 = APCLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v9;
          _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_ERROR, "Error making engine connection: %@", buf, 0xCu);
        }
      }

      else
      {
        [(AUPasscodeDecoder *)self->_decoderAU startAudioLogCapture];
        engine = self->_engine;
        v18 = 0;
        v15 = [(AVAudioEngine *)engine startAndReturnError:&v18];
        v16 = v18;
        if (v16 == 0 && v15)
        {
          v9 = 0;
LABEL_12:

          goto LABEL_13;
        }

        v9 = v16;
        v17 = APCLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v9;
          _os_log_impl(&dword_24158E000, v17, OS_LOG_TYPE_ERROR, "Error starting engine: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = v7;
      v11 = APCLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_24158E000, v11, OS_LOG_TYPE_ERROR, "Error activating session: %@", buf, 0xCu);
      }
    }

    if (a3)
    {
      v12 = v9;
      *a3 = v9;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopEngine
{
  [(AVAudioEngine *)self->_engine stop];
  [(AUPasscodeDecoder *)self->_decoderAU stopAudioLogCapture];
  session = self->_session;

  [(AVAudioSession *)session setActive:0 error:0];
}

@end