@interface ExternalStreamManager
- (BOOL)_setPauseExternalInputStreamGroupID:(id)a3 streamID:(id)a4 isPaused:(BOOL)a5 fromPlatformCallback:(BOOL)a6 error:(id *)a7;
- (BOOL)_setPauseExternalInputStreamWithoutNotifyingClient:(id)a3 isPaused:(BOOL)a4 fromPlatformCallback:(BOOL)a5 error:(id *)a6;
- (BOOL)addExternalInputStreamGroupID:(id)a3 streamID:(id)a4 attributedTo:(id)a5 definition:(id)a6 isPaused:(BOOL)a7 canRecord:(BOOL)a8 fader:(shared_ptr<caulk:(id)a10 :(id *)a11 synchronized<Phase::Controller::ExternalStreamFader>>)a9 pauseStateDidUpdateCallback:error:;
- (BOOL)setPauseExternalOutputStreamGroupID:(id)a3 streamID:(id)a4 isPaused:(BOOL)a5 error:(id *)a6;
- (BOOL)streamIsPaused:(id)a3 error:(id *)a4;
- (ExternalStreamManager)initWithTaskManager:(void *)a3 engineMode:(int64_t)a4 engineFormat:(id)a5 maximumFramesToRender:(unsigned int)a6 enableAudioIssueDetector:(BOOL)a7;
- (id).cxx_construct;
- (id)formatForStream:(id)a3 error:(id *)a4;
- (int64_t)typeForStream:(id)a3 error:(id *)a4;
- (shared_ptr<Phase::Controller::StreamRenderer>)createRendererForStream:(id)a3 outputChannelLayout:(unsigned int)a4 normalize:(BOOL)a5 targetLKFS:(double)a6 error:(id *)a7;
- (unint64_t)_fadeInputStreamsInSessionToken:(unsigned int)a3 isMuted:(BOOL)a4 fadeTimeInSeconds:(float)a5 synchronous:(BOOL)a6;
- (unint64_t)addControllerPauseStateDidUpdateCallback:(id)a3;
- (unint64_t)setExternalInputStreamSessionMute:(unsigned int)a3 isMuted:(BOOL)a4 fadeTimeInSeconds:(float)a5;
- (unsigned)sessionIdForStream:(id)a3 error:(id *)a4;
- (void)_setSessionInputStreamState:(id)a3 muted:(BOOL)a4 fromPlatformCallback:(BOOL)a5;
- (void)_updateRecordingAbility:(id)a3 streamID:(id)a4 canRecord:(BOOL)a5;
- (void)abandonControlOfExternalStreamGroupID:(id)a3 withCallback:(id)a4;
- (void)addExternalOutputStreamGroupID:(id)a3 streamID:(id)a4 attributedTo:(id)a5 definition:(id)a6 startsPaused:(BOOL)a7 renderBlock:(id)a8 withCallback:(id)a9;
- (void)claimControlOfExternalStreamGroupID:(id)a3 attributedTo:(id)a4 stateChangeBlock:(id)a5 withCallback:(id)a6;
- (void)gatherDebugInformation:(id)a3;
- (void)onRouteChanged:(RouteChangeInfo)a3;
- (void)onSessionVolume:;
- (void)onSessionVolume:(id)a3;
- (void)onSessionVolume:(uint64_t)a1;
- (void)onSessionVolume:(uint64_t)a1 volume:;
- (void)onSessionVolume:(unsigned int)a3 volume:(float)a4;
- (void)onSessionVolume:volume:;
- (void)removeAllResourcesAttributedToClientID:(id)a3;
- (void)removeControllerPauseStateDidUpdateCallback:(unint64_t)a3;
- (void)removeExternalInputStreamGroupID:(id)a3 streamID:(id)a4;
- (void)removeExternalOutputStreamGroupID:(id)a3 streamID:(id)a4 withCallback:(id)a5;
- (void)setExternalInputStreamSession:(unsigned int)a3 isActive:(BOOL)a4;
- (void)setExternalInputStreamSessionMute:(uint64_t)a1 isMuted:fadeTimeInSeconds:;
- (void)setExternalInputStreamSessionMute:isMuted:fadeTimeInSeconds:;
- (void)setMuteExternalInputStreamGroupID:(id)a3 streamID:(id)a4 isMuted:(BOOL)a5;
- (void)setVolumeEQPreset:(shared_ptr<Phase:(int64_t)a4 :Controller::StreamRenderer>)a3 bandwidthType:;
- (void)update;
- (void)updateController:(id)a3 pauseState:(BOOL)a4;
- (void)updateExternalInputStreamRecordingAbility:(id *)a1 streamID:canRecord:;
- (void)updateExternalInputStreamRecordingAbility:(id)a3 streamID:(id)a4 canRecord:(BOOL)a5;
- (void)updateExternalInputStreamRecordingAbility:streamID:canRecord:;
@end

@implementation ExternalStreamManager

- (ExternalStreamManager)initWithTaskManager:(void *)a3 engineMode:(int64_t)a4 engineFormat:(id)a5 maximumFramesToRender:(unsigned int)a6 enableAudioIssueDetector:(BOOL)a7
{
  v12 = a5;
  v21.receiver = self;
  v21.super_class = ExternalStreamManager;
  v13 = [(ExternalStreamManager *)&v21 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = *(v13 + 1);
    *(v13 + 1) = v14;

    *(v13 + 2) = Phase::Controller::TaskManager::GetService<Phase::Controller::VoiceManager>(a3, 8);
    *(v13 + 3) = Phase::Controller::TaskManager::GetService<Phase::Controller::SessionManager>(a3, 20);
    objc_storeStrong(v13 + 4, a5);
    *(v13 + 10) = a6;
    *(v13 + 44) = a7;
    v16 = [VolumeEQPresetManager alloc];
    v17 = Phase::GetPreferredTuningDirectory(v16);
    v18 = [(VolumeEQPresetManager *)v16 init:v17];
    v19 = *(v13 + 18);
    *(v13 + 18) = v18;
  }

  return v13;
}

- (void)removeAllResourcesAttributedToClientID:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v33 = self;
  v4 = [*(self + 1) copy];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = v4;
  obj = [v4 allKeys];
  v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v30)
  {
    v28 = *v45;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v44 + 1) + 8 * i);
        v32 = [v29 objectForKey:v5];
        v6 = [v32 controllingClientID];
        v7 = [v6 isEqual:v35];

        if (v7)
        {
          [(ExternalStreamManager *)v33 abandonControlOfExternalStreamGroupID:v5 withCallback:&__block_literal_global_1];
        }

        v8 = [v32 outputStreams];
        v34 = [v8 copy];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v9 = [v34 allKeys];
        v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v10)
        {
          v11 = *v41;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v41 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v40 + 1) + 8 * j);
              v14 = [v34 objectForKey:v13];
              v15 = [v14 attributedClientID];
              v16 = [v15 isEqual:v35];

              if (v16)
              {
                [(ExternalStreamManager *)v33 removeExternalOutputStreamGroupID:v5 streamID:v13 withCallback:&__block_literal_global_129];
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v10);
        }

        v17 = [v32 inputStreams];
        v18 = [v17 copy];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v19 = [v18 allKeys];
        v20 = [v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v20)
        {
          v21 = *v37;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v36 + 1) + 8 * k);
              v24 = [v18 objectForKey:v23];
              v25 = [v24 attributedClientID];
              v26 = [v25 isEqual:v35];

              if (v26)
              {
                [(ExternalStreamManager *)v33 removeExternalInputStreamGroupID:v5 streamID:v23];
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v20);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v30);
  }
}

- (void)addExternalOutputStreamGroupID:(id)a3 streamID:(id)a4 attributedTo:(id)a5 definition:(id)a6 startsPaused:(BOOL)a7 renderBlock:(id)a8 withCallback:(id)a9
{
  v10 = a7;
  v47[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v21 = [*(self + 1) objectForKey:v15];
  if (!v21)
  {
    v21 = objc_alloc_init(ManagedStreamGroup);
    [*(self + 1) setObject:v21 forKey:v15];
  }

  v22 = [(ManagedStreamGroup *)v21 outputStreams];
  v23 = [v22 objectForKey:v16];

  if (v23)
  {
    v24 = *MEMORY[0x277CCA450];
    v46 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group %@ already has output stream %@", v15, v16];
    v47[0] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];

    v28 = **(Phase::Logger::GetInstance(v27) + 448);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v26 objectForKeyedSubscript:v24];
      *buf = 136315650;
      v39 = "ExternalStreamManager.mm";
      v40 = 1024;
      v41 = 353;
      v42 = 2112;
      v43 = v29;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925413 userInfo:v26];
  }

  else
  {
    v31 = [(ManagedStreamGroup *)v21 outputStreams];
    v32 = [[ManagedOutputStream alloc] initWithPaused:v10 attributedTo:v17 definition:v18 renderBlock:v19];
    [v31 setObject:v32 forKey:v16];

    v34 = **(Phase::Logger::GetInstance(v33) + 928);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v39 = "ExternalStreamManager.mm";
      v40 = 1024;
      v41 = 364;
      v42 = 2112;
      v43 = v16;
      v44 = 2112;
      v45 = v15;
      _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added external output stream %@ to group %@", buf, 0x26u);
    }

    v30 = 0;
  }

  v20[2](v20, v30);
  if (!v30)
  {
    v35 = [(ManagedStreamGroup *)v21 stateChangeBlock];
    v36 = v35 == 0;

    if (!v36)
    {
      v37 = [(ManagedStreamGroup *)v21 stateChangeBlock];
      (v37)[2](v37, v15, v16, 0);
    }
  }
}

- (BOOL)addExternalInputStreamGroupID:(id)a3 streamID:(id)a4 attributedTo:(id)a5 definition:(id)a6 isPaused:(BOOL)a7 canRecord:(BOOL)a8 fader:(shared_ptr<caulk:(id)a10 :(id *)a11 synchronized<Phase::Controller::ExternalStreamFader>>)a9 pauseStateDidUpdateCallback:error:
{
  v11 = a8;
  v12 = a7;
  v57[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v39 = a5;
  v41 = a6;
  v40 = a9.__cntrl_;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v19 = [*(self + 1) objectForKey:v17];
  if (!v19)
  {
    v19 = objc_alloc_init(ManagedStreamGroup);
    [*(self + 1) setObject:? forKey:?];
  }

  v20 = [(ManagedStreamGroup *)v19 inputStreams];
  v21 = [v20 objectForKey:v18];
  v22 = v21 == 0;

  if (!v21)
  {
    v30 = [ManagedInputStream alloc];
    v31 = *(a9.__ptr_ + 1);
    v42 = *a9.__ptr_;
    v43 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = [(ManagedInputStream *)v30 initWithPaused:v12 attributedTo:v39 definition:v41 canRecord:v11 fader:&v42 pauseStateDidUpdateCallback:v40];
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    SessionInputMuteState = Phase::Controller::SessionManager::GetSessionInputMuteState(*(self + 3), [v41 audioSessionToken], 0);
    v33 = SessionInputMuteState;
    if ((SessionInputMuteState & 0x100) != 0)
    {
      [(ManagedInputStream *)v25 setIsMuted:SessionInputMuteState & 1];
    }

    v34 = [(ManagedStreamGroup *)v19 inputStreams];
    [v34 setObject:v25 forKey:v18];

    v35 = [(ExternalStreamManager *)self _setPauseExternalInputStreamWithoutNotifyingClient:v25 isPaused:v12 fromPlatformCallback:0 error:a10];
    if (v35)
    {
      v36 = **(Phase::Logger::GetInstance(v35) + 928);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = "UNMUTED";
        *buf = 136316418;
        v45 = "ExternalStreamManager.mm";
        v47 = 447;
        if (v33)
        {
          v37 = "MUTED";
        }

        v46 = 1024;
        v48 = 2112;
        v50 = 2112;
        v49 = v18;
        if ((v33 & 0x100) == 0)
        {
          v37 = "UNKNOWN";
        }

        v51 = v17;
        v52 = 1024;
        v53 = v12;
        v54 = 2080;
        v55 = v37;
        _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added external input stream %@ to group %@ with initial pause state %d initial input mute state %s", buf, 0x36u);
      }

      if (!a10)
      {
        v22 = 1;
        goto LABEL_28;
      }

      v29 = 0;
      goto LABEL_25;
    }

    [(ExternalStreamManager *)self removeExternalInputStreamGroupID:v17 streamID:v18];
LABEL_27:
    v22 = 0;
    goto LABEL_28;
  }

  v23 = *MEMORY[0x277CCA450];
  v56 = *MEMORY[0x277CCA450];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group %@ already has input stream %@", v17, v18];
  v57[0] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];

  v27 = **(Phase::Logger::GetInstance(v26) + 448);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = [(ManagedInputStream *)v25 objectForKeyedSubscript:v23];
    *buf = 136315650;
    v45 = "ExternalStreamManager.mm";
    v46 = 1024;
    v47 = 401;
    v48 = 2112;
    v49 = v28;
    _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (!a10)
  {
    goto LABEL_27;
  }

  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925413 userInfo:v25];
LABEL_25:
  *a10 = v29;
LABEL_28:

  return v22;
}

- (void)removeExternalInputStreamGroupID:(id)a3 streamID:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v8 = [*(self + 1) objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 inputStreams];
    v11 = [v10 objectForKey:v7];

    if (v11)
    {
      v13 = [v9 inputStreams];
      [v13 removeObjectForKey:v7];

      v15 = **(Phase::Logger::GetInstance(v14) + 928);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315906;
        v34 = "ExternalStreamManager.mm";
        v35 = 1024;
        v36 = 476;
        v37 = 2112;
        v38 = v7;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external input stream %@ from group %@.", &v33, 0x26u);
      }

      v16 = *(self + 3);
      v17 = [v11 definition];
      LOBYTE(v16) = Phase::Controller::SessionManager::SetSessionPlayState(v16, [v17 audioSessionToken], v11, 1u, 0, 0, 0);

      if ((v16 & 1) == 0)
      {
        v19 = **(Phase::Logger::GetInstance(v18) + 928);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v11 definition];
          v21 = [v20 audioSessionToken];
          v33 = 136315650;
          v34 = "ExternalStreamManager.mm";
          v35 = 1024;
          v36 = 487;
          v37 = 1024;
          LODWORD(v38) = v21;
          _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to stop audio session 0x%x while removing input stream (potentially invalid)", &v33, 0x18u);
        }
      }

      v22 = [v9 outputStreams];
      if ([v22 count])
      {

LABEL_23:
        goto LABEL_24;
      }

      v29 = [v9 inputStreams];
      if ([v29 count])
      {

        goto LABEL_23;
      }

      v30 = [v9 controllingClientID];
      v31 = v30 == 0;

      if (!v31)
      {
        goto LABEL_23;
      }

      v32 = **(Phase::Logger::GetInstance([*(self + 1) removeObjectForKey:v6]) + 928);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v33 = 136315650;
      v34 = "ExternalStreamManager.mm";
      v35 = 1024;
      v36 = 494;
      v37 = 2112;
      v38 = v6;
      v25 = "%25s:%-5d Removed external stream group %@";
      v26 = v32;
      v27 = OS_LOG_TYPE_DEFAULT;
      v28 = 28;
    }

    else
    {
      v24 = **(Phase::Logger::GetInstance(v12) + 928);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v33 = 136315906;
      v34 = "ExternalStreamManager.mm";
      v35 = 1024;
      v36 = 471;
      v37 = 2112;
      v38 = v7;
      v39 = 2112;
      v40 = v6;
      v25 = "%25s:%-5d Could not find stream %@ to remove in group %@.";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
      v28 = 38;
    }

    _os_log_impl(&dword_23A302000, v26, v27, v25, &v33, v28);
    goto LABEL_23;
  }

  v23 = **(Phase::Logger::GetInstance(0) + 928);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v33 = 136315650;
    v34 = "ExternalStreamManager.mm";
    v35 = 1024;
    v36 = 464;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream group %@ to remove.", &v33, 0x1Cu);
  }

LABEL_24:
}

- (void)setMuteExternalInputStreamGroupID:(id)a3 streamID:(id)a4 isMuted:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v10 = [*(self + 1) objectForKey:v8];
  v11 = v10;
  if (!v10)
  {
    v21 = **(Phase::Logger::GetInstance(0) + 928);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "ExternalStreamManager.mm";
      v25 = 1024;
      v26 = 517;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream group %@ to mute.", &v23, 0x1Cu);
    }

    goto LABEL_16;
  }

  v12 = [v10 inputStreams];
  v13 = [v12 objectForKey:v9];

  if (!v13)
  {
    v22 = **(Phase::Logger::GetInstance(v14) + 928);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      v24 = "ExternalStreamManager.mm";
      v25 = 1024;
      v26 = 524;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream %@ to mute.", &v23, 0x1Cu);
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v15 = **(Phase::Logger::GetInstance(v14) + 928);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v16 = "True";
    }

    else
    {
      v16 = "False";
    }

    v17 = [v13 definition];
    v23 = 136316162;
    v24 = "ExternalStreamManager.mm";
    v25 = 1024;
    v26 = 529;
    v27 = 2080;
    v28 = v16;
    v29 = 2112;
    v30 = v9;
    v31 = 1024;
    v32 = [v17 audioSessionToken];
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Mute %s state on external input stream %@ for session 0x%x", &v23, 0x2Cu);
  }

  v18 = [v13 definition];
  v19 = [v18 audioSessionToken];

  v20 = v13;
  [v20 setIsMuted:v5];

  Phase::Controller::SessionManager::SetSessionInputMuteState(*(self + 3), v19, v20, v5, 0);
LABEL_17:
}

- (void)_setSessionInputStreamState:(id)a3 muted:(BOOL)a4 fromPlatformCallback:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v13 = a3;
  if ([v13 isStreamPaused])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if ([v13 canRecord])
  {
    v9 = 1;
  }

  else
  {
    v9 = 9;
  }

  if (v6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(self + 3);
  v12 = [v13 definition];
  Phase::Controller::SessionManager::SetSessionPlayState(v11, [v12 audioSessionToken], v13, v9 | v10, v8, v5, 0);
}

- (unint64_t)_fadeInputStreamsInSessionToken:(unsigned int)a3 isMuted:(BOOL)a4 fadeTimeInSeconds:(float)a5 synchronous:(BOOL)a6
{
  v37 = a6;
  v7 = a4;
  v63[4] = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [*(self + 1) allKeys];
  v9 = [obj countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v9)
  {
    v39 = 0;
    v32 = *v45;
    v10 = "Unmuting";
    if (v7)
    {
      v10 = "Muting";
    }

    v35 = v10;
    v11 = a5;
    if (v7)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    if (a5 < 0.0)
    {
      a5 = 0.0;
    }

    do
    {
      v33 = v9;
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(self + 1) objectForKey:*(*(&v44 + 1) + 8 * i)];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v14 = [v13 inputStreams];
        v38 = [v14 allKeys];

        v15 = [v38 countByEnumeratingWithState:&v40 objects:v61 count:16];
        if (v15)
        {
          v16 = *v41;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(v38);
              }

              v18 = *(*(&v40 + 1) + 8 * j);
              v19 = [v13 inputStreams];
              v20 = [v19 objectForKey:v18];

              if (v20)
              {
                v21 = [v20 definition];
                v22 = [v21 audioSessionToken] == a3;

                if (v22)
                {
                  v23 = [v20 isMuted];
                  [v20 fader];
                  v24 = *lock;
                  os_unfair_lock_lock(*lock);
                  v25 = *&lock[8];
                  if (*&lock[8])
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*&lock[8]);
                  }

                  v26 = **(Phase::Logger::GetInstance(v25) + 928);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *lock = 136316418;
                    *&lock[4] = "ExternalStreamManager.mm";
                    *&lock[12] = 1024;
                    *&lock[14] = 589;
                    v53 = 2080;
                    v54 = v35;
                    v55 = 2112;
                    v56 = v18;
                    v57 = 1024;
                    v58 = a3;
                    v59 = 2048;
                    v60 = v11;
                    _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s input %@ for session 0x%x over %f seconds.", lock, 0x36u);
                  }

                  *(v24 + 52) = v12;
                  v63[0] = &unk_284D31660;
                  v63[1] = Phase::CurveFunction::Linear<float>;
                  v63[3] = v63;
                  if (a5 == 0.0)
                  {
                    *(v24 + 40) = v12;
                    v27 = v12;
                  }

                  else
                  {
                    v27 = *(v24 + 40);
                  }

                  v48[0] = 0.0;
                  v48[1] = v27;
                  *lock = a5;
                  *&lock[4] = v12;
                  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](&lock[8], v63);
                  Phase::Envelope<float>::Envelope(&v49, v48, lock);
                  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__vdeallocate((v24 + 8));
                  *(v24 + 8) = v49;
                  *(v24 + 24) = v50;
                  v49 = 0uLL;
                  v50 = 0;
                  v51 = &v49;
                  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v51);
                  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&lock[8]);
                  *(v24 + 32) = 0;
                  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v63);
                  [v20 setIsFading:1];
                  v28 = *(v24 + 52);
                  os_unfair_lock_unlock(v24);
                  if (v37)
                  {
                    if (v28 == 0.0)
                    {
                      v29 = 1;
                    }

                    else
                    {
                      v29 = v23;
                    }

                    [(ExternalStreamManager *)self _setSessionInputStreamState:v20 muted:v29 fromPlatformCallback:1];
                  }

                  ++v39;
                }
              }
            }

            v15 = [v38 countByEnumeratingWithState:&v40 objects:v61 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v9);
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (unint64_t)setExternalInputStreamSessionMute:(unsigned int)a3 isMuted:(BOOL)a4 fadeTimeInSeconds:(float)a5
{
  v28 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v9 = objc_initWeak(&location, self);
  v10 = **(self + 7);
  v19 = 0;
  v18 = 1;
  v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 32, &v19, &v18);
  if (!v11)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v15 = **(v10 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 100;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v18)
  {
    v12 = **(v10 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = "CommandQueue.hpp";
      v22 = 1024;
      v23 = 89;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = 32;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v11 = &unk_284D33BF0;
  *(v11 + 8) = self;
  *(v11 + 16) = a3;
  *(v11 + 20) = a4;
  *(v11 + 24) = a5;
  Phase::LockFreeQueueSPSC::CommitBytes(v10, 32);
  atomic_store(0, (v10 + 40));

  objc_destroyWeak(&location);
  return 0;
}

- (void)setExternalInputStreamSession:(unsigned int)a3 isActive:(BOOL)a4
{
  v32 = a4;
  v54 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(self + 1) allKeys];
  v5 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v5)
  {
    v27 = *v41;
    do
    {
      v6 = 0;
      v28 = v5;
      do
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v40 + 1) + 8 * v6);
        v7 = [*(self + 1) objectForKey:?];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v8 = [v7 inputStreams];
        v29 = v6;
        v33 = [v8 allKeys];

        v9 = [v33 countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v9)
        {
          v10 = *v37;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(v33);
              }

              v12 = *(*(&v36 + 1) + 8 * i);
              v13 = [v7 inputStreams];
              v14 = [v13 objectForKey:v12];

              if (v14)
              {
                v15 = [v14 definition];
                v16 = [v15 audioSessionToken] == a3;

                if (v16)
                {
                  if (v32)
                  {
                    if (([v14 shouldResumeWithSession] & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v35 = 0;
                    v17 = [(ExternalStreamManager *)self _setPauseExternalInputStreamGroupID:v30 streamID:v12 isPaused:0 fromPlatformCallback:1 error:&v35];
                    v18 = v35;
                    v19 = v18;
                    if (!v17)
                    {
                      v20 = **(Phase::Logger::GetInstance(v18) + 928);
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        v45 = "ExternalStreamManager.mm";
                        v46 = 1024;
                        v47 = 674;
                        v48 = 2112;
                        v49 = v12;
                        v50 = 2112;
                        v51 = v19;
                        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to resume input stream %@ after session interruption: %@", buf, 0x26u);
                      }
                    }

                    [v14 setShouldResumeWithSession:0];
                  }

                  else
                  {
                    v21 = [v14 isStreamPaused];
                    v34 = 0;
                    v22 = [(ExternalStreamManager *)self _setPauseExternalInputStreamGroupID:v30 streamID:v12 isPaused:1 fromPlatformCallback:1 error:&v34];
                    v23 = v34;
                    v19 = v23;
                    if (v22)
                    {
                      v24 = v21 ^ 1u;
                    }

                    else
                    {
                      v25 = **(Phase::Logger::GetInstance(v23) + 928);
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        v45 = "ExternalStreamManager.mm";
                        v46 = 1024;
                        v47 = 695;
                        v48 = 2112;
                        v49 = v12;
                        v50 = 2112;
                        v51 = v19;
                        _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to pause input stream %@ for session interruption: %@", buf, 0x26u);
                      }

                      v24 = 0;
                    }

                    [v14 setShouldResumeWithSession:v24];
                  }
                }
              }

LABEL_28:
            }

            v9 = [v33 countByEnumeratingWithState:&v36 objects:v52 count:16];
          }

          while (v9);
        }

        v6 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v5 = [obj countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v5);
  }
}

- (void)_updateRecordingAbility:(id)a3 streamID:(id)a4 canRecord:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [*(self + 1) objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 inputStreams];
    v13 = [v12 objectForKey:v9];

    if (v13)
    {
      v15 = **(Phase::Logger::GetInstance(v14) + 928);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "Cannot Record";
        v25 = "ExternalStreamManager.mm";
        v26 = 1024;
        v27 = 725;
        *buf = 136315906;
        if (v5)
        {
          v16 = "Can Record";
        }

        v28 = 2080;
        v29 = v16;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting %s state on external input stream %@", buf, 0x26u);
      }

      [v13 setCanRecord:v5];
      v23 = 0;
      v17 = -[ExternalStreamManager _setPauseExternalInputStreamWithoutNotifyingClient:isPaused:fromPlatformCallback:error:](self, "_setPauseExternalInputStreamWithoutNotifyingClient:isPaused:fromPlatformCallback:error:", v13, [v13 isStreamPaused], 0, &v23);
      v18 = v23;
      v19 = v18;
      if (!v17)
      {
        v20 = **(Phase::Logger::GetInstance(v18) + 928);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v25 = "ExternalStreamManager.mm";
          v26 = 1024;
          v27 = 748;
          v28 = 2112;
          v29 = v9;
          v30 = 2112;
          v31 = v19;
          _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update record state on input stream %@: %@", buf, 0x26u);
        }
      }
    }

    else
    {
      v22 = **(Phase::Logger::GetInstance(v14) + 928);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v25 = "ExternalStreamManager.mm";
        v26 = 1024;
        v27 = 720;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream %@ to pause.", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v21 = **(Phase::Logger::GetInstance(0) + 928);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "ExternalStreamManager.mm";
      v26 = 1024;
      v27 = 713;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream group %@ to pause.", buf, 0x1Cu);
    }
  }
}

- (void)updateExternalInputStreamRecordingAbility:(id)a3 streamID:(id)a4 canRecord:(BOOL)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v10 = objc_initWeak(&location, self);
  v11 = v8;
  v12 = v9;
  v13 = **(self + 7);
  v21 = 0;
  v20 = 1;
  v14 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v13, 40, &v21, &v20);
  if (!v14)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v17 = **(v13 + 48);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "CommandQueue.hpp";
      v24 = 1024;
      v25 = 100;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v20)
  {
    v15 = **(v13 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v23 = "CommandQueue.hpp";
      v24 = 1024;
      v25 = 89;
      v26 = 2048;
      v27 = v21;
      v28 = 2048;
      v29 = 40;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v14 = &unk_284D33C18;
  *(v14 + 8) = self;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = a5;
  Phase::LockFreeQueueSPSC::CommitBytes(v13, 40);
  atomic_store(0, (v13 + 40));

  objc_destroyWeak(&location);
}

- (void)update
{
  v31 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [*(self + 1) allKeys];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v16 = *v26;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * i)];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v4 = [v3 inputStreams];
        v5 = [v4 allKeys];

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v6)
        {
          v7 = *v22;
          do
          {
            v8 = 0;
            do
            {
              if (*v22 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v21 + 1) + 8 * v8);
              v10 = [v3 inputStreams];
              v11 = [v10 objectForKey:v9];

              if (v11 && [v11 isFading])
              {
                LODWORD(v12) = [v11 isMuted];
                [v11 fader];
                os_unfair_lock_lock(lock);
                if (v20)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                }

                os_unfair_lock_opaque_low = LOBYTE(lock[14]._os_unfair_lock_opaque);
                if (*&lock[13]._os_unfair_lock_opaque == 0.0)
                {
                  v12 = 1;
                }

                else
                {
                  v12 = v12;
                }

                os_unfair_lock_unlock(lock);
                if (os_unfair_lock_opaque_low == 1)
                {
                  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
                  {
                    _os_feature_enabled_impl();
                    __cxa_guard_release(&_MergedGlobals_14);
                  }

                  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
                  {
                    _os_feature_enabled_impl();
                    __cxa_guard_release(&qword_27DF97AF8);
                  }

                  [(ExternalStreamManager *)self _setSessionInputStreamState:v11 muted:v12 fromPlatformCallback:0];
                  [v11 setIsFading:0];
                }
              }

              ++v8;
            }

            while (v6 != v8);
            v14 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
            v6 = v14;
          }

          while (v14);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v2);
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(self + 48);
}

- (BOOL)_setPauseExternalInputStreamWithoutNotifyingClient:(id)a3 isPaused:(BOOL)a4 fromPlatformCallback:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v36[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = v10;
  if (v8)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [v10 canRecord];
  v14 = [v11 isMuted];
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 9;
  }

  if (v14)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(self + 3);
  v18 = [v11 definition];
  v19 = Phase::Controller::SessionManager::SetSessionPlayState(v17, [v18 audioSessionToken], v11, v16 | v15, v12, v7, 0);

  if (v19)
  {
    if (a6)
    {
      *a6 = 0;
    }

    [v11 setStreamPaused:v8];
    [v11 setShouldResumeWithSession:0];
  }

  else
  {
    v20 = *MEMORY[0x277CCA450];
    v35 = *MEMORY[0x277CCA450];
    v21 = MEMORY[0x277CCACA8];
    v22 = [v11 definition];
    v23 = [v21 stringWithFormat:@"failed to set session 0x%x state", objc_msgSend(v22, "audioSessionToken")];
    v36[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];

    v26 = **(Phase::Logger::GetInstance(v25) + 928);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v24 objectForKeyedSubscript:v20];
      *buf = 136315650;
      v30 = "ExternalStreamManager.mm";
      v31 = 1024;
      v32 = 846;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v24];
    }

    [v11 setStreamPaused:1];
    [v11 setShouldResumeWithSession:0];
  }

  return v19;
}

- (BOOL)_setPauseExternalInputStreamGroupID:(id)a3 streamID:(id)a4 isPaused:(BOOL)a5 fromPlatformCallback:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v52[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v14 = [*(self + 1) objectForKey:v12];
  v15 = v14;
  if (!v14)
  {
    v24 = *MEMORY[0x277CCA450];
    v51 = *MEMORY[0x277CCA450];
    v25 = "resume";
    if (v9)
    {
      v25 = "pause";
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find stream group %@ to %s", v12, v25];
    v52[0] = v26;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];

    v28 = **(Phase::Logger::GetInstance(v27) + 928);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v17 objectForKeyedSubscript:v24];
      *buf = 136315650;
      v40 = "ExternalStreamManager.mm";
      v41 = 1024;
      v42 = 898;
      v43 = 2112;
      v44 = v29;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a7)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v17];
      *a7 = v22 = 0;
      goto LABEL_25;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v16 = [v14 inputStreams];
  v17 = [v16 objectForKey:v13];

  if (!v17)
  {
    v30 = *MEMORY[0x277CCA450];
    v49 = *MEMORY[0x277CCA450];
    v31 = "resume";
    if (v9)
    {
      v31 = "pause";
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find stream %@ to %s", v13, v31];
    v50 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

    v35 = **(Phase::Logger::GetInstance(v34) + 928);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [v33 objectForKeyedSubscript:v30];
      *buf = 136315650;
      v40 = "ExternalStreamManager.mm";
      v41 = 1024;
      v42 = 913;
      v43 = 2112;
      v44 = v36;
      _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v33];
    }

    v17 = 0;
    goto LABEL_24;
  }

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v13;
    if (v9)
    {
      v20 = "Pausing";
    }

    else
    {
      v20 = "Resuming";
    }

    v21 = [v17 definition];
    *buf = 136316162;
    v40 = "ExternalStreamManager.mm";
    v41 = 1024;
    v42 = 922;
    v43 = 2080;
    v44 = v20;
    v45 = 2112;
    v13 = v38;
    v46 = v38;
    v47 = 1024;
    v48 = [v21 audioSessionToken];
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s external input stream %@ in session 0x%x", buf, 0x2Cu);
  }

  v22 = [(ExternalStreamManager *)self _setPauseExternalInputStreamWithoutNotifyingClient:v17 isPaused:v9 fromPlatformCallback:v8 error:a7];
  v23 = [v17 pauseStateDidUpdateCallback];
  v23[2](v23, [v17 isStreamPaused]);

LABEL_25:
  return v22;
}

- (void)claimControlOfExternalStreamGroupID:(id)a3 attributedTo:(id)a4 stateChangeBlock:(id)a5 withCallback:(id)a6
{
  v41[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v28 = a4;
  v11 = a5;
  v12 = a6;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v13 = [*(self + 1) objectForKey:v10];
  if (!v13)
  {
    v13 = objc_alloc_init(ManagedStreamGroup);
    [*(self + 1) setObject:? forKey:?];
  }

  v14 = [(ManagedStreamGroup *)v13 controllingClientID];

  if (v14)
  {
    v15 = *MEMORY[0x277CCA450];
    v40 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group %@ is already controlled", v10];
    v41[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

    v19 = **(Phase::Logger::GetInstance(v18) + 928);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 objectForKeyedSubscript:v15];
      *buf = 136315650;
      v35 = "ExternalStreamManager.mm";
      v36 = 1024;
      v37 = 954;
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346921331 userInfo:v17];
  }

  else
  {
    [(ManagedStreamGroup *)v13 setStateChangeBlock:v11];
    v22 = **(Phase::Logger::GetInstance([(ManagedStreamGroup *)v13 setControllingClientID:v28]) + 928);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v35 = "ExternalStreamManager.mm";
      v36 = 1024;
      v37 = 961;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d claimed control of external stream group %@", buf, 0x1Cu);
    }

    v21 = 0;
  }

  v12[2](v12, v21);
  if (!v21)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v23 = [(ManagedStreamGroup *)v13 outputStreams];
    v24 = [v23 allKeys];

    v25 = [v24 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v25)
    {
      v26 = *v30;
      do
      {
        v27 = 0;
        do
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v24);
          }

          (*(v11 + 2))(v11, v10, *(*(&v29 + 1) + 8 * v27++), 0);
        }

        while (v25 != v27);
        v25 = [v24 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v25);
    }
  }
}

- (void)abandonControlOfExternalStreamGroupID:(id)a3 withCallback:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v8 = [*(self + 1) objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 controllingClientID];

    if (v10)
    {
      [v9 setControllingClientID:0];
      v11 = **(Phase::Logger::GetInstance([v9 setStateChangeBlock:0]) + 928);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = "ExternalStreamManager.mm";
        v33 = 1024;
        v34 = 1001;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Abandoned control of external stream group %@", buf, 0x1Cu);
      }

      v12 = [v9 outputStreams];
      if ([v12 count])
      {
      }

      else
      {
        v26 = [v9 inputStreams];
        v27 = [v26 count] == 0;

        if (v27)
        {
          v28 = **(Phase::Logger::GetInstance([*(self + 1) removeObjectForKey:v6]) + 928);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v32 = "ExternalStreamManager.mm";
            v33 = 1024;
            v34 = 1007;
            v35 = 2112;
            v36 = v6;
            _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external stream group %@", buf, 0x1Cu);
          }
        }
      }

      v19 = 0;
    }

    else
    {
      v20 = *MEMORY[0x277CCA450];
      v29 = *MEMORY[0x277CCA450];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream %@ is not currently under control", v6];
      v30 = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

      v24 = **(Phase::Logger::GetInstance(v23) + 928);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v22 objectForKeyedSubscript:v20];
        *buf = 136315650;
        v32 = "ExternalStreamManager.mm";
        v33 = 1024;
        v34 = 994;
        v35 = 2112;
        v36 = v25;
        _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925939 userInfo:v22];
    }
  }

  else
  {
    v13 = *MEMORY[0x277CCA450];
    v37 = *MEMORY[0x277CCA450];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group not found for UUID %@", v6];
    v38[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

    v17 = **(Phase::Logger::GetInstance(v16) + 928);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v15 objectForKeyedSubscript:v13];
      *buf = 136315650;
      v32 = "ExternalStreamManager.mm";
      v33 = 1024;
      v34 = 987;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v15];
  }

  v7[2](v7, v19);
}

- (void)removeExternalOutputStreamGroupID:(id)a3 streamID:(id)a4 withCallback:(id)a5
{
  v48[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v11 = [*(self + 1) objectForKey:v8];
  v12 = v11;
  if (!v11)
  {
    v19 = *MEMORY[0x277CCA450];
    v47 = *MEMORY[0x277CCA450];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't remove stream %@ for unknown group %@", v9, v8];
    v48[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];

    v23 = **(Phase::Logger::GetInstance(v22) + 928);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v21 objectForKeyedSubscript:v19];
      *buf = 136315650;
      v38 = "ExternalStreamManager.mm";
      v39 = 1024;
      v40 = 1027;
      v41 = 2112;
      v42 = v24;
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  v13 = [v11 outputStreams];
  v14 = [v13 objectForKey:v9];

  if (!v14)
  {
    v26 = *MEMORY[0x277CCA450];
    v45 = *MEMORY[0x277CCA450];
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't remove unknown stream %@ in group %@", v9, v8];
    v46 = v27;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

    v23 = **(Phase::Logger::GetInstance(v28) + 928);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v29 = [v21 objectForKeyedSubscript:v26];
      *buf = 136315650;
      v38 = "ExternalStreamManager.mm";
      v39 = 1024;
      v40 = 1034;
      v41 = 2112;
      v42 = v29;
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

LABEL_11:

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v21];

    goto LABEL_21;
  }

  v15 = [v12 outputStreams];
  [v15 removeObjectForKey:v9];

  v17 = **(Phase::Logger::GetInstance(v16) + 928);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v38 = "ExternalStreamManager.mm";
    v39 = 1024;
    v40 = 1040;
    v41 = 2112;
    v42 = v9;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external output stream %@ from group %@", buf, 0x26u);
  }

  v18 = [v12 outputStreams];
  if ([v18 count])
  {
  }

  else
  {
    v30 = [v12 inputStreams];
    if ([v30 count])
    {
    }

    else
    {
      v31 = [v12 controllingClientID];
      v32 = v31 == 0;

      if (v32)
      {
        v33 = **(Phase::Logger::GetInstance([*(self + 1) removeObjectForKey:v8]) + 928);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v38 = "ExternalStreamManager.mm";
          v39 = 1024;
          v40 = 1046;
          v41 = 2112;
          v42 = v8;
          _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external stream group %@", buf, 0x1Cu);
        }
      }
    }
  }

  v25 = 0;
LABEL_21:
  v10[2](v10, v25);
  if (!v25)
  {
    v34 = [v12 stateChangeBlock];
    v35 = v34 == 0;

    if (!v35)
    {
      v36 = [v12 stateChangeBlock];
      (v36)[2](v36, v8, v9, 1);
    }
  }
}

- (BOOL)setPauseExternalOutputStreamGroupID:(id)a3 streamID:(id)a4 isPaused:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v41[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v12 = [*(self + 1) objectForKey:v10];
  v13 = v12;
  if (!v12)
  {
    v20 = *MEMORY[0x277CCA450];
    v40 = *MEMORY[0x277CCA450];
    v21 = "resume";
    if (v7)
    {
      v21 = "pause";
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find stream group %@ to %s", v10, v21];
    v41[0] = v22;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

    v24 = **(Phase::Logger::GetInstance(v23) + 928);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [v15 objectForKeyedSubscript:v20];
      *buf = 136315650;
      *&buf[4] = "ExternalStreamManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1074;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a6)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v15];
      *a6 = v26 = 0;
      goto LABEL_27;
    }

LABEL_22:
    v26 = 0;
    goto LABEL_27;
  }

  v14 = [v12 outputStreams];
  v15 = [v14 objectForKey:v11];

  if (!v15)
  {
    v27 = *MEMORY[0x277CCA450];
    v28 = "resume";
    if (v7)
    {
      v28 = "pause";
    }

    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find output stream %@ to %s", v11, v28, v27];
    v36 = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

    v32 = **(Phase::Logger::GetInstance(v31) + 928);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [v30 objectForKeyedSubscript:v27];
      *buf = 136315650;
      *&buf[4] = "ExternalStreamManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1089;
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v30];
    }

    v15 = 0;
    goto LABEL_22;
  }

  [v15 setStreamPaused:v7];
  *buf = 0;
  *&buf[8] = 0;
  [v11 getUUIDBytes:buf];
  v17 = *buf;
  v16 = *&buf[8];
  HasExternalStream = Phase::Controller::VoiceManager::HasExternalStream(*(self + 2), *buf);
  if (HIDWORD(HasExternalStream) || !HasExternalStream)
  {
    v19 = **(self + 2);
    if (v7)
    {
      Phase::Controller::VoiceManager::Implementation::PauseExternalStream(v19, v17, v16);
    }

    else
    {
      Phase::Controller::VoiceManager::Implementation::ResumeExternalStream(v19, v17, v16);
    }
  }

  if (a6)
  {
    *a6 = 0;
  }

  v26 = 1;
LABEL_27:

  return v26;
}

- (BOOL)streamIsPaused:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [*(self + 1) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v8)
  {
    v9 = *v25;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v24 + 1) + 8 * v10)];
      v12 = [v11 outputStreams];
      v13 = [v12 objectForKey:v6];

      if (v13)
      {
        break;
      }

      v14 = [v11 inputStreams];
      v15 = [v14 objectForKey:v6];

      if (v15)
      {
        v21 = [v15 isStreamPaused];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v21 = [v13 isStreamPaused];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v34 = *MEMORY[0x277CCA450];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", v6];
  v35 = v17;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v7 objectForKeyedSubscript:v16];
    *buf = 136315650;
    v29 = "ExternalStreamManager.mm";
    v30 = 1024;
    v31 = 1151;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (v23)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v7];
    *v23 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (id)formatForStream:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [*(self + 1) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * v10)];
      v12 = [v11 outputStreams];
      v13 = [v12 objectForKey:v6];

      if (v13)
      {
        break;
      }

      v14 = [v11 inputStreams];
      v15 = [v14 objectForKey:v6];

      if (v15)
      {
        v22 = [v15 definition];
        v21 = [v22 format];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v22 = [v13 definition];
    v21 = [v22 format];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v35 = *MEMORY[0x277CCA450];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", v6];
  v36 = v17;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v7 objectForKeyedSubscript:v16];
    *buf = 136315650;
    v30 = "ExternalStreamManager.mm";
    v31 = 1024;
    v32 = 1186;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (v24)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v7];
    *v24 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (int64_t)typeForStream:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [*(self + 1) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * v10)];
      v12 = [v11 outputStreams];
      v13 = [v12 objectForKey:v6];

      if (v13)
      {
        break;
      }

      v14 = [v11 inputStreams];
      v15 = [v14 objectForKey:v6];

      if (v15)
      {
        v22 = [v15 definition];
        v21 = [v22 streamType];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v22 = [v13 definition];
    v21 = [v22 streamType];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v35 = *MEMORY[0x277CCA450];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", v6];
  v36 = v17;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v7 objectForKeyedSubscript:v16];
    *buf = 136315650;
    v30 = "ExternalStreamManager.mm";
    v31 = 1024;
    v32 = 1221;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (v24)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v7];
    *v24 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (unsigned)sessionIdForStream:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if (a4)
  {
    *a4 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [*(self + 1) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * v10)];
      v12 = [v11 outputStreams];
      v13 = [v12 objectForKey:v6];

      if (v13)
      {
        break;
      }

      v14 = [v11 inputStreams];
      v15 = [v14 objectForKey:v6];

      if (v15)
      {
        v22 = [v15 definition];
        v21 = [v22 audioSessionToken];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v22 = [v13 definition];
    v21 = [v22 audioSessionToken];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v35 = *MEMORY[0x277CCA450];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", v6];
  v36 = v17;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v7 objectForKeyedSubscript:v16];
    *buf = 136315650;
    v30 = "ExternalStreamManager.mm";
    v31 = 1024;
    v32 = 1257;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (v24)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v7];
    *v24 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_21:

  return v21;
}

- (shared_ptr<Phase::Controller::StreamRenderer>)createRendererForStream:(id)a3 outputChannelLayout:(unsigned int)a4 normalize:(BOOL)a5 targetLKFS:(double)a6 error:(id *)a7
{
  v33 = v7;
  v48 = *MEMORY[0x277D85DE8];
  v34 = a3;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  if (a7)
  {
    *a7 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [*(self + 1) allKeys];
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [*(self + 1) objectForKey:v14];
        v16 = [v15 outputStreams];
        v17 = [v16 objectForKey:v34];

        if (v17)
        {
          v14;

          v32 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:a4];
          v24 = objc_alloc(MEMORY[0x277CB83A8]);
          [*(self + 4) sampleRate];
          Phase::Logger::GetInstance([v24 initStandardFormatWithSampleRate:v32 channelLayout:?]);
          v25 = [v17 definition];
          v26 = [v25 streamType] == 1;

          if (v26)
          {
            Phase::GetPreferredTuningDirectory(v27);
            if (!objc_claimAutoreleasedReturnValue())
            {
              v28 = **(Phase::Logger::GetInstance(0) + 928);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v40 = "ExternalStreamManager.mm";
                v41 = 1024;
                v42 = 1339;
                _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d cannot find directory for voice tunings", buf, 0x12u);
              }
            }
          }

          [v17 definition];
          [objc_claimAutoreleasedReturnValue() format];
          objc_claimAutoreleasedReturnValue();
          [v17 definition];
          *buf = [objc_claimAutoreleasedReturnValue() maximumFramesToRender];
          [v17 renderBlock];
          objc_claimAutoreleasedReturnValue();
          std::allocate_shared[abi:ne200100]<Phase::Controller::StreamRenderer,std::allocator<Phase::Controller::StreamRenderer>,AVAudioFormat * {__strong},AVAudioFormat * {__strong}&,unsigned int,unsigned int &,std::bitset<8ul> &,int({block_pointer} {__strong})(BOOL *,AudioTimeStamp const*,unsigned int,AudioBufferList *),std::optional<Phase::Controller::StreamRenderer::AudioIssueDetectorInformation> &,0>();
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277CCA450];
  v45 = *MEMORY[0x277CCA450];
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", v34];
  v46 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

  v22 = **(Phase::Logger::GetInstance(v21) + 928);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = [v20 objectForKeyedSubscript:v18];
    *buf = 136315650;
    v40 = "ExternalStreamManager.mm";
    v41 = 1024;
    v42 = 1297;
    v43 = 2112;
    v44 = v23;
    _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (a7)
  {
    *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v20];
  }

  *v33 = 0;
  v33[1] = 0;

  result.var1 = v30;
  result.var0 = v29;
  return result;
}

- (unint64_t)addControllerPauseStateDidUpdateCallback:(id)a3
{
  v4 = a3;
  v5 = *(self + 17) + 1;
  *(self + 17) = v5;
  v6 = _Block_copy(v4);
  v7 = *(self + 104);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (*&v7 <= v5)
    {
      v9 = v5 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v5;
  }

  v10 = *(*(self + 12) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != v5)
  {
    goto LABEL_17;
  }

  v13 = v11[3];
  v11[3] = v6;

  return v5;
}

- (void)removeControllerPauseStateDidUpdateCallback:(unint64_t)a3
{
  v5 = *(self + 13);
  if (v5)
  {
    v6 = (self + 96);
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a3;
      if (v5 <= a3)
      {
        v8 = a3 % v5;
      }
    }

    else
    {
      v8 = (v5 - 1) & a3;
    }

    v23 = v3;
    v24 = v4;
    v9 = *v6;
    v10 = *(*v6 + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        v12 = v5 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == a3)
          {
            if (v11[2] == a3)
            {
              if (v7.u32[0] > 1uLL)
              {
                if (v5 <= a3)
                {
                  a3 %= v5;
                }
              }

              else
              {
                a3 &= v12;
              }

              v14 = *(v9 + 8 * a3);
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14 != v11);
              if (v15 == (self + 112))
              {
                goto LABEL_36;
              }

              v16 = v15[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v16 >= v5)
                {
                  v16 %= v5;
                }
              }

              else
              {
                v16 &= v12;
              }

              if (v16 != a3)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v17 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v17 >= v5)
                  {
                    v17 %= v5;
                  }
                }

                else
                {
                  v17 &= v12;
                }

                if (v17 != a3)
                {
LABEL_37:
                  *(v9 + 8 * a3) = 0;
                }
              }

              v18 = *v11;
              if (*v11)
              {
                v19 = *(v18 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v19 >= v5)
                  {
                    v19 %= v5;
                  }
                }

                else
                {
                  v19 &= v12;
                }

                if (v19 != a3)
                {
                  *(*v6 + 8 * v19) = v15;
                  v18 = *v11;
                }
              }

              *v15 = v18;
              *v11 = 0;
              --*(self + 15);
              v20[0] = v11;
              v20[1] = self + 96;
              v21 = 1;
              memset(v22, 0, sizeof(v22));
              std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](v20);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= v5)
              {
                v13 %= v5;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}

- (void)updateController:(id)a3 pauseState:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(self + 1) allKeys];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v16 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [*(self + 1) objectForKey:v9];
        v11 = [v10 outputStreams];
        v12 = [v11 objectForKey:v6];

        if (v12)
        {
          [v12 setControllerPaused:v4];
          for (j = *(self + 14); j; j = *j)
          {
            v14 = _Block_copy(j[3]);
            v14[2](v14, v9, v6, v4);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)gatherDebugInformation:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v28 = a3;
  if ((atomic_load_explicit(&_MergedGlobals_14, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_14))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&_MergedGlobals_14);
  }

  if ((atomic_load_explicit(&qword_27DF97AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF97AF8))
  {
    _os_feature_enabled_impl();
    __cxa_guard_release(&qword_27DF97AF8);
  }

  v31 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(self + 1);
  v32 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v32)
  {
    v30 = *v48;
    do
    {
      v35 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v47 + 1) + 8 * v35);
        v38 = objc_alloc_init(PHASEExternalStreamGroupDebugInfo);
        v34 = v3;
        v4 = [*(self + 1) objectForKey:v3];
        v5 = [v4 controllingClientID];
        [(PHASEExternalStreamGroupDebugInfo *)v38 setControlled:v5 != 0];

        v6 = objc_opt_new();
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = [v4 outputStreams];
        v7 = [v36 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v7)
        {
          v8 = *v44;
          do
          {
            v9 = 0;
            do
            {
              if (*v44 != v8)
              {
                objc_enumerationMutation(v36);
              }

              v10 = *(*(&v43 + 1) + 8 * v9);
              v11 = objc_alloc_init(PHASEExternalStreamDebugInfo);
              v12 = [v4 outputStreams];
              v13 = [v12 objectForKey:v10];

              -[PHASEExternalStreamDebugInfo setStreamPaused:](v11, "setStreamPaused:", [v13 isStreamPaused]);
              [(PHASEExternalStreamDebugInfo *)v11 setInput:0];
              v14 = [v13 definition];
              v15 = [v14 format];
              [(PHASEExternalStreamDebugInfo *)v11 setClientFormat:v15];

              -[PHASEExternalStreamGroupDebugInfo setControllerPaused:](v38, "setControllerPaused:", [v13 isControllerPaused]);
              v16 = [v10 UUIDString];
              [v6 setObject:v11 forKey:v16];

              ++v9;
            }

            while (v7 != v9);
            v7 = [v36 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v7);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = [v4 inputStreams];
        v17 = [v37 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v17)
        {
          v18 = *v40;
          do
          {
            v19 = 0;
            do
            {
              if (*v40 != v18)
              {
                objc_enumerationMutation(v37);
              }

              v20 = *(*(&v39 + 1) + 8 * v19);
              v21 = objc_alloc_init(PHASEExternalStreamDebugInfo);
              v22 = [v4 inputStreams];
              v23 = [v22 objectForKey:v20];

              -[PHASEExternalStreamDebugInfo setStreamPaused:](v21, "setStreamPaused:", [v23 isStreamPaused]);
              [(PHASEExternalStreamDebugInfo *)v21 setInput:1];
              v24 = [v23 definition];
              v25 = [v24 format];
              [(PHASEExternalStreamDebugInfo *)v21 setClientFormat:v25];

              v26 = [v20 UUIDString];
              [v6 setObject:v21 forKey:v26];

              ++v19;
            }

            while (v17 != v19);
            v17 = [v37 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v17);
        }

        [(PHASEExternalStreamGroupDebugInfo *)v38 setStreams:v6];
        v27 = [v34 UUIDString];
        [v31 setObject:v38 forKey:v27];

        ++v35;
      }

      while (v35 != v32);
      v32 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v32);
  }

  v28[2](v28, v31, 0);
}

- (void)onSessionVolume:(unsigned int)a3 volume:(float)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = self;
  v7 = **(v6 + 7);
  v14 = 0;
  v13 = 1;
  v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 24, &v14, &v13);
  if (!v8)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v11 = **(v7 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 100;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v13)
  {
    v9 = **(v7 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 89;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = 24;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v8 = &unk_284D33C78;
  *(v8 + 8) = v6;
  *(v8 + 16) = a3;
  *(v8 + 20) = a4;
  Phase::LockFreeQueueSPSC::CommitBytes(v7, 24);
  atomic_store(0, (v7 + 40));
}

- (void)onSessionVolume:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  v6 = _Block_copy(v4);
  v7 = **(v5 + 7);
  v14 = 0;
  v13 = 1;
  v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 24, &v14, &v13);
  if (!v8)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v11 = **(v7 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 100;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v13)
  {
    v9 = **(v7 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 89;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = 24;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v8 = &unk_284D33CA0;
  v8[1] = v5;
  v8[2] = v6;
  Phase::LockFreeQueueSPSC::CommitBytes(v7, 24);
  atomic_store(0, (v7 + 40));
}

- (void)onRouteChanged:(RouteChangeInfo)a3
{
  v43 = *MEMORY[0x277D85DE8];
  [*(self + 18) setCurrentRoute:{*&a3.var0, a3.var2}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = self;
  obj = [*(self + 1) allKeys];
  v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v25)
  {
    v24 = *v38;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [*(v27 + 1) objectForKey:*(*(&v37 + 1) + 8 * i)];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v5 = [v4 outputStreams];
        v28 = [v5 allKeys];

        v6 = [v28 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v6)
        {
          v7 = *v34;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v34 != v7)
              {
                objc_enumerationMutation(v28);
              }

              v9 = *(*(&v33 + 1) + 8 * j);
              v10 = [v4 outputStreams];
              v11 = [v10 objectForKey:v9];

              v12 = [v11 definition];
              v13 = [v12 streamType] == 1;

              if (v13)
              {
                if (v11)
                {
                  [v11 renderer];
                  if (v32)
                  {
                    v14 = std::__shared_weak_count::lock(v32);
                    if (v14)
                    {
                      v15 = v31;
                    }

                    else
                    {
                      v15 = 0;
                    }

                    if (v32)
                    {
                      std::__shared_weak_count::__release_weak(v32);
                    }

                    if (v15)
                    {
                      v16 = [v11 definition];
                      v17 = [v16 properties];
                      v18 = v17 == 0;

                      if (v18)
                      {
                        v22 = 2;
                      }

                      else
                      {
                        v19 = [v11 definition];
                        v20 = [v19 properties];
                        v21 = [v20 objectForKeyedSubscript:@"VoiceBandwidth"];

                        if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v22 = [v21 integerValue];
                        }

                        else
                        {
                          v22 = 2;
                        }
                      }

                      v29 = v15;
                      v30 = v14;
                      if (v14)
                      {
                        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      [(ExternalStreamManager *)v27 setVolumeEQPreset:&v29 bandwidthType:v22];
                      if (v30)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
                      }
                    }

                    if (v14)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
                    }
                  }
                }
              }
            }

            v6 = [v28 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v6);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v25);
  }
}

- (void)setVolumeEQPreset:(shared_ptr<Phase:(int64_t)a4 :Controller::StreamRenderer>)a3 bandwidthType:
{
  var0 = a3.var0;
  v29 = *MEMORY[0x277D85DE8];
  v5 = *(self + 18);
  if (v5)
  {
    var1 = a3.var1;
    v5 = [v5 getPreset:a3.var1];
    if (inData)
    {
      v7 = _os_feature_enabled_impl();
      if (v7)
      {
        v8 = 1733326433;
      }

      else
      {
        v8 = 1986359664;
      }

      if (v7)
      {
        v9 = 1986359664;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(*var0 + 11);
      if (v10)
      {
        v10 = AudioUnitSetProperty([v10 audioUnit], v8, 0, v9, &inData, 8u);
        v11 = v10;
      }

      else
      {
        v11 = -10867;
      }

      v12 = **(Phase::Logger::GetInstance(v10) + 400);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = "ExternalStreamManager.mm";
        v23 = 1024;
        v24 = 1680;
        v25 = 2048;
        v26 = var1;
        v27 = 1024;
        v28 = v11;
        _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume EQ: load vEQ preset with bandwidth type %ld result: %d", buf, 0x22u);
      }

      v5 = inData;
      if (inData)
      {
        if (!v11)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    inData = 0;
  }

  v13 = MEMORY[0x277CBEBC0];
  v14 = Phase::GetPreferredTuningDirectory(v5);
  v20[0] = v14;
  v20[1] = @"gen-far-end-voice.austrip";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v16 = [v13 fileURLWithPathComponents:v15];

  v17 = Phase::Controller::StreamRenderer::ConfigureDSPGraph(*var0, 0, v16);
  if ((v17 & 1) == 0)
  {
    v18 = **(Phase::Logger::GetInstance(v17) + 400);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "ExternalStreamManager.mm";
      v23 = 1024;
      v24 = 1690;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Volume EQ: Failed to load original DSP strip", buf, 0x12u);
    }
  }

  v5 = inData;
  if (inData)
  {
LABEL_21:
    CFRelease(v5);
  }
}

- (id).cxx_construct
{
  v2 = (self + 48);
  Phase::Logger::GetInstance(self);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(v2);
}

- (void)setExternalInputStreamSessionMute:(uint64_t)a1 isMuted:fadeTimeInSeconds:
{

  JUMPOUT(0x23EE864A0);
}

- (void)setExternalInputStreamSessionMute:isMuted:fadeTimeInSeconds:
{
  v3 = *(a1 + 8);
  if (v3)
  {
    LODWORD(v2) = *(a1 + 24);
    [v3 _fadeInputStreamsInSessionToken:*(a1 + 16) isMuted:*(a1 + 20) fadeTimeInSeconds:0 synchronous:v2];
  }
}

- (void)updateExternalInputStreamRecordingAbility:(id *)a1 streamID:canRecord:
{

  JUMPOUT(0x23EE864A0);
}

- (void)updateExternalInputStreamRecordingAbility:streamID:canRecord:
{
  v2 = *(a1 + 8);
  if (v2)
  {
    [v2 _updateRecordingAbility:*(a1 + 16) streamID:*(a1 + 24) canRecord:*(a1 + 32)];
  }
}

- (void)onSessionVolume:(uint64_t)a1 volume:
{

  JUMPOUT(0x23EE864A0);
}

- (void)onSessionVolume:volume:
{
  v34 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(*(a1 + 8) + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v2)
  {
    v3 = *v29;
    v19 = *v29;
    do
    {
      v4 = 0;
      v20 = v2;
      do
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(a1 + 8) + 8) objectForKey:*(*(&v28 + 1) + 8 * v4)];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = [v5 outputStreams];
        v7 = [v6 allKeys];

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = *v25;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              v12 = [v5 outputStreams];
              v13 = [v12 objectForKey:v11];

              v14 = [v13 definition];
              v15 = [v14 audioSessionToken] == *(a1 + 16);

              if (v15)
              {
                if (v13)
                {
                  [v13 renderer];
                  if (v23)
                  {
                    v16 = std::__shared_weak_count::lock(v23);
                    if (v16)
                    {
                      v17 = v22;
                    }

                    else
                    {
                      v17 = 0;
                    }

                    std::__shared_weak_count::__release_weak(v23);
                    if (v17)
                    {
                      v18 = *(v17 + 88);
                      if (v18)
                      {
                        AudioUnitSetParameter([v18 audioUnit], 0x76657176u, 0, 0, *(a1 + 20), 0);
                      }
                    }

                    if (v16)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
                    }
                  }
                }

                goto LABEL_28;
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

        ++v4;
        v3 = v19;
      }

      while (v4 != v20);
      v2 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v2);
  }

LABEL_28:
}

- (void)onSessionVolume:(uint64_t)a1
{

  JUMPOUT(0x23EE864A0);
}

- (void)onSessionVolume:
{
  v36 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [*(*(a1 + 8) + 8) allKeys];
  v2 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v2)
  {
    v22 = *v31;
    v3 = -1.0;
    do
    {
      v23 = v2;
      for (i = 0; i != v23; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(a1 + 8) + 8) objectForKey:*(*(&v30 + 1) + 8 * i)];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v6 = [v5 outputStreams];
        v7 = [v6 allKeys];

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = *v27;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v27 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v26 + 1) + 8 * j);
              v12 = [v5 outputStreams];
              v13 = [v12 objectForKey:v11];

              v14 = [v13 definition];
              v15 = [v14 streamType] == 1;

              if (v15)
              {
                if (v3 < 0.0)
                {
                  v16 = *(a1 + 16);
                  v17 = [v13 definition];
                  v3 = (*(v16 + 16))(v16, [v17 audioSessionToken]);
                }

                if (v13)
                {
                  [v13 renderer];
                  if (v25)
                  {
                    v18 = std::__shared_weak_count::lock(v25);
                    if (v18)
                    {
                      v19 = v24;
                    }

                    else
                    {
                      v19 = 0;
                    }

                    std::__shared_weak_count::__release_weak(v25);
                    if (v19)
                    {
                      if (v3 >= 0.0)
                      {
                        v20 = *(v19 + 88);
                        if (v20)
                        {
                          AudioUnitSetParameter([v20 audioUnit], 0x76657176u, 0, 0, v3, 0);
                        }
                      }
                    }

                    if (v18)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
                    }
                  }
                }
              }
            }

            v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v8);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v2);
  }
}

@end