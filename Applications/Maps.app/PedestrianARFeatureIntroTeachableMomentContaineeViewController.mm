@interface PedestrianARFeatureIntroTeachableMomentContaineeViewController
+ (BOOL)hasShownTeachableMoment;
+ (BOOL)shouldShowTeachableMoment;
+ (void)setShownTeachableMoment:(BOOL)moment;
- (BOOL)_isDarkMode;
- (PedestrianARCoordination)coordinator;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)init;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoder:(id)coder;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoordinator:(id)coordinator;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)heightForLayout:(unint64_t)layout;
- (id)_videoNameForCurrentState;
- (void)_configureFloatingButtonHighlightIfNecessary;
- (void)_updateForCurrentState;
- (void)dealloc;
- (void)didResignCurrent;
- (void)dismiss:(id)dismiss;
- (void)enterPedestrianAR:(id)r;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation PedestrianARFeatureIntroTeachableMomentContaineeViewController

- (PedestrianARCoordination)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (void)enterPedestrianAR:(id)r
{
  rCopy = r;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10100C754;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10100C7EC;
  v6[3] = &unk_1016619A8;
  objc_copyWeak(&v7, &location);
  [UIView animateWithDuration:v8 animations:v6 completion:0.35];
  coordinator = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self coordinator];
  [coordinator enterPedestrianAR];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    view = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    view2 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    [view2 frame];
    v8 = v7;
    LODWORD(v7) = 1148846080;
    LODWORD(v9) = 1112014848;
    [view systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v7, v9}];
    v3 = v10;

    view3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    [view3 safeAreaInsets];
    v13 = v12;

    if (v13 == 0.0)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v3 = v15 + v3;
    }
  }

  return v3;
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  if (style > 7 || ((1 << style) & 0xA3) == 0)
  {
    v4 = sub_10100CA18();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Layout changed to landscape; dismissing", &v5, 0xCu);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_configureFloatingButtonHighlightIfNecessary
{
  coordinator = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self coordinator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    view = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    window = [view window];
    v7 = [window viewWithTag:&off_101661968];

    if (v7)
    {
      v8 = [MapsThemeButton buttonWithType:0];
      [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self setButtonReplica:v8];

      buttonReplica = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [buttonReplica setTranslatesAutoresizingMaskIntoConstraints:0];

      buttonReplica2 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [buttonReplica2 setClipsToBounds:1];

      buttonReplica3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      layer = [buttonReplica3 layer];
      [layer setMasksToBounds:1];

      buttonReplica4 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      layer2 = [buttonReplica4 layer];
      [layer2 setCornerRadius:8.0];

      buttonReplica5 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"Pedestrian AR [Accessibility]" value:@"localized string not found" table:0];
      [buttonReplica5 setAccessibilityLabel:v17];

      buttonReplica6 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [buttonReplica6 addTarget:self action:"enterPedestrianAR:" forControlEvents:64];

      v19 = [UIImage systemImageNamed:@"arkit"];
      buttonReplica7 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [buttonReplica7 setImage:v19 forState:0];

      buttonReplica8 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v22 = +[MapsTheme floatingControlsTintColor];
      [buttonReplica8 setTintColor:v22];

      v23 = +[UIColor systemBackgroundColor];
      buttonReplica9 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [buttonReplica9 setBackgroundColor:v23];

      buttonReplica10 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v26 = [v7 preferredSymbolConfigurationForImageInState:0];
      [buttonReplica10 setPreferredSymbolConfiguration:v26 forImageInState:0];

      presentationController = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self presentationController];
      containerView = [presentationController containerView];
      buttonReplica11 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [containerView addSubview:buttonReplica11];

      buttonReplica12 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      LODWORD(v31) = 1148846080;
      v32 = [buttonReplica12 _maps_constraintsEqualToEdgesOfView:v7 priority:v31];
      allConstraints = [v32 allConstraints];
      [NSLayoutConstraint activateConstraints:allConstraints];

      if (GEOConfigGetBOOL())
      {
        v34 = [UIView alloc];
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        v38 = [v34 initWithFrame:{CGRectZero.origin.x, y, width, height}];
        [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self setArrowContainerView:v38];

        arrowContainerView = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [arrowContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

        presentationController2 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self presentationController];
        containerView2 = [presentationController2 containerView];
        arrowContainerView2 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [containerView2 addSubview:arrowContainerView2];

        arrowContainerView3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        trailingAnchor = [arrowContainerView3 trailingAnchor];
        buttonReplica13 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        leadingAnchor = [buttonReplica13 leadingAnchor];
        v99 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor constant:-10.0];
        v112[0] = v99;
        arrowContainerView4 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        centerYAnchor = [arrowContainerView4 centerYAnchor];
        buttonReplica14 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        centerYAnchor2 = [buttonReplica14 centerYAnchor];
        v88 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v112[1] = v88;
        arrowContainerView5 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        widthAnchor = [arrowContainerView5 widthAnchor];
        [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        v43 = v109 = v19;
        widthAnchor2 = [v43 widthAnchor];
        v45 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        v112[2] = v45;
        arrowContainerView6 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        heightAnchor = [arrowContainerView6 heightAnchor];
        buttonReplica15 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        heightAnchor2 = [buttonReplica15 heightAnchor];
        v50 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v112[3] = v50;
        [NSArray arrayWithObjects:v112 count:4];
        v51 = v110 = v7;
        [NSLayoutConstraint activateConstraints:v51];

        presentationController3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self presentationController];
        containerView3 = [presentationController3 containerView];
        effectiveUserInterfaceLayoutDirection = [containerView3 effectiveUserInterfaceLayoutDirection];

        v55 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v55 setContentMode:4];
        v56 = +[UIColor systemWhiteColor];
        [v55 setTintColor:v56];

        v108 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
        v57 = [UIImageSymbolConfiguration configurationWithFont:v108];
        [v55 setPreferredSymbolConfiguration:v57];

        if (effectiveUserInterfaceLayoutDirection == 1)
        {
          v58 = @"arrow.left";
        }

        else
        {
          v58 = @"arrow.right";
        }

        v59 = &off_1016EAE68;
        if (effectiveUserInterfaceLayoutDirection == 1)
        {
          v59 = &off_1016EAE50;
        }

        v102 = v59;
        v60 = &off_1016EAE80;
        if (effectiveUserInterfaceLayoutDirection != 1)
        {
          v60 = &off_1016EAE98;
        }

        v106 = v60;
        v61 = [UIImage systemImageNamed:v58];
        [v55 setImage:v61];

        arrowContainerView7 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [arrowContainerView7 addSubview:v55];

        leadingAnchor2 = [v55 leadingAnchor];
        arrowContainerView8 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        leadingAnchor3 = [arrowContainerView8 leadingAnchor];
        v94 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
        v111[0] = v94;
        trailingAnchor2 = [v55 trailingAnchor];
        arrowContainerView9 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        trailingAnchor3 = [arrowContainerView9 trailingAnchor];
        v86 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
        v111[1] = v86;
        v104 = v55;
        topAnchor = [v55 topAnchor];
        arrowContainerView10 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        topAnchor2 = [arrowContainerView10 topAnchor];
        v66 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v111[2] = v66;
        bottomAnchor = [v55 bottomAnchor];
        arrowContainerView11 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        bottomAnchor2 = [arrowContainerView11 bottomAnchor];
        v70 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v111[3] = v70;
        v71 = [NSArray arrayWithObjects:v111 count:4];
        [NSLayoutConstraint activateConstraints:v71];

        v19 = v109;
        v72 = [CABasicAnimation animationWithKeyPath:@"opacity"];
        [v72 setFromValue:&off_1016EAE20];
        [v72 setToValue:&off_1016EAE38];
        [v72 setBeginTime:CACurrentMediaTime()];
        [v72 setDuration:0.1];
        [v72 setRemovedOnCompletion:1];
        [v72 setFillMode:kCAFillModeForwards];
        v73 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
        [v72 setTimingFunction:v73];

        arrowContainerView12 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [arrowContainerView12 addAnimation:v72 forKey:@"fadeIn"];

        v75 = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
        [v75 setFromValue:v102];
        [v75 setToValue:&off_1016EAE20];
        [v75 setBeginTime:CACurrentMediaTime()];
        [v75 setDuration:0.5];
        [v75 setRemovedOnCompletion:1];
        [v75 setFillMode:kCAFillModeForwards];
        v76 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
        [v75 setTimingFunction:v76];

        arrowContainerView13 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [arrowContainerView13 addAnimation:v75 forKey:@"slideIn"];

        v78 = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
        [v75 beginTime];
        v80 = v79;
        [v75 duration];
        [v78 setBeginTime:v81 + v80];
        [v78 setFromValue:&off_1016EAE20];
        [v78 setToValue:v106];
        [v78 setDuration:0.5];
        [v78 setAutoreverses:1];
        LODWORD(v82) = 2139095039;
        [v78 setRepeatCount:v82];
        [v78 setFillMode:kCAFillModeForwards];
        v83 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [v78 setTimingFunction:v83];

        arrowContainerView14 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [arrowContainerView14 addAnimation:v78 forKey:@"backAndForth"];

        v7 = v110;
      }
    }
  }
}

- (void)_updateForCurrentState
{
  _videoNameForCurrentState = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _videoNameForCurrentState];
  v4 = sub_10100CA18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    selfCopy = self;
    v25 = 2112;
    v26 = _videoNameForCurrentState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating video: %@", buf, 0x16u);
  }

  v5 = [[NSDataAsset alloc] initWithName:_videoNameForCurrentState];
  data = [v5 data];
  v21[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v21[1] = AVAssetReferenceRestrictionsKey;
  v22[0] = &__kCFBooleanFalse;
  v22[1] = &off_1016EAE08;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v8 = [AVAsset assetWithData:data contentType:AVFileTypeAppleM4V options:v7];

  v9 = [AVPlayerItem playerItemWithAsset:v8];
  playerView = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self playerView];
  [playerView replaceCurrentItemWithPlayerItem:v9 preserveCurrentTimestamp:1];

  traitCollection = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:traitCollection compatibleWithTraitCollection:UIFontWeightBold];
  titleLabel = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self titleLabel];
  [titleLabel setFont:v12];

  traitCollection2 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v15 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:traitCollection2 compatibleWithTraitCollection:UIFontWeightSemibold];
  closeButton = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self closeButton];
  titleLabel2 = [closeButton titleLabel];
  [titleLabel2 setFont:v15];

  traitCollection3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v19 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleFootnote weight:traitCollection3 compatibleWithTraitCollection:UIFontWeightRegular];
  privacyLabel = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self privacyLabel];
  [privacyLabel setFont:v19];
}

- (id)_videoNameForCurrentState
{
  if ([(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _isDarkMode])
  {
    v2 = @"PedestrianAR_feature_intro_dark";
  }

  else
  {
    v2 = @"PedestrianAR_feature_intro_light";
  }

  return v2;
}

- (BOOL)_isDarkMode
{
  traitCollection = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (void)dismiss:(id)dismiss
{
  dismissCopy = dismiss;
  v5 = sub_10100CA18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Close button tapped; dismissing", &v8, 0xCu);
  }

  [(ContaineeViewController *)self handleDismissAction:dismissCopy];
  buttonReplica = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
  [buttonReplica removeFromSuperview];

  arrowContainerView = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
  [arrowContainerView removeFromSuperview];

  [GEOAPPortal captureUserAction:127 target:14 value:0];
}

- (void)didResignCurrent
{
  v5.receiver = self;
  v5.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v5 didResignCurrent];
  buttonReplica = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
  [buttonReplica removeFromSuperview];

  arrowContainerView = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
  [arrowContainerView removeFromSuperview];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v3 viewDidAppear:appear];
  [objc_opt_class() setShownTeachableMoment:1];
  [GEOAPPortal captureUserAction:21 target:14 value:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:?];
  if (disappearCopy)
  {
    [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _configureFloatingButtonHighlightIfNecessary];
    [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)viewDidLoad
{
  v138.receiver = self;
  v138.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v138 viewDidLoad];
  headerView = [(ContaineeViewController *)self headerView];
  [headerView removeFromSuperview];

  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  view = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
  topAnchor2 = [view topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v145 = v8;
  v9 = [NSArray arrayWithObjects:&v145 count:1];
  [NSLayoutConstraint activateConstraints:v9];

  v10 = [UIColor colorNamed:@"TeachableMomentCardBackgoundColor"];
  contentView2 = [(ContaineeViewController *)self contentView];
  [contentView2 setBackgroundColor:v10];

  v12 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v16 = [v12 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v16;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v18) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v18];
  [(UILabel *)self->_titleLabel setNumberOfLines:4];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  v19 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Pedestrian_AR_feature_intro_teachable_moment_card_title_text" value:@"localized string not found" table:0];
  [(UILabel *)self->_titleLabel setText:v21];

  contentView3 = [(ContaineeViewController *)self contentView];
  [contentView3 addSubview:self->_titleLabel];

  if (+[VLFDeviceInfo isNotchDevice])
  {
    v23 = 56.0;
  }

  else
  {
    v23 = 50.0;
  }

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v122 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v144[0] = v122;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-27.0];
  v144[1] = v26;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  topAnchor3 = [contentView6 topAnchor];
  v30 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v23];
  v144[2] = v30;
  v31 = [NSArray arrayWithObjects:v144 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  v32 = objc_alloc_init(UIView);
  animationContainer = self->_animationContainer;
  self->_animationContainer = v32;

  [(UIView *)self->_animationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView7 = [(ContaineeViewController *)self contentView];
  [contentView7 addSubview:self->_animationContainer];

  leadingAnchor3 = [(UIView *)self->_animationContainer leadingAnchor];
  contentView8 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView8 leadingAnchor];
  v118 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v143[0] = v118;
  trailingAnchor3 = [(UIView *)self->_animationContainer trailingAnchor];
  contentView9 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView9 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v143[1] = v35;
  topAnchor4 = [(UIView *)self->_animationContainer topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [topAnchor4 constraintEqualToAnchor:bottomAnchor];
  v143[2] = v38;
  heightAnchor = [(UIView *)self->_animationContainer heightAnchor];
  widthAnchor = [(UIView *)self->_animationContainer widthAnchor];
  v41 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.597333312 constant:0.0];
  v143[3] = v41;
  v42 = [NSArray arrayWithObjects:v143 count:4];
  [NSLayoutConstraint activateConstraints:v42];

  height = [[MapsLoopingVideoPlayerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  playerView = self->_playerView;
  self->_playerView = height;

  [(MapsLoopingVideoPlayerView *)self->_playerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_animationContainer addSubview:self->_playerView];
  leadingAnchor5 = [(MapsLoopingVideoPlayerView *)self->_playerView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_animationContainer leadingAnchor];
  v124 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v142[0] = v124;
  trailingAnchor5 = [(MapsLoopingVideoPlayerView *)self->_playerView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_animationContainer trailingAnchor];
  v111 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v142[1] = v111;
  topAnchor5 = [(MapsLoopingVideoPlayerView *)self->_playerView topAnchor];
  topAnchor6 = [(UIView *)self->_animationContainer topAnchor];
  v101 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v142[2] = v101;
  bottomAnchor2 = [(MapsLoopingVideoPlayerView *)self->_playerView bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_animationContainer bottomAnchor];
  v46 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v142[3] = v46;
  centerYAnchor = [(MapsLoopingVideoPlayerView *)self->_playerView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_animationContainer centerYAnchor];
  v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v142[4] = v49;
  heightAnchor2 = [(MapsLoopingVideoPlayerView *)self->_playerView heightAnchor];
  widthAnchor2 = [(MapsLoopingVideoPlayerView *)self->_playerView widthAnchor];
  v52 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2 multiplier:0.580817044 constant:0.0];
  v142[5] = v52;
  v53 = [NSArray arrayWithObjects:v142 count:6];
  [NSLayoutConstraint activateConstraints:v53];

  v54 = +[OBBoldTrayButton boldButton];
  closeButton = self->_closeButton;
  self->_closeButton = v54;

  [(UIButton *)self->_closeButton addTarget:self action:"dismiss:" forEvents:64];
  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v56) = 1148846080;
  [(UIButton *)self->_closeButton setContentCompressionResistancePriority:1 forAxis:v56];
  v57 = self->_closeButton;
  v58 = +[NSBundle mainBundle];
  v59 = [v58 localizedStringForKey:@"Pedestrian_AR_feature_intro_teachable_moment_card_ok_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v57 setTitle:v59 forState:0];

  contentView10 = [(ContaineeViewController *)self contentView];
  [contentView10 addSubview:self->_closeButton];

  leadingAnchor7 = [(UIButton *)self->_closeButton leadingAnchor];
  contentView11 = [(ContaineeViewController *)self contentView];
  leadingAnchor8 = [contentView11 leadingAnchor];
  v120 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:24.0];
  v141[0] = v120;
  trailingAnchor7 = [(UIButton *)self->_closeButton trailingAnchor];
  contentView12 = [(ContaineeViewController *)self contentView];
  trailingAnchor8 = [contentView12 trailingAnchor];
  v62 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-24.0];
  v141[1] = v62;
  topAnchor7 = [(UIButton *)self->_closeButton topAnchor];
  bottomAnchor4 = [(UIView *)self->_animationContainer bottomAnchor];
  v65 = [topAnchor7 constraintEqualToAnchor:bottomAnchor4];
  v141[2] = v65;
  heightAnchor3 = [(UIButton *)self->_closeButton heightAnchor];
  v67 = [heightAnchor3 constraintEqualToConstant:50.0];
  v141[3] = v67;
  v68 = [NSArray arrayWithObjects:v141 count:4];
  [NSLayoutConstraint activateConstraints:v68];

  if (GEOVisualLocalizationCrowdsourcingIsSupported() && GEOVisualLocalizationCrowdsourcingIsAllowed() && (GEOVisualLocalizationCrowdsourcingIsEnabled() & 1) != 0)
  {
    bottomAnchor5 = [(UIButton *)self->_closeButton bottomAnchor];
    contentView13 = [(ContaineeViewController *)self contentView];
    safeAreaLayoutGuide = [contentView13 safeAreaLayoutGuide];
    bottomAnchor6 = [safeAreaLayoutGuide bottomAnchor];
    LODWORD(v73) = 1148829696;
    v74 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0 priority:v73];
    v139[0] = v74;
    bottomAnchor7 = [(UIButton *)self->_closeButton bottomAnchor];
    contentView14 = [(ContaineeViewController *)self contentView];
    bottomAnchor8 = [contentView14 bottomAnchor];
    v137 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8 constant:-16.0];
    v139[1] = v137;
    v78 = [NSArray arrayWithObjects:v139 count:2];
    [NSLayoutConstraint activateConstraints:v78];
  }

  else
  {
    v79 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    privacyLabel = self->_privacyLabel;
    self->_privacyLabel = v79;

    [(UILabel *)self->_privacyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_privacyLabel setTextAlignment:1];
    LODWORD(v81) = 1148846080;
    [(UILabel *)self->_privacyLabel setContentCompressionResistancePriority:1 forAxis:v81];
    [(UILabel *)self->_privacyLabel setNumberOfLines:0];
    v82 = +[NSBundle mainBundle];
    v83 = [v82 localizedStringForKey:@"Pedestrian_AR_feature_intro_teachable_moment_card_privacy_caption_text" value:@"localized string not found" table:0];
    [(UILabel *)self->_privacyLabel setText:v83];

    v84 = +[UIColor systemGrayColor];
    [(UILabel *)self->_privacyLabel setTextColor:v84];

    contentView15 = [(ContaineeViewController *)self contentView];
    [contentView15 addSubview:self->_privacyLabel];

    if (+[VLFDeviceInfo isNotchDevice])
    {
      v86 = 20.0;
    }

    else
    {
      v86 = 18.0;
    }

    leadingAnchor9 = [(UILabel *)self->_privacyLabel leadingAnchor];
    contentView16 = [(ContaineeViewController *)self contentView];
    leadingAnchor10 = [contentView16 leadingAnchor];
    v135 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:24.0];
    v140[0] = v135;
    trailingAnchor9 = [(UILabel *)self->_privacyLabel trailingAnchor];
    contentView17 = [(ContaineeViewController *)self contentView];
    trailingAnchor10 = [contentView17 trailingAnchor];
    v100 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-24.0];
    v140[1] = v100;
    topAnchor8 = [(UILabel *)self->_privacyLabel topAnchor];
    bottomAnchor9 = [(UIButton *)self->_closeButton bottomAnchor];
    v137 = topAnchor8;
    v104 = [topAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:v86];
    v140[2] = v104;
    bottomAnchor10 = [(UILabel *)self->_privacyLabel bottomAnchor];
    contentView18 = [(ContaineeViewController *)self contentView];
    safeAreaLayoutGuide2 = [contentView18 safeAreaLayoutGuide];
    bottomAnchor11 = [safeAreaLayoutGuide2 bottomAnchor];
    LODWORD(v91) = 1148829696;
    v92 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:0.0 priority:v91];
    v140[3] = v92;
    bottomAnchor12 = [(UILabel *)self->_privacyLabel bottomAnchor];
    contentView19 = [(ContaineeViewController *)self contentView];
    bottomAnchor13 = [contentView19 bottomAnchor];
    v96 = [bottomAnchor12 constraintLessThanOrEqualToAnchor:bottomAnchor13 constant:-16.0];
    v140[4] = v96;
    v97 = [NSArray arrayWithObjects:v140 count:5];
    [NSLayoutConstraint activateConstraints:v97];

    safeAreaLayoutGuide = leadingAnchor10;
    contentView13 = contentView16;

    bottomAnchor5 = leadingAnchor9;
    bottomAnchor8 = v100;

    contentView14 = trailingAnchor10;
    v74 = trailingAnchor9;

    bottomAnchor7 = contentView17;
    bottomAnchor6 = v135;

    v78 = bottomAnchor9;
  }

  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _updateForCurrentState];
}

- (void)dealloc
{
  v3 = sub_10100CA18();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v4 dealloc];
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    v12 = sub_10006D178();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[PedestrianARFeatureIntroTeachableMomentContaineeViewController initWithCoordinator:]";
      v18 = 2080;
      v19 = "PedestrianARFeatureIntroTeachableMomentContaineeViewController.m";
      v20 = 1024;
      v21 = 80;
      v22 = 2080;
      v23 = "coordinator != nil";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v15.receiver = self;
  v15.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  v5 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v15 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = sub_10100CA18();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v5->_coordinator, coordinatorCopy);
    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController3 setPresentedModally:1];

    cardPresentationController4 = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController4 setEdgeAttachedRegularHeightDimmingBehavior:2];
  }

  return v5;
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)init
{
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (BOOL)shouldShowTeachableMoment
{
  v3 = +[PedestrianARSessionUsageTracker sharedInstance];
  hasUserEnteredAR = [v3 hasUserEnteredAR];

  if (hasUserEnteredAR)
  {
    v5 = sub_10100CA18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      selfCopy3 = self;
      v6 = "[%{public}p] User has entered AR; should NOT show feaure intro teachable moment card";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, &v11, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  hasShownTeachableMoment = [self hasShownTeachableMoment];
  v5 = sub_10100CA18();
  v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (hasShownTeachableMoment)
  {
    if (v8)
    {
      v11 = 134349056;
      selfCopy3 = self;
      v6 = "[%{public}p] User has seen the TM card within time threshold; should NOT show feaure intro teachable moment card";
      goto LABEL_7;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_12;
  }

  if (v8)
  {
    v11 = 134349056;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Feature intro teachable moment card is eligible to be shown", &v11, 0xCu);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

+ (void)setShownTeachableMoment:(BOOL)moment
{
  momentCopy = moment;
  v5 = sub_10100CA18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (momentCopy)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v15 = 134349314;
    selfCopy = self;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Setting hasShownTeachableMoment flag: %@", &v15, 0x16u);
  }

  if (momentCopy)
  {
    v8 = +[NSDate date];
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 integerForKey:@"kTimesShownPedestrianARFeatureIntroTeachableMomentKey"];

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v8 forKey:@"kLastDateShownPedestrianARFeatureIntroTeachableMomentKey"];

    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [NSNumber numberWithInteger:v10 + 1];
    [v12 setObject:v13 forKey:@"kTimesShownPedestrianARFeatureIntroTeachableMomentKey"];
  }

  else
  {
    v14 = +[NSUserDefaults standardUserDefaults];
    [v14 removeObjectForKey:@"kLastDateShownPedestrianARFeatureIntroTeachableMomentKey"];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 removeObjectForKey:@"kTimesShownPedestrianARFeatureIntroTeachableMomentKey"];
  }
}

+ (BOOL)hasShownTeachableMoment
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"kLastDateShownPedestrianARFeatureIntroTeachableMomentKey"];

  if (v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 integerForKey:@"kTimesShownPedestrianARFeatureIntroTeachableMomentKey"];

    if ((v6 - 1) >= 3)
    {
      v13 = sub_10100CA18();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v19 = 134349312;
        selfCopy3 = self;
        v21 = 2048;
        v22 = *&v6;
        v14 = "[%{public}p] User has been shown the feature intro teachable moment card too many times (%ld)";
        v15 = v13;
        v16 = 22;
        goto LABEL_9;
      }
    }

    else
    {
      GEOConfigGetDouble();
      v8 = v7;
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:v4];
      v11 = v10;

      v12 = sub_10100CA18();
      v13 = v12;
      if (v11 >= v8)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v19 = 134349824;
          selfCopy3 = self;
          v21 = 2048;
          v22 = v11;
          v23 = 2048;
          v24 = v8;
          v25 = 2048;
          v26 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}p] Time since the last time the feature intro teachable moment card was shown (%f) is greater than the maximum time interval (%f) based on the number of times it has been shown (%ld); treating as though card has never been shown", &v19, 0x2Au);
        }

        v17 = 0;
        goto LABEL_14;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v19 = 134349824;
        selfCopy3 = self;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v8;
        v25 = 2048;
        v26 = v6;
        v14 = "[%{public}p] Time since the last time the feature intro teachable moment card was shown (%f) is less than the maximum time interval (%f) based on the number of times it has been shown (%ld); treating as though card has already been shown";
        v15 = v13;
        v16 = 42;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, v14, &v19, v16);
      }
    }

    v17 = 1;
LABEL_14:

    goto LABEL_15;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

@end