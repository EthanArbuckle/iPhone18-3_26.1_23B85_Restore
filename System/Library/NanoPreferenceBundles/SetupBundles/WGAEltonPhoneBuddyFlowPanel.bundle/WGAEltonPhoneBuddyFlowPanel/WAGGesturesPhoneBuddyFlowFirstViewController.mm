@interface WAGGesturesPhoneBuddyFlowFirstViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (WAGGesturesPhoneBuddyFlowFirstViewController)init;
- (double)_heightForLabelWithTheLongestStringAndWidth:(double)a3;
- (id)_gestureInstructionLabelText;
- (id)_phoneBuddyFlowPanelLog;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_setupViews;
- (void)dealloc;
- (void)handleSegmentAction:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WAGGesturesPhoneBuddyFlowFirstViewController

- (WAGGesturesPhoneBuddyFlowFirstViewController)init
{
  v9.receiver = self;
  v9.super_class = WAGGesturesPhoneBuddyFlowFirstViewController;
  v2 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)&v9 initWithTitle:&stru_C438 detailText:0 icon:0 contentLayout:3];
  v3 = v2;
  if (v2)
  {
    v4 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)v2 _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138412546;
      v11 = v6;
      v12 = 2080;
      v13 = "[WAGGesturesPhoneBuddyFlowFirstViewController init]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
    }

    [(WAGGesturesPhoneBuddyFlowFirstViewController *)v3 setStyle:2];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v3 selector:"_handleApplicationDidBecomeActiveNotification" name:UIApplicationDidBecomeActiveNotification object:0];

    v3->_uiState = 0;
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WAGGesturesPhoneBuddyFlowFirstViewController;
  [(WAGGesturesPhoneBuddyFlowFirstViewController *)&v6 viewDidLoad];
  v3 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "[WAGGesturesPhoneBuddyFlowFirstViewController viewDidLoad]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _setupViews];
}

- (void)dealloc
{
  v3 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v9 = v5;
    v10 = 2080;
    v11 = "[WAGGesturesPhoneBuddyFlowFirstViewController dealloc]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel --  %@ %s", buf, 0x16u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIApplicationDidBecomeActiveNotification object:0];

  v7.receiver = self;
  v7.super_class = WAGGesturesPhoneBuddyFlowFirstViewController;
  [(WAGGesturesPhoneBuddyFlowFirstViewController *)&v7 dealloc];
}

- (void)_setupViews
{
  v3 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v71 = v5;
    v72 = 2080;
    v73 = "[WAGGesturesPhoneBuddyFlowFirstViewController _setupViews]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", buf, 0x16u);
  }

  v6 = +[UIColor blackColor];
  v7 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = objc_alloc_init(UIView);
  containerContentView = self->_containerContentView;
  self->_containerContentView = v8;

  v10 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self contentView];
  [v10 addSubview:self->_containerContentView];

  v11 = +[UIColor blackColor];
  [(UIView *)self->_containerContentView setBackgroundColor:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 pathForResource:@"flick_buddy_flow_panel_instruction_video" ofType:@"m4v"];

  v14 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v13;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- flick file path is %@", buf, 0xCu);
  }

  v67 = v13;
  if (v13)
  {
    v15 = [NSURL fileURLWithPath:v13];
    v16 = [[WAGGesturesPhoneBuddyFlowMediaPlayerView alloc] initWithVideoURL:v15 placeholderImageName:@"flick_buddy_flow_panel_instruction_first_frame"];
    flickMediaView = self->_flickMediaView;
    self->_flickMediaView = v16;

    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self->_flickMediaView setHidden:1];
    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self->_flickMediaView stopAndResetVideoPlaybackToStartWithFadeInAnimation:0];
    [(UIView *)self->_containerContentView addSubview:self->_flickMediaView];
  }

  else
  {
    v15 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- flick file path is nil.", buf, 2u);
    }
  }

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 pathForResource:@"elton_instruction" ofType:@"m4v"];

  v20 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v71 = v19;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- flick file path is %@", buf, 0xCu);
  }

  v66 = v19;
  if (v19)
  {
    v21 = [NSURL fileURLWithPath:v19];
    v22 = [[WAGGesturesPhoneBuddyFlowMediaPlayerView alloc] initWithVideoURL:v21 placeholderImageName:@"elton_first_frame_fpo"];
    doubleTapMediaView = self->_doubleTapMediaView;
    self->_doubleTapMediaView = v22;

    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self->_doubleTapMediaView setHidden:1];
    [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self->_doubleTapMediaView stopAndResetVideoPlaybackToStartWithFadeInAnimation:1];
    [(UIView *)self->_containerContentView addSubview:self->_doubleTapMediaView];
  }

  else
  {
    v21 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- double tap file path is nil.", buf, 2u);
    }
  }

  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SEGMENTED_CONTROL_FLICK" value:&stru_C438 table:@"Localizable_Flick_Buddy"];
  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"SEGMENTED_CONTROL_DOUBLE_TAP" value:&stru_C438 table:@"Localizable_Flick_Buddy"];
  v28 = [NSArray arrayWithObjects:v25, v27, 0];

  v65 = v28;
  v29 = [[UISegmentedControl alloc] initWithItems:v28];
  segmentedControl = self->_segmentedControl;
  self->_segmentedControl = v29;

  [(UISegmentedControl *)self->_segmentedControl addTarget:self action:"handleSegmentAction:" forControlEvents:4096];
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:0];
  v31 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self contentView];
  [v31 addSubview:self->_segmentedControl];

  v32 = objc_alloc_init(UILabel);
  gestureInstructionLabel = self->_gestureInstructionLabel;
  self->_gestureInstructionLabel = v32;

  v34 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _gestureInstructionLabelText];
  [(UILabel *)self->_gestureInstructionLabel setText:v34];

  v35 = +[UIColor clearColor];
  [(UILabel *)self->_gestureInstructionLabel setBackgroundColor:v35];

  [(UILabel *)self->_gestureInstructionLabel setNumberOfLines:0];
  [(UILabel *)self->_gestureInstructionLabel setLineBreakMode:0];
  v36 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_gestureInstructionLabel setFont:v36];

  [(UILabel *)self->_gestureInstructionLabel setAdjustsFontForContentSizeCategory:1];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [(UILabel *)self->_gestureInstructionLabel setTextAlignment:1];
  }

  [(UILabel *)self->_gestureInstructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self contentView];
  [v37 addSubview:self->_gestureInstructionLabel];

  v63 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
  v61 = [(UIView *)self->_containerContentView leadingAnchor];
  v59 = [v63 constraintEqualToAnchor:v61];
  v69[0] = v59;
  v57 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
  v55 = [(UIView *)self->_containerContentView trailingAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v69[1] = v53;
  v38 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
  v39 = [(UIView *)self->_containerContentView bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v69[2] = v40;
  v41 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
  v42 = [(UILabel *)self->_gestureInstructionLabel topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:-20.0];
  v69[3] = v43;
  v44 = [NSArray arrayWithObjects:v69 count:4];
  [NSLayoutConstraint activateConstraints:v44];

  v64 = [(UILabel *)self->_gestureInstructionLabel leadingAnchor];
  v62 = [(UISegmentedControl *)self->_segmentedControl leadingAnchor];
  v60 = [v64 constraintEqualToAnchor:v62];
  v68[0] = v60;
  v58 = [(UILabel *)self->_gestureInstructionLabel trailingAnchor];
  v56 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
  v54 = [v58 constraintEqualToAnchor:v56];
  v68[1] = v54;
  v45 = [(UILabel *)self->_gestureInstructionLabel topAnchor];
  v46 = [(UISegmentedControl *)self->_segmentedControl bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v68[2] = v47;
  v48 = [(UILabel *)self->_gestureInstructionLabel bottomAnchor];
  v49 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self contentView];
  v50 = [v49 bottomAnchor];
  v51 = [v48 constraintEqualToAnchor:v50 constant:0.0];
  v68[3] = v51;
  v52 = [NSArray arrayWithObjects:v68 count:4];
  [NSLayoutConstraint activateConstraints:v52];
}

- (void)viewDidLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = WAGGesturesPhoneBuddyFlowFirstViewController;
  [(WAGGesturesPhoneBuddyFlowFirstViewController *)&v37 viewDidLayoutSubviews];
  v3 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self view];
  v4 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self headerView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self scrollView];
  [v3 convertRect:v13 fromView:{v6, v8, v10, v12}];
  MaxY = CGRectGetMaxY(v38);

  v15 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self view];
  [v15 bounds];
  v17 = v16 / 1.38;

  v18 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self view];
  [v18 bounds];
  v20 = v19 * 0.8;

  [(UISegmentedControl *)self->_segmentedControl frame];
  v22 = v21;
  [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _heightForLabelWithTheLongestStringAndWidth:v20];
  v24 = v23;
  v25 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self buttonTray];
  [v25 frame];
  MinY = CGRectGetMinY(v39);

  v27 = MinY - MaxY;
  v28 = 0.0;
  if (ceilf(v27) - (v24 + v17 + 20.0 + v22 + 20.0 + 25.0) >= 25.0)
  {
    v29 = (MinY + -25.0 - v24 + -20.0 - v22 - MaxY - v17) * 0.5;
    v28 = ceilf(v29);
  }

  v30 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self view];
  [v30 bounds];
  v32 = v31;

  [(UIView *)self->_containerContentView setFrame:0.0, v28, v32, v17];
  [(UIView *)self->_containerContentView bounds];
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self->_flickMediaView setFrame:?];
  [(UIView *)self->_containerContentView bounds];
  [(WAGGesturesPhoneBuddyFlowMediaPlayerView *)self->_doubleTapMediaView setFrame:?];
  v33 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self view];
  [v33 frame];
  v35 = (v34 - v20) * 0.5;
  [(UIView *)self->_containerContentView frame];
  [(UISegmentedControl *)self->_segmentedControl setFrame:v35, v28 + CGRectGetMaxY(v40), v20, v22];

  [(UISegmentedControl *)self->_segmentedControl frame];
  MinX = CGRectGetMinX(v41);
  [(UISegmentedControl *)self->_segmentedControl frame];
  [(UILabel *)self->_gestureInstructionLabel setFrame:MinX, CGRectGetMaxY(v42) + 20.0, v20, v24];
}

- (double)_heightForLabelWithTheLongestStringAndWidth:(double)a3
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CAPTION_FLICK" value:&stru_C438 table:@"Localizable_Flick_Buddy"];
  v19 = NSFontAttributeName;
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v20 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v5 boundingRectWithSize:1 options:v7 attributes:0 context:{a3, 1.79769313e308}];
  v9 = v8;

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CAPTION_DOUBLE_TAP" value:&stru_C438 table:@"Localizable_Flick_Buddy"];
  v17 = NSFontAttributeName;
  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v18 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v11 boundingRectWithSize:1 options:v13 attributes:0 context:{a3, 1.79769313e308}];
  v15 = v14;

  return fmax(v9, v15);
}

- (id)titleString
{
  v2 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGGesturesPhoneBuddyFlowFirstViewController titleString]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TITLE" value:&stru_C438 table:@"Localizable_Flick_Buddy"];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v8 = 138412546;
    v9 = v4;
    v10 = 2080;
    v11 = "[WAGGesturesPhoneBuddyFlowFirstViewController suggestedButtonTitle]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"BUTTON_TITLE" value:&stru_C438 table:@"Localizable_Flick_Buddy"];

  return v6;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _phoneBuddyFlowPanelLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v8 = 138412546;
    v9 = v6;
    v10 = 2080;
    v11 = "[WAGGesturesPhoneBuddyFlowFirstViewController suggestedButtonPressed:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Elton phone buddy panel -- %@ %s", &v8, 0x16u);
  }

  v7 = [(WAGGesturesPhoneBuddyFlowFirstViewController *)self miniFlowDelegate];
  [v7 miniFlowStepComplete:self];
}

- (id)_gestureInstructionLabelText
{
  uiState = self->_uiState;
  if (uiState)
  {
    if (uiState != 1)
    {
      goto LABEL_6;
    }

    v4 = @"CAPTION_DOUBLE_TAP";
  }

  else
  {
    v4 = @"CAPTION_FLICK";
  }

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v5 localizedStringForKey:v4 value:&stru_C438 table:@"Localizable_Flick_Buddy"];

LABEL_6:

  return v2;
}

- (void)handleSegmentAction:(id)a3
{
  v4 = [a3 selectedSegmentIndex] != 0;
  if (self->_uiState != v4)
  {
    self->_uiState = v4;

    [(WAGGesturesPhoneBuddyFlowFirstViewController *)self _updateViewsWithFadeInAnimaton:1];
  }
}

- (id)_phoneBuddyFlowPanelLog
{
  if (qword_10F88 != -1)
  {
    sub_5F70();
  }

  v3 = qword_10F80;

  return v3;
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end