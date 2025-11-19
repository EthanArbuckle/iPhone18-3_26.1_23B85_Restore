@interface AXSpeakOverlayControlBar
+ (CGSize)controlBarSize;
+ (CGSize)nubbitSize;
- (AXSpeakOverlayControlBar)initWithFrame:(CGRect)a3;
- (AXSpeakOverlayControlBarDelegate)delegate;
- (id)_addButtonWithImageName:(id)a3 accessibilityLabel:(id)a4 round:(BOOL)a5 action:(SEL)a6;
- (id)_buttons;
- (id)_roundButtons;
- (id)_squareButtons;
- (void)_addButtonConstraints:(id)a3;
- (void)_fastForwardButtonPressed;
- (void)_handlePan:(id)a3;
- (void)_headerTapped:(id)a3;
- (void)_loadButtonsAndConstraints:(id)a3;
- (void)_playPauseButtonPressed;
- (void)_rewindButtonPressed;
- (void)_speakUnderFingerButtonPressed;
- (void)_speedButtonPressed;
- (void)_startNewReadAllFromGesture:(id)a3;
- (void)_stopButtonPressed;
- (void)_stopSpeakFingerButtonPressed;
- (void)_tabModeButtonPressed;
- (void)_updateAccessibilityElements;
- (void)_updateButton:(id)a3 withImageName:(id)a4 accessibilityLabel:(id)a5;
- (void)_updateSpeedButtonTitle;
- (void)_voiceOverStatusChanged;
- (void)changeToPauseButton;
- (void)changeToResumeButton;
- (void)changeToStopButton;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)showErrorMessage:(id)a3;
- (void)showLoading;
- (void)showMainUI;
- (void)showSpeakFingerUI;
- (void)updateButtonConstraints;
- (void)updateForTabModeChangeUsingSpeakFingerButton:(BOOL)a3;
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

- (AXSpeakOverlayControlBar)initWithFrame:(CGRect)a3
{
  v63.receiver = self;
  v63.super_class = AXSpeakOverlayControlBar;
  v3 = [(AXSpeakOverlayControlBar *)&v63 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v28 = [(UILabel *)v3->_errorLabel leadingAnchor];
    v29 = [(AXSpeakScreenButton *)v3->_speakFingerButton trailingAnchor];
    v30 = [v28 constraintEqualToSystemSpacingAfterAnchor:v29 multiplier:1.0];
    [v6 addObject:v30];

    v31 = [(AXSpeakScreenButton *)v3->_speedButton leadingAnchor];
    v32 = [(UILabel *)v3->_errorLabel trailingAnchor];
    v33 = [v31 constraintEqualToSystemSpacingAfterAnchor:v32 multiplier:1.0];
    [v6 addObject:v33];

    v34 = [(AXSpeakScreenButton *)v3->_speedButton titleLabel];
    v35 = [v34 leadingAnchor];
    v36 = [(AXSpeakScreenButton *)v3->_speedButton leadingAnchor];
    v37 = [v35 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v36 multiplier:1.0];
    [v6 addObject:v37];

    v38 = [(AXSpeakScreenButton *)v3->_speedButton trailingAnchor];
    v39 = [(AXSpeakScreenButton *)v3->_speedButton titleLabel];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v40 multiplier:1.0];
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
  v4 = [(AXSpeakOverlayControlBar *)self stateManager];
  v3 = [v4 currentControllerTitle];
  [(UILabel *)self->_headerLabel setText:v3];
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
  v4 = [v3 showSpeechController];

  if ((v4 & 1) == 0)
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

- (void)_headerTapped:(id)a3
{
  v3 = [(AXSpeakOverlayControlBar *)self delegate];
  [v3 headerTapped];
}

- (void)_handlePan:(id)a3
{
  v15 = a3;
  v4 = [v15 state];
  if (v4 == &dword_0 + 2)
  {
    [v15 translationInView:self];
    v10 = v9;
    v12 = v11;
    v13 = [(AXSpeakOverlayControlBar *)self delegate];
    p_panGestureAnchor = &self->_panGestureAnchor;
    [v13 controlBarDragged:v15 gestureRecognizer:{v10 - p_panGestureAnchor->x, v12 - p_panGestureAnchor->y}];

    v6 = v15;
    p_panGestureAnchor->x = v10;
    p_panGestureAnchor->y = v12;
  }

  else
  {
    v5 = v4 == &dword_0 + 1;
    v6 = v15;
    if (v5)
    {
      [v15 translationInView:self];
      v6 = v15;
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

- (void)showErrorMessage:(id)a3
{
  v4 = a3;
  [(AXSpeakOverlayControlBar *)self setHidesMainViews:1];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setHidden:1];
  [(UILabel *)self->_errorLabel setText:v4];

  [(UILabel *)self->_errorLabel setHidden:0];
  v5 = UIAccessibilityLayoutChangedNotification;
  errorLabel = self->_errorLabel;

  UIAccessibilityPostNotification(v5, errorLabel);
}

- (void)_updateButton:(id)a3 withImageName:(id)a4 accessibilityLabel:(id)a5
{
  v23 = a4;
  v7 = a5;
  v8 = a3;
  if ([v23 hasPrefix:@"SCAT"])
  {
    v9 = [NSBundle bundleWithPath:@"/System/Library/CoreServices/AssistiveTouch.app"];
    v10 = [UIImage imageNamed:v23 inBundle:v9];
  }

  else
  {
    v11 = [UIImage systemImageNamed:v23];
    v12 = [UIFontDescriptor defaultFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
    v9 = [v12 fontDescriptorWithSymbolicTraits:2];

    v13 = [v9 fontAttributes];
    v14 = [v13 objectForKey:UIFontDescriptorTraitsAttribute];

    [v9 pointSize];
    v16 = v15;
    v17 = [v14 objectForKey:UIFontWeightTrait];
    [v17 floatValue];
    v19 = [UIImageSymbolConfiguration configurationWithPointSize:UIImageSymbolWeightForFontWeight(v18) weight:3 scale:v16];

    v20 = [v19 configurationWithoutTextStyle];

    v10 = [v11 imageWithConfiguration:v20];
  }

  v21 = +[UIColor whiteColor];
  v22 = [v10 imageWithTintColor:v21];

  [v8 setImage:v22 forState:0];
  [v8 setAccessibilityLabel:v7];
}

- (id)_addButtonWithImageName:(id)a3 accessibilityLabel:(id)a4 round:(BOOL)a5 action:(SEL)a6
{
  v6 = a5;
  v64 = a3;
  v63 = a4;
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

  if (v6)
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
  v22 = [v13 contentView];
  [v22 addSubview:v21];

  [v8 setBorderEffectView:v13];
  v23 = [UIVisualEffectView alloc];
  v24 = [UIBlurEffect effectWithStyle:17];
  v25 = [UIVibrancyEffect effectForBlurEffect:v24 style:0];
  v26 = [v23 initWithEffect:v25];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setButtonEffectView:v26];
  v27 = [v26 contentView];
  [v27 addSubview:v8];

  v57 = [v21 leadingAnchor];
  v58 = [v13 contentView];
  v56 = [v58 leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v65[0] = v55;
  v53 = [v21 trailingAnchor];
  v54 = [v13 contentView];
  v52 = [v54 trailingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v65[1] = v51;
  v49 = [v21 topAnchor];
  v50 = [v13 contentView];
  v48 = [v50 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v65[2] = v47;
  v59 = v21;
  v45 = [v21 bottomAnchor];
  v60 = v13;
  v46 = [v13 contentView];
  v44 = [v46 bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v65[3] = v43;
  v42 = [v26 topAnchor];
  v41 = [v8 topAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v65[4] = v40;
  v39 = [v26 bottomAnchor];
  v38 = [v8 bottomAnchor];
  v28 = [v39 constraintEqualToAnchor:v38];
  v65[5] = v28;
  v29 = [v26 leadingAnchor];
  v30 = [v8 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v65[6] = v31;
  v32 = [v26 trailingAnchor];
  v33 = [v8 trailingAnchor];
  [v32 constraintEqualToAnchor:v33];
  v35 = v34 = v8;
  v65[7] = v35;
  v36 = [NSArray arrayWithObjects:v65 count:8];
  [NSLayoutConstraint activateConstraints:v36];

  if (a6)
  {
    [v34 addTarget:self action:a6 forControlEvents:64];
  }

  [(AXSpeakOverlayControlBar *)self _updateButton:v34 withImageName:v64 accessibilityLabel:v63];
  [(AXSpeakOverlayControlBar *)self addSubview:v60];
  [(AXSpeakOverlayControlBar *)self addSubview:v26];

  return v34;
}

- (void)updateButtonConstraints
{
  v3 = [(AXSpeakOverlayControlBar *)self maximizedConstraints];
  [NSLayoutConstraint deactivateConstraints:v3];

  v4 = [(AXSpeakOverlayControlBar *)self minimizedConstraints];
  [NSLayoutConstraint deactivateConstraints:v4];

  v5 = objc_opt_new();
  [(AXSpeakOverlayControlBar *)self _addButtonConstraints:v5];

  v7 = [(AXSpeakOverlayControlBar *)self stateManager];
  if ([v7 inTabMode])
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

- (void)_addButtonConstraints:(id)a3
{
  v128 = a3;
  v122 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v123 = [(AXSpeakOverlayControlBar *)self _squareButtons];
  v127 = [v123 count];
  if (v127)
  {
    if (v127 == &dword_0 + 1)
    {
      v5 = [v123 objectAtIndexedSubscript:0];
      v6 = [NSLayoutConstraint constraintWithItem:v5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [v128 addObject:v6];

      v7 = [NSLayoutConstraint constraintWithItem:v5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [v128 addObject:v7];

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

      v13 = [v5 borderEffectView];
      v14 = [NSLayoutConstraint constraintWithItem:v13 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [v128 addObject:v14];

      v15 = [v5 borderEffectView];
      v16 = [NSLayoutConstraint constraintWithItem:v15 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
      [v128 addObject:v16];

      v17 = [v5 borderEffectView];
      if (AXDeviceIsPad())
      {
        v18 = 27.0;
      }

      else
      {
        v18 = 66.0;
      }

      v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v18];
      [v4 addObject:v19];

      v20 = [v5 borderEffectView];
      v21 = [NSLayoutConstraint constraintWithItem:v20 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v4 addObject:v21];

      v22 = [v5 borderEffectView];
      v23 = [NSLayoutConstraint constraintWithItem:v22 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
      [v122 addObject:v23];

      v24 = [v5 borderEffectView];
      v25 = [NSLayoutConstraint constraintWithItem:v24 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      [v122 addObject:v25];
    }

    else
    {
      v26 = 0;
      v27 = &MKBGetDeviceLockState_ptr;
      v121 = self;
      do
      {
        v28 = [v123 objectAtIndexedSubscript:{v26, v121}];
        v29 = [NSLayoutConstraint constraintWithItem:v28 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [v128 addObject:v29];

        v30 = [NSLayoutConstraint constraintWithItem:v28 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [v128 addObject:v30];

        v31 = [v28 borderEffectView];
        v32 = [NSLayoutConstraint constraintWithItem:v31 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [v128 addObject:v32];

        v33 = [v28 borderEffectView];
        v34 = [NSLayoutConstraint constraintWithItem:v33 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:60.0];
        [v128 addObject:v34];

        if (AXDeviceIsPad())
        {
          v35 = 60.0;
        }

        else
        {
          v35 = 3.0;
        }

        v36 = [NSLayoutConstraint constraintWithItem:v28 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v35];
        v37 = [v28 borderEffectView];
        if (AXDeviceIsPad())
        {
          v38 = 60.0;
        }

        else
        {
          v38 = 3.0;
        }

        v39 = [NSLayoutConstraint constraintWithItem:v37 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v38];

        if (!v26)
        {
          [v4 addObject:v36];
          [v4 addObject:v39];
        }

        v125 = v39;
        v126 = v36;
        v40 = [v27[241] sharedInstance];
        v41 = [v40 showSpeechController];
        v42 = 3.5;
        v43 = 3.5;
        if ((v41 & 1) == 0)
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

        v45 = [v28 borderEffectView];
        v46 = [v27[241] sharedInstance];
        if (([v46 showSpeechController] & 1) == 0)
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

        v47 = [NSLayoutConstraint constraintWithItem:v45 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:-v42];

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
          v51 = [v123 objectAtIndexedSubscript:v26 - 1];
          v52 = [NSLayoutConstraint constraintWithItem:v28 attribute:1 relatedBy:0 toItem:v51 attribute:2 multiplier:1.0 constant:3.5];
          [v4 addObject:v52];

          [v28 borderEffectView];
          v54 = v53 = v4;
          v55 = [v51 borderEffectView];
          v56 = [NSLayoutConstraint constraintWithItem:v54 attribute:1 relatedBy:0 toItem:v55 attribute:2 multiplier:1.0 constant:3.5];
          [v53 addObject:v56];

          v57 = [v123 objectAtIndexedSubscript:0];
          v58 = [NSLayoutConstraint constraintWithItem:v28 attribute:3 relatedBy:0 toItem:v57 attribute:3 multiplier:1.0 constant:0.0];
          [v128 addObject:v58];

          v59 = [v28 borderEffectView];
          v60 = [v123 objectAtIndexedSubscript:0];
          v61 = [v60 borderEffectView];
          v62 = [NSLayoutConstraint constraintWithItem:v59 attribute:3 relatedBy:0 toItem:v61 attribute:3 multiplier:1.0 constant:0.0];
          [v128 addObject:v62];

          v4 = v53;
          v48 = v44;

          self = v121;
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

          v51 = [v28 borderEffectView];
          if (AXDeviceIsPad())
          {
            v65 = 27.0;
          }

          else
          {
            v65 = 66.0;
          }

          v59 = [NSLayoutConstraint constraintWithItem:v51 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v65];
          [v4 addObject:v59];
        }

        v66 = [NSLayoutConstraint constraintWithItem:v28 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
        [v122 addObject:v66];

        v67 = [NSLayoutConstraint constraintWithItem:v28 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
        [v122 addObject:v67];

        v68 = [v28 borderEffectView];
        v69 = [NSLayoutConstraint constraintWithItem:v68 attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
        [v122 addObject:v69];

        v70 = [v28 borderEffectView];
        v71 = [NSLayoutConstraint constraintWithItem:v70 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
        [v122 addObject:v71];

        ++v26;
        v72 = v127-- == &dword_0 + 1;
        v27 = &MKBGetDeviceLockState_ptr;
      }

      while (!v72);
    }
  }

  v73 = [(AXSpeakOverlayControlBar *)self _roundButtons];
  v74 = [v73 firstObject];

  if (AXDeviceIsPad())
  {
    v75 = 33.0;
  }

  else
  {
    v75 = 9.0;
  }

  v76 = [NSLayoutConstraint constraintWithItem:v74 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v75];
  [v4 addObject:v76];

  v77 = [NSLayoutConstraint constraintWithItem:v74 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v77];

  v78 = [NSLayoutConstraint constraintWithItem:v74 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v78];

  if (AXDeviceIsPad())
  {
    v79 = 6.0;
  }

  else
  {
    v79 = 9.0;
  }

  v80 = [NSLayoutConstraint constraintWithItem:v74 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v79];
  [v4 addObject:v80];

  v81 = [NSLayoutConstraint constraintWithItem:v74 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v81];

  v82 = [NSLayoutConstraint constraintWithItem:v74 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v82];

  v83 = [v74 borderEffectView];
  if (AXDeviceIsPad())
  {
    v84 = 33.0;
  }

  else
  {
    v84 = 9.0;
  }

  v85 = [NSLayoutConstraint constraintWithItem:v83 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v84];
  [v4 addObject:v85];

  v86 = [v74 borderEffectView];
  v87 = [NSLayoutConstraint constraintWithItem:v86 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v87];

  v88 = [v74 borderEffectView];
  v89 = [NSLayoutConstraint constraintWithItem:v88 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v89];

  v90 = [v74 borderEffectView];
  if (AXDeviceIsPad())
  {
    v91 = 6.0;
  }

  else
  {
    v91 = 9.0;
  }

  v92 = [NSLayoutConstraint constraintWithItem:v90 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v91];
  [v4 addObject:v92];

  v93 = [v74 borderEffectView];
  v94 = [NSLayoutConstraint constraintWithItem:v93 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v94];

  v95 = [v74 borderEffectView];
  v96 = [NSLayoutConstraint constraintWithItem:v95 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v96];

  v97 = [(AXSpeakOverlayControlBar *)self _roundButtons];
  v98 = [v97 lastObject];

  if (AXDeviceIsPad())
  {
    v99 = 33.0;
  }

  else
  {
    v99 = 9.0;
  }

  v100 = [NSLayoutConstraint constraintWithItem:v98 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v99];
  [v4 addObject:v100];

  if (AXDeviceIsPad())
  {
    v101 = -6.0;
  }

  else
  {
    v101 = -9.0;
  }

  v102 = [NSLayoutConstraint constraintWithItem:v98 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:v101];
  [v4 addObject:v102];

  v103 = [NSLayoutConstraint constraintWithItem:v98 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v103];

  v104 = [NSLayoutConstraint constraintWithItem:v98 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v104];

  v105 = [NSLayoutConstraint constraintWithItem:v98 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v105];

  v106 = [NSLayoutConstraint constraintWithItem:v98 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v106];

  v107 = [v98 borderEffectView];
  if (AXDeviceIsPad())
  {
    v108 = 33.0;
  }

  else
  {
    v108 = 9.0;
  }

  v109 = [NSLayoutConstraint constraintWithItem:v107 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v108];
  [v4 addObject:v109];

  v110 = [v98 borderEffectView];
  if (AXDeviceIsPad())
  {
    v111 = -6.0;
  }

  else
  {
    v111 = -9.0;
  }

  v112 = [NSLayoutConstraint constraintWithItem:v110 attribute:2 relatedBy:0 toItem:self attribute:2 multiplier:1.0 constant:v111];
  [v4 addObject:v112];

  v113 = [v98 borderEffectView];
  v114 = [NSLayoutConstraint constraintWithItem:v113 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v114];

  v115 = [v98 borderEffectView];
  v116 = [NSLayoutConstraint constraintWithItem:v115 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:48.0];
  [v128 addObject:v116];

  v117 = [v98 borderEffectView];
  v118 = [NSLayoutConstraint constraintWithItem:v117 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:6.0];
  [v122 addObject:v118];

  v119 = [v98 borderEffectView];
  v120 = [NSLayoutConstraint constraintWithItem:v119 attribute:1 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:6.0];
  [v122 addObject:v120];

  [(AXSpeakOverlayControlBar *)self setMaximizedConstraints:v4];
  [(AXSpeakOverlayControlBar *)self setMinimizedConstraints:v122];
  [v128 addObjectsFromArray:v4];
}

- (void)_loadButtonsAndConstraints:(id)a3
{
  v36 = a3;
  v4 = AXSpeakThisLocString(@"MINIMIZE");
  v5 = [(AXSpeakOverlayControlBar *)self _addButtonWithImageName:@"chevron.backward" accessibilityLabel:v4 round:1 action:0];
  tabModeButton = self->_tabModeButton;
  self->_tabModeButton = v5;

  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_speakUnderFingerButtonPressed"];
  [v7 setNumberOfTapsRequired:2];
  [(AXSpeakOverlayControlBar *)self setDoubleTapRecognizer:v7];
  v8 = self->_tabModeButton;
  v9 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [(AXSpeakScreenButton *)v8 addGestureRecognizer:v9];

  v10 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tabModeButtonPressed"];
  [v10 setNumberOfTapsRequired:1];
  v11 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [v10 requireGestureRecognizerToFail:v11];

  [(AXSpeakOverlayControlBar *)self setSingleTapRecognizer:v10];
  v12 = self->_tabModeButton;
  v13 = [(AXSpeakOverlayControlBar *)self singleTapRecognizer];
  [(AXSpeakScreenButton *)v12 addGestureRecognizer:v13];

  v14 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_startNewReadAllFromGesture:"];
  [(AXSpeakOverlayControlBar *)self setLongPressRecognizer:v14];
  v15 = self->_tabModeButton;
  v16 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
  [(AXSpeakScreenButton *)v15 addGestureRecognizer:v16];

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

  v31 = [(AXSpeakScreenButton *)self->_speedButton titleLabel];
  [v31 setAdjustsFontSizeToFitWidth:1];

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

  [(AXSpeakOverlayControlBar *)self _addButtonConstraints:v36];
}

- (void)_updateSpeedButtonTitle
{
  v3 = [(AXSpeakOverlayControlBar *)self delegate];
  [v3 speakingRateAsMultiplier];
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
  v3 = [(AXSpeakOverlayControlBar *)self delegate];
  [v3 stopButtonPressed];

  [(AXSpeakOverlayControlBar *)self hideStopButton];

  [(AXSpeakOverlayControlBar *)self showSpeakFingerUI];
}

- (void)_stopSpeakFingerButtonPressed
{
  v2 = [(AXSpeakOverlayControlBar *)self delegate];
  [v2 stopSpeakFingerButtonPressed];
}

- (void)_rewindButtonPressed
{
  v2 = [(AXSpeakOverlayControlBar *)self delegate];
  [v2 rewindButtonPressed];
}

- (void)_startNewReadAllFromGesture:(id)a3
{
  v7 = a3;
  v4 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
  if (v4 == v7 && [v7 state] == &dword_0 + 1)
  {

LABEL_7:
    v4 = [(AXSpeakOverlayControlBar *)self delegate];
    [v4 startNewReadAllFromGesture];
    goto LABEL_8;
  }

  v5 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  if (v5 == v7)
  {
    v6 = [v7 state];

    if (v6 != &dword_0 + 3)
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
  v4 = [v3 speakFingerState];

  v5 = [(AXSpeakOverlayControlBar *)self delegate];
  v8 = v5;
  if (v4 == &dword_0 + 3)
  {
    [v5 stopSpeakFingerButtonPressed];
  }

  else
  {
    v6 = [v5 isSpeaking];

    v7 = [(AXSpeakOverlayControlBar *)self delegate];
    v8 = v7;
    if (v6)
    {
      [v7 pauseButtonPressed];
    }

    else
    {
      [v7 playButtonPressed];
    }
  }
}

- (void)_fastForwardButtonPressed
{
  v2 = [(AXSpeakOverlayControlBar *)self delegate];
  [v2 fastForwardButtonPressed];
}

- (void)_speedButtonPressed
{
  v3 = [(AXSpeakOverlayControlBar *)self delegate];
  [v3 speedButtonPressed];

  [(AXSpeakOverlayControlBar *)self _updateSpeedButtonTitle];
}

- (void)_tabModeButtonPressed
{
  v2 = [(AXSpeakOverlayControlBar *)self delegate];
  [v2 tabModeButtonPressed];
}

- (void)_speakUnderFingerButtonPressed
{
  v2 = [(AXSpeakOverlayControlBar *)self delegate];
  [v2 speakUnderFingerButtonPressed];
}

- (void)updateNubbitGestureRecognizers
{
  v3 = [(AXSpeakOverlayControlBar *)self stateManager];
  v4 = [v3 inTabMode];

  if ((v4 & 1) == 0)
  {
    tabModeButton = self->_tabModeButton;
    v11 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
    [(AXSpeakScreenButton *)tabModeButton removeGestureRecognizer:v11];

    v12 = self->_tabModeButton;
    v22 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
    [(AXSpeakScreenButton *)v12 removeGestureRecognizer:?];
    goto LABEL_13;
  }

  v5 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
  [v5 removeTarget:0 action:0];

  v6 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [v6 removeTarget:0 action:0];

  v7 = +[AXSettings sharedInstance];
  v8 = [v7 speechControllerLongPressAction];

  if (v8 == &dword_0 + 2)
  {
    v9 = &selRef__speakUnderFingerButtonPressed;
    goto LABEL_7;
  }

  if (v8 == &dword_0 + 1)
  {
    v9 = &selRef__startNewReadAllFromGesture_;
LABEL_7:
    v13 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
    [v13 addTarget:self action:*v9];

    v14 = self->_tabModeButton;
    v15 = [(AXSpeakOverlayControlBar *)self longPressRecognizer];
    [(AXSpeakScreenButton *)v14 addGestureRecognizer:v15];
  }

  v16 = +[AXSettings sharedInstance];
  v17 = [v16 speechControllerDoubleTapAction];

  if (v17 == &dword_0 + 1)
  {
    v18 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
    v19 = v18;
    v20 = "_startNewReadAllFromGesture:";
  }

  else
  {
    if (v17 != &dword_0 + 2)
    {
      return;
    }

    v18 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
    v19 = v18;
    v20 = "_speakUnderFingerButtonPressed";
  }

  [v18 addTarget:self action:v20];

  v21 = self->_tabModeButton;
  v22 = [(AXSpeakOverlayControlBar *)self doubleTapRecognizer];
  [(AXSpeakScreenButton *)v21 addGestureRecognizer:?];
LABEL_13:
}

- (void)updateForTabModeChangeUsingSpeakFingerButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(AXSpeakOverlayControlBar *)self stateManager];
  v6 = [v5 inTabMode];

  if (v6)
  {
    v7 = [(AXSpeakOverlayControlBar *)self maximizedConstraints];
    [NSLayoutConstraint deactivateConstraints:v7];

    tabModeButton = self->_tabModeButton;
    v9 = AXSpeakThisLocString(@"MAXIMIZE");
    [(AXSpeakOverlayControlBar *)self _updateButton:tabModeButton withImageName:@"chevron.forward" accessibilityLabel:v9];

    [(UILabel *)self->_headerLabel setAlpha:0.0];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:0.0];
    v10 = self->_tabModeButton;
    if (v3)
    {
      v11 = self->_speakFingerButton;

      v10 = v11;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [(AXSpeakOverlayControlBar *)self _buttons];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if (v17 != v10)
          {
            [(AXSpeakScreenButton *)v17 setAlpha:0.0];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    [(AXSpeakScreenButton *)v10 setAlpha:1.0];
    [(AXSpeakOverlayControlBar *)self bringSubviewToFront:v10];
    v18 = [(AXSpeakOverlayControlBar *)self minimizedConstraints];
    [NSLayoutConstraint activateConstraints:v18];
  }

  else
  {
    v19 = [(AXSpeakOverlayControlBar *)self minimizedConstraints];
    [NSLayoutConstraint deactivateConstraints:v19];

    v20 = self->_tabModeButton;
    v21 = AXSpeakThisLocString(@"MINIMIZE");
    [(AXSpeakOverlayControlBar *)self _updateButton:v20 withImageName:@"chevron.backward" accessibilityLabel:v21];

    [(UILabel *)self->_headerLabel setAlpha:1.0];
    [(UIActivityIndicatorView *)self->_activityIndicatorView setAlpha:1.0];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = [(AXSpeakOverlayControlBar *)self _buttons];
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(v22);
          }

          [*(*(&v27 + 1) + 8 * j) setAlpha:1.0];
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }

    v10 = [(AXSpeakOverlayControlBar *)self maximizedConstraints];
    [NSLayoutConstraint activateConstraints:v10];
  }

  [(AXSpeakOverlayControlBar *)self _updateAccessibilityElements];
  [(AXSpeakOverlayControlBar *)self _updateSpeedButtonTitle];
  [(AXSpeakOverlayControlBar *)self setNeedsLayout];
}

- (id)_buttons
{
  v3 = [(AXSpeakOverlayControlBar *)self _squareButtons];
  v4 = [(AXSpeakOverlayControlBar *)self _roundButtons];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

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
  v3 = [(AXSpeakOverlayControlBar *)self stateManager];
  v4 = [v3 inTabMode];

  if (v4)
  {
    tabModeButton = self->_tabModeButton;
    p_tabModeButton = &tabModeButton;
    v6 = 1;
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 showSpeechController];

    v9 = self->_tabModeButton;
    headerLabel = self->_headerLabel;
    if (v8)
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

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_12534;
  v8[3] = &unk_30EA8;
  v8[4] = self;
  v6 = [v5 _accessibilityFindAncestor:v8 startWithSelf:1];

  if (v6 == self)
  {
    v7 = [(AXSpeakOverlayControlBar *)self delegate];
    [v7 barDidReceiveFocus];
  }
}

- (AXSpeakOverlayControlBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end