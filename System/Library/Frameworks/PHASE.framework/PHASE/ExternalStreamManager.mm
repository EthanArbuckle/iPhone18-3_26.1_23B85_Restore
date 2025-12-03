@interface ExternalStreamManager
- (BOOL)_setPauseExternalInputStreamGroupID:(id)d streamID:(id)iD isPaused:(BOOL)paused fromPlatformCallback:(BOOL)callback error:(id *)error;
- (BOOL)_setPauseExternalInputStreamWithoutNotifyingClient:(id)client isPaused:(BOOL)paused fromPlatformCallback:(BOOL)callback error:(id *)error;
- (BOOL)addExternalInputStreamGroupID:(id)d streamID:(id)iD attributedTo:(id)to definition:(id)definition isPaused:(BOOL)paused canRecord:(BOOL)record fader:(shared_ptr<caulk:(id)self0 :(id *)self1 synchronized<Phase::Controller::ExternalStreamFader>>)a9 pauseStateDidUpdateCallback:error:;
- (BOOL)setPauseExternalOutputStreamGroupID:(id)d streamID:(id)iD isPaused:(BOOL)paused error:(id *)error;
- (BOOL)streamIsPaused:(id)paused error:(id *)error;
- (ExternalStreamManager)initWithTaskManager:(void *)manager engineMode:(int64_t)mode engineFormat:(id)format maximumFramesToRender:(unsigned int)render enableAudioIssueDetector:(BOOL)detector;
- (id).cxx_construct;
- (id)formatForStream:(id)stream error:(id *)error;
- (int64_t)typeForStream:(id)stream error:(id *)error;
- (shared_ptr<Phase::Controller::StreamRenderer>)createRendererForStream:(id)stream outputChannelLayout:(unsigned int)layout normalize:(BOOL)normalize targetLKFS:(double)s error:(id *)error;
- (unint64_t)_fadeInputStreamsInSessionToken:(unsigned int)token isMuted:(BOOL)muted fadeTimeInSeconds:(float)seconds synchronous:(BOOL)synchronous;
- (unint64_t)addControllerPauseStateDidUpdateCallback:(id)callback;
- (unint64_t)setExternalInputStreamSessionMute:(unsigned int)mute isMuted:(BOOL)muted fadeTimeInSeconds:(float)seconds;
- (unsigned)sessionIdForStream:(id)stream error:(id *)error;
- (void)_setSessionInputStreamState:(id)state muted:(BOOL)muted fromPlatformCallback:(BOOL)callback;
- (void)_updateRecordingAbility:(id)ability streamID:(id)d canRecord:(BOOL)record;
- (void)abandonControlOfExternalStreamGroupID:(id)d withCallback:(id)callback;
- (void)addExternalOutputStreamGroupID:(id)d streamID:(id)iD attributedTo:(id)to definition:(id)definition startsPaused:(BOOL)paused renderBlock:(id)block withCallback:(id)callback;
- (void)claimControlOfExternalStreamGroupID:(id)d attributedTo:(id)to stateChangeBlock:(id)block withCallback:(id)callback;
- (void)gatherDebugInformation:(id)information;
- (void)onRouteChanged:(RouteChangeInfo)changed;
- (void)onSessionVolume:;
- (void)onSessionVolume:(id)volume;
- (void)onSessionVolume:(uint64_t)volume;
- (void)onSessionVolume:(uint64_t)volume volume:;
- (void)onSessionVolume:(unsigned int)volume volume:(float)a4;
- (void)onSessionVolume:volume:;
- (void)removeAllResourcesAttributedToClientID:(id)d;
- (void)removeControllerPauseStateDidUpdateCallback:(unint64_t)callback;
- (void)removeExternalInputStreamGroupID:(id)d streamID:(id)iD;
- (void)removeExternalOutputStreamGroupID:(id)d streamID:(id)iD withCallback:(id)callback;
- (void)setExternalInputStreamSession:(unsigned int)session isActive:(BOOL)active;
- (void)setExternalInputStreamSessionMute:(uint64_t)mute isMuted:fadeTimeInSeconds:;
- (void)setExternalInputStreamSessionMute:isMuted:fadeTimeInSeconds:;
- (void)setMuteExternalInputStreamGroupID:(id)d streamID:(id)iD isMuted:(BOOL)muted;
- (void)setVolumeEQPreset:(shared_ptr<Phase:(int64_t)preset :Controller::StreamRenderer>)a3 bandwidthType:;
- (void)update;
- (void)updateController:(id)controller pauseState:(BOOL)state;
- (void)updateExternalInputStreamRecordingAbility:(id *)ability streamID:canRecord:;
- (void)updateExternalInputStreamRecordingAbility:(id)ability streamID:(id)d canRecord:(BOOL)record;
- (void)updateExternalInputStreamRecordingAbility:streamID:canRecord:;
@end

@implementation ExternalStreamManager

- (ExternalStreamManager)initWithTaskManager:(void *)manager engineMode:(int64_t)mode engineFormat:(id)format maximumFramesToRender:(unsigned int)render enableAudioIssueDetector:(BOOL)detector
{
  formatCopy = format;
  v21.receiver = self;
  v21.super_class = ExternalStreamManager;
  v13 = [(ExternalStreamManager *)&v21 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = *(v13 + 1);
    *(v13 + 1) = v14;

    *(v13 + 2) = Phase::Controller::TaskManager::GetService<Phase::Controller::VoiceManager>(manager, 8);
    *(v13 + 3) = Phase::Controller::TaskManager::GetService<Phase::Controller::SessionManager>(manager, 20);
    objc_storeStrong(v13 + 4, format);
    *(v13 + 10) = render;
    *(v13 + 44) = detector;
    v16 = [VolumeEQPresetManager alloc];
    v17 = Phase::GetPreferredTuningDirectory(v16);
    v18 = [(VolumeEQPresetManager *)v16 init:v17];
    v19 = *(v13 + 18);
    *(v13 + 18) = v18;
  }

  return v13;
}

- (void)removeAllResourcesAttributedToClientID:(id)d
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
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
        controllingClientID = [v32 controllingClientID];
        v7 = [controllingClientID isEqual:dCopy];

        if (v7)
        {
          [(ExternalStreamManager *)selfCopy abandonControlOfExternalStreamGroupID:v5 withCallback:&__block_literal_global_1];
        }

        outputStreams = [v32 outputStreams];
        v34 = [outputStreams copy];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        allKeys = [v34 allKeys];
        v10 = [allKeys countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v10)
        {
          v11 = *v41;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v41 != v11)
              {
                objc_enumerationMutation(allKeys);
              }

              v13 = *(*(&v40 + 1) + 8 * j);
              v14 = [v34 objectForKey:v13];
              attributedClientID = [v14 attributedClientID];
              v16 = [attributedClientID isEqual:dCopy];

              if (v16)
              {
                [(ExternalStreamManager *)selfCopy removeExternalOutputStreamGroupID:v5 streamID:v13 withCallback:&__block_literal_global_129];
              }
            }

            v10 = [allKeys countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v10);
        }

        inputStreams = [v32 inputStreams];
        v18 = [inputStreams copy];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        allKeys2 = [v18 allKeys];
        v20 = [allKeys2 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v20)
        {
          v21 = *v37;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v37 != v21)
              {
                objc_enumerationMutation(allKeys2);
              }

              v23 = *(*(&v36 + 1) + 8 * k);
              v24 = [v18 objectForKey:v23];
              attributedClientID2 = [v24 attributedClientID];
              v26 = [attributedClientID2 isEqual:dCopy];

              if (v26)
              {
                [(ExternalStreamManager *)selfCopy removeExternalInputStreamGroupID:v5 streamID:v23];
              }
            }

            v20 = [allKeys2 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v20);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v30);
  }
}

- (void)addExternalOutputStreamGroupID:(id)d streamID:(id)iD attributedTo:(id)to definition:(id)definition startsPaused:(BOOL)paused renderBlock:(id)block withCallback:(id)callback
{
  pausedCopy = paused;
  v47[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  toCopy = to;
  definitionCopy = definition;
  blockCopy = block;
  callbackCopy = callback;
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

  v21 = [*(self + 1) objectForKey:dCopy];
  if (!v21)
  {
    v21 = objc_alloc_init(ManagedStreamGroup);
    [*(self + 1) setObject:v21 forKey:dCopy];
  }

  outputStreams = [(ManagedStreamGroup *)v21 outputStreams];
  v23 = [outputStreams objectForKey:iDCopy];

  if (v23)
  {
    v24 = *MEMORY[0x277CCA450];
    v46 = *MEMORY[0x277CCA450];
    iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group %@ already has output stream %@", dCopy, iDCopy];
    v47[0] = iDCopy;
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
    outputStreams2 = [(ManagedStreamGroup *)v21 outputStreams];
    v32 = [[ManagedOutputStream alloc] initWithPaused:pausedCopy attributedTo:toCopy definition:definitionCopy renderBlock:blockCopy];
    [outputStreams2 setObject:v32 forKey:iDCopy];

    v34 = **(Phase::Logger::GetInstance(v33) + 928);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v39 = "ExternalStreamManager.mm";
      v40 = 1024;
      v41 = 364;
      v42 = 2112;
      v43 = iDCopy;
      v44 = 2112;
      v45 = dCopy;
      _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added external output stream %@ to group %@", buf, 0x26u);
    }

    v30 = 0;
  }

  callbackCopy[2](callbackCopy, v30);
  if (!v30)
  {
    stateChangeBlock = [(ManagedStreamGroup *)v21 stateChangeBlock];
    v36 = stateChangeBlock == 0;

    if (!v36)
    {
      stateChangeBlock2 = [(ManagedStreamGroup *)v21 stateChangeBlock];
      (stateChangeBlock2)[2](stateChangeBlock2, dCopy, iDCopy, 0);
    }
  }
}

- (BOOL)addExternalInputStreamGroupID:(id)d streamID:(id)iD attributedTo:(id)to definition:(id)definition isPaused:(BOOL)paused canRecord:(BOOL)record fader:(shared_ptr<caulk:(id)self0 :(id *)self1 synchronized<Phase::Controller::ExternalStreamFader>>)a9 pauseStateDidUpdateCallback:error:
{
  recordCopy = record;
  pausedCopy = paused;
  v57[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  toCopy = to;
  definitionCopy = definition;
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

  v19 = [*(self + 1) objectForKey:dCopy];
  if (!v19)
  {
    v19 = objc_alloc_init(ManagedStreamGroup);
    [*(self + 1) setObject:? forKey:?];
  }

  inputStreams = [(ManagedStreamGroup *)v19 inputStreams];
  v21 = [inputStreams objectForKey:iDCopy];
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

    v25 = [(ManagedInputStream *)v30 initWithPaused:pausedCopy attributedTo:toCopy definition:definitionCopy canRecord:recordCopy fader:&v42 pauseStateDidUpdateCallback:v40];
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    SessionInputMuteState = Phase::Controller::SessionManager::GetSessionInputMuteState(*(self + 3), [definitionCopy audioSessionToken], 0);
    v33 = SessionInputMuteState;
    if ((SessionInputMuteState & 0x100) != 0)
    {
      [(ManagedInputStream *)v25 setIsMuted:SessionInputMuteState & 1];
    }

    inputStreams2 = [(ManagedStreamGroup *)v19 inputStreams];
    [inputStreams2 setObject:v25 forKey:iDCopy];

    v35 = [(ExternalStreamManager *)self _setPauseExternalInputStreamWithoutNotifyingClient:v25 isPaused:pausedCopy fromPlatformCallback:0 error:fader];
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
        v49 = iDCopy;
        if ((v33 & 0x100) == 0)
        {
          v37 = "UNKNOWN";
        }

        v51 = dCopy;
        v52 = 1024;
        v53 = pausedCopy;
        v54 = 2080;
        v55 = v37;
        _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d added external input stream %@ to group %@ with initial pause state %d initial input mute state %s", buf, 0x36u);
      }

      if (!fader)
      {
        v22 = 1;
        goto LABEL_28;
      }

      v29 = 0;
      goto LABEL_25;
    }

    [(ExternalStreamManager *)self removeExternalInputStreamGroupID:dCopy streamID:iDCopy];
LABEL_27:
    v22 = 0;
    goto LABEL_28;
  }

  v23 = *MEMORY[0x277CCA450];
  v56 = *MEMORY[0x277CCA450];
  iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group %@ already has input stream %@", dCopy, iDCopy];
  v57[0] = iDCopy;
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

  if (!fader)
  {
    goto LABEL_27;
  }

  v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346925413 userInfo:v25];
LABEL_25:
  *fader = v29;
LABEL_28:

  return v22;
}

- (void)removeExternalInputStreamGroupID:(id)d streamID:(id)iD
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
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

  v8 = [*(self + 1) objectForKey:dCopy];
  v9 = v8;
  if (v8)
  {
    inputStreams = [v8 inputStreams];
    v11 = [inputStreams objectForKey:iDCopy];

    if (v11)
    {
      inputStreams2 = [v9 inputStreams];
      [inputStreams2 removeObjectForKey:iDCopy];

      v15 = **(Phase::Logger::GetInstance(v14) + 928);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315906;
        v34 = "ExternalStreamManager.mm";
        v35 = 1024;
        v36 = 476;
        v37 = 2112;
        v38 = iDCopy;
        v39 = 2112;
        v40 = dCopy;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external input stream %@ from group %@.", &v33, 0x26u);
      }

      v16 = *(self + 3);
      definition = [v11 definition];
      LOBYTE(v16) = Phase::Controller::SessionManager::SetSessionPlayState(v16, [definition audioSessionToken], v11, 1u, 0, 0, 0);

      if ((v16 & 1) == 0)
      {
        v19 = **(Phase::Logger::GetInstance(v18) + 928);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          definition2 = [v11 definition];
          audioSessionToken = [definition2 audioSessionToken];
          v33 = 136315650;
          v34 = "ExternalStreamManager.mm";
          v35 = 1024;
          v36 = 487;
          v37 = 1024;
          LODWORD(v38) = audioSessionToken;
          _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to stop audio session 0x%x while removing input stream (potentially invalid)", &v33, 0x18u);
        }
      }

      outputStreams = [v9 outputStreams];
      if ([outputStreams count])
      {

LABEL_23:
        goto LABEL_24;
      }

      inputStreams3 = [v9 inputStreams];
      if ([inputStreams3 count])
      {

        goto LABEL_23;
      }

      controllingClientID = [v9 controllingClientID];
      v31 = controllingClientID == 0;

      if (!v31)
      {
        goto LABEL_23;
      }

      v32 = **(Phase::Logger::GetInstance([*(self + 1) removeObjectForKey:dCopy]) + 928);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v33 = 136315650;
      v34 = "ExternalStreamManager.mm";
      v35 = 1024;
      v36 = 494;
      v37 = 2112;
      v38 = dCopy;
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
      v38 = iDCopy;
      v39 = 2112;
      v40 = dCopy;
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
    v38 = dCopy;
    _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream group %@ to remove.", &v33, 0x1Cu);
  }

LABEL_24:
}

- (void)setMuteExternalInputStreamGroupID:(id)d streamID:(id)iD isMuted:(BOOL)muted
{
  mutedCopy = muted;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
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

  v10 = [*(self + 1) objectForKey:dCopy];
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
      v28 = dCopy;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream group %@ to mute.", &v23, 0x1Cu);
    }

    goto LABEL_16;
  }

  inputStreams = [v10 inputStreams];
  v13 = [inputStreams objectForKey:iDCopy];

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
      v28 = iDCopy;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream %@ to mute.", &v23, 0x1Cu);
    }

LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v15 = **(Phase::Logger::GetInstance(v14) + 928);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (mutedCopy)
    {
      v16 = "True";
    }

    else
    {
      v16 = "False";
    }

    definition = [v13 definition];
    v23 = 136316162;
    v24 = "ExternalStreamManager.mm";
    v25 = 1024;
    v26 = 529;
    v27 = 2080;
    v28 = v16;
    v29 = 2112;
    v30 = iDCopy;
    v31 = 1024;
    audioSessionToken = [definition audioSessionToken];
    _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting Mute %s state on external input stream %@ for session 0x%x", &v23, 0x2Cu);
  }

  definition2 = [v13 definition];
  audioSessionToken2 = [definition2 audioSessionToken];

  v20 = v13;
  [v20 setIsMuted:mutedCopy];

  Phase::Controller::SessionManager::SetSessionInputMuteState(*(self + 3), audioSessionToken2, v20, mutedCopy, 0);
LABEL_17:
}

- (void)_setSessionInputStreamState:(id)state muted:(BOOL)muted fromPlatformCallback:(BOOL)callback
{
  callbackCopy = callback;
  mutedCopy = muted;
  stateCopy = state;
  if ([stateCopy isStreamPaused])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if ([stateCopy canRecord])
  {
    v9 = 1;
  }

  else
  {
    v9 = 9;
  }

  if (mutedCopy)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(self + 3);
  definition = [stateCopy definition];
  Phase::Controller::SessionManager::SetSessionPlayState(v11, [definition audioSessionToken], stateCopy, v9 | v10, v8, callbackCopy, 0);
}

- (unint64_t)_fadeInputStreamsInSessionToken:(unsigned int)token isMuted:(BOOL)muted fadeTimeInSeconds:(float)seconds synchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  mutedCopy = muted;
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
    if (mutedCopy)
    {
      v10 = "Muting";
    }

    v35 = v10;
    secondsCopy = seconds;
    if (mutedCopy)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    if (seconds < 0.0)
    {
      seconds = 0.0;
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
        inputStreams = [v13 inputStreams];
        allKeys = [inputStreams allKeys];

        v15 = [allKeys countByEnumeratingWithState:&v40 objects:v61 count:16];
        if (v15)
        {
          v16 = *v41;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              v18 = *(*(&v40 + 1) + 8 * j);
              inputStreams2 = [v13 inputStreams];
              v20 = [inputStreams2 objectForKey:v18];

              if (v20)
              {
                definition = [v20 definition];
                v22 = [definition audioSessionToken] == token;

                if (v22)
                {
                  isMuted = [v20 isMuted];
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
                    tokenCopy = token;
                    v59 = 2048;
                    v60 = secondsCopy;
                    _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s input %@ for session 0x%x over %f seconds.", lock, 0x36u);
                  }

                  *(v24 + 52) = v12;
                  v63[0] = &unk_284D31660;
                  v63[1] = Phase::CurveFunction::Linear<float>;
                  v63[3] = v63;
                  if (seconds == 0.0)
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
                  *lock = seconds;
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
                  if (synchronousCopy)
                  {
                    if (v28 == 0.0)
                    {
                      v29 = 1;
                    }

                    else
                    {
                      v29 = isMuted;
                    }

                    [(ExternalStreamManager *)self _setSessionInputStreamState:v20 muted:v29 fromPlatformCallback:1];
                  }

                  ++v39;
                }
              }
            }

            v15 = [allKeys countByEnumeratingWithState:&v40 objects:v61 count:16];
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

- (unint64_t)setExternalInputStreamSessionMute:(unsigned int)mute isMuted:(BOOL)muted fadeTimeInSeconds:(float)seconds
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
  *(v11 + 16) = mute;
  *(v11 + 20) = muted;
  *(v11 + 24) = seconds;
  Phase::LockFreeQueueSPSC::CommitBytes(v10, 32);
  atomic_store(0, (v10 + 40));

  objc_destroyWeak(&location);
  return 0;
}

- (void)setExternalInputStreamSession:(unsigned int)session isActive:(BOOL)active
{
  activeCopy = active;
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
        inputStreams = [v7 inputStreams];
        v29 = v6;
        allKeys = [inputStreams allKeys];

        v9 = [allKeys countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v9)
        {
          v10 = *v37;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v37 != v10)
              {
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v36 + 1) + 8 * i);
              inputStreams2 = [v7 inputStreams];
              v14 = [inputStreams2 objectForKey:v12];

              if (v14)
              {
                definition = [v14 definition];
                v16 = [definition audioSessionToken] == session;

                if (v16)
                {
                  if (activeCopy)
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
                    isStreamPaused = [v14 isStreamPaused];
                    v34 = 0;
                    v22 = [(ExternalStreamManager *)self _setPauseExternalInputStreamGroupID:v30 streamID:v12 isPaused:1 fromPlatformCallback:1 error:&v34];
                    v23 = v34;
                    v19 = v23;
                    if (v22)
                    {
                      v24 = isStreamPaused ^ 1u;
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

            v9 = [allKeys countByEnumeratingWithState:&v36 objects:v52 count:16];
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

- (void)_updateRecordingAbility:(id)ability streamID:(id)d canRecord:(BOOL)record
{
  recordCopy = record;
  v32 = *MEMORY[0x277D85DE8];
  abilityCopy = ability;
  dCopy = d;
  v10 = [*(self + 1) objectForKey:abilityCopy];
  v11 = v10;
  if (v10)
  {
    inputStreams = [v10 inputStreams];
    v13 = [inputStreams objectForKey:dCopy];

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
        if (recordCopy)
        {
          v16 = "Can Record";
        }

        v28 = 2080;
        v29 = v16;
        v30 = 2112;
        v31 = dCopy;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting %s state on external input stream %@", buf, 0x26u);
      }

      [v13 setCanRecord:recordCopy];
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
          v29 = dCopy;
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
        v29 = dCopy;
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
      v29 = abilityCopy;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not find stream group %@ to pause.", buf, 0x1Cu);
    }
  }
}

- (void)updateExternalInputStreamRecordingAbility:(id)ability streamID:(id)d canRecord:(BOOL)record
{
  v30 = *MEMORY[0x277D85DE8];
  abilityCopy = ability;
  dCopy = d;
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
  v11 = abilityCopy;
  v12 = dCopy;
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
  *(v14 + 32) = record;
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
        inputStreams = [v3 inputStreams];
        allKeys = [inputStreams allKeys];

        v6 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v9 = *(*(&v21 + 1) + 8 * v8);
              inputStreams2 = [v3 inputStreams];
              v11 = [inputStreams2 objectForKey:v9];

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
            v14 = [allKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (BOOL)_setPauseExternalInputStreamWithoutNotifyingClient:(id)client isPaused:(BOOL)paused fromPlatformCallback:(BOOL)callback error:(id *)error
{
  callbackCopy = callback;
  pausedCopy = paused;
  v36[1] = *MEMORY[0x277D85DE8];
  clientCopy = client;
  v11 = clientCopy;
  if (pausedCopy)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  canRecord = [clientCopy canRecord];
  isMuted = [v11 isMuted];
  if (canRecord)
  {
    v15 = 1;
  }

  else
  {
    v15 = 9;
  }

  if (isMuted)
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(self + 3);
  definition = [v11 definition];
  v19 = Phase::Controller::SessionManager::SetSessionPlayState(v17, [definition audioSessionToken], v11, v16 | v15, v12, callbackCopy, 0);

  if (v19)
  {
    if (error)
    {
      *error = 0;
    }

    [v11 setStreamPaused:pausedCopy];
    [v11 setShouldResumeWithSession:0];
  }

  else
  {
    v20 = *MEMORY[0x277CCA450];
    v35 = *MEMORY[0x277CCA450];
    v21 = MEMORY[0x277CCACA8];
    definition2 = [v11 definition];
    v23 = [v21 stringWithFormat:@"failed to set session 0x%x state", objc_msgSend(definition2, "audioSessionToken")];
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

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924646 userInfo:v24];
    }

    [v11 setStreamPaused:1];
    [v11 setShouldResumeWithSession:0];
  }

  return v19;
}

- (BOOL)_setPauseExternalInputStreamGroupID:(id)d streamID:(id)iD isPaused:(BOOL)paused fromPlatformCallback:(BOOL)callback error:(id *)error
{
  callbackCopy = callback;
  pausedCopy = paused;
  v52[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
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

  v14 = [*(self + 1) objectForKey:dCopy];
  v15 = v14;
  if (!v14)
  {
    v24 = *MEMORY[0x277CCA450];
    v51 = *MEMORY[0x277CCA450];
    v25 = "resume";
    if (pausedCopy)
    {
      v25 = "pause";
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find stream group %@ to %s", dCopy, v25];
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

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v17];
      *error = v22 = 0;
      goto LABEL_25;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  inputStreams = [v14 inputStreams];
  v17 = [inputStreams objectForKey:iDCopy];

  if (!v17)
  {
    v30 = *MEMORY[0x277CCA450];
    v49 = *MEMORY[0x277CCA450];
    v31 = "resume";
    if (pausedCopy)
    {
      v31 = "pause";
    }

    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find stream %@ to %s", iDCopy, v31];
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

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v33];
    }

    v17 = 0;
    goto LABEL_24;
  }

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v38 = iDCopy;
    if (pausedCopy)
    {
      v20 = "Pausing";
    }

    else
    {
      v20 = "Resuming";
    }

    definition = [v17 definition];
    *buf = 136316162;
    v40 = "ExternalStreamManager.mm";
    v41 = 1024;
    v42 = 922;
    v43 = 2080;
    v44 = v20;
    v45 = 2112;
    iDCopy = v38;
    v46 = v38;
    v47 = 1024;
    audioSessionToken = [definition audioSessionToken];
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s external input stream %@ in session 0x%x", buf, 0x2Cu);
  }

  v22 = [(ExternalStreamManager *)self _setPauseExternalInputStreamWithoutNotifyingClient:v17 isPaused:pausedCopy fromPlatformCallback:callbackCopy error:error];
  pauseStateDidUpdateCallback = [v17 pauseStateDidUpdateCallback];
  pauseStateDidUpdateCallback[2](pauseStateDidUpdateCallback, [v17 isStreamPaused]);

LABEL_25:
  return v22;
}

- (void)claimControlOfExternalStreamGroupID:(id)d attributedTo:(id)to stateChangeBlock:(id)block withCallback:(id)callback
{
  v41[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  toCopy = to;
  blockCopy = block;
  callbackCopy = callback;
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

  v13 = [*(self + 1) objectForKey:dCopy];
  if (!v13)
  {
    v13 = objc_alloc_init(ManagedStreamGroup);
    [*(self + 1) setObject:? forKey:?];
  }

  controllingClientID = [(ManagedStreamGroup *)v13 controllingClientID];

  if (controllingClientID)
  {
    v15 = *MEMORY[0x277CCA450];
    v40 = *MEMORY[0x277CCA450];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group %@ is already controlled", dCopy];
    v41[0] = dCopy;
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
    [(ManagedStreamGroup *)v13 setStateChangeBlock:blockCopy];
    v22 = **(Phase::Logger::GetInstance([(ManagedStreamGroup *)v13 setControllingClientID:toCopy]) + 928);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v35 = "ExternalStreamManager.mm";
      v36 = 1024;
      v37 = 961;
      v38 = 2112;
      v39 = dCopy;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d claimed control of external stream group %@", buf, 0x1Cu);
    }

    v21 = 0;
  }

  callbackCopy[2](callbackCopy, v21);
  if (!v21)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    outputStreams = [(ManagedStreamGroup *)v13 outputStreams];
    allKeys = [outputStreams allKeys];

    v25 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          (*(blockCopy + 2))(blockCopy, dCopy, *(*(&v29 + 1) + 8 * v27++), 0);
        }

        while (v25 != v27);
        v25 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v25);
    }
  }
}

- (void)abandonControlOfExternalStreamGroupID:(id)d withCallback:(id)callback
{
  v38[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  callbackCopy = callback;
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

  v8 = [*(self + 1) objectForKey:dCopy];
  v9 = v8;
  if (v8)
  {
    controllingClientID = [v8 controllingClientID];

    if (controllingClientID)
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
        v36 = dCopy;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Abandoned control of external stream group %@", buf, 0x1Cu);
      }

      outputStreams = [v9 outputStreams];
      if ([outputStreams count])
      {
      }

      else
      {
        inputStreams = [v9 inputStreams];
        v27 = [inputStreams count] == 0;

        if (v27)
        {
          v28 = **(Phase::Logger::GetInstance([*(self + 1) removeObjectForKey:dCopy]) + 928);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v32 = "ExternalStreamManager.mm";
            v33 = 1024;
            v34 = 1007;
            v35 = 2112;
            v36 = dCopy;
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
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream %@ is not currently under control", dCopy];
      v30 = dCopy;
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
    dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"stream group not found for UUID %@", dCopy];
    v38[0] = dCopy2;
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

  callbackCopy[2](callbackCopy, v19);
}

- (void)removeExternalOutputStreamGroupID:(id)d streamID:(id)iD withCallback:(id)callback
{
  v48[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  callbackCopy = callback;
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

  v11 = [*(self + 1) objectForKey:dCopy];
  v12 = v11;
  if (!v11)
  {
    v19 = *MEMORY[0x277CCA450];
    v47 = *MEMORY[0x277CCA450];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"can't remove stream %@ for unknown group %@", iDCopy, dCopy];
    v48[0] = dCopy;
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

  outputStreams = [v11 outputStreams];
  v14 = [outputStreams objectForKey:iDCopy];

  if (!v14)
  {
    v26 = *MEMORY[0x277CCA450];
    v45 = *MEMORY[0x277CCA450];
    dCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't remove unknown stream %@ in group %@", iDCopy, dCopy];
    v46 = dCopy2;
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

  outputStreams2 = [v12 outputStreams];
  [outputStreams2 removeObjectForKey:iDCopy];

  v17 = **(Phase::Logger::GetInstance(v16) + 928);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v38 = "ExternalStreamManager.mm";
    v39 = 1024;
    v40 = 1040;
    v41 = 2112;
    v42 = iDCopy;
    v43 = 2112;
    v44 = dCopy;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external output stream %@ from group %@", buf, 0x26u);
  }

  outputStreams3 = [v12 outputStreams];
  if ([outputStreams3 count])
  {
  }

  else
  {
    inputStreams = [v12 inputStreams];
    if ([inputStreams count])
    {
    }

    else
    {
      controllingClientID = [v12 controllingClientID];
      v32 = controllingClientID == 0;

      if (v32)
      {
        v33 = **(Phase::Logger::GetInstance([*(self + 1) removeObjectForKey:dCopy]) + 928);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v38 = "ExternalStreamManager.mm";
          v39 = 1024;
          v40 = 1046;
          v41 = 2112;
          v42 = dCopy;
          _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed external stream group %@", buf, 0x1Cu);
        }
      }
    }
  }

  v25 = 0;
LABEL_21:
  callbackCopy[2](callbackCopy, v25);
  if (!v25)
  {
    stateChangeBlock = [v12 stateChangeBlock];
    v35 = stateChangeBlock == 0;

    if (!v35)
    {
      stateChangeBlock2 = [v12 stateChangeBlock];
      (stateChangeBlock2)[2](stateChangeBlock2, dCopy, iDCopy, 1);
    }
  }
}

- (BOOL)setPauseExternalOutputStreamGroupID:(id)d streamID:(id)iD isPaused:(BOOL)paused error:(id *)error
{
  pausedCopy = paused;
  v41[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
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

  v12 = [*(self + 1) objectForKey:dCopy];
  v13 = v12;
  if (!v12)
  {
    v20 = *MEMORY[0x277CCA450];
    v40 = *MEMORY[0x277CCA450];
    v21 = "resume";
    if (pausedCopy)
    {
      v21 = "pause";
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find stream group %@ to %s", dCopy, v21];
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

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v15];
      *error = v26 = 0;
      goto LABEL_27;
    }

LABEL_22:
    v26 = 0;
    goto LABEL_27;
  }

  outputStreams = [v12 outputStreams];
  v15 = [outputStreams objectForKey:iDCopy];

  if (!v15)
  {
    v27 = *MEMORY[0x277CCA450];
    v28 = "resume";
    if (pausedCopy)
    {
      v28 = "pause";
    }

    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find output stream %@ to %s", iDCopy, v28, v27];
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

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v30];
    }

    v15 = 0;
    goto LABEL_22;
  }

  [v15 setStreamPaused:pausedCopy];
  *buf = 0;
  *&buf[8] = 0;
  [iDCopy getUUIDBytes:buf];
  v17 = *buf;
  v16 = *&buf[8];
  HasExternalStream = Phase::Controller::VoiceManager::HasExternalStream(*(self + 2), *buf);
  if (HIDWORD(HasExternalStream) || !HasExternalStream)
  {
    v19 = **(self + 2);
    if (pausedCopy)
    {
      Phase::Controller::VoiceManager::Implementation::PauseExternalStream(v19, v17, v16);
    }

    else
    {
      Phase::Controller::VoiceManager::Implementation::ResumeExternalStream(v19, v17, v16);
    }
  }

  if (error)
  {
    *error = 0;
  }

  v26 = 1;
LABEL_27:

  return v26;
}

- (BOOL)streamIsPaused:(id)paused error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  pausedCopy = paused;
  errorCopy = error;
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

  if (error)
  {
    *error = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [*(self + 1) allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v8)
  {
    v9 = *v25;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v24 + 1) + 8 * v10)];
      outputStreams = [v11 outputStreams];
      v13 = [outputStreams objectForKey:pausedCopy];

      if (v13)
      {
        break;
      }

      inputStreams = [v11 inputStreams];
      v15 = [inputStreams objectForKey:pausedCopy];

      if (v15)
      {
        isStreamPaused = [v15 isStreamPaused];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    isStreamPaused = [v13 isStreamPaused];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v34 = *MEMORY[0x277CCA450];
  pausedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", pausedCopy];
  v35 = pausedCopy;
  allKeys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [allKeys objectForKeyedSubscript:v16];
    *buf = 136315650;
    v29 = "ExternalStreamManager.mm";
    v30 = 1024;
    v31 = 1151;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (errorCopy)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:allKeys];
    *errorCopy = isStreamPaused = 0;
  }

  else
  {
    isStreamPaused = 0;
  }

LABEL_21:

  return isStreamPaused;
}

- (id)formatForStream:(id)stream error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
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

  if (error)
  {
    *error = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [*(self + 1) allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * v10)];
      outputStreams = [v11 outputStreams];
      v13 = [outputStreams objectForKey:streamCopy];

      if (v13)
      {
        break;
      }

      inputStreams = [v11 inputStreams];
      v15 = [inputStreams objectForKey:streamCopy];

      if (v15)
      {
        definition = [v15 definition];
        format = [definition format];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    definition = [v13 definition];
    format = [definition format];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v35 = *MEMORY[0x277CCA450];
  streamCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", streamCopy];
  v36 = streamCopy;
  allKeys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [allKeys objectForKeyedSubscript:v16];
    *buf = 136315650;
    v30 = "ExternalStreamManager.mm";
    v31 = 1024;
    v32 = 1186;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (errorCopy)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:allKeys];
    *errorCopy = format = 0;
  }

  else
  {
    format = 0;
  }

LABEL_21:

  return format;
}

- (int64_t)typeForStream:(id)stream error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
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

  if (error)
  {
    *error = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [*(self + 1) allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * v10)];
      outputStreams = [v11 outputStreams];
      v13 = [outputStreams objectForKey:streamCopy];

      if (v13)
      {
        break;
      }

      inputStreams = [v11 inputStreams];
      v15 = [inputStreams objectForKey:streamCopy];

      if (v15)
      {
        definition = [v15 definition];
        streamType = [definition streamType];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    definition = [v13 definition];
    streamType = [definition streamType];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v35 = *MEMORY[0x277CCA450];
  streamCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", streamCopy];
  v36 = streamCopy;
  allKeys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [allKeys objectForKeyedSubscript:v16];
    *buf = 136315650;
    v30 = "ExternalStreamManager.mm";
    v31 = 1024;
    v32 = 1221;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (errorCopy)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:allKeys];
    *errorCopy = streamType = 0;
  }

  else
  {
    streamType = 0;
  }

LABEL_21:

  return streamType;
}

- (unsigned)sessionIdForStream:(id)stream error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  errorCopy = error;
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

  if (error)
  {
    *error = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [*(self + 1) allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v9 = *v26;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = [*(self + 1) objectForKey:*(*(&v25 + 1) + 8 * v10)];
      outputStreams = [v11 outputStreams];
      v13 = [outputStreams objectForKey:streamCopy];

      if (v13)
      {
        break;
      }

      inputStreams = [v11 inputStreams];
      v15 = [inputStreams objectForKey:streamCopy];

      if (v15)
      {
        definition = [v15 definition];
        audioSessionToken = [definition audioSessionToken];
        v13 = v15;
        goto LABEL_20;
      }

      if (v8 == ++v10)
      {
        v8 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    definition = [v13 definition];
    audioSessionToken = [definition audioSessionToken];
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:

  v16 = *MEMORY[0x277CCA450];
  v35 = *MEMORY[0x277CCA450];
  streamCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", streamCopy];
  v36 = streamCopy;
  allKeys = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v19 = **(Phase::Logger::GetInstance(v18) + 928);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [allKeys objectForKeyedSubscript:v16];
    *buf = 136315650;
    v30 = "ExternalStreamManager.mm";
    v31 = 1024;
    v32 = 1257;
    v33 = 2112;
    v34 = v20;
    _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@", buf, 0x1Cu);
  }

  if (errorCopy)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:allKeys];
    *errorCopy = audioSessionToken = 0;
  }

  else
  {
    audioSessionToken = 0;
  }

LABEL_21:

  return audioSessionToken;
}

- (shared_ptr<Phase::Controller::StreamRenderer>)createRendererForStream:(id)stream outputChannelLayout:(unsigned int)layout normalize:(BOOL)normalize targetLKFS:(double)s error:(id *)error
{
  v33 = v7;
  v48 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
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

  if (error)
  {
    *error = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  allKeys = [*(self + 1) allKeys];
  v11 = [allKeys countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [*(self + 1) objectForKey:v14];
        outputStreams = [v15 outputStreams];
        v17 = [outputStreams objectForKey:streamCopy];

        if (v17)
        {
          v14;

          v32 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:layout];
          v24 = objc_alloc(MEMORY[0x277CB83A8]);
          [*(self + 4) sampleRate];
          Phase::Logger::GetInstance([v24 initStandardFormatWithSampleRate:v32 channelLayout:?]);
          definition = [v17 definition];
          v26 = [definition streamType] == 1;

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

      v11 = [allKeys countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277CCA450];
  v45 = *MEMORY[0x277CCA450];
  streamCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"stream not found for UUID %@", streamCopy];
  v46 = streamCopy;
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

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346924147 userInfo:v20];
  }

  *v33 = 0;
  v33[1] = 0;

  result.var1 = v30;
  result.var0 = v29;
  return result;
}

- (unint64_t)addControllerPauseStateDidUpdateCallback:(id)callback
{
  callbackCopy = callback;
  v5 = *(self + 17) + 1;
  *(self + 17) = v5;
  v6 = _Block_copy(callbackCopy);
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

- (void)removeControllerPauseStateDidUpdateCallback:(unint64_t)callback
{
  v5 = *(self + 13);
  if (v5)
  {
    v6 = (self + 96);
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      callbackCopy = callback;
      if (v5 <= callback)
      {
        callbackCopy = callback % v5;
      }
    }

    else
    {
      callbackCopy = (v5 - 1) & callback;
    }

    v23 = v3;
    v24 = v4;
    v9 = *v6;
    v10 = *(*v6 + 8 * callbackCopy);
    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        v12 = v5 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == callback)
          {
            if (v11[2] == callback)
            {
              if (v7.u32[0] > 1uLL)
              {
                if (v5 <= callback)
                {
                  callback %= v5;
                }
              }

              else
              {
                callback &= v12;
              }

              v14 = *(v9 + 8 * callback);
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

              if (v16 != callback)
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

                if (v17 != callback)
                {
LABEL_37:
                  *(v9 + 8 * callback) = 0;
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

                if (v19 != callback)
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

            if (v13 != callbackCopy)
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

- (void)updateController:(id)controller pauseState:(BOOL)state
{
  stateCopy = state;
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
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
        outputStreams = [v10 outputStreams];
        v12 = [outputStreams objectForKey:controllerCopy];

        if (v12)
        {
          [v12 setControllerPaused:stateCopy];
          for (j = *(self + 14); j; j = *j)
          {
            v14 = _Block_copy(j[3]);
            v14[2](v14, v9, controllerCopy, stateCopy);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (void)gatherDebugInformation:(id)information
{
  v54 = *MEMORY[0x277D85DE8];
  informationCopy = information;
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
        controllingClientID = [v4 controllingClientID];
        [(PHASEExternalStreamGroupDebugInfo *)v38 setControlled:controllingClientID != 0];

        v6 = objc_opt_new();
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        outputStreams = [v4 outputStreams];
        v7 = [outputStreams countByEnumeratingWithState:&v43 objects:v52 count:16];
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
                objc_enumerationMutation(outputStreams);
              }

              v10 = *(*(&v43 + 1) + 8 * v9);
              v11 = objc_alloc_init(PHASEExternalStreamDebugInfo);
              outputStreams2 = [v4 outputStreams];
              v13 = [outputStreams2 objectForKey:v10];

              -[PHASEExternalStreamDebugInfo setStreamPaused:](v11, "setStreamPaused:", [v13 isStreamPaused]);
              [(PHASEExternalStreamDebugInfo *)v11 setInput:0];
              definition = [v13 definition];
              format = [definition format];
              [(PHASEExternalStreamDebugInfo *)v11 setClientFormat:format];

              -[PHASEExternalStreamGroupDebugInfo setControllerPaused:](v38, "setControllerPaused:", [v13 isControllerPaused]);
              uUIDString = [v10 UUIDString];
              [v6 setObject:v11 forKey:uUIDString];

              ++v9;
            }

            while (v7 != v9);
            v7 = [outputStreams countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v7);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        inputStreams = [v4 inputStreams];
        v17 = [inputStreams countByEnumeratingWithState:&v39 objects:v51 count:16];
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
                objc_enumerationMutation(inputStreams);
              }

              v20 = *(*(&v39 + 1) + 8 * v19);
              v21 = objc_alloc_init(PHASEExternalStreamDebugInfo);
              inputStreams2 = [v4 inputStreams];
              v23 = [inputStreams2 objectForKey:v20];

              -[PHASEExternalStreamDebugInfo setStreamPaused:](v21, "setStreamPaused:", [v23 isStreamPaused]);
              [(PHASEExternalStreamDebugInfo *)v21 setInput:1];
              definition2 = [v23 definition];
              format2 = [definition2 format];
              [(PHASEExternalStreamDebugInfo *)v21 setClientFormat:format2];

              uUIDString2 = [v20 UUIDString];
              [v6 setObject:v21 forKey:uUIDString2];

              ++v19;
            }

            while (v17 != v19);
            v17 = [inputStreams countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v17);
        }

        [(PHASEExternalStreamGroupDebugInfo *)v38 setStreams:v6];
        uUIDString3 = [v34 UUIDString];
        [v31 setObject:v38 forKey:uUIDString3];

        ++v35;
      }

      while (v35 != v32);
      v32 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v32);
  }

  informationCopy[2](informationCopy, v31, 0);
}

- (void)onSessionVolume:(unsigned int)volume volume:(float)a4
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7 = **(selfCopy + 7);
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
  *(v8 + 8) = selfCopy;
  *(v8 + 16) = volume;
  *(v8 + 20) = a4;
  Phase::LockFreeQueueSPSC::CommitBytes(v7, 24);
  atomic_store(0, (v7 + 40));
}

- (void)onSessionVolume:(id)volume
{
  v23 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  selfCopy = self;
  v6 = _Block_copy(volumeCopy);
  v7 = **(selfCopy + 7);
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
  v8[1] = selfCopy;
  v8[2] = v6;
  Phase::LockFreeQueueSPSC::CommitBytes(v7, 24);
  atomic_store(0, (v7 + 40));
}

- (void)onRouteChanged:(RouteChangeInfo)changed
{
  v43 = *MEMORY[0x277D85DE8];
  [*(self + 18) setCurrentRoute:{*&changed.var0, changed.var2}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
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

        v4 = [*(selfCopy + 1) objectForKey:*(*(&v37 + 1) + 8 * i)];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        outputStreams = [v4 outputStreams];
        allKeys = [outputStreams allKeys];

        v6 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v6)
        {
          v7 = *v34;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v34 != v7)
              {
                objc_enumerationMutation(allKeys);
              }

              v9 = *(*(&v33 + 1) + 8 * j);
              outputStreams2 = [v4 outputStreams];
              v11 = [outputStreams2 objectForKey:v9];

              definition = [v11 definition];
              v13 = [definition streamType] == 1;

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
                      definition2 = [v11 definition];
                      properties = [definition2 properties];
                      v18 = properties == 0;

                      if (v18)
                      {
                        integerValue = 2;
                      }

                      else
                      {
                        definition3 = [v11 definition];
                        properties2 = [definition3 properties];
                        v21 = [properties2 objectForKeyedSubscript:@"VoiceBandwidth"];

                        if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          integerValue = [v21 integerValue];
                        }

                        else
                        {
                          integerValue = 2;
                        }
                      }

                      v29 = v15;
                      v30 = v14;
                      if (v14)
                      {
                        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      [(ExternalStreamManager *)selfCopy setVolumeEQPreset:&v29 bandwidthType:integerValue];
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

            v6 = [allKeys countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v6);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v25);
  }
}

- (void)setVolumeEQPreset:(shared_ptr<Phase:(int64_t)preset :Controller::StreamRenderer>)a3 bandwidthType:
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

- (void)setExternalInputStreamSessionMute:(uint64_t)mute isMuted:fadeTimeInSeconds:
{

  JUMPOUT(0x23EE864A0);
}

- (void)setExternalInputStreamSessionMute:isMuted:fadeTimeInSeconds:
{
  v3 = *(self + 8);
  if (v3)
  {
    LODWORD(v2) = *(self + 24);
    [v3 _fadeInputStreamsInSessionToken:*(self + 16) isMuted:*(self + 20) fadeTimeInSeconds:0 synchronous:v2];
  }
}

- (void)updateExternalInputStreamRecordingAbility:(id *)ability streamID:canRecord:
{

  JUMPOUT(0x23EE864A0);
}

- (void)updateExternalInputStreamRecordingAbility:streamID:canRecord:
{
  v2 = *(self + 8);
  if (v2)
  {
    [v2 _updateRecordingAbility:*(self + 16) streamID:*(self + 24) canRecord:*(self + 32)];
  }
}

- (void)onSessionVolume:(uint64_t)volume volume:
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
  obj = [*(*(self + 8) + 8) allKeys];
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

        v5 = [*(*(self + 8) + 8) objectForKey:*(*(&v28 + 1) + 8 * v4)];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        outputStreams = [v5 outputStreams];
        allKeys = [outputStreams allKeys];

        v8 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = *v25;
          while (2)
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(allKeys);
              }

              v11 = *(*(&v24 + 1) + 8 * i);
              outputStreams2 = [v5 outputStreams];
              v13 = [outputStreams2 objectForKey:v11];

              definition = [v13 definition];
              v15 = [definition audioSessionToken] == *(self + 16);

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
                        AudioUnitSetParameter([v18 audioUnit], 0x76657176u, 0, 0, *(self + 20), 0);
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

            v8 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)onSessionVolume:(uint64_t)volume
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
  obj = [*(*(self + 8) + 8) allKeys];
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

        v5 = [*(*(self + 8) + 8) objectForKey:*(*(&v30 + 1) + 8 * i)];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        outputStreams = [v5 outputStreams];
        allKeys = [outputStreams allKeys];

        v8 = [allKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = *v27;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v27 != v9)
              {
                objc_enumerationMutation(allKeys);
              }

              v11 = *(*(&v26 + 1) + 8 * j);
              outputStreams2 = [v5 outputStreams];
              v13 = [outputStreams2 objectForKey:v11];

              definition = [v13 definition];
              v15 = [definition streamType] == 1;

              if (v15)
              {
                if (v3 < 0.0)
                {
                  v16 = *(self + 16);
                  definition2 = [v13 definition];
                  v3 = (*(v16 + 16))(v16, [definition2 audioSessionToken]);
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

            v8 = [allKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
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