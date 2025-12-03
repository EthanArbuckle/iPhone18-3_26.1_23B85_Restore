@interface RPCCAudioSettingsModuleViewController
- (BOOL)isSupportedMicMode:(int64_t)mode;
- (id)_audioIndicatorImage;
- (id)_audioOffIndicatorImage;
- (id)_imageSymbolConfiguration;
- (id)_unexpandedSubtitleFont;
- (id)_unexpandedTitleFont;
- (id)leadingImageForMenuItem:(id)item;
- (id)menuImageWithImage:(id)image size:(CGSize)size;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)disableAutoMicMode;
- (void)handleAVControlCenterNotification:(id)notification;
- (void)layoutVideoConferenceSubviews;
- (void)loadMenuImages;
- (void)setCurrentSelectedMode:(int64_t)mode;
- (void)setModeForBypass;
- (void)setupAudioFunctionItems;
- (void)setupInitialSelectedMicMode;
- (void)setupInitialStateAndNotifications;
- (void)setupMicModeColorTint;
- (void)setupMicModeInitialState;
- (void)setupMicModeNotifications;
- (void)setupModuleImageView;
- (void)setupTitleLabelViews;
- (void)updateAudioImageViewWithMicOn:(BOOL)on;
- (void)updateModuleImageView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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
  _audioIndicatorImage = [(RPCCAudioSettingsModuleViewController *)self _audioIndicatorImage];
  audioImage = self->_audioImage;
  self->_audioImage = _audioIndicatorImage;

  v10 = [[UIImageView alloc] initWithImage:self->_audioImage];
  audioImageView = self->_audioImageView;
  self->_audioImageView = v10;

  [(UIImageView *)self->_audioImageView setAlpha:0.0];
  _audioOffIndicatorImage = [(RPCCAudioSettingsModuleViewController *)self _audioOffIndicatorImage];
  audioOffImage = self->_audioOffImage;
  self->_audioOffImage = _audioOffIndicatorImage;

  v14 = [[UIImageView alloc] initWithImage:self->_audioOffImage];
  audioOffImageView = self->_audioOffImageView;
  self->_audioOffImageView = v14;

  [(UIImageView *)self->_audioOffImageView setAlpha:0.0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RPCCAudioSettingsModuleViewController;
  [(RPCCAudioSettingsModuleViewController *)&v5 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v26.receiver = self;
  v26.super_class = RPCCAudioSettingsModuleViewController;
  [(RPCCAudioSettingsModuleViewController *)&v26 viewWillAppear:appear];
  sensorActivityDataEligibleForInactiveMicModeSelection = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataForActiveSensorType:1];
  v5 = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataForActiveSensorType:0];
  if (sensorActivityDataEligibleForInactiveMicModeSelection)
  {
    goto LABEL_2;
  }

  if (objc_opt_respondsToSelector())
  {
    sensorActivityDataEligibleForInactiveMicModeSelection = [(CCUIContentModuleContext *)self->_contentModuleContext sensorActivityDataEligibleForInactiveMicModeSelection];
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v28 = "[RPCCAudioSettingsModuleViewController viewWillAppear:]";
      v29 = 1024;
      v30 = 208;
      v31 = 2112;
      v32 = sensorActivityDataEligibleForInactiveMicModeSelection;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d replacing applicationMicData with %@", buf, 0x1Cu);
    }

    if (sensorActivityDataEligibleForInactiveMicModeSelection)
    {
LABEL_2:
      displayName = [sensorActivityDataEligibleForInactiveMicModeSelection displayName];
      applicationDisplayName = self->_applicationDisplayName;
      self->_applicationDisplayName = displayName;

      bundleIdentifier = [sensorActivityDataEligibleForInactiveMicModeSelection bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:@"com.apple.TelephonyUtilities"];
      if (v9)
      {
        v10 = v5;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        bundleIdentifier4 = @"com.apple.facetime";
      }

      else
      {
        [sensorActivityDataEligibleForInactiveMicModeSelection bundleIdentifier];
        v25 = bundleIdentifier4 = @"com.apple.facetime";
        v10 = v5;
        if ([v25 isEqualToString:@"com.apple.facetime"])
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
        }

        else
        {
          bundleIdentifier2 = [sensorActivityDataEligibleForInactiveMicModeSelection bundleIdentifier];
          if ([bundleIdentifier2 isEqualToString:@"com.apple.mediaserverd"])
          {
            v12 = 0;
            v13 = 0;
            v11 = 1;
          }

          else
          {
            bundleIdentifier3 = [sensorActivityDataEligibleForInactiveMicModeSelection bundleIdentifier];
            if ([bundleIdentifier3 isEqualToString:@"com.apple.avconferenced"])
            {
              v13 = 0;
              v11 = 1;
              v12 = 1;
            }

            else
            {
              bundleIdentifier4 = [sensorActivityDataEligibleForInactiveMicModeSelection bundleIdentifier];
              v11 = 1;
              v12 = 1;
              v13 = 1;
            }
          }
        }
      }

      objc_storeStrong(&self->_applicationBundleID, bundleIdentifier4);
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

          -[RPCCAudioSettingsModuleViewController updateAudioImageViewWithMicOn:](self, "updateAudioImageViewWithMicOn:", [sensorActivityDataEligibleForInactiveMicModeSelection usedRecently] ^ 1);
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

  bundleIdentifier5 = [v5 bundleIdentifier];
  if ([bundleIdentifier5 isEqualToString:@"com.apple.TelephonyUtilities"])
  {
LABEL_14:

LABEL_15:
    displayName2 = [v5 displayName];
    v19 = self->_applicationDisplayName;
    self->_applicationDisplayName = displayName2;

    applicationBundleID = self->_applicationBundleID;
    self->_applicationBundleID = @"com.apple.facetime";

    [(RPCCAudioSettingsModuleViewController *)self updateAudioImageViewWithMicOn:0];
    [(RPCCAudioSettingsModuleViewController *)self setupInitialStateAndNotifications];
    sensorActivityDataEligibleForInactiveMicModeSelection = 0;
    goto LABEL_27;
  }

  bundleIdentifier6 = [v5 bundleIdentifier];
  if ([bundleIdentifier6 isEqualToString:@"com.apple.facetime"])
  {
LABEL_13:

    goto LABEL_14;
  }

  bundleIdentifier7 = [v5 bundleIdentifier];
  if ([bundleIdentifier7 isEqualToString:@"com.apple.mediaserverd"])
  {

    goto LABEL_13;
  }

  bundleIdentifier8 = [v5 bundleIdentifier];
  v22 = [bundleIdentifier8 isEqualToString:@"com.apple.avconferenced"];

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

  sensorActivityDataEligibleForInactiveMicModeSelection = 0;
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

- (void)updateAudioImageViewWithMicOn:(BOOL)on
{
  if (on)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  audioImageView = self->_audioImageView;
  if (on)
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
  view = [(RPCCAudioSettingsModuleViewController *)self view];
  v4 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [view semanticContentAttribute]);

  view2 = [(RPCCAudioSettingsModuleViewController *)self view];
  [view2 frame];
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

  view3 = [(RPCCAudioSettingsModuleViewController *)self view];
  [view3 frame];
  v14 = CGRectGetMidY(v20) + -13.0;

  [(UIImageView *)self->_audioImageView setFrame:v12, v14, 22.0, 26.0];
  v15 = [(UIImage *)self->_audioImage imageWithRenderingMode:2];
  [(UIImageView *)self->_audioImageView setImage:v15];

  buttonView = [(RPCCAudioSettingsModuleViewController *)self buttonView];
  [buttonView addSubview:self->_audioImageView];

  [(UIImageView *)self->_audioOffImageView setFrame:v12, v14, 22.0, 26.0];
  v17 = [(UIImage *)self->_audioOffImage imageWithRenderingMode:2];
  [(UIImageView *)self->_audioOffImageView setImage:v17];

  buttonView2 = [(RPCCAudioSettingsModuleViewController *)self buttonView];
  [buttonView2 addSubview:self->_audioOffImageView];
}

- (void)handleAVControlCenterNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:AVControlCenterModulesNotificationBundleIdentifierKey];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5B68;
  block[3] = &unk_2CC00;
  v10 = v6;
  selfCopy = self;
  v12 = notificationCopy;
  v7 = notificationCopy;
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

- (void)setCurrentSelectedMode:(int64_t)mode
{
  if (mode <= 2)
  {
    v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:*(&off_2CCD0 + mode)];
    [(UILabel *)self->_unexpandedSubtitleLabel setText:v5];
  }

  self->_currentMicMode = mode;
  if ([(RPCCAudioSettingsModuleViewController *)self isExpanded])
  {

    [(RPCCAudioSettingsModuleViewController *)self setupAudioFunctionItems];
  }
}

- (BOOL)isSupportedMicMode:(int64_t)mode
{
  applicationBundleID = self->_applicationBundleID;
  if (applicationBundleID)
  {
    v5 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();
    v6 = [NSNumber numberWithInteger:mode];
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

- (id)menuImageWithImage:(id)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v7 = +[UIColor whiteColor];
  v8 = [imageCopy _flatImageWithColor:v7];

  v12.width = width;
  v12.height = height;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [v8 drawInRect:{0.0, 0.0, width, height}];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (id)leadingImageForMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];
  v6 = [identifier isEqualToString:@"defaultAudioAction"];

  if (v6)
  {
    v7 = &OBJC_IVAR___RPCCAudioSettingsModuleViewController__standardImage;
  }

  else
  {
    identifier2 = [itemCopy identifier];
    v9 = [identifier2 isEqualToString:@"voiceIsoAudioAction"];

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

  view = [(RPCCAudioSettingsModuleViewController *)self view];
  [view addSubview:self->_unexpandedTitleLabel];

  [(UILabel *)self->_unexpandedTitleLabel setNumberOfLines:1];
  [(UILabel *)self->_unexpandedTitleLabel setLineBreakMode:4];
  v10 = [UIVisualEffectView alloc];
  v11 = +[UIVibrancyEffect controlCenterPrimaryVibrancyEffect];
  v12 = [v10 initWithEffect:v11];
  subtitleEffectView = self->_subtitleEffectView;
  self->_subtitleEffectView = v12;

  [(UIVisualEffectView *)self->_subtitleEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = self->_subtitleEffectView;
  view2 = [(RPCCAudioSettingsModuleViewController *)self view];
  [view2 frame];
  [(UIVisualEffectView *)v14 setFrame:?];

  view3 = [(RPCCAudioSettingsModuleViewController *)self view];
  [view3 addSubview:self->_subtitleEffectView];

  [(UIVisualEffectView *)self->_subtitleEffectView setUserInteractionEnabled:0];
  v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  unexpandedSubtitleLabel = self->_unexpandedSubtitleLabel;
  self->_unexpandedSubtitleLabel = v17;

  contentView = [(UIVisualEffectView *)self->_subtitleEffectView contentView];
  [contentView addSubview:self->_unexpandedSubtitleLabel];

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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v15.receiver = self;
  v15.super_class = RPCCAudioSettingsModuleViewController;
  coordinatorCopy = coordinator;
  [(RPCCAudioSettingsModuleViewController *)&v15 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
    view = [(RPCCAudioSettingsModuleViewController *)self view];
    [view addSubview:self->_unexpandedTitleLabel];

    view2 = [(RPCCAudioSettingsModuleViewController *)self view];
    [view2 addSubview:self->_subtitleEffectView];

    contentView = [(UIVisualEffectView *)self->_subtitleEffectView contentView];
    [contentView addSubview:self->_unexpandedSubtitleLabel];

    v10 = 0;
  }

  [(RPCCAudioSettingsModuleViewController *)self setGlyphImage:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_6F94;
  v14[3] = &unk_2CC78;
  v14[4] = self;
  [coordinatorCopy animateAlongsideTransition:v14 completion:0];
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
    _unexpandedTitleFont = [(RPCCAudioSettingsModuleViewController *)self _unexpandedTitleFont];
    [(UILabel *)self->_unexpandedTitleLabel setAlpha:1.0];
    [(UILabel *)self->_unexpandedTitleLabel setFont:_unexpandedTitleFont];
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

    _unexpandedSubtitleFont = [(RPCCAudioSettingsModuleViewController *)self _unexpandedSubtitleFont];
    [(UILabel *)self->_unexpandedSubtitleLabel setFont:_unexpandedSubtitleFont];
    view = [(RPCCAudioSettingsModuleViewController *)self view];
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    traitCollection = [(RPCCAudioSettingsModuleViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraExtraLarge) == NSOrderedAscending)
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
    view2 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([view2 _shouldReverseLayoutDirection])
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

    view3 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([view3 _shouldReverseLayoutDirection])
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
    view4 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([view4 _shouldReverseLayoutDirection])
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
    view5 = [(RPCCAudioSettingsModuleViewController *)self view];
    if ([view5 _shouldReverseLayoutDirection])
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
  traitCollection = [(RPCCAudioSettingsModuleViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v4 = UIContentSizeCategoryAccessibilityMedium;

    preferredContentSizeCategory = v4;
  }

  v5 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleLargeTitle];
  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleLargeTitle];
  v13 = UIFontWeightTrait;
  v7 = [NSNumber numberWithDouble:UIFontWeightBlack];
  v14 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v6 fontDescriptorByAddingAttributes:v8];

  v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  [v5 scaledValueForValue:v10 compatibleWithTraitCollection:14.0];
  v11 = [UIFont fontWithDescriptor:v9 size:?];

  return v11;
}

- (id)_unexpandedSubtitleFont
{
  traitCollection = [(RPCCAudioSettingsModuleViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v4 = UIContentSizeCategoryAccessibilityMedium;

    preferredContentSizeCategory = v4;
  }

  v5 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleSubheadline];
  v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v13 = UIFontWeightTrait;
  v7 = [NSNumber numberWithDouble:UIFontWeightBold];
  v14 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v9 = [v6 fontDescriptorByAddingAttributes:v8];

  v10 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  [v5 scaledValueForValue:v10 compatibleWithTraitCollection:13.0];
  v11 = [UIFont fontWithDescriptor:v9 size:?];

  return v11;
}

- (id)_imageSymbolConfiguration
{
  _fontForTitleLabel = [(RPCCAudioSettingsModuleViewController *)self _fontForTitleLabel];
  v3 = [UIImageSymbolConfiguration configurationWithFont:_fontForTitleLabel scale:1];

  return v3;
}

- (id)_audioIndicatorImage
{
  _imageSymbolConfiguration = [(RPCCAudioSettingsModuleViewController *)self _imageSymbolConfiguration];
  v3 = [UIImage systemImageNamed:@"mic.fill" withConfiguration:_imageSymbolConfiguration];

  return v3;
}

- (id)_audioOffIndicatorImage
{
  _imageSymbolConfiguration = [(RPCCAudioSettingsModuleViewController *)self _imageSymbolConfiguration];
  v3 = [UIImage systemImageNamed:@"mic.slash.fill" withConfiguration:_imageSymbolConfiguration];

  return v3;
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  if (!self->_currentBypassMode)
  {
    [(CCUIContentModuleContext *)self->_contentModuleContext requestExpandModule:tapped];
  }
}

@end