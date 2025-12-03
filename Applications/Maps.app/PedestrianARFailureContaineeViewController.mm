@interface PedestrianARFailureContaineeViewController
- (BOOL)_isLandscape;
- (PedestrianARFailureContaineeDelegate)failureContaineeDelegate;
- (PedestrianARFailureContaineeViewController)initWithEntryPoint:(int64_t)point;
- (double)heightForLayout:(unint64_t)layout;
- (void)_dismissButtonTapped:(id)tapped;
- (void)_retryButtonTapped:(id)tapped;
- (void)_updateFonts;
- (void)_updateForCurrentLayout;
- (void)dealloc;
- (void)didChangeContainerStyle:(unint64_t)style;
- (void)didChangeLayout:(unint64_t)layout;
- (void)pedestrianARViewControllerDidDisappearNotification:(id)notification;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PedestrianARFailureContaineeViewController

- (PedestrianARFailureContaineeDelegate)failureContaineeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_failureContaineeDelegate);

  return WeakRetained;
}

- (void)pedestrianARViewControllerDidDisappearNotification:(id)notification
{
  v4 = sub_100C82064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Pedestrian AR was dismissed; resigning session ownership", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"PedestrianARViewControllerDidDisappearNotification" object:0];

  v6 = +[MapsARSessionManager sharedManager];
  [v6 resignSessionWithOwner:self];
}

- (void)_retryButtonTapped:(id)tapped
{
  v4 = sub_100C82064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Retry button tapped", &v7, 0xCu);
  }

  if ([(PedestrianARFailureContaineeViewController *)self entryPoint])
  {
    v5 = 402;
  }

  else
  {
    v5 = 302;
  }

  [GEOAPPortal captureUserAction:128 target:v5 value:0];
  failureContaineeDelegate = [(PedestrianARFailureContaineeViewController *)self failureContaineeDelegate];
  [failureContaineeDelegate failureViewRetryButtonTapped:self];
}

- (void)_dismissButtonTapped:(id)tapped
{
  v4 = sub_100C82064();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Dismiss button tapped", &v7, 0xCu);
  }

  if ([(PedestrianARFailureContaineeViewController *)self entryPoint])
  {
    v5 = 402;
  }

  else
  {
    v5 = 302;
  }

  [GEOAPPortal captureUserAction:125 target:v5 value:0];
  failureContaineeDelegate = [(PedestrianARFailureContaineeViewController *)self failureContaineeDelegate];
  [failureContaineeDelegate failureViewDismissButtonTapped:self];
}

- (void)didChangeContainerStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v6 didChangeContainerStyle:?];
  v5 = sub_100C82064();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy = self;
    v9 = 2048;
    styleCopy = style;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Did change style to: %lu", buf, 0x16u);
  }

  [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v6 didChangeLayout:?];
  v5 = sub_100C82064();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy = self;
    v9 = 2048;
    layoutCopy = layout;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Did change layout to: %lu", buf, 0x16u);
  }

  [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
    if ([(PedestrianARFailureContaineeViewController *)self _isLandscape])
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v3 = v6;
    }

    else
    {
      cardPresentationController = [(PedestrianARFailureContaineeViewController *)self view];
      view = [(PedestrianARFailureContaineeViewController *)self view];
      [view frame];
      v9 = v8;
      LODWORD(v8) = 1148846080;
      LODWORD(v10) = 1112014848;
      [cardPresentationController systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v8, v10}];
      v3 = v11;
    }
  }

  return v3;
}

- (BOOL)_isLandscape
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  v4 = (containerStyle > 7) | (0x5Cu >> containerStyle);

  return v4 & 1;
}

- (void)_updateFonts
{
  _isLandscape = [(PedestrianARFailureContaineeViewController *)self _isLandscape];
  v4 = UIContentSizeCategoryExtraExtraExtraLarge;
  if (!_isLandscape)
  {
    v4 = UIContentSizeCategoryAccessibilityLarge;
  }

  v31 = v4;
  _isLandscape2 = [(PedestrianARFailureContaineeViewController *)self _isLandscape];
  v6 = UIContentSizeCategoryExtraLarge;
  if (!_isLandscape2)
  {
    v6 = UIContentSizeCategoryAccessibilityLarge;
  }

  v7 = v6;
  traitCollection = [(PedestrianARFailureContaineeViewController *)self traitCollection];
  v9 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:v31];

  traitCollection2 = [(PedestrianARFailureContaineeViewController *)self traitCollection];
  v11 = [traitCollection2 _maps_traitCollectionWithMaximumContentSizeCategory:v7];

  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v9 compatibleWithTraitCollection:UIFontWeightBold];
  titleLabel = [(PedestrianARFailureContaineeViewController *)self titleLabel];
  [titleLabel setFont:v12];

  v14 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle3 weight:v11 compatibleWithTraitCollection:UIFontWeightRegular];
  descriptionLabel = [(PedestrianARFailureContaineeViewController *)self descriptionLabel];
  [descriptionLabel setFont:v14];

  v16 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v11 compatibleWithTraitCollection:UIFontWeightSemibold];
  retryButton = [(PedestrianARFailureContaineeViewController *)self retryButton];
  titleLabel2 = [retryButton titleLabel];
  [titleLabel2 setFont:v16];

  [v16 lineHeight];
  v20 = v19;
  [v16 leading];
  v22 = v20 + 28.0 + v21;
  retryButtonHeightConstraint = [(PedestrianARFailureContaineeViewController *)self retryButtonHeightConstraint];
  [retryButtonHeightConstraint setConstant:v22];

  dismissButton = [(PedestrianARFailureContaineeViewController *)self dismissButton];
  titleLabel3 = [dismissButton titleLabel];
  [titleLabel3 setFont:v16];

  [v16 lineHeight];
  v27 = v26;
  [v16 leading];
  v29 = v27 + 28.0 + v28;
  dismissButtonHeightConstraint = [(PedestrianARFailureContaineeViewController *)self dismissButtonHeightConstraint];
  [dismissButtonHeightConstraint setConstant:v29];
}

- (void)_updateForCurrentLayout
{
  _isLandscape = [(PedestrianARFailureContaineeViewController *)self _isLandscape];
  titleLabel = [(PedestrianARFailureContaineeViewController *)self titleLabel];
  v5 = titleLabel;
  if (_isLandscape)
  {
    [titleLabel setNumberOfLines:2];

    descriptionLabel = [(PedestrianARFailureContaineeViewController *)self descriptionLabel];
    [descriptionLabel setNumberOfLines:0];

    topContainerTopConstraint = [(PedestrianARFailureContaineeViewController *)self topContainerTopConstraint];
    [topContainerTopConstraint setConstant:24.0];

    titleLabelFirstBaselineConstraint = [(PedestrianARFailureContaineeViewController *)self titleLabelFirstBaselineConstraint];
    [titleLabelFirstBaselineConstraint setActive:0];

    labelContainerLeadingConstraint = [(PedestrianARFailureContaineeViewController *)self labelContainerLeadingConstraint];
    [labelContainerLeadingConstraint setConstant:24.0];

    labelContainerTrailingConstraint = [(PedestrianARFailureContaineeViewController *)self labelContainerTrailingConstraint];
    [labelContainerTrailingConstraint setConstant:-24.0];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];

    view = [(PedestrianARFailureContaineeViewController *)self view];
    v14 = view;
    if (containerStyle == 6)
    {
      view2 = [(PedestrianARFailureContaineeViewController *)self view];
      [view2 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      view3 = [(PedestrianARFailureContaineeViewController *)self view];
      window = [view3 window];
      [v14 convertRect:window toView:{v17, v19, v21, v23}];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      view4 = [(PedestrianARFailureContaineeViewController *)self view];
      window2 = [view4 window];
      [window2 frame];
      v37 = v36;
      v66.origin.x = v27;
      v66.origin.y = v29;
      v66.size.width = v31;
      v66.size.height = v33;
      MaxY = CGRectGetMaxY(v66);

      view5 = [(PedestrianARFailureContaineeViewController *)self view];
      window3 = [view5 window];
      [window3 frame];
      v42 = v37 - MaxY + v41 * -0.07;
      retryButtonBottomConstraint = [(PedestrianARFailureContaineeViewController *)self retryButtonBottomConstraint];
      [retryButtonBottomConstraint setConstant:v42];

      v44 = sub_100C82064();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v64 = 134349056;
        selfCopy3 = self;
        v45 = "[%{public}p] Laying out for landscape floating";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, v45, &v64, 0xCu);
      }
    }

    else
    {
      window4 = [view window];
      [window4 frame];
      v62 = v61 * -0.07;
      retryButtonBottomConstraint2 = [(PedestrianARFailureContaineeViewController *)self retryButtonBottomConstraint];
      [retryButtonBottomConstraint2 setConstant:v62];

      v44 = sub_100C82064();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v64 = 134349056;
        selfCopy3 = self;
        v45 = "[%{public}p] Laying out for landscape fixed";
        goto LABEL_12;
      }
    }
  }

  else
  {
    [titleLabel setNumberOfLines:3];

    traitCollection = [(PedestrianARFailureContaineeViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v48 = sub_10008FB5C(preferredContentSizeCategory, UIContentSizeCategoryExtraLarge);

    descriptionLabel2 = [(PedestrianARFailureContaineeViewController *)self descriptionLabel];
    v50 = descriptionLabel2;
    if (v48 == 1)
    {
      v51 = 6;
    }

    else
    {
      v51 = 5;
    }

    [descriptionLabel2 setNumberOfLines:v51];

    topContainerTopConstraint2 = [(PedestrianARFailureContaineeViewController *)self topContainerTopConstraint];
    [topContainerTopConstraint2 setConstant:0.0];

    titleLabelFirstBaselineConstraint2 = [(PedestrianARFailureContaineeViewController *)self titleLabelFirstBaselineConstraint];
    [titleLabelFirstBaselineConstraint2 setActive:1];

    labelContainerLeadingConstraint2 = [(PedestrianARFailureContaineeViewController *)self labelContainerLeadingConstraint];
    [labelContainerLeadingConstraint2 setConstant:26.0];

    labelContainerTrailingConstraint2 = [(PedestrianARFailureContaineeViewController *)self labelContainerTrailingConstraint];
    [labelContainerTrailingConstraint2 setConstant:-26.0];

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 bottomSafeOffset];
    v58 = -10.0 - v57;
    retryButtonBottomConstraint3 = [(PedestrianARFailureContaineeViewController *)self retryButtonBottomConstraint];
    [retryButtonBottomConstraint3 setConstant:v58];

    v44 = sub_100C82064();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v64 = 134349056;
      selfCopy3 = self;
      v45 = "[%{public}p] Laying out for portrait";
      goto LABEL_12;
    }
  }

  [(PedestrianARFailureContaineeViewController *)self _updateFonts];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PedestrianARFailureContaineeViewController;
  [(MapsThemeViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy || (-[PedestrianARFailureContaineeViewController traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 preferredContentSizeCategory], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(changeCopy, "preferredContentSizeCategory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = UIContentSizeCategoryCompareToCategory(v6, v7), v7, v6, v5, v8))
  {
    [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v5 viewDidLayoutSubviews];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];

  if (containerStyle)
  {
    [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
  }
}

- (void)viewDidLoad
{
  v170.receiver = self;
  v170.super_class = PedestrianARFailureContaineeViewController;
  [(ContaineeViewController *)&v170 viewDidLoad];
  [(PedestrianARFailureContaineeViewController *)self setOverrideUserInterfaceStyle:2];
  v3 = +[UIColor clearColor];
  view = [(PedestrianARFailureContaineeViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [[MUBlurView alloc] initWithBlurEffectStyle:19];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor systemBackgroundColor];
  [v5 setNonBlurredColor:v6];

  view2 = [(PedestrianARFailureContaineeViewController *)self view];
  [view2 addSubview:v5];

  leadingAnchor = [v5 leadingAnchor];
  view3 = [(PedestrianARFailureContaineeViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v157 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v181[0] = v157;
  trailingAnchor = [v5 trailingAnchor];
  view4 = [(PedestrianARFailureContaineeViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v146 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v181[1] = v146;
  v8 = v5;
  v164 = v5;
  topAnchor = [v5 topAnchor];
  view5 = [(PedestrianARFailureContaineeViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v181[2] = v12;
  bottomAnchor = [v8 bottomAnchor];
  view6 = [(PedestrianARFailureContaineeViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v181[3] = v16;
  v17 = [NSArray arrayWithObjects:v181 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v22 = [v18 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  view7 = [(PedestrianARFailureContaineeViewController *)self view];
  [view7 addSubview:v22];

  topAnchor3 = [v22 topAnchor];
  view8 = [(PedestrianARFailureContaineeViewController *)self view];
  topAnchor4 = [view8 topAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  topContainerTopConstraint = self->_topContainerTopConstraint;
  self->_topContainerTopConstraint = v27;

  leadingAnchor3 = [v22 leadingAnchor];
  view9 = [(PedestrianARFailureContaineeViewController *)self view];
  leadingAnchor4 = [view9 leadingAnchor];
  v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v180[0] = v31;
  trailingAnchor3 = [v22 trailingAnchor];
  view10 = [(PedestrianARFailureContaineeViewController *)self view];
  trailingAnchor4 = [view10 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v36 = self->_topContainerTopConstraint;
  v180[1] = v35;
  v180[2] = v36;
  v37 = [NSArray arrayWithObjects:v180 count:3];
  [NSLayoutConstraint activateConstraints:v37];

  v38 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v39) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v39];
  [v22 addSubview:v38];
  leadingAnchor5 = [v38 leadingAnchor];
  leadingAnchor6 = [v22 leadingAnchor];
  v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:26.0];
  labelContainerLeadingConstraint = self->_labelContainerLeadingConstraint;
  self->_labelContainerLeadingConstraint = v42;

  trailingAnchor5 = [v38 trailingAnchor];
  trailingAnchor6 = [v22 trailingAnchor];
  v46 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-26.0];
  labelContainerTrailingConstraint = self->_labelContainerTrailingConstraint;
  self->_labelContainerTrailingConstraint = v46;

  v48 = self->_labelContainerTrailingConstraint;
  v179[0] = self->_labelContainerLeadingConstraint;
  v179[1] = v48;
  topAnchor5 = [v38 topAnchor];
  v49 = v22;
  topAnchor6 = [v22 topAnchor];
  v51 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v179[2] = v51;
  v169 = v38;
  bottomAnchor3 = [v38 bottomAnchor];
  v166 = v49;
  bottomAnchor4 = [v49 bottomAnchor];
  v54 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v179[3] = v54;
  centerYAnchor = [v38 centerYAnchor];
  centerYAnchor2 = [v49 centerYAnchor];
  v57 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v179[4] = v57;
  v58 = [NSArray arrayWithObjects:v179 count:5];
  [NSLayoutConstraint activateConstraints:v58];

  v59 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v59;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  LODWORD(v61) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v61];
  v62 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v62];

  v63 = +[NSBundle mainBundle];
  v64 = [v63 localizedStringForKey:@"Pedestrian_AR_failure_title_text" value:@"localized string not found" table:0];
  [(UILabel *)self->_titleLabel setText:v64];

  [v169 addSubview:self->_titleLabel];
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  topAnchor7 = [v166 topAnchor];
  v67 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor7 constant:60.0];
  titleLabelFirstBaselineConstraint = self->_titleLabelFirstBaselineConstraint;
  self->_titleLabelFirstBaselineConstraint = v67;

  leadingAnchor7 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor8 = [v169 leadingAnchor];
  v70 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v178[0] = v70;
  trailingAnchor7 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor8 = [v169 trailingAnchor];
  v73 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v178[1] = v73;
  topAnchor8 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor9 = [v169 topAnchor];
  v76 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
  v77 = self->_titleLabelFirstBaselineConstraint;
  v178[2] = v76;
  v178[3] = v77;
  v78 = [NSArray arrayWithObjects:v178 count:4];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v79;

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_descriptionLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_descriptionLabel setTextAlignment:1];
  [(UILabel *)self->_descriptionLabel setNumberOfLines:5];
  LODWORD(v81) = 1148846080;
  [(UILabel *)self->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v81];
  v82 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3];
  v176 = UIFontDescriptorTraitsAttribute;
  v174 = UIFontWeightTrait;
  v83 = [NSNumber numberWithDouble:UIFontWeightRegular];
  v175 = v83;
  v84 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
  v177 = v84;
  v85 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
  v163 = [v82 fontDescriptorByAddingAttributes:v85];

  v86 = [UIFont fontWithDescriptor:v163 size:0.0];
  [(UILabel *)self->_descriptionLabel setFont:v86];

  v87 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_descriptionLabel setTextColor:v87];

  v88 = +[NSBundle mainBundle];
  v89 = [v88 localizedStringForKey:@"Pedestrian_AR_failure_description_text" value:@"localized string not found" table:0];
  [(UILabel *)self->_descriptionLabel setText:v89];

  [v169 addSubview:self->_descriptionLabel];
  leadingAnchor9 = [(UILabel *)self->_descriptionLabel leadingAnchor];
  leadingAnchor10 = [v169 leadingAnchor];
  v149 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v173[0] = v149;
  trailingAnchor9 = [(UILabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor10 = [v169 trailingAnchor];
  v91 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v173[1] = v91;
  topAnchor10 = [(UILabel *)self->_descriptionLabel topAnchor];
  bottomAnchor5 = [(UILabel *)self->_titleLabel bottomAnchor];
  v94 = [topAnchor10 constraintEqualToAnchor:bottomAnchor5 constant:15.0];
  v173[2] = v94;
  bottomAnchor6 = [(UILabel *)self->_descriptionLabel bottomAnchor];
  bottomAnchor7 = [v169 bottomAnchor];
  v97 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v173[3] = v97;
  v98 = [NSArray arrayWithObjects:v173 count:4];
  [NSLayoutConstraint activateConstraints:v98];

  v99 = [UIButton buttonWithType:1];
  dismissButton = self->_dismissButton;
  self->_dismissButton = v99;

  [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [(UIButton *)self->_dismissButton layer];
  [layer setCornerRadius:12.0];

  v102 = +[UIColor systemBlueColor];
  [(UIButton *)self->_dismissButton setBackgroundColor:v102];

  v103 = self->_dismissButton;
  v104 = +[UIColor systemWhiteColor];
  [(UIButton *)v103 setTitleColor:v104 forState:0];

  v105 = self->_dismissButton;
  v106 = +[NSBundle mainBundle];
  v107 = [v106 localizedStringForKey:@"Pedestrian_AR_failure_dismiss_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v105 setTitle:v107 forState:0];

  [(UIButton *)self->_dismissButton addTarget:self action:"_dismissButtonTapped:" forControlEvents:64];
  view11 = [(PedestrianARFailureContaineeViewController *)self view];
  [view11 addSubview:self->_dismissButton];

  heightAnchor = [(UIButton *)self->_dismissButton heightAnchor];
  v110 = [heightAnchor constraintEqualToConstant:50.0];
  dismissButtonHeightConstraint = self->_dismissButtonHeightConstraint;
  self->_dismissButtonHeightConstraint = v110;

  leadingAnchor11 = [(UIButton *)self->_dismissButton leadingAnchor];
  leadingAnchor12 = [v169 leadingAnchor];
  v112 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v172[0] = v112;
  trailingAnchor11 = [(UIButton *)self->_dismissButton trailingAnchor];
  trailingAnchor12 = [v169 trailingAnchor];
  v115 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v172[1] = v115;
  topAnchor11 = [(UIButton *)self->_dismissButton topAnchor];
  bottomAnchor8 = [v166 bottomAnchor];
  v118 = [topAnchor11 constraintEqualToAnchor:bottomAnchor8 constant:26.0];
  v119 = self->_dismissButtonHeightConstraint;
  v172[2] = v118;
  v172[3] = v119;
  v120 = [NSArray arrayWithObjects:v172 count:4];
  [NSLayoutConstraint activateConstraints:v120];

  v121 = [UIButton buttonWithType:1];
  retryButton = self->_retryButton;
  self->_retryButton = v121;

  [(UIButton *)self->_retryButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v123 = +[UIColor clearColor];
  [(UIButton *)self->_retryButton setBackgroundColor:v123];

  v124 = self->_retryButton;
  v125 = +[UIColor systemWhiteColor];
  [(UIButton *)v124 setTitleColor:v125 forState:0];

  v126 = self->_retryButton;
  v127 = +[NSBundle mainBundle];
  v128 = [v127 localizedStringForKey:@"Pedestrian_AR_failure_retry_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v126 setTitle:v128 forState:0];

  [(UIButton *)self->_retryButton addTarget:self action:"_retryButtonTapped:" forControlEvents:64];
  view12 = [(PedestrianARFailureContaineeViewController *)self view];
  [view12 addSubview:self->_retryButton];

  bottomAnchor9 = [(UIButton *)self->_retryButton bottomAnchor];
  view13 = [(PedestrianARFailureContaineeViewController *)self view];
  bottomAnchor10 = [view13 bottomAnchor];
  v133 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  retryButtonBottomConstraint = self->_retryButtonBottomConstraint;
  self->_retryButtonBottomConstraint = v133;

  heightAnchor2 = [(UIButton *)self->_retryButton heightAnchor];
  v136 = [heightAnchor2 constraintEqualToConstant:50.0];
  retryButtonHeightConstraint = self->_retryButtonHeightConstraint;
  self->_retryButtonHeightConstraint = v136;

  leadingAnchor13 = [(UIButton *)self->_retryButton leadingAnchor];
  leadingAnchor14 = [v169 leadingAnchor];
  v152 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v171[0] = v152;
  trailingAnchor13 = [(UIButton *)self->_retryButton trailingAnchor];
  trailingAnchor14 = [v169 trailingAnchor];
  v140 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  v171[1] = v140;
  topAnchor12 = [(UIButton *)self->_retryButton topAnchor];
  bottomAnchor11 = [(UIButton *)self->_dismissButton bottomAnchor];
  v143 = [topAnchor12 constraintEqualToAnchor:bottomAnchor11 constant:4.0];
  v144 = self->_retryButtonBottomConstraint;
  v171[2] = v143;
  v171[3] = v144;
  v171[4] = self->_retryButtonHeightConstraint;
  v145 = [NSArray arrayWithObjects:v171 count:5];
  [NSLayoutConstraint activateConstraints:v145];

  [(PedestrianARFailureContaineeViewController *)self _updateForCurrentLayout];
}

- (void)dealloc
{
  v3 = sub_100C82064();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4 = +[MapsARSessionManager sharedManager];
  [v4 resignSessionWithOwner:self];

  v5.receiver = self;
  v5.super_class = PedestrianARFailureContaineeViewController;
  [(PedestrianARFailureContaineeViewController *)&v5 dealloc];
}

- (PedestrianARFailureContaineeViewController)initWithEntryPoint:(int64_t)point
{
  v14.receiver = self;
  v14.super_class = PedestrianARFailureContaineeViewController;
  v4 = [(PedestrianARFailureContaineeViewController *)&v14 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = sub_100C82064();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      v16 = v4;
      v17 = 2048;
      pointCopy = point;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing with entry point: %ld", buf, 0x16u);
    }

    v4->_entryPoint = point;
    v6 = +[MapsARSessionManager sharedManager];
    [v6 requestSessionWithOwner:v4];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v4 selector:"pedestrianARViewControllerDidDisappearNotification:" name:@"PedestrianARViewControllerDidDisappearNotification" object:0];

    cardPresentationController = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController3 setPresentedModally:1];

    cardPresentationController4 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController4 setTakesAvailableHeight:1];

    cardPresentationController5 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController5 setEdgeAttachedRegularHeightDimmingBehavior:1];
  }

  return v4;
}

@end