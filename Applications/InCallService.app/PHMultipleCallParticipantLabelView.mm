@interface PHMultipleCallParticipantLabelView
- (BOOL)isDisplayStyleAmbient;
- (BOOL)isDisplayStyleMiniWindow;
- (BOOL)isSwapEnabled;
- (PHMultipleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)manager;
- (double)labelAlphaValueForActivityState:(unsigned __int16)state;
- (double)leadingTrailingLabelSpacing;
- (double)spacingBetweenLabels;
- (id)marqueeLabelFont;
- (id)statusLabelFont;
- (void)dealloc;
- (void)infoButtonTapped:(id)tapped;
- (void)setActivityState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setHidesLabel:(BOOL)label;
- (void)setLabelDescriptor:(id)descriptor;
- (void)setShowsActivitySpinner:(BOOL)spinner;
- (void)setShowsCallDetailsViewButton:(BOOL)button;
- (void)setShowsConferenceParticipantsButton:(BOOL)button;
- (void)setTextColor:(id)color;
- (void)setUpParticipantMarqueeLabelWithSwapEnabled;
- (void)setUpSwapButton;
- (void)swapButtonTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PHMultipleCallParticipantLabelView

- (PHMultipleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v69.receiver = self;
  v69.super_class = PHMultipleCallParticipantLabelView;
  v6 = [(PHAbstractCallParticipantLabelView *)&v69 initWithCallDisplayStyleManager:managerCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
    [(PHMultipleCallParticipantLabelView *)v7 setUpSwapButton];
    [(PHMultipleCallParticipantLabelView *)v7 setUpParticipantMarqueeLabelWithSwapEnabled];
    if (![(PHMultipleCallParticipantLabelView *)v7 isSwapEnabled])
    {
      marqueeLabelFont = [(PHMultipleCallParticipantLabelView *)v7 marqueeLabelFont];
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
      [participantMarqueeLabel setFont:marqueeLabelFont];
    }

    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    leadingAnchor = [participantMarqueeLabel2 leadingAnchor];
    leadingAnchor2 = [(PHMultipleCallParticipantLabelView *)v7 leadingAnchor];
    v13 = 0.0;
    if (!v7->_swapButton)
    {
      v13 = 24.0;
    }

    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v13];

    [v14 setActive:1];
    v15 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setHidden:1];
    [(PHMultipleCallParticipantLabelView *)v7 addSubview:v15];
    [(PHMultipleCallParticipantLabelView *)v7 setBadgeView:v15];
    [(PHMultipleCallParticipantLabelView *)v7 leadingTrailingLabelSpacing];
    v17 = v16;
    centerYAnchor = [v15 centerYAnchor];
    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    centerYAnchor2 = [participantMarqueeLabel3 centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v21];

    leadingAnchor3 = [v15 leadingAnchor];
    leadingAnchor4 = [(PHMultipleCallParticipantLabelView *)v7 leadingAnchor];
    v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v17];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v24];

    participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    leadingAnchor5 = [participantMarqueeLabel4 leadingAnchor];
    badgeView = [(PHMultipleCallParticipantLabelView *)v7 badgeView];
    trailingAnchor = [badgeView trailingAnchor];
    v29 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:6.0];

    [v29 setActive:0];
    v71 = v14;
    v30 = [NSArray arrayWithObjects:&v71 count:1];
    badgeViewHiddenLayoutConstraints = v7->_badgeViewHiddenLayoutConstraints;
    v7->_badgeViewHiddenLayoutConstraints = v30;

    v70 = v29;
    v32 = [NSArray arrayWithObjects:&v70 count:1];
    badgeViewVisibleLayoutConstraints = v7->_badgeViewVisibleLayoutConstraints;
    v7->_badgeViewVisibleLayoutConstraints = v32;

    [(PHMultipleCallParticipantLabelView *)v7 addConstraints:v7->_badgeViewHiddenLayoutConstraints];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraints:v7->_badgeViewVisibleLayoutConstraints];
    participantMarqueeLabel5 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v35 = [NSLayoutConstraint constraintWithItem:participantMarqueeLabel5 attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v35];

    v36 = objc_alloc_init(UILabel);
    [(PHAbstractCallParticipantLabelView *)v7 setStatusLabel:v36];

    statusLabel = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [statusLabel setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_StatusLabel"];

    if ([(PHMultipleCallParticipantLabelView *)v7 isSwapEnabled])
    {
      statusLabel2 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [statusLabel2 setPreferredVibrancy:1];

      v39 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
      statusLabel3 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [statusLabel3 setFont:v39];

      v41 = +[UIColor systemWhiteColor];
      statusLabel4 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [statusLabel4 setTextColor:v41];

      statusLabel5 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [statusLabel5 setAdjustsFontForContentSizeCategory:1];
    }

    else
    {
      statusLabelFont = [(PHMultipleCallParticipantLabelView *)v7 statusLabelFont];
      statusLabel6 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [statusLabel6 setFont:statusLabelFont];

      statusLabel5 = +[UIColor secondaryLabelColor];
      statusLabel7 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [statusLabel7 setTextColor:statusLabel5];
    }

    statusLabel8 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [statusLabel8 setTextAlignment:1];

    statusLabel9 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [statusLabel9 setTranslatesAutoresizingMaskIntoConstraints:0];

    statusLabel10 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [(PHMultipleCallParticipantLabelView *)v7 addSubview:statusLabel10];

    statusLabel11 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    participantMarqueeLabel6 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v52 = [NSLayoutConstraint constraintWithItem:statusLabel11 attribute:10 relatedBy:0 toItem:participantMarqueeLabel6 attribute:10 multiplier:1.0 constant:0.0];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v52];

    statusLabel12 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    callDisplayStyleManager = [(PHMultipleCallParticipantLabelView *)v7 callDisplayStyleManager];
    if ([callDisplayStyleManager usesLargeFormatUI])
    {
      v55 = 0.0;
    }

    else
    {
      v55 = -v17;
    }

    v56 = [NSLayoutConstraint constraintWithItem:statusLabel12 attribute:6 relatedBy:0 toItem:v7 attribute:6 multiplier:1.0 constant:v55];
    [(PHMultipleCallParticipantLabelView *)v7 setStatusLabelRightConstraint:v56];

    statusLabel13 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    participantMarqueeLabel7 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    [(PHMultipleCallParticipantLabelView *)v7 spacingBetweenLabels];
    v60 = [NSLayoutConstraint constraintWithItem:statusLabel13 attribute:5 relatedBy:1 toItem:participantMarqueeLabel7 attribute:6 multiplier:1.0 constant:v59];
    [(PHMultipleCallParticipantLabelView *)v7 setParticipantMarqueeLabelRightConstraint:v60];

    if (v7->_statusLabelRightConstraint)
    {
      [(PHMultipleCallParticipantLabelView *)v7 addConstraint:?];
    }

    statusLabel14 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    participantMarqueeLabel8 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v63 = [NSLayoutConstraint constraintWithItem:statusLabel14 attribute:3 relatedBy:0 toItem:participantMarqueeLabel8 attribute:3 multiplier:1.0 constant:0.0];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v63];

    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v7->_participantMarqueeLabelRightConstraint];
    participantMarqueeLabel9 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    LODWORD(v65) = 1144750080;
    [participantMarqueeLabel9 setContentCompressionResistancePriority:0 forAxis:v65];

    statusLabel15 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    LODWORD(v67) = 1148846080;
    [statusLabel15 setContentCompressionResistancePriority:0 forAxis:v67];

    if ([(PHMultipleCallParticipantLabelView *)v7 isSwapEnabled])
    {
      [(PHMultipleCallParticipantLabelView *)v7 bringSubviewToFront:v7->_swapButton];
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHMultipleCallParticipantLabelView;
  [(PHMultipleCallParticipantLabelView *)&v4 dealloc];
}

- (id)marqueeLabelFont
{
  if ([(PHMultipleCallParticipantLabelView *)self isDisplayStyleMiniWindow])
  {
    v3 = +[PHUIConfiguration multipleCallParticipantLabelFontMiniWindow];
  }

  else
  {
    if ([(PHMultipleCallParticipantLabelView *)self isDisplayStyleAmbient])
    {
      v4 = [UIFont systemFontOfSize:50.0 weight:UIFontWeightMedium];
      withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

      goto LABEL_7;
    }

    v3 = +[PHUIConfiguration multipleCallParticipantLabelFont];
  }

  withCaseSensitiveAttribute = v3;
LABEL_7:

  return withCaseSensitiveAttribute;
}

- (id)statusLabelFont
{
  if ([(PHMultipleCallParticipantLabelView *)self isDisplayStyleMiniWindow])
  {
    v3 = +[PHUIConfiguration multipleCallStatusLabelFontMiniWindow];
  }

  else
  {
    if ([(PHMultipleCallParticipantLabelView *)self isDisplayStyleAmbient])
    {
      v4 = [UIFont systemFontOfSize:50.0 weight:UIFontWeightMedium];
      withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

      goto LABEL_7;
    }

    v3 = +[PHUIConfiguration multipleCallStatusLabelFont];
  }

  withCaseSensitiveAttribute = v3;
LABEL_7:

  return withCaseSensitiveAttribute;
}

- (double)leadingTrailingLabelSpacing
{
  callDisplayStyleManager = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  v4 = 24.0;
  if (callDisplayStyle == 1)
  {
    v5 = +[PHUIConfiguration screenSize];
    if ((v5 - 10) <= 5)
    {
      return dbl_1002F8E00[(v5 - 10)];
    }
  }

  return v4;
}

- (double)spacingBetweenLabels
{
  callDisplayStyleManager = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  v4 = 15.0;
  if (callDisplayStyle == 1)
  {
    v5 = +[PHUIConfiguration screenSize];
    if ((v5 - 10) <= 5)
    {
      return dbl_1002F8E30[(v5 - 10)];
    }
  }

  return v4;
}

- (BOOL)isDisplayStyleMiniWindow
{
  callDisplayStyleManager = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 1;

  return v3;
}

- (BOOL)isDisplayStyleAmbient
{
  callDisplayStyleManager = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 3;

  return v3;
}

- (void)setLabelDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  strings = [descriptorCopy strings];
  firstObject = [strings firstObject];

  localizedSenderIdentity = [descriptorCopy localizedSenderIdentity];
  v7 = [localizedSenderIdentity length];

  badgeView = [(PHMultipleCallParticipantLabelView *)self badgeView];
  v9 = badgeView;
  if (v7)
  {
    [badgeView setHidden:0];

    localizedSenderIdentity2 = [descriptorCopy localizedSenderIdentity];
    badgeView2 = [(PHMultipleCallParticipantLabelView *)self badgeView];
    [badgeView2 setTitle:localizedSenderIdentity2];

    badgeViewVisibleLayoutConstraints = [(PHMultipleCallParticipantLabelView *)self badgeViewVisibleLayoutConstraints];
    [NSLayoutConstraint activateConstraints:badgeViewVisibleLayoutConstraints];

    [(PHMultipleCallParticipantLabelView *)self badgeViewHiddenLayoutConstraints];
  }

  else
  {
    [badgeView setHidden:1];

    badgeViewHiddenLayoutConstraints = [(PHMultipleCallParticipantLabelView *)self badgeViewHiddenLayoutConstraints];
    [NSLayoutConstraint activateConstraints:badgeViewHiddenLayoutConstraints];

    [(PHMultipleCallParticipantLabelView *)self badgeViewVisibleLayoutConstraints];
  }
  v14 = ;
  [NSLayoutConstraint deactivateConstraints:v14];

  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel setAttributedOrPlainText:firstObject];
}

- (void)setShowsActivitySpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  progressSpinner = [(PHMultipleCallParticipantLabelView *)self progressSpinner];

  if (spinnerCopy)
  {
    if (!progressSpinner)
    {
      v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:3];
      progressSpinner = self->_progressSpinner;
      self->_progressSpinner = v6;

      [(UIActivityIndicatorView *)self->_progressSpinner startAnimating];
      [(PHMultipleCallParticipantLabelView *)self addSubview:self->_progressSpinner];
      progressSpinner2 = [(PHMultipleCallParticipantLabelView *)self progressSpinner];
      [progressSpinner2 setTranslatesAutoresizingMaskIntoConstraints:0];

      v9 = self->_progressSpinner;
      statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:6 relatedBy:0 toItem:statusLabel attribute:5 multiplier:1.0 constant:-5.0];
      [(PHMultipleCallParticipantLabelView *)self addConstraint:v11];

      v12 = self->_progressSpinner;
      statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:statusLabel2 attribute:10 multiplier:1.0 constant:0.0];
      [(PHMultipleCallParticipantLabelView *)self addConstraint:v14];

      [(UIActivityIndicatorView *)self->_progressSpinner intrinsicContentSize];
      v16 = v15 + 10.0;
      participantMarqueeLabelRightConstraint = [(PHMultipleCallParticipantLabelView *)self participantMarqueeLabelRightConstraint];
      [participantMarqueeLabelRightConstraint setConstant:v16];
    }
  }

  else if (progressSpinner)
  {
    participantMarqueeLabelRightConstraint2 = [(PHMultipleCallParticipantLabelView *)self participantMarqueeLabelRightConstraint];
    [participantMarqueeLabelRightConstraint2 setConstant:15.0];

    progressSpinner3 = [(PHMultipleCallParticipantLabelView *)self progressSpinner];
    [progressSpinner3 removeFromSuperview];

    [(PHMultipleCallParticipantLabelView *)self setProgressSpinner:0];
  }
}

- (void)setTextColor:(id)color
{
  v6.receiver = self;
  v6.super_class = PHMultipleCallParticipantLabelView;
  colorCopy = color;
  [(PHAbstractCallParticipantLabelView *)&v6 setTextColor:colorCopy];
  v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel:v6.receiver];
  [v5 setTextColor:colorCopy];
}

- (void)setUpSwapButton
{
  if ([(PHMultipleCallParticipantLabelView *)self isSwapEnabled])
  {
    if (_UISolariumEnabled())
    {
      v3 = +[UIButtonConfiguration _clearGlassButtonConfiguration];
    }

    else
    {
      v3 = +[UIButtonConfiguration filledButtonConfiguration];
      [v3 setCornerStyle:4];
      v4 = +[UIColor secondaryLabelColor];
      [v3 setBaseBackgroundColor:v4];
    }

    v5 = [UIButton buttonWithConfiguration:v3 primaryAction:0];
    swapButton = self->_swapButton;
    self->_swapButton = v5;

    imageView = [(UIButton *)self->_swapButton imageView];
    [imageView setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

    [(UIButton *)self->_swapButton setContentMode:1];
    v8 = self->_swapButton;
    [UIImage systemImageNamed:@"arrow.triangle.swap"];
    v9 = v25 = v3;
    [(UIButton *)v8 setImage:v9 forState:0];

    v10 = [UIButton buttonWithConfiguration:v3 primaryAction:0];
    v24 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"swapButtonTapped:"];
    [v24 setCancelsTouchesInView:0];
    [(UIButton *)self->_swapButton addGestureRecognizer:v24];
    [(UIButton *)self->_swapButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHMultipleCallParticipantLabelView *)self addSubview:self->_swapButton];
    trailingAnchor = [(UIButton *)self->_swapButton trailingAnchor];
    trailingAnchor2 = [(PHMultipleCallParticipantLabelView *)self trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v26[0] = v21;
    centerYAnchor = [(UIButton *)self->_swapButton centerYAnchor];
    centerYAnchor2 = [(PHMultipleCallParticipantLabelView *)self centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v26[1] = v13;
    heightAnchor = [(UIButton *)self->_swapButton heightAnchor];
    heightAnchor2 = [(PHMultipleCallParticipantLabelView *)self heightAnchor];
    v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v26[2] = v16;
    widthAnchor = [(UIButton *)self->_swapButton widthAnchor];
    heightAnchor3 = [(PHMultipleCallParticipantLabelView *)self heightAnchor];
    v19 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
    v26[3] = v19;
    v20 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (void)swapButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  [delegate swapButtonWasTapped:tappedCopy];
}

- (void)setUpParticipantMarqueeLabelWithSwapEnabled
{
  if ([(PHMultipleCallParticipantLabelView *)self isSwapEnabled])
  {
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel setPreferredVibrancy:1];

    v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightSemibold];
    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel2 setFont:v4];

    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel3 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)setActivityState:(unsigned __int16)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  if ([(PHAbstractCallParticipantLabelView *)self activityState]!= state)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = stateCopy;
      v16 = 1024;
      activityState = [(PHAbstractCallParticipantLabelView *)self activityState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Participant label setting selection state to %d (current is %d)", buf, 0xEu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000424E0;
    v12[3] = &unk_100356960;
    v12[4] = self;
    v13 = stateCopy;
    v8 = objc_retainBlock(v12);
    if (animatedCopy && (-[PHMultipleCallParticipantLabelView callDisplayStyleManager](self, "callDisplayStyleManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 usesLargeFormatUI], v9, (v10 & 1) == 0))
    {
      [UIView animateWithDuration:v8 animations:0 completion:0.5];
    }

    else
    {
      (v8[2])(v8);
    }

    [(PHMultipleCallParticipantLabelView *)self setShowsActivitySpinner:stateCopy == 2];
    v11.receiver = self;
    v11.super_class = PHMultipleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v11 setActivityState:stateCopy];
  }
}

- (double)labelAlphaValueForActivityState:(unsigned __int16)state
{
  result = 1.0;
  if (state < 2u)
  {
    return 0.5;
  }

  return result;
}

- (BOOL)isSwapEnabled
{
  v2 = +[CNKFeatures sharedInstance];
  isNewCallSwapNonJindoEnabled = [v2 isNewCallSwapNonJindoEnabled];

  return isNewCallSwapNonJindoEnabled;
}

- (void)setHidesLabel:(BOOL)label
{
  labelCopy = label;
  if ([(PHAbstractCallParticipantLabelView *)self hidesLabel]!= label)
  {
    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [statusLabel setHidden:labelCopy];

    v6.receiver = self;
    v6.super_class = PHMultipleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v6 setHidesLabel:labelCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v14.receiver = self;
  v14.super_class = PHMultipleCallParticipantLabelView;
  changeCopy = change;
  [(PHMultipleCallParticipantLabelView *)&v14 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHMultipleCallParticipantLabelView *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    traitCollection2 = [(PHMultipleCallParticipantLabelView *)self traitCollection];
    _backlightLuminance3 = [traitCollection2 _backlightLuminance];

    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    text = [statusLabel text];

    v13 = 0;
    if (text)
    {
      if ([text length])
      {
        v12 = [text characterAtIndex:0];
        if (_backlightLuminance3 == 1 && v12 - 58 > 0xFFFFFFF5)
        {
          v13 = 1;
        }
      }
    }

    [(PHMultipleCallParticipantLabelView *)self setHidesLabel:v13];
  }
}

- (void)setShowsConferenceParticipantsButton:(BOOL)button
{
  buttonCopy = button;
  callDisplayStyleManager = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if ((usesLargeFormatUI & 1) == 0)
  {
    v7 = +[CNKFeatures sharedInstance];
    isHeroImageEnabled = [v7 isHeroImageEnabled];

    if ((isHeroImageEnabled & 1) == 0)
    {
      conferenceParticipantsButton = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];

      if (buttonCopy)
      {
        if (conferenceParticipantsButton)
        {
          return;
        }

        v10 = [UIButton buttonWithType:3];
        [(PHMultipleCallParticipantLabelView *)self setConferenceParticipantsButton:v10];

        v11 = +[UIColor systemTealColor];
        conferenceParticipantsButton2 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];
        [conferenceParticipantsButton2 setTintColor:v11];

        [(PHMultipleCallParticipantLabelView *)self addSubview:self->_conferenceParticipantsButton];
        conferenceParticipantsButton3 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];
        [conferenceParticipantsButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(UIButton *)self->_conferenceParticipantsButton addTarget:self action:"infoButtonTapped:" forControlEvents:64];
        conferenceParticipantsButton = self->_conferenceParticipantsButton;
        statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        v16 = [NSLayoutConstraint constraintWithItem:conferenceParticipantsButton attribute:5 relatedBy:0 toItem:statusLabel attribute:6 multiplier:1.0 constant:9.0];
        [(PHMultipleCallParticipantLabelView *)self addConstraint:v16];

        v17 = self->_conferenceParticipantsButton;
        statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:10 relatedBy:0 toItem:statusLabel2 attribute:10 multiplier:1.0 constant:0.0];
        [(PHMultipleCallParticipantLabelView *)self addConstraint:v19];

        [(UIButton *)self->_conferenceParticipantsButton bounds];
        v21 = -24.0 - v20 + -9.0;
      }

      else
      {
        if (!conferenceParticipantsButton)
        {
          return;
        }

        conferenceParticipantsButton4 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];
        [conferenceParticipantsButton4 removeFromSuperview];

        [(PHMultipleCallParticipantLabelView *)self setConferenceParticipantsButton:0];
        v21 = -24.0;
      }

      statusLabelRightConstraint = [(PHMultipleCallParticipantLabelView *)self statusLabelRightConstraint];
      [statusLabelRightConstraint setConstant:v21];
    }
  }
}

- (void)infoButtonTapped:(id)tapped
{
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  [delegate callLabelInfoLabelWasTappedForLabel:self];
}

- (void)setShowsCallDetailsViewButton:(BOOL)button
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Multi-call participant label unexpectedly configured to show details disclosure button", v4, 2u);
  }
}

@end