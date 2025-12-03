@interface VCAudioSessionAVAS
+ (SEL)selectorForNotification:(id)notification;
+ (unsigned)muteReasonFromMuteChangedInfo:(id)info;
- (BOOL)applyAudioSessionMediaProperties:(id)properties;
- (BOOL)applyRequestedProperties:(id)properties propertyOrder:(id)order;
- (BOOL)applyRequestedProperty:(id)property defaultValue:(void *)value;
- (BOOL)handleNetworkUplinkClockConfigurationUpdate:(id)update;
- (BOOL)internalSelectMicrophoneWithType:(unsigned int)type;
- (BOOL)isInputAvailable;
- (BOOL)isInputSupported;
- (BOOL)microphoneMuted;
- (BOOL)setSampleRate:(double)rate;
- (BOOL)setSessionProperty:(id)property value:(id)value;
- (BOOL)setUpCMSessionToAVAudioSessionMapping;
- (BOOL)setUpGenericSessionProperties;
- (BOOL)setUpNotificationsArray;
- (BOOL)setVPBlockConfigurationProperties:(id)properties;
- (BOOL)shouldSetupSharePlayWithOperatingMode:(unsigned int)mode isSharePlayCapable:(BOOL *)capable;
- (BOOL)startInternal;
- (BOOL)startSessionWithMediaProperties:(id)properties sessionRef:(unsigned int *)ref;
- (BOOL)stopSession;
- (VCAudioSessionAVAS)initWithMode:(int)mode;
- (id)avAudioSessionKeyFromCMSessionKey:(id)key;
- (unint64_t)avAudioSessionAllowedRouteTypesFromCMSession:(id)session;
- (void)applyAudioSessionMediaPropertiesForSystemAudio;
- (void)applyAudioSessionProperties;
- (void)applyClientPid;
- (void)dealloc;
- (void)deregisterObserverNotifications;
- (void)dispatchedApplyMicrophoneMute:(BOOL)mute;
- (void)dispatchedInvokeMuteStateChangedHandlerWithIsMuted:(BOOL)muted reason:(unsigned __int8)reason;
- (void)dispatchedSetVPBlockConfigurationProperties:(BOOL)properties;
- (void)handleAudioSessionInputMuteChangeNotification:(id)notification;
- (void)handleAudioSessionInterruption:(id)interruption;
- (void)handleAudioSessionMediaServicesWereLostNotification:(id)notification;
- (void)handleAudioSessionMediaServicesWereResetNotification:(id)notification;
- (void)handleAudioSessionRouteChangeNotification:(id)notification;
- (void)handleOutputSampleRateChange:(id)change;
- (void)handleSecureMicNotificationWithInterruptionInfo:(id)info;
- (void)registerObserverNotifications;
- (void)resetOverrideRoute;
- (void)scheduleDeferredNetworkUplinkClockUpdate;
- (void)setAudioClockDeviceEnabled:(BOOL)enabled;
- (void)setAudioIOProperties:(id)properties;
- (void)setBlockSize:(double)size sampleRate:(double)rate force:(BOOL)force;
- (void)setMicrophoneMuted:(BOOL)muted;
- (void)setMuteStateChangedHandler:(id)handler delegateQueue:(id)queue;
- (void)setOptimizedTelephonyHandoverSettings:(BOOL)settings networkUplinkClockUsesBaseband:(BOOL)baseband;
- (void)setSpeakerProperty:(id)property;
- (void)setupInputBeamforming;
- (void)stopSession;
@end

@implementation VCAudioSessionAVAS

- (BOOL)setUpCMSessionToAVAudioSessionMapping
{
  v15[10] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6958158];
  v4 = *MEMORY[0x1E69AF988];
  v14[0] = *MEMORY[0x1E69AF950];
  v14[1] = v4;
  v5 = *MEMORY[0x1E6958168];
  v15[0] = v3;
  v15[1] = v5;
  v6 = *MEMORY[0x1E6958160];
  v7 = *MEMORY[0x1E69AF828];
  v14[2] = *MEMORY[0x1E69AF960];
  v14[3] = v7;
  v8 = *MEMORY[0x1E6958130];
  v15[2] = v6;
  v15[3] = v8;
  v9 = *MEMORY[0x1E6958060];
  v10 = *MEMORY[0x1E69AF6A0];
  v14[4] = *MEMORY[0x1E69AF6F8];
  v14[5] = v10;
  v11 = *MEMORY[0x1E6958068];
  v15[4] = v9;
  v15[5] = v11;
  v14[6] = &unk_1F579B190;
  v14[7] = &unk_1F579B1C0;
  v15[6] = &unk_1F579B1A8;
  v15[7] = &unk_1F579B1D8;
  v14[8] = @"AirTunes";
  v14[9] = @"HeadphonesBT";
  v15[8] = &unk_1F579B1F0;
  v15[9] = &unk_1F579B208;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:10];
  self->_cmSessionToAVAudioSessionMapping = v12;
  return v12 != 0;
}

- (BOOL)setUpGenericSessionProperties
{
  v8[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = *MEMORY[0x1E69B0068];
  v8[0] = *MEMORY[0x1E69AFDF8];
  v8[1] = v4;
  v5 = *MEMORY[0x1E69B0340];
  v8[2] = *MEMORY[0x1E69AFF90];
  v8[3] = v5;
  v6 = [v3 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 4)}];
  self->_genericSessionProperties = v6;
  return v6 != 0;
}

+ (SEL)selectorForNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*MEMORY[0x1E69580B8] isEqualToString:?])
  {
    return sel_handleAudioSessionInputMuteChangeNotification_;
  }

  if ([*MEMORY[0x1E69580D8] isEqualToString:notification])
  {
    return sel_handleAudioSessionInterruption_;
  }

  if ([*MEMORY[0x1E6958188] isEqualToString:notification])
  {
    return sel_handleOutputSampleRateChange_;
  }

  if ([*MEMORY[0x1E6958110] isEqualToString:notification])
  {
    return sel_handleAudioSessionMediaServicesWereLostNotification_;
  }

  if ([*MEMORY[0x1E6958128] isEqualToString:notification])
  {
    return sel_handleAudioSessionMediaServicesWereResetNotification_;
  }

  if ([*MEMORY[0x1E6958228] isEqualToString:notification])
  {
    return sel_handleAudioSessionRouteChangeNotification_;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        +[VCAudioSessionAVAS selectorForNotification:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = 136316418;
        v10 = v7;
        v11 = 2080;
        v12 = "+[VCAudioSessionAVAS selectorForNotification:]";
        v13 = 1024;
        v14 = 126;
        v15 = 2112;
        v16 = v6;
        v17 = 2048;
        selfCopy = self;
        v19 = 2112;
        notificationCopy = notification;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unrecognized notification=%@, returning NULL selector", &v9, 0x3Au);
      }
    }
  }

  return 0;
}

- (BOOL)setUpNotificationsArray
{
  v9[6] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFB8]);
  v4 = *MEMORY[0x1E69580D8];
  v9[0] = *MEMORY[0x1E69580B8];
  v9[1] = v4;
  v5 = *MEMORY[0x1E6958110];
  v9[2] = *MEMORY[0x1E6958188];
  v9[3] = v5;
  v6 = *MEMORY[0x1E6958228];
  v9[4] = *MEMORY[0x1E6958128];
  v9[5] = v6;
  v7 = [v3 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 6)}];
  self->_avAudioSessionNotifications = v7;
  return v7 != 0;
}

- (VCAudioSessionAVAS)initWithMode:(int)mode
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCAudioSessionAVAS;
  v3 = [(VCAudioSession *)&v6 initWithMode:*&mode];
  v4 = v3;
  if (v3 && (![(VCAudioSessionAVAS *)v3 setUpCMSessionToAVAudioSessionMapping]|| ![(VCAudioSessionAVAS *)v4 setUpGenericSessionProperties]|| ![(VCAudioSessionAVAS *)v4 setUpNotificationsArray]))
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCAudioSessionAVAS *)self destroyAudioSession];
  _Block_release(self->_muteStateChangedHandler);
  muteStateChangedHandlerQueue = self->_muteStateChangedHandlerQueue;
  if (muteStateChangedHandlerQueue)
  {
    dispatch_release(muteStateChangedHandlerQueue);
  }

  v4.receiver = self;
  v4.super_class = VCAudioSessionAVAS;
  [(VCAudioSession *)&v4 dealloc];
}

- (void)resetOverrideRoute
{
  v3[5] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->super._dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VCAudioSessionAVAS_resetOverrideRoute__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(dispatchQueue, v3);
}

void __40__VCAudioSessionAVAS_resetOverrideRoute__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 312);
  if (v2)
  {
    v9 = 0;
    if ([v2 overrideOutputAudioPort:0 error:&v9])
    {
      v3 = v9 == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(a1 + 32) + 312);
        *buf = 136316418;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCAudioSessionAVAS resetOverrideRoute]_block_invoke";
        v14 = 1024;
        v15 = 182;
        v16 = 2048;
        v17 = v6;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d _avAudioSession=%p [%@] overrideOutputAudioPort:AVAudioSessionPortOverrideNone failed with error=%@", buf, 0x3Au);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = v7;
      v12 = 2080;
      v13 = "[VCAudioSessionAVAS resetOverrideRoute]_block_invoke";
      v14 = 1024;
      v15 = 176;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Error no AVAudioSession", buf, 0x1Cu);
    }
  }
}

- (BOOL)setSessionProperty:(id)property value:(id)value
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_avAudioSession)
  {
    v16 = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        avAudioSession = self->_avAudioSession;
        *buf = 136316674;
        v18 = v7;
        v19 = 2080;
        v20 = "[VCAudioSessionAVAS setSessionProperty:value:]";
        v21 = 1024;
        v22 = 194;
        v23 = 2048;
        v24 = avAudioSession;
        v25 = 2112;
        v26 = avAudioSession;
        v27 = 2112;
        propertyCopy2 = property;
        v29 = 2112;
        valueCopy2 = value;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _avAudioSession=%p [%@] setting propertyKey=%@ to propertyValue=%@", buf, 0x44u);
      }
    }

    v10 = [(AVAudioSession *)self->_avAudioSession setMXSessionProperty:property value:value error:&v16];
    if (v16)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if (!v11 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v14 = self->_avAudioSession;
        *buf = 136316930;
        v18 = v12;
        v19 = 2080;
        v20 = "[VCAudioSessionAVAS setSessionProperty:value:]";
        v21 = 1024;
        v22 = 201;
        v23 = 2048;
        v24 = v14;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        propertyCopy2 = property;
        v29 = 2112;
        valueCopy2 = value;
        v31 = 2112;
        v32 = v16;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d _avAudioSession=%p [%@] setting propertyKey=%@ with propertyValue=%@ failed with error=%@", buf, 0x4Eu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioSessionAVAS setSessionProperty:value:];
      }
    }

    return 0;
  }

  return v11;
}

- (BOOL)applyRequestedProperties:(id)properties propertyOrder:(id)order
{
  v58 = *MEMORY[0x1E69E9840];
  if (self->_avAudioSession)
  {
    if (!properties && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioSessionAVAS applyRequestedProperties:propertyOrder:];
      }
    }

    v35 = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v37 = v6;
        v38 = 2080;
        v39 = "[VCAudioSessionAVAS applyRequestedProperties:propertyOrder:]";
        v40 = 1024;
        v41 = 219;
        v42 = 2112;
        propertiesCopy = properties;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Batch set properties=%@", buf, 0x26u);
      }
    }

    v30 = [(AVAudioSession *)self->_avAudioSession setMXProperties:properties propertyErrors:&v35, 312];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v35;
    v33 = [v35 countByEnumeratingWithState:&v54 objects:v53 count:16];
    if (v33)
    {
      v32 = *v55;
      do
      {
        v8 = 0;
        do
        {
          if (*v55 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v8;
          v9 = *(*(&v54 + 1) + 8 * v8);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          allKeys = [v9 allKeys];
          v11 = [allKeys countByEnumeratingWithState:&v49 objects:v48 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v50;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v50 != v13)
                {
                  objc_enumerationMutation(allKeys);
                }

                v15 = *(*(&v49 + 1) + 8 * i);
                if ([objc_msgSend(v9 objectForKeyedSubscript:{v15), "unsignedIntValue"}] || !objc_msgSend(properties, "objectForKeyedSubscript:", v15))
                {
                  [(NSMutableDictionary *)self->super._currentAudioSessionProperties setObject:0 forKeyedSubscript:v15];
                  if (VRTraceGetErrorLogLevelForModule() >= 5)
                  {
                    v16 = VRTraceErrorLogLevelToCSTR();
                    v17 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v18 = [properties objectForKeyedSubscript:v15];
                      *buf = 136316162;
                      v37 = v16;
                      v38 = 2080;
                      v39 = "[VCAudioSessionAVAS applyRequestedProperties:propertyOrder:]";
                      v40 = 1024;
                      v41 = 229;
                      v42 = 2112;
                      propertiesCopy = v15;
                      v44 = 2112;
                      v45 = v18;
                      v19 = v17;
                      v20 = " [%s] %s:%d Failed to set property=%@ value=%@";
LABEL_27:
                      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x30u);
                      continue;
                    }
                  }
                }

                else
                {
                  -[NSMutableDictionary setObject:forKeyedSubscript:](self->super._currentAudioSessionProperties, "setObject:forKeyedSubscript:", [properties objectForKeyedSubscript:v15], v15);
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v21 = VRTraceErrorLogLevelToCSTR();
                    v22 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v23 = [properties objectForKeyedSubscript:v15];
                      *buf = 136316162;
                      v37 = v21;
                      v38 = 2080;
                      v39 = "[VCAudioSessionAVAS applyRequestedProperties:propertyOrder:]";
                      v40 = 1024;
                      v41 = 226;
                      v42 = 2112;
                      propertiesCopy = v15;
                      v44 = 2112;
                      v45 = v23;
                      v19 = v22;
                      v20 = " [%s] %s:%d Succeeded in setting property=%@ value=%@";
                      goto LABEL_27;
                    }
                  }
                }
              }

              v12 = [allKeys countByEnumeratingWithState:&v49 objects:v48 count:16];
            }

            while (v12);
          }

          v8 = v34 + 1;
        }

        while (v34 + 1 != v33);
        v33 = [obj countByEnumeratingWithState:&v54 objects:v53 count:16];
      }

      while (v33);
    }

    v24 = v30;
    if ((v30 & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v27 = *(&self->super.super.super.isa + v29);
        *buf = 136316418;
        v37 = v25;
        v38 = 2080;
        v39 = "[VCAudioSessionAVAS applyRequestedProperties:propertyOrder:]";
        v40 = 1024;
        v41 = 235;
        v42 = 2048;
        propertiesCopy = v27;
        v44 = 2112;
        v45 = v27;
        v46 = 2112;
        v47 = v35;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d _avAudioSession=%p [%@] failed to batch set property keys with errors=%@", buf, 0x3Au);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioSessionAVAS applyRequestedProperties:propertyOrder:];
      }
    }

    return 0;
  }

  return v24;
}

- (BOOL)isInputAvailable
{
  avAudioSession = self->_avAudioSession;
  if (avAudioSession)
  {
    LOBYTE(avAudioSession) = [(AVAudioSession *)avAudioSession isInputAvailable];
  }

  return avAudioSession;
}

- (BOOL)isInputSupported
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(VCAudioSessionAVAS *)self isInputAvailable])
  {
    category = [(AVAudioSession *)self->_avAudioSession category];
    v4 = [(NSString *)category isEqualToString:*MEMORY[0x1E6958060]]|| [(NSString *)category isEqualToString:*MEMORY[0x1E6958078]];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        avAudioSession = self->_avAudioSession;
        v12 = 136316418;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCAudioSessionAVAS isInputSupported]";
        v16 = 1024;
        v17 = 257;
        v18 = 2112;
        v19 = avAudioSession;
        v20 = 2112;
        v21 = category;
        v22 = 1024;
        v23 = v4;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Configured avAudioSession=%@ with category=%@, categorySupportsInput=%{BOOL}d", &v12, 0x36u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_avAudioSession;
        v12 = 136315906;
        v13 = v5;
        v14 = 2080;
        v15 = "[VCAudioSessionAVAS isInputSupported]";
        v16 = 1024;
        v17 = 251;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No input available avAudioSession=%@", &v12, 0x26u);
      }
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setSpeakerProperty:(id)property
{
  v4 = *MEMORY[0x1E69AFDF8];
  v5 = [property objectForKeyedSubscript:*MEMORY[0x1E69AFDF8]];

  [(VCAudioSessionAVAS *)self setSessionProperty:v4 value:v5];
}

- (void)setAudioIOProperties:(id)properties
{
  v73 = *MEMORY[0x1E69E9840];
  v51 = 0;
  if (self->_avAudioSession)
  {
    goto LABEL_2;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_2;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_2;
    }

    *buf = 136315650;
    v53 = v36;
    v54 = 2080;
    v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
    v56 = 1024;
    v57 = 268;
    v38 = " [%s] %s:%d avAudioSession is nil";
    v39 = v37;
    v40 = 28;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_2;
    }

    v41 = VRTraceErrorLogLevelToCSTR();
    v42 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_2;
    }

    *buf = 136316162;
    v53 = v41;
    v54 = 2080;
    v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
    v56 = 1024;
    v57 = 268;
    v58 = 2112;
    v59 = v25;
    v60 = 2048;
    selfCopy4 = self;
    v38 = " [%s] %s:%d %@(%p) avAudioSession is nil";
    v39 = v42;
    v40 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);
LABEL_2:
  [(AVAudioSession *)self->_avAudioSession setAudioIOProperties:properties propertyErrors:&v51];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v5 = v51;
  v6 = [(__CFString *)v51 countByEnumeratingWithState:&v69 objects:v68 count:16];
  if (!v6)
  {
    p_cachedAudioToolboxProperties = &self->super._cachedAudioToolboxProperties;

    goto LABEL_29;
  }

  v7 = v6;
  v8 = *v70;
  v9 = 1;
  v50 = v5;
  do
  {
    v10 = 0;
    do
    {
      if (*v70 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v69 + 1) + 8 * v10);
      v12 = [(__CFString *)v51 objectForKeyedSubscript:v11];
      if (([(__CFString *)v12 isEqualToNumber:&unk_1F579B190]& 1) == 0)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              avAudioSession = self->_avAudioSession;
              *buf = 136316418;
              v53 = v20;
              v54 = 2080;
              v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
              v56 = 1024;
              v57 = 276;
              v58 = 2112;
              v59 = avAudioSession;
              v60 = 2112;
              selfCopy4 = v11;
              v62 = 2112;
              v63 = v12;
              v17 = v21;
              v18 = " [%s] %s:%d _avAudioSession=%@ setting property kAudioTranslationKey_TranslationConfiguration with propertyValue=%@ failed with error code=%@";
              v19 = 58;
LABEL_21:
              _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
            }

LABEL_16:
            v9 = 0;
            v5 = v50;
            goto LABEL_18;
          }
        }

        else
        {
          v13 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v13 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v16 = self->_avAudioSession;
              *buf = 136316930;
              v53 = v14;
              v54 = 2080;
              v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
              v56 = 1024;
              v57 = 276;
              v58 = 2112;
              v59 = v13;
              v60 = 2048;
              selfCopy4 = self;
              v62 = 2112;
              v63 = v16;
              v64 = 2112;
              propertiesCopy4 = v11;
              v66 = 2112;
              v67 = v12;
              v17 = v15;
              v18 = " [%s] %s:%d %@(%p) _avAudioSession=%@ setting property kAudioTranslationKey_TranslationConfiguration with propertyValue=%@ failed with error code=%@";
              v19 = 78;
              goto LABEL_21;
            }

            goto LABEL_16;
          }
        }

        v9 = 0;
      }

LABEL_18:
      ++v10;
    }

    while (v7 != v10);
    v23 = [(__CFString *)v5 countByEnumeratingWithState:&v69 objects:v68 count:16];
    v7 = v23;
  }

  while (v23);
  p_cachedAudioToolboxProperties = &self->super._cachedAudioToolboxProperties;

  if ((v9 & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_58;
      }

      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *buf = 136316418;
      v53 = v43;
      v54 = 2080;
      v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
      v56 = 1024;
      v57 = 284;
      v58 = 2112;
      v59 = @"AVAudioClientAudioToolboxAudioIOPropertiesKey";
      v60 = 2112;
      selfCopy4 = properties;
      v62 = 2112;
      v63 = v51;
      v45 = " [%s] %s:%d Setting propertyKey=%@ failed, value=%@, error=%@";
      v46 = v44;
      v47 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_58;
      }

      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *buf = 136316930;
      v53 = v48;
      v54 = 2080;
      v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
      v56 = 1024;
      v57 = 284;
      v58 = 2112;
      v59 = v27;
      v60 = 2048;
      selfCopy4 = self;
      v62 = 2112;
      v63 = @"AVAudioClientAudioToolboxAudioIOPropertiesKey";
      v64 = 2112;
      propertiesCopy4 = properties;
      v66 = 2112;
      v67 = v51;
      v45 = " [%s] %s:%d %@(%p) Setting propertyKey=%@ failed, value=%@, error=%@";
      v46 = v49;
      v47 = 78;
    }

    _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
LABEL_58:
    v35 = 0;
    goto LABEL_59;
  }

LABEL_29:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v53 = v28;
        v54 = 2080;
        v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
        v56 = 1024;
        v57 = 281;
        v58 = 2112;
        v59 = @"AVAudioClientAudioToolboxAudioIOPropertiesKey";
        v60 = 2112;
        selfCopy4 = properties;
        v30 = " [%s] %s:%d Property propertyKey=%@ successfully set value=%@";
        v31 = v29;
        v32 = 48;
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v26 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v53 = v33;
        v54 = 2080;
        v55 = "[VCAudioSessionAVAS setAudioIOProperties:]";
        v56 = 1024;
        v57 = 281;
        v58 = 2112;
        v59 = v26;
        v60 = 2048;
        selfCopy4 = self;
        v62 = 2112;
        v63 = @"AVAudioClientAudioToolboxAudioIOPropertiesKey";
        v64 = 2112;
        propertiesCopy4 = properties;
        v30 = " [%s] %s:%d %@(%p) Property propertyKey=%@ successfully set value=%@";
        v31 = v34;
        v32 = 68;
LABEL_42:
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }
  }

  v35 = [properties copy];
LABEL_59:
  *p_cachedAudioToolboxProperties = v35;
}

- (id)avAudioSessionKeyFromCMSessionKey:(id)key
{
  result = [(NSDictionary *)self->_cmSessionToAVAudioSessionMapping objectForKeyedSubscript:?];
  if (!result)
  {
    return key;
  }

  return result;
}

- (unint64_t)avAudioSessionAllowedRouteTypesFromCMSession:(id)session
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [session countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (!v5)
  {
    return 0;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v30;
  *&v6 = 136316162;
  v17 = v6;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(session);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      v12 = [(VCAudioSessionAVAS *)self avAudioSessionKeyFromCMSessionKey:v11, v17];
      if (v12 == v11)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            cmSessionToAVAudioSessionMapping = self->_cmSessionToAVAudioSessionMapping;
            *buf = v17;
            v19 = v13;
            v20 = 2080;
            v21 = "[VCAudioSessionAVAS avAudioSessionAllowedRouteTypesFromCMSession:]";
            v22 = 1024;
            v23 = 299;
            v24 = 2112;
            v25 = v11;
            v26 = 2112;
            v27 = cmSessionToAVAudioSessionMapping;
            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d AllowedRouteType=%@ not found in mapping=%@", buf, 0x30u);
          }
        }
      }

      else
      {
        v8 |= [v12 unsignedIntegerValue];
      }
    }

    v7 = [session countByEnumeratingWithState:&v29 objects:v28 count:16];
  }

  while (v7);
  return v8;
}

- (void)dispatchedSetVPBlockConfigurationProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v18 = *MEMORY[0x1E69E9840];
  v5 = micro();
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCAudioSessionAVAS dispatchedSetVPBlockConfigurationProperties:]";
      v12 = 1024;
      v13 = 309;
      v14 = 1024;
      v15 = propertiesCopy;
      v16 = 2048;
      v17 = vcvtmd_u64_f64(v5);
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dispatching scheduled=%d VPBlock update to set network uplink clock now (time=%llu sec), ", &v8, 0x2Cu);
    }
  }

  [(VCAudioSessionAVAS *)self setVPBlockConfigurationProperties:self->super._vpBlock];
}

- (void)scheduleDeferredNetworkUplinkClockUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  self->_pendingVPBlockUpdate = 1;
  self->_networkUplinkClockScheduledTime = vcvtmd_u64_f64(micro());
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      networkUplinkClockScheduledTime = self->_networkUplinkClockScheduledTime;
      *buf = 136315906;
      v11 = v3;
      v12 = 2080;
      v13 = "[VCAudioSessionAVAS scheduleDeferredNetworkUplinkClockUpdate]";
      v14 = 1024;
      v15 = 316;
      v16 = 2048;
      v17 = networkUplinkClockScheduledTime;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting network uplink clock property on VPBlock now (time=%llu sec)", buf, 0x26u);
    }
  }

  v6 = self->_networkUplinkClockScheduledTime;
  v7 = dispatch_time(0, 30000000000);
  dispatchQueue = self->super._dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__VCAudioSessionAVAS_scheduleDeferredNetworkUplinkClockUpdate__block_invoke;
  v9[3] = &unk_1E85F40E0;
  v9[4] = self;
  v9[5] = v6;
  dispatch_after(v7, dispatchQueue, v9);
}

uint64_t __62__VCAudioSessionAVAS_scheduleDeferredNetworkUplinkClockUpdate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 392) == 1 && *(a1 + 40) == *(result + 384))
  {
    return [result dispatchedSetVPBlockConfigurationProperties:0];
  }

  return result;
}

- (BOOL)handleNetworkUplinkClockConfigurationUpdate:(id)update
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  -[NSMutableDictionary setValue:forKey:](self->super._vpBlock, "setValue:forKey:", update, [MEMORY[0x1E696AEC0] stringWithUTF8String:"network uplink clock uses baseband"]);
  if (self->super._deferredNetworkUplinkClockEnabled)
  {
    [(VCAudioSessionAVAS *)self scheduleDeferredNetworkUplinkClockUpdate];
    return 1;
  }

  else
  {
    vpBlock = self->super._vpBlock;

    return [(VCAudioSessionAVAS *)self setVPBlockConfigurationProperties:vpBlock];
  }
}

- (BOOL)applyRequestedProperty:(id)property defaultValue:(void *)value
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self->_avAudioSession)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VCAudioSessionAVAS applyRequestedProperty:defaultValue:];
    }

LABEL_40:
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

      [VCAudioSessionAVAS applyRequestedProperty:defaultValue:];
    }

    goto LABEL_40;
  }

  v22 = 0;
  v8 = [(VCAudioSessionAVAS *)self avAudioSessionKeyFromCMSessionKey:value];
  if ([(NSSet *)self->_genericSessionProperties containsObject:property])
  {
LABEL_6:
    v9 = [(VCAudioSessionAVAS *)self setSessionProperty:property value:value];
    goto LABEL_7;
  }

  if ([property isEqualToString:*MEMORY[0x1E69AFCE8]])
  {
    if (![v8 isEqualToString:value])
    {
      v9 = [(AVAudioSession *)self->_avAudioSession setMode:v8 error:&v22];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E69AFCC0];
  if ([property isEqualToString:*MEMORY[0x1E69AFCC0]])
  {
    v9 = [(AVAudioSession *)self->_avAudioSession setCategory:v8 error:&v22];
  }

  else if ([property isEqualToString:*MEMORY[0x1E69AFDB0]])
  {
    v9 = -[AVAudioSession setInterruptionPriority:error:](self->_avAudioSession, "setInterruptionPriority:error:", [v8 integerValue], &v22);
  }

  else if ([property isEqualToString:*MEMORY[0x1E69AFFD8]])
  {
    v9 = [(AVAudioSession *)self->_avAudioSession setActivationContext:value error:&v22];
  }

  else if ([property isEqualToString:*MEMORY[0x1E69AFC80]])
  {
    v14 = [(VCAudioSessionAVAS *)self avAudioSessionAllowedRouteTypesFromCMSession:value];
    if (v14)
    {
      v9 = [(AVAudioSession *)self->_avAudioSession setCategory:[(VCAudioSessionAVAS *)self avAudioSessionKeyFromCMSessionKey:[(NSMutableDictionary *)self->super._currentAudioSessionProperties objectForKeyedSubscript:v13]] withOptions:v14 error:&v22];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = v19;
          v25 = 2080;
          v26 = "[VCAudioSessionAVAS applyRequestedProperty:defaultValue:]";
          v27 = 1024;
          v28 = 383;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No allowed route types, nothing to do", buf, 0x1Cu);
        }
      }

      v9 = 1;
    }
  }

  else
  {
    if (![property isEqualToString:@"kVirtualAudioPluginVPBlockConfigurationNetworkUplinkClockUsesBaseband"])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v24 = v15;
          v25 = 2080;
          v26 = "[VCAudioSessionAVAS applyRequestedProperty:defaultValue:]";
          v27 = 1024;
          v28 = 394;
          v29 = 2112;
          propertyCopy3 = property;
          v31 = 2112;
          valueCopy3 = value;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d propertyKey=%@ is NOT explicitly mapped, value=%@", buf, 0x30u);
        }
      }

      goto LABEL_36;
    }

    v9 = [(VCAudioSessionAVAS *)self handleNetworkUplinkClockConfigurationUpdate:value];
  }

LABEL_7:
  if (!v9 || v22)
  {
LABEL_36:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v24 = v17;
        v25 = 2080;
        v26 = "[VCAudioSessionAVAS applyRequestedProperty:defaultValue:]";
        v27 = 1024;
        v28 = 401;
        v29 = 2112;
        propertyCopy3 = property;
        v31 = 2112;
        valueCopy3 = value;
        v33 = 2112;
        v34 = v22;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d Setting propertyKey=%@ failed, value=%@, error=%@", buf, 0x3Au);
      }
    }

    [(NSMutableDictionary *)self->super._currentAudioSessionProperties setObject:0 forKeyedSubscript:property];
    goto LABEL_40;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v24 = v10;
      v25 = 2080;
      v26 = "[VCAudioSessionAVAS applyRequestedProperty:defaultValue:]";
      v27 = 1024;
      v28 = 398;
      v29 = 2112;
      propertyCopy3 = property;
      v31 = 2112;
      valueCopy3 = value;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Property propertyKey=%@ successfully set value=%@", buf, 0x30u);
    }
  }

  [(NSMutableDictionary *)self->super._currentAudioSessionProperties setObject:value forKeyedSubscript:property];
  LOBYTE(v12) = 1;
  return v12;
}

- (void)applyAudioSessionMediaPropertiesForSystemAudio
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d _avAudioSession is nil, cannot set media properties for system audio", v2, v3, v4, v5, v6);
}

- (BOOL)shouldSetupSharePlayWithOperatingMode:(unsigned int)mode isSharePlayCapable:(BOOL *)capable
{
  playbackMode = self->super._playbackMode;
  if (!playbackMode)
  {
    if (mode <= 6 && ((1 << mode) & 0x74) != 0)
    {
      *capable = 1;
      -[VCAudioSessionAVAS setSessionProperty:value:](self, "setSessionProperty:value:", *MEMORY[0x1E69B00E0], [MEMORY[0x1E696AD98] numberWithBool:1]);
    }

    else
    {
      *capable = 0;
    }
  }

  return playbackMode == 0;
}

- (void)setBlockSize:(double)size sampleRate:(double)rate force:(BOOL)force
{
  v57 = *MEMORY[0x1E69E9840];
  avAudioSession = self->_avAudioSession;
  if (avAudioSession)
  {
    forceCopy = force;
    if (self->super._isTetheredDisplayMode)
    {
      rateCopy = 48000.0;
    }

    else
    {
      rateCopy = rate;
    }

    if (force)
    {
      goto LABEL_47;
    }

    [(AVAudioSession *)avAudioSession sampleRate];
    rateCopy = v10;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v46 = v11;
        v47 = 2080;
        v48 = "[VCAudioSessionAVAS setBlockSize:sampleRate:force:]";
        v49 = 1024;
        v50 = 496;
        v51 = 2048;
        v52 = rateCopy;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Route or AvailableSampleRate Changed: AVAudioSession CurrentHardwareSampleRate=%f", buf, 0x26u);
      }
    }

    if (self->super._hardwareSampleRate != rateCopy)
    {
LABEL_47:
      if (VCFeatureFlagManager_UseBlockDurationHinting())
      {
        [(AVAudioSession *)self->_avAudioSession IOBufferDuration];
        v14 = v13;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v46 = v15;
            v47 = 2080;
            v48 = "[VCAudioSessionAVAS setBlockSize:sampleRate:force:]";
            v49 = 1024;
            v50 = 503;
            v51 = 2048;
            v52 = v14;
            v53 = 2048;
            sizeCopy = size;
            v55 = 2048;
            *v56 = 1.0 / rateCopy;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Current ioBufferDuration=%f Desired duration=%f Error=%f", buf, 0x3Au);
          }
        }

        if (!forceCopy && vabdd_f64(v14, size) < 1.0 / rateCopy)
        {
          goto LABEL_36;
        }

        v44 = 0;
        v17 = [(AVAudioSession *)self->_avAudioSession setPreferredIOBufferDuration:&v44 error:size];
        v18 = v44;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (!v17 || v18 != 0)
        {
          if (ErrorLogLevelForModule < 3)
          {
            goto LABEL_36;
          }

          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          v42 = self->_avAudioSession;
          *buf = 136316674;
          v46 = v40;
          v47 = 2080;
          v48 = "[VCAudioSessionAVAS setBlockSize:sampleRate:force:]";
          v49 = 1024;
          v50 = 507;
          v51 = 2048;
          v52 = *&v42;
          v53 = 2112;
          sizeCopy = *&v42;
          v55 = 2048;
          *v56 = size;
          *&v56[8] = 2112;
          *&v56[10] = v44;
          v37 = " [%s] %s:%d avAudioSession=%p [%@] setPreferredIOBufferDuration=%f failed with error=%@";
          v38 = v41;
          v39 = 68;
          goto LABEL_44;
        }

        if (ErrorLogLevelForModule < 7)
        {
          goto LABEL_36;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v23 = self->_avAudioSession;
        *buf = 136316674;
        v46 = v21;
        v47 = 2080;
        v48 = "[VCAudioSessionAVAS setBlockSize:sampleRate:force:]";
        v49 = 1024;
        v50 = 508;
        v51 = 2048;
        v52 = *&v23;
        v53 = 2112;
        sizeCopy = *&v23;
        v55 = 2048;
        *v56 = size;
        *&v56[8] = 1024;
        *&v56[10] = forceCopy;
        v24 = " [%s] %s:%d avAudioSession=%p [%@] setPreferredIOBufferDuration=%f force=%{BOOL}d succeeded";
        v25 = v22;
        v26 = 64;
      }

      else
      {
        v43 = llround(rateCopy * size);
        [(VCAudioSession *)self forceBufferFrames:&v43];
        v44 = 0;
        v27 = [(AVAudioSession *)self->_avAudioSession setPreferredIOBufferFrameSize:v43 error:&v44];
        v28 = v44;
        v29 = VRTraceGetErrorLogLevelForModule();
        if (v27)
        {
          v30 = v28 == 0;
        }

        else
        {
          v30 = 0;
        }

        if (!v30)
        {
          if (v29 < 3)
          {
            goto LABEL_36;
          }

          v34 = VRTraceErrorLogLevelToCSTR();
          v35 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          v36 = self->_avAudioSession;
          *buf = 136316674;
          v46 = v34;
          v47 = 2080;
          v48 = "[VCAudioSessionAVAS setBlockSize:sampleRate:force:]";
          v49 = 1024;
          v50 = 518;
          v51 = 2048;
          v52 = *&v36;
          v53 = 2112;
          sizeCopy = *&v36;
          v55 = 1024;
          *v56 = v43;
          *&v56[4] = 2112;
          *&v56[6] = v44;
          v37 = " [%s] %s:%d avAudioSession=%p [%@] setPreferredIOBufferFrameSize=%d failed with error=%@";
          v38 = v35;
          v39 = 64;
LABEL_44:
          _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
          goto LABEL_36;
        }

        if (v29 < 7)
        {
          goto LABEL_36;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        v33 = self->_avAudioSession;
        *buf = 136316674;
        v46 = v31;
        v47 = 2080;
        v48 = "[VCAudioSessionAVAS setBlockSize:sampleRate:force:]";
        v49 = 1024;
        v50 = 519;
        v51 = 2048;
        v52 = *&v33;
        v53 = 2112;
        sizeCopy = *&v33;
        v55 = 1024;
        *v56 = v43;
        *&v56[4] = 1024;
        *&v56[6] = forceCopy;
        v24 = " [%s] %s:%d avAudioSession=%p [%@] setPreferredIOBufferFrameSize=%d force=%{BOOL}d succeeded";
        v25 = v32;
        v26 = 60;
      }

      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
LABEL_36:
      self->super._hardwareSampleRate = rateCopy;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioSessionAVAS setBlockSize:sampleRate:force:];
    }
  }
}

- (BOOL)setVPBlockConfigurationProperties:(id)properties
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(VCAudioSessionAVAS *)self setSessionProperty:*MEMORY[0x1E69B0490] value:properties];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (properties)
      {
        v8 = [objc_msgSend(properties "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v10 = 136316162;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCAudioSessionAVAS setVPBlockConfigurationProperties:]";
      v14 = 1024;
      v15 = 529;
      v16 = 2080;
      v17 = v8;
      v18 = 1024;
      v19 = v5;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d kCMSessionProperty_VPBlockConfiguration vpBlockDict=%s, success=%{BOOL}d", &v10, 0x2Cu);
    }
  }

  self->_pendingVPBlockUpdate = 0;
  return v5;
}

- (void)applyClientPid
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (BOOL)applyAudioSessionMediaProperties:(id)properties
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = v5;
      v14 = 2080;
      v15 = "[VCAudioSessionAVAS applyAudioSessionMediaProperties:]";
      v16 = 1024;
      v17 = 553;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  if (VCDefaults_GetBoolValueForKey(@"skipApplyingAudioSessionClientPID", 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        processId = [(VCAudioSessionMediaProperties *)[(VCAudioSessionClient *)self->super._activeClient mediaProperties] processId];
        *buf = 136315906;
        v13 = v7;
        v14 = 2080;
        v15 = "[VCAudioSessionAVAS applyAudioSessionMediaProperties:]";
        v16 = 1024;
        v17 = 559;
        v18 = 1024;
        v19 = processId;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipped applying VCAudioSessionProperty_ClientPID for processID=%d", buf, 0x22u);
      }
    }
  }

  else
  {
    [(VCAudioSessionAVAS *)self applyClientPid];
  }

  v11.receiver = self;
  v11.super_class = VCAudioSessionAVAS;
  return [(VCAudioSession *)&v11 applyAudioSessionMediaProperties:properties];
}

- (BOOL)startInternal
{
  *&v69[7] = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSessionAVAS-starting");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      avAudioSession = self->_avAudioSession;
      *buf = 136316162;
      v59 = v3;
      v60 = 2080;
      v61 = "[VCAudioSessionAVAS startInternal]";
      v62 = 1024;
      v63 = 566;
      v64 = 2048;
      selfCopy2 = self;
      v66 = 2112;
      *v67 = avAudioSession;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioSessionAVAS-starting (%p) audioSession=%@", buf, 0x30u);
    }
  }

  if (self->_isMuteStateCached)
  {
    [(VCAudioSessionAVAS *)self dispatchedApplyMicrophoneMute:self->_isMicrophoneMuted];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v9 = self->_avAudioSession;
      isMicrophoneMuted = self->_isMicrophoneMuted;
      *buf = 136316162;
      v59 = v7;
      v60 = 2080;
      v61 = "[VCAudioSessionAVAS startInternal]";
      v62 = 1024;
      v63 = 570;
      v64 = 2112;
      selfCopy2 = v9;
      v66 = 1024;
      *v67 = isMicrophoneMuted;
      v11 = " [%s] %s:%d AVAudioSession=%@ applying pre-cached mute state=%{BOOL}d on initial setActive call";
      v12 = v8;
      v13 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v16 = self->_avAudioSession;
      v17 = self->_isMicrophoneMuted;
      *buf = 136316674;
      v59 = v14;
      v60 = 2080;
      v61 = "[VCAudioSessionAVAS startInternal]";
      v62 = 1024;
      v63 = 570;
      v64 = 2112;
      selfCopy2 = v6;
      v66 = 2048;
      *v67 = self;
      *&v67[8] = 2112;
      *&v67[10] = v16;
      v68 = 1024;
      v69[0] = v17;
      v11 = " [%s] %s:%d %@(%p) AVAudioSession=%@ applying pre-cached mute state=%{BOOL}d on initial setActive call";
      v12 = v15;
      v13 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_16:
    self->_isMuteStateCached = 0;
  }

  v57 = 0;
  v18 = [(AVAudioSession *)self->_avAudioSession setActive:1 error:&v57];
  v19 = v57 == 0;
  v20 = v18 && v19;
  if (v18 && v19)
  {
    v21 = 7;
  }

  else
  {
    v21 = 3;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (v21 > VRTraceGetErrorLogLevelForModule())
    {
      goto LABEL_36;
    }

    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    v32 = *MEMORY[0x1E6986650];
    if (v20)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = self->_avAudioSession;
        *buf = 136316930;
        v59 = v30;
        v60 = 2080;
        v61 = "[VCAudioSessionAVAS startInternal]";
        v62 = 1024;
        v63 = 578;
        v64 = 2112;
        selfCopy2 = v22;
        v66 = 2048;
        *v67 = self;
        *&v67[8] = 2112;
        *&v67[10] = v33;
        v68 = 1024;
        v69[0] = 1;
        LOWORD(v69[1]) = 2112;
        *(&v69[1] + 2) = v57;
        v27 = " [%s] %s:%d %@(%p) AVAudioSession=%@ setActive=YES returned success=%{BOOL}d error=%@";
        v28 = v31;
        v29 = 74;
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    v34 = self->_avAudioSession;
    *buf = 136316930;
    v59 = v30;
    v60 = 2080;
    v61 = "[VCAudioSessionAVAS startInternal]";
    v62 = 1024;
    v63 = 578;
    v64 = 2112;
    selfCopy2 = v22;
    v66 = 2048;
    *v67 = self;
    *&v67[8] = 2112;
    *&v67[10] = v34;
    v68 = 1024;
    v69[0] = v18;
    LOWORD(v69[1]) = 2112;
    *(&v69[1] + 2) = v57;
    v35 = " [%s] %s:%d %@(%p) AVAudioSession=%@ setActive=YES returned success=%{BOOL}d error=%@";
    v36 = v31;
    v37 = 74;
LABEL_56:
    _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
    goto LABEL_36;
  }

  if (v21 > VRTraceGetErrorLogLevelForModule())
  {
    goto LABEL_36;
  }

  v23 = VRTraceErrorLogLevelToCSTR();
  v24 = *MEMORY[0x1E6986650];
  v25 = *MEMORY[0x1E6986650];
  if (!v20)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    v56 = self->_avAudioSession;
    *buf = 136316418;
    v59 = v23;
    v60 = 2080;
    v61 = "[VCAudioSessionAVAS startInternal]";
    v62 = 1024;
    v63 = 578;
    v64 = 2112;
    selfCopy2 = v56;
    v66 = 1024;
    *v67 = v18;
    *&v67[4] = 2112;
    *&v67[6] = v57;
    v35 = " [%s] %s:%d AVAudioSession=%@ setActive=YES returned success=%{BOOL}d error=%@";
    v36 = v24;
    v37 = 54;
    goto LABEL_56;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_avAudioSession;
    *buf = 136316418;
    v59 = v23;
    v60 = 2080;
    v61 = "[VCAudioSessionAVAS startInternal]";
    v62 = 1024;
    v63 = 578;
    v64 = 2112;
    selfCopy2 = v26;
    v66 = 1024;
    *v67 = 1;
    *&v67[4] = 2112;
    *&v67[6] = v57;
    v27 = " [%s] %s:%d AVAudioSession=%@ setActive=YES returned success=%{BOOL}d error=%@";
    v28 = v24;
    v29 = 54;
LABEL_32:
    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
  }

LABEL_36:
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSessionAVAS-started");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v40 = self->_avAudioSession;
      *buf = 136316162;
      v59 = v38;
      v60 = 2080;
      v61 = "[VCAudioSessionAVAS startInternal]";
      v62 = 1024;
      v63 = 579;
      v64 = 2048;
      selfCopy2 = self;
      v66 = 2112;
      *v67 = v40;
      _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioSessionAVAS-started (%p) AVAudioSession=%@ setActive=YES completed", buf, 0x30u);
    }
  }

  if (v18)
  {
    cachedAudioToolboxProperties = self->super._cachedAudioToolboxProperties;
    if (cachedAudioToolboxProperties)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_53;
        }

        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        v45 = self->_avAudioSession;
        v46 = self->super._cachedAudioToolboxProperties;
        *buf = 136316162;
        v59 = v43;
        v60 = 2080;
        v61 = "[VCAudioSessionAVAS startInternal]";
        v62 = 1024;
        v63 = 584;
        v64 = 2112;
        selfCopy2 = v45;
        v66 = 2112;
        *v67 = v46;
        v47 = " [%s] %s:%d AVAudioSession=%@ set cached AudioToolboxProperties=%@";
        v48 = v44;
        v49 = 48;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v42 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
        }

        else
        {
          v42 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_53;
        }

        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        v52 = self->_avAudioSession;
        v53 = self->super._cachedAudioToolboxProperties;
        *buf = 136316674;
        v59 = v50;
        v60 = 2080;
        v61 = "[VCAudioSessionAVAS startInternal]";
        v62 = 1024;
        v63 = 584;
        v64 = 2112;
        selfCopy2 = v42;
        v66 = 2048;
        *v67 = self;
        *&v67[8] = 2112;
        *&v67[10] = v52;
        v68 = 2112;
        *v69 = v53;
        v47 = " [%s] %s:%d %@(%p) AVAudioSession=%@ set cached AudioToolboxProperties=%@";
        v48 = v51;
        v49 = 68;
      }

      _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
LABEL_53:
      v54 = self->super._cachedAudioToolboxProperties;
      [(VCAudioSessionAVAS *)self setAudioIOProperties:v54];

      LOBYTE(cachedAudioToolboxProperties) = 0;
    }
  }

  else
  {
    LOBYTE(cachedAudioToolboxProperties) = self->super._isInterrupted;
  }

  self->super._isInterrupted = cachedAudioToolboxProperties;
  return v18;
}

- (void)registerObserverNotifications
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_avAudioSessionNotifications;
  v3 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v42;
    *&v4 = 136316418;
    v23 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        v9 = [VCAudioSessionAVAS selectorForNotification:v8, v23];
        if (v9)
        {
          v10 = v9;
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v19 = VRTraceErrorLogLevelToCSTR();
              v20 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                sessionPid = self->super._sessionPid;
                audioSessionId = self->super._audioSessionId;
                *buf = v23;
                v26 = v19;
                v27 = 2080;
                v28 = "[VCAudioSessionAVAS registerObserverNotifications]";
                v29 = 1024;
                v30 = 623;
                v31 = 2112;
                v32 = v8;
                v33 = 1024;
                *v34 = sessionPid;
                *&v34[4] = 1024;
                *&v34[6] = audioSessionId;
                v16 = v20;
                v17 = " [%s] %s:%d Adding notification=%@ observer for _sessionPid=%d, _audioSessionId=%u";
                v18 = 50;
LABEL_16:
                _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
              }
            }
          }

          else
          {
            v11 = &stru_1F570E008;
            if (objc_opt_respondsToSelector())
            {
              v11 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v12 = VRTraceErrorLogLevelToCSTR();
              v13 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v14 = self->super._sessionPid;
                v15 = self->super._audioSessionId;
                *buf = 136316930;
                v26 = v12;
                v27 = 2080;
                v28 = "[VCAudioSessionAVAS registerObserverNotifications]";
                v29 = 1024;
                v30 = 623;
                v31 = 2112;
                v32 = v11;
                v33 = 2048;
                *v34 = self;
                *&v34[8] = 2112;
                v35 = v8;
                v36 = 1024;
                v37 = v14;
                v38 = 1024;
                v39 = v15;
                v16 = v13;
                v17 = " [%s] %s:%d %@(%p) Adding notification=%@ observer for _sessionPid=%d, _audioSessionId=%u";
                v18 = 70;
                goto LABEL_16;
              }
            }
          }

          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
          continue;
        }
      }

      v5 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v5);
  }
}

- (BOOL)startSessionWithMediaProperties:(id)properties sessionRef:(unsigned int *)ref
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_avAudioSession)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      [VCAudioSessionAVAS startSessionWithMediaProperties:sessionRef:];
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    initAuxiliarySession = [objc_alloc(MEMORY[0x1E6958460]) initAuxiliarySession];
    self->_avAudioSession = initAuxiliarySession;
    if (initAuxiliarySession)
    {
      self->super._audioSessionId = [(AVAudioSession *)initAuxiliarySession opaqueSessionID];
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioSessionAVAS-startSessionWithMediaProperties");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          avAudioSession = self->_avAudioSession;
          audioSessionId = self->super._audioSessionId;
          v17 = 136316418;
          v18 = v8;
          v19 = 2080;
          v20 = "[VCAudioSessionAVAS startSessionWithMediaProperties:sessionRef:]";
          v21 = 1024;
          v22 = 640;
          v23 = 2048;
          *v24 = self;
          *&v24[8] = 2048;
          v25 = avAudioSession;
          v26 = 1024;
          v27 = audioSessionId;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioSessionAVAS-startSessionWithMediaProperties (%p) Created AVAudioSession=%p audioSessionID=%u", &v17, 0x36u);
        }
      }

      self->super._operatingMode = [properties operatingMode];
      self->super._vpOperatingMode = [properties vpOperatingMode];
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          operatingMode = self->super._operatingMode;
          vpOperatingMode = self->super._vpOperatingMode;
          v17 = 136316162;
          v18 = v12;
          v19 = 2080;
          v20 = "[VCAudioSessionAVAS startSessionWithMediaProperties:sessionRef:]";
          v21 = 1024;
          v22 = 644;
          v23 = 1024;
          *v24 = operatingMode;
          *&v24[4] = 1024;
          *&v24[6] = vpOperatingMode;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _operatingMode=%d, _vpOperatingMode=%d", &v17, 0x28u);
        }
      }

      -[VCAudioSessionAVAS setAudioClockDeviceEnabled:](self, "setAudioClockDeviceEnabled:", [properties audioClockDeviceEnabled]);
      [(VCAudioSessionAVAS *)self applyAudioSessionProperties];
      [(AVAudioSession *)self->_avAudioSession inputLatency];
      [(VCAudioSessionAVAS *)self setExternalInputAudioLatency:?];
      [(AVAudioSession *)self->_avAudioSession outputLatency];
      [(VCAudioSessionAVAS *)self setExternalOutputAudioLatency:?];
      [(VCAudioSessionAVAS *)self registerObserverNotifications];
      LOBYTE(v4) = 1;
    }

    else
    {
      [VCAudioSessionAVAS startSessionWithMediaProperties:&v17 sessionRef:?];
      LOBYTE(v4) = v17;
    }
  }

  return v4;
}

- (void)handleAudioSessionMediaServicesWereResetNotification:(id)notification
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__VCAudioSessionAVAS_handleAudioSessionMediaServicesWereResetNotification___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = notification;
  dispatch_async(dispatchQueue, block);
  [(VCAudioSession *)self didInterruptionEnded];
}

uint64_t __75__VCAudioSessionAVAS_handleAudioSessionMediaServicesWereResetNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = [*(v2 + 312) opaqueSessionID];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 40) name];
      v7 = *(a1 + 32);
      v8 = v7[65];
      v9 = v7[66];
      LODWORD(v7) = v7[42];
      v11 = 136316930;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCAudioSessionAVAS handleAudioSessionMediaServicesWereResetNotification:]_block_invoke";
      v15 = 1024;
      v16 = 672;
      v17 = 2112;
      v18 = v6;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v3;
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received notification=%@ _playbackMode=%d _vpOperatingMode=%u oldAudioSessionID=%u new audioSessionID=%u", &v11, 0x3Eu);
    }
  }

  return [*(a1 + 32) applyAudioSessionProperties];
}

- (void)handleAudioSessionRouteChangeNotification:(id)notification
{
  block[6] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__VCAudioSessionAVAS_handleAudioSessionRouteChangeNotification___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = notification;
  block[5] = self;
  dispatch_async(dispatchQueue, block);
}

void __64__VCAudioSessionAVAS_handleAudioSessionRouteChangeNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6958238]];
  [*(*(a1 + 40) + 312) inputLatency];
  [*(a1 + 40) setExternalInputAudioLatency:?];
  [*(*(a1 + 40) + 312) outputLatency];
  [*(a1 + 40) setExternalOutputAudioLatency:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) name];
      v7 = [v3 unsignedLongValue];
      v8 = *(a1 + 40);
      v9 = *(v8 + 360);
      v10 = *(v8 + 368);
      v11 = 136316674;
      v12 = v4;
      v13 = 2080;
      v14 = "[VCAudioSessionAVAS handleAudioSessionRouteChangeNotification:]_block_invoke";
      v15 = 1024;
      v16 = 684;
      v17 = 2112;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received audio route changed notification=%@, with reason=%lu new externalInputAudioLatency=%f externalOutputAudioLatency=%f", &v11, 0x44u);
    }
  }
}

- (void)applyAudioSessionProperties
{
  if (self->super._playbackMode)
  {
    [(VCAudioSessionAVAS *)self applyAudioSessionMediaPropertiesForSystemAudio];
  }

  else
  {
    [(VCAudioSession *)self applyAudioSessionPropertiesWithVPOperatingMode:self->super._vpOperatingMode];
  }
}

- (void)deregisterObserverNotifications
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(NSOrderedSet *)self->_avAudioSessionNotifications reverseObjectEnumerator];
  v3 = [(NSEnumerator *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v26;
    *&v4 = 136316162;
    v12 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            avAudioSession = self->_avAudioSession;
            *buf = v12;
            v15 = v9;
            v16 = 2080;
            v17 = "[VCAudioSessionAVAS deregisterObserverNotifications]";
            v18 = 1024;
            v19 = 701;
            v20 = 2112;
            v21 = v8;
            v22 = 2112;
            v23 = avAudioSession;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removing notification=%@ observer for avAudioSession=%@", buf, 0x30u);
          }
        }

        [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSEnumerator *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
  }
}

- (BOOL)stopSession
{
  v31 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  self->_pendingVPBlockUpdate = 0;
  if (self->_avAudioSession)
  {
    [(VCAudioSessionAVAS *)self deregisterObserverNotifications];
    v14 = 0;
    v3 = [(AVAudioSession *)self->_avAudioSession setActive:0 withOptions:1 error:&v14];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v5 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule > 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        avAudioSession = self->_avAudioSession;
        *buf = 136316930;
        v16 = v6;
        v17 = 2080;
        v18 = "[VCAudioSessionAVAS stopSession]";
        v19 = 1024;
        v20 = 731;
        v21 = 2048;
        v22 = avAudioSession;
        v23 = 2112;
        v24 = avAudioSession;
        v25 = 2048;
        v26 = 1;
        v27 = 1024;
        v28 = v3;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVAudioSession=%p [%@] setActive=NO endInterruptionStatus=%lu returned success=%{BOOL}d error=%@", buf, 0x4Au);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_avAudioSession;
        audioSessionId = self->super._audioSessionId;
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCAudioSessionAVAS stopSession]";
        v19 = 1024;
        v20 = 733;
        v21 = 2112;
        v22 = v11;
        v23 = 1024;
        LODWORD(v24) = audioSessionId;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing AVAudioSession=%@, _audioSessionId=%u", buf, 0x2Cu);
      }
    }

    [(VCAudioSessionAVAS *)self destroyAudioSession];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioSessionAVAS stopSession];
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)dispatchedApplyMicrophoneMute:(BOOL)mute
{
  muteCopy = mute;
  v51 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  v36 = 0;
  v5 = [(AVAudioSession *)self->_avAudioSession muteSessionInput:muteCopy error:&v36];
  v6 = v36;
  v7 = objc_opt_class();
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v7 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      avAudioSession = self->_avAudioSession;
      *buf = 136316162;
      v38 = v18;
      v39 = 2080;
      v40 = "[VCAudioSessionAVAS dispatchedApplyMicrophoneMute:]";
      v41 = 1024;
      v42 = 746;
      v43 = 2112;
      v44 = avAudioSession;
      v45 = 1024;
      *v46 = muteCopy;
      v21 = " [%s] %s:%d AVAudioSession=%@ uplink successfully applied isMuted=%{BOOL}d";
      v22 = v19;
      v23 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v30 = self->_avAudioSession;
      *buf = 136316674;
      v38 = v28;
      v39 = 2080;
      v40 = "[VCAudioSessionAVAS dispatchedApplyMicrophoneMute:]";
      v41 = 1024;
      v42 = 746;
      v43 = 2112;
      v44 = v10;
      v45 = 2048;
      *v46 = self;
      *&v46[8] = 2112;
      *&v46[10] = v30;
      v47 = 1024;
      v48 = muteCopy;
      v21 = " [%s] %s:%d %@(%p) AVAudioSession=%@ uplink successfully applied isMuted=%{BOOL}d";
      v22 = v29;
      v23 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    return;
  }

  if (v7 != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 2)
    {
      return;
    }

    v24 = VRTraceErrorLogLevelToCSTR();
    IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
    v26 = *MEMORY[0x1E6986650];
    if (IsOSFaultDisabled)
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v27 = self->_avAudioSession;
        *buf = 136316930;
        v38 = v24;
        v39 = 2080;
        v40 = "[VCAudioSessionAVAS dispatchedApplyMicrophoneMute:]";
        v41 = 1024;
        v42 = 748;
        v43 = 2112;
        v44 = v9;
        v45 = 2048;
        *v46 = self;
        *&v46[8] = 2112;
        *&v46[10] = v27;
        v47 = 1024;
        v48 = muteCopy;
        v49 = 2112;
        v50 = v36;
        v15 = " [%s] %s:%d %@(%p) AVAudioSession=%@ failed to apply isMuted=%{BOOL}d with error=%@";
        v16 = v26;
        v17 = 74;
        goto LABEL_23;
      }

      return;
    }

    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = self->_avAudioSession;
    *buf = 136316930;
    v38 = v24;
    v39 = 2080;
    v40 = "[VCAudioSessionAVAS dispatchedApplyMicrophoneMute:]";
    v41 = 1024;
    v42 = 748;
    v43 = 2112;
    v44 = v9;
    v45 = 2048;
    *v46 = self;
    *&v46[8] = 2112;
    *&v46[10] = v31;
    v47 = 1024;
    v48 = muteCopy;
    v49 = 2112;
    v50 = v36;
    v32 = " [%s] %s:%d %@(%p) AVAudioSession=%@ failed to apply isMuted=%{BOOL}d with error=%@";
    v33 = v26;
    v34 = 74;
LABEL_34:
    _os_log_fault_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_FAULT, v32, buf, v34);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 2)
  {
    return;
  }

  v11 = VRTraceErrorLogLevelToCSTR();
  v12 = VRTraceIsOSFaultDisabled();
  v13 = *MEMORY[0x1E6986650];
  if ((v12 & 1) == 0)
  {
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v35 = self->_avAudioSession;
    *buf = 136316418;
    v38 = v11;
    v39 = 2080;
    v40 = "[VCAudioSessionAVAS dispatchedApplyMicrophoneMute:]";
    v41 = 1024;
    v42 = 748;
    v43 = 2112;
    v44 = v35;
    v45 = 1024;
    *v46 = muteCopy;
    *&v46[4] = 2112;
    *&v46[6] = v36;
    v32 = " [%s] %s:%d AVAudioSession=%@ failed to apply isMuted=%{BOOL}d with error=%@";
    v33 = v13;
    v34 = 54;
    goto LABEL_34;
  }

  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
  {
    v14 = self->_avAudioSession;
    *buf = 136316418;
    v38 = v11;
    v39 = 2080;
    v40 = "[VCAudioSessionAVAS dispatchedApplyMicrophoneMute:]";
    v41 = 1024;
    v42 = 748;
    v43 = 2112;
    v44 = v14;
    v45 = 1024;
    *v46 = muteCopy;
    *&v46[4] = 2112;
    *&v46[6] = v36;
    v15 = " [%s] %s:%d AVAudioSession=%@ failed to apply isMuted=%{BOOL}d with error=%@";
    v16 = v13;
    v17 = 54;
LABEL_23:
    _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }
}

- (void)setMicrophoneMuted:(BOOL)muted
{
  v6 = *MEMORY[0x1E69E9840];
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VCAudioSessionAVAS_setMicrophoneMuted___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  mutedCopy = muted;
  dispatch_async(dispatchQueue, block);
}

void __41__VCAudioSessionAVAS_setMicrophoneMuted___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 260))
  {
    if (*(v2 + 312))
    {
      v4 = *(a1 + 40);

      [v2 dispatchedApplyMicrophoneMute:v4];
      return;
    }

    *(v2 + 376) = 1;
    *(*(a1 + 32) + 377) = *(a1 + 40);
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_28;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v18 = *(*(a1 + 32) + 312);
      v19 = *(a1 + 40);
      *v28 = 136316162;
      *&v28[4] = v16;
      *&v28[12] = 2080;
      *&v28[14] = "[VCAudioSessionAVAS setMicrophoneMuted:]_block_invoke";
      *&v28[22] = 1024;
      LODWORD(v29) = 763;
      WORD2(v29) = 2112;
      *(&v29 + 6) = v18;
      HIWORD(v29) = 1024;
      LODWORD(v30) = v19;
      v20 = " [%s] %s:%d AVAudioSession=%@ uplink mute cached, isMuted=%{BOOL}d";
      v21 = v17;
      v22 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_28;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v25 = *(a1 + 32);
      v26 = *(v25 + 312);
      v27 = *(a1 + 40);
      *v28 = 136316674;
      *&v28[4] = v23;
      *&v28[12] = 2080;
      *&v28[14] = "[VCAudioSessionAVAS setMicrophoneMuted:]_block_invoke";
      *&v28[22] = 1024;
      LODWORD(v29) = 763;
      WORD2(v29) = 2112;
      *(&v29 + 6) = v15;
      HIWORD(v29) = 2048;
      v30 = v25;
      LOWORD(v31) = 2112;
      *(&v31 + 2) = v26;
      WORD5(v31) = 1024;
      HIDWORD(v31) = v27;
      v20 = " [%s] %s:%d %@(%p) AVAudioSession=%@ uplink mute cached, isMuted=%{BOOL}d";
      v21 = v24;
      v22 = 64;
    }

    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, v28, v22);
LABEL_28:
    [*(a1 + 32) dispatchedInvokeMuteStateChangedHandlerWithIsMuted:*(*(a1 + 32) + 377) reason:{0, *v28, *&v28[16], v29, v30, v31}];
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 312);
        *v28 = 136315906;
        *&v28[4] = v5;
        *&v28[12] = 2080;
        *&v28[14] = "[VCAudioSessionAVAS setMicrophoneMuted:]_block_invoke";
        *&v28[22] = 1024;
        LODWORD(v29) = 755;
        WORD2(v29) = 2112;
        *(&v29 + 6) = v7;
        v8 = " [%s] %s:%d Not applying mute to the AVAudioSession=%@ because this playback mode does not support it.";
        v9 = v6;
        v10 = 38;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, v28, v10);
      }
    }
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

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = *(v13 + 312);
        *v28 = 136316418;
        *&v28[4] = v11;
        *&v28[12] = 2080;
        *&v28[14] = "[VCAudioSessionAVAS setMicrophoneMuted:]_block_invoke";
        *&v28[22] = 1024;
        LODWORD(v29) = 755;
        WORD2(v29) = 2112;
        *(&v29 + 6) = v3;
        HIWORD(v29) = 2048;
        v30 = v13;
        LOWORD(v31) = 2112;
        *(&v31 + 2) = v14;
        v8 = " [%s] %s:%d %@(%p) Not applying mute to the AVAudioSession=%@ because this playback mode does not support it.";
        v9 = v12;
        v10 = 58;
        goto LABEL_16;
      }
    }
  }
}

- (BOOL)microphoneMuted
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCAudioSessionAVAS_microphoneMuted__block_invoke;
  block[3] = &unk_1E85F3868;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(dispatchQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __37__VCAudioSessionAVAS_microphoneMuted__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 260))
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*(a1 + 32) + 312);
          v26 = 136315906;
          v27 = v4;
          v28 = 2080;
          v29 = "[VCAudioSessionAVAS microphoneMuted]_block_invoke";
          v30 = 1024;
          v31 = 773;
          v32 = 2112;
          *v33 = v6;
          v7 = " [%s] %s:%d Not fetching mute from the AVAudioSession=%@ because this playback mode does not support it.";
          v8 = v5;
          v9 = 38;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v26, v9);
        }
      }
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

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v13 = *(v12 + 312);
          v26 = 136316418;
          v27 = v10;
          v28 = 2080;
          v29 = "[VCAudioSessionAVAS microphoneMuted]_block_invoke";
          v30 = 1024;
          v31 = 773;
          v32 = 2112;
          *v33 = v3;
          *&v33[8] = 2048;
          *&v33[10] = v12;
          *&v33[18] = 2112;
          *v34 = v13;
          v7 = " [%s] %s:%d %@(%p) Not fetching mute from the AVAudioSession=%@ because this playback mode does not support it.";
          v8 = v11;
          v9 = 58;
          goto LABEL_26;
        }
      }
    }
  }

  else
  {
    if (*(v2 + 312))
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(v2 + 312) isSessionInputMuted];
    }

    else if (*(v2 + 376) == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(v2 + 377);
    }

    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          v18 = *(*(*(a1 + 40) + 8) + 24);
          v19 = *(v17 + 312);
          LODWORD(v17) = *(v17 + 376);
          v26 = 136316418;
          v27 = v15;
          v28 = 2080;
          v29 = "[VCAudioSessionAVAS microphoneMuted]_block_invoke";
          v30 = 1024;
          v31 = 781;
          v32 = 1024;
          *v33 = v18;
          *&v33[4] = 2112;
          *&v33[6] = v19;
          *&v33[14] = 1024;
          *&v33[16] = v17;
          v7 = " [%s] %s:%d Fetching isMicrophoneMuted=%{BOOL}d, avAudioSession=%@ isMuteStateCached=%{BOOL}d";
          v8 = v16;
          v9 = 50;
          goto LABEL_26;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          v23 = *(v22 + 312);
          v24 = *(*(*(a1 + 40) + 8) + 24);
          v25 = *(v22 + 376);
          v26 = 136316930;
          v27 = v20;
          v28 = 2080;
          v29 = "[VCAudioSessionAVAS microphoneMuted]_block_invoke";
          v30 = 1024;
          v31 = 781;
          v32 = 2112;
          *v33 = v14;
          *&v33[8] = 2048;
          *&v33[10] = v22;
          *&v33[18] = 1024;
          *v34 = v24;
          *&v34[4] = 2112;
          *&v34[6] = v23;
          v35 = 1024;
          v36 = v25;
          v7 = " [%s] %s:%d %@(%p) Fetching isMicrophoneMuted=%{BOOL}d, avAudioSession=%@ isMuteStateCached=%{BOOL}d";
          v8 = v21;
          v9 = 70;
          goto LABEL_26;
        }
      }
    }
  }
}

- (void)setMuteStateChangedHandler:(id)handler delegateQueue:(id)queue
{
  v5[7] = *MEMORY[0x1E69E9840];
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__VCAudioSessionAVAS_setMuteStateChangedHandler_delegateQueue___block_invoke;
  v5[3] = &unk_1E85F4C78;
  v5[5] = queue;
  v5[6] = handler;
  v5[4] = self;
  dispatch_sync(dispatchQueue, v5);
}

void __63__VCAudioSessionAVAS_setMuteStateChangedHandler_delegateQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(v3 + 344);
  if (v2 != v4)
  {
    _Block_release(v4);
    *(*(a1 + 32) + 344) = _Block_copy(*(a1 + 48));
    v3 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = *(v3 + 352);
  if (v5 != v6)
  {
    if (v6)
    {
      dispatch_release(v6);
      v5 = *(a1 + 40);
    }

    if (v5)
    {
      dispatch_retain(v5);
    }

    *(*(a1 + 32) + 352) = v5;
  }
}

+ (unsigned)muteReasonFromMuteChangedInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:*MEMORY[0x1E69580C8]];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && ([*MEMORY[0x1E69580C0] isEqualToString:v3] & 1) != 0;
}

- (void)dispatchedInvokeMuteStateChangedHandlerWithIsMuted:(BOOL)muted reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  mutedCopy = muted;
  v38 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  muteStateChangedHandler = self->_muteStateChangedHandler;
  if (muteStateChangedHandler)
  {
    muteStateChangedHandlerQueue = self->_muteStateChangedHandlerQueue;
    if (muteStateChangedHandlerQueue)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __80__VCAudioSessionAVAS_dispatchedInvokeMuteStateChangedHandlerWithIsMuted_reason___block_invoke;
      v21[3] = &unk_1E85F8AB0;
      v21[4] = muteStateChangedHandler;
      v22 = mutedCopy;
      v23 = reasonCopy;
      dispatch_async(muteStateChangedHandlerQueue, v21);
      return;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = self->_muteStateChangedHandler;
    v13 = self->_muteStateChangedHandlerQueue;
    *buf = 136316674;
    v25 = v10;
    v26 = 2080;
    v27 = "[VCAudioSessionAVAS dispatchedInvokeMuteStateChangedHandlerWithIsMuted:reason:]";
    v28 = 1024;
    v29 = 826;
    v30 = 1024;
    *v31 = mutedCopy;
    *&v31[4] = 1024;
    *&v31[6] = reasonCopy;
    *v32 = 2112;
    *&v32[2] = v12;
    *v33 = 2112;
    *&v33[2] = v13;
    v14 = " [%s] %s:%d Attempting to propagate an isMuted=%{BOOL}d event with reason=%hhu without a handler=%@ or handler queue=%@";
    v15 = v11;
    v16 = 60;
LABEL_15:
    _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
  }

  else
  {
    v9 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v19 = self->_muteStateChangedHandler;
      v20 = self->_muteStateChangedHandlerQueue;
      *buf = 136317186;
      v25 = v17;
      v26 = 2080;
      v27 = "[VCAudioSessionAVAS dispatchedInvokeMuteStateChangedHandlerWithIsMuted:reason:]";
      v28 = 1024;
      v29 = 826;
      v30 = 2112;
      *v31 = v9;
      *&v31[8] = 2048;
      *v32 = self;
      *&v32[8] = 1024;
      *v33 = mutedCopy;
      *&v33[4] = 1024;
      *&v33[6] = reasonCopy;
      v34 = 2112;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      v14 = " [%s] %s:%d %@(%p) Attempting to propagate an isMuted=%{BOOL}d event with reason=%hhu without a handler=%@ or handler queue=%@";
      v15 = v18;
      v16 = 80;
      goto LABEL_15;
    }
  }
}

- (void)handleAudioSessionInputMuteChangeNotification:(id)notification
{
  v63 = *MEMORY[0x1E69E9840];
  if (!VCFeatureFlagManager_SessionBasedMutingEnabled())
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315906;
      v52 = v12;
      v53 = 2080;
      v54 = "[VCAudioSessionAVAS handleAudioSessionInputMuteChangeNotification:]";
      v55 = 1024;
      v56 = 843;
      v57 = 2112;
      notificationCopy = notification;
      v14 = " [%s] %s:%d Dropping session input mute notification=%@ because SessionBasedMuting is NOT enabled.";
      v15 = v13;
      v16 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136316418;
      v52 = v17;
      v53 = 2080;
      v54 = "[VCAudioSessionAVAS handleAudioSessionInputMuteChangeNotification:]";
      v55 = 1024;
      v56 = 843;
      v57 = 2112;
      notificationCopy = v10;
      v59 = 2048;
      selfCopy = self;
      v61 = 2112;
      notificationCopy2 = notification;
      v14 = " [%s] %s:%d %@(%p) Dropping session input mute notification=%@ because SessionBasedMuting is NOT enabled.";
      v15 = v18;
      v16 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    return;
  }

  userInfo = [notification userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69580D0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
    v8 = [VCAudioSessionAVAS muteReasonFromMuteChangedInfo:userInfo];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_62;
      }

      __str = 0;
      if (userInfo)
      {
        v19 = [objc_msgSend(userInfo "description")];
      }

      else
      {
        v19 = "<nil>";
      }

      v34 = "NO";
      if (bOOLValue)
      {
        v34 = "YES";
      }

      asprintf(&__str, "Received mute state change notice=%s with currentMuteState=%s, muteReason=%hhu", v19, v34, v8);
      if (!__str)
      {
        goto LABEL_62;
      }

      v44 = v8;
      v45 = bOOLValue;
      __lasts = 0;
      v35 = strtok_r(__str, "\n", &__lasts);
      v36 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v37 = VRTraceErrorLogLevelToCSTR();
          v38 = *v36;
          if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v52 = v37;
            v53 = 2080;
            v54 = "[VCAudioSessionAVAS handleAudioSessionInputMuteChangeNotification:]";
            v55 = 1024;
            v56 = 854;
            v57 = 2080;
            notificationCopy = "";
            v59 = 2080;
            selfCopy = v35;
            _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v35 = strtok_r(0, "\n", &__lasts);
      }

      while (v35);
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_62;
      }

      __str = 0;
      uTF8String = [(__CFString *)v9 UTF8String];
      if (userInfo)
      {
        v22 = [objc_msgSend(userInfo "description")];
      }

      else
      {
        v22 = "<nil>";
      }

      v25 = "NO";
      if (bOOLValue)
      {
        v25 = "YES";
      }

      asprintf(&__str, "%s(%p) Received mute state change notice=%s with currentMuteState=%s, muteReason=%hhu", uTF8String, self, v22, v25, v8);
      if (!__str)
      {
        goto LABEL_62;
      }

      v44 = v8;
      v45 = bOOLValue;
      __lasts = 0;
      v26 = strtok_r(__str, "\n", &__lasts);
      v27 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *v27;
          if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v52 = v28;
            v53 = 2080;
            v54 = "[VCAudioSessionAVAS handleAudioSessionInputMuteChangeNotification:]";
            v55 = 1024;
            v56 = 854;
            v57 = 2080;
            notificationCopy = "";
            v59 = 2080;
            selfCopy = v26;
            _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v26 = strtok_r(0, "\n", &__lasts);
      }

      while (v26);
    }

    free(__str);
    LOBYTE(bOOLValue) = v45;
    LOBYTE(v8) = v44;
LABEL_62:
    dispatchQueue = self->super._dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__VCAudioSessionAVAS_handleAudioSessionInputMuteChangeNotification___block_invoke;
    block[3] = &unk_1E85F41F8;
    block[4] = self;
    v47 = bOOLValue;
    v48 = v8;
    dispatch_async(dispatchQueue, block);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      __str = 0;
      v20 = userInfo ? [objc_msgSend(userInfo "description")] : "<nil>";
      asprintf(&__str, "Malformed mute changed context=%s, dropping notification", v20);
      if (__str)
      {
        __lasts = 0;
        v40 = strtok_r(__str, "\n", &__lasts);
        v41 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v42 = VRTraceErrorLogLevelToCSTR();
            v43 = *v41;
            if (os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v52 = v42;
              v53 = 2080;
              v54 = "[VCAudioSessionAVAS handleAudioSessionInputMuteChangeNotification:]";
              v55 = 1024;
              v56 = 849;
              v57 = 2080;
              notificationCopy = "";
              v59 = 2080;
              selfCopy = v40;
              _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v40 = strtok_r(0, "\n", &__lasts);
        }

        while (v40);
        goto LABEL_70;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioSessionAVAS *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      __str = 0;
      uTF8String2 = [(__CFString *)v11 UTF8String];
      v24 = userInfo ? [objc_msgSend(userInfo "description")] : "<nil>";
      asprintf(&__str, "%s(%p) Malformed mute changed context=%s, dropping notification", uTF8String2, self, v24);
      if (__str)
      {
        __lasts = 0;
        v30 = strtok_r(__str, "\n", &__lasts);
        v31 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *v31;
            if (os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v52 = v32;
              v53 = 2080;
              v54 = "[VCAudioSessionAVAS handleAudioSessionInputMuteChangeNotification:]";
              v55 = 1024;
              v56 = 849;
              v57 = 2080;
              notificationCopy = "";
              v59 = 2080;
              selfCopy = v30;
              _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v30 = strtok_r(0, "\n", &__lasts);
        }

        while (v30);
LABEL_70:
        free(__str);
      }
    }
  }
}

- (void)handleSecureMicNotificationWithInterruptionInfo:(id)info
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [info objectForKeyedSubscript:*MEMORY[0x1E69580F0]];
  if (!v3)
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

    v15 = 136315650;
    v16 = v8;
    v17 = 2080;
    v18 = "[VCAudioSessionAVAS handleSecureMicNotificationWithInterruptionInfo:]";
    v19 = 1024;
    v20 = 865;
    v10 = " [%s] %s:%d No interruption reason provided";
    v11 = v9;
    v12 = 28;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    return;
  }

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (unsignedIntegerValue != 2)
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

    v15 = 136315906;
    v16 = v13;
    v17 = 2080;
    v18 = "[VCAudioSessionAVAS handleSecureMicNotificationWithInterruptionInfo:]";
    v19 = 1024;
    v20 = 878;
    v21 = 2048;
    v22 = unsignedIntegerValue;
    v10 = " [%s] %s:%d Interruption reason=%lu";
    v11 = v14;
    v12 = 38;
    goto LABEL_13;
  }

  if (ErrorLogLevelForModule >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCAudioSessionAVAS handleSecureMicNotificationWithInterruptionInfo:]";
      v19 = 1024;
      v20 = 874;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d BuiltInMicMuted interruption reason", &v15, 0x1Cu);
    }
  }

  [+[VCAudioClientManager sharedInstance](VCAudioClientManager secureMicrophoneEngagedNotification];
}

- (void)handleAudioSessionInterruption:(id)interruption
{
  v27 = *MEMORY[0x1E69E9840];
  userInfo = [interruption userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6958100]];
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (userInfo)
        {
          v9 = [objc_msgSend(userInfo "description")];
        }

        else
        {
          v9 = "<nil>";
        }

        v17 = 136316162;
        v18 = v7;
        v19 = 2080;
        v20 = "[VCAudioSessionAVAS handleAudioSessionInterruption:]";
        v21 = 1024;
        v22 = 892;
        v23 = 2048;
        v24 = unsignedIntegerValue;
        v25 = 2080;
        v26 = v9;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d interruptionType=%lu, interruptInfo=%s", &v17, 0x30u);
      }
    }

    if (!unsignedIntegerValue)
    {
      [(VCAudioSession *)self didInterruptionEnded];
      return;
    }

    if (unsignedIntegerValue == 1)
    {
      [(VCAudioSessionAVAS *)self handleSecureMicNotificationWithInterruptionInfo:userInfo];
      [(VCAudioSession *)self didStop];
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v15;
        v19 = 2080;
        v20 = "[VCAudioSessionAVAS handleAudioSessionInterruption:]";
        v21 = 1024;
        v22 = 903;
        v23 = 2048;
        v24 = unsignedIntegerValue;
        v12 = " [%s] %s:%d Unhandled session interruption: interruptionType=%lu";
        v13 = v16;
        v14 = 38;
        goto LABEL_18;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = v10;
      v19 = 2080;
      v20 = "[VCAudioSessionAVAS handleAudioSessionInterruption:]";
      v21 = 1024;
      v22 = 887;
      v12 = " [%s] %s:%d Interruption type id not provided.";
      v13 = v11;
      v14 = 28;
LABEL_18:
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    }
  }
}

- (void)handleOutputSampleRateChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCAudioSessionAVAS handleOutputSampleRateChange:]";
      v10 = 1024;
      v11 = 909;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received notification that Output Sample Rate has changed", &v6, 0x1Cu);
    }
  }

  [(VCAudioSession *)self didAvailableSampleRateChange];
  [(VCAudioSession *)self setBlockSizeOnSampleRateChange];
}

- (void)handleAudioSessionMediaServicesWereLostNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  vpOperatingMode = self->super._vpOperatingMode;
  if (vpOperatingMode - 4 >= 3)
  {
    if (vpOperatingMode)
    {
      v7 = vpOperatingMode == 2;
    }

    else
    {
      v7 = 1;
    }

    v6 = v7 && VCFeatureFlagManager_DaemonCrashRecovery();
  }

  else
  {
    v6 = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      name = [notification name];
      v11 = self->super._vpOperatingMode;
      playbackMode = self->super._playbackMode;
      avAudioSession = self->_avAudioSession;
      v16 = 136316930;
      v17 = v8;
      v18 = 2080;
      v19 = "[VCAudioSessionAVAS handleAudioSessionMediaServicesWereLostNotification:]";
      v20 = 1024;
      v21 = 935;
      v22 = 2112;
      v23 = name;
      v24 = 1024;
      v25 = v11;
      v26 = 1024;
      v27 = playbackMode;
      v28 = 2048;
      v29 = avAudioSession;
      v30 = 1024;
      v31 = v6;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received notification=%@, _vpOperatingMode=%d, _playbackMode=%d, _avAudioSession=%p, daemonCrashRecoveryEnabled=%d", &v16, 0x42u);
    }
  }

  if (v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = v14;
        v18 = 2080;
        v19 = "[VCAudioSessionAVAS handleAudioSessionMediaServicesWereLostNotification:]";
        v20 = 1024;
        v21 = 937;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Calling didStop.  Trying to restore connection.", &v16, 0x1Cu);
      }
    }

    [(VCAudioSession *)self didStop];
  }

  else
  {
    [(VCAudioSession *)self serverDidDie];
  }
}

- (void)setupInputBeamforming
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d avAudioSession availableInputs didn't return any valid inputs", v2, v3, v4, v5, v6);
    }
  }
}

_BYTE *__VCAudioSessionAVAS_ScheduleNetworkUplinkClockUpdate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[392] == 1)
  {
    [result dispatchedSetVPBlockConfigurationProperties:1];
    result = *(a1 + 32);
  }

  result[392] = 0;
  return result;
}

- (BOOL)setSampleRate:(double)rate
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->super._isTetheredDisplayMode)
  {
    rateCopy = 48000.0;
  }

  else
  {
    rateCopy = rate;
  }

  [(AVAudioSession *)self->_avAudioSession preferredOutputSampleRate];
  v7 = v6;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v8 = OUTLINED_FUNCTION_9_25();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v31 = v3;
      v32 = 2080;
      v33 = "[VCAudioSessionAVAS setSampleRate:]";
      v34 = 1024;
      v35 = 454;
      v36 = 2048;
      v37 = v7;
      v38 = 2048;
      v39 = rateCopy;
      OUTLINED_FUNCTION_5_33();
      _os_log_impl(v9, v10, v11, v12, v13, 0x30u);
    }
  }

  if (rateCopy == v7)
  {
    goto LABEL_13;
  }

  v29 = 0;
  v14 = [(AVAudioSession *)self->_avAudioSession setPreferredSampleRate:&v29 error:rateCopy];
  v15 = v29;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v14 && !v15)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v17 = OUTLINED_FUNCTION_9_25();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v31 = 0;
        v32 = 2080;
        v33 = "[VCAudioSessionAVAS setSampleRate:]";
        v34 = 1024;
        v35 = 463;
        v36 = 2048;
        OUTLINED_FUNCTION_11_16();
        v40 = v18;
        v41 = rateCopy;
        OUTLINED_FUNCTION_5_33();
        _os_log_impl(v19, v20, v21, v22, v23, 0x3Au);
      }
    }

LABEL_13:
    LOBYTE(v24) = 1;
    return v24;
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v25 = OUTLINED_FUNCTION_9_25();
    v24 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      return v24;
    }

    *buf = 136316418;
    v31 = v15;
    v32 = 2080;
    v33 = "[VCAudioSessionAVAS setSampleRate:]";
    v34 = 1024;
    v35 = 461;
    v36 = 2048;
    OUTLINED_FUNCTION_11_16();
    v40 = v26;
    v41 = v27;
    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d avAudioSession=%p [%@] setPreferredSampleRate failed with error=%@", buf, 0x3Au);
  }

  LOBYTE(v24) = 0;
  return v24;
}

- (void)setOptimizedTelephonyHandoverSettings:(BOOL)settings networkUplinkClockUsesBaseband:(BOOL)baseband
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->super._useOptimizedHandoversForTelephony && self->super._operatingMode == 3)
  {
    basebandCopy = baseband;
    settingsCopy = settings;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136316162;
        *&v11[4] = v7;
        *&v11[12] = 2080;
        *&v11[14] = "[VCAudioSessionAVAS setOptimizedTelephonyHandoverSettings:networkUplinkClockUsesBaseband:]";
        OUTLINED_FUNCTION_4_2();
        v12 = 472;
        v13 = v9;
        v14 = settingsCopy;
        v15 = v9;
        v16 = basebandCopy;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting optimized handover settings for Telephony. audioClockDeviceEnabled=%d, networkUplinkClockUsesBaseband=%d", v11, 0x28u);
      }
    }

    [(VCAudioSessionAVAS *)self setAudioClockDeviceEnabled:settingsCopy, *v11, *&v11[16]];
    if (settingsCopy)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"network uplink clock uses baseband"];
      -[NSMutableDictionary setValue:forKey:](self->super._vpBlock, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:basebandCopy], v10);
    }
  }
}

- (void)setAudioClockDeviceEnabled:(BOOL)enabled
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->super._useOptimizedHandoversForTelephony && self->super._operatingMode == 3)
  {
    if (enabled)
    {
      v5 = @"NetworkUplinkClock_UID";
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    v16 = 0;
    [(AVAudioSession *)self->_avAudioSession setAudioClockDevice:v5 error:&v16];
    v6 = v16;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v6)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v10;
          v19 = 2080;
          v20 = "[VCAudioSessionAVAS setAudioClockDeviceEnabled:]";
          v21 = 1024;
          OUTLINED_FUNCTION_4_32();
          OUTLINED_FUNCTION_5_33();
          _os_log_impl(v11, v12, v13, v14, v15, 0x2Cu);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v8;
          v19 = 2080;
          v20 = "[VCAudioSessionAVAS setAudioClockDeviceEnabled:]";
          v21 = 1024;
          OUTLINED_FUNCTION_4_32();
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully set the audio clock device=%@ on sessionID=%d", buf, 0x2Cu);
        }
      }

      self->super._audioClockDeviceEnabled = enabled;
    }
  }
}

- (BOOL)internalSelectMicrophoneWithType:(unsigned int)type
{
  dispatch_assert_queue_V2(self->super._dispatchQueue);
  if (type != 1)
  {
    if (!type && self->super._micSourceFront)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_23();
          _os_log_impl(v5, v6, v7, v8, v9, 0x26u);
        }
      }

      if ((VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences(self->_avAudioSession, self->super._micSourceFront) & 1) == 0)
      {
        LOBYTE(v10) = 0;
        return v10;
      }
    }

LABEL_14:
    self->super._selectedMicrophone = type;
    LOBYTE(v10) = 1;
    return v10;
  }

  if (!self->super._micSourceBack)
  {
    goto LABEL_14;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v11, v12, v13, v14, v15, 0x26u);
    }
  }

  v10 = VCMicrophonePreferencesAVAS_ApplyMicrophonePreferences(self->_avAudioSession, self->super._micSourceBack);
  if (v10)
  {
    goto LABEL_14;
  }

  return v10;
}

+ (void)selectorForNotification:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setSessionProperty:value:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d _avAudioSession is nil", v2, v3, v4, v5, v6);
}

- (void)applyRequestedProperties:propertyOrder:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Properties to set is nil", v2, v3, v4, v5, v6);
}

- (void)applyRequestedProperties:propertyOrder:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d _avAudioSession is nil", v2, v3, v4, v5, v6);
}

- (void)applyRequestedProperty:defaultValue:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)applyRequestedProperty:defaultValue:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Error: _avAudioSession is nil", v2, v3, v4, v5, v6);
}

- (void)setBlockSize:sampleRate:force:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d _avAudioSession is nil, cannot set block size", v2, v3, v4, v5, v6);
}

- (void)startSessionWithMediaProperties:sessionRef:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid state... ????", v2, v3, v4, v5, v6);
}

- (uint64_t)startSessionWithMediaProperties:(id *)a1 sessionRef:(_BYTE *)a2 .cold.2(id *a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 136315650;
      *(&v11 + 4) = v4;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_23();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }
  }

  result = [a1[27] count];
  if (result)
  {
    result = [a1 destroyAudioSession];
  }

  *a2 = 0;
  return result;
}

- (void)stopSession
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Session already stopped ?", v2, v3, v4, v5, v6);
}

@end