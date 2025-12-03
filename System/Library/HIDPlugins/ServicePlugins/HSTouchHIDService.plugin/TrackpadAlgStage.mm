@interface TrackpadAlgStage
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (TrackpadAlgStage)initWithConfig:(id)config;
- (int)_extractMTContacts:(id *)contacts;
- (void)_applySettings:(id)settings;
- (void)_clear;
- (void)_flushState;
- (void)_handleActivateEvent:(id)event;
- (void)_handleContactFrame:(id)frame;
- (void)_handleContactFrame:(id)frame[32] numActivePaths:(float)paths timestampS:frameNumber:baseEvent:handleTapAndAHalf:isFlush:;
- (void)_handleGetDebugEvent:(id)event;
- (void)_handleHSTNotificationEvent:(id)event;
- (void)_handleMomentumRequestEvent:(id)event;
- (void)_handleMomentumStateEvent:(id)event;
- (void)_handleResetEvent:(id)event;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_handleSystemPowerEvent:(id)event;
- (void)_handleTimerEvent:(id)event;
- (void)_tickleMouseFilters;
- (void)_updateButtonMotionFilter:(float)filter shouldSpike:(BOOL)spike;
- (void)_updateMouseMotionFilterWithXVelocity:(float)velocity YVelocity:(float)yVelocity tickle:(BOOL)tickle;
- (void)applyCachedSettings;
- (void)buildUberAlgs;
- (void)dealloc;
- (void)dispatch:(id)dispatch;
- (void)handleAlgsConfig:(id)config;
- (void)handleConsume:(id)consume;
- (void)handlePointerFrame:(id)frame;
- (void)handlePointerSettings:(id)settings;
- (void)scheduleTapAndAHalfCallbackTimer:(double)timer delay:(double)delay;
- (void)setActivePointerSettings:(uint64_t)settings;
- (void)setDeviceButtonState:(unsigned int)state activePathCount:(unsigned int)count;
@end

@implementation TrackpadAlgStage

- (TrackpadAlgStage)initWithConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = TrackpadAlgStage;
  v6 = [(HSStage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_activated = 0;
    objc_storeStrong(&v6->_config, config);
    v7->_supportsForce = 0;
    v7->_supportsDeepPress = 1;
    cachedSettingsEvent = v7->_cachedSettingsEvent;
    v7->_cachedSettingsEvent = 0;

    v7->_deviceButtonState = 0;
    v9 = v7;
  }

  return v7;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(TrackpadActuatorStage *)v4 dealloc];
  }

  v5.receiver = self;
  v5.super_class = TrackpadAlgStage;
  [(HSStage *)&v5 dealloc];
}

- (void)setDeviceButtonState:(unsigned int)state activePathCount:(unsigned int)count
{
  if ((state == 0) == ([(TrackpadAlgStage *)self deviceButtonState:*&state]!= 0))
  {
    if ([(AlgsConfigEvent *)self->_config deviceType]== 2)
    {
      LODWORD(v6) = 1.0;
      [(TrackpadAlgStage *)self _updateButtonMotionFilter:1 shouldSpike:v6];
    }

    [(MTTrackpadUberAlg *)self->_uberAlg setDivingButtonState:state != 0];
    shouldSecondaryClick = [(MTTrackpadUberAlg *)self->_uberAlg shouldSecondaryClick];
    stateCopy = state & 0xFFFFFFFC | 2;
    if ((state & shouldSecondaryClick) == 0)
    {
      stateCopy = state;
    }

    self->_deviceButtonState = stateCopy;
  }
}

- (void)dispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  v5 = MTLoggingPlugin();
  if (os_signpost_enabled(v5))
  {
    signpost_begin_time = self->_signpost_begin_time;
    *buf = 134349314;
    v9 = signpost_begin_time;
    v10 = 2080;
    ClassName = object_getClassName(dispatchCopy);
    _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadAlgStage", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }

  [(TrackpadAlgStage *)self applyCachedSettings];
  v7.receiver = self;
  v7.super_class = TrackpadAlgStage;
  [(HSStage *)&v7 handleConsume:dispatchCopy];
  self->_signpost_begin_time = mach_continuous_time();
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  self->_signpost_begin_time = mach_continuous_time();
  v5 = consumeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [(TrackpadAlgStage *)self _handleResetEvent:v5];
  }

  else
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(TrackpadAlgStage *)self _handleActivateEvent:v7];
    }

    else
    {
      v9 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [(TrackpadAlgStage *)self handleAlgsConfig:v9];
      }

      else
      {
        v11 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          [(TrackpadAlgStage *)self _handleSetPropertyEvent:v11];
        }

        else
        {
          v13 = HSUtil::DynamicCast<HSTContactFrame>(v11);

          if (v13)
          {
            [(TrackpadAlgStage *)self _handleContactFrame:v11];
          }

          else
          {
            v14 = HSUtil::DynamicCast<HSPointerSettingsEvent>(v11);

            if (v14)
            {
              [(TrackpadAlgStage *)self handlePointerSettings:v11];
            }

            else
            {
              v15 = HSUtil::DynamicCast<HSTimerEvent>(v11);

              if (v15)
              {
                [(TrackpadAlgStage *)self _handleTimerEvent:v11];
              }

              else
              {
                v16 = HSUtil::DynamicCast<HSTNotificationEvent>(v11);

                if (v16)
                {
                  [(TrackpadAlgStage *)self _handleHSTNotificationEvent:v11];
                }

                else
                {
                  v17 = HSUtil::DynamicCast<HSMomentumRequestEvent>(v11);

                  if (v17)
                  {
                    [(TrackpadAlgStage *)self _handleMomentumRequestEvent:v11];
                  }

                  else
                  {
                    v18 = HSUtil::DynamicCast<HSMomentumStateEvent>(v11);

                    if (v18)
                    {
                      [(TrackpadAlgStage *)self _handleMomentumStateEvent:v11];
                    }

                    else
                    {
                      v19 = HSUtil::DynamicCast<HSTSystemPowerEvent>(v11);

                      if (v19)
                      {
                        [(TrackpadAlgStage *)self _handleSystemPowerEvent:v11];
                      }

                      else
                      {
                        v20 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v11);

                        if (v20)
                        {
                          [(TrackpadAlgStage *)self _handleGetDebugEvent:v11];
                        }

                        else
                        {
                          v21 = HSUtil::DynamicCast<HSPointerFrame>(v11);

                          if (v21)
                          {
                            [(TrackpadAlgStage *)self handlePointerFrame:v11];
                          }

                          else
                          {
                            v22.receiver = self;
                            v22.super_class = TrackpadAlgStage;
                            [(HSStage *)&v22 handleConsume:v11];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_handleResetEvent:(id)event
{
  eventCopy = event;
  [(TrackpadAlgStage *)self setActivated:0];
  builtIn = self->_builtIn;
  self->_builtIn = 0;

  [(TrackpadAlgStage *)self setSupportsForce:0];
  self->_supportsDeepPress = 1;
  v5 = objc_opt_new();
  uberAlgProperties = self->_uberAlgProperties;
  self->_uberAlgProperties = v5;

  self->_hostClickEnabled = 0;
  self->_parserEnabled = 1;
  [(TrackpadAlgStage *)self setCachedSettingsEvent:0];
  [(TrackpadAlgStage *)self dispatch:eventCopy];
}

- (void)_handleActivateEvent:(id)event
{
  eventCopy = event;
  [(TrackpadAlgStage *)self setActivated:1];
  [(TrackpadAlgStage *)self buildUberAlgs];
  [(TrackpadAlgStage *)self dispatch:eventCopy];
}

- (void)handleAlgsConfig:(id)config
{
  configCopy = config;
  [(TrackpadAlgStage *)self setConfig:?];
  [(TrackpadAlgStage *)self buildUberAlgs];
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v4 = [NSString stringWithUTF8String:?];
  v5 = eventCopy[5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([(MTTrackpadUberAlg *)self->_uberAlg handleProperty:v4 value:eventCopy[5]])
  {
    [(NSMutableDictionary *)self->_uberAlgProperties setObject:eventCopy[5] forKeyedSubscript:v4];
  }

  if ([v4 isEqualToString:@"Built-In"])
  {
    [(TrackpadAlgStage *)self setBuiltIn:v6];
  }

  else if ([v4 isEqualToString:@"ForceSupported"])
  {
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = [(TrackpadAlgStage *)self supportsForce];
    }

    [(TrackpadAlgStage *)self setSupportsForce:bOOLValue];
  }

  else if ([v4 isEqualToString:@"SupportsDeepPress"])
  {
    if (v6)
    {
      bOOLValue2 = [v6 BOOLValue];
    }

    else
    {
      bOOLValue2 = [(TrackpadAlgStage *)self supportsDeepPress];
    }

    [(TrackpadAlgStage *)self setSupportsDeepPress:bOOLValue2];
  }

  [(TrackpadAlgStage *)self dispatch:eventCopy];
}

- (void)_handleTimerEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy[1] isEqualToString:@"TapAndAHalf"])
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = eventCopy[1];
      *buf = 136315906;
      *&buf[4] = "[Debug] ";
      v12 = 2080;
      v13 = "";
      v14 = 2080;
      v15 = "[TrackpadAlgStage _handleTimerEvent:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Timer event received : %@", buf, 0x2Au);
    }

    *buf = 0;
    [(MTTrackpadUberAlg *)self->_uberAlg autoReleaseTapAndAHalfDrag:buf eventRef:self->_tsAtTapAndAHalfTimeTimer];
    v8 = v7;
    if (*buf)
    {
      v9 = objc_opt_new();
      v10 = *buf;
      std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v9 + 1, &v10);

      [(TrackpadAlgStage *)self dispatch:v9];
    }

    if (v8 > 0.0)
    {
      [(TrackpadAlgStage *)self scheduleTapAndAHalfCallbackTimer:self->_tsAtTapAndAHalfTimeTimer delay:v8];
    }
  }

  else
  {
    [(TrackpadAlgStage *)self dispatch:eventCopy];
  }
}

- (void)handlePointerSettings:(id)settings
{
  settingsCopy = settings;
  if ([(MTTrackpadUberAlg *)self->_uberAlg shouldHandleTPSettings])
  {
    [(TrackpadAlgStage *)self _applySettings:settingsCopy];
  }

  else
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "[Debug] ";
      v8 = 2080;
      v9 = "";
      v10 = 2080;
      v11 = "[TrackpadAlgStage handlePointerSettings:]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Caching pointer settings - waiting for Algs", &v6, 0x20u);
    }

    [(TrackpadAlgStage *)self setCachedSettingsEvent:settingsCopy];
  }

  [(TrackpadAlgStage *)self dispatch:settingsCopy];
}

- (void)applyCachedSettings
{
  if ([(TrackpadAlgStage *)self activated])
  {
    cachedSettingsEvent = [(TrackpadAlgStage *)self cachedSettingsEvent];
    if (cachedSettingsEvent)
    {
      shouldHandleTPSettings = [(MTTrackpadUberAlg *)self->_uberAlg shouldHandleTPSettings];

      if (shouldHandleTPSettings)
      {
        v5 = MTLoggingPlugin();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          cachedSettingsEvent2 = [(TrackpadAlgStage *)self cachedSettingsEvent];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v10 = 136315906;
          v11 = "[Debug] ";
          v12 = 2080;
          v13 = "";
          v14 = 2080;
          v15 = "[TrackpadAlgStage applyCachedSettings]";
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Applying cached %@ setting", &v10, 0x2Au);
        }

        cachedSettingsEvent3 = [(TrackpadAlgStage *)self cachedSettingsEvent];
        [(TrackpadAlgStage *)self _applySettings:cachedSettingsEvent3];

        [(TrackpadAlgStage *)self setCachedSettingsEvent:0];
      }
    }
  }
}

- (void)_applySettings:(id)settings
{
  settingsCopy = settings;
  v4 = settingsCopy[1];
  parserEnabled = self->_parserEnabled;
  enable = [v4 enable];
  self->_parserEnabled = [v4 enable];
  if ((settingsCopy[2] & 1) != 0 || parserEnabled != enable)
  {
    [(TrackpadAlgStage *)self _clear];
  }

  [(MTTrackpadUberAlg *)self->_uberAlg handleSettings:v4];
  [(TrackpadAlgStage *)self setActivePointerSettings:v4];
}

- (void)_handleMomentumRequestEvent:(id)event
{
  eventCopy = event;
  [(MTTrackpadUberAlg *)self->_uberAlg lastFrameInterval];
  eventCopy[4] = v4;
  [(TrackpadAlgStage *)self dispatch:?];
}

- (void)_handleMomentumStateEvent:(id)event
{
  eventCopy = event;
  -[MTTrackpadUberAlg handleMomentumState:active:](self->_uberAlg, "handleMomentumState:active:", eventCopy[3], [eventCopy isMomentumActive]);
  [(TrackpadAlgStage *)self dispatch:eventCopy];
}

- (void)_handleSystemPowerEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy systemPowerState] == -536870272)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315650;
      v7 = "[Debug] ";
      v8 = 2080;
      v9 = "";
      v10 = 2080;
      v11 = "[TrackpadAlgStage _handleSystemPowerEvent:]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Handling System Sleep", &v6, 0x20u);
    }

    [(MTTrackpadUberAlg *)self->_uberAlg cancelCurrentTapAndAHalfDrag];
  }
}

- (void)_handleGetDebugEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v17 = +[NSAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"[TrackpadAlgStage _handleGetDebugEvent:]"];
    [v17 handleFailureInFunction:v18 file:@"TrackpadAlgStage.mm" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"event"}];
  }

  v26[0] = @"Stage";
  v4 = objc_opt_class();
  v27[0] = NSStringFromClass(v4);
  v26[1] = @"AlgsConfig";
  v20 = v27[0];
  config = [(TrackpadAlgStage *)self config];
  debug = [config debug];
  v27[1] = debug;
  v26[2] = @"Built-In";
  builtIn = [(TrackpadAlgStage *)self builtIn];
  v6 = builtIn;
  v7 = @"Not set";
  if (builtIn)
  {
    v7 = builtIn;
  }

  v27[2] = v7;
  v26[3] = @"AlgHostClickMode";
  v22 = [NSNumber numberWithBool:self->_hostClickEnabled];
  v27[3] = v22;
  v26[4] = @"ParserEnabled";
  v8 = [NSNumber numberWithBool:self->_parserEnabled];
  v27[4] = v8;
  v26[5] = @"TapAndAHalfTimerExpire";
  v9 = [NSNumber numberWithDouble:self->_tsAtTapAndAHalfTimeTimer];
  v27[5] = v9;
  v26[6] = @"DeviceButtonState";
  v10 = [NSNumber numberWithUnsignedInt:[(TrackpadAlgStage *)self deviceButtonState]];
  v27[6] = v10;
  v26[7] = @"SupportsForce";
  v11 = [NSNumber numberWithBool:[(TrackpadAlgStage *)self supportsForce]];
  v27[7] = v11;
  v26[8] = @"SupportsDeepPress";
  v12 = [NSNumber numberWithBool:[(TrackpadAlgStage *)self supportsDeepPress]];
  v27[8] = v12;
  v26[9] = @"UberAlg";
  if (self->_uberAlgProperties)
  {
    uberAlgProperties = self->_uberAlgProperties;
  }

  else
  {
    uberAlgProperties = @"None";
  }

  v24[0] = @"Properties";
  v24[1] = @"DivingButtonState";
  v25[0] = uberAlgProperties;
  v14 = [NSNumber numberWithBool:[(MTTrackpadUberAlg *)self->_uberAlg divingButtonState]];
  v25[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[9] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:10];

  *(eventCopy + 16) = 1;
  [*(eventCopy + 3) addObject:v16];
  [(TrackpadAlgStage *)self dispatch:eventCopy];
}

- (void)_flushState
{
  [(MTTrackpadUberAlg *)self->_uberAlg cancelCurrentTapAndAHalfDrag];
  v5 = 0;
  [(TrackpadAlgStage *)self _handleContactFrame:0 numActivePaths:0 timestampS:0 frameNumber:&v5 baseEvent:0 handleTapAndAHalf:1 isFlush:0.0];
  if (v5)
  {
    v3 = objc_opt_new();
    v4 = v5;
    std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v3 + 1, &v4);

    [(TrackpadAlgStage *)self handleConsume:v3];
  }
}

- (void)_clear
{
  [(TrackpadAlgStage *)self _flushState];
  [(MTTrackpadUberAlg *)self->_uberAlg clearState];

  bzero(self->_contacts, 0xC00uLL);
}

- (void)handlePointerFrame:(id)frame
{
  frameCopy = frame;
  v5 = frameCopy;
  if (self->_parserEnabled)
  {
    v11 = frameCopy;
    [(TrackpadAlgStage *)self setDeviceButtonState:frameCopy[8] activePathCount:0];
    if ([(AlgsConfigEvent *)self->_config deviceType]== 2)
    {
      v7 = *(v11 + 3);
      if (v7 == 400 || v7 == 0)
      {
        v10 = *(v11 + 9);
      }

      else
      {
        v9 = 400.0 / v7;
        v6 = vmul_n_f32(vcvt_f32_s32(*(v11 + 9)), v9);
        v10 = COERCE_DOUBLE(vcvt_s32_f32(v6));
      }

      v6.f32[0] = SLODWORD(v10);
      *&v10 = SHIDWORD(v10);
      [(TrackpadAlgStage *)self _updateMouseMotionFilterWithXVelocity:1 YVelocity:*&v6 tickle:v10];
    }

    [(TrackpadAlgStage *)self dispatch:v11];
    v5 = v11;
  }
}

- (void)_handleContactFrame:(id)frame
{
  frameCopy = frame;
  [(TrackpadAlgStage *)self _tickleMouseFilters];
  if (self->_parserEnabled)
  {
    v50 = *(frameCopy + 11) & 1;
    if (v50 != self->_hostClickEnabled)
    {
      v4 = MTLoggingPlugin();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        *&buf[24] = "[TrackpadAlgStage _handleContactFrame:]";
        *&buf[32] = 1024;
        *&buf[34] = v50;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Setting host click : %u", buf, 0x26u);
      }

      [(MTTrackpadUberAlg *)self->_uberAlg setHostClickEnabled:v50];
      self->_hostClickEnabled = v50;
    }

    v5 = 0;
    v6 = 0;
    v49 = 152;
    v7 = 172;
    do
    {
      if ((*(&self->super.super.isa + v7) - 1) >= 4)
      {
        v6 &= ~(1 << v5);
      }

      else
      {
        v6 |= 1 << v5;
      }

      ++v5;
      v7 += 96;
    }

    while (v5 != 32);
    config = [(TrackpadAlgStage *)self config];
    surfaceCoordinates = [(AlgsConfigEvent *)config surfaceCoordinates];
    v11 = v10;

    v12 = *(frameCopy + 6);
    v13 = *(frameCopy + 7);
    if (v12 == v13)
    {
      v14 = 0;
LABEL_20:
      v41 = 0;
      v42 = 172;
      do
      {
        if (((1 << v41) & v6) != 0 && ((1 << v41) & v14) == 0)
        {
          *(&self->super.super.isa + v42) = 0;
          v44 = MTLoggingPlugin();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "[Error] ";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = "[TrackpadAlgStage _handleContactFrame:]";
            *&buf[32] = 1024;
            *&buf[34] = v41;
            _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Contact %d was previously in range but is now missing, setting path stage to NotTracking", buf, 0x26u);
          }
        }

        ++v41;
        v42 += 96;
      }

      while (v41 != 32);
      memcpy(buf, &unk_D5278, sizeof(buf));
      v45 = [(TrackpadAlgStage *)self _extractMTContacts:buf];
      v46 = frameCopy;
      if (!v50 && (*(frameCopy + 124) & 0x100000000) != 0)
      {
        [TrackpadAlgStage setDeviceButtonState:"setDeviceButtonState:activePathCount:" activePathCount:?];
        *(frameCopy + 31) = [(TrackpadAlgStage *)self deviceButtonState];
        *(frameCopy + 128) = 1;
      }

      v47 = *(frameCopy + 4);
      if (v45 > 0 || self->_lastNumActivePaths >= 1)
      {
        v58 = 0;
        [(TrackpadAlgStage *)self _handleContactFrame:buf numActivePaths:v45 timestampS:*(frameCopy + 3) frameNumber:&v58 baseEvent:1 handleTapAndAHalf:0 isFlush:v47 / 1000000.0, 152];
        if (v58)
        {
          v48 = objc_opt_new();
          v57 = v58;
          std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v48 + 1, &v57);

          [(TrackpadAlgStage *)self dispatch:v48];
          v46 = frameCopy;
        }
      }

      self->_lastNumActivePaths = v45;
      [(TrackpadAlgStage *)self dispatch:v46, v49];
    }

    else
    {
      v14 = 0;
      v15.i32[0] = HIDWORD(surfaceCoordinates) - surfaceCoordinates;
      v15.i32[1] = HIDWORD(v11) - v11;
      *v16.f32 = vcvt_f32_s32(v15);
      v16.i64[1] = v16.i64[0];
      v51 = vcvtq_f64_f32(*v16.f32);
      v52 = v16;
      v55 = vdupq_n_s64(0x408F400000000000uLL);
      while (1)
      {
        v17 = *v12;
        if (v17 > 0x1F)
        {
          break;
        }

        v18 = *(v12 + 1);
        v19 = *(v12 + 2);
        v20 = v12[24];
        v21 = *(v12 + 28);
        v22 = *(v12 + 56);
        v24 = *(v12 + 12);
        v23 = *(v12 + 13);
        v25 = v12[3];
        v26 = v12[2];
        v27 = v12[1];
        v28 = self->_contacts + 96 * *v12;
        v29 = *(v28 + 1);
        v30 = *(v12 + 9);
        *v28 = *(frameCopy + 3);
        v31 = *(v28 + 68);
        *(v28 + 1) = *(frameCopy + 4) / 1000000.0;
        *(v28 + 5) = v27;
        *(v28 + 6) = v26;
        *(v28 + 7) = v25;
        v56 = v19;
        v32.i64[0] = v19;
        v54 = v21;
        v32.i64[1] = v21;
        *(v28 + 2) = vdivq_f32(vcvtq_f32_s32(v32), v52);
        *(v28 + 12) = v23;
        *(v28 + 13) = v30;
        *(v28 + 14) = v24;
        v33 = *(v12 + 5);
        *(v28 + 4) = v17;
        v34.i64[0] = v33;
        v34.i64[1] = SHIDWORD(v33);
        *(v28 + 60) = vcvt_f32_f64(vdivq_f64(vcvtq_f64_s64(v34), v55));
        config2 = [(TrackpadAlgStage *)self config];
        v36 = (v56 + [(AlgsConfigEvent *)config2 surfaceCoordinates]) / 1000.0;
        *(v28 + 17) = v36;

        config3 = [(TrackpadAlgStage *)self config];
        [(AlgsConfigEvent *)config3 surfaceCoordinates];
        v39 = (HIDWORD(v56) + v38) / 1000.0;
        *(v28 + 18) = v39;

        v34.i64[0] = v54;
        v34.i64[1] = SHIDWORD(v54);
        *(v28 + 76) = vcvt_f32_f64(vdivq_f64(vcvtq_f64_s64(v34), v55));
        *(v28 + 42) = v18;
        *(v28 + 11) = vrev64_s32(v22);
        if ((v20 & 1) != 0 && (*(v28 + 5) - 4) <= 2)
        {
          v40 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vsub_f32(*(v28 + 68), v31)), vdupq_lane_s64(COERCE__INT64(*(v28 + 1) - v29), 0)));
          *(v28 + 76) = v40;
          *(v28 + 5) = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(v40), v55), v51));
        }

        v14 |= 1 << v17;
        v12 += 64;
        if (v12 == v13)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

- (void)_handleContactFrame:(id)frame[32] numActivePaths:(float)paths timestampS:frameNumber:baseEvent:handleTapAndAHalf:isFlush:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = *&paths;
  v12 = v4;
  v18 = 0.0;
  v15 = mach_continuous_time();
  [(MTTrackpadUberAlg *)self->_uberAlg processContact:frame activePathCount:v12 timestamp:v10 baseEvent:&v18 callbackInterval:v8 isFlush:v11];
  v16 = MTLoggingPlugin();
  if (os_signpost_enabled(v16))
  {
    *buf = 134349056;
    v20 = v15;
    _os_signpost_emit_with_name_impl(&dword_0, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadAlgProcessing", "%{public, signpost.description:begin_time}llu", buf, 0xCu);
  }

  if (v18 > 0.0 && v9 != 0)
  {
    [(TrackpadAlgStage *)self scheduleTapAndAHalfCallbackTimer:v11 delay:v18];
  }
}

- (int)_extractMTContacts:(id *)contacts
{
  result = 0;
  contacts = self->_contacts;
  v8 = 32;
  do
  {
    if (contacts->proximity > 0.0 || (contacts->path_stage - 1) <= 6)
    {
      v9 = &contacts->var0 + 12 * result++;
      v10 = *&contacts->path_id;
      *v9 = *&contacts->frame_number;
      *(v9 + 1) = v10;
      v11 = *&contacts->position.x;
      v12 = *&contacts->proximity;
      v13 = *&contacts->velocity_mm_s.y;
      *(v9 + 4) = *&contacts->minor_radius_mm;
      *(v9 + 5) = v13;
      *(v9 + 2) = v11;
      *(v9 + 3) = v12;
    }

    contacts = (contacts + 96);
    --v8;
  }

  while (v8);
  return result;
}

- (void)scheduleTapAndAHalfCallbackTimer:(double)timer delay:(double)delay
{
  v7 = MTLoggingPlugin();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v13 = "[Debug] ";
    v14 = 2080;
    v15 = "";
    v16 = 2080;
    v17 = "[TrackpadAlgStage scheduleTapAndAHalfCallbackTimer:delay:]";
    v18 = 2048;
    timerCopy = timer;
    v20 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s SC2 : %f %f", buf, 0x34u);
  }

  self->_tsAtTapAndAHalfTimeTimer = timer + delay;
  if (self->_queue)
  {
    objc_initWeak(buf, self);
    v8 = dispatch_time(0, (delay * 1000000000.0));
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __59__TrackpadAlgStage_scheduleTapAndAHalfCallbackTimer_delay___block_invoke;
    block[3] = &unk_109278;
    objc_copyWeak(v11, buf);
    v11[1] = *&timer;
    v11[2] = *&delay;
    dispatch_after(v8, queue, block);
    objc_destroyWeak(v11);
    objc_destroyWeak(buf);
  }
}

void __59__TrackpadAlgStage_scheduleTapAndAHalfCallbackTimer_delay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    dispatch_assert_queue_V2(*(WeakRetained + 17));
    if (v3[18] == v4 + v5)
    {
      v6 = MTLoggingPlugin();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136315650;
        v11 = "[Debug] ";
        v12 = 2080;
        v13 = "";
        v14 = 2080;
        v15 = "[TrackpadAlgStage scheduleTapAndAHalfCallbackTimer:delay:]_block_invoke";
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Sending feedback event for TapAndAHalf!!", &v10, 0x20u);
      }

      v7 = objc_opt_new();
      v8 = v7[1];
      v7[1] = @"TapAndAHalf";

      v9 = objc_opt_new();
      objc_storeStrong(v9 + 2, v7);
      [v3 dispatch:v9];
    }
  }
}

- (void)_handleHSTNotificationEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy notification] == 1 || objc_msgSend(eventCopy, "notification") == 11)
  {
    [(TrackpadAlgStage *)self _clear];
  }

  [(TrackpadAlgStage *)self dispatch:eventCopy];
}

- (void)buildUberAlgs
{
  config = [(TrackpadAlgStage *)self config];

  if (config)
  {
    [(TrackpadAlgStage *)self _clear];
    objc_initWeak(&location, self);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = __33__TrackpadAlgStage_buildUberAlgs__block_invoke;
    v13 = &unk_1092A0;
    objc_copyWeak(&v14, &location);
    v4 = objc_retainBlock(&v10);
    v5 = [MTTrackpadUberAlg alloc];
    v6 = [(TrackpadAlgStage *)self config:v10];
    builtIn = [(TrackpadAlgStage *)self builtIn];
    v8 = -[MTTrackpadUberAlg initWithConfig:actuationHandler:builtIn:supportsForce:supportsDeepPress:](v5, "initWithConfig:actuationHandler:builtIn:supportsForce:supportsDeepPress:", v6, v4, [builtIn BOOLValue], -[TrackpadAlgStage supportsForce](self, "supportsForce"), -[TrackpadAlgStage supportsDeepPress](self, "supportsDeepPress"));
    uberAlg = self->_uberAlg;
    self->_uberAlg = v8;

    if (self->_activePointerSettings)
    {
      [(MTTrackpadUberAlg *)self->_uberAlg handleSettings:self->_activePointerSettings];
    }

    [(MTTrackpadUberAlg *)self->_uberAlg setHostClickEnabled:self->_hostClickEnabled];
    [(MTTrackpadUberAlg *)self->_uberAlg setDivingButtonState:[(TrackpadAlgStage *)self deviceButtonState]!= 0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __33__TrackpadAlgStage_buildUberAlgs__block_invoke(uint64_t a1, int a2, int a3, float a4, float a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_opt_new();
  *(v9 + 8) = a2;
  *(v9 + 12) = a3;
  *(v9 + 16) = a4;
  *(v9 + 20) = a5;
  [WeakRetained dispatch:v9];
}

- (void)_tickleMouseFilters
{
  [(TrackpadAlgStage *)self _updateMouseMotionFilterWithXVelocity:1 YVelocity:0.0 tickle:0.0];

  [(TrackpadAlgStage *)self _updateButtonMotionFilter:0 shouldSpike:0.0];
}

- (void)_updateButtonMotionFilter:(float)filter shouldSpike:(BOOL)spike
{
  spikeCopy = spike;
  MTAbsoluteTimeGetCurrent();
  if (!spikeCopy)
  {
    v7 = pow(0.699999988, (v7 - self->_buttonMotionIIRLastUpdateTime) / 0.0112500004);
    *&v7 = v7;
    filter = ((1.0 - *&v7) * filter) + (*&v7 * self->_buttonMotionIIR);
  }

  self->_buttonMotionIIR = filter;
  *&v7 = filter;
  [(MTTrackpadUberAlg *)self->_uberAlg setMouseButtonFilterData:v7];
  MTAbsoluteTimeGetCurrent();
  self->_buttonMotionIIRLastUpdateTime = v8;
}

- (void)_updateMouseMotionFilterWithXVelocity:(float)velocity YVelocity:(float)yVelocity tickle:(BOOL)tickle
{
  tickleCopy = tickle;
  MTAbsoluteTimeGetCurrent();
  v8 = v7 - self->_mouseMotionIIRLastUpdateTime;
  if (!tickleCopy || v8 >= 0.0329999998)
  {
    v9 = vabs_f32(__PAIR64__(LODWORD(yVelocity), LODWORD(velocity)));
    mouseMotionIIR = self->_mouseMotionIIR;
    v10 = v8 / 0.00800000038;
    if (vaddv_f32(mouseMotionIIR) <= 5.0)
    {
      v11 = 0.870000005;
    }

    else
    {
      v11 = 0.699999988;
    }

    v12 = pow(v11, v10);
    *&v12 = v12;
    v22 = *&v12;
    v13 = pow(0.200000003, v10);
    *&v13 = v13;
    v14 = vbsl_s8(vcgt_f32(v9, mouseMotionIIR), vdup_lane_s32(*&v13, 0), vdup_lane_s32(v22, 0));
    __asm { FMOV            V1.2S, #1.0 }

    self->_mouseMotionIIR = vmla_f32(vmul_f32(v9, vsub_f32(_D1, v14)), mouseMotionIIR, v14);
    [(MTTrackpadUberAlg *)self->_uberAlg setMouseMotionFilterData:&self->_mouseMotionIIR];
    MTAbsoluteTimeGetCurrent();
    self->_mouseMotionIIRLastUpdateTime = v20;
  }
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v6 = *(encode + 17);
    DWORD2(v6) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v6);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  [(TrackpadAlgStage *)self encodeToMap:encode];
  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(decode, &v10);
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    v6 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/Alg/TrackpadAlgStage.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [TrackpadAlgStage handleHSDecode:v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(TrackpadAlgStage *)self decodeFromMap:&v10];
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v11;
  *&v11 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  return v7;
}

- (void)setActivePointerSettings:(uint64_t)settings
{
  if (settings)
  {
    objc_storeStrong((settings + 3280), a2);
  }
}

- (void)handleHSDecode:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = 136315906;
  v2 = "[TrackpadAlgStage handleHSDecode:]";
  v3 = 2080;
  v4 = a1;
  v5 = 2048;
  v6 = 797;
  v7 = 2080;
  v8 = "coder";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", &v1, 0x2Au);
}

@end