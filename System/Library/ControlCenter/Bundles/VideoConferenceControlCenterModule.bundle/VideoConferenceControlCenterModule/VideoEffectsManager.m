@interface VideoEffectsManager
- (BOOL)setIntensity:(float)a3 forEffect:(int)a4;
- (VideoEffectsManager)init;
- (id)getUnavailableString;
- (id)unavailableStringForReason:(unint64_t)a3 appName:(id)a4 forVideoEffect:(unint64_t)a5;
- (void)dealloc;
- (void)handleAVControlCenterNotification:(id)a3;
- (void)setupVideoEffectsModeNotifications;
- (void)setupWithoutSensorData;
- (void)updateCurrentApplicationWithContext:(id)a3;
- (void)updateVideoEffectsStates;
- (void)updateVisuals;
- (void)verifyCenterStageAvailability;
@end

@implementation VideoEffectsManager

- (VideoEffectsManager)init
{
  v22.receiver = self;
  v22.super_class = VideoEffectsManager;
  v2 = [(VideoEffectsManager *)&v22 init];
  if (v2)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v24 = "[VideoEffectsManager init]";
      v25 = 1024;
      v26 = 39;
      v27 = 2048;
      v28 = v2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v3 = [VideoEffects alloc];
    v4 = [(VideoEffects *)v3 initWithVideoEffectsModule:AVControlCenterVideoEffectCenterStage];
    centerStage = v2->_centerStage;
    v2->_centerStage = v4;

    v6 = [VideoEffects alloc];
    v7 = [(VideoEffects *)v6 initWithVideoEffectsModule:AVControlCenterVideoEffectBackgroundBlur];
    backgroundBlur = v2->_backgroundBlur;
    v2->_backgroundBlur = v7;

    v9 = [VideoEffects alloc];
    v10 = [(VideoEffects *)v9 initWithVideoEffectsModule:AVControlCenterVideoEffectStudioLighting];
    studioLighting = v2->_studioLighting;
    v2->_studioLighting = v10;

    v12 = [VideoEffects alloc];
    v13 = [(VideoEffects *)v12 initWithVideoEffectsModule:AVControlCenterVideoEffectReactions];
    reactions = v2->_reactions;
    v2->_reactions = v13;

    v15 = [VideoEffects alloc];
    v16 = [(VideoEffects *)v15 initWithVideoEffectsModule:AVControlCenterVideoEffectGestures];
    gestures = v2->_gestures;
    v2->_gestures = v16;

    displayName = v2->_displayName;
    v2->_displayName = 0;

    bundleIdentifier = v2->_bundleIdentifier;
    v2->_bundleIdentifier = 0;

    delegate = v2->_delegate;
    v2->_delegate = 0;

    v2->_currentCameraSupportsCenterStage = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "[VideoEffectsManager dealloc]";
    v8 = 1024;
    v9 = 54;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  delegate = self->_delegate;
  self->_delegate = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = VideoEffectsManager;
  [(VideoEffectsManager *)&v5 dealloc];
}

- (void)updateCurrentApplicationWithContext:(id)a3
{
  v4 = [a3 sensorActivityDataForActiveSensorType:0];
  if (v4)
  {
    v13 = v4;
    v5 = [v4 displayName];
    displayName = self->_displayName;
    self->_displayName = v5;

    v7 = [v13 bundleIdentifier];
    if ([v7 isEqualToString:@"com.apple.TelephonyUtilities"])
    {
      bundleIdentifier = self->_bundleIdentifier;
      self->_bundleIdentifier = @"com.apple.facetime";
    }

    else
    {
      bundleIdentifier = [v13 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:@"com.apple.facetime"])
      {
        v9 = self->_bundleIdentifier;
        self->_bundleIdentifier = @"com.apple.facetime";
      }

      else
      {
        v9 = [v13 bundleIdentifier];
        if ([v9 isEqualToString:@"com.apple.mediaserverd"])
        {
          v10 = self->_bundleIdentifier;
          self->_bundleIdentifier = @"com.apple.facetime";
        }

        else
        {
          v10 = [v13 bundleIdentifier];
          if ([v10 isEqualToString:@"com.apple.avconferenced"])
          {
            v11 = @"com.apple.facetime";
          }

          else
          {
            v11 = [v13 bundleIdentifier];
          }

          v12 = self->_bundleIdentifier;
          self->_bundleIdentifier = &v11->isa;
        }
      }
    }

    [(VideoEffectsManager *)self updateVideoEffectsStates];
    v4 = v13;
  }
}

- (void)updateVideoEffectsStates
{
  if (self->_bundleIdentifier)
  {
    [(VideoEffects *)self->_centerStage updateVideoEffectStatesWithBundleID:?];
    [(VideoEffects *)self->_backgroundBlur updateVideoEffectStatesWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_studioLighting updateVideoEffectStatesWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_reactions updateVideoEffectStatesWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_gestures updateVideoEffectStatesWithBundleID:self->_bundleIdentifier];
    self->_currentCameraSupportsCenterStage = [(VideoEffects *)self->_centerStage isAvailable];
    [(VideoEffectsManager *)self verifyCenterStageAvailability];

    [(VideoEffectsManager *)self updateVisuals];
  }

  else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1E9F4();
  }
}

- (void)verifyCenterStageAvailability
{
  if (self->_bundleIdentifier)
  {
    self->_currentCameraSupportsCenterStage = (AVControlCenterVideoEffectsModuleGetUnavailableReasons() & 1) == 0;
  }

  else if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1EA74();
  }
}

- (void)setupVideoEffectsModeNotifications
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[VideoEffectsManager setupVideoEffectsModeNotifications]";
    v9 = 1024;
    v10 = 98;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterVideoEffectsModuleEffectSupportedDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification object:0];
}

- (void)handleAVControlCenterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVControlCenterModulesNotificationBundleIdentifierKey];

  if (![v6 isEqualToString:self->_bundleIdentifier])
  {
    goto LABEL_21;
  }

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 name];
    *v32 = 136446722;
    *&v32[4] = "[VideoEffectsManager handleAVControlCenterNotification:]";
    *&v32[12] = 1024;
    *&v32[14] = 123;
    *&v32[18] = 2112;
    *&v32[20] = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notificationName=%@", v32, 0x1Cu);
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:AVControlCenterVideoEffectsModuleEffectSupportedDidChangeNotification];

  if (v9)
  {
    [(VideoEffects *)self->_backgroundBlur updateAvailabilityWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_centerStage updateAvailabilityWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_studioLighting updateAvailabilityWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_reactions updateAvailabilityWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_gestures updateAvailabilityWithBundleID:self->_bundleIdentifier];
    if (__RPLogLevel > 1u || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v10 = [(VideoEffects *)self->_backgroundBlur isAvailable];
    v11 = [(VideoEffects *)self->_centerStage isAvailable];
    v12 = [(VideoEffects *)self->_studioLighting isAvailable];
    v13 = [(VideoEffects *)self->_reactions isAvailable];
    v14 = [(VideoEffects *)self->_gestures isAvailable];
    *v32 = 136447746;
    *&v32[4] = "[VideoEffectsManager handleAVControlCenterNotification:]";
    *&v32[12] = 1024;
    *&v32[14] = 132;
    *&v32[18] = 1024;
    *&v32[20] = v10;
    *&v32[24] = 1024;
    *&v32[26] = v11;
    *&v32[30] = 1024;
    *&v32[32] = v12;
    *&v32[36] = 1024;
    *&v32[38] = v13;
    *&v32[42] = 1024;
    *&v32[44] = v14;
    v15 = " [INFO] %{public}s:%d backgroundBlurSupported=%d centerStageSupported=%d StudioLightingSupported=%d reactionsSupported=%d gesturesSupported=%d";
LABEL_9:
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v15, v32, 0x30u);
LABEL_18:
    [(VideoEffectsManager *)self updateVisuals:*v32];
    goto LABEL_19;
  }

  v16 = [v4 name];
  v17 = [v16 isEqualToString:AVControlCenterVideoEffectsModuleEffectControlModeDidChangeNotification];

  if (v17)
  {
    [(VideoEffects *)self->_backgroundBlur updateControlModeWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_centerStage updateControlModeWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_studioLighting updateControlModeWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_reactions updateControlModeWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_gestures updateControlModeWithBundleID:self->_bundleIdentifier];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(VideoEffects *)self->_backgroundBlur controlMode];
      v19 = [(VideoEffects *)self->_centerStage controlMode];
      v20 = [(VideoEffects *)self->_studioLighting controlMode];
      v21 = [(VideoEffects *)self->_reactions controlMode];
      v22 = [(VideoEffects *)self->_gestures controlMode];
      *v32 = 136447746;
      *&v32[4] = "[VideoEffectsManager handleAVControlCenterNotification:]";
      *&v32[12] = 1024;
      *&v32[14] = 148;
      *&v32[18] = 2048;
      *&v32[20] = v18;
      *&v32[28] = 2048;
      *&v32[30] = v19;
      *&v32[38] = 2048;
      *&v32[40] = v20;
      v33 = 2048;
      v34 = v21;
      v35 = 2048;
      v36 = v22;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d backgroundBlurControlMode=%ld centerStageControlMode=%ld StudioLightingControlMode=%ld reactionsControlMode=%ld gesturesControlMode=%ld", v32, 0x44u);
    }

    goto LABEL_19;
  }

  v23 = [v4 name];
  v24 = [v23 isEqualToString:AVControlCenterVideoEffectsModuleEffectEnabledDidChangeNotification];

  if (v24)
  {
    [(VideoEffects *)self->_backgroundBlur updateEnabledWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_centerStage updateEnabledWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_studioLighting updateEnabledWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_reactions updateEnabledWithBundleID:self->_bundleIdentifier];
    [(VideoEffects *)self->_gestures updateEnabledWithBundleID:self->_bundleIdentifier];
    if (__RPLogLevel > 1u || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v25 = [(VideoEffects *)self->_backgroundBlur enabled];
    v26 = [(VideoEffects *)self->_centerStage enabled];
    v27 = [(VideoEffects *)self->_studioLighting enabled];
    v28 = [(VideoEffects *)self->_reactions enabled];
    v29 = [(VideoEffects *)self->_gestures enabled];
    *v32 = 136447746;
    *&v32[4] = "[VideoEffectsManager handleAVControlCenterNotification:]";
    *&v32[12] = 1024;
    *&v32[14] = 156;
    *&v32[18] = 1024;
    *&v32[20] = v25;
    *&v32[24] = 1024;
    *&v32[26] = v26;
    *&v32[30] = 1024;
    *&v32[32] = v27;
    *&v32[36] = 1024;
    *&v32[38] = v28;
    *&v32[42] = 1024;
    *&v32[44] = v29;
    v15 = " [INFO] %{public}s:%d backgroundBlurEnabled=%d centerStageEnabled=%d StudioLightingEnabled=%d reactionsEnabled=%d gesturesEnabled=%d";
    goto LABEL_9;
  }

LABEL_19:
  v30 = [v4 name];
  v31 = [v30 isEqualToString:AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification];

  if (v31)
  {
    [(VideoEffectsManager *)self verifyCenterStageAvailability];
    [(VideoEffectsManager *)self updateVisuals];
  }

LABEL_21:
}

- (BOOL)setIntensity:(float)a3 forEffect:(int)a4
{
  if (self->_bundleIdentifier)
  {
    if (a4 == 2)
    {
      studioLighting = self->_studioLighting;
      goto LABEL_9;
    }

    if (a4 == 1)
    {
      studioLighting = self->_backgroundBlur;
LABEL_9:
      [VideoEffects setIntensity:"setIntensity:withBundleID:" withBundleID:?];
      LOBYTE(v6) = 1;
      return v6;
    }

    if (__RPLogLevel <= 2u)
    {
      v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (!v6)
      {
        return v6;
      }

      sub_1EC3C(a4);
    }

LABEL_13:
    LOBYTE(v6) = 0;
    return v6;
  }

  if (__RPLogLevel > 2u)
  {
    goto LABEL_13;
  }

  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_1ECDC();
    goto LABEL_13;
  }

  return v6;
}

- (void)setupWithoutSensorData
{
  if (!self->_shouldLoadFromSensor)
  {
    v8 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cameracapture.volatile"];
    v4 = [v8 stringForKey:@"show-system-ui-app-name"];
    displayName = self->_displayName;
    self->_displayName = v4;

    v6 = [v8 stringForKey:@"show-system-ui-bundle-id"];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v6;
  }
}

- (void)updateVisuals
{
  if (self->_delegate)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v5 = "[VideoEffectsManager updateVisuals]";
      v6 = 1024;
      v7 = 237;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify delegate", buf, 0x12u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4D70;
    block[3] = &unk_28A30;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)getUnavailableString
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v21 = "[VideoEffectsManager getUnavailableString]";
    v22 = 1024;
    v23 = 245;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (!bundleIdentifier || [(NSString *)bundleIdentifier length])
  {
    if ([(VideoEffects *)self->_centerStage isAvailable]&& [(VideoEffects *)self->_centerStage enabled]&& !self->_currentCameraSupportsCenterStage)
    {
      displayName = self->_displayName;
      v9 = self;
      v10 = 1;
      goto LABEL_35;
    }

    if ([(VideoEffects *)self->_backgroundBlur isAvailable]&& [(VideoEffects *)self->_centerStage isAvailable])
    {
      if ([(VideoEffects *)self->_backgroundBlur enabled]&& [(VideoEffects *)self->_centerStage enabled])
      {
        v4 = self->_bundleIdentifier;
        UnavailableReasons = AVControlCenterVideoEffectsModuleGetUnavailableReasons();
        v6 = self->_bundleIdentifier;
        v7 = AVControlCenterVideoEffectsModuleGetUnavailableReasons();
        displayName = self->_displayName;
        if (UnavailableReasons != v7)
        {
          v16 = v7;
          v17 = [(VideoEffectsManager *)self unavailableStringForReason:UnavailableReasons appName:displayName forVideoEffect:1];
          v18 = [(VideoEffectsManager *)self unavailableStringForReason:v16 appName:self->_displayName forVideoEffect:0];
          v19 = v18;
          v12 = 0;
          if (v17 && v18)
          {
            v12 = [NSString stringWithFormat:@"%@ %@", v17, v18];
          }

          goto LABEL_37;
        }

        v9 = self;
        v10 = UnavailableReasons;
        v11 = 2;
        goto LABEL_36;
      }

      if (![(VideoEffects *)self->_backgroundBlur enabled]&& [(VideoEffects *)self->_centerStage enabled])
      {
        goto LABEL_29;
      }

      if (![(VideoEffects *)self->_backgroundBlur enabled]|| [(VideoEffects *)self->_centerStage enabled])
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (![(VideoEffects *)self->_backgroundBlur isAvailable]&& [(VideoEffects *)self->_centerStage isAvailable])
      {
        if ([(VideoEffects *)self->_centerStage enabled])
        {
LABEL_29:
          v13 = self->_bundleIdentifier;
          v10 = AVControlCenterVideoEffectsModuleGetUnavailableReasons();
          displayName = self->_displayName;
          v9 = self;
LABEL_35:
          v11 = 0;
          goto LABEL_36;
        }

LABEL_32:
        v12 = 0;
LABEL_37:
        if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v21 = "[VideoEffectsManager getUnavailableString]";
          v22 = 1024;
          v23 = 286;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d unavailableString=%@", buf, 0x1Cu);
        }

        goto LABEL_40;
      }

      if (![(VideoEffects *)self->_backgroundBlur isAvailable]|| [(VideoEffects *)self->_centerStage isAvailable]|| ![(VideoEffects *)self->_backgroundBlur enabled])
      {
        goto LABEL_32;
      }
    }

    v14 = self->_bundleIdentifier;
    v10 = AVControlCenterVideoEffectsModuleGetUnavailableReasons();
    displayName = self->_displayName;
    v9 = self;
    v11 = 1;
LABEL_36:
    v12 = [(VideoEffectsManager *)v9 unavailableStringForReason:v10 appName:displayName forVideoEffect:v11];
    goto LABEL_37;
  }

  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1ED5C();
  }

  v12 = 0;
LABEL_40:

  return v12;
}

- (id)unavailableStringForReason:(unint64_t)a3 appName:(id)a4 forVideoEffect:(unint64_t)a5
{
  v7 = a4;
  switch(a3)
  {
    case 0x10uLL:
      if (a5 == 1)
      {
        v9 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_PORTRAIT_UNSUPPORTED_BACKEND";
      }

      else if (a5 == 2)
      {
        v9 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_PLURAL_UNSUPPORTED_BACKEND";
      }

      else
      {
        v9 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_CENTER_STAGE_UNSUPPORTED_BACKEND";
      }

      goto LABEL_22;
    case 4uLL:
      if (a5 == 1)
      {
        v9 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_PORTRAIT_UNSUPPORTED_OPTOUT";
      }

      else if (a5 == 2)
      {
        v9 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_PLURAL_UNSUPPORTED_OPTOUT";
      }

      else
      {
        v9 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_CENTER_STAGE_UNSUPPORTED_OPTOUT";
      }

LABEL_22:
      v12 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v9];
      v11 = [NSString stringWithFormat:v12, v7];

      break;
    case 1uLL:
      if (a5 == 1)
      {
        v8 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_PORTRAIT_UNSUPPORTED_CAMERA";
      }

      else if (a5 == 2)
      {
        v8 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_PLURAL_UNSUPPORTED_CAMERA";
      }

      else
      {
        v8 = @"CONTROL_CENTER_CAMERA_UNAVAILABLE_CENTER_STAGE_UNSUPPORTED_CAMERA";
      }

      v11 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v8];
      break;
    default:
      if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [NSNumber numberWithUnsignedInteger:a3];
        *buf = 136446722;
        v15 = "[VideoEffectsManager unavailableStringForReason:appName:forVideoEffect:]";
        v16 = 1024;
        v17 = 316;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No unavailable string for supplied reason=%@", buf, 0x1Cu);
      }

      v11 = 0;
      break;
  }

  return v11;
}

@end