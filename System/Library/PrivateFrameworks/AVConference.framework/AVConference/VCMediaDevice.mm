@interface VCMediaDevice
- (BOOL)canEnterState:(unsigned int)state;
- (VCMediaDevice)init;
- (id)pause;
- (id)resume;
- (id)run;
- (id)runInternal;
- (id)start;
- (id)stateStringForState:(unsigned int)state;
- (id)stop;
- (void)pause;
- (void)resume;
- (void)runInternal;
- (void)start;
- (void)stop;
@end

@implementation VCMediaDevice

- (VCMediaDevice)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMediaDevice;
  v2 = [(VCObject *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    [(VCObject *)v2 setLogPrefix:NSStringFromClass(v3)];
    v2->_state = 0;
  }

  return v2;
}

- (id)start
{
  v28 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = v3;
      v18 = 2080;
      v19 = "[VCMediaDevice start]";
      v20 = 1024;
      v21 = 49;
      v22 = 2112;
      p_isa = [(VCObject *)self logPrefix];
      v24 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ %@-start (%p)", buf, 0x30u);
    }
  }

  [(VCObject *)self lock];
  if ([(VCMediaDevice *)self canEnterState:1])
  {
    onStart = [(VCMediaDevice *)self onStart];
    if (onStart)
    {
      runInternal = onStart;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaDevice start];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v17 = v12;
            v18 = 2080;
            v19 = "[VCMediaDevice start]";
            v20 = 1024;
            v21 = 63;
            v22 = 2112;
            p_isa = &v7->isa;
            v24 = 2048;
            selfCopy3 = self;
            v26 = 2112;
            v27 = runInternal;
            _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to start, error=%@", buf, 0x3Au);
          }
        }
      }
    }

    else
    {
      self->_state = 1;
      if ([(VCMediaDevice *)self autoRunOnStart])
      {
        runInternal = [(VCMediaDevice *)self runInternal];
      }

      else
      {
        runInternal = 0;
      }
    }

    [(VCObject *)self unlock];
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaDevice start];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v15 = [(VCMediaDevice *)self stateStringForState:self->_state];
          *buf = 136316418;
          v17 = v9;
          v18 = 2080;
          v19 = "[VCMediaDevice start]";
          v20 = 1024;
          v21 = 52;
          v22 = 2112;
          p_isa = &v8->isa;
          v24 = 2048;
          selfCopy3 = self;
          v26 = 2112;
          v27 = v15;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to start because of unexpected state=%@", buf, 0x3Au);
        }
      }
    }

    [(VCObject *)self unlock];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/Common/VCMediaDevice.m", 54];
    return +[VCMediaDeviceErrorUtils mediaDeviceErrorEvent:errorPath:returnCode:reason:](VCMediaDeviceErrorUtils, "mediaDeviceErrorEvent:errorPath:returnCode:reason:", 1, v11, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannnot Transition from %@ to %@", -[VCMediaDevice stateStringForState:](self, "stateStringForState:", self->_state), -[VCMediaDevice stateStringForState:](self, "stateStringForState:", 1)]);
  }

  return runInternal;
}

- (id)runInternal
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(VCMediaDevice *)self canEnterState:2])
  {
    onRun = [(VCMediaDevice *)self onRun];
    if (onRun)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaDevice runInternal];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v4 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
        }

        else
        {
          v4 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v14 = v10;
            v15 = 2080;
            v16 = "[VCMediaDevice runInternal]";
            v17 = 1024;
            v18 = 79;
            v19 = 2112;
            v20 = v4;
            v21 = 2048;
            selfCopy2 = self;
            v23 = 2112;
            v24 = onRun;
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to run, error=%@", buf, 0x3Au);
          }
        }
      }
    }

    else
    {
      self->_state = 2;
    }
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaDevice runInternal];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = [(VCMediaDevice *)self stateStringForState:self->_state];
          *buf = 136316418;
          v14 = v6;
          v15 = 2080;
          v16 = "[VCMediaDevice runInternal]";
          v17 = 1024;
          v18 = 71;
          v19 = 2112;
          v20 = v5;
          v21 = 2048;
          selfCopy2 = self;
          v23 = 2112;
          v24 = v12;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to run because of unexpected state=%@", buf, 0x3Au);
        }
      }
    }

    [(VCObject *)self unlock];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/Common/VCMediaDevice.m", 73];
    return +[VCMediaDeviceErrorUtils mediaDeviceErrorEvent:errorPath:returnCode:reason:](VCMediaDeviceErrorUtils, "mediaDeviceErrorEvent:errorPath:returnCode:reason:", 1, v8, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannnot Transition from %@ to %@", -[VCMediaDevice stateStringForState:](self, "stateStringForState:", self->_state), -[VCMediaDevice stateStringForState:](self, "stateStringForState:", 2)]);
  }

  return onRun;
}

- (id)run
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-run");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCMediaDevice run]";
      v11 = 1024;
      v12 = 85;
      v13 = 2112;
      logPrefix = [(VCObject *)self logPrefix];
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ %@-run (%p)", &v7, 0x30u);
    }
  }

  [(VCObject *)self lock];
  runInternal = [(VCMediaDevice *)self runInternal];
  [(VCObject *)self unlock];
  return runInternal;
}

- (id)stop
{
  v33 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v22 = v3;
      v23 = 2080;
      v24 = "[VCMediaDevice stop]";
      v25 = 1024;
      v26 = 93;
      v27 = 2112;
      p_isa = [(VCObject *)self logPrefix];
      v29 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ %@-stop (%p)", buf, 0x30u);
    }
  }

  [(VCObject *)self startTimeoutTimer];
  [(VCObject *)self lock];
  if (![(VCMediaDevice *)self canEnterState:0])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_21;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v10 = [(VCMediaDevice *)self stateStringForState:self->_state];
      *buf = 136315906;
      v22 = v8;
      v23 = 2080;
      v24 = "[VCMediaDevice stop]";
      v25 = 1024;
      v26 = 97;
      v27 = 2112;
      p_isa = v10;
      v11 = " [%s] %s:%d Unable to stop because of unexpected state=%@";
      v12 = v9;
      v13 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_21;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v16 = [(VCMediaDevice *)self stateStringForState:self->_state];
      *buf = 136316418;
      v22 = v14;
      v23 = 2080;
      v24 = "[VCMediaDevice stop]";
      v25 = 1024;
      v26 = 97;
      v27 = 2112;
      p_isa = &v7->isa;
      v29 = 2048;
      selfCopy3 = self;
      v31 = 2112;
      v32 = v16;
      v11 = " [%s] %s:%d %@(%p) Unable to stop because of unexpected state=%@";
      v12 = v15;
      v13 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_21:
    [(VCObject *)self unlock];
    [(VCObject *)self stopTimeoutTimer];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/Common/VCMediaDevice.m", 100];
    return +[VCMediaDeviceErrorUtils mediaDeviceErrorEvent:errorPath:returnCode:reason:](VCMediaDeviceErrorUtils, "mediaDeviceErrorEvent:errorPath:returnCode:reason:", 1, v17, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannnot Transition from %@ to %@", -[VCMediaDevice stateStringForState:](self, "stateStringForState:", self->_state), -[VCMediaDevice stateStringForState:](self, "stateStringForState:", 0)]);
  }

  onStop = [(VCMediaDevice *)self onStop];
  if (onStop)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaDevice stop];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v22 = v18;
          v23 = 2080;
          v24 = "[VCMediaDevice stop]";
          v25 = 1024;
          v26 = 106;
          v27 = 2112;
          p_isa = &v6->isa;
          v29 = 2048;
          selfCopy3 = self;
          v31 = 2112;
          v32 = onStop;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to stop, error=%@", buf, 0x3Au);
        }
      }
    }
  }

  else
  {
    self->_state = 0;
  }

  [(VCObject *)self unlock];
  [(VCObject *)self stopTimeoutTimer];
  return onStop;
}

- (id)pause
{
  v27 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-pause");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = v3;
      v17 = 2080;
      v18 = "[VCMediaDevice pause]";
      v19 = 1024;
      v20 = 114;
      v21 = 2112;
      p_isa = [(VCObject *)self logPrefix];
      v23 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ %@-pause (%p)", buf, 0x30u);
    }
  }

  [(VCObject *)self lock];
  if ([(VCMediaDevice *)self canEnterState:3])
  {
    onPause = [(VCMediaDevice *)self onPause];
    if (onPause)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaDevice pause];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v16 = v11;
            v17 = 2080;
            v18 = "[VCMediaDevice pause]";
            v19 = 1024;
            v20 = 125;
            v21 = 2112;
            p_isa = &v6->isa;
            v23 = 2048;
            selfCopy3 = self;
            v25 = 2112;
            v26 = onPause;
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to pause, error=%@", buf, 0x3Au);
          }
        }
      }
    }

    else
    {
      self->_state = 3;
    }

    [(VCObject *)self unlock];
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaDevice pause];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = [(VCMediaDevice *)self stateStringForState:self->_state];
          *buf = 136316418;
          v16 = v8;
          v17 = 2080;
          v18 = "[VCMediaDevice pause]";
          v19 = 1024;
          v20 = 117;
          v21 = 2112;
          p_isa = &v7->isa;
          v23 = 2048;
          selfCopy3 = self;
          v25 = 2112;
          v26 = v14;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to pause because of unexpected state=%@", buf, 0x3Au);
        }
      }
    }

    [(VCObject *)self unlock];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/Common/VCMediaDevice.m", 119];
    return +[VCMediaDeviceErrorUtils mediaDeviceErrorEvent:errorPath:returnCode:reason:](VCMediaDeviceErrorUtils, "mediaDeviceErrorEvent:errorPath:returnCode:reason:", 1, v10, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannnot Transition from %@ to %@", -[VCMediaDevice stateStringForState:](self, "stateStringForState:", self->_state), -[VCMediaDevice stateStringForState:](self, "stateStringForState:", 3)]);
  }

  return onPause;
}

- (id)resume
{
  v27 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ %@-resume");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = v3;
      v17 = 2080;
      v18 = "[VCMediaDevice resume]";
      v19 = 1024;
      v20 = 132;
      v21 = 2112;
      p_isa = [(VCObject *)self logPrefix];
      v23 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ %@-resume (%p)", buf, 0x30u);
    }
  }

  [(VCObject *)self lock];
  if ([(VCMediaDevice *)self canEnterState:2])
  {
    onResume = [(VCMediaDevice *)self onResume];
    if (onResume)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCMediaDevice resume];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
        }

        else
        {
          v6 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v16 = v11;
            v17 = 2080;
            v18 = "[VCMediaDevice resume]";
            v19 = 1024;
            v20 = 143;
            v21 = 2112;
            p_isa = &v6->isa;
            v23 = 2048;
            selfCopy3 = self;
            v25 = 2112;
            v26 = onResume;
            _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to resume, error=%@", buf, 0x3Au);
          }
        }
      }
    }

    else
    {
      self->_state = 2;
    }

    [(VCObject *)self unlock];
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaDevice resume];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCMediaDevice *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = [(VCMediaDevice *)self stateStringForState:self->_state];
          *buf = 136316418;
          v16 = v8;
          v17 = 2080;
          v18 = "[VCMediaDevice resume]";
          v19 = 1024;
          v20 = 135;
          v21 = 2112;
          p_isa = &v7->isa;
          v23 = 2048;
          selfCopy3 = self;
          v25 = 2112;
          v26 = v14;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to resume because of unexpected state=%@", buf, 0x3Au);
        }
      }
    }

    [(VCObject *)self unlock];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/Common/VCMediaDevice.m", 137];
    return +[VCMediaDeviceErrorUtils mediaDeviceErrorEvent:errorPath:returnCode:reason:](VCMediaDeviceErrorUtils, "mediaDeviceErrorEvent:errorPath:returnCode:reason:", 1, v10, 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannnot Transition from %@ to %@", -[VCMediaDevice stateStringForState:](self, "stateStringForState:", self->_state), -[VCMediaDevice stateStringForState:](self, "stateStringForState:", 2)]);
  }

  return onResume;
}

- (BOOL)canEnterState:(unsigned int)state
{
  result = 0;
  if (state > 1)
  {
    if (state == 2)
    {
      return (self->_state & 0xFFFFFFFD) == 1;
    }

    else
    {
      if (state != 3)
      {
        return result;
      }

      return self->_state == 2;
    }
  }

  else
  {
    if (!state)
    {
      return self->_state - 1 < 3;
    }

    if (state != 1)
    {
      return result;
    }

    return self->_state == 0;
  }
}

- (id)stateStringForState:(unsigned int)state
{
  if (state > 3)
  {
    return @"INVALID";
  }

  else
  {
    return off_1E85F8500[state];
  }
}

- (void)start
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to start, error=%@");
}

- (void)runInternal
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to run, error=%@");
}

- (void)stop
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to stop, error=%@");
}

- (void)pause
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to pause, error=%@");
}

- (void)resume
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to resume, error=%@");
}

@end