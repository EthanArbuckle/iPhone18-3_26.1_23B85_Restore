@interface AXSpeakOverlayControlBar
+ (CGSize)controlBarSize;
+ (CGSize)nubbitSize;
- (AXSpeakOverlayControlBar)initWithFrame:(CGRect)frame;
- (AXSpeakOverlayControlBarDelegate)delegate;
- (id)_addButtonWithImageName:(id)name accessibilityLabel:(id)label round:(BOOL)round action:(SEL)action;
- (id)_buttons;
- (id)_roundButtons;
- (id)_squareButtons;
- (void)_addButtonConstraints:(id)constraints;
- (void)_fastForwardButtonPressed;
- (void)_handlePan:(id)pan;
- (void)_headerTapped:(id)tapped;
- (void)_loadButtonsAndConstraints:(id)constraints;
- (void)_playPauseButtonPressed;
- (void)_rewindButtonPressed;
- (void)_speakUnderFingerButtonPressed;
- (void)_speedButtonPressed;
- (void)_startNewReadAllFromGesture:(id)gesture;
- (void)_stopButtonPressed;
- (void)_stopSpeakFingerButtonPressed;
- (void)_tabModeButtonPressed;
- (void)_updateAccessibilityElements;
- (void)_updateButton:(id)button withImageName:(id)name accessibilityLabel:(id)label;
- (void)_updateSpeedButtonTitle;
- (void)_voiceOverStatusChanged;
- (void)changeToPauseButton;
- (void)changeToResumeButton;
- (void)changeToStopButton;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)showErrorMessage:(id)message;
- (void)showLoading;
- (void)showMainUI;
- (void)showSpeakFingerUI;
- (void)updateButtonConstraints;
- (void)updateForTabModeChangeUsingSpeakFingerButton:(BOOL)button;
- (void)updateHeaderLabel;
- (void)updateNubbitGestureRecognizers;
@end

@implementation AXSpeakOverlayControlBar

+ (CGSize)nubbitSize
{
  v2 = 60.0;
  v3 = 60.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)controlBarSize
{
  v2 = +[AXSettings sharedInstance];
  if ([v2 showSpeechController])
  {
    v3 = 317.0;
  }

  else if (AXDeviceIsPad())
  {
    v3 = 374.0;
  }

  else
  {
    v3 = 317.0;
  }

  IsPad = AXDeviceIsPad();
  v5 = 60.0;
  if (!IsPad)
  {
    v5 = 3.0;
  }

  v6 = v3 + v5;

  v7 = AXDeviceIsPad();
  v8 = 90.0;
  if (!v7)
  {
    v8 = 129.0;
  }

  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (AXSpeakOverlayControlBar)initWithFrame:(CGRect)frame
{
  v63.receiver = self;
  v63.super_class = AXSpeakOverlayControlBar;
  v3 = [(AXSpeakOverlayControlBar *)&v63 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SpeakThisUIStateManager sharedInstance];
    stateManager = v3->_stateManager;
    v3->_stateManager = v4;

    v6 = +[NSMutableArray array];
    v7 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v7;

    [(UIActivityIndicatorView *)v3->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v3->_activityIndicatorView setHidden:1];
    [(AXSpeakOverlayControlBar *)v3 addSubview:v3->_activityIndicatorView];
    v9 = [NSLayoutConstraint constraintWithItem:v3->_activityIndicatorView attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [v6 addObject:v9];

    v10 = v3->_activityIndicatorView;
    if (AXDeviceIsPad())
    {
      v11 = 39.0;
    }

    else
    {
      v11 = 69.0;
    }

    v12 = [NSLayoutConstraint constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:v11];
    [v6 addObject:v12];

    v13 = objc_alloc_init(UILabel);
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v13;

    [(UILabel *)v3->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_headerLabel setTextAlignment:1];
    if (AXDeviceIsPad())
    {
      v15 = 17.0;
    }

    else
    {
      v15 = 21.0;
    }

    v16 = [UIFont systemFontOfSize:v15];
    [(UILabel *)v3->_headerLabel setFont:v16];

    v17 = +[UIColor whiteColor];
    [(UILabel *)v3->_headerLabel setTextColor:v17];

    [(UILabel *)v3->_headerLabel setHidden:1];
    [(UILabel *)v3->_headerLabel setAccessibilityRespondsToUserInteraction:1];
    [(AXSpeakOverlayControlBar *)v3 addSubview:v3->_headerLabel];
    v18 = objc_alloc_init(UILabel);
    errorLabel = v3->_errorLabel;
    v3->_errorLabel = v18;

    [(UILabel *)v3->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_errorLabel setTextAlignment:1];
    if (AXDeviceIsPad())
    {
      v20 = 17.0;
    }

    else
    {
      v20 = 21.0;
    }

    v21 = [UIFont systemFontOfSize:v20];
    [(UILabel *)v3->_errorLabel setFont:v21];

    v22 = +[UIColor whiteColor];
    [(UILabel *)v3->_errorLabel setTextColor:v22];

    [(UILabel *)v3->_errorLabel setHidden:1];
    [(UILabel *)v3->_errorLabel setNumberOfLines:0];
    [(UILabel *)v3->_errorLabel setAccessibilityRespondsToUserInteraction:1];
    [(AXSpeakOverlayControlBar *)v3 addSubview:v3->_errorLabel];
    v23 = v3->_headerLabel;
    if (AXDeviceIsPad())
    {
      v24 = 19.0;
    }

    else
    {
      v24 = 39.0;
    }

    v25 = [NSLayoutConstraint constraintWithItem:v23 attribute:11 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:v24];
    [v6 addObject:v25];

    v26 = [NSLayoutConstraint constraintWithItem:v3->_headerLabel attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [v6 addObject:v26];

    v27 = [NSLayoutConstraint constraintWithItem:v3->_errorLabel attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [v6 addObject:v27];

    [(AXSpeakOverlayControlBar *)v3 _loadButtonsAndConstraints:v6];
    leadingAnchor = [(UILabel *)v3->_errorLabel leadingAnchor];
    trailingAnchor = [(AXSpeakScreenButton *)v3->_speakFingerButton trailingAnchor];
    v30 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    [v6 addObject:v30];

    leadingAnchor2 = [(AXSpeakScreenButton *)v3->_speedButton leadingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_errorLabel trailingAnchor];
    v33 = [leadingAnchor2 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
    [v6 addObject:v33];

    titleLabel = [(AXSpeakScreenButton *)v3->_speedButton titleLabel];
    leadingAnchor3 = [titleLabel leadingAnchor];
    leadingAnchor4 = [(AXSpeakScreenButton *)v3->_speedButton leadingAnchor];
    v37 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
    [v6 addObject:v37];

    trailingAnchor3 = [(AXSpeakScreenButton *)v3->_speedButton trailingAnchor];
    titleLabel2 = [(AXSpeakScreenButton *)v3->_speedButton titleLabel];
    trailingAnchor4 = [titleLabel2 trailingAnchor];
    v41 = [trailingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
    [v6 addObject:v41];

    v42 = objc_alloc_init(UIView);
    dragView = v3->_dragView;
    v3->_dragView = v42;

    [(UIView *)v3->_dragView setUserInteractionEnabled:1];
    v44 = v3->_dragView;
    if (AXDeviceIsPad())
    {
      v45 = 6.0;
    }

    else
    {
      v45 = 9.0;
    }

    v46 = v45 * 2.0 + 48.0;
    [objc_opt_class() controlBarSize];
    v48 = v47;
    if (AXDeviceIsPad())
    {
      v49 = 6.0;
    }

    else
    {
      v49 = 9.0;
    }

    v50 = v48 + (v49 * 2.0 + 48.0) * -2.0;
    if (AXDeviceIsPad())
    {
      v51 = 24.0;
    }

    else
    {
      v51 = 63.0;
    }

    [(UIView *)v44 setFrame:v46, 0.0, v50, v51];
    v52 = [[UIPanGestureRecognizer alloc] initWithTarget:v3 action:"_handlePan:"];
    [(UIView *)v3->_dragView addGestureRecognizer:v52];
    v53 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"_headerTapped:"];
    [(UIView *)v3->_dragView addGestureRecognizer:v53];
    [(AXSpeakOverlayControlBar *)v3 addSubview:v3->_dragView];
    [(AXSpeakOverlayControlBar *)v3 sendSubviewToBack:v3->_dragView];
    [NSLayoutConstraint activateConstraints:v6];
    v54 = +[NSNotificationCenter defaultCenter];
    [v54 addObserver:v3 selector:"_voiceOverStatusChanged" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    [(AXSpeakOverlayControlBar *)v3 _updateAccessibilityElements];
    objc_initWeak(&location, v3);
    v55 = +[AXSettings sharedInstance];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_EFE0;
    v60[3] = &unk_30AF0;
    v56 = v3;
    v61 = v56;
    v57 = objc_loadWeakRetained(&location);
    [v55 registerUpdateBlock:v60 forRetrieveSelector:"quickSpeakSpeakingRate" withListener:v57];

    v58 = v56;
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSpeakOverlayControlBar;
  [(AXSpeakOverlayControlBar *)&v4 dealloc];
}

- (void)updateHeaderLabel
{
  stateManager = [(AXSpeakOverlayControlBar *)self stateManager];
  currentControllerTitle = [stateManager currentControllerTitle];
  [(UILabel *)self->_headerLabel setText:currentControllerTitle];
}

- (void)_voiceOverStatusChanged
{
  v3 = _AXSVoiceOverTouchEnabled() == 0;
  speakFingerButton = self->_speakFingerButton;

  [(AXSpeakScreenButton *)speakFingerButton setEnabled:v3];
}

- (void)showLoading
{
  [(AXSpeakOverlayControlBar *)self setHidesMainViews:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setHidden:0];
  [(UILabel *)self->_headerLabel setHidden:0];
  v3 = +[AXSettings sharedInstance];
  showSpeechController = [v3 showSpeechController];

  if ((showSpeechController & 1) == 0)
  {
    [(AXSpeakOverlayControlBar *)self showStopButton];
  }

  activityIndicatorView = self->_activityIndicatorView;

  [(UIActivityIndicatorView *)activityIndicatorView startAnimating];
}

- (void)showMainUI
{
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];
  [(AXSpeakOverlayControlBar *)self setHidesMainViews:0];
  [(AXSpeakScreenButton *)self->_forwardButton setEnabled:1];
  rewindButton = self->_rewindButton;

  [(AXSpeakScreenButton *)rewindButton setEnabled:1];
}

- (void)showSpeakFingerUI
{
  [(AXSpeakOverlayControlBar *)self changeToResumeButton];
  [(AXSpeakOverlayControlBar *)self setHidesMainViews:0];
  [(UILabel *)self->_headerLabel setHidden:1];
  [(AXSpeakScreenButton *)self->_stopButton setHidden:1];
  [(AXSpeakScreenButton *)self->_forwardButton setEnabled:0];
  rewindButton = self->_rewindButton;

  [(AXSpeakScreenButton *)rewindButton setEnabled:0];
}

- (void)_headerTapped:(id)tapped
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate headerTapped];
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if (state == &dword_0 + 2)
  {
    [panCopy translationInView:self];
    v10 = v9;
    v12 = v11;
    delegate = [(AXSpeakOverlayControlBar *)self delegate];
    p_panGestureAnchor = &self->_panGestureAnchor;
    [delegate controlBarDragged:panCopy gestureRecognizer:{v10 - p_panGestureAnchor->x, v12 - p_panGestureAnchor->y}];

    v6 = panCopy;
    p_panGestureAnchor->x = v10;
    p_panGestureAnchor->y = v12;
  }

  else
  {
    v5 = state == &dword_0 + 1;
    v6 = panCopy;
    if (v5)
    {
      [panCopy translationInView:self];
      v6 = panCopy;
      self->_panGestureAnchor.x = v7;
      self->_panGestureAnchor.y = v8;
    }
  }
}

- (void)changeToPauseButton
{
  playPauseButton = self->_playPauseButton;
  v4 = AXSpeakThisLocString(@"PAUSE");
  [(AXSpeakOverlayControlBar *)self _updateButton:playPauseButton withImageName:@"SCATIcon_mediacontrols_pause" accessibilityLabel:v4];
}

- (void)changeToResumeButton
{
  playPauseButton = self->_playPauseButton;
  v4 = AXSpeakThisLocString(@"PLAY");
  [(AXSpeakOverlayControlBar *)self _updateButton:playPauseButton withImageName:@"SCATIcon_mediacontrols_play" accessibilityLabel:v4];
}

- (void)changeToStopButton
{
  playPauseButton = self->_playPauseButton;
  v4 = AXSpeakThisLocString(@"STOP_SPEAK_FINGER");
  [(AXSpeakOverlayControlBar *)self _updateButton:playPauseButton withImageName:@"square.fill" accessibilityLabel:v4];
}

- (void)showErrorMessage:(id)message
{
  messageCopy = message;
  [(AXSpeakOverlayControlBar *)self setHidesMainViews:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setHidden:1];
  [(UILabel *)self->_errorLabel setText:messageCopy];

  [(UILabel *)self->_errorLabel setHidden:0];
  v5 = UIAccessibilityLayoutChangedNotification;
  errorLabel = self->_errorLabel;

  UIAccessibilityPostNotification(v5, errorLabel);
}

- (void)_updateButton:(id)button withImageName:(id)name accessibilityLabel:(id)label
{
  nameCopy = name;
  labelCopy = label;
  buttonCopy = button;
  if ([nameCopy hasPrefix:@"SCAT"])
  {
    v9 = [NSBundle bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
    v10 = [UIImage imageNamed:nameCopy inBundle:v9];
  }

  else
  {
    v11 = [UIImage systemImageNamed:nameCopy];
    v12 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
    v9 = [v12 fontDescriptorWithSymbolicTraits:2];

    fontAttributes = [v9 fontAttributes];
    v14 = [fontAttributes objectForKey:UIFontDescriptorTraitsAttribute];

    [v9 pointSize];
    v16 = v15;
    v17 = [v14 objectForKey:UIFontWeightTrait];
    [v17 floatValue];
    v19 = [UIImageSymbolConfiguration configurationWithPointSize:UIImageSymbolWeightForFontWeight(v18) weight:3 scale:v16];

    configurationWithoutTextStyle = [v19 configurationWithoutTextStyle];

    v10 = [v11 imageWithConfiguration:configurationWithoutTextStyle];
  }

  v21 = +[UIColor whiteColor];
  v22 = [v10 imageWithTintColor:v21];

  [buttonCopy setImage:v22 forState:0];
  [buttonCopy setAccessibilityLabel:labelCopy];
}

- (id)_addButtonWithImageName:(id)name accessibilityLabel:(id)label round:(BOOL)round action:(SEL)action
{
  roundCopy = round;
  nameCopy = name;
  labelCopy = label;
  v8 = [AXSpeakScreenButton buttonWithType:1];
  v9 = +[UIColor whiteColor];
  [v8 setTintColor:v9];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [UIVisualEffectView alloc];
  v11 = [UIBlurEffect effectWithStyle:19];
  v12 = [UIVibrancyEffect effectForBlurEffect:v11 style:2];
  v13 = [v10 initWithEffect:v12];

  [v13 setUserInteractionEnabled:0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [UIImageView alloc];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = v16;
  v67.width = 60.0;
  v67.height = 60.0;
  UIGraphicsBeginImageContextWithOptions(v67, 0, v17);

  if (roundCopy)
  {
    [UIBezierPath bezierPathWithOvalInRect:6.75, 6.75, 46.5, 46.5];
  }

  else
  {
    [UIBezierPath bezierPathWithRoundedRect:0.75 cornerRadius:0.75, 58.5, 58.5, 13.0];
  }
  v18 = ;
  [v18 setLineWidth:1.5];
  v19 = [UIColor colorWithWhite:0.5 alpha:1.0];
  [v19 set];

  [v18 stroke];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  v21 = [v14 initWithImage:v20];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [v13 contentView];
  [contentView addSubview:v21];

  [v8 setBorderEffectView:v13];
  v23 = [UIVisualEffectView alloc];
  v24 = [UIBlurEffect effectWithStyle:17];
  v25 = [UIVibrancyEffect effectForBlurEffect:v24 style:0];
  v26 = [v23 initWithEffect:v25];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setButtonEffectView:v26];
  contentView2 = [v26 contentView];
  [contentView2 addSubview:v8];

  leadingAnchor = [v21 leadingAnchor];
  contentView3 = [v13 contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v65[0] = v55;
  trailingAnchor = [v21 trailingAnchor];
  contentView4 = [v13 contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v65[1] = v51;
  topAnchor = [v21 topAnchor];
  contentView5 = [v13 contentView];
  topAnchor2 = [contentView5 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65[2] = v47;
  v59 = v21;
  bottomAnchor = [v21 bottomAnchor];
  v60 = v13;
  contentView6 = [v13 contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v43 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v65[3] = v43;
  topAnchor3 = [v26 topAnchor];
  topAnchor4 = [v8 topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v65[4] = v40;
  bottomAnchor3 = [v26 bottomAnchor];
  bottomAnchor4 = [v8 bottomAnchor];
  v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v65[5] = v28;
  leadingAnchor3 = [v26 leadingAnchor];
  leadingAnchor4 = [v8 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v65[6] = v31;
  trailingAnchor3 = [v26 trailingAnchor];
  trailingAnchor4 = [v8 trailingAnchor];
  [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v35 = v34 = v8;
  v65[7] = v35;
  v36 = [NSArray arrayWithObjects:v65 count:8];
  [NSLayoutConstraint activateConstraints:v36];

  if (action)
  {
    [v34 addTarget:self action:action forControlEvents:64];
  }

  [(AXSpeakOverlayControlBar *)self _updateButton:v34 withImageName:nameCopy accessibilityLabel:labelCopy];
  [(AXSpeakOverlayControlBar *)self addSubview:v60];
  [(AXSpeakOverlayControlBar *)self addSubview:v26];

  return v34;
}

- (void)updateButtonConstraints
{
  maximizedConstraints = [(AXSpeakOverlayControlBar *)self maximizedConstraints];
  [NSLayoutConstraint deactivateConstraints:maximizedConstraints];

  minimizedConstraints = [(AXSpeakOverlayControlBar *)self minimizedConstraints];
  [NSLayoutConstraint deactivateConstraints:minimizedConstraints];

  v5 = objc_opt_new();
  [(AXSpeakOverlayControlBar *)self _addButtonConstraints:v5];

  stateManager = [(AXSpeakOverlayControlBar *)self stateManager];
  if ([stateManager inTabMode])
  {
    [(AXSpeakOverlayControlBar *)self minimizedConstraints];
  }

  else
  {
    [(AXSpeakOverlayControlBar *)self maximizedConstraints];
  }
  v6 = ;
  [NSLayoutConstraint activateConstraints:v6];
}

- (void)_addButtonConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v122 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  _squareButtons = [(AXSpeakOverlayControlBar *)self _squareButtons];
  v127 = [_squareButtons count];
  if (v127)
  {
    if (v127 == &dword_0 + 1)
    {
      v5 = [_squareButtons objectAtIndexedSubscript:0];
      v6 = [NSLayoutConstraint constraintWithItem:v5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [constraintsCopy addObject:v6];

      v7 = [NSLayoutConstraint constraintWithItem:v5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [constraintsCopy addObject:v7];

      if (AXDeviceIsPad())
      {
        v8 = 27.0;
      }

      else
      {
        v8 = 66.0;
      }

      v9 = [NSLayoutConstraint constraintWithItem:v5 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v8];
      [v4 addObject:v9];

      v10 = [NSLayoutConstraint constraintWithItem:v5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v4 addObject:v10];

      v11 = [NSLayoutConstraint constraintWithItem:v5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v122 addObject:v11];

      v12 = [NSLayoutConstraint constraintWithItem:v5 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [v122 addObject:v12];

      borderEffectView = [v5 borderEffectView];
      v14 = [NSLayoutConstraint constraintWithItem:borderEffectView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [constraintsCopy addObject:v14];

      borderEffectView2 = [v5 borderEffectView];
      v16 = [NSLayoutConstraint constraintWithItem:borderEffectView2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [constraintsCopy addObject:v16];

      borderEffectView3 = [v5 borderEffectView];
      if (AXDeviceIsPad())
      {
        v18 = 27.0;
      }

      else
      {
        v18 = 66.0;
      }

      v19 = [NSLayoutConstraint constraintWithItem:borderEffectView3 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v18];
      [v4 addObject:v19];

      borderEffectView4 = [v5 borderEffectView];
      v21 = [NSLayoutConstraint constraintWithItem:borderEffectView4 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v4 addObject:v21];

      borderEffectView5 = [v5 borderEffectView];
      v23 = [NSLayoutConstraint constraintWithItem:borderEffectView5 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v122 addObject:v23];

      borderEffectView6 = [v5 borderEffectView];
      v25 = [NSLayoutConstraint constraintWithItem:borderEffectView6 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [v122 addObject:v25];
    }

    else
    {
      v26 = 0;
      v27 = &MKBGetDeviceLockState_ptr;
      selfCopy = self;
      do
      {
        v28 = [_squareButtons objectAtIndexedSubscript:{v26, selfCopy}];
        v29 = [NSLayoutConstraint constraintWithItem:v28 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [constraintsCopy addObject:v29];

        v30 = [NSLayoutConstraint constraintWithItem:v28 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [constraintsCopy addObject:v30];

        borderEffectView7 = [v28 borderEffectView];
        v32 = [NSLayoutConstraint constraintWithItem:borderEffectView7 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [constraintsCopy addObject:v32];

        borderEffectView8 = [v28 borderEffectView];
        v34 = [NSLayoutConstraint constraintWithItem:borderEffectView8 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [constraintsCopy addObject:v34];

        if (AXDeviceIsPad())
        {
          v35 = 60.0;
        }

        else
        {
          v35 = 3.0;
        }

        v36 = [NSLayoutConstraint constraintWithItem:v28 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v35];
        borderEffectView9 = [v28 borderEffectView];
        if (AXDeviceIsPad())
        {
          v38 = 60.0;
        }

        else
        {
          v38 = 3.0;
        }

        v39 = [NSLayoutConstraint constraintWithItem:borderEffectView9 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v38];

        if (!v26)
        {
          [v4 addObject:v36];
          [v4 addObject:v39];
        }

        v125 = v39;
        v126 = v36;
        sharedInstance = [v27[241] sharedInstance];
        showSpeechController = [sharedInstance showSpeechController];
        v42 = 3.5;
        v43 = 3.5;
        if ((showSpeechController & 1) == 0)
        {
          if (AXDeviceIsPad())
          {
            v43 = 60.0;
          }

          else
          {
            v43 = 3.0;
          }
        }

        v44 = [NSLayoutConstraint constraintWithItem:v28 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:-v43];

        borderEffectView10 = [v28 borderEffectView];
        sharedInstance2 = [v27[241] sharedInstance];
        if (([sharedInstance2 showSpeechController] & 1) == 0)
        {
          if (AXDeviceIsPad())
          {
            v42 = 60.0;
          }

          else
          {
            v42 = 3.0;
          }
        }

        v47 = [NSLayoutConstraint constraintWithItem:borderEffectView10 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:-v42];

        v48 = v44;
        LODWORD(v49) = 1144750080;
        [v44 setPriority:v49];
        LODWORD(v50) = 1144750080;
        [v47 setPriority:v50];
        if (v127 == &dword_0 + 1)
        {
          [v4 addObject:v44];
          [v4 addObject:v47];
        }

        v124 = v47;
        if (v26)
        {
          borderEffectView14 = [_squareButtons objectAtIndexedSubscript:v26 - 1];
          v52 = [NSLayoutConstraint constraintWithItem:v28 attribute:1 relatedBy:0 toItem:borderEffectView14 attribute:2 multiplier:1.0 constant:3.5];
          [v4 addObject:v52];

          [v28 borderEffectView];
          v54 = v53 = v4;
          borderEffectView11 = [borderEffectView14 borderEffectView];
          v56 = [NSLayoutConstraint constraintWithItem:v54 attribute:1 relatedBy:0 toItem:borderEffectView11 attribute:2 multiplier:1.0 constant:3.5];
          [v53 addObject:v56];

          v57 = [_squareButtons objectAtIndexedSubscript:0];
          v58 = [NSLayoutConstraint constraintWithItem:v28 attribute:3 relatedBy:0 toItem:v57 attribute:3 multiplier:1.0 constant:0.0];
          [constraintsCopy addObject:v58];

          borderEffectView12 = [v28 borderEffectView];
          v60 = [_squareButtons objectAtIndexedSubscript:0];
          borderEffectView13 = [v60 borderEffectView];
          v62 = [NSLayoutConstraint constraintWithItem:borderEffectView12 attribute:3 relatedBy:0 toItem:borderEffectView13 attribute:3 multiplier:1.0 constant:0.0];
          [constraintsCopy addObject:v62];

          v4 = v53;
          v48 = v44;

          self = selfCopy;
        }

        else
        {
          if (AXDeviceIsPad())
          {
            v63 = 27.0;
          }

          else
          {
            v63 = 66.0;
          }

          v64 = [NSLayoutConstraint constraintWithItem:v28 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v63];
          [v4 addObject:v64];

          borderEffectView14 = [v28 borderEffectView];
          if (AXDeviceIsPad())
          {
            v65 = 27.0;
          }

          else
          {
            v65 = 66.0;
          }

          borderEffectView12 = [NSLayoutConstraint constraintWithItem:borderEffectView14 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v65];
          [v4 addObject:borderEffectView12];
        }

        v66 = [NSLayoutConstraint constraintWithItem:v28 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
        [v122 addObject:v66];

        v67 = [NSLayoutConstraint constraintWithItem:v28 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
        [v122 addObject:v67];

        borderEffectView15 = [v28 borderEffectView];
        v69 = [NSLayoutConstraint constraintWithItem:borderEffectView15 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
        [v122 addObject:v69];

        borderEffectView16 = [v28 borderEffectView];
        v71 = [NSLayoutConstraint constraintWithItem:borderEffectView16 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
        [v122 addObject:v71];

        ++v26;
        v72 = v127-- == &dword_0 + 1;
        v27 = &MKBGetDeviceLockState_ptr;
      }

      while (!v72);
    }
  }

  _roundButtons = [(AXSpeakOverlayControlBar *)self _roundButtons];
  firstObject = [_roundButtons firstObject];

  if (AXDeviceIsPad())
  {
    v75 = 33.0;
  }

  else
  {
    v75 = 9.0;
  }

  v76 = [NSLayoutConstraint constraintWithItem:firstObject attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v75];
  [v4 addObject:v76];

  v77 = [NSLayoutConstraint constraintWithItem:firstObject attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v77];

  v78 = [NSLayoutConstraint constraintWithItem:firstObject attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v78];

  if (AXDeviceIsPad())
  {
    v79 = 6.0;
  }

  else
  {
    v79 = 9.0;
  }

  v80 = [NSLayoutConstraint constraintWithItem:firstObject attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v79];
  [v4 addObject:v80];

  v81 = [NSLayoutConstraint constraintWithItem:firstObject attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v81];

  v82 = [NSLayoutConstraint constraintWithItem:firstObject attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v82];

  borderEffectView17 = [firstObject borderEffectView];
  if (AXDeviceIsPad())
  {
    v84 = 33.0;
  }

  else
  {
    v84 = 9.0;
  }

  v85 = [NSLayoutConstraint constraintWithItem:borderEffectView17 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v84];
  [v4 addObject:v85];

  borderEffectView18 = [firstObject borderEffectView];
  v87 = [NSLayoutConstraint constraintWithItem:borderEffectView18 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v87];

  borderEffectView19 = [firstObject borderEffectView];
  v89 = [NSLayoutConstraint constraintWithItem:borderEffectView19 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v89];

  borderEffectView20 = [firstObject borderEffectView];
  if (AXDeviceIsPad())
  {
    v91 = 6.0;
  }

  else
  {
    v91 = 9.0;
  }

  v92 = [NSLayoutConstraint constraintWithItem:borderEffectView20 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v91];
  [v4 addObject:v92];

  borderEffectView21 = [firstObject borderEffectView];
  v94 = [NSLayoutConstraint constraintWithItem:borderEffectView21 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v94];

  borderEffectView22 = [firstObject borderEffectView];
  v96 = [NSLayoutConstraint constraintWithItem:borderEffectView22 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v96];

  _roundButtons2 = [(AXSpeakOverlayControlBar *)self _roundButtons];
  lastObject = [_roundButtons2 lastObject];

  if (AXDeviceIsPad())
  {
    v99 = 33.0;
  }

  else
  {
    v99 = 9.0;
  }

  v100 = [NSLayoutConstraint constraintWithItem:lastObject attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v99];
  [v4 addObject:v100];

  if (AXDeviceIsPad())
  {
    v101 = -6.0;
  }

  else
  {
    v101 = -9.0;
  }

  v102 = [NSLayoutConstraint constraintWithItem:lastObject attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:v101];
  [v4 addObject:v102];

  v103 = [NSLayoutConstraint constraintWithItem:lastObject attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v103];

  v104 = [NSLayoutConstraint constraintWithItem:lastObject attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v104];

  v105 = [NSLayoutConstraint constraintWithItem:lastObject attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v105];

  v106 = [NSLayoutConstraint constraintWithItem:lastObject attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v106];

  borderEffectView23 = [lastObject borderEffectView];
  if (AXDeviceIsPad())
  {
    v108 = 33.0;
  }

  else
  {
    v108 = 9.0;
  }

  v109 = [NSLayoutConstraint constraintWithItem:borderEffectView23 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v108];
  [v4 addObject:v109];

  borderEffectView24 = [lastObject borderEffectView];
  if (AXDeviceIsPad())
  {
    v111 = -6.0;
  }

  else
  {
    v111 = -9.0;
  }

  v112 = [NSLayoutConstraint constraintWithItem:borderEffectView24 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:v111];
  [v4 addObject:v112];

  borderEffectView25 = [lastObject borderEffectView];
  v114 = [NSLayoutConstraint constraintWithItem:borderEffectView25 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v114];

  borderEffectView26 = [lastObject borderEffectView];
  v116 = [NSLayoutConstraint constraintWithItem:borderEffectView26 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [constraintsCopy addObject:v116];

  borderEffectView27 = [lastObject borderEffectView];
  v118 = [NSLayoutConstraint constraintWithItem:borderEffectView27 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v118];

  borderEffectView28 = [lastObject borderEffectView];
  v120 = [NSLayoutConstraint constraintWithItem:borderEffectView28 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v120];

  [(AXSpeakOverlayControlBar *)self setMaximizedConstraints:v4];
  [(AXSpeakOverlayControlBar *)self setMinimizedConstraints:v122];
  [constraintsCopy addObjectsFromArray:v4];
}

- (void)_loadButtonsAndConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v4 = AXSpeakThisLocString(@"MINIMIZE");
  v5 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"chevron.backward" accessibilityLabel:v4 round:1 action:0];
  tabModeButton = self->_tabModeButton;
  self->_tabModeButton = v5;

  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_speakUnderFingerButtonPressed"];
  [v7 setNumberOfTapsRequired:2];
  [(AXSpeakOverlayControlBar *)self setDoubleTapRecognizer:v7];
  v8 = self->_tabModeButton;
  doubleTapRecognizer = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [(AXSpeakScreenButton *)v8 addGestureRecognizer:doubleTapRecognizer];

  v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tabModeButtonPressed"];
  [v10 setNumberOfTapsRequired:1];
  doubleTapRecognizer2 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [v10 requireGestureRecognizerToFail:doubleTapRecognizer2];

  [(AXSpeakOverlayControlBar *)self setSingleTapRecognizer:v10];
  v12 = self->_tabModeButton;
  singleTapRecognizer = [(AXSpeakOverlayControlBar *)self singleTapRecognizer];
  [(AXSpeakScreenButton *)v12 addGestureRecognizer:singleTapRecognizer];

  v14 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_startNewReadAllFromGesture:"];
  [(AXSpeakOverlayControlBar *)self setLongPressRecognizer:v14];
  v15 = self->_tabModeButton;
  longPressRecognizer = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
  [(AXSpeakScreenButton *)v15 addGestureRecognizer:longPressRecognizer];

  v17 = AXSpeakThisLocString(@"SPEAK_FINGER");
  v18 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"SCATIcon_gestures_fingers1" accessibilityLabel:v17 round:0 action:"_speakUnderFingerButtonPressed"];
  speakFingerButton = self->_speakFingerButton;
  self->_speakFingerButton = v18;

  [(AXSpeakScreenButton *)self->_speakFingerButton setEnabled:_AXSVoiceOverTouchEnabled() == 0];
  v20 = AXSpeakThisLocString(@"REWIND");
  v21 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"backward.end.fill" accessibilityLabel:v20 round:0 action:"_rewindButtonPressed"];
  rewindButton = self->_rewindButton;
  self->_rewindButton = v21;

  v23 = AXSpeakThisLocString(@"PAUSE");
  v24 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"SCATIcon_mediacontrols_pause" accessibilityLabel:v23 round:0 action:"_playPauseButtonPressed"];
  playPauseButton = self->_playPauseButton;
  self->_playPauseButton = v24;

  v26 = AXSpeakThisLocString(@"FAST_FORWARD");
  v27 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"forward.end.fill" accessibilityLabel:v26 round:0 action:"_fastForwardButtonPressed"];
  forwardButton = self->_forwardButton;
  self->_forwardButton = v27;

  v29 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:0 accessibilityLabel:0 round:0 action:"_speedButtonPressed"];
  speedButton = self->_speedButton;
  self->_speedButton = v29;

  titleLabel = [(AXSpeakScreenButton *)self->_speedButton titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  [(AXSpeakOverlayControlBar *)self _updateSpeedButtonTitle];
  v32 = AXSpeakThisLocString(@"STOP");
  v33 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"xmark" accessibilityLabel:v32 round:1 action:"_stopButtonPressed"];
  stopButton = self->_stopButton;
  self->_stopButton = v33;

  [(AXSpeakScreenButton *)self->_rewindButton setHidden:1];
  [(AXSpeakScreenButton *)self->_playPauseButton setHidden:1];
  [(AXSpeakScreenButton *)self->_forwardButton setHidden:1];
  v35 = +[AXSettings sharedInstance];
  LODWORD(v17) = [v35 showSpeechController];

  if (v17)
  {
    [(AXSpeakScreenButton *)self->_stopButton setHidden:1];
  }

  [(AXSpeakOverlayControlBar *)self _addButtonConstraints:constraintsCopy];
}

- (void)_updateSpeedButtonTitle
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate speakingRateAsMultiplier];
  v5 = v4;

  v9 = AXSpeakThisSpeakingRateStringForSpeed(v5);
  [(AXSpeakScreenButton *)self->_speedButton setTitle:v9 forState:0];
  speedButton = self->_speedButton;
  v7 = [UIFont systemFontOfSize:28.0];
  [(AXSpeakScreenButton *)speedButton _setFont:v7];

  v8 = AXFormatLocalizedPlaybackSpeedFactor();
  [(AXSpeakScreenButton *)self->_speedButton setAccessibilityLabel:v8];
}

- (void)_stopButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate stopButtonPressed];

  [(AXSpeakOverlayControlBar *)self hideStopButton];

  [(AXSpeakOverlayControlBar *)self showSpeakFingerUI];
}

- (void)_stopSpeakFingerButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate stopSpeakFingerButtonPressed];
}

- (void)_rewindButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate rewindButtonPressed];
}

- (void)_startNewReadAllFromGesture:(id)gesture
{
  gestureCopy = gesture;
  longPressRecognizer = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
  if (longPressRecognizer == gestureCopy && [gestureCopy state] == &dword_0 + 1)
  {

LABEL_7:
    longPressRecognizer = [(AXSpeakOverlayControlBar *)self delegate];
    [longPressRecognizer startNewReadAllFromGesture];
    goto LABEL_8;
  }

  doubleTapRecognizer = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  if (doubleTapRecognizer == gestureCopy)
  {
    state = [gestureCopy state];

    if (state != &dword_0 + 3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:
LABEL_9:
}

- (void)_playPauseButtonPressed
{
  v3 = +[AXSpeakFingerManager sharedInstance];
  speakFingerState = [v3 speakFingerState];

  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  v8 = delegate;
  if (speakFingerState == &dword_0 + 3)
  {
    [delegate stopSpeakFingerButtonPressed];
  }

  else
  {
    isSpeaking = [delegate isSpeaking];

    delegate2 = [(AXSpeakOverlayControlBar *)self delegate];
    v8 = delegate2;
    if (isSpeaking)
    {
      [delegate2 pauseButtonPressed];
    }

    else
    {
      [delegate2 playButtonPressed];
    }
  }
}

- (void)_fastForwardButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate fastForwardButtonPressed];
}

- (void)_speedButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate speedButtonPressed];

  [(AXSpeakOverlayControlBar *)self _updateSpeedButtonTitle];
}

- (void)_tabModeButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate tabModeButtonPressed];
}

- (void)_speakUnderFingerButtonPressed
{
  delegate = [(AXSpeakOverlayControlBar *)self delegate];
  [delegate speakUnderFingerButtonPressed];
}

- (void)updateNubbitGestureRecognizers
{
  stateManager = [(AXSpeakOverlayControlBar *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if ((inTabMode & 1) == 0)
  {
    tabModeButton = self->_tabModeButton;
    longPressRecognizer = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
    [(AXSpeakScreenButton *)tabModeButton removeGestureRecognizer:longPressRecognizer];

    v12 = self->_tabModeButton;
    doubleTapRecognizer = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
    [(AXSpeakScreenButton *)v12 removeGestureRecognizer:?];
    goto LABEL_13;
  }

  longPressRecognizer2 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
  [longPressRecognizer2 removeTarget:0 action:0];

  doubleTapRecognizer2 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [doubleTapRecognizer2 removeTarget:0 action:0];

  v7 = +[AXSettings sharedInstance];
  speechControllerLongPressAction = [v7 speechControllerLongPressAction];

  if (speechControllerLongPressAction == &dword_0 + 2)
  {
    v9 = &selRef__speakUnderFingerButtonPressed;
    goto LABEL_7;
  }

  if (speechControllerLongPressAction == &dword_0 + 1)
  {
    v9 = &selRef__startNewReadAllFromGesture_;
LABEL_7:
    longPressRecognizer3 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
    [longPressRecognizer3 addTarget:self action:*v9];

    v14 = self->_tabModeButton;
    longPressRecognizer4 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
    [(AXSpeakScreenButton *)v14 addGestureRecognizer:longPressRecognizer4];
  }

  v16 = +[AXSettings sharedInstance];
  speechControllerDoubleTapAction = [v16 speechControllerDoubleTapAction];

  if (speechControllerDoubleTapAction == &dword_0 + 1)
  {
    doubleTapRecognizer3 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
    v19 = doubleTapRecognizer3;
    v20 = "_startNewReadAllFromGesture:";
  }

  else
  {
    if (speechControllerDoubleTapAction != &dword_0 + 2)
    {
      return;
    }

    doubleTapRecognizer3 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
    v19 = doubleTapRecognizer3;
    v20 = "_speakUnderFingerButtonPressed";
  }

  [doubleTapRecognizer3 addTarget:self action:v20];

  v21 = self->_tabModeButton;
  doubleTapRecognizer = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [(AXSpeakScreenButton *)v21 addGestureRecognizer:?];
LABEL_13:
}

- (void)updateForTabModeChangeUsingSpeakFingerButton:(BOOL)button
{
  buttonCopy = button;
  stateManager = [(AXSpeakOverlayControlBar *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    maximizedConstraints = [(AXSpeakOverlayControlBar *)self maximizedConstraints];
    [NSLayoutConstraint deactivateConstraints:maximizedConstraints];

    tabModeButton = self->_tabModeButton;
    v9 = AXSpeakThisLocString(@"MAXIMIZE");
    [(AXSpeakOverlayControlBar *)self _updateButton:tabModeButton withImageName:@"chevron.forward" accessibilityLabel:v9];

    [(UILabel *)self->_headerLabel setAlpha:0.0];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:0.0];
    maximizedConstraints2 = self->_tabModeButton;
    if (buttonCopy)
    {
      v11 = self->_speakFingerButton;

      maximizedConstraints2 = v11;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    _buttons = [(AXSpeakOverlayControlBar *)self _buttons];
    v13 = [_buttons countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(_buttons);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if (v17 != maximizedConstraints2)
          {
            [(AXSpeakScreenButton *)v17 setAlpha:0.0];
          }
        }

        v14 = [_buttons countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    [(AXSpeakScreenButton *)maximizedConstraints2 setAlpha:1.0];
    [(AXSpeakOverlayControlBar *)self bringSubviewToFront:maximizedConstraints2];
    minimizedConstraints = [(AXSpeakOverlayControlBar *)self minimizedConstraints];
    [NSLayoutConstraint activateConstraints:minimizedConstraints];
  }

  else
  {
    minimizedConstraints2 = [(AXSpeakOverlayControlBar *)self minimizedConstraints];
    [NSLayoutConstraint deactivateConstraints:minimizedConstraints2];

    v20 = self->_tabModeButton;
    v21 = AXSpeakThisLocString(@"MINIMIZE");
    [(AXSpeakOverlayControlBar *)self _updateButton:v20 withImageName:@"chevron.backward" accessibilityLabel:v21];

    [(UILabel *)self->_headerLabel setAlpha:1.0];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:1.0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    _buttons2 = [(AXSpeakOverlayControlBar *)self _buttons];
    v23 = [_buttons2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(_buttons2);
          }

          [*(*(&v27 + 1) + 8 * j) setAlpha:1.0];
        }

        v24 = [_buttons2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }

    maximizedConstraints2 = [(AXSpeakOverlayControlBar *)self maximizedConstraints];
    [NSLayoutConstraint activateConstraints:maximizedConstraints2];
  }

  [(AXSpeakOverlayControlBar *)self _updateAccessibilityElements];
  [(AXSpeakOverlayControlBar *)self _updateSpeedButtonTitle];
  [(AXSpeakOverlayControlBar *)self setNeedsLayout];
}

- (id)_buttons
{
  _squareButtons = [(AXSpeakOverlayControlBar *)self _squareButtons];
  _roundButtons = [(AXSpeakOverlayControlBar *)self _roundButtons];
  v5 = [_squareButtons arrayByAddingObjectsFromArray:_roundButtons];

  return v5;
}

- (id)_squareButtons
{
  rewindButton = self->_rewindButton;
  v6[0] = self->_speakFingerButton;
  v6[1] = rewindButton;
  forwardButton = self->_forwardButton;
  v6[2] = self->_playPauseButton;
  v6[3] = forwardButton;
  v6[4] = self->_speedButton;
  v4 = [NSArray arrayWithObjects:v6 count:5];

  return v4;
}

- (id)_roundButtons
{
  stopButton = self->_stopButton;
  v5[0] = self->_tabModeButton;
  v5[1] = stopButton;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (void)_updateAccessibilityElements
{
  stateManager = [(AXSpeakOverlayControlBar *)self stateManager];
  inTabMode = [stateManager inTabMode];

  if (inTabMode)
  {
    tabModeButton = self->_tabModeButton;
    p_tabModeButton = &tabModeButton;
    v6 = 1;
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    showSpeechController = [v7 showSpeechController];

    v9 = self->_tabModeButton;
    headerLabel = self->_headerLabel;
    if (showSpeechController)
    {
      speakFingerButton = self->_speakFingerButton;
      v19[0] = self->_tabModeButton;
      v19[1] = headerLabel;
      rewindButton = self->_rewindButton;
      v19[2] = speakFingerButton;
      v19[3] = rewindButton;
      forwardButton = self->_forwardButton;
      v19[4] = self->_playPauseButton;
      v19[5] = forwardButton;
      v19[6] = self->_speedButton;
      p_tabModeButton = v19;
      v6 = 7;
    }

    else
    {
      v18[0] = self->_tabModeButton;
      v18[1] = headerLabel;
      v14 = self->_speakFingerButton;
      v18[2] = self->_stopButton;
      v18[3] = v14;
      playPauseButton = self->_playPauseButton;
      v18[4] = self->_rewindButton;
      v18[5] = playPauseButton;
      speedButton = self->_speedButton;
      v18[6] = self->_forwardButton;
      v18[7] = speedButton;
      p_tabModeButton = v18;
      v6 = 8;
    }
  }

  v17 = [NSArray arrayWithObjects:p_tabModeButton count:v6];
  [(AXSpeakOverlayControlBar *)self setAccessibilityElements:v17];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedView = [context nextFocusedView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12534;
  v8[3] = &unk_30EA8;
  v8[4] = self;
  v6 = [nextFocusedView _accessibilityFindAncestor:v8 startWithSelf:1];

  if (v6 == self)
  {
    delegate = [(AXSpeakOverlayControlBar *)self delegate];
    [delegate barDidReceiveFocus];
  }
}

- (AXSpeakOverlayControlBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end