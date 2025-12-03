@interface PHASEExternalOutputStreamController
+ (double)recommendedAbsoluteCalibrationLevelForVoiceStreams;
+ (void)controllerWithEngine:(id)engine streamUUID:(id)d gainMetaParameterDefinition:(id)definition mixerDefinition:(id)mixerDefinition source:(id)source listener:(id)listener group:(id)group normalize:(BOOL)self0 calibrationMode:(int64_t)self1 level:(double)self2 callback:(id)self3;
+ (void)controllerWithEngine:(id)engine streamUUID:(id)d gainMetaParameterDefinition:(id)definition mixerDefinition:(id)mixerDefinition source:(id)source listener:(id)listener group:(id)group normalize:(BOOL)self0 targetLKFS:(id)self1 calibrationMode:(int64_t)self2 level:(double)self3 callback:(id)self4;
- (BOOL)prepareAndReturnError:(id *)error;
- (BOOL)startAndReturnError:(id *)error;
- (NSDictionary)metaParameters;
- (PHASEExternalOutputStreamController)init;
- (PHASEExternalOutputStreamController)initWithEngine:(id)engine streamGroupUUID:(id)d gainMetaParameterDefinition:(id)definition mixerDefinition:(id)mixerDefinition source:(id)source listener:(id)listener group:(id)group normalize:(BOOL)self0 targetLKFS:(id)self1 calibrationMode:(int64_t)self2 level:(double)self3 outError:(id *)self4;
- (id)metaParametersForStreamUUID:(id)d;
- (id)soundEventForStreamUUID:(id)d;
- (void)dealloc;
- (void)setMetaParameter:(id)parameter value:(double)value withTimeInterval:(double)interval;
- (void)stopAndInvalidate;
- (void)updateStreamGroupUUID:(id)d streamUUID:(id)iD state:(int64_t)state;
@end

@implementation PHASEExternalOutputStreamController

- (PHASEExternalOutputStreamController)init
{
  [(PHASEExternalOutputStreamController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStreamController)initWithEngine:(id)engine streamGroupUUID:(id)d gainMetaParameterDefinition:(id)definition mixerDefinition:(id)mixerDefinition source:(id)source listener:(id)listener group:(id)group normalize:(BOOL)self0 targetLKFS:(id)self1 calibrationMode:(int64_t)self2 level:(double)self3 outError:(id *)self4
{
  v101 = *MEMORY[0x277D85DE8];
  obj = engine;
  dCopy = d;
  definitionCopy = definition;
  mixerDefinitionCopy = mixerDefinition;
  sourceCopy = source;
  listenerCopy = listener;
  groupCopy = group;
  sCopy = s;
  if (error)
  {
    *error = 0;
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
  objc_storeStrong(&v85->_streamGroupUUID, d);
  objc_storeStrong(&v85->_gainMetaParameterDefinition, definition);
  objc_storeStrong(&v85->_mixerDefinition, mixerDefinition);
  objc_storeStrong(&v85->_source, source);
  objc_storeStrong(&v85->_listener, listener);
  objc_storeStrong(&v85->_group, group);
  v85->_level = level;
  v85->_normalize = normalize;
  objc_storeStrong(&v85->_targetLKFS, s);
  v85->_calibrationMode = mode;
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
    inputChannelLayout = mixerDefinitionCopy;
    spatialPipeline = [inputChannelLayout spatialPipeline];
    entries = [spatialPipeline entries];

    v28 = [entries countByEnumeratingWithState:&v87 objects:v100 count:16];
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
            objc_enumerationMutation(entries);
          }

          v30 = *(*(&v87 + 1) + 8 * i);
          spatialPipeline2 = [inputChannelLayout spatialPipeline];
          entries2 = [spatialPipeline2 entries];
          v33 = [entries2 objectForKey:v30];

          sendLevelMetaParameterDefinition = [v33 sendLevelMetaParameterDefinition];
          LOBYTE(spatialPipeline2) = sendLevelMetaParameterDefinition == 0;

          if ((spatialPipeline2 & 1) == 0)
          {
            v35 = v85->_metaParameters;
            v36 = [PHASENumberMetaParameter alloc];
            sendLevelMetaParameterDefinition2 = [v33 sendLevelMetaParameterDefinition];
            identifier = [sendLevelMetaParameterDefinition2 identifier];
            sendLevelMetaParameterDefinition3 = [v33 sendLevelMetaParameterDefinition];
            value = [sendLevelMetaParameterDefinition3 value];
            [value doubleValue];
            v40 = v39;
            sendLevelMetaParameterDefinition4 = [v33 sendLevelMetaParameterDefinition];
            [sendLevelMetaParameterDefinition4 minimum];
            v43 = v42;
            sendLevelMetaParameterDefinition5 = [v33 sendLevelMetaParameterDefinition];
            [sendLevelMetaParameterDefinition5 maximum];
            v46 = [(PHASENumberMetaParameter *)v36 initWithUID:identifier value:v85 rangeMin:v40 rangeMax:v43 delegate:v45];
            sendLevelMetaParameterDefinition6 = [v33 sendLevelMetaParameterDefinition];
            identifier2 = [sendLevelMetaParameterDefinition6 identifier];
            [(NSMutableDictionary *)v35 setValue:v46 forKey:identifier2];
          }
        }

        v28 = [entries countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v28);
    }

    layoutTag = 6553601;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    inputChannelLayout = [mixerDefinitionCopy inputChannelLayout];
    layoutTag = [inputChannelLayout layoutTag];
LABEL_18:
    v85->_channelLayoutTag = layoutTag;
  }

  v22 = v85;
  if ((v85->_channelLayoutTag | 0x10000) != 0x10000)
  {
    if (v85->_gainMetaParameterDefinition)
    {
      v59 = v85->_metaParameters;
      v60 = [PHASENumberMetaParameter alloc];
      identifier3 = [(PHASEDefinition *)v85->_gainMetaParameterDefinition identifier];
      value2 = [(PHASEMetaParameterDefinition *)v85->_gainMetaParameterDefinition value];
      [value2 doubleValue];
      v64 = v63;
      [(PHASENumberMetaParameterDefinition *)v85->_gainMetaParameterDefinition minimum];
      v66 = v65;
      [(PHASENumberMetaParameterDefinition *)v85->_gainMetaParameterDefinition maximum];
      v68 = [(PHASENumberMetaParameter *)v60 initWithUID:identifier3 value:v85 rangeMin:v64 rangeMax:v66 delegate:v67];
      identifier4 = [(PHASEDefinition *)v85->_gainMetaParameterDefinition identifier];
      [(NSMutableDictionary *)v59 setValue:v68 forKey:identifier4];

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
    uTF8String = [v55 UTF8String];
    *buf = 136315650;
    v93 = "PHASEExternalStream.mm";
    v94 = 1024;
    v95 = 701;
    v96 = 2080;
    v97 = uTF8String;
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

+ (void)controllerWithEngine:(id)engine streamUUID:(id)d gainMetaParameterDefinition:(id)definition mixerDefinition:(id)mixerDefinition source:(id)source listener:(id)listener group:(id)group normalize:(BOOL)self0 calibrationMode:(int64_t)self1 level:(double)self2 callback:(id)self3
{
  engineCopy = engine;
  dCopy = d;
  definitionCopy = definition;
  mixerDefinitionCopy = mixerDefinition;
  sourceCopy = source;
  listenerCopy = listener;
  groupCopy = group;
  callbackCopy = callback;
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LOBYTE(v27) = normalize;
  [PHASEExternalOutputStreamController controllerWithEngine:engineCopy streamUUID:dCopy gainMetaParameterDefinition:definitionCopy mixerDefinition:mixerDefinitionCopy source:sourceCopy listener:listenerCopy group:level normalize:groupCopy targetLKFS:v27 calibrationMode:v26 level:mode callback:callbackCopy];
}

+ (void)controllerWithEngine:(id)engine streamUUID:(id)d gainMetaParameterDefinition:(id)definition mixerDefinition:(id)mixerDefinition source:(id)source listener:(id)listener group:(id)group normalize:(BOOL)self0 targetLKFS:(id)self1 calibrationMode:(int64_t)self2 level:(double)self3 callback:(id)self4
{
  engineCopy = engine;
  dCopy = d;
  definitionCopy = definition;
  mixerDefinitionCopy = mixerDefinition;
  sourceCopy = source;
  v25 = definitionCopy;
  v26 = sourceCopy;
  listenerCopy = listener;
  groupCopy = group;
  sCopy = s;
  v30 = engineCopy;
  callbackCopy = callback;
  v37 = listenerCopy;
  v45[0] = 0;
  LOBYTE(v35) = normalize;
  v32 = [[PHASEExternalOutputStreamController alloc] initWithEngine:v30 streamGroupUUID:dCopy gainMetaParameterDefinition:definitionCopy mixerDefinition:mixerDefinitionCopy source:v26 listener:listenerCopy group:level normalize:groupCopy targetLKFS:v35 calibrationMode:sCopy level:mode outError:v45];
  v33 = v45[0];
  if (v33 || !v32)
  {
    callbackCopy[2](callbackCopy, 0, v33);
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
    v41 = callbackCopy;
    (*(*v34 + 40))(v34, dCopy, v42, v38);

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

- (id)metaParametersForStreamUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:dCopy];
  metaParameters = [v6 metaParameters];

  objc_sync_exit(selfCopy);

  return metaParameters;
}

- (id)soundEventForStreamUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setMetaParameter:(id)parameter value:(double)value withTimeInterval:(double)interval
{
  v32 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_soundEvents allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v15 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:*(*(&v21 + 1) + 8 * v14), v20];
        metaParameters = [v15 metaParameters];
        v17 = [metaParameters objectForKey:parameterCopy];

        if (v17)
        {
          [v17 fadeToValue:value duration:interval];
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
            v30 = parameterCopy;
            _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d setting unknown meta parameter UID %@", buf, 0x1Cu);
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [allKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
}

- (void)updateStreamGroupUUID:(id)d streamUUID:(id)iD state:(int64_t)state
{
  v64 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v47 = iDCopy;
  v11 = [dCopy isEqual:selfCopy->_streamGroupUUID];
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
    v59 = dCopy;
    v16 = "%25s:%-5d got update for unknown external stream group UUID %@";
    goto LABEL_10;
  }

  if (state == 1)
  {
    v17 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:iDCopy];
    [v17 stopAndInvalidate];
    [(NSMutableDictionary *)selfCopy->_soundEvents removeObjectForKey:iDCopy];

    goto LABEL_38;
  }

  if (!state)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_engine);
    if (WeakRetained)
    {
      v12 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:iDCopy];
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
          v59 = iDCopy;
          v60 = 2112;
          v61 = dCopy;
          _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d got creation update for already-known external stream %@ in stream group %@", buf, 0x26u);
        }
      }

      else
      {
        v44 = +[PHASEExternalStream newUUID];
        v18 = [PHASEExternalOutputStreamNodeDefinition alloc];
        mixerDefinition = selfCopy->_mixerDefinition;
        channelLayoutTag = selfCopy->_channelLayoutTag;
        uUIDString = [v44 UUIDString];
        v22 = [(PHASEExternalOutputStreamNodeDefinition *)v18 initWithExternalOutputStreamUUID:iDCopy mixerDefinition:mixerDefinition channelLayoutTag:channelLayoutTag uid:uUIDString];

        v45 = v22;
        [(PHASEExternalOutputStreamNodeDefinition *)v22 setNormalize:selfCopy->_normalize];
        [(PHASEExternalOutputStreamNodeDefinition *)v22 setTargetLKFS:selfCopy->_targetLKFS];
        uUIDString2 = [v47 UUIDString];
        mixerDefinition = [(PHASEGeneratorNodeDefinition *)v22 mixerDefinition];
        [mixerDefinition setIdentifier:uUIDString2];

        [(PHASEGeneratorNodeDefinition *)v22 setCalibrationMode:selfCopy->_calibrationMode level:selfCopy->_level];
        [(PHASEGeneratorNodeDefinition *)v22 setGainMetaParameterDefinition:selfCopy->_gainMetaParameterDefinition];
        [(PHASEGeneratorNodeDefinition *)v22 setGroup:selfCopy->_group];
        v25 = [PHASESoundEvent alloc];
        source = selfCopy->_source;
        listener = selfCopy->_listener;
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
            v59 = dCopy;
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
            v61 = dCopy;
            v62 = 2112;
            v63 = v47;
            _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@ created for external stream group %@ for stream ID %@", buf, 0x30u);
          }

          state = selfCopy->_state;
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
          v33 = selfCopy->_metaParameters;
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
                v38 = [(NSMutableDictionary *)selfCopy->_metaParameters objectForKey:v37];
                metaParameters = [(PHASESoundEvent *)v13 metaParameters];
                v40 = [metaParameters objectForKey:v37];

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

                value = [v38 value];
                [v40 setValue:value];
              }

              v34 = [(NSMutableDictionary *)v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v34);
          }

          [(NSMutableDictionary *)selfCopy->_soundEvents setObject:v13 forKey:v47];
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
    v59 = dCopy;
    v16 = "%25s:%-5d Controller for external stream group %@ has nil engine";
LABEL_10:
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x1Cu);
  }

LABEL_38:
  objc_sync_exit(selfCopy);
}

- (NSDictionary)metaParameters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_metaParameters;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)prepareAndReturnError:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (error)
  {
    *error = 0;
  }

  state = selfCopy->_state;
  if (state)
  {
    v6 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't prepare external stream controller for stream group UUID %@ multiple times", selfCopy->_streamGroupUUID];
    v30[0] = v7;
    allKeys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [allKeys objectForKeyedSubscript:v6];
      v12 = v11;
      *buf = 136315650;
      v24 = "PHASEExternalStream.mm";
      v25 = 1024;
      v26 = 1087;
      v27 = 2080;
      uTF8String = [v11 UTF8String];
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:allKeys];
    }
  }

  else
  {
    selfCopy->_state = 1;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_soundEvents allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v16 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:*(*(&v18 + 1) + 8 * v15)];
          [v16 prepareWithCompletion:0];

          ++v15;
        }

        while (v13 != v15);
        v13 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }

  objc_sync_exit(selfCopy);
  return state == 0;
}

- (BOOL)startAndReturnError:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (error)
  {
    *error = 0;
  }

  state = selfCopy->_state;
  if (state >= 2)
  {
    v11 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't start external stream controller for stream group UUID %@ multiple times", selfCopy->_streamGroupUUID];
    v30[0] = v12;
    allKeys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v14 = **(Phase::Logger::GetInstance(v13) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [allKeys objectForKeyedSubscript:v11];
      v16 = v15;
      *buf = 136315650;
      v24 = "PHASEExternalStream.mm";
      v25 = 1024;
      v26 = 1124;
      v27 = 2080;
      uTF8String = [v15 UTF8String];
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:allKeys];
    }
  }

  else
  {
    selfCopy->_state = 2;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_soundEvents allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:*(*(&v18 + 1) + 8 * i)];
          [v10 startWithCompletion:0];
        }

        v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  objc_sync_exit(selfCopy);
  return state < 2;
}

- (void)stopAndInvalidate
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_state = 3;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_soundEvents allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = [(NSMutableDictionary *)selfCopy->_soundEvents objectForKey:*(*(&v11 + 1) + 8 * i)];
        [v7 stopAndInvalidate];
      }

      v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [(NSMutableDictionary *)selfCopy->_soundEvents removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_engine);
  v9 = WeakRetained;
  if (WeakRetained && (selfCopy->_controlToken.mStorage[0] || selfCopy->_controlToken.mStorage[1]))
  {
    implementation = [WeakRetained implementation];
    (*(**(implementation + 416) + 48))(*(implementation + 416), selfCopy->_streamGroupUUID, selfCopy->_controlToken.mStorage[0], selfCopy->_controlToken.mStorage[1], &__block_literal_global_214);
    selfCopy->_controlToken.mStorage[0] = 0;
    selfCopy->_controlToken.mStorage[1] = 0;
  }

  objc_sync_exit(selfCopy);
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