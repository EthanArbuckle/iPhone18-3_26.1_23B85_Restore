@interface PedestrianARFeatureIntroTeachableMomentContaineeViewController
+ (BOOL)hasShownTeachableMoment;
+ (BOOL)shouldShowTeachableMoment;
+ (void)setShownTeachableMoment:(BOOL)a3;
- (BOOL)_isDarkMode;
- (PedestrianARCoordination)coordinator;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)init;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoder:(id)a3;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoordinator:(id)a3;
- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (id)_videoNameForCurrentState;
- (void)_configureFloatingButtonHighlightIfNecessary;
- (void)_updateForCurrentState;
- (void)dealloc;
- (void)didResignCurrent;
- (void)dismiss:(id)a3;
- (void)enterPedestrianAR:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation PedestrianARFeatureIntroTeachableMomentContaineeViewController

- (PedestrianARCoordination)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (void)enterPedestrianAR:(id)a3
{
  v4 = a3;
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
  v5 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self coordinator];
  [v5 enterPedestrianAR];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 == 5)
  {
    v5 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    v6 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    [v6 frame];
    v8 = v7;
    LODWORD(v7) = 1148846080;
    LODWORD(v9) = 1112014848;
    [v5 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v7, v9}];
    v3 = v10;

    v11 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    [v11 safeAreaInsets];
    v13 = v12;

    if (v13 == 0.0)
    {
      v14 = [(ContaineeViewController *)self cardPresentationController];
      [v14 bottomSafeOffset];
      v3 = v15 + v3;
    }
  }

  return v3;
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  if (a3 > 7 || ((1 << a3) & 0xA3) == 0)
  {
    v4 = sub_10100CA18();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Layout changed to landscape; dismissing", &v5, 0xCu);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_configureFloatingButtonHighlightIfNecessary
{
  v3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self coordinator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v5 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
    v6 = [v5 window];
    v7 = [v6 viewWithTag:&off_101661968];

    if (v7)
    {
      v8 = [MapsThemeButton buttonWithType:0];
      [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self setButtonReplica:v8];

      v9 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v10 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [v10 setClipsToBounds:1];

      v11 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v12 = [v11 layer];
      [v12 setMasksToBounds:1];

      v13 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v14 = [v13 layer];
      [v14 setCornerRadius:8.0];

      v15 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v16 = +[NSBundle mainBundle];
      v17 = [v16 localizedStringForKey:@"Pedestrian AR [Accessibility]" value:@"localized string not found" table:0];
      [v15 setAccessibilityLabel:v17];

      v18 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [v18 addTarget:self action:"enterPedestrianAR:" forControlEvents:64];

      v19 = [UIImage systemImageNamed:@"arkit"];
      v20 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [v20 setImage:v19 forState:0];

      v21 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v22 = +[MapsTheme floatingControlsTintColor];
      [v21 setTintColor:v22];

      v23 = +[UIColor systemBackgroundColor];
      v24 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [v24 setBackgroundColor:v23];

      v25 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      v26 = [v7 preferredSymbolConfigurationForImageInState:0];
      [v25 setPreferredSymbolConfiguration:v26 forImageInState:0];

      v27 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self presentationController];
      v28 = [v27 containerView];
      v29 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      [v28 addSubview:v29];

      v30 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
      LODWORD(v31) = 1148846080;
      v32 = [v30 _maps_constraintsEqualToEdgesOfView:v7 priority:v31];
      v33 = [v32 allConstraints];
      [NSLayoutConstraint activateConstraints:v33];

      if (GEOConfigGetBOOL())
      {
        v34 = [UIView alloc];
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        v38 = [v34 initWithFrame:{CGRectZero.origin.x, y, width, height}];
        [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self setArrowContainerView:v38];

        v39 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

        v40 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self presentationController];
        v41 = [v40 containerView];
        v42 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [v41 addSubview:v42];

        v107 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v103 = [v107 trailingAnchor];
        v105 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        v101 = [v105 leadingAnchor];
        v99 = [v103 constraintLessThanOrEqualToAnchor:v101 constant:-10.0];
        v112[0] = v99;
        v97 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v93 = [v97 centerYAnchor];
        v95 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        v91 = [v95 centerYAnchor];
        v88 = [v93 constraintEqualToAnchor:v91];
        v112[1] = v88;
        v87 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v85 = [v87 widthAnchor];
        [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        v43 = v109 = v19;
        v44 = [v43 widthAnchor];
        v45 = [v85 constraintEqualToAnchor:v44];
        v112[2] = v45;
        v46 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v47 = [v46 heightAnchor];
        v48 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
        v49 = [v48 heightAnchor];
        v50 = [v47 constraintEqualToAnchor:v49];
        v112[3] = v50;
        [NSArray arrayWithObjects:v112 count:4];
        v51 = v110 = v7;
        [NSLayoutConstraint activateConstraints:v51];

        v52 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self presentationController];
        v53 = [v52 containerView];
        v54 = [v53 effectiveUserInterfaceLayoutDirection];

        v55 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v55 setContentMode:4];
        v56 = +[UIColor systemWhiteColor];
        [v55 setTintColor:v56];

        v108 = [UIFont _preferredFontForTextStyle:UIFontTextStyleLargeTitle weight:UIFontWeightBold];
        v57 = [UIImageSymbolConfiguration configurationWithFont:v108];
        [v55 setPreferredSymbolConfiguration:v57];

        if (v54 == 1)
        {
          v58 = @"arrow.left";
        }

        else
        {
          v58 = @"arrow.right";
        }

        v59 = &off_1016EAE68;
        if (v54 == 1)
        {
          v59 = &off_1016EAE50;
        }

        v102 = v59;
        v60 = &off_1016EAE80;
        if (v54 != 1)
        {
          v60 = &off_1016EAE98;
        }

        v106 = v60;
        v61 = [UIImage systemImageNamed:v58];
        [v55 setImage:v61];

        v62 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [v62 addSubview:v55];

        v98 = [v55 leadingAnchor];
        v100 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v96 = [v100 leadingAnchor];
        v94 = [v98 constraintEqualToAnchor:v96];
        v111[0] = v94;
        v90 = [v55 trailingAnchor];
        v92 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v89 = [v92 trailingAnchor];
        v86 = [v90 constraintEqualToAnchor:v89];
        v111[1] = v86;
        v104 = v55;
        v63 = [v55 topAnchor];
        v64 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v65 = [v64 topAnchor];
        v66 = [v63 constraintEqualToAnchor:v65];
        v111[2] = v66;
        v67 = [v55 bottomAnchor];
        v68 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        v69 = [v68 bottomAnchor];
        v70 = [v67 constraintEqualToAnchor:v69];
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

        v74 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [v74 addAnimation:v72 forKey:@"fadeIn"];

        v75 = [CABasicAnimation animationWithKeyPath:@"transform.translation.x"];
        [v75 setFromValue:v102];
        [v75 setToValue:&off_1016EAE20];
        [v75 setBeginTime:CACurrentMediaTime()];
        [v75 setDuration:0.5];
        [v75 setRemovedOnCompletion:1];
        [v75 setFillMode:kCAFillModeForwards];
        v76 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
        [v75 setTimingFunction:v76];

        v77 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [v77 addAnimation:v75 forKey:@"slideIn"];

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

        v84 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
        [v84 addAnimation:v78 forKey:@"backAndForth"];

        v7 = v110;
      }
    }
  }
}

- (void)_updateForCurrentState
{
  v3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _videoNameForCurrentState];
  v4 = sub_10100CA18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v24 = self;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating video: %@", buf, 0x16u);
  }

  v5 = [[NSDataAsset alloc] initWithName:v3];
  v6 = [v5 data];
  v21[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v21[1] = AVAssetReferenceRestrictionsKey;
  v22[0] = &__kCFBooleanFalse;
  v22[1] = &off_1016EAE08;
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v8 = [AVAsset assetWithData:v6 contentType:AVFileTypeAppleM4V options:v7];

  v9 = [AVPlayerItem playerItemWithAsset:v8];
  v10 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self playerView];
  [v10 replaceCurrentItemWithPlayerItem:v9 preserveCurrentTimestamp:1];

  v11 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v11 compatibleWithTraitCollection:UIFontWeightBold];
  v13 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self titleLabel];
  [v13 setFont:v12];

  v14 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v15 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v14 compatibleWithTraitCollection:UIFontWeightSemibold];
  v16 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self closeButton];
  v17 = [v16 titleLabel];
  [v17 setFont:v15];

  v18 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v19 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleFootnote weight:v18 compatibleWithTraitCollection:UIFontWeightRegular];
  v20 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self privacyLabel];
  [v20 setFont:v19];
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
  v2 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return v3;
}

- (void)dismiss:(id)a3
{
  v4 = a3;
  v5 = sub_10100CA18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134349056;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Close button tapped; dismissing", &v8, 0xCu);
  }

  [(ContaineeViewController *)self handleDismissAction:v4];
  v6 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
  [v6 removeFromSuperview];

  v7 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
  [v7 removeFromSuperview];

  [GEOAPPortal captureUserAction:127 target:14 value:0];
}

- (void)didResignCurrent
{
  v5.receiver = self;
  v5.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v5 didResignCurrent];
  v3 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self buttonReplica];
  [v3 removeFromSuperview];

  v4 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self arrowContainerView];
  [v4 removeFromSuperview];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v3 viewDidAppear:a3];
  [objc_opt_class() setShownTeachableMoment:1];
  [GEOAPPortal captureUserAction:21 target:14 value:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:?];
  if (v4)
  {
    [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _configureFloatingButtonHighlightIfNecessary];
    [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)viewDidLoad
{
  v138.receiver = self;
  v138.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v138 viewDidLoad];
  v3 = [(ContaineeViewController *)self headerView];
  [v3 removeFromSuperview];

  v4 = [(ContaineeViewController *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self view];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v145 = v8;
  v9 = [NSArray arrayWithObjects:&v145 count:1];
  [NSLayoutConstraint activateConstraints:v9];

  v10 = [UIColor colorNamed:@"TeachableMomentCardBackgoundColor"];
  v11 = [(ContaineeViewController *)self contentView];
  [v11 setBackgroundColor:v10];

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

  v22 = [(ContaineeViewController *)self contentView];
  [v22 addSubview:self->_titleLabel];

  if (+[VLFDeviceInfo isNotchDevice])
  {
    v23 = 56.0;
  }

  else
  {
    v23 = 50.0;
  }

  v131 = [(UILabel *)self->_titleLabel leadingAnchor];
  v136 = [(ContaineeViewController *)self contentView];
  v127 = [v136 leadingAnchor];
  v122 = [v131 constraintEqualToAnchor:v127 constant:30.0];
  v144[0] = v122;
  v114 = [(UILabel *)self->_titleLabel trailingAnchor];
  v24 = [(ContaineeViewController *)self contentView];
  v25 = [v24 trailingAnchor];
  v26 = [v114 constraintEqualToAnchor:v25 constant:-27.0];
  v144[1] = v26;
  v27 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v28 = [(ContaineeViewController *)self contentView];
  v29 = [v28 topAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:v23];
  v144[2] = v30;
  v31 = [NSArray arrayWithObjects:v144 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  v32 = objc_alloc_init(UIView);
  animationContainer = self->_animationContainer;
  self->_animationContainer = v32;

  [(UIView *)self->_animationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [(ContaineeViewController *)self contentView];
  [v34 addSubview:self->_animationContainer];

  v128 = [(UIView *)self->_animationContainer leadingAnchor];
  v132 = [(ContaineeViewController *)self contentView];
  v123 = [v132 leadingAnchor];
  v118 = [v128 constraintEqualToAnchor:v123];
  v143[0] = v118;
  v110 = [(UIView *)self->_animationContainer trailingAnchor];
  v115 = [(ContaineeViewController *)self contentView];
  v105 = [v115 trailingAnchor];
  v35 = [v110 constraintEqualToAnchor:v105];
  v143[1] = v35;
  v36 = [(UIView *)self->_animationContainer topAnchor];
  v37 = [(UILabel *)self->_titleLabel bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v143[2] = v38;
  v39 = [(UIView *)self->_animationContainer heightAnchor];
  v40 = [(UIView *)self->_animationContainer widthAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 multiplier:0.597333312 constant:0.0];
  v143[3] = v41;
  v42 = [NSArray arrayWithObjects:v143 count:4];
  [NSLayoutConstraint activateConstraints:v42];

  v43 = [[MapsLoopingVideoPlayerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  playerView = self->_playerView;
  self->_playerView = v43;

  [(MapsLoopingVideoPlayerView *)self->_playerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_animationContainer addSubview:self->_playerView];
  v133 = [(MapsLoopingVideoPlayerView *)self->_playerView leadingAnchor];
  v129 = [(UIView *)self->_animationContainer leadingAnchor];
  v124 = [v133 constraintEqualToAnchor:v129];
  v142[0] = v124;
  v119 = [(MapsLoopingVideoPlayerView *)self->_playerView trailingAnchor];
  v116 = [(UIView *)self->_animationContainer trailingAnchor];
  v111 = [v119 constraintEqualToAnchor:v116];
  v142[1] = v111;
  v107 = [(MapsLoopingVideoPlayerView *)self->_playerView topAnchor];
  v103 = [(UIView *)self->_animationContainer topAnchor];
  v101 = [v107 constraintGreaterThanOrEqualToAnchor:v103];
  v142[2] = v101;
  v99 = [(MapsLoopingVideoPlayerView *)self->_playerView bottomAnchor];
  v45 = [(UIView *)self->_animationContainer bottomAnchor];
  v46 = [v99 constraintLessThanOrEqualToAnchor:v45];
  v142[3] = v46;
  v47 = [(MapsLoopingVideoPlayerView *)self->_playerView centerYAnchor];
  v48 = [(UIView *)self->_animationContainer centerYAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  v142[4] = v49;
  v50 = [(MapsLoopingVideoPlayerView *)self->_playerView heightAnchor];
  v51 = [(MapsLoopingVideoPlayerView *)self->_playerView widthAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 multiplier:0.580817044 constant:0.0];
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

  v60 = [(ContaineeViewController *)self contentView];
  [v60 addSubview:self->_closeButton];

  v130 = [(UIButton *)self->_closeButton leadingAnchor];
  v134 = [(ContaineeViewController *)self contentView];
  v125 = [v134 leadingAnchor];
  v120 = [v130 constraintEqualToAnchor:v125 constant:24.0];
  v141[0] = v120;
  v108 = [(UIButton *)self->_closeButton trailingAnchor];
  v112 = [(ContaineeViewController *)self contentView];
  v61 = [v112 trailingAnchor];
  v62 = [v108 constraintEqualToAnchor:v61 constant:-24.0];
  v141[1] = v62;
  v63 = [(UIButton *)self->_closeButton topAnchor];
  v64 = [(UIView *)self->_animationContainer bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  v141[2] = v65;
  v66 = [(UIButton *)self->_closeButton heightAnchor];
  v67 = [v66 constraintEqualToConstant:50.0];
  v141[3] = v67;
  v68 = [NSArray arrayWithObjects:v141 count:4];
  [NSLayoutConstraint activateConstraints:v68];

  if (GEOVisualLocalizationCrowdsourcingIsSupported() && GEOVisualLocalizationCrowdsourcingIsAllowed() && (GEOVisualLocalizationCrowdsourcingIsEnabled() & 1) != 0)
  {
    v69 = [(UIButton *)self->_closeButton bottomAnchor];
    v70 = [(ContaineeViewController *)self contentView];
    v71 = [v70 safeAreaLayoutGuide];
    v72 = [v71 bottomAnchor];
    LODWORD(v73) = 1148829696;
    v74 = [v69 constraintEqualToAnchor:v72 constant:0.0 priority:v73];
    v139[0] = v74;
    v75 = [(UIButton *)self->_closeButton bottomAnchor];
    v76 = [(ContaineeViewController *)self contentView];
    v77 = [v76 bottomAnchor];
    v137 = [v75 constraintLessThanOrEqualToAnchor:v77 constant:-16.0];
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

    v85 = [(ContaineeViewController *)self contentView];
    [v85 addSubview:self->_privacyLabel];

    if (+[VLFDeviceInfo isNotchDevice])
    {
      v86 = 20.0;
    }

    else
    {
      v86 = 18.0;
    }

    v121 = [(UILabel *)self->_privacyLabel leadingAnchor];
    v126 = [(ContaineeViewController *)self contentView];
    v113 = [v126 leadingAnchor];
    v135 = [v121 constraintEqualToAnchor:v113 constant:24.0];
    v140[0] = v135;
    v109 = [(UILabel *)self->_privacyLabel trailingAnchor];
    v117 = [(ContaineeViewController *)self contentView];
    v106 = [v117 trailingAnchor];
    v100 = [v109 constraintEqualToAnchor:v106 constant:-24.0];
    v140[1] = v100;
    v87 = [(UILabel *)self->_privacyLabel topAnchor];
    v102 = [(UIButton *)self->_closeButton bottomAnchor];
    v137 = v87;
    v104 = [v87 constraintEqualToAnchor:v102 constant:v86];
    v140[2] = v104;
    v98 = [(UILabel *)self->_privacyLabel bottomAnchor];
    v88 = [(ContaineeViewController *)self contentView];
    v89 = [v88 safeAreaLayoutGuide];
    v90 = [v89 bottomAnchor];
    LODWORD(v91) = 1148829696;
    v92 = [v98 constraintEqualToAnchor:v90 constant:0.0 priority:v91];
    v140[3] = v92;
    v93 = [(UILabel *)self->_privacyLabel bottomAnchor];
    v94 = [(ContaineeViewController *)self contentView];
    v95 = [v94 bottomAnchor];
    v96 = [v93 constraintLessThanOrEqualToAnchor:v95 constant:-16.0];
    v140[4] = v96;
    v97 = [NSArray arrayWithObjects:v140 count:5];
    [NSLayoutConstraint activateConstraints:v97];

    v71 = v113;
    v70 = v126;

    v69 = v121;
    v77 = v100;

    v76 = v106;
    v74 = v109;

    v75 = v117;
    v72 = v135;

    v78 = v102;
  }

  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)self _updateForCurrentState];
}

- (void)dealloc
{
  v3 = sub_10100CA18();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARFeatureIntroTeachableMomentContaineeViewController;
  [(PedestrianARFeatureIntroTeachableMomentContaineeViewController *)&v4 dealloc];
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoordinator:(id)a3
{
  v4 = a3;
  if (!v4)
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

    objc_storeWeak(&v5->_coordinator, v4);
    v7 = [(ContaineeViewController *)v5 cardPresentationController];
    [v7 setHideGrabber:1];

    v8 = [(ContaineeViewController *)v5 cardPresentationController];
    [v8 setAllowsSwipeToDismiss:0];

    v9 = [(ContaineeViewController *)v5 cardPresentationController];
    [v9 setPresentedModally:1];

    v10 = [(ContaineeViewController *)v5 cardPresentationController];
    [v10 setEdgeAttachedRegularHeightDimmingBehavior:2];
  }

  return v5;
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithCoder:(id)a3
{
  v3 = a3;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (PedestrianARFeatureIntroTeachableMomentContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v4 = [v3 hasUserEnteredAR];

  if (v4)
  {
    v5 = sub_10100CA18();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134349056;
      v12 = a1;
      v6 = "[%{public}p] User has entered AR; should NOT show feaure intro teachable moment card";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, v6, &v11, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = [a1 hasShownTeachableMoment];
  v5 = sub_10100CA18();
  v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v8)
    {
      v11 = 134349056;
      v12 = a1;
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
    v12 = a1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Feature intro teachable moment card is eligible to be shown", &v11, 0xCu);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

+ (void)setShownTeachableMoment:(BOOL)a3
{
  v3 = a3;
  v5 = sub_10100CA18();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v15 = 134349314;
    v16 = a1;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Setting hasShownTeachableMoment flag: %@", &v15, 0x16u);
  }

  if (v3)
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
        v20 = a1;
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
          v20 = a1;
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
        v20 = a1;
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