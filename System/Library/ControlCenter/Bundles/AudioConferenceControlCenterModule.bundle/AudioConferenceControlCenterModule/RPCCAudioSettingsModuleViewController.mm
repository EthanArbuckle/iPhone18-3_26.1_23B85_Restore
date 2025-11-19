@interface RPCCAudioSettingsModuleViewController
- (BOOL)isSupportedMicMode:(int64_t)a3;
- (id)_audioIndicatorImage;
- (id)_audioOffIndicatorImage;
- (id)_imageSymbolConfiguration;
- (id)_unexpandedSubtitleFont;
- (id)_unexpandedTitleFont;
- (id)leadingImageForMenuItem:(id)a3;
- (id)menuImageWithImage:(id)a3 size:(CGSize)a4;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)disableAutoMicMode;
- (void)handleAVControlCenterNotification:(id)a3;
- (void)layoutVideoConferenceSubviews;
- (void)loadMenuImages;
- (void)setCurrentSelectedMode:(int64_t)a3;
- (void)setModeForBypass;
- (void)setupAudioFunctionItems;
- (void)setupInitialSelectedMicMode;
- (void)setupInitialStateAndNotifications;
- (void)setupMicModeColorTint;
- (void)setupMicModeInitialState;
- (void)setupMicModeNotifications;
- (void)setupModuleImageView;
- (void)setupTitleLabelViews;
- (void)updateAudioImageViewWithMicOn:(BOOL)a3;
- (void)updateModuleImageView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RPCCAudioSettingsModuleViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RPCCAudioSettingsModuleViewController;
  [(RPCCAudioSettingsModuleViewController *)&v8 viewDidLoad];
  [(RPCCAudioSettingsModuleViewController *)self setMinimumMenuItems:3];
  [(RPCCAudioSettingsModuleViewController *)self setVisibleMenuItems:3.0];
  [(RPCCAudioSettingsModuleViewController *)self setIndentation:3];
  [(RPCCAudioSettingsModuleViewController *)self setUseTrailingCheckmarkLayout:1];
  [(RPCCAudioSettingsModuleViewController *)self setupModuleImageView];
  [(RPCCAudioSettingsModuleViewController *)self setupTitleLabelViews];
  [(RPCCAudioSettingsModuleViewController *)self loadMenuImages];
  if (!self->_shouldLoadFromSensor)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cameracapture.volatile"];
    v4 = [v3 stringForKey:@"show-system-ui-app-name"];
    applicationDisplayName = self->_applicationDisplayName;
    self->_applicationDisplayName = v4;

    v6 = [v3 stringForKey:@"show-system-ui-bundle-id"];
    applicationBundleID = self->_applicationBundleID;
    self->_applicationBundleID = v6;

    [(RPCCAudioSettingsModuleViewController *)self updateAudioImageViewWithMicOn:1];
    [(RPCCAudioSettingsModuleViewController *)self setupMicModeInitialState];
    [(RPCCAudioSettingsModuleViewController *)self setupMicModeNotifications];
    [(RPCCAudioSettingsModuleViewController *)self setupMicModeColorTint];
    [(RPCCAudioSettingsModuleViewController *)self setTitle:self->_applicationDisplayName];
    [(RPCCAudioSettingsModuleViewController *)self setupInitialSelectedMicMode];
    [(UILabel *)self->_unexpandedTitleLabel removeFromSuperview];
    [(UILabel *)self->_unexpandedSubtitleLabel removeFromSuperview];
    [(RPCCAudioSettingsModuleViewController *)self setGlyphImage:self->_expandedGlyphImage];
  }
}

- (void)setupModuleImageView
{
  v16 = [UIImage systemImageNamed:@"mic.fill"];
  v3 = [UIImage systemImageNamed:@"mic.slash.fill"];
  v18.width = 29.0;
  v18.height = 35.0;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  [v16 drawInRect:{0.0, 0.0, 29.0, 35.0}];
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  expandedGlyphImage = self->_expandedGlyphImage;
  self->_expandedGlyphImage = v4;

  UIGraphicsEndImageContext();
  v19.width = 29.0;
  v19.height = 35.0;
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  [v3 drawInRect:{0.0, 0.0, 29.0, 35.0}];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  expandedGlyphOffImage = self->_expandedGlyphOffImage;
  self->_expandedGlyphOffImage = v6;

  UIGraphicsEndImageContext();
  v8 = [(RPCCAudioSettingsModuleViewController *)self _audioIndicatorImage];
  audioImage = self->_audioImage;
  self->_audioImage = v8;

  v10 = [[UIImageView alloc] initWithImage:self->_audioImage];
  audioImageView = self->_audioImageView;
  self->_audioImageView = v10;

  [(UIImageView *)self->_audioImageView setAlpha:0.0];
  v12 = [(RPCCAudioSettingsModuleViewController *)self _audioOffIndicatorImage];
  audioOffImage = self->_audioOffImage;
  self->_audioOffImage = v12;

  v14 = [[UIImageView alloc] initWithImage:self->_audioOffImage];
  audioOffImageView = self->_audioOffImageView;
  self->_audioOffImageView = v14;

  [(UIImageView *)self->_audioOffImageView setAlpha:0.0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RPCCAudioSettingsModuleViewController;
  [(RPCCAudioSettingsModuleViewController *)&v5 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v26.receiver = self;
  v26.super_class = RPCCAudioSettingsModuleViewController;
  [(RPCCAudioSettingsModuleViewController *)&v26 viewWillAppear:a3];
  v4 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataForActiveSensorType:1];
  v5 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataForActiveSensorType:0];
  if (v4)
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataEligibleForInactiveMicModeSelection];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v28 = "[RPCCAudioSettingsModuleViewController viewWillAppear:]";
      v29 = 1024;
      v30 = 208;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d replacing applicationMicData with %@", buf, 0x1Cu);
    }

    if (v4)
    {
LABEL_2:
      v6 = [v4 displayName];
      applicationDisplayName = self->_applicationDisplayName;
      self->_applicationDisplayName = v6;

      v8 = [v4 bundleIdentifier];
      v9 = [v8 isEqualToString:@"com.apple.TelephonyUtilities"];
      if (v9)
      {
        v10 = v5;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = @"com.apple.facetime";
      }

      else
      {
        [v4 bundleIdentifier];
        v25 = v14 = @"com.apple.facetime";
        v10 = v5;
        if ([v25 isEqualToString:@"com.apple.facetime"])
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
        }

        else
        {
          v24 = [v4 bundleIdentifier];
          if ([v24 isEqualToString:@"com.apple.mediaserverd"])
          {
            v12 = 0;
            v13 = 0;
            v11 = 1;
          }

          else
          {
            v23 = [v4 bundleIdentifier];
            if ([v23 isEqualToString:@"com.apple.avconferenced"])
            {
              v13 = 0;
              v11 = 1;
              v12 = 1;
            }

            else
            {
              v14 = [v4 bundleIdentifier];
              v11 = 1;
              v12 = 1;
              v13 = 1;
            }
          }
        }
      }

      objc_storeStrong(&self->_applicationBundleID, v14);
      if (v13)
      {

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      else if (!v12)
      {
LABEL_22:
        if (!v11)
        {
LABEL_24:
          if ((v9 & 1) == 0)
          {
          }

          -[RPCCAudioSettingsModuleViewController updateAudioImageViewWithMicOn:](self, "updateAudioImageViewWithMicOn:", [v4 usedRecently] ^ 1);
          [(RPCCAudioSettingsModuleViewController *)self setupInitialStateAndNotifications];
          v5 = v10;
          goto LABEL_27;
        }

LABEL_23:

        goto LABEL_24;
      }

      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  v15 = [v5 bundleIdentifier];
  if ([v15 isEqualToString:@"com.apple.TelephonyUtilities"])
  {
LABEL_14:

LABEL_15:
    v18 = [v5 displayName];
    v19 = self->_applicationDisplayName;
    self->_applicationDisplayName = v18;

    applicationBundleID = self->_applicationBundleID;
    self->_applicationBundleID = @"com.apple.facetime";

    [(RPCCAudioSettingsModuleViewController *)self updateAudioImageViewWithMicOn:0];
    [(RPCCAudioSettingsModuleViewController *)self setupInitialStateAndNotifications];
    v4 = 0;
    goto LABEL_27;
  }

  v16 = [v5 bundleIdentifier];
  if ([v16 isEqualToString:@"com.apple.facetime"])
  {
LABEL_13:

    goto LABEL_14;
  }

  v17 = [v5 bundleIdentifier];
  if ([v17 isEqualToString:@"com.apple.mediaserverd"])
  {

    goto LABEL_13;
  }

  v21 = [v5 bundleIdentifier];
  v22 = [v21 isEqualToString:@"com.apple.avconferenced"];

  if (v22)
  {
    goto LABEL_15;
  }

  [(RPCCAudioSettingsModuleViewController *)self updateAudioImageViewWithMicOn:0];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "[RPCCAudioSettingsModuleViewController viewWillAppear:]";
    v29 = 1024;
    v30 = 245;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d could not find mic or camera sensor data. bypassMode=YES", buf, 0x12u);
  }

  v4 = 0;
  self->_currentBypassMode = 1;
LABEL_27:
  [(RPCCAudioSettingsModuleViewController *)self setupMicModeColorTint];
  [(RPCCAudioSettingsModuleViewController *)self setTitle:self->_applicationDisplayName];
  [(RPCCAudioSettingsModuleViewController *)self setupInitialSelectedMicMode];
}

- (void)setupInitialStateAndNotifications
{
  if (self->_applicationBundleID)
  {
    [(RPCCAudioSettingsModuleViewController *)self setupMicModeInitialState];

    [(RPCCAudioSettingsModuleViewController *)self setupMicModeNotifications];
  }
}

- (void)setupInitialSelectedMicMode
{
  if (self->_currentBypassMode)
  {
    [(RPCCAudioSettingsModuleViewController *)self setModeForBypass];
  }

  else
  {
    [(RPCCAudioSettingsModuleViewController *)self setCurrentSelectedMode:self->_currentMicMode];
  }
}

- (void)setupMicModeColorTint
{
  if (self->_currentBypassMode)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemOrangeColor];
  }
  v3 = ;
  [(UIImageView *)self->_audioImageView setTintColor:v3];

  if (self->_currentBypassMode)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor systemOrangeColor];
  }
  v4 = ;
  [(UIImageView *)self->_audioOffImageView setTintColor:v4];
}

- (void)setupMicModeNotifications
{
  if (!self->_currentBypassMode)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleSupportedMicrophoneModesDidChangeNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleMicrophoneModeDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleVoiceProcessingBypassedDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification;
    [v7 addObserver:self selector:"handleAVControlCenterNotification:" name:AVControlCenterMicrophoneModesModuleActiveMicrophoneModeDidChangeNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"handleAVControlCenterNotification:" name:v8 object:0];
  }
}

- (void)setupMicModeInitialState
{
  if (self->_applicationBundleID)
  {
    self->_currentMicMode = AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID();
    self->_currentBypassMode = AVControlCenterMicrophoneModesModuleIsVoiceProcessingBypassedForBundleID();
    self->_supportedMicModes = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();

    _objc_release_x1();
  }

  else
  {
    NSLog(@"RPCCAudioSettingsModule: Unable to load initial state, no applicable application bundle ID found", a2);
  }
}

- (void)updateAudioImageViewWithMicOn:(BOOL)a3
{
  if (a3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  audioImageView = self->_audioImageView;
  if (a3)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(UIImageView *)audioImageView setAlpha:v4];
  audioOffImageView = self->_audioOffImageView;

  [(UIImageView *)audioOffImageView setAlpha:v6];
}

- (void)updateModuleImageView
{
  v3 = [(RPCCAudioSettingsModuleViewController *)self view];
  v4 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v3 semanticContentAttribute]);

  v5 = [(RPCCAudioSettingsModuleViewController *)self view];
  [v5 frame];
  if (v4 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    MinX = CGRectGetMaxX(*&v6) + -22.0;
    v11 = -12.0;
  }

  else
  {
    MinX = CGRectGetMinX(*&v6);
    v11 = 12.0;
  }

  v12 = MinX + v11;

  v13 = [(RPCCAudioSettingsModuleViewController *)self view];
  [v13 frame];
  v14 = CGRectGetMidY(v20) + -13.0;

  [(UIImageView *)self->_audioImageView setFrame:v12, v14, 22.0, 26.0];
  v15 = [(UIImage *)self->_audioImage imageWithRenderingMode:2];
  [(UIImageView *)self->_audioImageView setImage:v15];

  v16 = [(RPCCAudioSettingsModuleViewController *)self buttonView];
  [v16 addSubview:self->_audioImageView];

  [(UIImageView *)self->_audioOffImageView setFrame:v12, v14, 22.0, 26.0];
  v17 = [(UIImage *)self->_audioOffImage imageWithRenderingMode:2];
  [(UIImageView *)self->_audioOffImageView setImage:v17];

  v18 = [(RPCCAudioSettingsModuleViewController *)self buttonView];
  [v18 addSubview:self->_audioOffImageView];
}

- (void)handleAVControlCenterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVControlCenterModulesNotificationBundleIdentifierKey];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5B68;
  block[3] = &unk_2CC00;
  v10 = v6;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setModeForBypass
{
  if (self->_applicationBundleID)
  {
    AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID();
    self->_currentMicMode = 0;
  }

  v3 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_MICROPHONE_OFF"];
  [(UILabel *)self->_unexpandedSubtitleLabel setText:v3];
}

- (void)setCurrentSelectedMode:(int64_t)a3
{
  if (a3 <= 2)
  {
    v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:*(&off_2CCD0 + a3)];
    [(UILabel *)self->_unexpandedSubtitleLabel setText:v5];
  }

  self->_currentMicMode = a3;
  if ([(RPCCAudioSettingsModuleViewController *)self isExpanded])
  {

    [(RPCCAudioSettingsModuleViewController *)self setupAudioFunctionItems];
  }
}

- (BOOL)isSupportedMicMode:(int64_t)a3
{
  applicationBundleID = self->_applicationBundleID;
  if (applicationBundleID)
  {
    v5 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
    v6 = [NSNumber numberWithInteger:a3];
    v7 = [v5 containsObject:v6];

    LOBYTE(applicationBundleID) = v7;
  }

  return applicationBundleID;
}

- (void)disableAutoMicMode
{
  if (sub_7B90() && sub_7C60())
  {
    v6 = self->_applicationBundleID;
    v3 = sub_7C60();
    if (v3)
    {
      v3(0, v6);
    }

    else
    {
      v4 = sub_1EFEC();
      [(RPCCAudioSettingsModuleViewController *)v4 setupAudioFunctionItems];
    }
  }
}

- (void)setupAudioFunctionItems
{
  objc_initWeak(&location, self);
  v3 = [CCUIMenuModuleItem alloc];
  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_STANDARD_AUDIO"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_64F4;
  v25[3] = &unk_2CC28;
  objc_copyWeak(&v26, &location);
  v25[4] = self;
  v5 = [v3 initWithTitle:v4 identifier:@"defaultAudioAction" handler:v25];

  v6 = [CCUIMenuModuleItem alloc];
  v7 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_VOICE_ISO"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_6620;
  v23[3] = &unk_2CC28;
  objc_copyWeak(&v24, &location);
  v23[4] = self;
  v8 = [v6 initWithTitle:v7 identifier:@"voiceIsoAudioAction" handler:v23];

  v9 = [CCUIMenuModuleItem alloc];
  v10 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_WIDE_SPECTRUM_MODE"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_674C;
  v21[3] = &unk_2CC28;
  objc_copyWeak(&v22, &location);
  v21[4] = self;
  v11 = [v9 initWithTitle:v10 identifier:@"musicModeAudioAction" handler:v21];

  currentMicMode = self->_currentMicMode;
  v13 = v8;
  if (currentMicMode != 2)
  {
    if (currentMicMode == 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
      if (currentMicMode)
      {
        goto LABEL_7;
      }
    }
  }

  [v13 setSelected:1];
LABEL_7:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_6878;
  v17[3] = &unk_2CC50;
  v17[4] = self;
  v14 = v5;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  [UIView performWithoutAnimation:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)loadMenuImages
{
  v11 = [UIImage systemImageNamed:@"mic.fill"];
  v3 = [UIImage systemImageNamed:@"person.wave.2.fill"];
  v4 = [UIImage systemImageNamed:@"waveform.and.mic"];
  v5 = [(RPCCAudioSettingsModuleViewController *)self menuImageWithImage:v11 size:23.0, 29.0];
  standardImage = self->_standardImage;
  self->_standardImage = v5;

  v7 = [(RPCCAudioSettingsModuleViewController *)self menuImageWithImage:v3 size:27.0, 29.0];
  voiceIsoImage = self->_voiceIsoImage;
  self->_voiceIsoImage = v7;

  v9 = [(RPCCAudioSettingsModuleViewController *)self menuImageWithImage:v4 size:32.0, 30.0];
  wideSpectrumImage = self->_wideSpectrumImage;
  self->_wideSpectrumImage = v9;
}

- (id)menuImageWithImage:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = +[UIColor whiteColor];
  v8 = [v6 _flatImageWithColor:v7];

  v12.width = width;
  v12.height = height;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [v8 drawInRect:{0.0, 0.0, width, height}];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (id)leadingImageForMenuItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"defaultAudioAction"];

  if (v6)
  {
    v7 = &OBJC_IVAR___RPCCAudioSettingsModuleViewController__standardImage;
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [v8 isEqualToString:@"voiceIsoAudioAction"];

    v7 = &OBJC_IVAR___RPCCAudioSettingsModuleViewController__wideSpectrumImage;
    if (v9)
    {
      v7 = &OBJC_IVAR___RPCCAudioSettingsModuleViewController__voiceIsoImage;
    }
  }

  v10 = *&self->CCUIMenuModuleViewController_opaque[*v7];
  v11 = v10;

  return v10;
}

- (void)setupTitleLabelViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  unexpandedTitleLabel = self->_unexpandedTitleLabel;
  self->_unexpandedTitleLabel = v7;

  v9 = [(RPCCAudioSettingsModuleViewController *)self view];
  [v9 addSubview:self->_unexpandedTitleLabel];

  [(UILabel *)self->_unexpandedTitleLabel setNumberOfLines:1];
  [(UILabel *)self->_unexpandedTitleLabel setLineBreakMode:4];
  v10 = [UIVisualEffectView alloc];
  v11 = +[UIVibrancyEffect controlCenterPrimaryVibrancyEffect];
  v12 = [v10 initWithEffect:v11];
  subtitleEffectView = self->_subtitleEffectView;
  self->_subtitleEffectView = v12;

  [(UIVisualEffectView *)self->_subtitleEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = self->_subtitleEffectView;
  v15 = [(RPCCAudioSettingsModuleViewController *)self view];
  [v15 frame];
  [(UIVisualEffectView *)v14 setFrame:?];

  v16 = [(RPCCAudioSettingsModuleViewController *)self view];
  [v16 addSubview:self->_subtitleEffectView];

  [(UIVisualEffectView *)self->_subtitleEffectView setUserInteractionEnabled:0];
  v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  unexpandedSubtitleLabel = self->_unexpandedSubtitleLabel;
  self->_unexpandedSubtitleLabel = v17;

  v19 = [(UIVisualEffectView *)self->_subtitleEffectView contentView];
  [v19 addSubview:self->_unexpandedSubtitleLabel];

  [(UILabel *)self->_unexpandedSubtitleLabel setNumberOfLines:1];
  v20 = self->_unexpandedSubtitleLabel;

  [(UILabel *)v20 setLineBreakMode:4];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = RPCCAudioSettingsModuleViewController;
  [(RPCCAudioSettingsModuleViewController *)&v3 viewWillLayoutSubviews];
  [(RPCCAudioSettingsModuleViewController *)self updateModuleImageView];
  [(RPCCAudioSettingsModuleViewController *)self layoutVideoConferenceSubviews];
  if (!self->_shouldLoadFromSensor)
  {
    [(RPCCAudioSettingsModuleViewController *)self setupAudioFunctionItems];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = RPCCAudioSettingsModuleViewController;
  v7 = a4;
  [(RPCCAudioSettingsModuleViewController *)&v15 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(RPCCAudioSettingsModuleViewController *)self isExpanded])
  {
    [(UILabel *)self->_unexpandedTitleLabel removeFromSuperview];
    [(UILabel *)self->_unexpandedSubtitleLabel removeFromSuperview];
    [(UIVisualEffectView *)self->_subtitleEffectView removeFromSuperview];
    [(UIImageView *)self->_audioImageView alpha];
    v8 = &OBJC_IVAR___RPCCAudioSettingsModuleViewController__expandedGlyphImage;
    if (v9 == 0.0)
    {
      v8 = &OBJC_IVAR___RPCCAudioSettingsModuleViewController__expandedGlyphOffImage;
    }

    v10 = *&self->CCUIMenuModuleViewController_opaque[*v8];
  }

  else
  {
    [(RPCCAudioSettingsModuleViewController *)self updateModuleImageView];
    v11 = [(RPCCAudioSettingsModuleViewController *)self view];
    [v11 addSubview:self->_unexpandedTitleLabel];

    v12 = [(RPCCAudioSettingsModuleViewController *)self view];
    [v12 addSubview:self->_subtitleEffectView];

    v13 = [(UIVisualEffectView *)self->_subtitleEffectView contentView];
    [v13 addSubview:self->_unexpandedSubtitleLabel];

    v10 = 0;
  }

  [(RPCCAudioSettingsModuleViewController *)self setGlyphImage:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_6F94;
  v14[3] = &unk_2CC78;
  v14[4] = self;
  [v7 animateAlongsideTransition:v14 completion:0];
}

- (void)layoutVideoConferenceSubviews
{
  if (([(RPCCAudioSettingsModuleViewController *)self isExpanded]& 1) != 0)
  {
    [(UIImageView *)self->_audioImageView setHidden:1];
    [(UIImageView *)self->_audioOffImageView setHidden:1];

    [(RPCCAudioSettingsModuleViewController *)self setSelected:0];
  }

  else
  {
    [(RPCCAudioSettingsModuleViewController *)self setSelected:!self->_currentBypassMode];
    if (([(RPCCAudioSettingsModuleViewController *)self isSelected]& 1) != 0)
    {
      +[UIVibrancyEffect controlCenterKeyLineOnLightVibrancyEffect];
    }

    else
    {
      +[UIVibrancyEffect controlCenterSecondaryVibrancyEffect];
    }
    v3 = ;
    [(UIVisualEffectView *)self->_subtitleEffectView setEffect:v3];

    [(UIImageView *)self->_audioImageView setHidden:0];
    [(UIImageView *)self->_audioOffImageView setHidden:0];
    v34 = [(RPCCAudioSettingsModuleViewController *)self _unexpandedTitleFont];
    [(UILabel *)self->_unexpandedTitleLabel setAlpha:1.0];
    [(UILabel *)self->_unexpandedTitleLabel setFont:v34];
    if (self->_currentBypassMode)
    {
      +[UIColor systemWhiteColor];
    }

    else
    {
      +[UIColor systemBlackColor];
    }
    v4 = ;
    [(UILabel *)self->_unexpandedTitleLabel setTextColor:v4];

    v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_AUDIO_MODULE_TITLE"];
    [(UILabel *)self->_unexpandedTitleLabel setText:v5];

    v6 = [(RPCCAudioSettingsModuleViewController *)self _unexpandedSubtitleFont];
    [(UILabel *)self->_unexpandedSubtitleLabel setFont:v6];
    v7 = [(RPCCAudioSettingsModuleViewController *)self view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(RPCCAudioSettingsModuleViewController *)self traitCollection];
    v17 = [v16 preferredContentSizeCategory];

    if (UIContentSizeCategoryCompareToCategory(v17, UIContentSizeCategoryExtraExtraExtraLarge) == NSOrderedAscending)
    {
      v18 = 12.0;
    }

    else
    {
      v18 = 10.0;
    }

    v36.origin.x = v9;
    v19 = v11;
    v36.origin.y = v11;
    v36.size.width = v13;
    v36.size.height = v15;
    v37 = CGRectInset(v36, v18, 0.0);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    CGRectGetWidth(v37);
    v24 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([v24 _shouldReverseLayoutDirection])
    {
      v38.origin.x = v9;
      v38.origin.y = v19;
      v38.size.width = v13;
      v38.size.height = v15;
      CGRectGetWidth(v38);
    }

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGRectGetMinY(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    CGRectGetHeight(v40);

    v25 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([v25 _shouldReverseLayoutDirection])
    {
      v41.size.height = v15;
      v41.origin.x = v9;
      v41.origin.y = v19;
      v41.size.width = v13;
      CGRectGetWidth(v41);
    }

    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    CGRectGetMinY(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    CGRectGetHeight(v43);

    unexpandedTitleLabel = self->_unexpandedTitleLabel;
    UIRectIntegralWithScale();
    [(UILabel *)unexpandedTitleLabel setFrame:?];
    v27 = self->_unexpandedTitleLabel;
    v28 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([v28 _shouldReverseLayoutDirection])
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    [(UILabel *)v27 setTextAlignment:v29, *&v15, *&v9];

    unexpandedSubtitleLabel = self->_unexpandedSubtitleLabel;
    UIRectIntegralWithScale();
    [(UILabel *)unexpandedSubtitleLabel setFrame:?];
    v31 = self->_unexpandedSubtitleLabel;
    v32 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([v32 _shouldReverseLayoutDirection])
    {
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    [(UILabel *)v31 setTextAlignment:v33];
  }
}

- (id)_unexpandedTitleFont
{
  v2 = [(RPCCAudioSettingsModuleViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    v4 = UIContentSizeCategoryAccessibilityMedium;

    v3 = v4;
  }

  v5 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleLargeTitle];
  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v13 = UIFontWeightTrait;
  v7 = [NSNumber numberWithDouble:UIFontWeightBlack];
  v14 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v6 fontDescriptorByAddingAttributes:v8];

  v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v3];
  [v5 scaledValueForValue:v10 compatibleWithTraitCollection:14.0];
  v11 = [UIFont fontWithDescriptor:v9 size:?];

  return v11;
}

- (id)_unexpandedSubtitleFont
{
  v2 = [(RPCCAudioSettingsModuleViewController *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
  {
    v4 = UIContentSizeCategoryAccessibilityMedium;

    v3 = v4;
  }

  v5 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v13 = UIFontWeightTrait;
  v7 = [NSNumber numberWithDouble:UIFontWeightBold];
  v14 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v6 fontDescriptorByAddingAttributes:v8];

  v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:v3];
  [v5 scaledValueForValue:v10 compatibleWithTraitCollection:13.0];
  v11 = [UIFont fontWithDescriptor:v9 size:?];

  return v11;
}

- (id)_imageSymbolConfiguration
{
  v2 = [(RPCCAudioSettingsModuleViewController *)self _fontForTitleLabel];
  v3 = [UIImageSymbolConfiguration configurationWithFont:v2 scale:1];

  return v3;
}

- (id)_audioIndicatorImage
{
  v2 = [(RPCCAudioSettingsModuleViewController *)self _imageSymbolConfiguration];
  v3 = [UIImage systemImageNamed:@"mic.fill" withConfiguration:v2];

  return v3;
}

- (id)_audioOffIndicatorImage
{
  v2 = [(RPCCAudioSettingsModuleViewController *)self _imageSymbolConfiguration];
  v3 = [UIImage systemImageNamed:@"mic.slash.fill" withConfiguration:v2];

  return v3;
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  if (!self->_currentBypassMode)
  {
    [(CCUIContentModuleContext *)self->_contentModuleContext requestExpandModule:a3];
  }
}

@end