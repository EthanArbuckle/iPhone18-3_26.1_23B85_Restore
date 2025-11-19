@interface RPCCAudioSettingsModuleBackgroundViewController
- (BOOL)autoMicModeSupported;
- (CCUIContentModuleContentViewController)contentViewController;
- (double)CCUIMenuModuleViewHeight;
- (double)CCUIMenuModuleViewWidth;
- (void)automaticMicModeButtonTapped:(id)a3;
- (void)handleAVControlCenterNotification:(id)a3;
- (void)setAutomaticMicModeGlyphState:(BOOL)a3;
- (void)setAutomaticMicModeSubtitle:(BOOL)a3;
- (void)setupAutomaticMicModeButton;
- (void)setupMicModeNotifications;
- (void)setupSupportedLabel;
- (void)updateAutoMicModeState;
- (void)updateAutomaticMicModeButtonConstraints;
- (void)updateSupportedLabelConstraints;
- (void)updateSupportedLabelFont;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation RPCCAudioSettingsModuleBackgroundViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = RPCCAudioSettingsModuleBackgroundViewController;
  [(RPCCAudioSettingsModuleBackgroundViewController *)&v14 viewDidLoad];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  supportedLabel = self->_supportedLabel;
  self->_supportedLabel = v3;

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  CCUIAudioModuleBundle = self->_CCUIAudioModuleBundle;
  self->_CCUIAudioModuleBundle = v5;

  if (!self->_shouldLoadFromSensor)
  {
    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cameracapture.volatile"];
    v8 = [v7 stringForKey:@"show-system-ui-bundle-id"];
    applicationBundleID = self->_applicationBundleID;
    self->_applicationBundleID = v8;

    if (self->_applicationBundleID)
    {
      [(RPCCAudioSettingsModuleBackgroundViewController *)self setupSupportedLabel];
      [(RPCCAudioSettingsModuleBackgroundViewController *)self setupMicModeNotifications];
      v10 = +[RPFeatureFlagUtility sharedInstance];
      v11 = [v10 audioDSPAutomaticMicModeEnabled];

      if (v11)
      {
        [(RPCCAudioSettingsModuleBackgroundViewController *)self setupAutomaticMicModeButton];
        [(RPCCAudioSettingsModuleBackgroundViewController *)self updateAutoMicModeState];
      }
    }
  }

  v12 = [CCUICAPackageDescription descriptionForPackageNamed:@"SpatialAudio" inBundle:self->_CCUIAudioModuleBundle];
  packageDescription = self->_packageDescription;
  self->_packageDescription = v12;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataForActiveSensorType:1];
  v6 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataForActiveSensorType:0];
  if (v5)
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataEligibleForInactiveMicModeSelection];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136446722;
      v21 = "[RPCCAudioSettingsModuleBackgroundViewController viewWillAppear:]";
      v22 = 1024;
      v23 = 111;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d replacing applicationMicData with %@", &v20, 0x1Cu);
    }

    if (v5)
    {
LABEL_2:
      v7 = [v5 displayName];
      applicationDisplayName = self->_applicationDisplayName;
      self->_applicationDisplayName = v7;

      applicationBundleID = [v5 bundleIdentifier];
      v10 = [applicationBundleID isEqualToString:@"com.apple.TelephonyUtilities"];
      if (v10)
      {
        v11 = 0;
        v12 = @"com.apple.facetime";
      }

      else
      {
        v3 = [v5 bundleIdentifier];
        v12 = @"com.apple.facetime";
        if ([v3 isEqualToString:@"com.apple.facetime"])
        {
          v11 = 0;
        }

        else
        {
          v12 = [v5 bundleIdentifier];
          v11 = 1;
        }
      }

      objc_storeStrong(&self->_applicationBundleID, v12);
      if (v11)
      {
      }

      if ((v10 & 1) == 0)
      {
      }

      goto LABEL_20;
    }
  }

  v13 = [v6 bundleIdentifier];
  if ([v13 isEqualToString:@"com.apple.TelephonyUtilities"])
  {

LABEL_19:
    v16 = [v6 displayName];
    v17 = self->_applicationDisplayName;
    self->_applicationDisplayName = v16;

    v5 = 0;
    applicationBundleID = self->_applicationBundleID;
    self->_applicationBundleID = @"com.apple.facetime";
LABEL_20:

    goto LABEL_21;
  }

  v14 = [v6 bundleIdentifier];
  v15 = [v14 isEqualToString:@"com.apple.facetime"];

  if (v15)
  {
    goto LABEL_19;
  }

  v5 = 0;
LABEL_21:
  [(RPCCAudioSettingsModuleBackgroundViewController *)self setupSupportedLabel];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self setupMicModeNotifications];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self updateSupportedLabelConstraints];
  v18 = +[RPFeatureFlagUtility sharedInstance];
  v19 = [v18 audioDSPAutomaticMicModeEnabled];

  if (v19)
  {
    [(RPCCAudioSettingsModuleBackgroundViewController *)self setupAutomaticMicModeButton];
    [(RPCCAudioSettingsModuleBackgroundViewController *)self updateAutoMicModeState];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = RPCCAudioSettingsModuleBackgroundViewController;
  [(RPCCAudioSettingsModuleBackgroundViewController *)&v3 viewWillLayoutSubviews];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self updateAutomaticMicModeButtonConstraints];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self updateSupportedLabelConstraints];
}

- (void)setupMicModeNotifications
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446722;
    v10 = "[RPCCAudioSettingsModuleBackgroundViewController setupMicModeNotifications]";
    v11 = 1024;
    v12 = 149;
    v13 = 2112;
    v14 = AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Registering for notification: %@", &v9, 0x1Cu);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification object:0];

  if (sub_C1A4() && sub_C274())
  {
    if (__RPLogLevel <= 1u)
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_C274();
        if (!v5)
        {
          sub_1EFEC();
        }

        v6 = *v5;
        v9 = 136446722;
        v10 = "[RPCCAudioSettingsModuleBackgroundViewController setupMicModeNotifications]";
        v11 = 1024;
        v12 = 155;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Registering for notification: %@", &v9, 0x1Cu);
      }
    }

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification object:0];
  }
}

- (void)handleAVControlCenterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVControlCenterModulesNotificationBundleIdentifierKey];

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[RPCCAudioSettingsModuleBackgroundViewController handleAVControlCenterNotification:]";
    v17 = 1024;
    v18 = 170;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Received Notification: %@", buf, 0x1Cu);
  }

  if (v6 && [v6 isEqualToString:self->_applicationBundleID])
  {
    v7 = [v4 name];
    v8 = [v7 isEqualToString:AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification];

    if (v8)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_AD28;
      v14[3] = &unk_2CD48;
      v14[4] = self;
      v9 = v14;
LABEL_13:
      dispatch_async(&_dispatch_main_q, v9);
      goto LABEL_14;
    }

    v10 = [v4 name];
    if ([v10 isEqualToString:AVControlCenterMicrophoneModesModuleAutoEnabledDidChangeNotification])
    {

LABEL_12:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_AE10;
      v13[3] = &unk_2CD48;
      v13[4] = self;
      v9 = v13;
      goto LABEL_13;
    }

    v11 = [v4 name];
    v12 = [v11 isEqualToString:AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification];

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    NSLog(@"BundleID has changed on the notification vs the application using sensor data. CRITIAL FAILURE");
  }

LABEL_14:
}

- (void)setupSupportedLabel
{
  [(UILabel *)self->_supportedLabel removeFromSuperview];
  if (!self->_applicationBundleID)
  {
    return;
  }

  v3 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
  v4 = [NSNumber numberWithInt:0];
  if ([v3 containsObject:v4])
  {
    goto LABEL_5;
  }

  v5 = [NSNumber numberWithInt:2];
  if ([v3 containsObject:v5])
  {

LABEL_5:
    goto LABEL_6;
  }

  v12 = [NSNumber numberWithInt:1];
  v13 = [v3 containsObject:v12];

  if (v13)
  {
    supportedLabel = self->_supportedLabel;
    v11 = @"CONTROL_CENTER_STANDARD_VOICE_ISO_UNSUPPORTED";
    goto LABEL_45;
  }

LABEL_6:
  v6 = [NSNumber numberWithInt:0];
  if ([v3 containsObject:v6])
  {
LABEL_13:

    goto LABEL_14;
  }

  v7 = [NSNumber numberWithInt:2];
  if (([v3 containsObject:v7] & 1) == 0)
  {

    goto LABEL_13;
  }

  v8 = [NSNumber numberWithInt:1];
  v9 = [v3 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    supportedLabel = self->_supportedLabel;
    v11 = @"CONTROL_CENTER_STANDARD_MUSIC_UNSUPPORTED";
LABEL_45:
    v30 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v11];
    [(UILabel *)supportedLabel setText:v30];
    v32 = 1;
    goto LABEL_46;
  }

LABEL_14:
  v14 = [NSNumber numberWithInt:0];
  if (![v3 containsObject:v14])
  {
LABEL_17:

    goto LABEL_18;
  }

  v15 = [NSNumber numberWithInt:2];
  if ([v3 containsObject:v15])
  {

    goto LABEL_17;
  }

  v20 = [NSNumber numberWithInt:1];
  v21 = [v3 containsObject:v20];

  if ((v21 & 1) == 0)
  {
    supportedLabel = self->_supportedLabel;
    v11 = @"CONTROL_CENTER_VOICE_ISO_MUSIC_UNSUPPORTED";
    goto LABEL_45;
  }

LABEL_18:
  v16 = [NSNumber numberWithInt:0];
  if ([v3 containsObject:v16])
  {
LABEL_25:

    goto LABEL_26;
  }

  v17 = [NSNumber numberWithInt:2];
  if (([v3 containsObject:v17] & 1) == 0)
  {

    goto LABEL_25;
  }

  v18 = [NSNumber numberWithInt:1];
  v19 = [v3 containsObject:v18];

  if (v19)
  {
    supportedLabel = self->_supportedLabel;
    v11 = @"CONTROL_CENTER_STANDARD_UNSUPPORTED";
    goto LABEL_45;
  }

LABEL_26:
  v22 = [NSNumber numberWithInt:0];
  if (![v3 containsObject:v22])
  {
LABEL_29:

    goto LABEL_30;
  }

  v23 = [NSNumber numberWithInt:2];
  if ([v3 containsObject:v23])
  {

    goto LABEL_29;
  }

  v28 = [NSNumber numberWithInt:1];
  v29 = [v3 containsObject:v28];

  if (v29)
  {
    supportedLabel = self->_supportedLabel;
    v11 = @"CONTROL_CENTER_VOICE_ISO_UNSUPPORTED";
    goto LABEL_45;
  }

LABEL_30:
  v24 = [NSNumber numberWithInt:0];
  if (![v3 containsObject:v24])
  {
LABEL_37:

    goto LABEL_38;
  }

  v25 = [NSNumber numberWithInt:2];
  if (([v3 containsObject:v25] & 1) == 0)
  {

    goto LABEL_37;
  }

  v26 = [NSNumber numberWithInt:1];
  v27 = [v3 containsObject:v26];

  if ((v27 & 1) == 0)
  {
    supportedLabel = self->_supportedLabel;
    v11 = @"CONTROL_CENTER_MUSIC_UNSUPPORTED";
    goto LABEL_45;
  }

LABEL_38:
  v30 = [NSNumber numberWithInt:0];
  if (([v3 containsObject:v30] & 1) == 0)
  {
    v31 = [NSNumber numberWithInt:2];
    if (![v3 containsObject:v31])
    {
      v33 = [NSNumber numberWithInt:1];
      v34 = [v3 containsObject:v33];

      if (v34)
      {
        v32 = 0;
        goto LABEL_47;
      }

      supportedLabel = self->_supportedLabel;
      v11 = @"CONTROL_CENTER_NO_MODES_SUPPORTED";
      goto LABEL_45;
    }
  }

  v32 = 0;
LABEL_46:

LABEL_47:
  v35 = self->_supportedLabel;
  v36 = +[UIColor whiteColor];
  [(UILabel *)v35 setTextColor:v36];

  [(UILabel *)self->_supportedLabel setTextAlignment:1];
  [(UILabel *)self->_supportedLabel controlCenterApplyPrimaryContentShadow];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self updateSupportedLabelFont];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self updateSupportedLabelConstraints];

  if (v32)
  {
    v37 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
    [v37 addSubview:self->_supportedLabel];
  }
}

- (void)updateSupportedLabelFont
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == &dword_0 + 1)
  {

LABEL_3:
    v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
    [v4 pointSize];
    v6 = v5;

    v7 = fmin(v6, 22.0);
    goto LABEL_11;
  }

  v8 = +[UIDevice currentDevice];
  if ([v8 userInterfaceIdiom])
  {
  }

  else
  {
    CCUIReferenceScreenBounds();
    Height = CGRectGetHeight(v15);

    if (Height > 667.0)
    {
      goto LABEL_3;
    }
  }

  v7 = 18.0;
  if (CCUIIsPortrait())
  {
    v10 = +[UIDevice currentDevice];
    if ([v10 userInterfaceIdiom])
    {
    }

    else
    {
      CCUIReferenceScreenBounds();
      v11 = CGRectGetHeight(v16);

      if (v11 > 568.0)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_11:
  supportedLabel = self->_supportedLabel;
  v13 = [UIFont systemFontOfSize:v7];
  [(UILabel *)supportedLabel setFont:v13];
}

- (void)updateSupportedLabelConstraints
{
  v3 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (CCUIIsPortrait())
  {
    v12 = 1;
  }

  else
  {
    v13 = +[UIDevice currentDevice];
    v12 = [v13 userInterfaceIdiom] == &dword_0 + 1;
  }

  [(UILabel *)self->_supportedLabel setNumberOfLines:0];
  v14 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
  v41.origin.x = v5;
  v41.origin.y = v7;
  v41.size.width = v9;
  v41.size.height = v11;
  MidY = CGRectGetMidY(v41);
  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  v16 = 0.0;
  [v14 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v42), 1.0}];
  MinX = CGRectGetMinX(v43);

  v44.origin.x = v5;
  v44.origin.y = v7;
  v44.size.width = v9;
  v44.size.height = v11;
  v18 = CGRectGetMinX(v44);
  if (MinX < v18)
  {
    MinX = v18;
  }

  IsValid = CGFloatIsValid();
  if (v12)
  {
    v20 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
    [v20 safeAreaInsets];
    v22 = v21;
    v39 = v21;

    v45.origin.x = v5;
    v45.origin.y = v7;
    v45.size.width = v9;
    v45.size.height = v11;
    Height = CGRectGetHeight(v45);
    [(RPCCAudioSettingsModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v25 = (Height - v24) * 0.5 - v22 + -20.0;
    [(RPCCAudioSettingsModuleBackgroundViewController *)self CCUIMenuModuleViewWidth];
    v27 = v26;
    v46.origin.x = v5;
    v46.origin.y = v7;
    v46.size.width = v9;
    v46.size.height = v11;
    v28 = CGRectGetWidth(v46) * 0.5;
    [(UILabel *)self->_supportedLabel frame];
    v30 = v28 - v29 * 0.5;
    v31 = v39 + v25 * 0.5 + 10.0;
    [(UILabel *)self->_supportedLabel frame];
    v33 = v32;
  }

  else
  {
    if (IsValid)
    {
      v16 = MinX;
    }

    [(RPCCAudioSettingsModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v47.origin.x = v5;
    v47.origin.y = v7;
    v47.size.width = v9;
    v47.size.height = v11;
    Width = CGRectGetWidth(v47);
    [(RPCCAudioSettingsModuleBackgroundViewController *)self CCUIMenuModuleViewWidth];
    v27 = (Width - v35) * 0.5 - v16 + -20.0;
    v36 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
    [v36 frame];
    v30 = v16 + CGRectGetMinX(v48) + 10.0;
    v49.origin.x = v5;
    v49.origin.y = v7;
    v49.size.width = v9;
    v49.size.height = v11;
    v31 = CGRectGetHeight(v49) * 0.5;
    [(UILabel *)self->_supportedLabel frame];
    v33 = v37;
  }

  [(UILabel *)self->_supportedLabel setFrame:v30, v31, v27, v33];
  [(UILabel *)self->_supportedLabel setClipsToBounds:0];
  supportedLabel = self->_supportedLabel;

  [(UILabel *)supportedLabel sizeToFit];
}

- (void)setupAutomaticMicModeButton
{
  if (self->_applicationBundleID && !self->_automaticMicModeButton && [(RPCCAudioSettingsModuleBackgroundViewController *)self autoMicModeSupported])
  {
    v14 = [UIImage systemImageNamed:@"mic"];
    v3 = [CCUILabeledRoundButtonViewController alloc];
    v4 = +[UIColor systemBlueColor];
    v5 = [v3 initWithGlyphImage:v14 highlightColor:v4];
    automaticMicModeButton = self->_automaticMicModeButton;
    self->_automaticMicModeButton = v5;

    v7 = [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton button];
    [v7 setEnabled:1];

    [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setTitle:@"Automatic Mic Mode"];
    v8 = self->_automaticMicModeButton;
    v9 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_MICROPHONE_OFF"];
    [(CCUILabeledRoundButtonViewController *)v8 setSubtitle:v9];

    [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setLabelsVisible:1];
    [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setGlyphState:@"Base State"];
    v10 = [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton button];
    [v10 setUserInteractionEnabled:1];

    v11 = [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton button];
    [v11 addTarget:self action:"automaticMicModeButtonTapped:" forControlEvents:64];

    v12 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
    v13 = [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton view];
    [v12 addSubview:v13];
  }
}

- (BOOL)autoMicModeSupported
{
  if (!sub_C1A4())
  {
    return 0;
  }

  if (!sub_C480())
  {
    return 0;
  }

  applicationBundleID = self->_applicationBundleID;
  if (!applicationBundleID)
  {
    return 0;
  }

  v4 = applicationBundleID;
  v5 = sub_C480();
  if (v5)
  {
    v6 = v5(v4);

    return v6;
  }

  else
  {
    v8 = sub_1EFEC();
    [(RPCCAudioSettingsModuleBackgroundViewController *)v8 updateAutoMicModeState];
  }

  return result;
}

- (void)updateAutoMicModeState
{
  v3 = [(RPCCAudioSettingsModuleBackgroundViewController *)self autoMicModeSupported];
  if (v3)
  {
    if (sub_C1A4())
    {
      if (sub_C5BC())
      {
        applicationBundleID = self->_applicationBundleID;
        if (applicationBundleID)
        {
          v5 = applicationBundleID;
          v6 = sub_C5BC();
          if (!v6)
          {
            v9 = sub_1EFEC();
            [(RPCCAudioSettingsModuleBackgroundViewController *)v9 updateAutomaticMicModeButtonConstraints];
            return;
          }

          v7 = v6(v5);

          [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setEnabled:v7];
          [(RPCCAudioSettingsModuleBackgroundViewController *)self setAutomaticMicModeSubtitle:[(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton isEnabled]];
        }
      }
    }
  }

  automaticMicModeButton = self->_automaticMicModeButton;

  [(CCUILabeledRoundButtonViewController *)automaticMicModeButton setInoperative:v3 ^ 1];
}

- (void)updateAutomaticMicModeButtonConstraints
{
  automaticMicModeButton = self->_automaticMicModeButton;
  if (automaticMicModeButton)
  {
    v14 = [(CCUILabeledRoundButtonViewController *)automaticMicModeButton view];
    [v14 sizeToFit];
    v4 = [(RPCCAudioSettingsModuleBackgroundViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v14 frame];
    [v14 setFrame:?];
    v13 = +[UIDevice currentDevice];
    [v13 userInterfaceIdiom];

    v16.origin.x = v6;
    v16.origin.y = v8;
    v16.size.width = v10;
    v16.size.height = v12;
    CGRectGetWidth(v16);
    v17.origin.x = v6;
    v17.origin.y = v8;
    v17.size.width = v10;
    v17.size.height = v12;
    CGRectGetHeight(v17);
    UIPointRoundToViewScale();
    [v14 setCenter:?];
  }
}

- (void)automaticMicModeButtonTapped:(id)a3
{
  v4 = a3;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPCCAudioSettingsModuleBackgroundViewController automaticMicModeButtonTapped:]";
    v11 = 1024;
    v12 = 376;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v9, 0x12u);
  }

  [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setEnabled:[(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton isEnabled]^ 1];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self setAutomaticMicModeSubtitle:[(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton isEnabled]];
  [(RPCCAudioSettingsModuleBackgroundViewController *)self setAutomaticMicModeGlyphState:[(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton isEnabled]];
  if (sub_C1A4() && sub_C6F8())
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton isEnabled];
      v9 = 136446722;
      v10 = "[RPCCAudioSettingsModuleBackgroundViewController automaticMicModeButtonTapped:]";
      v11 = 1024;
      v12 = 387;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %d", &v9, 0x18u);
    }

    v6 = [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton isEnabled];
    v7 = self->_applicationBundleID;
    v8 = sub_C6F8();
    if (!v8)
    {
      sub_1EFEC();
    }

    v8(v6, v7);
  }
}

- (void)setAutomaticMicModeSubtitle:(BOOL)a3
{
  if (a3)
  {
    v4 = @"CONTROL_CENTER_MICROPHONE_ON";
  }

  else
  {
    v4 = @"CONTROL_CENTER_MICROPHONE_OFF";
  }

  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v4];
  [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setSubtitle:v5];
}

- (void)setAutomaticMicModeGlyphState:(BOOL)a3
{
  if (a3)
  {
    v3 = @"animating";
  }

  else
  {
    v3 = @"Base State";
  }

  [(CCUILabeledRoundButtonViewController *)self->_automaticMicModeButton setGlyphState:v3];
}

- (double)CCUIMenuModuleViewHeight
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  [WeakRetained preferredExpandedContentHeight];
  v4 = v3;

  return v4;
}

- (double)CCUIMenuModuleViewWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);
  [WeakRetained preferredExpandedContentWidth];
  v4 = v3;

  return v4;
}

- (CCUIContentModuleContentViewController)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);

  return WeakRetained;
}

@end