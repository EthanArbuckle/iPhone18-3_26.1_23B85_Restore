@interface PHMultipleCallParticipantLabelView
- (BOOL)isDisplayStyleAmbient;
- (BOOL)isDisplayStyleMiniWindow;
- (BOOL)isSwapEnabled;
- (PHMultipleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)a3;
- (double)labelAlphaValueForActivityState:(unsigned __int16)a3;
- (double)leadingTrailingLabelSpacing;
- (double)spacingBetweenLabels;
- (id)marqueeLabelFont;
- (id)statusLabelFont;
- (void)dealloc;
- (void)infoButtonTapped:(id)a3;
- (void)setActivityState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setHidesLabel:(BOOL)a3;
- (void)setLabelDescriptor:(id)a3;
- (void)setShowsActivitySpinner:(BOOL)a3;
- (void)setShowsCallDetailsViewButton:(BOOL)a3;
- (void)setShowsConferenceParticipantsButton:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)setUpParticipantMarqueeLabelWithSwapEnabled;
- (void)setUpSwapButton;
- (void)swapButtonTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PHMultipleCallParticipantLabelView

- (PHMultipleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v69.receiver = self;
  v69.super_class = PHMultipleCallParticipantLabelView;
  v6 = [(PHAbstractCallParticipantLabelView *)&v69 initWithCallDisplayStyleManager:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
    [(PHMultipleCallParticipantLabelView *)v7 setUpSwapButton];
    [(PHMultipleCallParticipantLabelView *)v7 setUpParticipantMarqueeLabelWithSwapEnabled];
    if (![(PHMultipleCallParticipantLabelView *)v7 isSwapEnabled])
    {
      v8 = [(PHMultipleCallParticipantLabelView *)v7 marqueeLabelFont];
      v9 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
      [v9 setFont:v8];
    }

    v10 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v11 = [v10 leadingAnchor];
    v12 = [(PHMultipleCallParticipantLabelView *)v7 leadingAnchor];
    v13 = 0.0;
    if (!v7->_swapButton)
    {
      v13 = 24.0;
    }

    v14 = [v11 constraintEqualToAnchor:v12 constant:v13];

    [v14 setActive:1];
    v15 = [[TPBadgeView alloc] initWithTitle:&stru_100361FD0 theme:1];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 setHidden:1];
    [(PHMultipleCallParticipantLabelView *)v7 addSubview:v15];
    [(PHMultipleCallParticipantLabelView *)v7 setBadgeView:v15];
    [(PHMultipleCallParticipantLabelView *)v7 leadingTrailingLabelSpacing];
    v17 = v16;
    v18 = [v15 centerYAnchor];
    v19 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v20 = [v19 centerYAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v21];

    v22 = [v15 leadingAnchor];
    v23 = [(PHMultipleCallParticipantLabelView *)v7 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:v17];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v24];

    v25 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v26 = [v25 leadingAnchor];
    v27 = [(PHMultipleCallParticipantLabelView *)v7 badgeView];
    v28 = [v27 trailingAnchor];
    v29 = [v26 constraintEqualToAnchor:v28 constant:6.0];

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
    v34 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v35 = [NSLayoutConstraint constraintWithItem:v34 attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v35];

    v36 = objc_alloc_init(UILabel);
    [(PHAbstractCallParticipantLabelView *)v7 setStatusLabel:v36];

    v37 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [v37 setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_StatusLabel"];

    if ([(PHMultipleCallParticipantLabelView *)v7 isSwapEnabled])
    {
      v38 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [v38 setPreferredVibrancy:1];

      v39 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
      v40 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [v40 setFont:v39];

      v41 = +[UIColor systemWhiteColor];
      v42 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [v42 setTextColor:v41];

      v43 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [v43 setAdjustsFontForContentSizeCategory:1];
    }

    else
    {
      v44 = [(PHMultipleCallParticipantLabelView *)v7 statusLabelFont];
      v45 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [v45 setFont:v44];

      v43 = +[UIColor secondaryLabelColor];
      v46 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
      [v46 setTextColor:v43];
    }

    v47 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [v47 setTextAlignment:1];

    v48 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];

    v49 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    [(PHMultipleCallParticipantLabelView *)v7 addSubview:v49];

    v50 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    v51 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v52 = [NSLayoutConstraint constraintWithItem:v50 attribute:10 relatedBy:0 toItem:v51 attribute:10 multiplier:1.0 constant:0.0];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v52];

    v53 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    v54 = [(PHMultipleCallParticipantLabelView *)v7 callDisplayStyleManager];
    if ([v54 usesLargeFormatUI])
    {
      v55 = 0.0;
    }

    else
    {
      v55 = -v17;
    }

    v56 = [NSLayoutConstraint constraintWithItem:v53 attribute:6 relatedBy:0 toItem:v7 attribute:6 multiplier:1.0 constant:v55];
    [(PHMultipleCallParticipantLabelView *)v7 setStatusLabelRightConstraint:v56];

    v57 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    v58 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    [(PHMultipleCallParticipantLabelView *)v7 spacingBetweenLabels];
    v60 = [NSLayoutConstraint constraintWithItem:v57 attribute:5 relatedBy:1 toItem:v58 attribute:6 multiplier:1.0 constant:v59];
    [(PHMultipleCallParticipantLabelView *)v7 setParticipantMarqueeLabelRightConstraint:v60];

    if (v7->_statusLabelRightConstraint)
    {
      [(PHMultipleCallParticipantLabelView *)v7 addConstraint:?];
    }

    v61 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    v62 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    v63 = [NSLayoutConstraint constraintWithItem:v61 attribute:3 relatedBy:0 toItem:v62 attribute:3 multiplier:1.0 constant:0.0];
    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v63];

    [(PHMultipleCallParticipantLabelView *)v7 addConstraint:v7->_participantMarqueeLabelRightConstraint];
    v64 = [(PHAbstractCallParticipantLabelView *)v7 participantMarqueeLabel];
    LODWORD(v65) = 1144750080;
    [v64 setContentCompressionResistancePriority:0 forAxis:v65];

    v66 = [(PHAbstractCallParticipantLabelView *)v7 statusLabel];
    LODWORD(v67) = 1148846080;
    [v66 setContentCompressionResistancePriority:0 forAxis:v67];

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
      v5 = [v4 withCaseSensitiveAttribute];

      goto LABEL_7;
    }

    v3 = +[PHUIConfiguration multipleCallParticipantLabelFont];
  }

  v5 = v3;
LABEL_7:

  return v5;
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
      v5 = [v4 withCaseSensitiveAttribute];

      goto LABEL_7;
    }

    v3 = +[PHUIConfiguration multipleCallStatusLabelFont];
  }

  v5 = v3;
LABEL_7:

  return v5;
}

- (double)leadingTrailingLabelSpacing
{
  v2 = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  v4 = 24.0;
  if (v3 == 1)
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
  v2 = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  v4 = 15.0;
  if (v3 == 1)
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
  v2 = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 1;

  return v3;
}

- (BOOL)isDisplayStyleAmbient
{
  v2 = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 3;

  return v3;
}

- (void)setLabelDescriptor:(id)a3
{
  v16 = a3;
  v4 = [v16 strings];
  v5 = [v4 firstObject];

  v6 = [v16 localizedSenderIdentity];
  v7 = [v6 length];

  v8 = [(PHMultipleCallParticipantLabelView *)self badgeView];
  v9 = v8;
  if (v7)
  {
    [v8 setHidden:0];

    v10 = [v16 localizedSenderIdentity];
    v11 = [(PHMultipleCallParticipantLabelView *)self badgeView];
    [v11 setTitle:v10];

    v12 = [(PHMultipleCallParticipantLabelView *)self badgeViewVisibleLayoutConstraints];
    [NSLayoutConstraint activateConstraints:v12];

    [(PHMultipleCallParticipantLabelView *)self badgeViewHiddenLayoutConstraints];
  }

  else
  {
    [v8 setHidden:1];

    v13 = [(PHMultipleCallParticipantLabelView *)self badgeViewHiddenLayoutConstraints];
    [NSLayoutConstraint activateConstraints:v13];

    [(PHMultipleCallParticipantLabelView *)self badgeViewVisibleLayoutConstraints];
  }
  v14 = ;
  [NSLayoutConstraint deactivateConstraints:v14];

  v15 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v15 setAttributedOrPlainText:v5];
}

- (void)setShowsActivitySpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHMultipleCallParticipantLabelView *)self progressSpinner];

  if (v3)
  {
    if (!v5)
    {
      v6 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:3];
      progressSpinner = self->_progressSpinner;
      self->_progressSpinner = v6;

      [(UIActivityIndicatorView *)self->_progressSpinner startAnimating];
      [(PHMultipleCallParticipantLabelView *)self addSubview:self->_progressSpinner];
      v8 = [(PHMultipleCallParticipantLabelView *)self progressSpinner];
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

      v9 = self->_progressSpinner;
      v10 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:6 relatedBy:0 toItem:v10 attribute:5 multiplier:1.0 constant:-5.0];
      [(PHMultipleCallParticipantLabelView *)self addConstraint:v11];

      v12 = self->_progressSpinner;
      v13 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:10 relatedBy:0 toItem:v13 attribute:10 multiplier:1.0 constant:0.0];
      [(PHMultipleCallParticipantLabelView *)self addConstraint:v14];

      [(UIActivityIndicatorView *)self->_progressSpinner intrinsicContentSize];
      v16 = v15 + 10.0;
      v19 = [(PHMultipleCallParticipantLabelView *)self participantMarqueeLabelRightConstraint];
      [v19 setConstant:v16];
    }
  }

  else if (v5)
  {
    v17 = [(PHMultipleCallParticipantLabelView *)self participantMarqueeLabelRightConstraint];
    [v17 setConstant:15.0];

    v18 = [(PHMultipleCallParticipantLabelView *)self progressSpinner];
    [v18 removeFromSuperview];

    [(PHMultipleCallParticipantLabelView *)self setProgressSpinner:0];
  }
}

- (void)setTextColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHMultipleCallParticipantLabelView;
  v4 = a3;
  [(PHAbstractCallParticipantLabelView *)&v6 setTextColor:v4];
  v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel:v6.receiver];
  [v5 setTextColor:v4];
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

    v7 = [(UIButton *)self->_swapButton imageView];
    [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

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
    v23 = [(UIButton *)self->_swapButton trailingAnchor];
    v22 = [(PHMultipleCallParticipantLabelView *)self trailingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v26[0] = v21;
    v11 = [(UIButton *)self->_swapButton centerYAnchor];
    v12 = [(PHMultipleCallParticipantLabelView *)self centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v26[1] = v13;
    v14 = [(UIButton *)self->_swapButton heightAnchor];
    v15 = [(PHMultipleCallParticipantLabelView *)self heightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v26[2] = v16;
    v17 = [(UIButton *)self->_swapButton widthAnchor];
    v18 = [(PHMultipleCallParticipantLabelView *)self heightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v26[3] = v19;
    v20 = [NSArray arrayWithObjects:v26 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (void)swapButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(PHAbstractCallParticipantLabelView *)self delegate];
  [v5 swapButtonWasTapped:v4];
}

- (void)setUpParticipantMarqueeLabelWithSwapEnabled
{
  if ([(PHMultipleCallParticipantLabelView *)self isSwapEnabled])
  {
    v3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v3 setPreferredVibrancy:1];

    v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightSemibold];
    v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v5 setFont:v4];

    v6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v6 setAdjustsFontForContentSizeCategory:1];
  }
}

- (void)setActivityState:(unsigned __int16)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(PHAbstractCallParticipantLabelView *)self activityState]!= a3)
  {
    v7 = sub_100004F84();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = v5;
      v16 = 1024;
      v17 = [(PHAbstractCallParticipantLabelView *)self activityState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Participant label setting selection state to %d (current is %d)", buf, 0xEu);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000424E0;
    v12[3] = &unk_100356960;
    v12[4] = self;
    v13 = v5;
    v8 = objc_retainBlock(v12);
    if (v4 && (-[PHMultipleCallParticipantLabelView callDisplayStyleManager](self, "callDisplayStyleManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 usesLargeFormatUI], v9, (v10 & 1) == 0))
    {
      [UIView animateWithDuration:v8 animations:0 completion:0.5];
    }

    else
    {
      (v8[2])(v8);
    }

    [(PHMultipleCallParticipantLabelView *)self setShowsActivitySpinner:v5 == 2];
    v11.receiver = self;
    v11.super_class = PHMultipleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v11 setActivityState:v5];
  }
}

- (double)labelAlphaValueForActivityState:(unsigned __int16)a3
{
  result = 1.0;
  if (a3 < 2u)
  {
    return 0.5;
  }

  return result;
}

- (BOOL)isSwapEnabled
{
  v2 = +[CNKFeatures sharedInstance];
  v3 = [v2 isNewCallSwapNonJindoEnabled];

  return v3;
}

- (void)setHidesLabel:(BOOL)a3
{
  v3 = a3;
  if ([(PHAbstractCallParticipantLabelView *)self hidesLabel]!= a3)
  {
    v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [v5 setHidden:v3];

    v6.receiver = self;
    v6.super_class = PHMultipleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v6 setHidesLabel:v3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v14.receiver = self;
  v14.super_class = PHMultipleCallParticipantLabelView;
  v4 = a3;
  [(PHMultipleCallParticipantLabelView *)&v14 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(PHMultipleCallParticipantLabelView *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 != v7)
  {
    v8 = [(PHMultipleCallParticipantLabelView *)self traitCollection];
    v9 = [v8 _backlightLuminance];

    v10 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v11 = [v10 text];

    v13 = 0;
    if (v11)
    {
      if ([v11 length])
      {
        v12 = [v11 characterAtIndex:0];
        if (v9 == 1 && v12 - 58 > 0xFFFFFFF5)
        {
          v13 = 1;
        }
      }
    }

    [(PHMultipleCallParticipantLabelView *)self setHidesLabel:v13];
  }
}

- (void)setShowsConferenceParticipantsButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHMultipleCallParticipantLabelView *)self callDisplayStyleManager];
  v6 = [v5 usesLargeFormatUI];

  if ((v6 & 1) == 0)
  {
    v7 = +[CNKFeatures sharedInstance];
    v8 = [v7 isHeroImageEnabled];

    if ((v8 & 1) == 0)
    {
      v9 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];

      if (v3)
      {
        if (v9)
        {
          return;
        }

        v10 = [UIButton buttonWithType:3];
        [(PHMultipleCallParticipantLabelView *)self setConferenceParticipantsButton:v10];

        v11 = +[UIColor systemTealColor];
        v12 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];
        [v12 setTintColor:v11];

        [(PHMultipleCallParticipantLabelView *)self addSubview:self->_conferenceParticipantsButton];
        v13 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];
        [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

        [(UIButton *)self->_conferenceParticipantsButton addTarget:self action:"infoButtonTapped:" forControlEvents:64];
        conferenceParticipantsButton = self->_conferenceParticipantsButton;
        v15 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        v16 = [NSLayoutConstraint constraintWithItem:conferenceParticipantsButton attribute:5 relatedBy:0 toItem:v15 attribute:6 multiplier:1.0 constant:9.0];
        [(PHMultipleCallParticipantLabelView *)self addConstraint:v16];

        v17 = self->_conferenceParticipantsButton;
        v18 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v18 attribute:10 multiplier:1.0 constant:0.0];
        [(PHMultipleCallParticipantLabelView *)self addConstraint:v19];

        [(UIButton *)self->_conferenceParticipantsButton bounds];
        v21 = -24.0 - v20 + -9.0;
      }

      else
      {
        if (!v9)
        {
          return;
        }

        v22 = [(PHMultipleCallParticipantLabelView *)self conferenceParticipantsButton];
        [v22 removeFromSuperview];

        [(PHMultipleCallParticipantLabelView *)self setConferenceParticipantsButton:0];
        v21 = -24.0;
      }

      v23 = [(PHMultipleCallParticipantLabelView *)self statusLabelRightConstraint];
      [v23 setConstant:v21];
    }
  }
}

- (void)infoButtonTapped:(id)a3
{
  v4 = [(PHAbstractCallParticipantLabelView *)self delegate];
  [v4 callLabelInfoLabelWasTappedForLabel:self];
}

- (void)setShowsCallDetailsViewButton:(BOOL)a3
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Multi-call participant label unexpectedly configured to show details disclosure button", v4, 2u);
  }
}

@end