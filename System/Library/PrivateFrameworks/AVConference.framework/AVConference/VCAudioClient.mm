@interface VCAudioClient
- (BOOL)isMuted;
- (BOOL)setupAudioIO;
- (BOOL)startAudioSessionWithError:(id *)error;
- (BOOL)startWithError:(id *)error;
- (BOOL)stopAudioSessionWithError:(id *)error;
- (BOOL)stopWithError:(id *)error;
- (VCAudioClient)initWithProcessId:(int)id;
- (uint64_t)setupAudioIO;
- (void)cleanupAudioIO;
- (void)cleanupSpatialAudio;
- (void)dealloc;
- (void)serverDidDie;
- (void)setAudioSessionProperties:(id)properties;
- (void)setIsMuted:(BOOL)muted;
- (void)setupSpatialAudio;
- (void)startAudioIOWithCompletionHandler:(id)handler;
- (void)stopAudioIOWithCompletionHandler:(id)handler;
@end

@implementation VCAudioClient

- (VCAudioClient)initWithProcessId:(int)id
{
  v18 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCAudioClient;
  v4 = [(VCAudioClient *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_processId = id;
    v4->_state = 0;
    v4->_audioSession = +[VCAudioSession sharedVoiceChatInstance];
    v5->_audioManager = +[VCAudioManager sharedVoiceChatInstance];
    pthread_mutex_init(&v5->_stateMutex, 0);
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioClient-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCAudioClient initWithProcessId:]";
        v14 = 1024;
        v15 = 70;
        v16 = 2048;
        v17 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioClient-init %p", buf, 0x26u);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_mutex_destroy(&self->_stateMutex);
  v3.receiver = self;
  v3.super_class = VCAudioClient;
  [(VCAudioClient *)&v3 dealloc];
}

- (BOOL)isMuted
{
  if (!VCFeatureFlagManager_SessionBasedMutingEnabled())
  {
    return self->_muted;
  }

  audioSession = self->_audioSession;

  return [(VCAudioSession *)audioSession microphoneMuted];
}

- (void)setIsMuted:(BOOL)muted
{
  self->_muted = muted;
  if (VCFeatureFlagManager_SessionBasedMutingEnabled())
  {
    [(VCAudioSession *)self->_audioSession setMicrophoneMuted:self->_muted];
  }

  audioManager = self->_audioManager;
  muted = self->_muted;

  [(VCAudioManager *)audioManager setMicrophoneMuted:muted];
}

- (void)setAudioSessionProperties:(id)properties
{
  self->_requestedSettings.isValid = [VCAudioSession convertAudioSessionProperties:properties operatingMode:&self->_requestedSettings.operatingMode deviceRole:&self->_requestedSettings.deviceRole enableAudioPreWarming:&self->_requestedSettings.enableAudioPreWarming audioClockDeviceEnabled:&self->_requestedSettings.audioClockDeviceEnabled networkUplinkClockUsesBaseband:&self->_requestedSettings.networkUplinkClockUsesBaseband];
  [(VCAudioSession *)self->_audioSession setAudioSessionProperties:properties];
  v5 = [properties objectForKeyedSubscript:@"kAUVoiceIOProperty_MediaPlaybackOnExternalDevice"];
  if (v5)
  {
    v6 = v5;
    v7 = +[VCAudioManager sharedVoiceChatInstance];
    bOOLValue = [v6 BOOLValue];

    [v7 setMediaPlaybackOnExternalDevice:bOOLValue];
  }
}

- (BOOL)startWithError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__13;
  v21 = __Block_byref_object_dispose__13;
  v22 = 0;
  v5 = micro();
  self->_lastAudioSessionStart = v5;
  if (self->_requestedSettings.isValid)
  {
    if (self->_requestedSettings.enableAudioPreWarming)
    {
      v6 = dispatch_semaphore_create(0);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __32__VCAudioClient_startWithError___block_invoke;
      v16[3] = &unk_1E85F6D38;
      v16[6] = &v17;
      v16[4] = v6;
      v16[5] = &v23;
      [(VCAudioClient *)self startAudioIOWithCompletionHandler:v16];
      v7 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v6, v7))
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCAudioClient startWithError:v11];
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v8 = [(VCAudioClient *)self performSelector:sel_logPrefix];
          }

          else
          {
            v8 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v28 = v12;
              v29 = 2080;
              v30 = "[VCAudioClient startWithError:]";
              v31 = 1024;
              v32 = 183;
              v33 = 2112;
              v34 = v8;
              v35 = 2048;
              selfCopy = self;
              _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Timeout occurred while waiting for audio IO start!", buf, 0x30u);
              if (!error)
              {
                goto LABEL_28;
              }

              goto LABEL_26;
            }
          }
        }

        if (error)
        {
LABEL_26:
          v10 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32005 detailCode:0 description:@"Timeout while starting the client"];
          goto LABEL_27;
        }
      }

      else if (error)
      {
        v10 = v18[5];
LABEL_27:
        *error = v10;
      }

LABEL_28:
      v14 = v18[5];
      dispatch_release(v6);
      v9 = *(v24 + 24);
      goto LABEL_29;
    }

    v9 = [(VCAudioClient *)self startAudioSessionWithError:error];
    *(v24 + 24) = v9;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioClient startWithError:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCAudioClient startWithError:];
      }
    }

    v9 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32006 detailCode:0 description:@"Session parameters have not been set"];
    }
  }

LABEL_29:
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v9 & 1;
}

intptr_t __32__VCAudioClient_startWithError___block_invoke(void *a1, char a2, void *a3)
{
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

- (BOOL)stopWithError:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  if (self->_selectedSettings.enableAudioPreWarming)
  {
    v5 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__VCAudioClient_stopWithError___block_invoke;
    v15[3] = &unk_1E85F6D60;
    v15[7] = &v16;
    v15[8] = error;
    v15[5] = v5;
    v15[6] = &v22;
    v15[4] = self;
    [(VCAudioClient *)self stopAudioIOWithCompletionHandler:v15];
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioClient stopWithError:v10];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCAudioClient *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v27 = v11;
            v28 = 2080;
            v29 = "[VCAudioClient stopWithError:]";
            v30 = 1024;
            v31 = 219;
            v32 = 2112;
            v33 = v7;
            v34 = 2048;
            selfCopy = self;
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Timeout occurred while waiting for audio IO stop!", buf, 0x30u);
            if (!error)
            {
              goto LABEL_18;
            }

            goto LABEL_16;
          }
        }
      }

      if (error)
      {
LABEL_16:
        v9 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32005 detailCode:0 description:@"Timeout while stopping the client"];
        goto LABEL_17;
      }
    }

    else if (error)
    {
      v9 = v17[5];
LABEL_17:
      *error = v9;
    }

LABEL_18:
    v13 = v17[5];
    dispatch_release(v5);
    v8 = *(v23 + 24);
    goto LABEL_19;
  }

  v8 = [(VCAudioClient *)self stopAudioSessionWithError:error];
  *(v23 + 24) = v8;
LABEL_19:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v8 & 1;
}

intptr_t __31__VCAudioClient_stopWithError___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCAudioClient stopWithError:]_block_invoke";
      v14 = 1024;
      v15 = 208;
      v16 = 2048;
      v17 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioClient=%p", &v10, 0x26u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  if ((a2 & 1) == 0 && *(a1 + 64))
  {
    *(*(*(a1 + 56) + 8) + 40) = a3;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)startAudioSessionWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = -1431655766;
  v13 = NAN;
  *v14 = -1;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14[8] = v5;
  *&v14[24] = v5;
  [(VCAudioClient *)self lock];
  if (self->_state)
  {
    [(VCAudioSession *)self->_audioSession refreshAudioSessionProperties];
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        processId = self->_processId;
        state = self->_state;
        *buf = 136316162;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAudioClient startAudioSessionWithError:]";
        *&buf[22] = 1024;
        *&buf[24] = 271;
        *&buf[28] = 1024;
        *&buf[30] = processId;
        *&buf[34] = 1024;
        *&buf[36] = state;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d client is already running! (client PID=%d) state=%d", buf, 0x28u);
      }
    }

    LOBYTE(v10) = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32025 detailCode:0 description:@"Audio client was already started"];
    }
  }

  else
  {
    [(VCAudioManager *)self->_audioManager getPreferredFormat:v14 blockSize:&v13 vpOperatingMode:&v15 forOperatingMode:self->_requestedSettings.operatingMode deviceRole:self->_requestedSettings.deviceRole suggestedFormat:0];
    v11 = objc_alloc_init(VCAudioSessionMediaProperties);
    [(VCAudioSessionMediaProperties *)v11 setPreferredSampleRate:*v14];
    [(VCAudioSessionMediaProperties *)v11 setPreferredBlockSize:v13];
    [(VCAudioSessionMediaProperties *)v11 setOperatingMode:self->_requestedSettings.operatingMode];
    [(VCAudioSessionMediaProperties *)v11 setVpOperatingMode:v15];
    *buf = *v14;
    *&buf[16] = *&v14[16];
    *&buf[32] = *&v14[32];
    [(VCAudioSessionMediaProperties *)v11 setInputFormat:buf];
    *buf = *v14;
    *&buf[16] = *&v14[16];
    *&buf[32] = *&v14[32];
    [(VCAudioSessionMediaProperties *)v11 setOutputFormat:buf];
    [(VCAudioSessionMediaProperties *)v11 setProcessId:self->_processId];
    [(VCAudioSessionMediaProperties *)v11 setNetworkUplinkClockUsesBaseband:self->_requestedSettings.networkUplinkClockUsesBaseband];
    [(VCAudioSessionMediaProperties *)v11 setAudioClockDeviceEnabled:self->_requestedSettings.audioClockDeviceEnabled];
    v10 = [(VCAudioSession *)self->_audioSession startClient:self clientType:2 mediaProperties:v11 sessionRef:0];
    if (v10)
    {
      self->_state = 5;
      self->_selectedSettings = self->_requestedSettings;
    }
  }

  [(VCAudioClient *)self unlock];
  return v10;
}

- (BOOL)stopAudioSessionWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  [(VCAudioClient *)self lock];
  state = self->_state;
  if (state == 5)
  {
    [(VCAudioSession *)self->_audioSession stopClient:self];
    self->_state = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      processId = self->_processId;
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioClient stopAudioSessionWithError:]";
      v13 = 1024;
      v14 = 296;
      v15 = 1024;
      v16 = processId;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stop requested but the client is not started! (client PID=%d)", &v9, 0x22u);
    }
  }

  [(VCAudioClient *)self unlock];
  return state == 5;
}

- (void)setupSpatialAudio
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[VCHardwareSettings isSpatialAudioSupported])
  {
    v3 = [(VCAudioManager *)self->_audioManager registerAudioSessionId:self->_audioSessionId maxChannelCountMic:1 maxChannelCountSpeaker:32 spatialMetadata:0];
    if (v3 < 0)
    {
      v4 = v3;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = 136315906;
          v8 = v5;
          v9 = 2080;
          v10 = "[VCAudioClient setupSpatialAudio]";
          v11 = 1024;
          v12 = 319;
          v13 = 1024;
          v14 = v4;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Failed to register for spatial audio. status=%08x", &v7, 0x22u);
        }
      }
    }
  }
}

- (void)cleanupSpatialAudio
{
  if (+[VCHardwareSettings isSpatialAudioSupported])
  {
    audioManager = self->_audioManager;
    audioSessionId = self->_audioSessionId;

    [(VCAudioManager *)audioManager unregisterAudioSessionId:audioSessionId];
  }
}

- (BOOL)setupAudioIO
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = xmmword_1DBD453C0;
  v26 = xmmword_1DBD453D0;
  v28 = 0;
  v3 = +[VCHardwareSettings deviceClass];
  v4 = dbl_1DBD49580[+[VCHardwareSettings deviceClass]== 8];
  if (v3 == 8)
  {
    v5 = 48000;
  }

  else
  {
    v5 = 24000;
  }

  IntValueForKey = VCDefaults_GetIntValueForKey(@"forceAudioSampleRate", v5);
  v27 = (VCDefaults_GetDoubleValueForKey(@"forceAudioBlockSize", v4) * IntValueForKey);
  self->_audioSessionId = VCUniqueIDGenerator_GenerateID();
  self->_selectedSettings = self->_requestedSettings;
  [(VCAudioClient *)self setupSpatialAudio];
  v9 = 0u;
  v10 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  LODWORD(v9) = self->_audioSessionId;
  *(&v9 + 1) = *&self->_selectedSettings.operatingMode;
  BYTE4(v10) = 3;
  LODWORD(v11) = self->_processId;
  BYTE12(v11) = 1;
  DWORD2(v12) = 1;
  v13 = 0uLL;
  BYTE8(v21) = self->_selectedSettings.networkUplinkClockUsesBaseband;
  *&v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"parent=%p", self];
  v6 = [[VCAudioIO alloc] initWithConfiguration:&v9];
  v7 = v6;
  self->_audioIO = v6;
  if (v6)
  {
    [(VCAudioIO *)v6 setClientFormat:&IntValueForKey];
  }

  else
  {
    [(VCAudioClient *)self setupAudioIO];
  }

  return v7 != 0;
}

- (void)cleanupAudioIO
{
  [(VCAudioClient *)self setAudioIO:0];
  [(VCAudioClient *)self cleanupSpatialAudio];
  self->_audioSessionId = 0;
}

- (void)startAudioIOWithCompletionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  [(VCAudioClient *)self lock:MEMORY[0x1E69E9820]];
  state = self->_state;
  if (state == 5 || state == 0)
  {
    [(VCAudioClient *)self setupAudioIO];
  }

  if (self->_audioIO)
  {
    v7 = self->_state;
    if (v7)
    {
      if (v7 != 5)
      {
        if (v7 == 3)
        {
          [(VCAudioClient *)self unlock];
          if (!handler)
          {
            return;
          }

          v8 = MEMORY[0x1E696ABC0];
          v9 = @"Audio IO is busy";
          v10 = 32026;
          goto LABEL_32;
        }

        [(VCAudioSession *)self->_audioSession refreshAudioSessionProperties];
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            processId = self->_processId;
            v23 = self->_state;
            *buf = 136316162;
            v28 = v20;
            v29 = 2080;
            v30 = "[VCAudioClient startAudioIOWithCompletionHandler:]";
            v31 = 1024;
            v32 = 459;
            v33 = 1024;
            v34 = processId;
            v35 = 1024;
            v36 = v23;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d client is already running! (client PID=%d) state=%d", buf, 0x28u);
          }
        }

        [(VCAudioClient *)self unlock];
        if (handler)
        {
          v8 = MEMORY[0x1E696ABC0];
          v9 = @"Audio client was already started";
          v10 = 32025;
LABEL_32:
          (*(handler + 2))(handler, 0, [v8 AVConferenceServiceError:v10 detailCode:0 description:v9]);
          return;
        }

        return;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_state;
          *buf = 136315906;
          v28 = v16;
          v29 = 2080;
          v30 = "[VCAudioClient startAudioIOWithCompletionHandler:]";
          v31 = 1024;
          v32 = 449;
          v33 = 1024;
          v34 = v18;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Upgrade detected. Need to start audioIO, state = %d", buf, 0x22u);
        }
      }

      [(VCAudioSession *)self->_audioSession refreshAudioSessionProperties];
      v19 = 4;
    }

    else
    {
      v19 = 1;
    }

    self->_state = v19;
    [(VCAudioClient *)self unlock];
    [(VCAudioIO *)self->_audioIO startWithCompletionHandler:&v26];
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v13 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v14 = self->_processId;
        v15 = self->_state;
        *buf = 136316162;
        v28 = v11;
        v29 = 2080;
        v30 = "[VCAudioClient startAudioIOWithCompletionHandler:]";
        v31 = 1024;
        v32 = 428;
        v33 = 1024;
        v34 = v14;
        v35 = 1024;
        v36 = v15;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d AudioIO is nil! (client PID=%d), state:%d", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      v24 = self->_processId;
      v25 = self->_state;
      *buf = 136316162;
      v28 = v11;
      v29 = 2080;
      v30 = "[VCAudioClient startAudioIOWithCompletionHandler:]";
      v31 = 1024;
      v32 = 428;
      v33 = 1024;
      v34 = v24;
      v35 = 1024;
      v36 = v25;
      _os_log_fault_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_FAULT, " [%s] %s:%d AudioIO is nil! (client PID=%d), state:%d", buf, 0x28u);
    }
  }

  [(VCAudioClient *)self unlock];
  if (handler)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = @"Audio IO is nil";
    v10 = 32015;
    goto LABEL_32;
  }
}

uint64_t __51__VCAudioClient_startAudioIOWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) lock];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 28);
      v13 = 136316162;
      v14 = v6;
      v15 = 2080;
      v16 = "[VCAudioClient startAudioIOWithCompletionHandler:]_block_invoke";
      v17 = 1024;
      v18 = 399;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Completion handler. State=%d, success=%d", &v13, 0x28u);
    }
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 28);
  if (v10 == 4)
  {
    [*(v9 + 152) stopClient:?];
    if (a2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *(*(a1 + 32) + 28) = v11;
  }

  else if (v10 == 1)
  {
    if (a2)
    {
      *(v9 + 28) = 2;
    }

    else
    {
      *(v9 + 28) = 0;
      [*(a1 + 32) cleanupAudioIO];
    }
  }

  [*(a1 + 32) unlock];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

- (void)stopAudioIOWithCompletionHandler:(id)handler
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCAudioClient_stopAudioIOWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E85F5518;
  v5[4] = self;
  v5[5] = handler;
  [(VCAudioClient *)self lock];
  if (self->_state - 1 <= 1)
  {
    self->_state = 3;
    [(VCAudioClient *)self unlock];
    [(VCAudioIO *)self->_audioIO stopWithCompletionHandler:v5];
    return;
  }

  [(VCAudioClient *)self unlock];
  if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
  {
    [VCAudioClient stopAudioIOWithCompletionHandler:];
    if (!handler)
    {
      return;
    }
  }

  else if (!handler)
  {
    return;
  }

  (*(handler + 2))(handler, 0, [MEMORY[0x1E696ABC0] AVConferenceServiceError:32012 detailCode:0 description:@"Audio client is not running"]);
}

uint64_t __50__VCAudioClient_stopAudioIOWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCAudioClient stopAudioIOWithCompletionHandler:]_block_invoke";
      v15 = 1024;
      v16 = 473;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAudioClient=%p", &v11, 0x26u);
    }
  }

  [*(a1 + 32) lock];
  v9 = *(a1 + 32);
  if (a2)
  {
    *(v9 + 28) = 0;
    [*(a1 + 32) cleanupAudioIO];
  }

  else
  {
    *(v9 + 28) = 2;
  }

  [*(a1 + 32) unlock];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

- (void)serverDidDie
{
  v4[5] = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(2, 0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__VCAudioClient_serverDidDie__block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(global_queue, v4);
}

- (void)startWithError:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_19();
  _os_log_fault_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_FAULT, " [%s] %s:%d Audio client is trying to start but session parameters have not been set! (client PID=%d)", v1, 0x22u);
}

- (void)startWithError:.cold.2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Audio client is trying to start but session parameters have not been set! (client PID=%d)", v2, v3, v4, v5);
}

- (void)startWithError:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 183;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Timeout occurred while waiting for audio IO start!", &v2, 0x1Cu);
}

- (void)stopWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 219;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Timeout occurred while waiting for audio IO stop!", &v2, 0x1Cu);
}

- (uint64_t)setupAudioIO
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *v5 = 136315650;
      *&v5[4] = v2;
      OUTLINED_FUNCTION_0();
      v6 = 375;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate the audio IO", v5, 0x1Cu);
    }
  }

  return [self cleanupAudioIO];
}

- (void)stopAudioIOWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "[VCAudioClient stopAudioIOWithCompletionHandler:]";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d client is not running! (client PID=%d)", v2, *v3, "[VCAudioClient stopAudioIOWithCompletionHandler:]" >> 16, 499);
}

@end