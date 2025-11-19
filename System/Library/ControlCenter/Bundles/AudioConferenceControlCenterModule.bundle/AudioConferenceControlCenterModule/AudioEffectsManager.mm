@interface AudioEffectsManager
- (AudioEffectsManager)init;
- (BOOL)updateAutomaticMicMode:(BOOL)a3;
- (BOOL)updateMicMode:(int64_t)a3;
- (id)getUnavailableString;
- (void)dealloc;
- (void)handleAVControlCenterNotification:(id)a3;
- (void)setupMicModeNotifications;
- (void)setupWithoutSensorData;
- (void)updateCurrentApplicationWithContext:(id)a3;
- (void)updateMicModeStates;
- (void)updateVisuals;
@end

@implementation AudioEffectsManager

- (AudioEffectsManager)init
{
  v8.receiver = self;
  v8.super_class = AudioEffectsManager;
  v2 = [(AudioEffectsManager *)&v8 init];
  if (v2)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v10 = "[AudioEffectsManager init]";
      v11 = 1024;
      v12 = 40;
      v13 = 2048;
      v14 = v2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v3 = *(v2 + 4);
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;

    v2[8] = 0;
    v4 = *(v2 + 3);
    *(v2 + 3) = 0;

    v5 = *(v2 + 2);
    *(v2 + 2) = 0;

    *(v2 + 10) = 16842753;
    v6 = *(v2 + 6);
    *(v2 + 6) = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "[AudioEffectsManager dealloc]";
    v8 = 1024;
    v9 = 57;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  delegate = self->_delegate;
  self->_delegate = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = AudioEffectsManager;
  [(AudioEffectsManager *)&v5 dealloc];
}

- (void)setupWithoutSensorData
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[AudioEffectsManager setupWithoutSensorData]";
    v11 = 1024;
    v12 = 63;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v9, 0x12u);
  }

  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cameracapture.volatile"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringForKey:@"show-system-ui-app-name"];
    displayName = self->_displayName;
    self->_displayName = v5;

    v7 = [v4 stringForKey:@"show-system-ui-bundle-id"];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v7;
  }
}

- (void)updateMicModeStates
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 136446722;
    v8 = "[AudioEffectsManager updateMicModeStates]";
    v9 = 1024;
    v10 = 72;
    v11 = 2112;
    v12 = bundleIdentifier;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d bundleIdentifier=%@", &v7, 0x1Cu);
  }

  if (self->_bundleIdentifier)
  {
    self->_currentMicMode = AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID();
    self->_currentBypassMode = AVControlCenterMicrophoneModesModuleIsVoiceProcessingBypassedForBundleID();
    v4 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
    supportedModes = self->_supportedModes;
    self->_supportedModes = v4;

    sub_8674(self->_bundleIdentifier);
    self->_automaticMicModeEnabled = v6;
    [(AudioEffectsManager *)self updateVisuals];
  }

  else if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[AudioEffectsManager updateMicModeStates]";
    v9 = 1024;
    v10 = 81;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Unable to load initial state, no applicable application bundle ID found", &v7, 0x12u);
  }
}

- (void)setupMicModeNotifications
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    currentBypassMode = self->_currentBypassMode;
    v10 = 136446722;
    v11 = "[AudioEffectsManager setupMicModeNotifications]";
    v12 = 1024;
    v13 = 86;
    v14 = 1024;
    v15 = currentBypassMode;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d currentBypassMode=%d", &v10, 0x18u);
  }

  if (!self->_currentBypassMode)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleMicrophoneModeDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleVoiceProcessingBypassedDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = sub_88AC();
    [v8 addObserver:self selector:"handleAVControlCenterNotification:" name:v9 object:0];
  }
}

- (void)handleAVControlCenterNotification:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[AudioEffectsManager handleAVControlCenterNotification:]";
    v15 = 1024;
    v16 = 111;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVControlCenterModulesNotificationBundleIdentifierKey];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8B3C;
  block[3] = &unk_2CC00;
  v10 = v6;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateVisuals
{
  delegate = self->_delegate;
  if (delegate)
  {
    if (__RPLogLevel <= 1u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136446466;
        v5 = "[AudioEffectsManager updateVisuals]";
        v6 = 1024;
        v7 = 154;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d notify delegate", &v4, 0x12u);
      }

      delegate = self->_delegate;
    }

    [(AudioEffectsManagerDelegate *)delegate effectsDidUpdate];
  }
}

- (void)updateCurrentApplicationWithContext:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[AudioEffectsManager updateCurrentApplicationWithContext:]";
    *&buf[12] = 1024;
    *&buf[14] = 160;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v5 = [v4 sensorActivityDataForActiveSensorType:1];
  v6 = [v4 sensorActivityDataForActiveSensorType:0];
  if (v5)
  {
    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 sensorActivityDataEligibleForInactiveMicModeSelection];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "[AudioEffectsManager updateCurrentApplicationWithContext:]";
      *&buf[12] = 1024;
      *&buf[14] = 169;
      *&buf[18] = 2112;
      *&buf[20] = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Inactive mic mode selection - replacing applicationMicData with %@", buf, 0x1Cu);
    }

    if (v5)
    {
      goto LABEL_14;
    }
  }

  v5 = [v4 mutedMicrophoneSensorActivityData];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[AudioEffectsManager updateCurrentApplicationWithContext:]";
    *&buf[12] = 1024;
    *&buf[14] = 174;
    *&buf[18] = 2112;
    *&buf[20] = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Muted microphone - replacing applicationMicData with %@", buf, 0x1Cu);
  }

  if (v5)
  {
LABEL_14:
    v7 = [v5 displayName];
    displayName = self->_displayName;
    self->_displayName = v7;

    v9 = [v5 bundleIdentifier];
    if ([v9 isEqualToString:@"com.apple.TelephonyUtilities"])
    {
      bundleIdentifier = self->_bundleIdentifier;
      self->_bundleIdentifier = @"com.apple.facetime";
    }

    else
    {
      bundleIdentifier = [v5 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:@"com.apple.facetime"])
      {
        v11 = self->_bundleIdentifier;
        self->_bundleIdentifier = @"com.apple.facetime";
      }

      else
      {
        v11 = [v5 bundleIdentifier];
        if ([v11 isEqualToString:@"com.apple.mediaserverd"])
        {
          v12 = self->_bundleIdentifier;
          self->_bundleIdentifier = @"com.apple.facetime";
        }

        else
        {
          v12 = [v5 bundleIdentifier];
          if ([v12 isEqualToString:@"com.apple.avconferenced"])
          {
            v13 = @"com.apple.facetime";
          }

          else
          {
            v13 = [v5 bundleIdentifier];
          }

          v20 = self->_bundleIdentifier;
          self->_bundleIdentifier = &v13->isa;
        }
      }
    }

    if ([v5 usedRecently])
    {
      self->_audioEffectsEnabled = 0;
    }

    else
    {
      self->_audioEffectsEnabled = 1;
    }

    goto LABEL_37;
  }

  v14 = [v6 bundleIdentifier];
  if ([v14 isEqualToString:@"com.apple.TelephonyUtilities"])
  {
    goto LABEL_27;
  }

  v15 = [v6 bundleIdentifier];
  if ([v15 isEqualToString:@"com.apple.facetime"])
  {
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v16 = [v6 bundleIdentifier];
  if ([v16 isEqualToString:@"com.apple.mediaserverd"])
  {

    goto LABEL_26;
  }

  v27 = [v6 bundleIdentifier];
  v28 = [v27 isEqualToString:@"com.apple.avconferenced"];

  if ((v28 & 1) == 0)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "[AudioEffectsManager updateCurrentApplicationWithContext:]";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2112;
      *&buf[20] = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Did not have valid mic data, %@", buf, 0x1Cu);
    }

    self->_audioEffectsEnabled = 0;
    self->_currentBypassMode = 1;
    v29 = self->_displayName;
    self->_displayName = 0;

    v30 = self->_bundleIdentifier;
    self->_bundleIdentifier = 0;

    goto LABEL_29;
  }

LABEL_28:
  v17 = [v6 displayName];
  v18 = self->_displayName;
  self->_displayName = v17;

  v19 = self->_bundleIdentifier;
  self->_bundleIdentifier = @"com.apple.facetime";

LABEL_29:
  v5 = 0;
LABEL_37:
  v21 = self->_bundleIdentifier;
  if (v21)
  {
    v22 = v21;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v23 = off_35218;
    v34 = off_35218;
    if (!off_35218)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_A2B0;
      *&buf[24] = &unk_2CBD8;
      v36 = &v31;
      v24 = sub_A0C0();
      v25 = dlsym(v24, "AVControlCenterMicrophoneModuleMicrophoneModesShouldBeShownForBundleID");
      *(v36[1] + 24) = v25;
      off_35218 = *(v36[1] + 24);
      v23 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (!v23)
    {
      sub_1EFEC();
      __break(1u);
    }

    v26 = v23(v22);
  }

  else
  {
    v26 = 0;
  }

  self->_includeMicModesModule = v26;
}

- (BOOL)updateMicMode:(int64_t)a3
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    currentMicMode = self->_currentMicMode;
    *buf = 136446978;
    v17 = "[AudioEffectsManager updateMicMode:]";
    v18 = 1024;
    v19 = 216;
    v20 = 2048;
    v21 = currentMicMode;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d currentMode=%ld, newMode=%ld", buf, 0x26u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_supportedModes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v11 + 1) + 8 * v9) longValue] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    if (!self->_bundleIdentifier)
    {
      return 0;
    }

    [(AudioEffectsManager *)self updateAutomaticMicMode:0];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v17 = "[AudioEffectsManager updateMicMode:]";
      v18 = 1024;
      v19 = 231;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting micMode=%ld", buf, 0x1Cu);
    }

    AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID();
    return 1;
  }

  else
  {
LABEL_12:

    return 0;
  }
}

- (BOOL)updateAutomaticMicMode:(BOOL)a3
{
  v3 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    automaticMicModeEnabled = self->_automaticMicModeEnabled;
    v7 = 136446978;
    v8 = "[AudioEffectsManager updateAutomaticMicMode:]";
    v9 = 1024;
    v10 = 243;
    v11 = 1024;
    v12 = automaticMicModeEnabled;
    v13 = 1024;
    v14 = v3;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d automaticMicModeEnabled=%d, newValue=%d", &v7, 0x1Eu);
  }

  if (self->_automaticMicModeEnabled == v3 || !self->_bundleIdentifier)
  {
    return 0;
  }

  AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID();
  return 1;
}

- (id)getUnavailableString
{
  if (self->_bundleIdentifier)
  {
    v2 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
    v3 = [NSNumber numberWithInt:0];
    if (([v2 containsObject:v3] & 1) == 0)
    {
      v4 = [NSNumber numberWithInt:2];
      if (![v2 containsObject:v4])
      {
        v11 = [NSNumber numberWithInt:1];
        v12 = [v2 containsObject:v11];

        if (v12)
        {
          v9 = @"CONTROL_CENTER_STANDARD_VOICE_ISO_UNSUPPORTED";
          goto LABEL_50;
        }

LABEL_6:
        v5 = [NSNumber numberWithInt:0];
        if (([v2 containsObject:v5] & 1) == 0)
        {
          v6 = [NSNumber numberWithInt:2];
          if ([v2 containsObject:v6])
          {
            v7 = [NSNumber numberWithInt:1];
            v8 = [v2 containsObject:v7];

            if ((v8 & 1) == 0)
            {
              v9 = @"CONTROL_CENTER_STANDARD_MUSIC_UNSUPPORTED";
LABEL_50:
              v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v9];
              goto LABEL_51;
            }

LABEL_19:
            v13 = [NSNumber numberWithInt:0];
            if ([v2 containsObject:v13])
            {
              v14 = [NSNumber numberWithInt:2];
              if (![v2 containsObject:v14])
              {
                v19 = [NSNumber numberWithInt:1];
                v20 = [v2 containsObject:v19];

                if ((v20 & 1) == 0)
                {
                  v9 = @"CONTROL_CENTER_VOICE_ISO_MUSIC_UNSUPPORTED";
                  goto LABEL_50;
                }

LABEL_23:
                v15 = [NSNumber numberWithInt:0];
                if (([v2 containsObject:v15] & 1) == 0)
                {
                  v16 = [NSNumber numberWithInt:2];
                  if ([v2 containsObject:v16])
                  {
                    v17 = [NSNumber numberWithInt:1];
                    v18 = [v2 containsObject:v17];

                    if (v18)
                    {
                      v9 = @"CONTROL_CENTER_STANDARD_UNSUPPORTED";
                      goto LABEL_50;
                    }

LABEL_31:
                    v21 = [NSNumber numberWithInt:0];
                    if ([v2 containsObject:v21])
                    {
                      v22 = [NSNumber numberWithInt:2];
                      if (![v2 containsObject:v22])
                      {
                        v27 = [NSNumber numberWithInt:1];
                        v28 = [v2 containsObject:v27];

                        if (v28)
                        {
                          v9 = @"CONTROL_CENTER_VOICE_ISO_UNSUPPORTED";
                          goto LABEL_50;
                        }

LABEL_35:
                        v23 = [NSNumber numberWithInt:0];
                        if ([v2 containsObject:v23])
                        {
                          v24 = [NSNumber numberWithInt:2];
                          if ([v2 containsObject:v24])
                          {
                            v25 = [NSNumber numberWithInt:1];
                            v26 = [v2 containsObject:v25];

                            if ((v26 & 1) == 0)
                            {
                              v9 = @"CONTROL_CENTER_MUSIC_UNSUPPORTED";
                              goto LABEL_50;
                            }

LABEL_43:
                            v29 = [NSNumber numberWithInt:0];
                            if (![v2 containsObject:v29])
                            {
                              v30 = [NSNumber numberWithInt:2];
                              if (![v2 containsObject:v30])
                              {
                                v31 = [NSNumber numberWithInt:1];
                                v32 = [v2 containsObject:v31];

                                if ((v32 & 1) == 0)
                                {
                                  v9 = @"CONTROL_CENTER_NO_MODES_SUPPORTED";
                                  goto LABEL_50;
                                }

LABEL_47:
                                v10 = 0;
LABEL_51:

                                goto LABEL_52;
                              }
                            }

                            goto LABEL_47;
                          }
                        }

                        goto LABEL_43;
                      }
                    }

                    goto LABEL_35;
                  }
                }

                goto LABEL_31;
              }
            }

            goto LABEL_23;
          }
        }

        goto LABEL_19;
      }
    }

    goto LABEL_6;
  }

  if (__RPLogLevel > 2u)
  {
    v10 = 0;
    goto LABEL_55;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1F398();
  }

  v10 = 0;
LABEL_52:
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136446722;
    v35 = "[AudioEffectsManager getUnavailableString]";
    v36 = 1024;
    v37 = 289;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d unavailableString=%@", &v34, 0x1Cu);
  }

LABEL_55:

  return v10;
}

@end