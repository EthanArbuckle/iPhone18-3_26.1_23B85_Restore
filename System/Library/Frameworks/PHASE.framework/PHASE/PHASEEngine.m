@interface PHASEEngine
- (AVAudioTime)lastRenderTime;
- (BOOL)initInternalWithUpdateMode:(int64_t)a3 engineMode:(int64_t)a4 platform:(id)a5 spatialMode:(int64_t)a6;
- (BOOL)setHeadphoneHRIRFile:(id)a3 error:(id *)a4;
- (BOOL)startAndReturnError:(NSError *)error;
- (NSArray)soundEvents;
- (PHASEEngine)init;
- (PHASEEngine)initWithEngineMode:(int64_t)a3 updateMode:(int64_t)a4;
- (PHASEEngine)initWithPlatform:(id)a3;
- (PHASEEngine)initWithUpdateMode:(PHASEUpdateMode)updateMode;
- (PHASEEngine)initWithUpdateMode:(int64_t)a3 engineMode:(int64_t)a4;
- (PHASEEngine)initWithUpdateMode:(int64_t)a3 engineMode:(int64_t)a4 platform:(id)a5;
- (PHASEEngine)initWithUpdateMode:(int64_t)a3 renderingMode:(int64_t)a4;
- (PHASEEngine)initWithUpdateMode:(int64_t)a3 spatialMode:(int64_t)a4;
- (PHASEMedium)defaultMedium;
- (PHASEObject)rootObject;
- (PHASERenderingState)renderingState;
- (id).cxx_construct;
- (id)rootObjectForSessionIOBinding:(id)a3 error:(id *)a4;
- (id)sessionRootObjects;
- (int64_t)engineMode;
- (uint64_t)setSpaceBlendTargetPresetOrientation:(__n128 *)a1;
- (void)addDucker:(id)a3;
- (void)addGroup:(id)a3;
- (void)addSoundEvent:(id)a3;
- (void)clearProfileOverride;
- (void)dealloc;
- (void)destroy;
- (void)gatherExternalStreamDebugInformation:(id)a3;
- (void)pause;
- (void)removeDucker:(id)a3;
- (void)removeGroup:(id)a3;
- (void)removeSoundEvent:(id)a3;
- (void)setDefaultMedium:(PHASEMedium *)defaultMedium;
- (void)setDefaultPrivateReverbPreset:(int64_t)a3;
- (void)setDefaultReverbPreset:(PHASEReverbPreset)defaultReverbPreset;
- (void)setOutputSpatializationMode:(PHASESpatializationMode)outputSpatializationMode;
- (void)setProfileOverrideWithName:(id)a3 balance:(double)a4;
- (void)setRoomAcousticMaximumReverbTime:(double)a3;
- (void)setRoomAcousticSmoothing:(double)a3;
- (void)setRoomAcousticSoftLimiting:(BOOL)a3;
- (void)setRoomAcousticTarget:(id)a3;
- (void)setRoomAcousticTrackingMode:(int64_t)a3;
- (void)setSceneClassification:(int64_t)a3;
- (void)setSceneRoomUUID:(id)a3;
- (void)setSpaceBlendLevel:(double)a3;
- (void)setSpaceBlendTargetPreset:(int64_t)a3;
- (void)setSpatialCategoryBandCount:(unint64_t)a3 withName:(id)a4;
- (void)setSpatialCategoryMaxClusterCount:(unint64_t)a3 withName:(id)a4;
- (void)setSpatialCategoryUpdateRate:(float)a3 withName:(id)a4;
- (void)setUnitsPerMeter:(double)unitsPerMeter;
- (void)setUnitsPerSecond:(double)unitsPerSecond;
- (void)stop;
- (void)update;
@end

@implementation PHASEEngine

- (PHASEEngine)init
{
  [(PHASEEngine *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEEngine)initWithUpdateMode:(PHASEUpdateMode)updateMode
{
  v8.receiver = self;
  v8.super_class = PHASEEngine;
  v4 = [(PHASEEngine *)&v8 init];
  if (v4)
  {
    GetDefaultClientEngineMode();
    if ([(PHASEEngine *)v4 initInternalWithUpdateMode:updateMode engineMode:0 platform:0 spatialMode:0])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (PHASEEngine)initWithEngineMode:(int64_t)a3 updateMode:(int64_t)a4
{
  v6 = self;
  v14 = *MEMORY[0x277D85DE8];
  if (Phase::CurrentProcessCanSelectEngineMode(void)::onceToken != -1)
  {
    dispatch_once(&Phase::CurrentProcessCanSelectEngineMode(void)::onceToken, &__block_literal_global_8);
  }

  if (Phase::CurrentProcessCanSelectEngineMode(void)::currentProcessCanSelectEngineMode == 1)
  {
    v6 = [(PHASEEngine *)v6 initWithUpdateMode:a4 engineMode:a3];
    v7 = v6;
  }

  else
  {
    v8 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "PHASEEngine.mm";
      v12 = 1024;
      v13 = 524;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Insufficient permissions to use initWithEngineMode:engineMode:updateMode.", &v10, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

- (PHASEEngine)initWithUpdateMode:(int64_t)a3 spatialMode:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = PHASEEngine;
  v6 = [(PHASEEngine *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if ([(PHASEEngine *)v6 initInternalWithUpdateMode:a3 engineMode:0 platform:0 spatialMode:a4])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

- (PHASEEngine)initWithUpdateMode:(int64_t)a3 renderingMode:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = PHASEEngine;
  v5 = [(PHASEEngine *)&v10 init:a3];
  v6 = v5;
  if (v5)
  {
    if ([(PHASEEngine *)v5 initInternalWithUpdateMode:a3 engineMode:0 platform:0 spatialMode:0])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (BOOL)initInternalWithUpdateMode:(int64_t)a3 engineMode:(int64_t)a4 platform:(id)a5 spatialMode:(int64_t)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = v7;
  if (!v7 || (v9 = [v7 sampleRate], v10 == 48000.0))
  {
    self->_sampleRate = 48000.0;
    *&self->_defaultPrivateReverbPreset = xmmword_23A596FE0;
    self->_unitsPerMeter = 1.0;
    v13 = [[PHASEAssetRegistry alloc] initWithEngine:self];
    assetRegistry = self->_assetRegistry;
    self->_assetRegistry = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    internalSoundEvents = self->_internalSoundEvents;
    self->_internalSoundEvents = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groups = self->_groups;
    self->_groups = v17;

    v19 = [[PHASETapRegistry alloc] initWithEngine:self];
    tapRegistry = self->_tapRegistry;
    self->_tapRegistry = v19;

    operator new();
  }

  v11 = **(Phase::Logger::GetInstance(v9) + 448);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [v8 sampleRate];
    v22[0] = 136316418;
    *&v22[1] = "PHASEEngine.mm";
    v23 = 1024;
    v24 = 594;
    v25 = 2048;
    v26 = self;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v12;
    v31 = 2048;
    v32 = 0x40E7700000000000;
    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d engine@%p: Unexpected sample rate mismatch between platform (%p, %.f Hz) and PHASE (%.f Hz). Engine will not be initialized.", v22, 0x3Au);
  }

  return 0;
}

- (PHASEEngine)initWithPlatform:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PHASEEngine;
  v5 = [(PHASEEngine *)&v9 init];
  if (v5)
  {
    GetDefaultClientEngineMode();
    if ([(PHASEEngine *)v5 initInternalWithUpdateMode:0 engineMode:0 platform:v4 spatialMode:0])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

- (PHASEEngine)initWithUpdateMode:(int64_t)a3 engineMode:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = PHASEEngine;
  v6 = [(PHASEEngine *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if ([(PHASEEngine *)v6 initInternalWithUpdateMode:a3 engineMode:a4 platform:0 spatialMode:0])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

- (PHASEEngine)initWithUpdateMode:(int64_t)a3 engineMode:(int64_t)a4 platform:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = PHASEEngine;
  v9 = [(PHASEEngine *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if ([(PHASEEngine *)v9 initInternalWithUpdateMode:a3 engineMode:a4 platform:v8 spatialMode:0])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

- (void)destroy
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = objc_sync_enter(v2);
  v4 = **(Phase::Logger::GetInstance(v3) + 448);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "PHASEEngine.mm";
    v16 = 1024;
    v17 = 703;
    v18 = 2048;
    v19 = v2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: PHASEEngine destroy", &v14, 0x1Cu);
  }

  [(PHASEEngine *)v2 stop];
  ptr = v2->_impl.__ptr_;
  if (ptr)
  {
    v6 = *(ptr + 66);
    v7 = v6;
    if (v6)
    {
      [v6 registerIOBlock:0];
      [v7 registerOverloadNotification:0];
      [v7 registerRouteChangeNotification:0];
      if (objc_opt_respondsToSelector())
      {
        [v7 registerTapInterface:0];
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 sessionInterface];
        v9 = v8 == 0;

        if (!v9)
        {
          v10 = [v7 sessionInterface];
          [v10 registerActivateAudioSessionBlock:0];
          [v10 registerFadeClientsInAudioSessionBlock:0];
          if (objc_opt_respondsToSelector())
          {
            [v10 registerMuteInputClientsInAudioSessionBlock:0];
          }

          if (objc_opt_respondsToSelector())
          {
            v11 = [v10 sessionVolumeInterface];
            v12 = v11 == 0;

            if (!v12)
            {
              v13 = [v10 sessionVolumeInterface];
              [v13 registerVolumeChangedNotificationBlock:0];
            }
          }
        }
      }
    }
  }

  [(PHASEAssetRegistry *)v2->_assetRegistry removeAll];
  std::unique_ptr<PHASEEngineImpl>::reset[abi:ne200100](&v2->_impl.__ptr_, 0);
  objc_sync_exit(v2);
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  [(PHASEEngine *)v2 destroy];
  objc_sync_exit(v2);

  v3.receiver = v2;
  v3.super_class = PHASEEngine;
  [(PHASEEngine *)&v3 dealloc];
}

- (BOOL)startAndReturnError:(NSError *)error
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = self;
  v5 = objc_sync_enter(v4);
  v6 = **(Phase::Logger::GetInstance(v5) + 448);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "PHASEEngine.mm";
    v12 = 1024;
    v13 = 763;
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: PHASEEngine start", &v10, 0x1Cu);
  }

  v4->_stopWatch.mStart.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v7 = PHASEEngineImpl::Start(v4->_impl.__ptr_, 60.0);
  if (error)
  {
    v7 = v7;
    *error = v7;
  }

  v8 = v7 == 0;

  objc_sync_exit(v4);
  return v8;
}

- (void)pause
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = objc_sync_enter(v2);
  v4 = **(Phase::Logger::GetInstance(v3) + 448);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "PHASEEngine.mm";
    v7 = 1024;
    v8 = 780;
    v9 = 2048;
    v10 = v2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: PHASEEngine pause", &v5, 0x1Cu);
  }

  PHASEEngineImpl::Pause(v2->_impl.__ptr_);
  objc_sync_exit(v2);
}

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = self;
  v3 = objc_sync_enter(v2);
  v4 = **(Phase::Logger::GetInstance(v3) + 448);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "PHASEEngine.mm";
    v8 = 1024;
    v9 = 790;
    v10 = 2048;
    v11 = v2;
    _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: PHASEEngine stop", &v6, 0x1Cu);
  }

  ptr = v2->_impl.__ptr_;
  if (ptr)
  {
    PHASEEngineImpl::Stop(ptr);
  }

  objc_sync_exit(v2);
}

- (int64_t)engineMode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl.__ptr_ + 2);
  objc_sync_exit(v2);

  return v3;
}

- (PHASERenderingState)renderingState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = atomic_load(v2->_impl.__ptr_ + 3);
  objc_sync_exit(v2);

  return v3;
}

- (PHASEObject)rootObject
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc(MEMORY[0x277CEFCA0]);
    v4 = [MEMORY[0x277CB83F8] sharedInstance];
    v5 = [v3 initWithSession:v4];

    v14 = 0;
    v6 = [(PHASEEngine *)self rootObjectForSessionIOBinding:v5 error:&v14];
    v7 = v14;
    v8 = v7;
    if (!v6)
    {
      v9 = **(Phase::Logger::GetInstance(v7) + 448);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "PHASEEngine.mm";
        v17 = 1024;
        v18 = 826;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create root for [AVAudioSession sharedInstance]: %@", buf, 0x1Cu);
      }
    }
  }

  else
  {
    rootObject = self->_rootObject;
    if (!rootObject)
    {
      v11 = [[PHASERootObject alloc] initWithEngine:self];
      v12 = self->_rootObject;
      self->_rootObject = &v11->super;

      rootObject = self->_rootObject;
    }

    v6 = rootObject;
  }

  return v6;
}

- (id)sessionRootObjects
{
  sessionRootObjects = self->_sessionRootObjects;
  if (!sessionRootObjects)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = self->_sessionRootObjects;
    self->_sessionRootObjects = v4;

    sessionRootObjects = self->_sessionRootObjects;
  }

  return sessionRootObjects;
}

- (id)rootObjectForSessionIOBinding:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 session];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_9:
    v20 = *MEMORY[0x277CCA450];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"rootObjectForSessionIOBinding:error: not implemented";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v21 = **(Phase::Logger::GetInstance(v14) + 448);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(Phase::Logger *)v14 objectForKeyedSubscript:v20];
      *buf = 136315650;
      v31 = "PHASEEngine.mm";
      v32 = 1024;
      v33 = 862;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v14];
      *a4 = v16 = 0;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = [v7 session];
  v10 = [v9 spatialTrackingLabel];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = [v7 session];
  v13 = [v12 spatialTrackingLabel];
  v14 = [v11 initWithUUIDString:v13];

  if (!v14)
  {
    v23 = *MEMORY[0x277CCA450];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"AVAudioSessionIOBinding has invalid session";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v25 = **(Phase::Logger::GetInstance(v24) + 448);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [(Phase::Logger *)v24 objectForKeyedSubscript:v23];
      *buf = 136315650;
      v31 = "PHASEEngine.mm";
      v32 = 1024;
      v33 = 877;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913634 userInfo:v24];
    }

    v14 = 0;
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v15 = [(PHASEEngine *)self sessionRootObjects];
  v16 = [v15 objectForKey:v14];

  if (!v16)
  {
    v17 = [PHASESharedRoot alloc];
    v18 = [v7 session];
    v16 = [(PHASESharedRoot *)v17 initWithEngine:self session:v18 sessionUUID:v14];

    v19 = [(PHASEEngine *)self sessionRootObjects];
    [v19 setObject:v16 forKey:v14];
  }

LABEL_19:

  return v16;
}

- (PHASEMedium)defaultMedium
{
  defaultMedium = self->_defaultMedium;
  if (!defaultMedium)
  {
    v4 = [[PHASEMedium alloc] initWithEngine:self preset:1835286898];
    v5 = self->_defaultMedium;
    self->_defaultMedium = v4;

    [(PHASEMedium *)self->_defaultMedium setDefault];
    defaultMedium = self->_defaultMedium;
  }

  return defaultMedium;
}

- (void)setDefaultMedium:(PHASEMedium *)defaultMedium
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = defaultMedium;
  v5 = **(Phase::Logger::GetInstance(v4) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 915;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setDefaultMedium", &v7, 0x1Cu);
  }

  [(PHASEMedium *)v4 setDefault];
  v6 = self->_defaultMedium;
  self->_defaultMedium = v4;
}

- (void)setDefaultReverbPreset:(PHASEReverbPreset)defaultReverbPreset
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "PHASEEngine.mm";
    v8 = 1024;
    v9 = 928;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setDefaultReverbPreset", &v6, 0x1Cu);
  }

  [(PHASEEngine *)self setDefaultPrivateReverbPreset:defaultReverbPreset];
}

- (void)setOutputSpatializationMode:(PHASESpatializationMode)outputSpatializationMode
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = self;
  v5 = objc_sync_enter(v4);
  v6 = **(Phase::Logger::GetInstance(v5) + 448);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (outputSpatializationMode > PHASESpatializationModeAlwaysUseChannelBased)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_278B4F730[outputSpatializationMode];
    }

    v12 = 136315906;
    v13 = "PHASEEngine.mm";
    v14 = 1024;
    v15 = 938;
    v16 = 2048;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setOutputSpatializationMode %s", &v12, 0x26u);
  }

  v8 = [(PHASEEngine *)v4 engineMode];
  if (v8)
  {
    v9 = **(Phase::Logger::GetInstance(v8) + 448);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "PHASEEngine.mm";
      v14 = 1024;
      v15 = 943;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d setOutputSpatializationMode: Cannot be called when running Client/Server mode.", &v12, 0x12u);
    }
  }

  else
  {
    v10 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatializerManager>((v4->_impl.__ptr_ + 48), 9);
    if (v10)
    {
      if (outputSpatializationMode == PHASESpatializationModeAutomatic)
      {
        [(PHASEEngine *)v4 engineMode];
      }

      *(v10 + 112) = outputSpatializationMode;
      SpatializerForConfig = Phase::Controller::SpatializerManager::GetSpatializerForConfig(outputSpatializationMode, *(v10 + 80), (v10 + 88));
      Phase::Controller::SpatializerManager::SetActiveSpatializer(v10, SpatializerForConfig);
      v4->_outputSpatializationMode = outputSpatializationMode;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"PHASE system initialization failure." format:@"SpatializerManager is unavailable"];
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)setHeadphoneHRIRFile:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  v8 = objc_sync_enter(v7);
  v9 = **(Phase::Logger::GetInstance(v8) + 448);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "PHASEEngine.mm";
    v33 = 1024;
    v34 = 988;
    v35 = 2048;
    v36 = v7;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setHeadphoneHRIRFile", buf, 0x1Cu);
  }

  if (a4)
  {
    *a4 = 0;
  }

  if ([(PHASEEngine *)v7 engineMode])
  {
    v10 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA450];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"setHeadphoneHRIRFile: Cannot be called when running Client/Server mode."];
    v30 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    v14 = **(Phase::Logger::GetInstance(v13) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v12 objectForKeyedSubscript:v10];
      *buf = 136315650;
      v32 = "PHASEEngine.mm";
      v33 = 1024;
      v34 = 1002;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (!a4)
    {
      goto LABEL_11;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913633 userInfo:v12];
    goto LABEL_10;
  }

  v19 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatializerManager>((v7->_impl.__ptr_ + 48), 9);
  if (!v19)
  {
    [MEMORY[0x277CBEAD8] raise:@"PHASE system initialization failure." format:@"SpatializerManager is unavailable"];
    goto LABEL_12;
  }

  if (Phase::Controller::SpatializerManager::SetHeadphoneHRIR(v19, v6) != 2)
  {
    v17 = 1;
    goto LABEL_13;
  }

  v20 = *MEMORY[0x277CCA450];
  v27 = *MEMORY[0x277CCA450];
  v21 = MEMORY[0x277CCACA8];
  v22 = v6;
  v23 = [v21 stringWithFormat:@"Invalid headphone HRIR file %s", -[NSURL fileSystemRepresentation](v6, "fileSystemRepresentation")];
  v28 = v23;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

  v25 = **(Phase::Logger::GetInstance(v24) + 448);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = [v12 objectForKeyedSubscript:v20];
    *buf = 136315650;
    v32 = "PHASEEngine.mm";
    v33 = 1024;
    v34 = 1025;
    v35 = 2112;
    v36 = v26;
    _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (a4)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v12];
LABEL_10:
    *a4 = v16;
  }

LABEL_11:

LABEL_12:
  v17 = 0;
LABEL_13:
  objc_sync_exit(v7);

  return v17;
}

- (void)setRoomAcousticTrackingMode:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v6 = "Invalid";
    }

    else
    {
      v6 = off_278B4F6C8[a3];
    }

    v7 = 136315906;
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 1048;
    v11 = 2048;
    v12 = self;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Setting roomAcousticTrackingMode to %s", &v7, 0x26u);
  }

  (*(**(self->_impl.__ptr_ + 46) + 176))(*(self->_impl.__ptr_ + 46), a3);
  self->_roomAcousticTrackingMode = a3;
}

- (void)setRoomAcousticTarget:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  v3 = **(Phase::Logger::GetInstance(v27) + 448);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v48 = "PHASEEngine.mm";
    v49 = 1024;
    v50 = 1058;
    v51 = 2048;
    v52 = self;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setRoomAcousticTarget:", buf, 0x1Cu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(Phase::Logger *)v27 subbandParameters];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v62 count:16];
  if (v5)
  {
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v9 = MEMORY[0x277CCAB68];
        [v8 frequency];
        v11 = v10;
        [v8 rt60];
        v13 = v12;
        [v8 confidence];
        v15 = v14;
        [v8 earlyRoomEqDb];
        v17 = v16;
        [v8 lateRoomEqDb];
        v19 = [v9 stringWithFormat:@"centerFrequency %g RT60 %g confidence %g earlyRoomEQdB %g lateRoomEQdB %g", v11, v13, v15, v17, v18];
        v20 = **(Phase::Logger::GetInstance(v19) + 448);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v48 = "PHASEEngine.mm";
          v49 = 1024;
          v50 = 1066;
          v51 = 2112;
          v52 = v19;
          _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %@", buf, 0x1Cu);
        }

        [v8 frequency];
        *&v21 = v21;
        *buf = LODWORD(v21);
        std::vector<float>::push_back[abi:ne200100](&v44, buf);
        [v8 rt60];
        *&v22 = v22;
        *buf = LODWORD(v22);
        std::vector<float>::push_back[abi:ne200100](&v41, buf);
        [v8 earlyRoomEqDb];
        *&v23 = v23;
        *buf = LODWORD(v23);
        std::vector<float>::push_back[abi:ne200100](&v38, buf);
        [v8 lateRoomEqDb];
        *&v24 = v24;
        *buf = LODWORD(v24);
        std::vector<float>::push_back[abi:ne200100](&v35, buf);
        [v8 confidence];
        *&v25 = v25;
        *buf = LODWORD(v25);
        std::vector<float>::push_back[abi:ne200100](&__p, buf);
      }

      v5 = [v4 countByEnumeratingWithState:&v28 objects:v62 count:16];
    }

    while (v5);
  }

  bzero(buf, 0x2C0uLL);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(v44, v45, v41, Phase::sThreeBandFrequencies, Phase::sOctaveBandFrequencies, buf);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(v44, v45, v38, Phase::sThreeBandFrequencies, Phase::sOctaveBandFrequencies, &v49);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(v44, v45, v35, Phase::sThreeBandFrequencies, Phase::sOctaveBandFrequencies, &v52 + 4);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(v44, v45, __p, Phase::sThreeBandFrequencies, Phase::sOctaveBandFrequencies, &v53);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(v44, v45, v41, Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, &v54);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(v44, v45, v38, Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, &v55);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(v44, v45, v35, Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, &v56);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(v44, v45, __p, Phase::sOctaveBandFrequencies, Phase::sThirdOctaveBandFrequencies, &v57);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(v44, v45, v41, Phase::sThirdOctaveBandFrequencies, &Phase::sThirdOctaveBandFrequencies[31], &v58);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(v44, v45, v38, Phase::sThirdOctaveBandFrequencies, &Phase::sThirdOctaveBandFrequencies[31], &v59);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(v44, v45, v35, Phase::sThirdOctaveBandFrequencies, &Phase::sThirdOctaveBandFrequencies[31], &v60);
  Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(v44, v45, __p, Phase::sThirdOctaveBandFrequencies, &Phase::sThirdOctaveBandFrequencies[31], &v61);
  (*(**(self->_impl.__ptr_ + 46) + 184))(*(self->_impl.__ptr_ + 46), buf);
  self->_roomAcousticTarget = v27;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

- (void)setRoomAcousticMaximumReverbTime:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 1158;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Setting roomAcousticMaximumReverbTime to %f", &v7, 0x26u);
  }

  v6 = a3;
  (*(**(self->_impl.__ptr_ + 46) + 192))(*(self->_impl.__ptr_ + 46), v6);
  self->_roomAcousticMaximumReverbTime = a3;
}

- (void)setRoomAcousticSoftLimiting:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 1166;
    v7 = 136315906;
    if (v3)
    {
      v6 = "YES";
    }

    v11 = 2048;
    v12 = self;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Setting roomAcousticSoftLimiting to %s", &v7, 0x26u);
  }

  (*(**(self->_impl.__ptr_ + 46) + 200))(*(self->_impl.__ptr_ + 46), v3);
  self->_roomAcousticSoftLimiting = v3;
}

- (void)setRoomAcousticSmoothing:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 1174;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Setting roomAcousticSmoothing to %f", &v7, 0x26u);
  }

  v6 = a3;
  (*(**(self->_impl.__ptr_ + 46) + 208))(*(self->_impl.__ptr_ + 46), v6);
  self->_roomAcousticSmoothing = a3;
}

- (void)setDefaultPrivateReverbPreset:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "PHASEEngine.mm";
    v16 = 1024;
    v17 = 1183;
    v18 = 2048;
    v19 = self;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setDefaultPrivateReverbPreset", &v14, 0x1Cu);
  }

  if (self->_defaultPrivateReverbPreset != a3)
  {
    v6 = GetReverbPresetName(a3);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = [v7 UTF8String];
      if (v9 && (v10 = *v9, *v9))
      {
        v11 = v9 + 1;
        v12 = 0xCBF29CE484222325;
        do
        {
          v12 = 0x100000001B3 * (v12 ^ v10);
          v13 = *v11++;
          v10 = v13;
        }

        while (v13);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      a3 = 1917742958;
    }

    self->_defaultPrivateReverbPreset = a3;
    (*(**(self->_impl.__ptr_ + 46) + 248))(*(self->_impl.__ptr_ + 46), v12);
  }
}

- (void)setSpaceBlendTargetPreset:(int64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v17 = 136315906;
    v18 = "PHASEEngine.mm";
    v19 = 1024;
    v20 = 1197;
    v21 = 2048;
    v22 = self;
    v23 = 2048;
    v24 = a3;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Trying to set spaceBlendTargetPreset to: %ld", &v17, 0x26u);
  }

  if (self->_spaceBlendTargetPreset != a3)
  {
    v7 = **(Phase::Logger::GetInstance(v6) + 448);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      spaceBlendTargetPreset = self->_spaceBlendTargetPreset;
      v17 = 136315906;
      v18 = "PHASEEngine.mm";
      v19 = 1024;
      v20 = 1202;
      v21 = 2048;
      v22 = spaceBlendTargetPreset;
      v23 = 2048;
      v24 = a3;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Changing spaceBlendTargetPreset from %ld to %ld.", &v17, 0x26u);
    }

    v9 = GetReverbPresetName(a3);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = [v10 UTF8String];
      if (v12 && (v13 = *v12, *v12))
      {
        v14 = v12 + 1;
        v15 = 0xCBF29CE484222325;
        do
        {
          v15 = 0x100000001B3 * (v15 ^ v13);
          v16 = *v14++;
          v13 = v16;
        }

        while (v16);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      a3 = 1917742958;
    }

    self->_spaceBlendTargetPreset = a3;
    (*(**(self->_impl.__ptr_ + 46) + 216))(*(self->_impl.__ptr_ + 46), v15);
  }
}

- (uint64_t)setSpaceBlendTargetPresetOrientation:(__n128 *)a1
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2.n128_f32[2];
  v4 = a2.n128_f32[3];
  v5 = **(Phase::Logger::GetInstance(a1) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    *&buf[4] = "PHASEEngine.mm";
    *v10 = 1024;
    *&v10[2] = 1219;
    v11 = 2048;
    v12 = a1;
    v13 = 2048;
    v14 = a2.n128_f32[0];
    v15 = 2048;
    v16 = a2.n128_f32[1];
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Setting spaceBlendTargetPresetOrientation to :%f %f %f %f", buf, 0x44u);
  }

  a1[14] = a2;
  v6 = *(a1->n128_u64[1] + 368);
  *buf = a2.n128_u64[0];
  *&buf[8] = v3;
  *v10 = v4;
  return (*(*v6 + 224))(v6, buf);
}

- (void)setSpaceBlendLevel:(double)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "PHASEEngine.mm";
    v14 = 1024;
    v15 = 1227;
    v16 = 2048;
    v17 = self;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: Setting spaceBlendLevel to: %.2f", &v12, 0x26u);
  }

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = NSStringFromSelector(a2);
  v10 = PHASEGetPropertyBounded<double>(v8, v9, a3, 0.0, 1.0);

  v11 = v10;
  (*(**(self->_impl.__ptr_ + 46) + 232))(*(self->_impl.__ptr_ + 46), v11);
  self->_spaceBlendLevel = v10;
}

- (void)setSceneClassification:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "PHASEEngine.mm";
    v8 = 1024;
    v9 = 1239;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setSceneClassification", &v6, 0x1Cu);
  }

  (*(**(self->_impl.__ptr_ + 46) + 240))(*(self->_impl.__ptr_ + 46), a3);
  self->_sceneClassification = a3;
}

- (void)setSceneRoomUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = **(Phase::Logger::GetInstance(v4) + 448);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 1247;
    v11 = 2048;
    v12 = self;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setSceneRoomUUID", &v7, 0x1Cu);
  }

  sceneRoomUUID = self->_sceneRoomUUID;
  self->_sceneRoomUUID = v4;
}

- (void)setUnitsPerSecond:(double)unitsPerSecond
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = self;
  v6 = objc_sync_enter(v5);
  v7 = **(Phase::Logger::GetInstance(v6) + 448);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "PHASEEngine.mm";
    v23 = 1024;
    v24 = 1267;
    v25 = 2048;
    v26 = v5;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setUnitsPerSecond", buf, 0x1Cu);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = PHASEGetPropertyBounded<double>(v9, v10, unitsPerSecond, 2.22507386e-308, 1.79769313e308);

  v12 = Phase::Controller::TaskManager::GetService<Phase::Controller::GroupManager>((v5->_impl.__ptr_ + 48), 10);
  v13 = **(v12 + 8);
  v20 = 0;
  v19 = 1;
  v14 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v13, 24, &v20, &v19);
  if (!v14)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v13 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "CommandQueue.hpp";
      v23 = 1024;
      v24 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v19)
  {
    v15 = **(v13 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v22 = "CommandQueue.hpp";
      v23 = 1024;
      v24 = 89;
      v25 = 2048;
      v26 = v20;
      v27 = 2048;
      v28 = 24;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v14 = &unk_284D35D88;
  *(v14 + 1) = v12;
  v14[2] = v11;
  Phase::LockFreeQueueSPSC::CommitBytes(v13, 24);
  atomic_store(0, (v13 + 40));
  v5->_unitsPerSecond = v11;
  objc_sync_exit(v5);
}

- (void)setUnitsPerMeter:(double)unitsPerMeter
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = self;
  v6 = objc_sync_enter(v5);
  v7 = **(Phase::Logger::GetInstance(v6) + 448);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "PHASEEngine.mm";
    v14 = 1024;
    v15 = 1293;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d engine@%p: setUnitsPerMeter", &v12, 0x1Cu);
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = NSStringFromSelector(a2);
  v11 = PHASEGetPropertyBounded<double>(v9, v10, unitsPerMeter, 2.22507386e-308, 1.79769313e308);

  if (v11 != v5->_unitsPerMeter)
  {
    (*(**(v5->_impl.__ptr_ + 51) + 48))(*(v5->_impl.__ptr_ + 51), v11);
    v5->_unitsPerMeter = v11;
  }

  objc_sync_exit(v5);
}

- (void)addSoundEvent:(id)a3
{
  obj = self->_internalSoundEvents;
  v5 = a3;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_internalSoundEvents addObject:v5];

  objc_sync_exit(obj);
}

- (void)removeSoundEvent:(id)a3
{
  obj = self->_internalSoundEvents;
  v5 = a3;
  objc_sync_enter(obj);
  [(NSMutableArray *)self->_internalSoundEvents removeObject:v5];

  objc_sync_exit(obj);
}

- (NSArray)soundEvents
{
  v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_internalSoundEvents];

  return v2;
}

- (void)update
{
  obj = self;
  objc_sync_enter(obj);
  if (*(obj->_impl.__ptr_ + 64) == 1)
  {
    v2 = (std::chrono::steady_clock::now().__d_.__rep_ - obj->_stopWatch.mStart.__d_.__rep_) / 1000000000.0;
    obj->_stopWatch.mStart.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    PHASEEngineImpl::UpdateFrame(obj->_impl.__ptr_, v2);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot call update while in automatic mode"];
  }

  objc_sync_exit(obj);
}

- (void)addGroup:(id)a3
{
  v4 = a3;
  groups = self->_groups;
  v7 = v4;
  v6 = [v4 identifier];
  [(NSMutableDictionary *)groups setObject:v7 forKey:v6];
}

- (void)removeGroup:(id)a3
{
  groups = self->_groups;
  v4 = [a3 identifier];
  [(NSMutableDictionary *)groups removeObjectForKey:?];
}

- (void)addDucker:(id)a3
{
  v4 = a3;
  duckers = self->_duckers;
  v7 = v4;
  v6 = [v4 identifier];
  [(NSMutableDictionary *)duckers setObject:v7 forKey:v6];
}

- (void)removeDucker:(id)a3
{
  duckers = self->_duckers;
  v4 = [a3 identifier];
  [(NSMutableDictionary *)duckers removeObjectForKey:?];
}

- (void)setSpatialCategoryUpdateRate:(float)a3 withName:(id)a4
{
  v9 = a4;
  v6 = self;
  objc_sync_enter(v6);
  if ([v9 isEqualToString:@"direct_path_transmission"])
  {
    v7 = 1;
  }

  else if ([v9 isEqualToString:@"early_reflections"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([v9 isEqualToString:@"late_reverb"])
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  (*(**(v6->_impl.__ptr_ + 51) + 24))(*(v6->_impl.__ptr_ + 51), v8, a3);
  objc_sync_exit(v6);
}

- (void)setSpatialCategoryBandCount:(unint64_t)a3 withName:(id)a4
{
  v9 = a4;
  v6 = self;
  objc_sync_enter(v6);
  if ([v9 isEqualToString:@"direct_path_transmission"])
  {
    v7 = 1;
  }

  else if ([v9 isEqualToString:@"early_reflections"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([v9 isEqualToString:@"late_reverb"])
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  (*(**(v6->_impl.__ptr_ + 51) + 32))(*(v6->_impl.__ptr_ + 51), v8, a3);
  objc_sync_exit(v6);
}

- (void)setSpatialCategoryMaxClusterCount:(unint64_t)a3 withName:(id)a4
{
  v9 = a4;
  v6 = self;
  objc_sync_enter(v6);
  if ([v9 isEqualToString:@"direct_path_transmission"])
  {
    v7 = 1;
  }

  else if ([v9 isEqualToString:@"early_reflections"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([v9 isEqualToString:@"late_reverb"])
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  (*(**(v6->_impl.__ptr_ + 51) + 40))(*(v6->_impl.__ptr_ + 51), v8, a3);
  objc_sync_exit(v6);
}

- (void)setProfileOverrideWithName:(id)a3 balance:(double)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = **(Phase::Logger::GetInstance(v7) + 448);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315906;
    v22 = "PHASEEngine.mm";
    v23 = 1024;
    v24 = 1476;
    v25 = 2080;
    v26 = [(Phase::Logger *)v7 UTF8String];
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d received message setProfileOverrideWithName:%s balance:%f", &v21, 0x26u);
  }

  IsInternalBuild = Phase::Controller::DeviceInfo::IsInternalBuild(v9);
  if ((IsInternalBuild & 0x100) != 0 && IsInternalBuild)
  {
    if (a4 >= 0.0)
    {
      if (a4 <= 1.0)
      {
        goto LABEL_14;
      }

      v11 = **(Phase::Logger::GetInstance(IsInternalBuild) + 448);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v21 = 136315906;
      v22 = "PHASEEngine.mm";
      v23 = 1024;
      v24 = 1496;
      v25 = 2048;
      v26 = 0x3FF0000000000000;
      v27 = 2048;
      v28 = 1.0;
      v12 = "%25s:%-5d setProfileOverrideWithName: Attempting to set balance to be greater than %f. Clamping to %f";
    }

    else
    {
      v11 = **(Phase::Logger::GetInstance(IsInternalBuild) + 448);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v17 = PHASEGetPropertyBounded<double>(v15, v16, a4, 0.0, 1.0);

        v18 = *(self->_impl.__ptr_ + 51);
        StringHashId = Phase::GetStringHashId(v7, v19);
        (*(*v18 + 56))(v18, StringHashId, v17);
        goto LABEL_15;
      }

      v21 = 136315906;
      v22 = "PHASEEngine.mm";
      v23 = 1024;
      v24 = 1490;
      v25 = 2048;
      v26 = 0;
      v27 = 2048;
      v28 = 0.0;
      v12 = "%25s:%-5d setProfileOverrideWithName: Attempting to set balance to be less than %f. Clamping to %f";
    }

    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, v12, &v21, 0x26u);
    goto LABEL_14;
  }

  v13 = **(Phase::Logger::GetInstance(IsInternalBuild) + 448);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315394;
    v22 = "PHASEEngine.mm";
    v23 = 1024;
    v24 = 1482;
    _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d setProfileOverrideWithName: This is not an internal build. Ignoring request.", &v21, 0x12u);
  }

LABEL_15:
}

- (void)clearProfileOverride
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = **(Phase::Logger::GetInstance(self) + 448);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v7 = 136315394;
    v8 = "PHASEEngine.mm";
    v9 = 1024;
    v10 = 1509;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d received message clearProfileOverride", &v7, 0x12u);
  }

  IsInternalBuild = Phase::Controller::DeviceInfo::IsInternalBuild(v4);
  if ((IsInternalBuild & 0x100) != 0 && IsInternalBuild)
  {
    (*(**(self->_impl.__ptr_ + 51) + 64))(*(self->_impl.__ptr_ + 51));
  }

  else
  {
    v6 = **(Phase::Logger::GetInstance(IsInternalBuild) + 448);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASEEngine.mm";
      v9 = 1024;
      v10 = 1515;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d setProfileOverrideWithName: This is not an internal build. Ignoring request.", &v7, 0x12u);
    }
  }
}

- (void)gatherExternalStreamDebugInformation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(self->_impl.__ptr_ + 52);
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__PHASEEngine_gatherExternalStreamDebugInformation___block_invoke;
    v8[3] = &unk_278B4F6F0;
    v9 = v4;
    (*(*v6 + 88))(v6, v8);
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(v4) + 448);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "PHASEEngine.mm";
      v12 = 1024;
      v13 = 1529;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine does not have external stream dispatcher", buf, 0x12u);
    }
  }
}

- (AVAudioTime)lastRenderTime
{
  v2 = atomic_load(self->_impl.__ptr_ + 3);
  if (v2 == 1 && (v3 = **(self->_impl.__ptr_ + 63)) != 0)
  {
    v4 = atomic_load((v3 + 128));
    v5 = [objc_alloc(MEMORY[0x277CB8428]) initWithAudioTimeStamp:v3 + ((v4 == 1) << 6) sampleRate:self->_sampleRate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id).cxx_construct
{
  self->_impl.__ptr_ = 0;
  self->_stopWatch.mStart.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  return self;
}

@end