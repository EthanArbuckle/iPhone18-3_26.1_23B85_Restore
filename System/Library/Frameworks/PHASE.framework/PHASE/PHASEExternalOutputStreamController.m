@interface PHASEExternalOutputStreamController
+ (double)recommendedAbsoluteCalibrationLevelForVoiceStreams;
+ (void)controllerWithEngine:(id)a3 streamUUID:(id)a4 gainMetaParameterDefinition:(id)a5 mixerDefinition:(id)a6 source:(id)a7 listener:(id)a8 group:(id)a9 normalize:(BOOL)a10 calibrationMode:(int64_t)a11 level:(double)a12 callback:(id)a13;
+ (void)controllerWithEngine:(id)a3 streamUUID:(id)a4 gainMetaParameterDefinition:(id)a5 mixerDefinition:(id)a6 source:(id)a7 listener:(id)a8 group:(id)a9 normalize:(BOOL)a10 targetLKFS:(id)a11 calibrationMode:(int64_t)a12 level:(double)a13 callback:(id)a14;
- (BOOL)prepareAndReturnError:(id *)a3;
- (BOOL)startAndReturnError:(id *)a3;
- (NSDictionary)metaParameters;
- (PHASEExternalOutputStreamController)init;
- (PHASEExternalOutputStreamController)initWithEngine:(id)a3 streamGroupUUID:(id)a4 gainMetaParameterDefinition:(id)a5 mixerDefinition:(id)a6 source:(id)a7 listener:(id)a8 group:(id)a9 normalize:(BOOL)a10 targetLKFS:(id)a11 calibrationMode:(int64_t)a12 level:(double)a13 outError:(id *)a14;
- (id)metaParametersForStreamUUID:(id)a3;
- (id)soundEventForStreamUUID:(id)a3;
- (void)dealloc;
- (void)setMetaParameter:(id)a3 value:(double)a4 withTimeInterval:(double)a5;
- (void)stopAndInvalidate;
- (void)updateStreamGroupUUID:(id)a3 streamUUID:(id)a4 state:(int64_t)a5;
@end

@implementation PHASEExternalOutputStreamController

- (PHASEExternalOutputStreamController)init
{
  [(PHASEExternalOutputStreamController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStreamController)initWithEngine:(id)a3 streamGroupUUID:(id)a4 gainMetaParameterDefinition:(id)a5 mixerDefinition:(id)a6 source:(id)a7 listener:(id)a8 group:(id)a9 normalize:(BOOL)a10 targetLKFS:(id)a11 calibrationMode:(int64_t)a12 level:(double)a13 outError:(id *)a14
{
  v101 = *MEMORY[0x277D85DE8];
  obj = a3;
  v72 = a4;
  v73 = a5;
  v79 = a6;
  v74 = a7;
  v75 = a8;
  v76 = a9;
  v77 = a11;
  if (a14)
  {
    *a14 = 0;
  }

  v91.receiver = self;
  v91.super_class = PHASEExternalOutputStreamController;
  v21 = [(PHASEExternalOutputStreamController *)&v91 init];
  v22 = v21;
  v85 = v21;
  if (!v21)
  {
    goto LABEL_27;
  }

  objc_storeWeak(&v21->_engine, obj);
  objc_storeStrong(&v85->_streamGroupUUID, a4);
  objc_storeStrong(&v85->_gainMetaParameterDefinition, a5);
  objc_storeStrong(&v85->_mixerDefinition, a6);
  objc_storeStrong(&v85->_source, a7);
  objc_storeStrong(&v85->_listener, a8);
  objc_storeStrong(&v85->_group, a9);
  v85->_level = a13;
  v85->_normalize = a10;
  objc_storeStrong(&v85->_targetLKFS, a11);
  v85->_calibrationMode = a12;
  v85->_controlToken.mStorage[0] = 0;
  v85->_controlToken.mStorage[1] = 0;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  soundEvents = v85->_soundEvents;
  v85->_soundEvents = v23;

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  metaParameters = v85->_metaParameters;
  v85->_metaParameters = v25;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v82 = v79;
    v27 = [v82 spatialPipeline];
    v80 = [v27 entries];

    v28 = [v80 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v28)
    {
      v81 = *v88;
      do
      {
        v83 = v28;
        for (i = 0; i != v83; ++i)
        {
          if (*v88 != v81)
          {
            objc_enumerationMutation(v80);
          }

          v30 = *(*(&v87 + 1) + 8 * i);
          v31 = [v82 spatialPipeline];
          v32 = [v31 entries];
          v33 = [v32 objectForKey:v30];

          v34 = [v33 sendLevelMetaParameterDefinition];
          LOBYTE(v31) = v34 == 0;

          if ((v31 & 1) == 0)
          {
            v35 = v85->_metaParameters;
            v36 = [PHASENumberMetaParameter alloc];
            v84 = [v33 sendLevelMetaParameterDefinition];
            v86 = [v84 identifier];
            v37 = [v33 sendLevelMetaParameterDefinition];
            v38 = [v37 value];
            [v38 doubleValue];
            v40 = v39;
            v41 = [v33 sendLevelMetaParameterDefinition];
            [v41 minimum];
            v43 = v42;
            v44 = [v33 sendLevelMetaParameterDefinition];
            [v44 maximum];
            v46 = [(PHASENumberMetaParameter *)v36 initWithUID:v86 value:v85 rangeMin:v40 rangeMax:v43 delegate:v45];
            v47 = [v33 sendLevelMetaParameterDefinition];
            v48 = [v47 identifier];
            [(NSMutableDictionary *)v35 setValue:v46 forKey:v48];
          }
        }

        v28 = [v80 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v28);
    }

    v49 = 6553601;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v82 = [v79 inputChannelLayout];
    v49 = [v82 layoutTag];
LABEL_18:
    v85->_channelLayoutTag = v49;
  }

  v22 = v85;
  if ((v85->_channelLayoutTag | 0x10000) != 0x10000)
  {
    if (v85->_gainMetaParameterDefinition)
    {
      v59 = v85->_metaParameters;
      v60 = [PHASENumberMetaParameter alloc];
      v61 = [(PHASEDefinition *)v85->_gainMetaParameterDefinition identifier];
      v62 = [(PHASEMetaParameterDefinition *)v85->_gainMetaParameterDefinition value];
      [v62 doubleValue];
      v64 = v63;
      [(PHASENumberMetaParameterDefinition *)v85->_gainMetaParameterDefinition minimum];
      v66 = v65;
      [(PHASENumberMetaParameterDefinition *)v85->_gainMetaParameterDefinition maximum];
      v68 = [(PHASENumberMetaParameter *)v60 initWithUID:v61 value:v85 rangeMin:v64 rangeMax:v66 delegate:v67];
      v69 = [(PHASEDefinition *)v85->_gainMetaParameterDefinition identifier];
      [(NSMutableDictionary *)v59 setValue:v68 forKey:v69];

      v22 = v85;
    }

LABEL_27:
    v58 = v22;
    goto LABEL_28;
  }

  v50 = *MEMORY[0x277CCA450];
  v98 = *MEMORY[0x277CCA450];
  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"PHASEExternalOutputStreamController's mixer definition can't use channel bitmap or channel descriptions"];
  v99 = v51;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];

  v54 = **(Phase::Logger::GetInstance(v53) + 448);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v55 = [v52 objectForKeyedSubscript:v50];
    v56 = v55;
    v57 = [v55 UTF8String];
    *buf = 136315650;
    v93 = "PHASEExternalStream.mm";
    v94 = 1024;
    v95 = 701;
    v96 = 2080;
    v97 = v57;
    _os_log_impl(&dword_23A302000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
  }

  if (v71)
  {
    *v71 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v52];
  }

  v58 = 0;
LABEL_28:

  return v58;
}

+ (void)controllerWithEngine:(id)a3 streamUUID:(id)a4 gainMetaParameterDefinition:(id)a5 mixerDefinition:(id)a6 source:(id)a7 listener:(id)a8 group:(id)a9 normalize:(BOOL)a10 calibrationMode:(int64_t)a11 level:(double)a12 callback:(id)a13
{
  v28 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a13;
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LOBYTE(v27) = a10;
  [PHASEExternalOutputStreamController controllerWithEngine:v28 streamUUID:v19 gainMetaParameterDefinition:v20 mixerDefinition:v21 source:v22 listener:v23 group:a12 normalize:v24 targetLKFS:v27 calibrationMode:v26 level:a11 callback:v25];
}

+ (void)controllerWithEngine:(id)a3 streamUUID:(id)a4 gainMetaParameterDefinition:(id)a5 mixerDefinition:(id)a6 source:(id)a7 listener:(id)a8 group:(id)a9 normalize:(BOOL)a10 targetLKFS:(id)a11 calibrationMode:(int64_t)a12 level:(double)a13 callback:(id)a14
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = v22;
  v26 = v24;
  v27 = a8;
  v28 = a9;
  v29 = a11;
  v30 = v20;
  v31 = a14;
  v37 = v27;
  v45[0] = 0;
  LOBYTE(v35) = a10;
  v32 = [[PHASEExternalOutputStreamController alloc] initWithEngine:v30 streamGroupUUID:v21 gainMetaParameterDefinition:v22 mixerDefinition:v23 source:v26 listener:v27 group:a13 normalize:v28 targetLKFS:v35 calibrationMode:v29 level:a12 outError:v45];
  v33 = v45[0];
  if (v33 || !v32)
  {
    v31[2](v31, 0, v33);
  }

  else
  {
    v36 = v25;
    objc_initWeak(&location, v32);
    v34 = *([v30 implementation] + 416);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __189__PHASEExternalOutputStreamController_controllerWithEngine_streamUUID_gainMetaParameterDefinition_mixerDefinition_source_listener_group_normalize_targetLKFS_calibrationMode_level_callback___block_invoke;
    v42[3] = &unk_278B4F810;
    objc_copyWeak(&v43, &location);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __189__PHASEExternalOutputStreamController_controllerWithEngine_streamUUID_gainMetaParameterDefinition_mixerDefinition_source_listener_group_normalize_targetLKFS_calibrationMode_level_callback___block_invoke_2;
    v38[3] = &unk_278B4F838;
    v39 = v32;
    v40 = 0;
    v41 = v31;
    (*(*v34 + 40))(v34, v21, v42, v38);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
    v25 = v36;
  }
}

void __189__PHASEExternalOutputStreamController_controllerWithEngine_streamUUID_gainMetaParameterDefinition_mixerDefinition_source_listener_group_normalize_targetLKFS_calibrationMode_level_callback___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateStreamGroupUUID:v10 streamUUID:v7 state:a4];
  }
}

void __189__PHASEExternalOutputStreamController_controllerWithEngine_streamUUID_gainMetaParameterDefinition_mixerDefinition_source_listener_group_normalize_targetLKFS_calibrationMode_level_callback___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  if (v11)
  {
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    v8 = *(a1 + 32);
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    objc_sync_exit(v7);
  }

  else
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    v10 = *(a1 + 32);
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    objc_sync_exit(v9);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)metaParametersForStreamUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_soundEvents objectForKey:v4];
  v7 = [v6 metaParameters];

  objc_sync_exit(v5);

  return v7;
}

- (id)soundEventForStreamUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_soundEvents objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setMetaParameter:(id)a3 value:(double)a4 withTimeInterval:(double)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [(NSMutableDictionary *)v9->_soundEvents allKeys];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v11)
  {
    v13 = *v22;
    *&v12 = 136315650;
    v20 = v12;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(NSMutableDictionary *)v9->_soundEvents objectForKey:*(*(&v21 + 1) + 8 * v14), v20];
        v16 = [v15 metaParameters];
        v17 = [v16 objectForKey:v8];

        if (v17)
        {
          [v17 fadeToValue:a4 duration:a5];
        }

        else
        {
          v19 = **(Phase::Logger::GetInstance(v18) + 448);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v26 = "PHASEExternalStream.mm";
            v27 = 1024;
            v28 = 939;
            v29 = 2112;
            v30 = v8;
            _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d setting unknown meta parameter UID %@", buf, 0x1Cu);
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v11);
  }

  objc_sync_exit(v9);
}

- (void)updateStreamGroupUUID:(id)a3 streamUUID:(id)a4 state:(int64_t)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v47 = v9;
  v11 = [v8 isEqual:v10->_streamGroupUUID];
  if ((v11 & 1) == 0)
  {
    v15 = **(Phase::Logger::GetInstance(v11) + 448);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136315650;
    v55 = "PHASEExternalStream.mm";
    v56 = 1024;
    v57 = 958;
    v58 = 2112;
    v59 = v8;
    v16 = "%25s:%-5d got update for unknown external stream group UUID %@";
    goto LABEL_10;
  }

  if (a5 == 1)
  {
    v17 = [(NSMutableDictionary *)v10->_soundEvents objectForKey:v9];
    [v17 stopAndInvalidate];
    [(NSMutableDictionary *)v10->_soundEvents removeObjectForKey:v9];

    goto LABEL_38;
  }

  if (!a5)
  {
    WeakRetained = objc_loadWeakRetained(&v10->_engine);
    if (WeakRetained)
    {
      v12 = [(NSMutableDictionary *)v10->_soundEvents objectForKey:v9];
      v13 = v12;
      if (v12)
      {
        v14 = **(Phase::Logger::GetInstance(v12) + 448);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v55 = "PHASEExternalStream.mm";
          v56 = 1024;
          v57 = 979;
          v58 = 2112;
          v59 = v9;
          v60 = 2112;
          v61 = v8;
          _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d got creation update for already-known external stream %@ in stream group %@", buf, 0x26u);
        }
      }

      else
      {
        v44 = +[PHASEExternalStream newUUID];
        v18 = [PHASEExternalOutputStreamNodeDefinition alloc];
        mixerDefinition = v10->_mixerDefinition;
        channelLayoutTag = v10->_channelLayoutTag;
        v21 = [v44 UUIDString];
        v22 = [(PHASEExternalOutputStreamNodeDefinition *)v18 initWithExternalOutputStreamUUID:v9 mixerDefinition:mixerDefinition channelLayoutTag:channelLayoutTag uid:v21];

        v45 = v22;
        [(PHASEExternalOutputStreamNodeDefinition *)v22 setNormalize:v10->_normalize];
        [(PHASEExternalOutputStreamNodeDefinition *)v22 setTargetLKFS:v10->_targetLKFS];
        v23 = [v47 UUIDString];
        v24 = [(PHASEGeneratorNodeDefinition *)v22 mixerDefinition];
        [v24 setIdentifier:v23];

        [(PHASEGeneratorNodeDefinition *)v22 setCalibrationMode:v10->_calibrationMode level:v10->_level];
        [(PHASEGeneratorNodeDefinition *)v22 setGainMetaParameterDefinition:v10->_gainMetaParameterDefinition];
        [(PHASEGeneratorNodeDefinition *)v22 setGroup:v10->_group];
        v25 = [PHASESoundEvent alloc];
        source = v10->_source;
        listener = v10->_listener;
        v52 = 0;
        v13 = [(PHASESoundEvent *)v25 initWithEngine:WeakRetained rootNode:v22 source:source listener:listener error:&v52];
        v28 = v52;
        v43 = v28;
        if (!v13 || v28)
        {
          v32 = **(Phase::Logger::GetInstance(v28) + 448);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v55 = "PHASEExternalStream.mm";
            v56 = 1024;
            v57 = 1019;
            v58 = 2112;
            v59 = v8;
            v60 = 2112;
            v61 = v47;
            v62 = 2112;
            v63 = v43;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d Controller for external stream group %@ failed to create sound event for stream ID %@: %@", buf, 0x30u);
          }
        }

        else
        {
          v29 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [(PHASESoundEvent *)v13 description];
            *buf = 136316162;
            v55 = "PHASEExternalStream.mm";
            v56 = 1024;
            v57 = 1024;
            v58 = 2112;
            v59 = v30;
            v60 = 2112;
            v61 = v8;
            v62 = 2112;
            v63 = v47;
            _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ created for external stream group %@ for stream ID %@", buf, 0x30u);
          }

          state = v10->_state;
          if (state == 1)
          {
            [(PHASESoundEvent *)v13 prepareWithCompletion:0];
          }

          else if (state == 2)
          {
            [(PHASESoundEvent *)v13 startWithCompletion:0];
          }

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v33 = v10->_metaParameters;
          v34 = [(NSMutableDictionary *)v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v34)
          {
            v35 = *v49;
            do
            {
              for (i = 0; i != v34; ++i)
              {
                if (*v49 != v35)
                {
                  objc_enumerationMutation(v33);
                }

                v37 = *(*(&v48 + 1) + 8 * i);
                v38 = [(NSMutableDictionary *)v10->_metaParameters objectForKey:v37];
                v39 = [(PHASESoundEvent *)v13 metaParameters];
                v40 = [v39 objectForKey:v37];

                if (v38)
                {
                  v41 = v40 == 0;
                }

                else
                {
                  v41 = 1;
                }

                if (v41)
                {
                  std::terminate();
                }

                v42 = [v38 value];
                [v40 setValue:v42];
              }

              v34 = [(NSMutableDictionary *)v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v34);
          }

          [(NSMutableDictionary *)v10->_soundEvents setObject:v13 forKey:v47];
        }
      }

      goto LABEL_38;
    }

    v15 = **(Phase::Logger::GetInstance(0) + 448);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136315650;
    v55 = "PHASEExternalStream.mm";
    v56 = 1024;
    v57 = 970;
    v58 = 2112;
    v59 = v8;
    v16 = "%25s:%-5d Controller for external stream group %@ has nil engine";
LABEL_10:
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x1Cu);
  }

LABEL_38:
  objc_sync_exit(v10);
}

- (NSDictionary)metaParameters
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_metaParameters;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)prepareAndReturnError:(id *)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (a3)
  {
    *a3 = 0;
  }

  state = v4->_state;
  if (state)
  {
    v6 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't prepare external stream controller for stream group UUID %@ multiple times", v4->_streamGroupUUID];
    v30[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 objectForKeyedSubscript:v6];
      v12 = v11;
      *buf = 136315650;
      v24 = "PHASEExternalStream.mm";
      v25 = 1024;
      v26 = 1087;
      v27 = 2080;
      v28 = [v11 UTF8String];
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v8];
    }
  }

  else
  {
    v4->_state = 1;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(NSMutableDictionary *)v4->_soundEvents allKeys];
    v13 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = [(NSMutableDictionary *)v4->_soundEvents objectForKey:*(*(&v18 + 1) + 8 * v15)];
          [v16 prepareWithCompletion:0];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  objc_sync_exit(v4);
  return state == 0;
}

- (BOOL)startAndReturnError:(id *)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (a3)
  {
    *a3 = 0;
  }

  state = v4->_state;
  if (state >= 2)
  {
    v11 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't start external stream controller for stream group UUID %@ multiple times", v4->_streamGroupUUID];
    v30[0] = v12;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v14 = **(Phase::Logger::GetInstance(v13) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v6 objectForKeyedSubscript:v11];
      v16 = v15;
      *buf = 136315650;
      v24 = "PHASEExternalStream.mm";
      v25 = 1024;
      v26 = 1124;
      v27 = 2080;
      v28 = [v15 UTF8String];
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (a3)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v6];
    }
  }

  else
  {
    v4->_state = 2;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(NSMutableDictionary *)v4->_soundEvents allKeys];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(NSMutableDictionary *)v4->_soundEvents objectForKey:*(*(&v18 + 1) + 8 * i)];
          [v10 startWithCompletion:0];
        }

        v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  objc_sync_exit(v4);
  return state < 2;
}

- (void)stopAndInvalidate
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v2->_state = 3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableDictionary *)v2->_soundEvents allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)v2->_soundEvents objectForKey:*(*(&v11 + 1) + 8 * i)];
        [v7 stopAndInvalidate];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)v2->_soundEvents removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&v2->_engine);
  v9 = WeakRetained;
  if (WeakRetained && (v2->_controlToken.mStorage[0] || v2->_controlToken.mStorage[1]))
  {
    v10 = [WeakRetained implementation];
    (*(**(v10 + 416) + 48))(*(v10 + 416), v2->_streamGroupUUID, v2->_controlToken.mStorage[0], v2->_controlToken.mStorage[1], &__block_literal_global_214);
    v2->_controlToken.mStorage[0] = 0;
    v2->_controlToken.mStorage[1] = 0;
  }

  objc_sync_exit(v2);
}

- (void)dealloc
{
  [(PHASEExternalOutputStreamController *)self stopAndInvalidate];
  v3.receiver = self;
  v3.super_class = PHASEExternalOutputStreamController;
  [(PHASEExternalOutputStreamController *)&v3 dealloc];
}

+ (double)recommendedAbsoluteCalibrationLevelForVoiceStreams
{
  +[PHASEExternalOutputStreamController recommendedTargetLKFSForVoiceStreams];
  v3 = v2;
  +[PHASEExternalOutputStreamController recommendedAbsoluteCalibrationLevelForVoiceStreamsAtRecommendedTargetLKFS];
  return -12.0 - v3 + v4;
}

@end