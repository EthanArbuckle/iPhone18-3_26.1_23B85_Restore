@interface VCAudioSessionCMS
- (BOOL)applyAudioSessionMediaProperties:(id)properties;
- (BOOL)applyRequestedProperties:(id)properties propertyOrder:(id)order;
- (BOOL)applyRequestedProperty:(id)property defaultValue:(void *)value;
- (BOOL)internalSelectMicrophoneWithType:(unsigned int)type;
- (BOOL)isInputSupported;
- (BOOL)microphoneMuted;
- (BOOL)readSessionProperty:(__CFString *)property floatValue:(float *)value;
- (BOOL)setSampleRate:(double)rate;
- (BOOL)setVPBlockConfigurationProperties:(id)properties;
- (BOOL)shouldSetupSharePlayWithOperatingMode:(unsigned int)mode isSharePlayCapable:(BOOL *)capable;
- (BOOL)startInternal;
- (BOOL)startSessionWithMediaProperties:(id)properties sessionRef:(unsigned int *)ref;
- (BOOL)stopSession;
- (void)applyAudioSessionMediaPropertiesForSystemAudio;
- (void)applyAudioSessionPropertiesWithVPOperatingMode:(unsigned int)mode;
- (void)applyClientPid;
- (void)didAudioRouteChangeWithUserInfo:(__CFDictionary *)info;
- (void)didBeginQuietTime;
- (void)didEndQuietTime;
- (void)handleAudioInterruption:(opaqueCMSession *)interruption interruptionInfo:(__CFDictionary *)info;
- (void)handleSecureMicNotificationWithInterruptionInfo:(__CFDictionary *)info;
- (void)refreshAudioOuputLatencyWithReason:(id)reason;
- (void)resetOverrideRoute;
- (void)setAudioIOProperties:(id)properties;
- (void)setBlockSize:(double)size sampleRate:(double)rate force:(BOOL)force;
- (void)setClientName;
- (void)setMicrophoneMuted:(BOOL)muted;
- (void)setMuteStateChangedHandler:(id)handler delegateQueue:(id)queue;
- (void)setSpeakerProperty:(id)property;
- (void)setupInputBeamforming;
- (void)stopSession;
@end

@implementation VCAudioSessionCMS

- (void)resetOverrideRoute
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_cmSession)
  {

    VCCMSessionStub_CMSessionSetProperty();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCAudioSessionCMS resetOverrideRoute]";
      v8 = 1024;
      v9 = 51;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error no CMSession", &v4, 0x1Cu);
    }
  }
}

- (BOOL)isInputSupported
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      cmSession = self->_cmSession;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAudioSessionCMS isInputSupported]";
      v11 = 1024;
      v12 = 60;
      v13 = 2112;
      v14 = cmSession;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d This flow is not supported with cmSession=%@, returning NO", &v7, 0x26u);
    }
  }

  return 0;
}

- (void)setSpeakerProperty:(id)property
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_cmSession)
  {
    if (VRTraceGetErrorLogLevelForModule() <= 6)
    {
      v7 = *MEMORY[0x1E69AFDF8];
    }

    else
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      v7 = *MEMORY[0x1E69AFDF8];
      if (v6)
      {
        v8 = [property objectForKeyedSubscript:*MEMORY[0x1E69AFDF8]];
        v9 = 136316162;
        v10 = v4;
        v11 = 2080;
        v12 = "[VCAudioSessionCMS setSpeakerProperty:]";
        v13 = 1024;
        v14 = 66;
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Audio session setting property kCMSessionProperty_CreateSpeakerDevice=%@ to value=%@", &v9, 0x30u);
      }
    }

    [property objectForKeyedSubscript:v7];
    VCCMSessionStub_CMSessionSetProperty();
  }
}

- (void)setAudioIOProperties:(id)properties
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioSessionCMS setAudioIOProperties:];
    }
  }
}

- (BOOL)applyRequestedProperty:(id)property defaultValue:(void *)value
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_cmSession)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VCAudioSessionCMS applyRequestedProperty:defaultValue:];
    }

LABEL_16:
    LOBYTE(v12) = 0;
    return v12;
  }

  v7 = [(NSDictionary *)[(VCAudioSession *)self audioSessionProperties] objectForKeyedSubscript:property];
  if (v7)
  {
    value = v7;
  }

  if (!value)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VCAudioSessionCMS applyRequestedProperty:defaultValue:];
    }

    goto LABEL_16;
  }

  v8 = VCCMSessionStub_CMSessionSetProperty();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v8)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = v10;
        v18 = 2080;
        v19 = "[VCAudioSessionCMS applyRequestedProperty:defaultValue:]";
        v20 = 1024;
        v21 = 97;
        v22 = 2112;
        propertyCopy2 = property;
        v24 = 2112;
        valueCopy2 = value;
        v26 = 1024;
        v27 = v8;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Setting propertyKey=%@ failed, value=%@ status=%d", &v16, 0x36u);
      }
    }

    [(NSMutableDictionary *)self->super._currentAudioSessionProperties setObject:0 forKeyedSubscript:property];
    goto LABEL_16;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v13;
      v18 = 2080;
      v19 = "[VCAudioSessionCMS applyRequestedProperty:defaultValue:]";
      v20 = 1024;
      v21 = 94;
      v22 = 2112;
      propertyCopy2 = property;
      v24 = 2112;
      valueCopy2 = value;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Property propertyKey=%@ successfully set value=%@", &v16, 0x30u);
    }
  }

  [(NSMutableDictionary *)self->super._currentAudioSessionProperties setObject:value forKeyedSubscript:property];
  LOBYTE(v12) = 1;
  return v12;
}

- (BOOL)applyRequestedProperties:(id)properties propertyOrder:(id)order
{
  v29 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = v7;
      v23 = 2080;
      v24 = "[VCAudioSessionCMS applyRequestedProperties:propertyOrder:]";
      v25 = 1024;
      v26 = 106;
      v27 = 2112;
      propertiesCopy = properties;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting requested properties=%@", buf, 0x26u);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [order countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *v18;
  v12 = 1;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(order);
      }

      v12 = v12 && -[VCAudioSessionCMS applyRequestedProperty:defaultValue:](self, "applyRequestedProperty:defaultValue:", *(*(&v17 + 1) + 8 * i), [properties objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)]);
    }

    v10 = [order countByEnumeratingWithState:&v17 objects:v16 count:16];
  }

  while (v10);
  if (!v12)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v14 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v14)
      {
        return v14;
      }

      [VCAudioSessionCMS applyRequestedProperties:propertyOrder:];
    }

    LOBYTE(v14) = 0;
  }

  else
  {
LABEL_15:
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (void)setClientName
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)applyAudioSessionPropertiesWithVPOperatingMode:(unsigned int)mode
{
  v3 = *&mode;
  v6 = *MEMORY[0x1E69E9840];
  [(VCAudioSessionCMS *)self setClientName];
  v5.receiver = self;
  v5.super_class = VCAudioSessionCMS;
  [(VCAudioSession *)&v5 applyAudioSessionPropertiesWithVPOperatingMode:v3];
}

- (void)applyAudioSessionMediaPropertiesForSystemAudio
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (BOOL)shouldSetupSharePlayWithOperatingMode:(unsigned int)mode isSharePlayCapable:(BOOL *)capable
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->super._playbackMode)
  {
    if (mode - 2 > 4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v6 = 0x101010001uLL >> (8 * (mode - 2));
    }

    *capable = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *capable;
        v18 = 136315906;
        v19 = v7;
        v20 = 2080;
        v21 = "[VCAudioSessionCMS shouldSetupSharePlayWithOperatingMode:isSharePlayCapable:]";
        v22 = 1024;
        v23 = 165;
        v24 = 1024;
        v25 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting kCMSessionProperty_IsSharePlayCapableCallSession=%d", &v18, 0x22u);
      }
    }

    v10 = VCCMSessionStub_CMSessionSetProperty();
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v10)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = *capable;
          v18 = 136316162;
          v19 = v12;
          v20 = 2080;
          v21 = "[VCAudioSessionCMS shouldSetupSharePlayWithOperatingMode:isSharePlayCapable:]";
          v22 = 1024;
          v23 = 168;
          v24 = 1024;
          v25 = v14;
          v26 = 1024;
          v27 = v10;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Setting kCMSessionProperty_IsSharePlayCapableCallSession=%d failed, result=%d", &v18, 0x28u);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = *capable;
        v18 = 136315906;
        v19 = v15;
        v20 = 2080;
        v21 = "[VCAudioSessionCMS shouldSetupSharePlayWithOperatingMode:isSharePlayCapable:]";
        v22 = 1024;
        v23 = 170;
        v24 = 1024;
        v25 = v17;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set kCMSessionProperty_IsSharePlayCapableCallSession=%d returned with no failure", &v18, 0x22u);
      }
    }
  }

  return 0;
}

- (void)setBlockSize:(double)size sampleRate:(double)rate force:(BOOL)force
{
  forceCopy = force;
  v29 = *MEMORY[0x1E69E9840];
  valuePtr = rate;
  v16 = 0;
  if (self->super._isTetheredDisplayMode)
  {
    valuePtr = 48000.0;
    rate = 48000.0;
  }

  v8 = *MEMORY[0x1E695E480];
  if (force)
  {
    goto LABEL_9;
  }

  number = 0;
  v9 = VCCMSessionStub_CMSessionCopyProperty();
  v16 = v9;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v19 = v10;
      v20 = 2080;
      v21 = "[VCAudioSessionCMS setBlockSize:sampleRate:force:]";
      v22 = 1024;
      v23 = 232;
      v24 = 1024;
      v25 = v9;
      v26 = 1040;
      v27 = 4;
      v28[0] = 2080;
      *&v28[1] = &v16;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_CurrentAudioHardwareSampleRate failed result=%d, result=%.4s", buf, 0x32u);
      v9 = v16;
    }
  }

  if (!v9)
  {
    rate = valuePtr;
    if (self->super._hardwareSampleRate != valuePtr)
    {
LABEL_9:
      LODWORD(number) = llround(rate * size);
      [(VCAudioSession *)self forceBufferFrames:&number];
      v12 = CFNumberCreate(v8, kCFNumberSInt32Type, &number);
      v16 = VCCMSessionStub_CMSessionSetProperty();
      CFRelease(v12);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v19 = v13;
          v20 = 2080;
          v21 = "[VCAudioSessionCMS setBlockSize:sampleRate:force:]";
          v22 = 1024;
          v23 = 245;
          v24 = 1024;
          v25 = number;
          v26 = 1024;
          v27 = v16;
          v28[0] = 1024;
          *&v28[1] = forceCopy;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_PreferredAudioHardwareIOBufferFrames: blockSize=%d, result=%d, force=%d", buf, 0x2Eu);
        }
      }

      self->super._hardwareSampleRate = valuePtr;
    }
  }
}

- (BOOL)setVPBlockConfigurationProperties:(id)properties
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = VCCMSessionStub_CMSessionSetProperty();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (properties)
      {
        v7 = [objc_msgSend(properties "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioSessionCMS setVPBlockConfigurationProperties:]";
      v13 = 1024;
      v14 = 252;
      v15 = 2080;
      v16 = v7;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_VPBlockConfiguration vpBlockDict=%s, result=%d", &v9, 0x2Cu);
    }
  }

  return v4 == 0;
}

- (void)applyClientPid
{
  v17 = *MEMORY[0x1E69E9840];
  valuePtr = [(VCAudioSessionMediaProperties *)[(VCAudioSessionClient *)self->super._activeClient mediaProperties] processId];
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v3 = VCCMSessionStub_CMSessionSetProperty();
  CFRelease(v2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v8 = v4;
      v9 = 2080;
      v10 = "[VCAudioSessionCMS applyClientPid]";
      v11 = 1024;
      v12 = 262;
      v13 = 1024;
      v14 = valuePtr;
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_ClientPID processId=%d, result=%d", buf, 0x28u);
    }
  }
}

- (BOOL)applyAudioSessionMediaProperties:(id)properties
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCAudioSessionCMS applyAudioSessionMediaProperties:]";
      v13 = 1024;
      v14 = 266;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  [(VCAudioSessionCMS *)self applyClientPid];
  v8.receiver = self;
  v8.super_class = VCAudioSessionCMS;
  return [(VCAudioSession *)&v8 applyAudioSessionMediaProperties:properties];
}

- (BOOL)startInternal
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSessionCMS-starting");
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v5;
      v17 = 2080;
      v18 = "[VCAudioSessionCMS startInternal]";
      v19 = 1024;
      v20 = 273;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioSessionCMS-starting (%p)", &v15, 0x26u);
    }
  }

  v7 = VCCMSessionStub_CMSessionBeginInterruption();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSessionCMS-started");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316162;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCAudioSessionCMS startInternal]";
      v19 = 1024;
      v20 = 277;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioSessionCMS-started (%p) VCCMSessionStub_CMSessionBeginInterruption result=%d", &v15, 0x2Cu);
    }
  }

  v10 = VCCMSessionStub_CMSessionSetProperty();
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCAudioSessionCMS startInternal]";
      v19 = 1024;
      v20 = 281;
      v21 = 1024;
      LODWORD(selfCopy2) = v10;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_IsPlaying YES result=%d", &v15, 0x22u);
    }
  }

  if (v7)
  {
    isInterrupted = self->super._isInterrupted;
  }

  else
  {
    isInterrupted = 0;
  }

  result = v7 == 0;
  self->super._isInterrupted = isInterrupted;
  return result;
}

- (BOOL)startSessionWithMediaProperties:(id)properties sessionRef:(unsigned int *)ref
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_cmSession)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioSessionCMS startSessionWithMediaProperties:sessionRef:];
      }
    }

    return 0;
  }

  else
  {
    self->super._sessionPid = [properties processId];
    CMSession = VCCMSessionStub_AudioSessionCreateCMSession();
    v4 = CMSession == 0;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (CMSession)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          sessionPid = self->super._sessionPid;
          v21 = 136316162;
          v22 = v17;
          v23 = 2080;
          v24 = "[VCAudioSessionCMS startSessionWithMediaProperties:sessionRef:]";
          v25 = 1024;
          v26 = 295;
          v27 = 1024;
          v28 = CMSession;
          v29 = 2048;
          v30 = sessionPid;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CMSessionCreate failed err=%d, _sessionPid=%ld", &v21, 0x2Cu);
        }
      }

      if ([(NSMutableArray *)self->super._clients count])
      {
        v20 = self->_cmSession;
        if (v20)
        {
          CFRelease(v20);
          self->_cmSession = 0;
          VCCMSessionStub_AudioSessionDestroyCMSession();
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = self->super._sessionPid;
          audioSessionId = self->super._audioSessionId;
          v21 = 136316162;
          v22 = v11;
          v23 = 2080;
          v24 = "[VCAudioSessionCMS startSessionWithMediaProperties:sessionRef:]";
          v25 = 1024;
          v26 = 297;
          v27 = 1024;
          v28 = v13;
          v29 = 1024;
          LODWORD(v30) = audioSessionId;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created session for _sessionPid=%d, _audioSessionId=%u", &v21, 0x28u);
        }
      }

      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, self, VCAudioSession_InterruptionListenerCallback, *MEMORY[0x1E69AFB80], self->_cmSession, CFNotificationSuspensionBehaviorDeliverImmediately);
      self->super._operatingMode = [properties operatingMode];
      if (self->super._playbackMode)
      {
        [(VCAudioSessionCMS *)self applyAudioSessionMediaPropertiesForSystemAudio];
      }

      else
      {
        -[VCAudioSessionCMS applyAudioSessionPropertiesWithVPOperatingMode:](self, "applyAudioSessionPropertiesWithVPOperatingMode:", [properties vpOperatingMode]);
      }

      CFNotificationCenterAddObserver(LocalCenter, self, VCAudioSession_AvailableSampleRateChangeListenerCallback, *MEMORY[0x1E69AFB30], self->_cmSession, CFNotificationSuspensionBehaviorDeliverImmediately);
      [(VCAudioSessionCMS *)self refreshAudioOuputLatencyWithReason:0];
      CFNotificationCenterAddObserver(LocalCenter, self, VCAudioSession_ActiveAudioRouteDidChange, *MEMORY[0x1E69AFAE0], self->_cmSession, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    if (ref)
    {
      v16 = self->_cmSession;
      if (v16)
      {
        *ref = CFHash(v16);
      }
    }
  }

  return v4;
}

- (BOOL)stopSession
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_cmSession)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E69AFAE0], self->_cmSession);
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E69AFB30], self->_cmSession);
    CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E69AFB80], self->_cmSession);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v5 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS stopSession]";
        v19 = 1024;
        v20 = 346;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting kCMSessionProperty_IsPlaying to false", &v15, 0x1Cu);
      }
    }

    VCCMSessionStub_CMSessionSetProperty();
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v8;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS stopSession]";
        v19 = 1024;
        v20 = 349;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ending CMSessionInteruption", &v15, 0x1Cu);
      }
    }

    VCCMSessionStub_CMSessionEndInterruption();
    VCCMSessionStub_CMSessionNotificationBarrier();
    CFRelease(self->_cmSession);
    self->_cmSession = 0;
    VCCMSessionStub_AudioSessionDestroyCMSession();
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        sessionPid = self->super._sessionPid;
        audioSessionId = self->super._audioSessionId;
        v15 = 136316162;
        v16 = v10;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS stopSession]";
        v19 = 1024;
        v20 = 355;
        v21 = 1024;
        v22 = sessionPid;
        v23 = 1024;
        v24 = audioSessionId;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing session for _sessionPid=%d, _audioSessionId=%u", &v15, 0x28u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioSessionCMS stopSession];
    }
  }

  return 0;
}

- (void)setMicrophoneMuted:(BOOL)muted
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"Setting microphone muted is unsupported for class=%s, please ensure client paths are guarded with the appropriate feature flag checks", class_getName(v5)];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v16 = v7;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS setMicrophoneMuted:]";
        v19 = 1024;
        v20 = 363;
        v21 = 2112;
        v22 = v6;
        v9 = " [%s] %s:%d %@";
        v10 = v8;
        v11 = 38;
LABEL_11:
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCAudioSessionCMS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = v13;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS setMicrophoneMuted:]";
        v19 = 1024;
        v20 = 363;
        v21 = 2112;
        v22 = v12;
        v23 = 2048;
        selfCopy = self;
        v25 = 2112;
        v26 = v6;
        v9 = " [%s] %s:%d %@(%p) %@";
        v10 = v14;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"_VCAudioSessionCMS_UnsupportedOperationException" reason:v6 userInfo:0]);
}

- (BOOL)microphoneMuted
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"Fetching microphone muted is unsupported for class=%s, please ensure client paths are guarded with the appropriate feature flag checks", class_getName(v4)];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS microphoneMuted]";
        v19 = 1024;
        v20 = 369;
        v21 = 2112;
        v22 = v5;
        v8 = " [%s] %s:%d %@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioSessionCMS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS microphoneMuted]";
        v19 = 1024;
        v20 = 369;
        v21 = 2112;
        v22 = v11;
        v23 = 2048;
        selfCopy = self;
        v25 = 2112;
        v26 = v5;
        v8 = " [%s] %s:%d %@(%p) %@";
        v9 = v13;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"_VCAudioSessionCMS_UnsupportedOperationException" reason:v5 userInfo:0]);
}

- (void)setMuteStateChangedHandler:(id)handler delegateQueue:(id)queue
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [v5 stringWithFormat:@"Listening for microphone mute state changed events is unsupported for class=%s, please ensure client paths are guarded with the appropriate feature flag checks", class_getName(v6)];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v17 = v8;
        v18 = 2080;
        v19 = "[VCAudioSessionCMS setMuteStateChangedHandler:delegateQueue:]";
        v20 = 1024;
        v21 = 376;
        v22 = 2112;
        v23 = v7;
        v10 = " [%s] %s:%d %@";
        v11 = v9;
        v12 = 38;
LABEL_11:
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCAudioSessionCMS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v17 = v14;
        v18 = 2080;
        v19 = "[VCAudioSessionCMS setMuteStateChangedHandler:delegateQueue:]";
        v20 = 1024;
        v21 = 376;
        v22 = 2112;
        v23 = v13;
        v24 = 2048;
        selfCopy = self;
        v26 = 2112;
        v27 = v7;
        v10 = " [%s] %s:%d %@(%p) %@";
        v11 = v15;
        v12 = 58;
        goto LABEL_11;
      }
    }
  }

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"_VCAudioSessionCMS_UnsupportedOperationException" reason:v7 userInfo:0]);
}

- (void)didBeginQuietTime
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCAudioSessionCMS didBeginQuietTime]";
      v8 = 1024;
      v9 = 384;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignore interruption", &v4, 0x1Cu);
    }
  }
}

- (void)didEndQuietTime
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCAudioSessionCMS didEndQuietTime]";
      v8 = 1024;
      v9 = 389;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignore interruption", &v4, 0x1Cu);
    }
  }
}

- (void)handleSecureMicNotificationWithInterruptionInfo:(__CFDictionary *)info
{
  v24 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(info, *MEMORY[0x1E69AF9E8]);
  if (!Value)
  {
    return;
  }

  valuePtr = -1;
  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315650;
    v17 = v8;
    v18 = 2080;
    v19 = "[VCAudioSessionCMS handleSecureMicNotificationWithInterruptionInfo:]";
    v20 = 1024;
    v21 = 399;
    v10 = " [%s] %s:%d No interruption reason provided";
    v11 = v9;
    v12 = 28;
LABEL_14:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    return;
  }

  v4 = valuePtr;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4 != 1)
  {
    if (ErrorLogLevelForModule < 6)
    {
      return;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315906;
    v17 = v13;
    v18 = 2080;
    v19 = "[VCAudioSessionCMS handleSecureMicNotificationWithInterruptionInfo:]";
    v20 = 1024;
    v21 = 408;
    v22 = 1024;
    v23 = valuePtr;
    v10 = " [%s] %s:%d Interruption reason=%d";
    v11 = v14;
    v12 = 34;
    goto LABEL_14;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v6;
      v18 = 2080;
      v19 = "[VCAudioSessionCMS handleSecureMicNotificationWithInterruptionInfo:]";
      v20 = 1024;
      v21 = 404;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Secure microphone engaged interruption reason", buf, 0x1Cu);
    }
  }

  [+[VCAudioClientManager sharedInstance](VCAudioClientManager secureMicrophoneEngagedNotification];
}

- (void)handleAudioInterruption:(opaqueCMSession *)interruption interruptionInfo:(__CFDictionary *)info
{
  v25 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(info, *MEMORY[0x1E69AF9E0]);
  valuePtr = -1431655766;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = valuePtr;
      if (info)
      {
        v11 = [-[__CFDictionary description](info "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      *buf = 136316162;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCAudioSessionCMS handleAudioInterruption:interruptionInfo:]";
      v19 = 1024;
      v20 = 418;
      v21 = 1024;
      v22 = v10;
      v23 = 2080;
      v24 = v11;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d interruptionValue=%d, interruptInfo=%s", buf, 0x2Cu);
    }
  }

  if (self->_cmSession == interruption)
  {
    if (valuePtr > 2)
    {
      switch(valuePtr)
      {
        case 3:
          [(VCAudioSessionCMS *)self didEndQuietTime];
          return;
        case 4:
          [(VCAudioSession *)self didPause];
          return;
        case 5:
          [(VCAudioSession *)self didResume];
          return;
      }
    }

    else
    {
      switch(valuePtr)
      {
        case 0:
          [(VCAudioSessionCMS *)self handleSecureMicNotificationWithInterruptionInfo:info];
          [(VCAudioSession *)self didStop];
          return;
        case 1:
          [(VCAudioSession *)self didInterruptionEnded];
          return;
        case 2:
          [(VCAudioSessionCMS *)self didBeginQuietTime];
          return;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAudioSessionCMS handleAudioInterruption:interruptionInfo:]";
        v19 = 1024;
        v20 = 445;
        v21 = 1024;
        v22 = valuePtr;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unhandled session interruption: interruptionValue=%u", buf, 0x22u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioSessionCMS handleAudioInterruption:interruptionInfo:];
    }
  }
}

- (void)setupInputBeamforming
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (BOOL)internalSelectMicrophoneWithType:(unsigned int)type
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (type == 1)
  {
    p_micSourceBack = &self->super._micSourceBack;
    if (self->super._micSourceBack)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_12;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v11 = *p_micSourceBack;
      v13 = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "[VCAudioSessionCMS internalSelectMicrophoneWithType:]";
      v17 = 1024;
      v18 = 513;
      v19 = 2112;
      v20 = v11;
      v9 = " [%s] %s:%d applying back microphone preference _micSourceBack=%@";
      goto LABEL_11;
    }
  }

  else if (!type)
  {
    p_micSourceBack = &self->super._micSourceFront;
    if (self->super._micSourceFront)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_12;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v8 = *p_micSourceBack;
      v13 = 136315906;
      v14 = v6;
      v15 = 2080;
      v16 = "[VCAudioSessionCMS internalSelectMicrophoneWithType:]";
      v17 = 1024;
      v18 = 510;
      v19 = 2112;
      v20 = v8;
      v9 = " [%s] %s:%d applying front microphone preference _micSourceFront=%@";
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v9, &v13, 0x26u);
LABEL_12:
      VCMicrophonePreferencesCMS_ApplyMicrophonePreferences(self->_cmSession, *p_micSourceBack);
    }
  }

  self->super._selectedMicrophone = type;
  return 1;
}

- (BOOL)readSessionProperty:(__CFString *)property floatValue:(float *)value
{
  *value = NAN;
  v5 = VCCMSessionStub_CMSessionCopyProperty();
  if (v5)
  {
    [VCAudioSessionCMS readSessionProperty:property floatValue:v5];
  }

  else
  {
    [VCAudioSessionCMS readSessionProperty:property floatValue:?];
  }

  return v5 == 0;
}

- (void)refreshAudioOuputLatencyWithReason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = NAN;
  if ([(VCAudioSessionCMS *)self readSessionProperty:*MEMORY[0x1E69AFE48] floatValue:&v9])
  {
    [(VCAudioSessionCMS *)self setExternalInputAudioLatency:v9];
  }

  if ([(VCAudioSessionCMS *)self readSessionProperty:*MEMORY[0x1E69AFE70] floatValue:&v9])
  {
    [(VCAudioSessionCMS *)self setExternalOutputAudioLatency:v9];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      externalInputAudioLatency = self->_externalInputAudioLatency;
      externalOutputAudioLatency = self->_externalOutputAudioLatency;
      *buf = 136316418;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCAudioSessionCMS refreshAudioOuputLatencyWithReason:]";
      v14 = 1024;
      v15 = 541;
      v16 = 2112;
      reasonCopy = reason;
      v18 = 2048;
      v19 = externalInputAudioLatency;
      v20 = 2048;
      v21 = externalOutputAudioLatency;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received audio route changed with audioSessionRouteChangeReason=%@ new externalInputAudioLatency=%f externalOutputAudioLatency=%f", buf, 0x3Au);
    }
  }
}

- (void)didAudioRouteChangeWithUserInfo:(__CFDictionary *)info
{
  block[6] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(info, *MEMORY[0x1E69B05D0]);
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCAudioSessionCMS_didAudioRouteChangeWithUserInfo___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = Value;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)setSampleRate:(double)rate
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->super._isTetheredDisplayMode)
  {
    rateCopy = 48000.0;
  }

  else
  {
    rateCopy = rate;
  }

  v9 = rateCopy;
  valuePtr = 0;
  v4 = VCCMSessionStub_CMSessionCopyProperty();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_34())
    {
      *buf = 136315906;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCAudioSessionCMS setSampleRate:]";
      v14 = 1024;
      v15 = 191;
      v16 = 1024;
      v17 = v4;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error Getting kCMSessionProperty_PreferredOutputSampleRate result=%d", buf, 0x22u);
    }
  }

  return 0;
}

- (void)setAudioIOProperties:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  v2 = @"AVAudioClientAudioToolboxAudioIOPropertiesKey";
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error: VCAudioSessionCMS does not support key=%@", v1, 0x26u);
}

- (void)applyRequestedProperty:defaultValue:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)applyRequestedProperty:defaultValue:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)applyRequestedProperties:propertyOrder:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)startSessionWithMediaProperties:sessionRef:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)stopSession
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)handleAudioInterruption:interruptionInfo:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)readSessionProperty:(uint64_t)a1 floatValue:(int)a2 .cold.1(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 524;
      v11 = 2112;
      v12 = a1;
      v13 = v6;
      v14 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to read property=%@. error=%d", &v7, 0x2Cu);
    }
  }
}

- (void)readSessionProperty:(uint64_t)a1 floatValue:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      v7 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Value returned for property=%@ is nil!", &v4, 0x26u);
    }
  }
}

@end