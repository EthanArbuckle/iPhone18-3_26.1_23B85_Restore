@interface PedestrianARRaiseToEnterTeachableMomentContaineeViewController
+ (BOOL)hasShownTeachableMoment;
+ (void)setShownTeachableMoment:(BOOL)a3;
- (BOOL)_isDarkMode;
- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)init;
- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithCoder:(id)a3;
- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (id)_videoNameForCurrentState;
- (void)_updateForCurrentState;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation PedestrianARRaiseToEnterTeachableMomentContaineeViewController

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 == 5)
  {
    v5 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
    v6 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
    [v6 frame];
    v8 = v7;
    LODWORD(v7) = 1148846080;
    LODWORD(v9) = 1112014848;
    [v5 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v7, v9}];
    v3 = v10;

    v11 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
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
    v4 = sub_100F9B360();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Layout changed to landscape; dismissing", &v5, 0xCu);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_updateForCurrentState
{
  v3 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _videoNameForCurrentState];
  v4 = sub_100F9B360();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    v21 = self;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating video: %@", buf, 0x16u);
  }

  v5 = [[NSDataAsset alloc] initWithName:v3];
  v6 = [v5 data];
  v18[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v18[1] = AVAssetReferenceRestrictionsKey;
  v19[0] = &__kCFBooleanFalse;
  v19[1] = &off_1016EABF8;
  v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v8 = [AVAsset assetWithData:v6 contentType:AVFileTypeAppleM4V options:v7];

  v9 = [AVPlayerItem playerItemWithAsset:v8];
  v10 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self playerView];
  [v10 replaceCurrentItemWithPlayerItem:v9 preserveCurrentTimestamp:1];

  v11 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:v11 compatibleWithTraitCollection:UIFontWeightBold];
  v13 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self titleLabel];
  [v13 setFont:v12];

  v14 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v15 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:v14 compatibleWithTraitCollection:UIFontWeightSemibold];
  v16 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self closeButton];
  v17 = [v16 titleLabel];
  [v17 setFont:v15];
}

- (id)_videoNameForCurrentState
{
  v2 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _isDarkMode];
  v3 = +[VLFDeviceInfo isIslandDevice];
  if (v2)
  {
    if (v3)
    {
      return @"PedestrianAR_raise_to_enter_island_dark";
    }

    v5 = +[VLFDeviceInfo isNotchDevice];
    v6 = @"PedestrianAR_raise_to_enter_notchless_dark";
    v7 = @"PedestrianAR_raise_to_enter_notch_dark";
  }

  else
  {
    if (v3)
    {
      return @"PedestrianAR_raise_to_enter_island_light";
    }

    v5 = +[VLFDeviceInfo isNotchDevice];
    v6 = @"PedestrianAR_raise_to_enter_notchless_light";
    v7 = @"PedestrianAR_raise_to_enter_notch_light";
  }

  if (v5)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (BOOL)_isDarkMode
{
  v2 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)&v3 viewDidAppear:a3];
  [objc_opt_class() setShownTeachableMoment:1];
  [GEOAPPortal captureUserAction:21 target:15 value:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:?];
  if (v4)
  {
    [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)viewDidLoad
{
  v115.receiver = self;
  v115.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v115 viewDidLoad];
  v3 = [(ContaineeViewController *)self headerView];
  [v3 removeFromSuperview];

  v4 = [(ContaineeViewController *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v120 = v8;
  v9 = [NSArray arrayWithObjects:&v120 count:1];
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
  v19 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Pedestrian_AR_raise_to_enter_teachable_moment_card_title_text" value:@"localized string not found" table:0];
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

  v106 = [(UILabel *)self->_titleLabel leadingAnchor];
  v110 = [(ContaineeViewController *)self contentView];
  v102 = [v110 leadingAnchor];
  v98 = [v106 constraintEqualToAnchor:v102 constant:30.0];
  v119[0] = v98;
  v94 = [(UILabel *)self->_titleLabel trailingAnchor];
  v24 = [(ContaineeViewController *)self contentView];
  v25 = [v24 trailingAnchor];
  v26 = [v94 constraintEqualToAnchor:v25 constant:-27.0];
  v119[1] = v26;
  v27 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v28 = [(ContaineeViewController *)self contentView];
  v29 = [v28 topAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:v23];
  v119[2] = v30;
  v31 = [NSArray arrayWithObjects:v119 count:3];
  [NSLayoutConstraint activateConstraints:v31];

  v32 = objc_alloc_init(UIView);
  animationContainer = self->_animationContainer;
  self->_animationContainer = v32;

  [(UIView *)self->_animationContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [(ContaineeViewController *)self contentView];
  [v34 addSubview:self->_animationContainer];

  v103 = [(UIView *)self->_animationContainer leadingAnchor];
  v107 = [(ContaineeViewController *)self contentView];
  v99 = [v107 leadingAnchor];
  v95 = [v103 constraintEqualToAnchor:v99];
  v118[0] = v95;
  v88 = [(UIView *)self->_animationContainer trailingAnchor];
  v91 = [(ContaineeViewController *)self contentView];
  v35 = [v91 trailingAnchor];
  v36 = [v88 constraintEqualToAnchor:v35];
  v118[1] = v36;
  v37 = [(UIView *)self->_animationContainer topAnchor];
  v38 = [(UILabel *)self->_titleLabel bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v118[2] = v39;
  v40 = [(UIView *)self->_animationContainer heightAnchor];
  v41 = [(UIView *)self->_animationContainer widthAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 multiplier:0.720000029 constant:0.0];
  v118[3] = v42;
  v43 = [NSArray arrayWithObjects:v118 count:4];
  [NSLayoutConstraint activateConstraints:v43];

  v44 = [[MapsLoopingVideoPlayerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  playerView = self->_playerView;
  self->_playerView = v44;

  [(MapsLoopingVideoPlayerView *)self->_playerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_animationContainer addSubview:self->_playerView];
  v108 = [(MapsLoopingVideoPlayerView *)self->_playerView leadingAnchor];
  v104 = [(UIView *)self->_animationContainer leadingAnchor];
  v100 = [v108 constraintEqualToAnchor:v104];
  v117[0] = v100;
  v96 = [(MapsLoopingVideoPlayerView *)self->_playerView trailingAnchor];
  v92 = [(UIView *)self->_animationContainer trailingAnchor];
  v89 = [v96 constraintEqualToAnchor:v92];
  v117[1] = v89;
  v86 = [(MapsLoopingVideoPlayerView *)self->_playerView topAnchor];
  v84 = [(UIView *)self->_animationContainer topAnchor];
  v82 = [v86 constraintGreaterThanOrEqualToAnchor:v84];
  v117[2] = v82;
  v80 = [(MapsLoopingVideoPlayerView *)self->_playerView bottomAnchor];
  v46 = [(UIView *)self->_animationContainer bottomAnchor];
  v47 = [v80 constraintLessThanOrEqualToAnchor:v46];
  v117[3] = v47;
  v48 = [(MapsLoopingVideoPlayerView *)self->_playerView centerYAnchor];
  v49 = [(UIView *)self->_animationContainer centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  v117[4] = v50;
  v51 = [(MapsLoopingVideoPlayerView *)self->_playerView heightAnchor];
  v52 = [(MapsLoopingVideoPlayerView *)self->_playerView widthAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 multiplier:0.580817044 constant:0.0];
  v117[5] = v53;
  v54 = [NSArray arrayWithObjects:v117 count:6];
  [NSLayoutConstraint activateConstraints:v54];

  objc_initWeak(&location, self);
  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_100F9C5DC;
  v112[3] = &unk_101661900;
  objc_copyWeak(&v113, &location);
  v55 = [UIAction actionWithHandler:v112];
  v56 = [UIButton buttonWithType:1 primaryAction:v55];
  closeButton = self->_closeButton;
  self->_closeButton = v56;

  [(UIButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v58) = 1148846080;
  [(UIButton *)self->_closeButton setContentCompressionResistancePriority:1 forAxis:v58];
  v59 = [(UIButton *)self->_closeButton layer];
  [v59 setCornerRadius:12.0];

  v60 = +[UIColor systemBlueColor];
  [(UIButton *)self->_closeButton setBackgroundColor:v60];

  v61 = self->_closeButton;
  v62 = +[NSBundle mainBundle];
  v63 = [v62 localizedStringForKey:@"Pedestrian_AR_raise_to_enter_teachable_moment_card_ok_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v61 setTitle:v63 forState:0];

  v64 = self->_closeButton;
  v65 = +[UIColor systemWhiteColor];
  [(UIButton *)v64 setTitleColor:v65 forState:0];

  v66 = [(ContaineeViewController *)self contentView];
  [v66 addSubview:self->_closeButton];

  v105 = [(UIButton *)self->_closeButton leadingAnchor];
  v109 = [(ContaineeViewController *)self contentView];
  v101 = [v109 leadingAnchor];
  v97 = [v105 constraintEqualToAnchor:v101 constant:24.0];
  v116[0] = v97;
  v90 = [(UIButton *)self->_closeButton trailingAnchor];
  v93 = [(ContaineeViewController *)self contentView];
  v87 = [v93 trailingAnchor];
  v85 = [v90 constraintEqualToAnchor:v87 constant:-24.0];
  v116[1] = v85;
  v83 = [(UIButton *)self->_closeButton topAnchor];
  v111 = [(UIView *)self->_animationContainer bottomAnchor];
  v81 = [v83 constraintEqualToAnchor:v111];
  v116[2] = v81;
  v79 = [(UIButton *)self->_closeButton heightAnchor];
  v78 = [v79 constraintEqualToConstant:50.0];
  v116[3] = v78;
  v77 = [(UIButton *)self->_closeButton bottomAnchor];
  v67 = [(ContaineeViewController *)self contentView];
  v68 = [v67 safeAreaLayoutGuide];
  v69 = [v68 bottomAnchor];
  LODWORD(v70) = 1148829696;
  v71 = [v77 constraintEqualToAnchor:v69 constant:-10.0 priority:v70];
  v116[4] = v71;
  v72 = [(UIButton *)self->_closeButton bottomAnchor];
  v73 = [(ContaineeViewController *)self contentView];
  v74 = [v73 bottomAnchor];
  v75 = [v72 constraintLessThanOrEqualToAnchor:v74 constant:-24.0];
  v116[5] = v75;
  v76 = [NSArray arrayWithObjects:v116 count:6];
  [NSLayoutConstraint activateConstraints:v76];

  [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _updateForCurrentState];
  objc_destroyWeak(&v113);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = sub_100F9B360();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)&v4 dealloc];
}

- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)init
{
  v9.receiver = self;
  v9.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  v2 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)&v9 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = sub_100F9B360();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = [(ContaineeViewController *)v2 cardPresentationController];
    [v4 setHideGrabber:1];

    v5 = [(ContaineeViewController *)v2 cardPresentationController];
    [v5 setAllowsSwipeToDismiss:0];

    v6 = [(ContaineeViewController *)v2 cardPresentationController];
    [v6 setPresentedModally:1];

    v7 = [(ContaineeViewController *)v2 cardPresentationController];
    [v7 setTakesAvailableHeight:1];
  }

  return v2;
}

- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithCoder:(id)a3
{
  v3 = a3;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (void)setShownTeachableMoment:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100F9B360();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v10 = 134349314;
    v11 = a1;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Setting hasShownTeachableMoment flag: %@", &v10, 0x16u);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = v8;
  if (v3)
  {
    [v8 setBool:1 forKey:@"kHasShownPedestrianARRaiseToEnterTeachableMomentKey"];
  }

  else
  {
    [v8 removeObjectForKey:@"kHasShownPedestrianARRaiseToEnterTeachableMomentKey"];
  }
}

+ (BOOL)hasShownTeachableMoment
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"kHasShownPedestrianARRaiseToEnterTeachableMomentKey"];

  return v3;
}

@end