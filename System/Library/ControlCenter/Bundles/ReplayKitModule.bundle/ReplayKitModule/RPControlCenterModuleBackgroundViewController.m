@interface RPControlCenterModuleBackgroundViewController
- (BOOL)_isIPhoneLandscape;
- (CCUIContentModuleContentViewController)contentViewController;
- (RPControlCenterModuleBackgroundViewController)initWithClient:(id)a3;
- (double)CCUIMenuModuleViewHeight;
- (double)CCUIMenuModuleViewWidth;
- (double)_determineButtonWidth;
- (id)_determineButtonCategorySizeThreshold;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didStartRecordingOrBroadcast;
- (void)didStopRecordingOrBroadcast;
- (void)didUpdateClientStateWithAvailableExtensions:(id)a3 completionHandler:(id)a4;
- (void)hqlrButtonPressed:(id)a3;
- (void)micButtonPressed:(id)a3;
- (void)sessionDidFailToStart;
- (void)sessionIsStarting;
- (void)setAvailableExtensions:(id)a3;
- (void)setHQLRButtonSubtitle:(BOOL)a3;
- (void)setMicButtonSubtitle:(BOOL)a3;
- (void)setupDisclaimerLabel;
- (void)setupHQLRButton;
- (void)setupMicrophoneButton;
- (void)updateDisclaimerLabelConstraints;
- (void)updateDisclaimerLabelFont;
- (void)updateHQLRButtonConstraints;
- (void)updateHQLRState;
- (void)updateMicrophoneButtonConstraints;
- (void)updateMicrophoneState;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation RPControlCenterModuleBackgroundViewController

- (RPControlCenterModuleBackgroundViewController)initWithClient:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = RPControlCenterModuleBackgroundViewController;
  v5 = [(RPControlCenterModuleBackgroundViewController *)&v28 init];
  if (v5)
  {
    if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v30 = "[RPControlCenterModuleBackgroundViewController initWithClient:]";
      v31 = 1024;
      v32 = 57;
      v33 = 2048;
      v34 = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
    }

    v6 = objc_storeWeak(&v5->_client, v4);
    [v4 addDegate:v5];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    RPCCModuleBundle = v5->_RPCCModuleBundle;
    v5->_RPCCModuleBundle = v7;

    v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    disclaimerLabel = v5->_disclaimerLabel;
    v5->_disclaimerLabel = v9;

    v11 = [UIImage imageNamed:@"Microphone" inBundle:v5->_RPCCModuleBundle];
    v12 = +[UIColor whiteColor];
    v13 = [v11 _flatImageWithColor:v12];

    v14 = [CCUILabeledRoundButtonViewController alloc];
    v15 = +[UIColor systemRedColor];
    v16 = [v14 initWithGlyphImage:v13 highlightColor:v15];
    micButton = v5->_micButton;
    v5->_micButton = v16;

    v5->_showsMicrophoneButton = 1;
    v18 = [(CCUILabeledRoundButtonViewController *)v5->_micButton button];
    [v18 setEnabled:1];

    v19 = [UIImage systemImageNamed:@"person.circle"];
    v20 = +[UIColor whiteColor];
    v21 = [v19 _flatImageWithColor:v20];

    v22 = [CCUILabeledRoundButtonViewController alloc];
    v23 = +[UIColor systemRedColor];
    v24 = [v22 initWithGlyphImage:v21 highlightColor:v23];
    HQLRButton = v5->_HQLRButton;
    v5->_HQLRButton = v24;

    v26 = [(CCUILabeledRoundButtonViewController *)v5->_HQLRButton button];
    [v26 setEnabled:1];
  }

  return v5;
}

- (void)viewDidLoad
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v10 = "[RPControlCenterModuleBackgroundViewController viewDidLoad]";
    v11 = 1024;
    v12 = 81;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v8.receiver = self;
  v8.super_class = RPControlCenterModuleBackgroundViewController;
  [(RPControlCenterModuleBackgroundViewController *)&v8 viewDidLoad];
  self->_currentMode = -1;
  [(RPControlCenterModuleBackgroundViewController *)self setupDisclaimerLabel];
  v3 = [(RPControlCenterModuleBackgroundViewController *)self view];
  [v3 addSubview:self->_disclaimerLabel];

  [(RPControlCenterModuleBackgroundViewController *)self setupMicrophoneButton];
  v4 = [(RPControlCenterModuleBackgroundViewController *)self view];
  v5 = [(CCUILabeledRoundButtonViewController *)self->_micButton view];
  [v4 addSubview:v5];

  [(RPControlCenterModuleBackgroundViewController *)self setupHQLRButton];
  v6 = [(RPControlCenterModuleBackgroundViewController *)self view];
  [v6 setNeedsUpdateConstraints];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)dealloc
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v7 = "[RPControlCenterModuleBackgroundViewController dealloc]";
    v8 = 1024;
    v9 = 101;
    v10 = 2048;
    v11 = self;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d %p", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained removeDelegate:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = RPControlCenterModuleBackgroundViewController;
  [(RPControlCenterModuleBackgroundViewController *)&v5 dealloc];
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

- (void)updateMicrophoneState
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = [WeakRetained microphoneOn];
  v5 = [(CCUILabeledRoundButtonViewController *)self->_micButton isEnabled];

  if (v4 != v5 && self->_showsMicrophoneButton)
  {
    v6 = objc_loadWeakRetained(&self->_client);
    v7 = [v6 microphoneOn];

    if (v7)
    {
      if (__RPLogLevel > 1u || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v12 = 136446466;
      v13 = "[RPControlCenterModuleBackgroundViewController updateMicrophoneState]";
      v14 = 1024;
      v15 = 123;
      v8 = " [INFO] %{public}s:%d [_micButton setEnabled:YES];";
    }

    else
    {
      if (__RPLogLevel > 1u || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v12 = 136446466;
      v13 = "[RPControlCenterModuleBackgroundViewController updateMicrophoneState]";
      v14 = 1024;
      v15 = 125;
      v8 = " [INFO] %{public}s:%d [_micButton setEnabled:NO];";
    }

    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x12u);
LABEL_11:
    micButton = self->_micButton;
    v10 = objc_loadWeakRetained(&self->_client);
    -[CCUILabeledRoundButtonViewController setEnabled:](micButton, "setEnabled:", [v10 microphoneOn]);

    v11 = objc_loadWeakRetained(&self->_client);
    -[RPControlCenterModuleBackgroundViewController setMicButtonSubtitle:](self, "setMicButtonSubtitle:", [v11 microphoneOn]);
  }
}

- (void)updateHQLRState
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = [WeakRetained highQualityLocalRecordingOn];
  v5 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton isEnabled];

  if (v4 != v5)
  {
    v6 = objc_loadWeakRetained(&self->_client);
    v7 = [v6 highQualityLocalRecordingOn];

    if (v7)
    {
      if (__RPLogLevel > 1u || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v12 = 136446466;
      v13 = "[RPControlCenterModuleBackgroundViewController updateHQLRState]";
      v14 = 1024;
      v15 = 136;
      v8 = " [INFO] %{public}s:%d [_HQLRButton setEnabled:YES];";
    }

    else
    {
      if (__RPLogLevel > 1u || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v12 = 136446466;
      v13 = "[RPControlCenterModuleBackgroundViewController updateHQLRState]";
      v14 = 1024;
      v15 = 138;
      v8 = " [INFO] %{public}s:%d [_HQLRButton setEnabled:NO];";
    }

    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x12u);
LABEL_10:
    HQLRButton = self->_HQLRButton;
    v10 = objc_loadWeakRetained(&self->_client);
    -[CCUILabeledRoundButtonViewController setEnabled:](HQLRButton, "setEnabled:", [v10 highQualityLocalRecordingOn]);

    v11 = objc_loadWeakRetained(&self->_client);
    -[RPControlCenterModuleBackgroundViewController setHQLRButtonSubtitle:](self, "setHQLRButtonSubtitle:", [v11 highQualityLocalRecordingOn]);
  }
}

- (void)setAvailableExtensions:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    if ([v6 count] && objc_msgSend(v6, "count") < 3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  self->_currentMode = v4;
  [(RPControlCenterModuleBackgroundViewController *)self updateMicrophoneState];
  [(RPControlCenterModuleBackgroundViewController *)self updateHQLRState];
  v5 = [(RPControlCenterModuleBackgroundViewController *)self view];
  [v5 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[RPControlCenterModuleBackgroundViewController viewWillLayoutSubviews]";
    v6 = 1024;
    v7 = 166;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v3.receiver = self;
  v3.super_class = RPControlCenterModuleBackgroundViewController;
  [(RPControlCenterModuleBackgroundViewController *)&v3 viewWillLayoutSubviews];
  [(RPControlCenterModuleBackgroundViewController *)self setupDisclaimerLabel];
  [(RPControlCenterModuleBackgroundViewController *)self setupMicrophoneButton];
  [(RPControlCenterModuleBackgroundViewController *)self setupHQLRButton];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = RPControlCenterModuleBackgroundViewController;
  [(RPControlCenterModuleBackgroundViewController *)&v2 didReceiveMemoryWarning];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(RPControlCenterModuleBackgroundViewController *)self updateDisclaimerLabelFont];
  v4 = [(RPControlCenterModuleBackgroundViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)setupDisclaimerLabel
{
  if (MGGetBoolAnswer())
  {
    v3 = @"CONTROL_CENTER_DISCLAIMER_CHINA";
  }

  else
  {
    v3 = @"CONTROL_CENTER_DISCLAIMER";
  }

  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v3];
  [(UILabel *)self->_disclaimerLabel setText:v4];

  disclaimerLabel = self->_disclaimerLabel;
  v6 = +[UIColor whiteColor];
  [(UILabel *)disclaimerLabel setTextColor:v6];

  [(UILabel *)self->_disclaimerLabel setTextAlignment:1];
  [(UILabel *)self->_disclaimerLabel controlCenterApplyPrimaryContentShadow];
  [(RPControlCenterModuleBackgroundViewController *)self updateDisclaimerLabelFont];
  [(RPControlCenterModuleBackgroundViewController *)self updateDisclaimerLabelConstraints];
  v7 = 0.0;
  if (self->_currentMode)
  {
    v7 = 1.0;
  }

  v8 = self->_disclaimerLabel;

  [(UILabel *)v8 setAlpha:v7];
}

- (void)updateDisclaimerLabelConstraints
{
  CCUIScreenBounds();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[UIDevice currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == &dword_0 + 1)
  {
    v13 = [(RPControlCenterModuleBackgroundViewController *)self view];
    [v13 bounds];
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  if (CCUIIsPortrait())
  {
    v18 = 1;
  }

  else
  {
    v19 = +[UIDevice currentDevice];
    v18 = [v19 userInterfaceIdiom] == &dword_0 + 1;
  }

  [(UILabel *)self->_disclaimerLabel setNumberOfLines:0];
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136446978;
    v28 = "[RPControlCenterModuleBackgroundViewController updateDisclaimerLabelConstraints]";
    v29 = 1024;
    v30 = 219;
    v31 = 1024;
    v32 = v18;
    v33 = 2048;
    v34 = [UIApp activeInterfaceOrientation];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d portrait mode: %d, orientation: %ld", &v27, 0x22u);
  }

  v20 = [(RPControlCenterModuleBackgroundViewController *)self view];
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  MidY = CGRectGetMidY(v35);
  v36.origin.x = v4;
  v36.origin.y = v6;
  v36.size.width = v8;
  v36.size.height = v10;
  [v20 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v36), 1.0}];
  CGRectGetMinX(v37);

  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  CGRectGetMinX(v38);
  CGFloatIsValid();
  if (v18)
  {
    v22 = [(RPControlCenterModuleBackgroundViewController *)self view];
    [v22 safeAreaInsets];

    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v10;
    CGRectGetHeight(v39);
    [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
  }

  else
  {
    [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    CGRectGetWidth(v40);
  }

  [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewWidth];
  [(UILabel *)self->_disclaimerLabel frame];
  [(UILabel *)self->_disclaimerLabel setFrame:?];
  [(UILabel *)self->_disclaimerLabel setClipsToBounds:0];
  v23 = v4;
  v24 = v6;
  v25 = v8;
  v26 = v10;
  if (v18)
  {
    CGRectGetWidth(*&v23);
  }

  else
  {
    CGRectGetHeight(*&v23);
  }

  UIPointRoundToViewScale();
  [(UILabel *)self->_disclaimerLabel setCenter:?];
  [(UILabel *)self->_disclaimerLabel sizeToFit];
}

- (void)updateDisclaimerLabelFont
{
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == &dword_0 + 1)
  {
  }

  else
  {
    v8 = +[UIDevice currentDevice];
    if ([v8 userInterfaceIdiom])
    {
    }

    else
    {
      CCUIReferenceScreenBounds();
      Height = CGRectGetHeight(v24);

      if (Height > 667.0)
      {
        goto LABEL_3;
      }
    }

    v7 = 18.0;
    if (!CCUIIsPortrait())
    {
      goto LABEL_11;
    }

    v10 = +[UIDevice currentDevice];
    if ([v10 userInterfaceIdiom])
    {

      goto LABEL_11;
    }

    CCUIReferenceScreenBounds();
    v11 = CGRectGetHeight(v25);

    if (v11 <= 568.0)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [v4 pointSize];
  v6 = v5;

  v7 = fmin(v6, 22.0);
LABEL_11:
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(UILabel *)self->_disclaimerLabel font];
    [v12 pointSize];
    v16 = 136446978;
    v17 = "[RPControlCenterModuleBackgroundViewController updateDisclaimerLabelFont]";
    v18 = 1024;
    v19 = 264;
    v20 = 2048;
    v21 = v13;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d setting font size from %lf to font size %lf ", &v16, 0x26u);
  }

  disclaimerLabel = self->_disclaimerLabel;
  v15 = [UIFont systemFontOfSize:v7];
  [(UILabel *)disclaimerLabel setFont:v15];
}

- (void)micButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v5 = [WeakRetained microphoneOn] ^ 1;

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPControlCenterModuleBackgroundViewController micButtonPressed:]";
    v9 = 1024;
    v10 = 272;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d set microphoneOn set %i", &v7, 0x18u);
  }

  v6 = objc_loadWeakRetained(&self->_client);
  [v6 setMicrophoneOn:v5];

  [(CCUILabeledRoundButtonViewController *)self->_micButton setEnabled:v5];
  [(RPControlCenterModuleBackgroundViewController *)self setMicButtonSubtitle:v5];
}

- (void)setMicButtonSubtitle:(BOOL)a3
{
  micButton = self->_micButton;
  if (a3)
  {
    v4 = @"CONTROL_CENTER_MICROPHONE_ON";
  }

  else
  {
    v4 = @"CONTROL_CENTER_MICROPHONE_OFF";
  }

  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v4];
  [(CCUILabeledRoundButtonViewController *)micButton setSubtitle:v5];
}

- (void)updateMicrophoneButtonConstraints
{
  v3 = [(CCUILabeledRoundButtonViewController *)self->_micButton view];
  [v3 sizeToFit];
  v4 = [(RPControlCenterModuleBackgroundViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (CCUIIsPortrait())
  {
    v13 = 1;
  }

  else
  {
    v14 = +[UIDevice currentDevice];
    v13 = [v14 userInterfaceIdiom] == &dword_0 + 1;
  }

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v33 = "[RPControlCenterModuleBackgroundViewController updateMicrophoneButtonConstraints]";
    v34 = 1024;
    v35 = 293;
    v36 = 1024;
    v37 = v13;
    v38 = 2048;
    v39 = [UIApp activeInterfaceOrientation];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d portrait mode: %d, orientation: %ld", buf, 0x22u);
  }

  v15 = [(RPControlCenterModuleBackgroundViewController *)self view];
  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  MidY = CGRectGetMidY(v40);
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  v17 = 0.0;
  [v15 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v41), 1.0}];
  MaxX = CGRectGetMaxX(v42);

  v43.origin.x = v6;
  v43.origin.y = v8;
  v43.size.width = v10;
  v43.size.height = v12;
  v19 = CGRectGetMaxX(v43);
  if (MaxX >= v19)
  {
    MaxX = v19;
  }

  if (CGFloatIsValid())
  {
    v44.origin.x = v6;
    v44.origin.y = v8;
    v44.size.width = v10;
    v44.size.height = v12;
    v17 = CGRectGetMaxX(v44) - MaxX;
  }

  if (v13)
  {
    v45.origin.x = v6;
    v45.origin.y = v8;
    v45.size.width = v10;
    v45.size.height = v12;
    Height = CGRectGetHeight(v45);
    [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v31 = (Height - v21) * 0.5;
  }

  else
  {
    [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v31 = v22;
    v46.origin.x = v6;
    v46.origin.y = v8;
    v46.size.width = v10;
    v46.size.height = v12;
    CGRectGetWidth(v46);
  }

  [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewWidth];
  [v3 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(RPControlCenterModuleBackgroundViewController *)self _determineButtonWidth];
  [v3 setFrame:{v24, v26, v29, v28}];
  v30 = +[RPFeatureFlagUtility sharedInstance];
  [v30 screenRecordingCameraPip];

  v47.origin.x = v6;
  v47.origin.y = v8;
  v47.size.width = v10;
  v47.size.height = v12;
  CGRectGetWidth(v47);
  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  CGRectGetHeight(v48);
  UIPointRoundToViewScale();
  [v3 setCenter:?];
}

- (void)setupMicrophoneButton
{
  micButton = self->_micButton;
  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_MICROPHONE"];
  [(CCUILabeledRoundButtonViewController *)micButton setTitle:v4];

  WeakRetained = objc_loadWeakRetained(&self->_client);
  LODWORD(v4) = [WeakRetained microphoneOn];

  if (v4)
  {
    NSLog(@"[_micButton setEnabled:YES];");
  }

  else
  {
    NSLog(@"[_micButton setEnabled:NO];");
  }

  v6 = objc_loadWeakRetained(&self->_client);
  -[RPControlCenterModuleBackgroundViewController setMicButtonSubtitle:](self, "setMicButtonSubtitle:", [v6 microphoneOn]);

  [(CCUILabeledRoundButtonViewController *)self->_micButton setLabelsVisible:1];
  v7 = self->_micButton;
  v8 = objc_loadWeakRetained(&self->_client);
  -[CCUILabeledRoundButtonViewController setEnabled:](v7, "setEnabled:", [v8 microphoneOn]);

  v9 = [(CCUILabeledRoundButtonViewController *)self->_micButton button];
  [v9 setUserInteractionEnabled:1];

  v10 = [(CCUILabeledRoundButtonViewController *)self->_micButton button];
  [v10 addTarget:self action:"micButtonPressed:" forEvents:64];

  [(CCUILabeledRoundButtonViewController *)self->_micButton setUseTintedGlassAppearance:1];
  [(RPControlCenterModuleBackgroundViewController *)self updateMicrophoneButtonConstraints];
  if (!self->_showsMicrophoneButton)
  {
    v11 = [(CCUILabeledRoundButtonViewController *)self->_micButton view];
    [v11 setAlpha:0.0];
  }

  v12 = self->_micButton;
  v13 = [(RPControlCenterModuleBackgroundViewController *)self _determineButtonCategorySizeThreshold];
  [(CCUILabeledRoundButtonViewController *)v12 setContentSizeCategoryThreshold:v13];
}

- (void)hqlrButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v5 = [WeakRetained highQualityLocalRecordingOn] ^ 1;

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[RPControlCenterModuleBackgroundViewController hqlrButtonPressed:]";
    v9 = 1024;
    v10 = 360;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d set highQualityLocalRecordingOn set %i", &v7, 0x18u);
  }

  v6 = objc_loadWeakRetained(&self->_client);
  [v6 setHighQualityLocalRecordingOn:v5];

  [(CCUILabeledRoundButtonViewController *)self->_HQLRButton setEnabled:v5];
  [(RPControlCenterModuleBackgroundViewController *)self setHQLRButtonSubtitle:v5];
}

- (void)setHQLRButtonSubtitle:(BOOL)a3
{
  HQLRButton = self->_HQLRButton;
  if (a3)
  {
    v4 = @"CONTROL_CENTER_MICROPHONE_ON";
  }

  else
  {
    v4 = @"CONTROL_CENTER_MICROPHONE_OFF";
  }

  v5 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:v4];
  [(CCUILabeledRoundButtonViewController *)HQLRButton setSubtitle:v5];
}

- (void)updateHQLRButtonConstraints
{
  v3 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton view];
  [v3 sizeToFit];
  v4 = [(RPControlCenterModuleBackgroundViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (CCUIIsPortrait())
  {
    v13 = 1;
  }

  else
  {
    v14 = +[UIDevice currentDevice];
    v13 = [v14 userInterfaceIdiom] == &dword_0 + 1;
  }

  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v32 = "[RPControlCenterModuleBackgroundViewController updateHQLRButtonConstraints]";
    v33 = 1024;
    v34 = 381;
    v35 = 1024;
    v36 = v13;
    v37 = 2048;
    v38 = [UIApp activeInterfaceOrientation];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d portrait mode: %d, orientation: %ld", buf, 0x22u);
  }

  v15 = [(RPControlCenterModuleBackgroundViewController *)self view];
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  MidY = CGRectGetMidY(v39);
  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  v17 = 0.0;
  [v15 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{0.0, MidY, CGRectGetWidth(v40), 1.0}];
  MaxX = CGRectGetMaxX(v41);

  v42.origin.x = v6;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  v19 = CGRectGetMaxX(v42);
  if (MaxX >= v19)
  {
    MaxX = v19;
  }

  if (CGFloatIsValid())
  {
    v43.origin.x = v6;
    v43.origin.y = v8;
    v43.size.width = v10;
    v43.size.height = v12;
    v17 = CGRectGetMaxX(v43) - MaxX;
  }

  if (v13)
  {
    v44.origin.x = v6;
    v44.origin.y = v8;
    v44.size.width = v10;
    v44.size.height = v12;
    Height = CGRectGetHeight(v44);
    [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v30 = (Height - v21) * 0.5;
  }

  else
  {
    [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewHeight];
    v30 = v22;
    v45.origin.x = v6;
    v45.origin.y = v8;
    v45.size.width = v10;
    v45.size.height = v12;
    CGRectGetWidth(v45);
  }

  [(RPControlCenterModuleBackgroundViewController *)self CCUIMenuModuleViewWidth];
  [v3 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(RPControlCenterModuleBackgroundViewController *)self _determineButtonWidth];
  [v3 setFrame:{v24, v26, v29, v28}];
  v46.origin.x = v6;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  CGRectGetWidth(v46);
  v47.origin.x = v6;
  v47.origin.y = v8;
  v47.size.width = v10;
  v47.size.height = v12;
  CGRectGetHeight(v47);
  UIPointRoundToViewScale();
  [v3 setCenter:?];
}

- (void)setupHQLRButton
{
  HQLRButton = self->_HQLRButton;
  v4 = [NSBundle _rpLocalizedStringFromFrameworkBundleWithKey:@"CONTROL_CENTER_HQLR"];
  [(CCUILabeledRoundButtonViewController *)HQLRButton setTitle:v4];

  WeakRetained = objc_loadWeakRetained(&self->_client);
  -[RPControlCenterModuleBackgroundViewController setHQLRButtonSubtitle:](self, "setHQLRButtonSubtitle:", [WeakRetained highQualityLocalRecordingOn]);

  [(CCUILabeledRoundButtonViewController *)self->_HQLRButton setLabelsVisible:1];
  v6 = self->_HQLRButton;
  v7 = objc_loadWeakRetained(&self->_client);
  -[CCUILabeledRoundButtonViewController setEnabled:](v6, "setEnabled:", [v7 highQualityLocalRecordingOn]);

  v8 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton button];
  [v8 setUserInteractionEnabled:1];

  v9 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton button];
  [v9 addTarget:self action:"hqlrButtonPressed:" forEvents:64];

  [(CCUILabeledRoundButtonViewController *)self->_HQLRButton setUseTintedGlassAppearance:1];
  [(RPControlCenterModuleBackgroundViewController *)self updateHQLRButtonConstraints];
  v10 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton view];
  [v10 setAlpha:1.0];

  v11 = self->_HQLRButton;
  v12 = [(RPControlCenterModuleBackgroundViewController *)self _determineButtonCategorySizeThreshold];
  [(CCUILabeledRoundButtonViewController *)v11 setContentSizeCategoryThreshold:v12];
}

- (void)sessionIsStarting
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterModuleBackgroundViewController sessionIsStarting]";
    v7 = 1024;
    v8 = 434;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(CCUILabeledRoundButtonViewController *)self->_micButton button];
  [v3 setEnabled:0];

  v4 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton button];
  [v4 setEnabled:0];
}

- (void)sessionDidFailToStart
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterModuleBackgroundViewController sessionDidFailToStart]";
    v7 = 1024;
    v8 = 441;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(CCUILabeledRoundButtonViewController *)self->_micButton button];
  [v3 setEnabled:1];

  v4 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton button];
  [v4 setEnabled:1];
}

- (void)didStartRecordingOrBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPControlCenterModuleBackgroundViewController didStartRecordingOrBroadcast]";
    v7 = 1024;
    v8 = 448;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(CCUILabeledRoundButtonViewController *)self->_micButton button];
  [v3 setEnabled:1];

  v4 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton button];
  [v4 setEnabled:0];
}

- (void)didStopRecordingOrBroadcast
{
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[RPControlCenterModuleBackgroundViewController didStopRecordingOrBroadcast]";
    v6 = 1024;
    v7 = 458;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v4, 0x12u);
  }

  v3 = [(CCUILabeledRoundButtonViewController *)self->_HQLRButton button];
  [v3 setEnabled:1];
}

- (void)didUpdateClientStateWithAvailableExtensions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (__RPLogLevel <= 1u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPControlCenterModuleBackgroundViewController didUpdateClientStateWithAvailableExtensions:completionHandler:]";
    v10 = 1024;
    v11 = 463;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v8, 0x12u);
  }

  [(RPControlCenterModuleBackgroundViewController *)self setAvailableExtensions:v6];
  [(RPControlCenterModuleBackgroundViewController *)self updateMicrophoneState];
  [(RPControlCenterModuleBackgroundViewController *)self updateHQLRState];
}

- (BOOL)_isIPhoneLandscape
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = CCUIIsPortrait() ^ 1;
  }

  return v3;
}

- (double)_determineButtonWidth
{
  v3 = [(RPControlCenterModuleBackgroundViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (!IsAccessibilityCategory)
  {
    return 85.0;
  }

  v6 = [(RPControlCenterModuleBackgroundViewController *)self _isIPhoneLandscape];
  result = 212.0;
  if (v6)
  {
    return 173.0;
  }

  return result;
}

- (id)_determineButtonCategorySizeThreshold
{
  if ([(RPControlCenterModuleBackgroundViewController *)self _isIPhoneLandscape])
  {
    v2 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else
  {
    v3 = +[RPFeatureFlagUtility sharedInstance];
    v4 = [v3 screenRecordingCameraPip];

    v2 = &UIContentSizeCategoryAccessibilityMedium;
    if (v4)
    {
      v2 = &UIContentSizeCategoryExtraExtraExtraLarge;
    }
  }

  v5 = *v2;

  return v5;
}

- (CCUIContentModuleContentViewController)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewController);

  return WeakRetained;
}

@end