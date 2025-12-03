@interface AVCSession
+ (id)configurationWithSessionMode:(int64_t)mode;
+ (int)mediaNegotiatorVersionWithNegotiationProtocolVersion:(unsigned int)version;
- (AVCSessionConfiguration)configuration;
- (BOOL)isAudioMuted;
- (BOOL)isOneToOneEnabled;
- (BOOL)validateParticipantToAdd:(id)add;
- (BOOL)validateParticipantToRemove:(id)remove;
- (NSData)negotiationData;
- (NSString)description;
- (id)dispatchedConfiguration;
- (id)initPrivateWithTransportToken:(id)token configuration:(id)configuration negotiationData:(id)data delegate:(id)delegate queue:(id)queue;
- (id)negotiationDataForLoopbackParticipant;
- (id)negotiationDataForProtocolVersion:(unsigned int)version;
- (id)newNSErrorWithErrorDictionary:(id)dictionary;
- (tagAVCSessionPresentationInfo)presentationInfo;
- (void)addParticipant:(id)participant;
- (void)addParticipants:(id)participants;
- (void)appendConfigurationToXPCArguments:(id)arguments;
- (void)beginParticipantConfiguration;
- (void)completeAddParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error;
- (void)completeRemoveParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error;
- (void)dealloc;
- (void)deregisterFromNotifications;
- (void)didAddParticipantHandlerWithResult:(id)result;
- (void)endParticipantConfiguration;
- (void)handleEndConfigurationOnParticipantAdd:(id)add;
- (void)participant:(id)participant audioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)participant:(id)participant audioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)participant:(id)participant didReact:(id)react;
- (void)participant:(id)participant frequencyLevelsDidChange:(id)change;
- (void)participant:(id)participant mediaPrioritiesDidChange:(id)change;
- (void)participant:(id)participant mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error;
- (void)participant:(id)participant mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType;
- (void)participant:(id)participant mixingDidStopForMediaType:(unsigned int)type;
- (void)participant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)participant:(id)participant videoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)participant:(id)participant videoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)participantDidStopReacting:(id)reacting;
- (void)registerBlocksForNotifications;
- (void)removeParticipant:(id)participant;
- (void)removeParticipants:(id)participants;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setAudioMuted:(BOOL)muted;
- (void)setAudioPaused:(BOOL)paused;
- (void)setMediaState:(unsigned int)state forMediaType:(unsigned int)type;
- (void)setOneToOneEnabled:(BOOL)enabled;
- (void)setPresentationInfo:(tagAVCSessionPresentationInfo *)info;
- (void)setScreenEnabled:(BOOL)enabled;
- (void)setVideoEnabled:(BOOL)enabled;
- (void)setVideoPaused:(BOOL)paused;
- (void)setVolume:(float)volume;
- (void)setupNotificationQueue:(id)queue;
- (void)start;
- (void)stopWithError:(id)error;
- (void)updateConfiguration:(id)configuration;
- (void)updateOneToOneModeEnabled:(BOOL)enabled;
- (void)validateParticipantConfiguration;
@end

@implementation AVCSession

- (void)dealloc
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v19 = v4;
        v20 = 2080;
        v21 = "[AVCSession dealloc]";
        v22 = 1024;
        v23 = 79;
        v24 = 2112;
        selfCopy2 = [(AVCSession *)self description];
        v6 = " [%s] %s:%d %@";
        v7 = v5;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v19 = v9;
        v20 = 2080;
        v21 = "[AVCSession dealloc]";
        v22 = 1024;
        v23 = 79;
        v24 = 2112;
        selfCopy2 = v3;
        v26 = 2048;
        selfCopy = self;
        v28 = 2112;
        v29 = [(AVCSession *)self description];
        v6 = " [%s] %s:%d %@(%p) %@";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  [(AVCSession *)self setCapabilities:0];
  [(AVCSession *)self deregisterFromNotifications];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    localParticipant = self->_localParticipant;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__AVCSession_dealloc__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = localParticipant;
    dispatch_async(stateQueue, block);
    dispatch_release(self->_stateQueue);
  }

  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcSessionTerminate"];
  objc_storeWeak(&self->_delegate, 0);

  delegateNotificationQueue = self->_delegateNotificationQueue;
  if (delegateNotificationQueue)
  {
    dispatch_release(delegateNotificationQueue);
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v14;
      v20 = 2080;
      v21 = "[AVCSession dealloc]";
      v22 = 1024;
      v23 = 104;
      v24 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-dealloc (%p)", buf, 0x26u);
    }
  }

  v16.receiver = self;
  v16.super_class = AVCSession;
  [(AVCSession *)&v16 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: transportToken[%@] configuration[%@]", NSStringFromClass(v4), self->_transportToken, self->_configuration];
}

- (id)dispatchedConfiguration
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(AVCSessionConfiguration *)self->_configuration copy];

  return v3;
}

- (AVCSessionConfiguration)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AVCSession_configuration__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__AVCSession_configuration__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedConfiguration];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setAudioMuted:(BOOL)muted
{
  mutedCopy = muted;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setAudioMuted:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 132;
        WORD2(v14) = 1024;
        *(&v14 + 6) = mutedCopy;
        v8 = " [%s] %s:%d Session change to muted[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setAudioMuted:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 132;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        selfCopy = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = mutedCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to muted[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setAudioMuted:mutedCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
}

- (void)setVolume:(float)volume
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315906;
        *&v14[4] = v7;
        *&v14[12] = 2080;
        *&v14[14] = "[AVCSession setVolume:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 137;
        WORD2(v15) = 2048;
        *(&v15 + 6) = volume;
        v9 = " [%s] %s:%d Session change to volume[%f]";
        v10 = v8;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316418;
        *&v14[4] = v12;
        *&v14[12] = 2080;
        *&v14[14] = "[AVCSession setVolume:]";
        *&v14[22] = 1024;
        LODWORD(v15) = 137;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v5;
        HIWORD(v15) = 2048;
        selfCopy = self;
        LOWORD(v17) = 2048;
        *(&v17 + 2) = volume;
        v9 = " [%s] %s:%d %@(%p) Session change to volume[%f]";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  *&v6 = volume;
  [(AVCSessionParticipant *)self->_localParticipant setVolume:v6, *v14, *&v14[16], v15, selfCopy, v17];
}

- (void)setOneToOneEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v6;
        v18 = 2080;
        v19 = "[AVCSession setOneToOneEnabled:]";
        v20 = 1024;
        v21 = 142;
        v22 = 1024;
        LODWORD(v23) = enabledCopy;
        v8 = " [%s] %s:%d Session change to oneToOneEnabled[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v17 = v11;
        v18 = 2080;
        v19 = "[AVCSession setOneToOneEnabled:]";
        v20 = 1024;
        v21 = 142;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        selfCopy = self;
        v26 = 1024;
        v27 = enabledCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to oneToOneEnabled[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  stateQueue = self->_stateQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__AVCSession_setOneToOneEnabled___block_invoke;
  v14[3] = &unk_1E85F37A0;
  v14[4] = self;
  v15 = enabledCopy;
  dispatch_async(stateQueue, v14);
}

void __33__AVCSession_setOneToOneEnabled___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) isOneToOneModeEnabled];
  v3 = *(a1 + 40);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  if (v3 == v2)
  {
    if (v4 == v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v10 = *(a1 + 40);
      *buf = 136315906;
      v34 = v8;
      v35 = 2080;
      v36 = "[AVCSession setOneToOneEnabled:]_block_invoke";
      v37 = 1024;
      v38 = 145;
      v39 = 1024;
      LODWORD(v40) = v10;
      v11 = " [%s] %s:%d Session is already configure with oneToOneMode Enabled[%d]";
      v12 = v9;
      v13 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      *buf = 136316418;
      v34 = v20;
      v35 = 2080;
      v36 = "[AVCSession setOneToOneEnabled:]_block_invoke";
      v37 = 1024;
      v38 = 145;
      v39 = 2112;
      v40 = v6;
      v41 = 2048;
      v42 = v22;
      v43 = 1024;
      v44 = v23;
      v11 = " [%s] %s:%d %@(%p) Session is already configure with oneToOneMode Enabled[%d]";
      v12 = v21;
      v13 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_19:
    v24 = [*(a1 + 32) delegateNotificationQueue];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __33__AVCSession_setOneToOneEnabled___block_invoke_15;
    v29[3] = &unk_1E85F37A0;
    v29[4] = *(a1 + 32);
    v30 = *(a1 + 40);
    dispatch_async(v24, v29);
    return;
  }

  if (v4 == v5)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_25;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v16 = *(a1 + 40);
    *buf = 136315906;
    v34 = v14;
    v35 = 2080;
    v36 = "[AVCSession setOneToOneEnabled:]_block_invoke_2";
    v37 = 1024;
    v38 = 153;
    v39 = 1024;
    LODWORD(v40) = v16;
    v17 = " [%s] %s:%d oneToOneModeEnabled[%d]";
    v18 = v15;
    v19 = 34;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_25;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    *buf = 136316418;
    v34 = v25;
    v35 = 2080;
    v36 = "[AVCSession setOneToOneEnabled:]_block_invoke";
    v37 = 1024;
    v38 = 153;
    v39 = 2112;
    v40 = v7;
    v41 = 2048;
    v42 = v27;
    v43 = 1024;
    v44 = v28;
    v17 = " [%s] %s:%d %@(%p) oneToOneModeEnabled[%d]";
    v18 = v26;
    v19 = 54;
  }

  _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_25:
  v31 = @"vcSessionOneOnOneModeEnabled";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionSetOneToOneEnabled" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v32, &v31, 1)}];
}

uint64_t __33__AVCSession_setOneToOneEnabled___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 oneToOneEnabled:v5 didSucceed:1 error:0];
  }

  return result;
}

- (void)updateOneToOneModeEnabled:(BOOL)enabled
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVCSession_updateOneToOneModeEnabled___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  enabledCopy = enabled;
  dispatch_async(stateQueue, block);
}

- (void)setAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setAudioEnabled:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 166;
        WORD2(v14) = 1024;
        *(&v14 + 6) = enabledCopy;
        v8 = " [%s] %s:%d Session change to audio enabled[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setAudioEnabled:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 166;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        selfCopy = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = enabledCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to audio enabled[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setAudioEnabled:enabledCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
}

- (void)setVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setVideoEnabled:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 171;
        WORD2(v14) = 1024;
        *(&v14 + 6) = enabledCopy;
        v8 = " [%s] %s:%d Session change to video enabled[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setVideoEnabled:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 171;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        selfCopy = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = enabledCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to video enabled[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setVideoEnabled:enabledCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
}

- (void)setScreenEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setScreenEnabled:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 176;
        WORD2(v14) = 1024;
        *(&v14 + 6) = enabledCopy;
        v8 = " [%s] %s:%d Session change to screen enabled[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setScreenEnabled:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 176;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        selfCopy = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = enabledCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to screen enabled[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setScreenEnabled:enabledCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
}

- (void)setAudioPaused:(BOOL)paused
{
  pausedCopy = paused;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setAudioPaused:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 181;
        WORD2(v14) = 1024;
        *(&v14 + 6) = pausedCopy;
        v8 = " [%s] %s:%d Session change to audio paused[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setAudioPaused:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 181;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        selfCopy = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = pausedCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to audio paused[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setAudioPaused:pausedCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
}

- (void)setVideoPaused:(BOOL)paused
{
  pausedCopy = paused;
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136315906;
        *&v13[4] = v6;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setVideoPaused:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 186;
        WORD2(v14) = 1024;
        *(&v14 + 6) = pausedCopy;
        v8 = " [%s] %s:%d Session change to video paused[%d]";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 136316418;
        *&v13[4] = v11;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCSession setVideoPaused:]";
        *&v13[22] = 1024;
        LODWORD(v14) = 186;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v5;
        HIWORD(v14) = 2048;
        selfCopy = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = pausedCopy;
        v8 = " [%s] %s:%d %@(%p) Session change to video paused[%d]";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setVideoPaused:pausedCopy, *v13, *&v13[16], v14, selfCopy, v16, v17];
}

- (NSData)negotiationData
{
  result = self->_cachedNegotiationData;
  if (!result)
  {
    result = [(AVCSession *)self negotiationDataForProtocolVersion:0];
    self->_cachedNegotiationData = result;
  }

  return result;
}

+ (int)mediaNegotiatorVersionWithNegotiationProtocolVersion:(unsigned int)version
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [VCDefaults integerValueForKey:@"forceMediaNegotiatorVersion" defaultValue:-1];
  if (v4 > 1)
  {
    if (version == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    if (version)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "+[AVCSession mediaNegotiatorVersionWithNegotiationProtocolVersion:]";
      v13 = 1024;
      v14 = 204;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing mediaNegotiatorVersion=%d", &v9, 0x22u);
    }
  }

  return v4;
}

- (id)negotiationDataForProtocolVersion:(unsigned int)version
{
  v3 = *&version;
  v17 = *MEMORY[0x1E69E9840];
  v5 = [AVCSession mediaNegotiatorVersionWithNegotiationProtocolVersion:?];
  if (v5 == -1)
  {
    [(AVCSession *)v3 negotiationDataForProtocolVersion:v10];
    return *v10;
  }

  else
  {
    v6 = [VCSessionParticipant participantDataWithMediaNegotiatorVersion:v5 participantData:[(AVCSessionParticipant *)self->_localParticipant negotiationData]];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 136315906;
        *&v10[4] = v7;
        v11 = 2080;
        v12 = "[AVCSession negotiationDataForProtocolVersion:]";
        v13 = 1024;
        v14 = 226;
        v15 = 1024;
        v16 = v3;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiation blob requested with protocol version=%d", v10, 0x22u);
      }
    }
  }

  return v6;
}

- (id)negotiationDataForLoopbackParticipant
{
  v2 = [VCSessionParticipant participantInfoWithParticipantData:[(AVCSession *)self negotiationDataForProtocolVersion:1]];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v2];
  [v3 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] forKeyedSubscript:{"UUID"), "UUIDString"), @"vcSessionParticipantKeyUUID"}];

  return [VCSessionParticipant participantDataWithParticipantInfo:v3];
}

- (BOOL)isAudioMuted
{
  if (VCFeatureFlagManager_SessionBasedMutingEnabled())
  {

    return +[AVAudioClient isMicrophoneMuted];
  }

  else
  {
    localParticipant = self->_localParticipant;

    return [(AVCSessionParticipant *)localParticipant isAudioMuted];
  }
}

- (BOOL)isOneToOneEnabled
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVCSession_isOneToOneEnabled__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(stateQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__AVCSession_isOneToOneEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) isOneToOneModeEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (tagAVCSessionPresentationInfo)presentationInfo
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x5010000000;
  v12 = &unk_1DBF04739;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AVCSession_presentationInfo__block_invoke;
  block[3] = &unk_1E85F40B8;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(stateQueue, block);
  v5 = v10;
  v6 = *(v10 + 3);
  retstr->var0.origin = *(v10 + 2);
  retstr->var0.size = v6;
  *&retstr->var1 = *(v5 + 4);
  _Block_object_dispose(&v9, 8);
  return result;
}

__n128 __30__AVCSession_presentationInfo__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    [v2 avcSessionPresentationInfo];
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  v3 = *(*(a1 + 40) + 8);
  result = v7;
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return result;
}

- (void)setPresentationInfo:(tagAVCSessionPresentationInfo *)info
{
  v40 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      x = info->var0.origin.x;
      y = info->var0.origin.y;
      width = info->var0.size.width;
      height = info->var0.size.height;
      var1 = info->var1;
      var2 = info->var2;
      var3 = info->var3;
      *buf = 136317442;
      v21 = v5;
      v22 = 2080;
      v23 = "[AVCSession setPresentationInfo:]";
      v24 = 1024;
      v25 = 296;
      v26 = 2048;
      v27 = x;
      v28 = 2048;
      v29 = y;
      v30 = 2048;
      v31 = width;
      v32 = 2048;
      v33 = height;
      v34 = 1024;
      v35 = var1;
      v36 = 1024;
      v37 = var2;
      v38 = 1024;
      v39 = var3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AVC SPATIAL AUDIO] Receiving presentation info: rect=[%f, %f, %f, %f] didplayID=%u layout=%d state=%u", buf, 0x56u);
    }
  }

  if (info->var2)
  {
    [AVCSession setPresentationInfo:];
  }

  else if (info->var0.size.width <= 0.0)
  {
    [AVCSession setPresentationInfo:];
  }

  else if (info->var0.size.height <= 0.0)
  {
    [AVCSession setPresentationInfo:];
  }

  else if (info->var3 >= 4u)
  {
    [AVCSession setPresentationInfo:];
  }

  else
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    size = info->var0.size;
    origin = info->var0.origin;
    v18 = size;
    block[2] = __34__AVCSession_setPresentationInfo___block_invoke;
    block[3] = &unk_1E85F7F08;
    block[4] = self;
    v19 = *&info->var1;
    dispatch_async(stateQueue, block);
  }
}

void __34__AVCSession_setPresentationInfo___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v2 = -1;
  *(&v2 + 1) = -1;
  v8 = v2;
  v9 = v2;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v3 = *(*(a1 + 32) + 128);
  if (v3)
  {
    [v3 avcSessionPresentationInfo];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  if (memcmp(&v8, (a1 + 40), 0x30uLL))
  {
    v4 = *(a1 + 56);
    *buf = *(a1 + 40);
    *&buf[16] = v4;
    *&buf[32] = *(a1 + 72);
    [*(*(a1 + 32) + 128) setAvcSessionPresentationInfo:buf];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(*(a1 + 32) + 128) description];
        *buf = 136315906;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "[AVCSession setPresentationInfo:]_block_invoke";
        *&buf[22] = 1024;
        *&buf[24] = 310;
        *&buf[28] = 2112;
        *&buf[30] = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AVC SPATIAL AUDIO] Presentation info updated: %@", buf, 0x26u);
      }
    }
  }
}

- (id)initPrivateWithTransportToken:(id)token configuration:(id)configuration negotiationData:(id)data delegate:(id)delegate queue:(id)queue
{
  v62 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-initPrivateWithTransportToken");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v47 = v13;
      v48 = 2080;
      v49 = "[AVCSession initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:]";
      v50 = 1024;
      v51 = 330;
      v52 = 2048;
      selfCopy = self;
      v54 = 2112;
      tokenCopy = token;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-initPrivateWithTransportToken (%p) transportToken[%@]", buf, 0x30u);
    }
  }

  v45.receiver = self;
  v45.super_class = AVCSession;
  v15 = [(AVCSession *)&v45 init];
  if (v15)
  {
    if (VCDefaults_GetBoolValueForKey(@"forceLoopback", 0))
    {
      token = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", @"loopback:", arc4random()];
    }

    if (token)
    {
      if (configuration && [configuration parentNWActivity] && (objc_msgSend(configuration, "parentNWActivity"), (nw_activity_is_activated() & 1) == 0))
      {
        [AVCSession initPrivateWithTransportToken:v15 configuration:? negotiationData:? delegate:? queue:?];
      }

      else
      {
        v15->_transportToken = token;
        v15->_configuration = configuration;
        v15->_connection = objc_alloc_init(VCXPCClientShared);
        v15->_remoteParticipants = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15->_participantsToAdd = objc_alloc_init(MEMORY[0x1E695DF90]);
        CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
        v15->_stateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCSession.stateQueue", 0, CustomRootQueue);
        v15->_presentationInfo = objc_alloc_init(VCSessionPresentationInfo);
        v15->_cachedNegotiationData = data;
        objc_storeWeak(&v15->_delegate, delegate);
        [(AVCSession *)v15 setupNotificationQueue:queue];
        [(AVCSession *)v15 registerBlocksForNotifications];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:token forKeyedSubscript:@"vcSessionIDSDestination"];
        configuration = v15->_configuration;
        if (configuration)
        {
          [dictionary setObject:-[AVCSessionConfiguration dictionary](configuration forKeyedSubscript:{"dictionary"), @"vcSessionConfiguration"}];
        }

        if (data)
        {
          [dictionary setObject:data forKeyedSubscript:@"vcSessionParticipantData"];
        }

        v19 = [(AVConferenceXPCClient *)v15->_connection sendMessageSync:"vcSessionInitialize" arguments:dictionary];
        v20 = [v19 objectForKeyedSubscript:@"vcSessionSucceeded"];
        v15->_uuid = [v19 objectForKeyedSubscript:@"vcSessionUUID"];
        if ([v20 BOOLValue])
        {
          v21 = [v19 objectForKeyedSubscript:@"vcSessionParticipantData"];
          v22 = -[AVConferenceXPCClient newNSDictionaryFromNSDictionary:](v15->_connection, "newNSDictionaryFromNSDictionary:", [v19 objectForKeyedSubscript:@"vcSessionParameterStreamTokens"]);
          if (v22)
          {
            v23 = v22;
            v24 = [[AVCSessionParticipant alloc] initWithParticipantID:0 data:v21 delegate:v15 queue:0];
            v15->_localParticipant = v24;
            [(AVCSessionParticipant *)v24 setStateQueue:v15->_stateQueue];
            [(AVCSessionParticipant *)v15->_localParticipant setStreamTokens:v23];
            if (objc_opt_class() == v15)
            {
              if (VRTraceGetErrorLogLevelForModule() <= 6 || (v26 = VRTraceErrorLogLevelToCSTR(), v27 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
              {
LABEL_28:
                v15->_sessionToken = [objc_msgSend(v19 objectForKeyedSubscript:{@"vcSessionToken", "integerValue"}];
                v15->_capabilities = [v19 objectForKeyedSubscript:@"vcSessionCapabilities"];
                MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-init");
                if (VRTraceGetErrorLogLevelForModule() >= 6)
                {
                  v39 = VRTraceErrorLogLevelToCSTR();
                  v40 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    uuid = [(AVCSessionParticipant *)v15->_localParticipant uuid];
                    *buf = 136316418;
                    v47 = v39;
                    v48 = 2080;
                    v49 = "[AVCSession initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:]";
                    v50 = 1024;
                    v51 = 389;
                    v52 = 2048;
                    selfCopy = v15;
                    v54 = 2112;
                    tokenCopy = uuid;
                    v56 = 2112;
                    tokenCopy2 = token;
                    _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-init (%p) localParticipantID=%@, transportToken=%@", buf, 0x3Au);
                  }
                }

                return v15;
              }

              localParticipant = v15->_localParticipant;
              stateQueue = v15->_stateQueue;
              connection = v15->_connection;
              *buf = 136316418;
              v47 = v26;
              v48 = 2080;
              v49 = "[AVCSession initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:]";
              v50 = 1024;
              v51 = 378;
              v52 = 2048;
              selfCopy = localParticipant;
              v54 = 2048;
              tokenCopy = stateQueue;
              v56 = 2048;
              tokenCopy2 = connection;
              v31 = " [%s] %s:%d localParticipant [%p] has been created and stateQueue [%p] and shared xpc connection [%p] have been set";
              v32 = v27;
              v33 = 58;
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v25 = [(AVCSession *)v15 performSelector:sel_logPrefix];
              }

              else
              {
                v25 = &stru_1F570E008;
              }

              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_28;
              }

              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_28;
              }

              v36 = v15->_localParticipant;
              v37 = v15->_stateQueue;
              v38 = v15->_connection;
              *buf = 136316930;
              v47 = v34;
              v48 = 2080;
              v49 = "[AVCSession initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:]";
              v50 = 1024;
              v51 = 378;
              v52 = 2112;
              selfCopy = v25;
              v54 = 2048;
              tokenCopy = v15;
              v56 = 2048;
              tokenCopy2 = v36;
              v58 = 2048;
              v59 = v37;
              v60 = 2048;
              v61 = v38;
              v31 = " [%s] %s:%d %@(%p) localParticipant [%p] has been created and stateQueue [%p] and shared xpc connection [%p] have been set";
              v32 = v35;
              v33 = 78;
            }

            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
            goto LABEL_28;
          }

          [AVCSession initPrivateWithTransportToken:v15 configuration:? negotiationData:? delegate:? queue:?];
        }

        else
        {
          [AVCSession initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:];
        }
      }
    }

    else
    {
      [AVCSession initPrivateWithTransportToken:v15 configuration:? negotiationData:? delegate:? queue:?];
    }

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v47 = v43;
        v48 = 2080;
        v49 = "[AVCSession initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:]";
        v50 = 1024;
        v51 = 387;
        v52 = 2048;
        selfCopy = 0;
        _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-init (%p)", buf, 0x26u);
      }
    }

    return 0;
  }

  return v15;
}

- (void)setMediaState:(unsigned int)state forMediaType:(unsigned int)type
{
  v4 = *&type;
  v5 = *&state;
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316162;
        *&v15[4] = v8;
        *&v15[12] = 2080;
        *&v15[14] = "[AVCSession setMediaState:forMediaType:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 398;
        WORD2(v16) = 1024;
        *(&v16 + 6) = v4;
        WORD5(v16) = 1024;
        HIDWORD(v16) = v5;
        v10 = " [%s] %s:%d Session change to media type=%d state=%d";
        v11 = v9;
        v12 = 40;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v15, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 136316674;
        *&v15[4] = v13;
        *&v15[12] = 2080;
        *&v15[14] = "[AVCSession setMediaState:forMediaType:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 398;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v7;
        HIWORD(v16) = 2048;
        selfCopy = self;
        LOWORD(v18) = 1024;
        *(&v18 + 2) = v4;
        HIWORD(v18) = 1024;
        LODWORD(v19) = v5;
        v10 = " [%s] %s:%d %@(%p) Session change to media type=%d state=%d";
        v11 = v14;
        v12 = 60;
        goto LABEL_11;
      }
    }
  }

  [(AVCSessionParticipant *)self->_localParticipant setMediaState:v5 forMediaType:v4, *v15, *&v15[16], v16, selfCopy, v18, v19];
}

- (void)addParticipant:(id)participant
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (participant)
  {
    v18[0] = participant;
    -[AVCSession addParticipants:](self, "addParticipants:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1]);
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCSession addParticipant:v5];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316162;
        v9 = v6;
        v10 = 2080;
        v11 = "[AVCSession addParticipant:]";
        v12 = 1024;
        v13 = 428;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        selfCopy = self;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to add nil participant", &v8, 0x30u);
      }
    }
  }
}

- (void)addParticipants:(id)participants
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AVCSession_addParticipants___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = participants;
  dispatch_async(stateQueue, block);
}

void __30__AVCSession_addParticipants___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 136315906;
        v41 = v3;
        v42 = 2080;
        v43 = "[AVCSession addParticipants:]_block_invoke";
        v44 = 1024;
        v45 = 454;
        v46 = 2112;
        v47 = v5;
        v6 = " [%s] %s:%d participants[%@]";
        v7 = v4;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 136316418;
        v41 = v9;
        v42 = 2080;
        v43 = "[AVCSession addParticipants:]_block_invoke";
        v44 = 1024;
        v45 = 454;
        v46 = 2112;
        v47 = v2;
        v48 = 2048;
        v49 = v11;
        v50 = 2112;
        v51 = v12;
        v6 = " [%s] %s:%d %@(%p) participants[%@]";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v36 objects:v35 count:16];
  v17 = 0x1E695D000uLL;
  if (v15)
  {
    v18 = v15;
    v19 = &dword_1DB56E000;
    v32 = *v37;
    *&v16 = 136316162;
    v30 = v16;
    do
    {
      v20 = 0;
      v31 = v18;
      do
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v36 + 1) + 8 * v20);
        MEMORY[0x1E128B580](v19, "@:@ AVCSession-addParticipants");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v24 = v19;
            v25 = v17;
            v26 = v14;
            v27 = v13;
            v28 = *(a1 + 32);
            v29 = [v21 description];
            *buf = v30;
            v41 = v22;
            v42 = 2080;
            v43 = "[AVCSession addParticipants:]_block_invoke";
            v44 = 1024;
            v45 = 458;
            v46 = 2048;
            v47 = v28;
            v13 = v27;
            v14 = v26;
            v17 = v25;
            v19 = v24;
            v18 = v31;
            v48 = 2112;
            v49 = v29;
            _os_log_impl(v19, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-addParticipants (%p) %@", buf, 0x30u);
          }
        }

        [v21 setStateQueue:{*(*(a1 + 32) + 72), v30}];
        if ([*(a1 + 32) validateParticipantToAdd:v21])
        {
          [*(*(a1 + 32) + 16) setObject:v21 forKeyedSubscript:{objc_msgSend(v21, "uuid")}];
          [v13 addObject:{objc_msgSend(*(v17 + 3872), "dictionaryWithDictionary:", objc_msgSend(v21, "config"))}];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v14 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v18);
  }

  if ([v13 count])
  {
    v33 = @"vcSessionParticipantConfigs";
    v34 = v13;
    [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionAddParticipants" arguments:{objc_msgSend(*(v17 + 3872), "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
  }
}

- (void)completeAddParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  delegate = [(AVCSession *)self delegate];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AVCSession_completeAddParticipant_didSucceed_error___block_invoke;
  v11[3] = &unk_1E85F9E88;
  v11[4] = self;
  v11[5] = participant;
  succeedCopy = succeed;
  v11[6] = error;
  v11[7] = delegate;
  dispatch_async(delegateNotificationQueue, v11);
}

uint64_t __54__AVCSession_completeAddParticipant_didSucceed_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-didAddParticipant");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) uuid];
      v6 = *(a1 + 64);
      v7 = *(a1 + 48);
      v9 = 136316674;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVCSession completeAddParticipant:didSucceed:error:]_block_invoke";
      v13 = 1024;
      v14 = 487;
      v15 = 2048;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 1024;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-didAddParticipant (%p) uuid=%@, didSucceed=%d, error=%@", &v9, 0x40u);
    }
  }

  return [*(a1 + 56) session:*(a1 + 32) addParticipant:*(a1 + 40) didSucceed:*(a1 + 64) error:*(a1 + 48)];
}

- (void)completeRemoveParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  delegate = [(AVCSession *)self delegate];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AVCSession_completeRemoveParticipant_didSucceed_error___block_invoke;
  v11[3] = &unk_1E85F9E88;
  v11[4] = self;
  v11[5] = participant;
  succeedCopy = succeed;
  v11[6] = error;
  v11[7] = delegate;
  dispatch_async(delegateNotificationQueue, v11);
}

uint64_t __57__AVCSession_completeRemoveParticipant_didSucceed_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-didRemoveParticipant");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) uuid];
      v6 = *(a1 + 64);
      v7 = *(a1 + 48);
      v9 = 136316674;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVCSession completeRemoveParticipant:didSucceed:error:]_block_invoke";
      v13 = 1024;
      v14 = 496;
      v15 = 2048;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 1024;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-didRemoveParticipant (%p) uuid=%@, didSucceed=%d, error=%@", &v9, 0x40u);
    }
  }

  return [*(a1 + 56) session:*(a1 + 32) removeParticipant:*(a1 + 40) didSucceed:*(a1 + 64) error:*(a1 + 48)];
}

- (BOOL)validateParticipantToAdd:(id)add
{
  if (!-[NSMutableDictionary objectForKeyedSubscript:](self->_remoteParticipants, "objectForKeyedSubscript:", [add uuid]) && !-[NSMutableDictionary objectForKeyedSubscript:](self->_participantsToAdd, "objectForKeyedSubscript:", objc_msgSend(add, "uuid")))
  {
    return 1;
  }

  v5 = 1;
  v6 = +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 1, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCSession.m", 506], 0);
  if (v6)
  {
    [(AVCSession *)self completeAddParticipant:add didSucceed:0 error:v6];
    return 0;
  }

  return v5;
}

- (BOOL)validateParticipantToRemove:(id)remove
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_remoteParticipants, "objectForKeyedSubscript:", [remove uuid]);
  if (!v5)
  {
    -[AVCSession completeRemoveParticipant:didSucceed:error:](self, "completeRemoveParticipant:didSucceed:error:", remove, 0, +[VCSessionErrorUtils VCSessionErrorEvent:errorPath:returnCode:](VCSessionErrorUtils, "VCSessionErrorEvent:errorPath:returnCode:", 3, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCSession.m", 518], 0));
  }

  return v5 != 0;
}

- (void)removeParticipant:(id)participant
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = participant;
  -[AVCSession removeParticipants:](self, "removeParticipants:", [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1]);
}

- (void)removeParticipants:(id)participants
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AVCSession_removeParticipants___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = participants;
  dispatch_async(stateQueue, block);
}

void __33__AVCSession_removeParticipants___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 136315906;
        v36 = v3;
        v37 = 2080;
        v38 = "[AVCSession removeParticipants:]_block_invoke";
        v39 = 1024;
        v40 = 531;
        v41 = 2112;
        v42 = v5;
        v6 = " [%s] %s:%d participantIDs[%@]";
        v7 = v4;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 136316418;
        v36 = v9;
        v37 = 2080;
        v38 = "[AVCSession removeParticipants:]_block_invoke";
        v39 = 1024;
        v40 = 531;
        v41 = 2112;
        v42 = v2;
        v43 = 2048;
        v44 = v11;
        v45 = 2112;
        v46 = v12;
        v6 = " [%s] %s:%d %@(%p) participantIDs[%@]";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v15)
  {
    v17 = v15;
    v27 = *v32;
    *&v16 = 136316162;
    v25 = v16;
    v26 = v14;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-removeParticipants");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v22 = v13;
            v23 = *(a1 + 32);
            v24 = [v19 description];
            *buf = v25;
            v36 = v20;
            v37 = 2080;
            v38 = "[AVCSession removeParticipants:]_block_invoke";
            v39 = 1024;
            v40 = 536;
            v41 = 2048;
            v42 = v23;
            v13 = v22;
            v14 = v26;
            v43 = 2112;
            v44 = v24;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-removeParticipants (%p) %@", buf, 0x30u);
          }
        }

        if ([*(a1 + 32) validateParticipantToRemove:{v19, v25, v26}])
        {
          [v13 addObject:{objc_msgSend(v19, "uuid")}];
          [v19 setStateQueue:0];
        }
      }

      v17 = [v14 countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v17);
  }

  if ([v13 count])
  {
    v28 = @"vcSessionParticipantIDs";
    v29 = v13;
    [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionRemoveParticipants" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v29, &v28, 1)}];
  }
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __19__AVCSession_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __19__AVCSession_start__block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    *v16 = 136316162;
    *&v16[4] = v8;
    *&v16[12] = 2080;
    *&v16[14] = "[AVCSession start]_block_invoke";
    *&v16[22] = 1024;
    LODWORD(v17) = 559;
    WORD2(v17) = 2112;
    *(&v17 + 6) = v2;
    HIWORD(v17) = 2048;
    v18 = v10;
    v5 = " [%s] %s:%d %@(%p) ";
    v6 = v9;
    v7 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315650;
      *&v16[4] = v3;
      *&v16[12] = 2080;
      *&v16[14] = "[AVCSession start]_block_invoke";
      *&v16[22] = 1024;
      LODWORD(v17) = 559;
      v5 = " [%s] %s:%d ";
      v6 = v4;
      v7 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v16, v7);
    }
  }

LABEL_12:
  [*(*(a1 + 32) + 24) setSharedXPCConnection:{*(*(a1 + 32) + 80), *v16, *&v16[16], v17, v18}];
  v21 = @"vcSessionLocalParticipantConfig";
  v22[0] = [*(*(a1 + 32) + 24) config];
  [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionStart" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = [*(v13 + 24) dispatchedParticipantStatus];
      v15 = *(*(a1 + 32) + 32);
      *v16 = 136316418;
      *&v16[4] = v11;
      *&v16[12] = 2080;
      *&v16[14] = "[AVCSession start]_block_invoke";
      *&v16[22] = 1024;
      LODWORD(v17) = 563;
      WORD2(v17) = 2048;
      *(&v17 + 6) = v13;
      HIWORD(v17) = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-start (%p) %@, configuration=%@", v16, 0x3Au);
    }
  }
}

- (void)stopWithError:(id)error
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__AVCSession_stopWithError___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = error;
  dispatch_async(stateQueue, block);
}

void __28__AVCSession_stopWithError___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 40);
    *buf = 136315906;
    v24 = v3;
    v25 = 2080;
    v26 = "[AVCSession stopWithError:]_block_invoke";
    v27 = 1024;
    v28 = 573;
    v29 = 2112;
    v30 = v5;
    v6 = " [%s] %s:%d stopError:%@";
    v7 = v4;
    v8 = 38;
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 136316418;
      v24 = v9;
      v25 = 2080;
      v26 = "[AVCSession stopWithError:]_block_invoke";
      v27 = 1024;
      v28 = 573;
      v29 = 2112;
      v30 = v2;
      v31 = 2048;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v6 = " [%s] %s:%d %@(%p) stopError:%@";
      v7 = v10;
      v8 = 58;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  v13 = *(a1 + 40);
  if (v13)
  {
    v21[0] = @"ERROR_DOMAIN";
    v22[0] = [v13 domain];
    v21[1] = @"ERROR_CODE";
    v22[1] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v21[2] = @"ERROR_USERINFO";
    v22[2] = [*(a1 + 40) userInfo];
    v19 = @"vcSessionError";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  }

  else
  {
    v14 = 0;
  }

  [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionStop" arguments:v14];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      *buf = 136316162;
      v24 = v15;
      v25 = 2080;
      v26 = "[AVCSession stopWithError:]_block_invoke";
      v27 = 1024;
      v28 = 582;
      v29 = 2048;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-stop (%p) error=%@", buf, 0x30u);
    }
  }
}

- (void)updateConfiguration:(id)configuration
{
  block[6] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVCSession_updateConfiguration___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = configuration;
  dispatch_async(stateQueue, block);
}

void __34__AVCSession_updateConfiguration___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    *v16 = 136316162;
    *&v16[4] = v8;
    *&v16[12] = 2080;
    *&v16[14] = "[AVCSession updateConfiguration:]_block_invoke";
    *&v16[22] = 1024;
    LODWORD(v17) = 588;
    WORD2(v17) = 2112;
    *(&v17 + 6) = v2;
    HIWORD(v17) = 2048;
    v18 = v10;
    v5 = " [%s] %s:%d %@(%p) ";
    v6 = v9;
    v7 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315650;
      *&v16[4] = v3;
      *&v16[12] = 2080;
      *&v16[14] = "[AVCSession updateConfiguration:]_block_invoke";
      *&v16[22] = 1024;
      LODWORD(v17) = 588;
      v5 = " [%s] %s:%d ";
      v6 = v4;
      v7 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, v16, v7);
    }
  }

LABEL_12:
  v21 = @"vcSessionConfiguration";
  v22[0] = [*(a1 + 40) dictionary];
  [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionUpdateConfiguration" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-updateConfiguration");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(v13 + 32);
      *v16 = 136316418;
      *&v16[4] = v11;
      *&v16[12] = 2080;
      *&v16[14] = "[AVCSession updateConfiguration:]_block_invoke";
      *&v16[22] = 1024;
      LODWORD(v17) = 592;
      WORD2(v17) = 2048;
      *(&v17 + 6) = v13;
      HIWORD(v17) = 2112;
      v18 = v15;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-updateConfiguration (%p) currentConfiguration=%@, newConfiguration=%@", v16, 0x3Au);
    }
  }
}

- (void)beginParticipantConfiguration
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__AVCSession_beginParticipantConfiguration__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __43__AVCSession_beginParticipantConfiguration__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 120);
        *buf = 136315906;
        v36 = v3;
        v37 = 2080;
        v38 = "[AVCSession beginParticipantConfiguration]_block_invoke";
        v39 = 1024;
        v40 = 598;
        v41 = 1024;
        LODWORD(v42) = v5;
        v6 = " [%s] %s:%d _activeConfigurationCount=%d";
        v7 = v4;
        v8 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 120);
        *buf = 136316418;
        v36 = v9;
        v37 = 2080;
        v38 = "[AVCSession beginParticipantConfiguration]_block_invoke";
        v39 = 1024;
        v40 = 598;
        v41 = 2112;
        v42 = v2;
        v43 = 2048;
        v44 = v11;
        v45 = 1024;
        v46 = v12;
        v6 = " [%s] %s:%d %@(%p) _activeConfigurationCount=%d";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 120);
  if (!v14)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [*(v13 + 8) allValues];
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v31 + 1) + 8 * i) setConfigurationInProgress:1];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v17);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = [*(*(a1 + 32) + 16) allValues];
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v26 + 1) + 8 * j) setConfigurationInProgress:1];
        }

        v22 = [v20 countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v22);
    }

    [*(*(a1 + 32) + 24) setConfigurationInProgress:1];
    v13 = *(a1 + 32);
    v14 = *(v13 + 120);
  }

  *(v13 + 120) = v14 + 1;
}

- (void)appendConfigurationToXPCArguments:(id)arguments
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([(VCSessionPresentationInfo *)self->_presentationInfo hasPendingChanges])
  {
    serialize = [(VCSessionPresentationInfo *)self->_presentationInfo serialize];
    if (serialize)
    {

      [arguments setObject:serialize forKeyedSubscript:@"vcSessionPresentationInfo"];
    }
  }
}

- (void)endParticipantConfiguration
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__AVCSession_endParticipantConfiguration__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __41__AVCSession_endParticipantConfiguration__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 120);
        *buf = 136315906;
        v30 = v3;
        v31 = 2080;
        v32 = "[AVCSession endParticipantConfiguration]_block_invoke";
        v33 = 1024;
        v34 = 630;
        v35 = 1024;
        LODWORD(v36) = v5;
        v6 = " [%s] %s:%d _activeConfigurationCount=%d";
        v7 = v4;
        v8 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(v11 + 120);
        *buf = 136316418;
        v30 = v9;
        v31 = 2080;
        v32 = "[AVCSession endParticipantConfiguration]_block_invoke";
        v33 = 1024;
        v34 = 630;
        v35 = 2112;
        v36 = v2;
        v37 = 2048;
        v38 = v11;
        v39 = 1024;
        v40 = v12;
        v6 = " [%s] %s:%d %@(%p) _activeConfigurationCount=%d";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 120);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v16 < 0 == v15)
  {
    *(v13 + 120) = v16;
    if (!v16)
    {
      [*(a1 + 32) validateParticipantConfiguration];
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = [*(*(a1 + 32) + 8) allValues];
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v25 + 1) + 8 * i) appendConfigurationToXPCConfiguration:v17];
          }

          v20 = [v18 countByEnumeratingWithState:&v25 objects:v24 count:16];
        }

        while (v20);
      }

      [*(*(a1 + 32) + 24) appendConfigurationToXPCConfiguration:v17];
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([v17 count])
      {
        [v23 setObject:v17 forKeyedSubscript:@"vcSessionParameterParticipantConfiguration"];
      }

      [*(a1 + 32) appendConfigurationToXPCArguments:v23];
      if ([v23 count])
      {
        [*(*(a1 + 32) + 80) sendMessageAsync:"vcSessionUpdateParticipantConfiguration" arguments:v23];
      }
    }
  }
}

- (void)handleEndConfigurationOnParticipantAdd:(id)add
{
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  [add appendConfigurationToXPCConfiguration:v5];
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v5 forKeyedSubscript:@"vcSessionParameterParticipantConfiguration"];

    [(AVCSession *)self appendConfigurationToXPCArguments:v7];
    if ([v7 count])
    {
      [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcSessionUpdateParticipantConfiguration" arguments:v7];
    }

    v6 = v7;
  }

  else
  {
    v6 = v5;
  }
}

- (void)validateParticipantConfiguration
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 688;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Multiple participants are configured with the same prominence indices", &v2, 0x1Cu);
}

+ (id)configurationWithSessionMode:(int64_t)mode
{
  if (mode == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (mode == 0);
  }

  return [VCSessionMediaStreamPresenceConfigurationProvider publicSessionConfigurationForType:v3];
}

- (id)newNSErrorWithErrorDictionary:(id)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v5 = [dictionary objectForKeyedSubscript:@"ERROR_DOMAIN"];
  v6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"ERROR_CODE", "intValue"}];
  v7 = [dictionary objectForKeyedSubscript:@"ERROR_USERINFO"];

  return [v4 initWithDomain:v5 code:v6 userInfo:v7];
}

- (void)registerBlocksForNotifications
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionDidStart" block:v14 queue:self->_stateQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_148;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionDidStop" block:v13 queue:self->_stateQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_158;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionServerDidDisconnect" block:v12 queue:self->_stateQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_161;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionAddParticipantDidSuceed" block:v11 queue:self->_stateQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_2;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionRemoveParticipantDidSucceed" block:v10 queue:self->_stateQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_164;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionDidUpdateConfiguration" block:v9 queue:self->_stateQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_167;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionDidDetectError" block:v8 queue:self->_stateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_2_170;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionUplinkRateAdaptationInfoDidChange" block:v7 queue:self->_stateQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_2_178;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionDownlinkRateAdaptationInfoDidChange" block:v6 queue:self->_stateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_2_183;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionShouldReconnect" block:v5 queue:self->_stateQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_188;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcSessionSetOneToOneEnabledDidChange" block:v4 queue:self->_stateQueue];
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_class() == v5)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315650;
        v20 = v8;
        v21 = 2080;
        v22 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 776;
        v10 = " [%s] %s:%d received callback for didStart";
        v11 = v9;
        v12 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v20 = v13;
        v21 = 2080;
        v22 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v23 = 1024;
        v24 = 776;
        v25 = 2112;
        v26 = v7;
        v27 = 2048;
        v28 = v6;
        v10 = " [%s] %s:%d %@(%p) received callback for didStart";
        v11 = v14;
        v12 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_15:
      v15 = [a2 objectForKeyedSubscript:@"vcSessionStarted"];
      v16 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError"}];
      v17 = [v6 delegateNotificationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_145;
      block[3] = &unk_1E85F3E30;
      block[4] = v6;
      block[5] = v15;
      block[6] = v16;
      dispatch_async(v17, block);
    }
  }
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_145(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-didStart");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) intValue];
      v6 = *(a1 + 48);
      v8 = 136316418;
      v9 = v2;
      v10 = 2080;
      v11 = "[AVCSession registerBlocksForNotifications]_block_invoke";
      v12 = 1024;
      v13 = 781;
      v14 = 2048;
      v15 = v4;
      v16 = 1024;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-didStart (%p) didSucceed=%d, error=%@", &v8, 0x36u);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_148(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_class() == v5)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315650;
        v19 = v8;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 797;
        v10 = " [%s] %s:%d received callback for didStop";
        v11 = v9;
        v12 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v19 = v13;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 797;
        v24 = 2112;
        v25 = v7;
        v26 = 2048;
        v27 = v6;
        v10 = " [%s] %s:%d %@(%p) received callback for didStop";
        v11 = v14;
        v12 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_15:
      v15 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError"}];
      v16 = [v6 delegateNotificationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_149;
      block[3] = &unk_1E85F3E30;
      block[4] = v6;
      block[5] = v15;
      block[6] = a2;
      dispatch_async(v16, block);
    }
  }
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_149(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-didStop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v9 = 136316162;
      v10 = v2;
      v11 = 2080;
      v12 = "[AVCSession registerBlocksForNotifications]_block_invoke";
      v13 = 1024;
      v14 = 801;
      v15 = 2048;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-didStop (%p) error=%@", &v9, 0x30u);
    }
  }

  v6 = [*(a1 + 48) objectForKeyedSubscript:@"vcSessionDidStopMetadata"];
  if (v6)
  {
    v7 = v6;
    [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      return [objc_msgSend(*(a1 + 32) "delegate")];
    }
  }

  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [objc_msgSend(*(a1 + 32) "delegate")];
  }

  return result;
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_158(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v3 = [*(a1 + 32) strong];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  if (objc_opt_class() == v3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    v26 = v6;
    v27 = 2080;
    v28 = "[AVCSession registerBlocksForNotifications]_block_invoke";
    v29 = 1024;
    v30 = 822;
    v8 = " [%s] %s:%d received callback for serverDidDisconnect";
    v9 = v7;
    v10 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136316162;
    v26 = v11;
    v27 = 2080;
    v28 = "[AVCSession registerBlocksForNotifications]_block_invoke";
    v29 = 1024;
    v30 = 822;
    v31 = 2112;
    v32 = v5;
    v33 = 2048;
    v34 = v4;
    v8 = " [%s] %s:%d %@(%p) received callback for serverDidDisconnect";
    v9 = v12;
    v10 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_14:
  [objc_msgSend(v4 "localParticipant")];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v4 remoteParticipantsMap];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [objc_msgSend(objc_msgSend(v4 "remoteParticipantsMap")];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v15);
  }

  v18 = [v4 delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_159;
  block[3] = &unk_1E85F3778;
  block[4] = v4;
  dispatch_async(v18, block);
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_159(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-serverDidDisconnect");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[AVCSession registerBlocksForNotifications]_block_invoke";
      v10 = 1024;
      v11 = 830;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-serverDidDisconnect (%p)", &v6, 0x26u);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

id *__44__AVCSession_registerBlocksForNotifications__block_invoke_161(id *result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = result;
    result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
    if (!result)
    {
      result = [v4[4] strong];
      if (result)
      {

        return [result didAddParticipantHandlerWithResult:a2];
      }
    }
  }

  return result;
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return;
  }

  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v5 = [*(a1 + 32) strong];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (objc_opt_class() != v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *v19 = 136316162;
    *&v19[4] = v13;
    *&v19[12] = 2080;
    *&v19[14] = "[AVCSession registerBlocksForNotifications]_block_invoke";
    *&v19[22] = 1024;
    LODWORD(v20) = 856;
    WORD2(v20) = 2112;
    *(&v20 + 6) = v7;
    HIWORD(v20) = 2048;
    v21 = v6;
    v10 = " [%s] %s:%d %@(%p) received callback for removeParticipantDidSucceed";
    v11 = v14;
    v12 = 48;
    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315650;
      *&v19[4] = v8;
      *&v19[12] = 2080;
      *&v19[14] = "[AVCSession registerBlocksForNotifications]_block_invoke_2";
      *&v19[22] = 1024;
      LODWORD(v20) = 856;
      v10 = " [%s] %s:%d received callback for removeParticipantDidSucceed";
      v11 = v9;
      v12 = 28;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v19, v12);
    }
  }

LABEL_15:
  v15 = [a2 objectForKeyedSubscript:{@"vcSessionSucceeded", *v19, *&v19[16], v20, v21}];
  v16 = [a2 objectForKeyedSubscript:@"vcSessionParticipantID"];
  v17 = [objc_msgSend(v6 "remoteParticipantsMap")];
  [v17 setSharedXPCConnection:0];
  if (v15)
  {
    [objc_msgSend(v6 "remoteParticipantsMap")];
  }

  v18 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError"}];
  [v6 completeRemoveParticipant:v17 didSucceed:objc_msgSend(v15 error:{"BOOLValue"), v18}];
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_164(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return;
  }

  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v5 = [*(a1 + 32) strong];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
  if (objc_opt_class() == v6)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136316162;
    v23 = v9;
    v24 = 2080;
    v25 = "[AVCSession registerBlocksForNotifications]_block_invoke";
    v26 = 1024;
    v27 = 883;
    v28 = 2112;
    v29 = [v6 uuid];
    v30 = 1024;
    LODWORD(v31) = v7;
    v11 = " [%s] %s:%d Session[%@] received callback for didUpdateConfig didSucceed=%{BOOL}d";
    v12 = v10;
    v13 = 44;
    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 performSelector:sel_logPrefix];
  }

  else
  {
    v8 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v23 = v14;
      v24 = 2080;
      v25 = "[AVCSession registerBlocksForNotifications]_block_invoke";
      v26 = 1024;
      v27 = 883;
      v28 = 2112;
      v29 = v8;
      v30 = 2048;
      v31 = v6;
      v32 = 2112;
      v33 = [v6 uuid];
      v34 = 1024;
      v35 = v7;
      v11 = " [%s] %s:%d %@(%p) Session[%@] received callback for didUpdateConfig didSucceed=%{BOOL}d";
      v12 = v15;
      v13 = 64;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    }
  }

LABEL_15:
  if (v7)
  {
    v16 = [a2 objectForKeyedSubscript:@"vcSessionConfiguration"];
    if (v16)
    {
      v17 = v16;
      v18 = [v6 dispatchedConfiguration];
      [v18 setUpWithDictionary:v17];
      [v6 setConfiguration:v18];
    }
  }

  v19 = [v6 delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_165;
  block[3] = &unk_1E85F37C8;
  v21 = v7;
  block[4] = v6;
  block[5] = 0;
  dispatch_async(v19, block);
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_165(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) configuration];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCSession-didUpdateConfiguration");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 136316674;
      v10 = v3;
      v11 = 2080;
      v12 = "[AVCSession registerBlocksForNotifications]_block_invoke";
      v13 = 1024;
      v14 = 895;
      v15 = 2048;
      v16 = v6;
      v17 = 2112;
      v18 = v2;
      v19 = 1024;
      v20 = v5;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCSession-didUpdateConfiguration (%p) configuration=%@, didSucceed=%{BOOL}d, error=%@", &v9, 0x40u);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_167(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError"}];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315906;
        v19 = v9;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 910;
        v24 = 2112;
        v25 = v7;
        v11 = " [%s] %s:%d received callback for didDetectError:%@";
        v12 = v10;
        v13 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316418;
        v19 = v14;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 910;
        v24 = 2112;
        v25 = v8;
        v26 = 2048;
        v27 = v6;
        v28 = 2112;
        v29 = v7;
        v11 = " [%s] %s:%d %@(%p) received callback for didDetectError:%@";
        v12 = v15;
        v13 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_168;
      v17[3] = &unk_1E85F37F0;
      v17[4] = v6;
      v17[5] = 0;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_168(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 session:v3 didDetectError:v4];
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_2_170(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcSessionParameterRateAdaptationInfo"];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315906;
        v19 = v9;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke_2";
        v22 = 1024;
        v23 = 926;
        v24 = 2112;
        v25 = v7;
        v11 = " [%s] %s:%d received callback for didChangeUplinkRateAdaptationInfo:%@";
        v12 = v10;
        v13 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316418;
        v19 = v14;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 926;
        v24 = 2112;
        v25 = v8;
        v26 = 2048;
        v27 = v6;
        v28 = 2112;
        v29 = v7;
        v11 = " [%s] %s:%d %@(%p) received callback for didChangeUplinkRateAdaptationInfo:%@";
        v12 = v15;
        v13 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_174;
      v17[3] = &unk_1E85F37F0;
      v17[4] = v6;
      v17[5] = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_174(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 uplinkRateAdaptationInfoDidChange:v5];
  }

  return result;
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_2_178(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcSessionParameterRateAdaptationInfo"];
      if (objc_opt_class() == v6)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315906;
        v19 = v9;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke_2";
        v22 = 1024;
        v23 = 943;
        v24 = 2112;
        v25 = v7;
        v11 = " [%s] %s:%d received callback for didChangeDownlinkRateAdaptationInfo:%@";
        v12 = v10;
        v13 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [v6 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316418;
        v19 = v14;
        v20 = 2080;
        v21 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v22 = 1024;
        v23 = 943;
        v24 = 2112;
        v25 = v8;
        v26 = 2048;
        v27 = v6;
        v28 = 2112;
        v29 = v7;
        v11 = " [%s] %s:%d %@(%p) received callback for didChangeDownlinkRateAdaptationInfo:%@";
        v12 = v15;
        v13 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_15:
      v16 = [v6 delegateNotificationQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_179;
      v17[3] = &unk_1E85F37F0;
      v17[4] = v6;
      v17[5] = v7;
      dispatch_async(v16, v17);
    }
  }
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_179(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 downlinkRateAdaptationInfoDidChange:v5];
  }

  return result;
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_2_183(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136315650;
        v17 = v7;
        v18 = 2080;
        v19 = "[AVCSession registerBlocksForNotifications]_block_invoke_2";
        v20 = 1024;
        v21 = 959;
        v9 = " [%s] %s:%d received callback for shouldReconnect";
        v10 = v8;
        v11 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [v5 performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_15;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        *buf = 136316162;
        v17 = v12;
        v18 = 2080;
        v19 = "[AVCSession registerBlocksForNotifications]_block_invoke";
        v20 = 1024;
        v21 = 959;
        v22 = 2112;
        v23 = v6;
        v24 = 2048;
        v25 = v5;
        v9 = " [%s] %s:%d %@(%p) received callback for shouldReconnect";
        v10 = v13;
        v11 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_15:
      v14 = [v5 delegateNotificationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_184;
      block[3] = &unk_1E85F3778;
      block[4] = v5;
      dispatch_async(v14, block);
    }
  }
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_184(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      *v12 = 136315650;
      *&v12[4] = v4;
      *&v12[12] = 2080;
      *&v12[14] = "[AVCSession registerBlocksForNotifications]_block_invoke";
      *&v12[22] = 1024;
      LODWORD(v13) = 962;
      v6 = " [%s] %s:%d Calling sessionShouldReconnect on the delegate";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [objc_msgSend(*(a1 + 32) delegate];
      }

      v11 = *(a1 + 32);
      *v12 = 136316162;
      *&v12[4] = v9;
      *&v12[12] = 2080;
      *&v12[14] = "[AVCSession registerBlocksForNotifications]_block_invoke";
      *&v12[22] = 1024;
      LODWORD(v13) = 962;
      WORD2(v13) = 2112;
      *(&v13 + 6) = v3;
      HIWORD(v13) = 2048;
      v14 = v11;
      v6 = " [%s] %s:%d %@(%p) Calling sessionShouldReconnect on the delegate";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v12, v8);
    return [objc_msgSend(*(a1 + 32) delegate];
  }

  return result;
}

void __44__AVCSession_registerBlocksForNotifications__block_invoke_188(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return;
  }

  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    return;
  }

  v5 = [*(a1 + 32) strong];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionOneOnOneModeEnabled", "BOOLValue"}];
  v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
  if (objc_opt_class() != v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_15;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 136316930;
    v23 = v15;
    v24 = 2080;
    v25 = "[AVCSession registerBlocksForNotifications]_block_invoke";
    v26 = 1024;
    v27 = 979;
    v28 = 2112;
    v29 = v9;
    v30 = 2048;
    *v31 = v6;
    *&v31[8] = 2112;
    v32 = [v6 uuid];
    v33 = 1024;
    v34 = v7;
    v35 = 1024;
    v36 = v8;
    v12 = " [%s] %s:%d %@(%p) Session[%@] received callback for oneToOneModeEnabled[%d] did succeed[%d]";
    v13 = v16;
    v14 = 70;
    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v23 = v10;
      v24 = 2080;
      v25 = "[AVCSession registerBlocksForNotifications]_block_invoke";
      v26 = 1024;
      v27 = 979;
      v28 = 2112;
      v29 = [v6 uuid];
      v30 = 1024;
      *v31 = v7;
      *&v31[4] = 1024;
      *&v31[6] = v8;
      v12 = " [%s] %s:%d Session[%@] received callback for oneToOneModeEnabled[%d] did succeed[%d]";
      v13 = v11;
      v14 = 50;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

LABEL_15:
  if (v8)
  {
    [v6 updateOneToOneModeEnabled:v7];
  }

  v17 = [v6 newNSErrorWithErrorDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcSessionError"}];
  v18 = [v6 delegateNotificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVCSession_registerBlocksForNotifications__block_invoke_189;
  block[3] = &unk_1E85F63F0;
  v20 = v7;
  v21 = v8;
  block[4] = v6;
  block[5] = v17;
  dispatch_async(v18, block);
}

uint64_t __44__AVCSession_registerBlocksForNotifications__block_invoke_189(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 session:v6 oneToOneEnabled:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)deregisterFromNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionDidStart"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionDidStop"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionServerDidDisconnect"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionAddParticipantDidSuceed"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionRemoveParticipantDidSucceed"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionDidUpdateConfiguration"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionDidDetectError"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionUplinkRateAdaptationInfoDidChange"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionDownlinkRateAdaptationInfoDidChange"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcSessionShouldReconnect"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcSessionSetOneToOneEnabledDidChange"];
}

- (void)setupNotificationQueue:(id)queue
{
  if (queue)
  {
    self->_delegateNotificationQueue = queue;

    dispatch_retain(queue);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    self->_delegateNotificationQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCSession.notificationQueue", 0, CustomRootQueue);
  }
}

- (void)participant:(id)participant frequencyLevelsDidChange:(id)change
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AVCSession_participant_frequencyLevelsDidChange___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = change;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __51__AVCSession_participant_frequencyLevelsDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 frequencyLevelsDidChange:v5];
  }

  return result;
}

- (void)participant:(id)participant audioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        *buf = 136316418;
        v25 = v11;
        v26 = 2080;
        v27 = "[AVCSession participant:audioEnabled:didSucceed:error:]";
        v28 = 1024;
        v29 = 1031;
        v30 = 2112;
        v31 = uuid;
        v32 = 1024;
        *v33 = enabledCopy;
        *&v33[4] = 1024;
        *&v33[6] = succeedCopy;
        v14 = " [%s] %s:%d AVCSession[%@] received callback for audio enabled[%d] did succeed[%d]";
        v15 = v12;
        v16 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_uuid;
        *buf = 136316930;
        v25 = v17;
        v26 = 2080;
        v27 = "[AVCSession participant:audioEnabled:didSucceed:error:]";
        v28 = 1024;
        v29 = 1031;
        v30 = 2112;
        v31 = v10;
        v32 = 2048;
        *v33 = self;
        *&v33[8] = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = enabledCopy;
        v37 = 1024;
        v38 = succeedCopy;
        v14 = " [%s] %s:%d %@(%p) AVCSession[%@] received callback for audio enabled[%d] did succeed[%d]";
        v15 = v18;
        v16 = 70;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVCSession_participant_audioEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F63F0;
  v22 = enabledCopy;
  v23 = succeedCopy;
  block[4] = self;
  block[5] = error;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __56__AVCSession_participant_audioEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 session:v6 audioEnabled:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)participant:(id)participant videoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        *buf = 136316418;
        v25 = v11;
        v26 = 2080;
        v27 = "[AVCSession participant:videoEnabled:didSucceed:error:]";
        v28 = 1024;
        v29 = 1040;
        v30 = 2112;
        v31 = uuid;
        v32 = 1024;
        *v33 = enabledCopy;
        *&v33[4] = 1024;
        *&v33[6] = succeedCopy;
        v14 = " [%s] %s:%d AVCSession[%@] received callback for video enabled[%d] did succeed[%d]";
        v15 = v12;
        v16 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_uuid;
        *buf = 136316930;
        v25 = v17;
        v26 = 2080;
        v27 = "[AVCSession participant:videoEnabled:didSucceed:error:]";
        v28 = 1024;
        v29 = 1040;
        v30 = 2112;
        v31 = v10;
        v32 = 2048;
        *v33 = self;
        *&v33[8] = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = enabledCopy;
        v37 = 1024;
        v38 = succeedCopy;
        v14 = " [%s] %s:%d %@(%p) AVCSession[%@] received callback for video enabled[%d] did succeed[%d]";
        v15 = v18;
        v16 = 70;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVCSession_participant_videoEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F63F0;
  v22 = enabledCopy;
  v23 = succeedCopy;
  block[4] = self;
  block[5] = error;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __56__AVCSession_participant_videoEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 session:v6 videoEnabled:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)participant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        *buf = 136316418;
        v25 = v11;
        v26 = 2080;
        v27 = "[AVCSession participant:screenEnabled:didSucceed:error:]";
        v28 = 1024;
        v29 = 1049;
        v30 = 2112;
        v31 = uuid;
        v32 = 1024;
        *v33 = enabledCopy;
        *&v33[4] = 1024;
        *&v33[6] = succeedCopy;
        v14 = " [%s] %s:%d AVCSession[%@] received callback for screen enabled[%d] did succeed[%d]";
        v15 = v12;
        v16 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_uuid;
        *buf = 136316930;
        v25 = v17;
        v26 = 2080;
        v27 = "[AVCSession participant:screenEnabled:didSucceed:error:]";
        v28 = 1024;
        v29 = 1049;
        v30 = 2112;
        v31 = v10;
        v32 = 2048;
        *v33 = self;
        *&v33[8] = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = enabledCopy;
        v37 = 1024;
        v38 = succeedCopy;
        v14 = " [%s] %s:%d %@(%p) AVCSession[%@] received callback for screen enabled[%d] did succeed[%d]";
        v15 = v18;
        v16 = 70;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVCSession_participant_screenEnabled_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F63F0;
  v22 = enabledCopy;
  v23 = succeedCopy;
  block[4] = self;
  block[5] = error;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __57__AVCSession_participant_screenEnabled_didSucceed_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 session:v6 screenEnabled:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)participant:(id)participant audioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        *buf = 136316418;
        v25 = v11;
        v26 = 2080;
        v27 = "[AVCSession participant:audioPaused:didSucceed:error:]";
        v28 = 1024;
        v29 = 1058;
        v30 = 2112;
        v31 = uuid;
        v32 = 1024;
        *v33 = pausedCopy;
        *&v33[4] = 1024;
        *&v33[6] = succeedCopy;
        v14 = " [%s] %s:%d AVCSession[%@] received callback for audio paused[%d] did succeed[%d]";
        v15 = v12;
        v16 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_uuid;
        *buf = 136316930;
        v25 = v17;
        v26 = 2080;
        v27 = "[AVCSession participant:audioPaused:didSucceed:error:]";
        v28 = 1024;
        v29 = 1058;
        v30 = 2112;
        v31 = v10;
        v32 = 2048;
        *v33 = self;
        *&v33[8] = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = pausedCopy;
        v37 = 1024;
        v38 = succeedCopy;
        v14 = " [%s] %s:%d %@(%p) AVCSession[%@] received callback for audio paused[%d] did succeed[%d]";
        v15 = v18;
        v16 = 70;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AVCSession_participant_audioPaused_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F63F0;
  v22 = pausedCopy;
  v23 = succeedCopy;
  block[4] = self;
  block[5] = error;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __55__AVCSession_participant_audioPaused_didSucceed_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 session:v6 audioPaused:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)participant:(id)participant videoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  v39 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        *buf = 136316418;
        v25 = v11;
        v26 = 2080;
        v27 = "[AVCSession participant:videoPaused:didSucceed:error:]";
        v28 = 1024;
        v29 = 1067;
        v30 = 2112;
        v31 = uuid;
        v32 = 1024;
        *v33 = pausedCopy;
        *&v33[4] = 1024;
        *&v33[6] = succeedCopy;
        v14 = " [%s] %s:%d AVCSession[%@] received callback for video paused[%d] did succeed[%d]";
        v15 = v12;
        v16 = 50;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = self->_uuid;
        *buf = 136316930;
        v25 = v17;
        v26 = 2080;
        v27 = "[AVCSession participant:videoPaused:didSucceed:error:]";
        v28 = 1024;
        v29 = 1067;
        v30 = 2112;
        v31 = v10;
        v32 = 2048;
        *v33 = self;
        *&v33[8] = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = pausedCopy;
        v37 = 1024;
        v38 = succeedCopy;
        v14 = " [%s] %s:%d %@(%p) AVCSession[%@] received callback for video paused[%d] did succeed[%d]";
        v15 = v18;
        v16 = 70;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AVCSession_participant_videoPaused_didSucceed_error___block_invoke;
  block[3] = &unk_1E85F63F0;
  v22 = pausedCopy;
  v23 = succeedCopy;
  block[4] = self;
  block[5] = error;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __55__AVCSession_participant_videoPaused_didSucceed_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v3 session:v6 videoPaused:v4 didSucceed:v5 error:v7];
  }

  return result;
}

- (void)participant:(id)participant mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  v10 = *&change;
  v51 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        v16 = VCSessionMediaType_FromAVCSessionMediaType(type);
        v17 = VCSessionMediaType_Name(v16);
        v18 = VCSessionMediaState_FromAVCSessionMediaState(v10);
        *buf = 136316674;
        v34 = v13;
        v35 = 2080;
        v36 = "[AVCSession participant:mediaStateDidChange:forMediaType:didSucceed:error:]";
        v37 = 1024;
        v38 = 1076;
        v39 = 2112;
        v40 = uuid;
        v41 = 2112;
        selfCopy = v17;
        v43 = 2112;
        v44 = VCSessionMediaState_Name(v18);
        v45 = 1024;
        LODWORD(v46) = succeedCopy;
        v19 = " [%s] %s:%d AVCSession=%@ received mediaStateDidChange callback for mediaType=%@ mediaState=%@ did succeed[%d]";
        v20 = v14;
        v21 = 64;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_uuid;
        v25 = VCSessionMediaType_FromAVCSessionMediaType(type);
        v26 = VCSessionMediaType_Name(v25);
        v27 = VCSessionMediaState_FromAVCSessionMediaState(v10);
        *buf = 136317186;
        v34 = v22;
        v35 = 2080;
        v36 = "[AVCSession participant:mediaStateDidChange:forMediaType:didSucceed:error:]";
        v37 = 1024;
        v38 = 1076;
        v39 = 2112;
        v40 = v12;
        v41 = 2048;
        selfCopy = self;
        v43 = 2112;
        v44 = v24;
        v45 = 2112;
        v46 = v26;
        v47 = 2112;
        v48 = VCSessionMediaState_Name(v27);
        v49 = 1024;
        v50 = succeedCopy;
        v19 = " [%s] %s:%d %@(%p) AVCSession=%@ received mediaStateDidChange callback for mediaType=%@ mediaState=%@ did succeed[%d]";
        v20 = v23;
        v21 = 84;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __76__AVCSession_participant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke;
  v29[3] = &unk_1E85F63A0;
  v30 = v10;
  typeCopy = type;
  v32 = succeedCopy;
  v29[4] = self;
  v29[5] = error;
  dispatch_async(delegateNotificationQueue, v29);
}

uint64_t __76__AVCSession_participant_mediaStateDidChange_forMediaType_didSucceed_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 52);
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v2 session:v7 mediaStateDidChange:v4 forMediaType:v5 didSucceed:v6 error:v8];
  }

  return result;
}

- (void)participant:(id)participant mediaPrioritiesDidChange:(id)change
{
  v30 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        *buf = 136315906;
        v19 = v7;
        v20 = 2080;
        v21 = "[AVCSession participant:mediaPrioritiesDidChange:]";
        v22 = 1024;
        v23 = 1086;
        v24 = 2112;
        v25 = uuid;
        v10 = " [%s] %s:%d AVCSession[%@] received callback.";
        v11 = v8;
        v12 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_uuid;
        *buf = 136316418;
        v19 = v13;
        v20 = 2080;
        v21 = "[AVCSession participant:mediaPrioritiesDidChange:]";
        v22 = 1024;
        v23 = 1086;
        v24 = 2112;
        v25 = v6;
        v26 = 2048;
        selfCopy = self;
        v28 = 2112;
        v29 = v15;
        v10 = " [%s] %s:%d %@(%p) AVCSession[%@] received callback.";
        v11 = v14;
        v12 = 58;
        goto LABEL_11;
      }
    }
  }

  delegateNotificationQueue = self->_delegateNotificationQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__AVCSession_participant_mediaPrioritiesDidChange___block_invoke;
  v17[3] = &unk_1E85F37F0;
  v17[4] = self;
  v17[5] = change;
  dispatch_async(delegateNotificationQueue, v17);
}

uint64_t __51__AVCSession_participant_mediaPrioritiesDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 mediaPrioritiesDidChange:v5];
  }

  return result;
}

- (void)participant:(id)participant mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType
{
  v9 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVCSession_participant_mixingDidStartForMediaType_mixingMediaType___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  typeCopy = type;
  mediaTypeCopy = mediaType;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __69__AVCSession_participant_mixingDidStartForMediaType_mixingMediaType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 44);

    return [v3 session:v4 mixingDidStartForMediaType:v5 mixingMediaType:v6];
  }

  return result;
}

- (void)participant:(id)participant mixingDidStopForMediaType:(unsigned int)type
{
  v7 = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVCSession_participant_mixingDidStopForMediaType___block_invoke;
  block[3] = &unk_1E85F38B8;
  block[4] = self;
  typeCopy = type;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __52__AVCSession_participant_mixingDidStopForMediaType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 mixingDidStopForMediaType:v5];
  }

  return result;
}

- (void)participant:(id)participant didReact:(id)react
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVCSession_participant_didReact___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = react;
  dispatch_async(delegateNotificationQueue, block);
}

uint64_t __35__AVCSession_participant_didReact___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 session:v4 didReact:v5];
  }

  return result;
}

- (void)participantDidStopReacting:(id)reacting
{
  v4[5] = *MEMORY[0x1E69E9840];
  delegateNotificationQueue = self->_delegateNotificationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AVCSession_participantDidStopReacting___block_invoke;
  v4[3] = &unk_1E85F3778;
  v4[4] = self;
  dispatch_async(delegateNotificationQueue, v4);
}

uint64_t __41__AVCSession_participantDidStopReacting___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);

    return [v3 sessionDidStopReacting:v4];
  }

  return result;
}

- (void)didAddParticipantHandlerWithResult:(id)result
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(result objectForKeyedSubscript:{@"vcSessionSucceeded", "BOOLValue"}];
  v6 = [result objectForKeyedSubscript:@"vcSessionParticipantID"];
  v7 = objc_opt_class();
  v8 = MEMORY[0x1E6986650];
  if (v7 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136316162;
        *&v32[4] = v10;
        OUTLINED_FUNCTION_10_10();
        v33 = 719;
        v34 = v12;
        *v35 = v5;
        *&v35[4] = 2112;
        *&v35[6] = v6;
        v13 = " [%s] %s:%d received callback for addParticipantDidSucceed %d, participantID %@";
        v14 = v11;
        v15 = 44;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v32, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AVCSession *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136316674;
        *&v32[4] = v16;
        OUTLINED_FUNCTION_10_10();
        v33 = 719;
        v34 = 2112;
        *v35 = v9;
        *&v35[8] = 2048;
        *&v35[10] = self;
        v36 = v18;
        v37 = v5;
        v38 = 2112;
        v39 = v6;
        v13 = " [%s] %s:%d %@(%p) received callback for addParticipantDidSucceed %d, participantID %@";
        v14 = v17;
        v15 = 64;
        goto LABEL_11;
      }
    }
  }

  if (!v6)
  {
    v27 = 0;
    v20 = 0;
    v26 = 32016;
    v25 = @"ParticipantID is nil";
    if (v5)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v19 = [(NSMutableDictionary *)self->_participantsToAdd objectForKeyedSubscript:v6];
  v20 = v19;
  if (v5)
  {
    if (v19)
    {
      v21 = -[AVConferenceXPCClient newNSDictionaryFromNSDictionary:](self->_connection, "newNSDictionaryFromNSDictionary:", [result objectForKeyedSubscript:@"vcSessionParameterStreamTokens"]);
      if (v21)
      {
        v22 = v21;
        v23 = -[AVConferenceXPCClient newNSDictionaryFromNSDictionary:](self->_connection, "newNSDictionaryFromNSDictionary:", [result objectForKeyedSubscript:@"vcSessionSpatialSourceIDs"]);
        if (v23)
        {
          v24 = v23;
          [(NSMutableDictionary *)self->_remoteParticipants setObject:v20 forKeyedSubscript:v6];
          [v20 setSharedXPCConnection:self->_connection];
          [v20 setStreamTokens:v22];
          [v20 setVideoToken:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", &unk_1F579C288), "unsignedIntValue")}];
          [v20 setScreenToken:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", &unk_1F579C2A0), "unsignedIntValue")}];
          [v20 setMediaTypeToSpatialSourceIDMap:v24];
          [(AVCSession *)self handleEndConfigurationOnParticipantAdd:v20];
          v25 = 0;
          v26 = 0;
          v27 = 1;
          goto LABEL_18;
        }

        v27 = 0;
        v25 = @"Spatial source ID map is nil";
      }

      else
      {
        v27 = 0;
        v25 = @"streamTokens is nil";
      }

      v26 = 32016;
    }

    else
    {
      v27 = 0;
      v25 = @"Participant is nil";
      v26 = 32026;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *v32 = 136315650;
        *&v32[4] = v30;
        OUTLINED_FUNCTION_10_10();
        v33 = 722;
        _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to add the participant", v32, 0x1Cu);
      }
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

LABEL_18:
  [(NSMutableDictionary *)self->_participantsToAdd setObject:0 forKeyedSubscript:v6, *v32];
  if (v5)
  {
LABEL_19:
    v28 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v28 = -[AVCSession newNSErrorWithErrorDictionary:](self, "newNSErrorWithErrorDictionary:", [result objectForKeyedSubscript:{@"vcSessionError", *v32}]);
LABEL_22:
  if (v28)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  if ((v29 & 1) == 0)
  {
    v28 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:v26 detailCode:0 description:v25];
    v5 = 0;
  }

  [(AVCSession *)self completeAddParticipant:v20 didSucceed:v5 error:v28, *v32];
}

- (void)negotiationDataForProtocolVersion:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = 0;
}

- (void)setPresentationInfo:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_31_9();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }
}

- (void)setPresentationInfo:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_31_9();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }
}

- (void)setPresentationInfo:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)setPresentationInfo:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)initPrivateWithTransportToken:(void *)a1 configuration:negotiationData:delegate:queue:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initPrivateWithTransportToken:configuration:negotiationData:delegate:queue:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_13_19();
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)initPrivateWithTransportToken:(void *)a1 configuration:negotiationData:delegate:queue:.cold.3(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initPrivateWithTransportToken:(void *)a1 configuration:negotiationData:delegate:queue:.cold.4(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)addParticipant:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 428;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unable to add nil participant", &v2, 0x1Cu);
}

@end