@interface PedestrianARRaiseToEnterTeachableMomentContaineeViewController
+ (BOOL)hasShownTeachableMoment;
+ (void)setShownTeachableMoment:(BOOL)moment;
- (BOOL)_isDarkMode;
- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)init;
- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithCoder:(id)coder;
- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)heightForLayout:(unint64_t)layout;
- (id)_videoNameForCurrentState;
- (void)_updateForCurrentState;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation PedestrianARRaiseToEnterTeachableMomentContaineeViewController

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    view = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
    view2 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
    [view2 frame];
    v8 = v7;
    LODWORD(v7) = 1148846080;
    LODWORD(v9) = 1112014848;
    [view systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v7, v9}];
    v3 = v10;

    view3 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
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
    v4 = sub_100F9B360();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Layout changed to landscape; dismissing", &v5, 0xCu);
    }

    [(ContaineeViewController *)self handleDismissAction:0];
  }
}

- (void)_updateForCurrentState
{
  _videoNameForCurrentState = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _videoNameForCurrentState];
  v4 = sub_100F9B360();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349314;
    selfCopy = self;
    v22 = 2112;
    v23 = _videoNameForCurrentState;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}p] Updating video: %@", buf, 0x16u);
  }

  v5 = [[NSDataAsset alloc] initWithName:_videoNameForCurrentState];
  data = [v5 data];
  v18[0] = AVAssetPreferPreciseDurationAndTimingKey;
  v18[1] = AVAssetReferenceRestrictionsKey;
  v19[0] = &__kCFBooleanFalse;
  v19[1] = &off_1016EABF8;
  v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v8 = [AVAsset assetWithData:data contentType:AVFileTypeAppleM4V options:v7];

  v9 = [AVPlayerItem playerItemWithAsset:v8];
  playerView = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self playerView];
  [playerView replaceCurrentItemWithPlayerItem:v9 preserveCurrentTimestamp:1];

  traitCollection = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v12 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle1 weight:traitCollection compatibleWithTraitCollection:UIFontWeightBold];
  titleLabel = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self titleLabel];
  [titleLabel setFont:v12];

  traitCollection2 = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v15 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:traitCollection2 compatibleWithTraitCollection:UIFontWeightSemibold];
  closeButton = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self closeButton];
  titleLabel2 = [closeButton titleLabel];
  [titleLabel2 setFont:v15];
}

- (id)_videoNameForCurrentState
{
  _isDarkMode = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _isDarkMode];
  v3 = +[VLFDeviceInfo isIslandDevice];
  if (_isDarkMode)
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
  traitCollection = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == 2;

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)&v3 viewDidAppear:appear];
  [objc_opt_class() setShownTeachableMoment:1];
  [GEOAPPortal captureUserAction:21 target:15 value:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:?];
  if (disappearCopy)
  {
    [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self _updateForCurrentState];
  }
}

- (void)viewDidLoad
{
  v115.receiver = self;
  v115.super_class = PedestrianARRaiseToEnterTeachableMomentContaineeViewController;
  [(ContaineeViewController *)&v115 viewDidLoad];
  headerView = [(ContaineeViewController *)self headerView];
  [headerView removeFromSuperview];

  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [contentView topAnchor];
  view = [(PedestrianARRaiseToEnterTeachableMomentContaineeViewController *)self view];
  topAnchor2 = [view topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v120 = v8;
  v9 = [NSArray arrayWithObjects:&v120 count:1];
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
  v19 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Pedestrian_AR_raise_to_enter_teachable_moment_card_title_text" value:@"localized string not found" table:0];
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
  v98 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v119[0] = v98;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-27.0];
  v119[1] = v26;
  firstBaselineAnchor = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  topAnchor3 = [contentView6 topAnchor];
  v30 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v23];
  v119[2] = v30;
  v31 = [NSArray arrayWithObjects:v119 count:3];
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
  v95 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v118[0] = v95;
  trailingAnchor3 = [(UIView *)self->_animationContainer trailingAnchor];
  contentView9 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView9 trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v118[1] = v36;
  topAnchor4 = [(UIView *)self->_animationContainer topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v39 = [topAnchor4 constraintEqualToAnchor:bottomAnchor];
  v118[2] = v39;
  heightAnchor = [(UIView *)self->_animationContainer heightAnchor];
  widthAnchor = [(UIView *)self->_animationContainer widthAnchor];
  v42 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.720000029 constant:0.0];
  v118[3] = v42;
  v43 = [NSArray arrayWithObjects:v118 count:4];
  [NSLayoutConstraint activateConstraints:v43];

  height = [[MapsLoopingVideoPlayerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  playerView = self->_playerView;
  self->_playerView = height;

  [(MapsLoopingVideoPlayerView *)self->_playerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_animationContainer addSubview:self->_playerView];
  leadingAnchor5 = [(MapsLoopingVideoPlayerView *)self->_playerView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_animationContainer leadingAnchor];
  v100 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v117[0] = v100;
  trailingAnchor5 = [(MapsLoopingVideoPlayerView *)self->_playerView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_animationContainer trailingAnchor];
  v89 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v117[1] = v89;
  topAnchor5 = [(MapsLoopingVideoPlayerView *)self->_playerView topAnchor];
  topAnchor6 = [(UIView *)self->_animationContainer topAnchor];
  v82 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v117[2] = v82;
  bottomAnchor2 = [(MapsLoopingVideoPlayerView *)self->_playerView bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_animationContainer bottomAnchor];
  v47 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v117[3] = v47;
  centerYAnchor = [(MapsLoopingVideoPlayerView *)self->_playerView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_animationContainer centerYAnchor];
  v50 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v117[4] = v50;
  heightAnchor2 = [(MapsLoopingVideoPlayerView *)self->_playerView heightAnchor];
  widthAnchor2 = [(MapsLoopingVideoPlayerView *)self->_playerView widthAnchor];
  v53 = [heightAnchor2 constraintEqualToAnchor:widthAnchor2 multiplier:0.580817044 constant:0.0];
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
  layer = [(UIButton *)self->_closeButton layer];
  [layer setCornerRadius:12.0];

  v60 = +[UIColor systemBlueColor];
  [(UIButton *)self->_closeButton setBackgroundColor:v60];

  v61 = self->_closeButton;
  v62 = +[NSBundle mainBundle];
  v63 = [v62 localizedStringForKey:@"Pedestrian_AR_raise_to_enter_teachable_moment_card_ok_button_text" value:@"localized string not found" table:0];
  [(UIButton *)v61 setTitle:v63 forState:0];

  v64 = self->_closeButton;
  v65 = +[UIColor systemWhiteColor];
  [(UIButton *)v64 setTitleColor:v65 forState:0];

  contentView10 = [(ContaineeViewController *)self contentView];
  [contentView10 addSubview:self->_closeButton];

  leadingAnchor7 = [(UIButton *)self->_closeButton leadingAnchor];
  contentView11 = [(ContaineeViewController *)self contentView];
  leadingAnchor8 = [contentView11 leadingAnchor];
  v97 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:24.0];
  v116[0] = v97;
  trailingAnchor7 = [(UIButton *)self->_closeButton trailingAnchor];
  contentView12 = [(ContaineeViewController *)self contentView];
  trailingAnchor8 = [contentView12 trailingAnchor];
  v85 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-24.0];
  v116[1] = v85;
  topAnchor7 = [(UIButton *)self->_closeButton topAnchor];
  bottomAnchor4 = [(UIView *)self->_animationContainer bottomAnchor];
  v81 = [topAnchor7 constraintEqualToAnchor:bottomAnchor4];
  v116[2] = v81;
  heightAnchor3 = [(UIButton *)self->_closeButton heightAnchor];
  v78 = [heightAnchor3 constraintEqualToConstant:50.0];
  v116[3] = v78;
  bottomAnchor5 = [(UIButton *)self->_closeButton bottomAnchor];
  contentView13 = [(ContaineeViewController *)self contentView];
  safeAreaLayoutGuide = [contentView13 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide bottomAnchor];
  LODWORD(v70) = 1148829696;
  v71 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-10.0 priority:v70];
  v116[4] = v71;
  bottomAnchor7 = [(UIButton *)self->_closeButton bottomAnchor];
  contentView14 = [(ContaineeViewController *)self contentView];
  bottomAnchor8 = [contentView14 bottomAnchor];
  v75 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8 constant:-24.0];
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
    selfCopy = self;
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

    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController3 setPresentedModally:1];

    cardPresentationController4 = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController4 setTakesAvailableHeight:1];
  }

  return v2;
}

- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (PedestrianARRaiseToEnterTeachableMomentContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  result = [NSException raise:@"MethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (void)setShownTeachableMoment:(BOOL)moment
{
  momentCopy = moment;
  v5 = sub_100F9B360();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = @"NO";
    if (momentCopy)
    {
      v6 = @"YES";
    }

    v7 = v6;
    v10 = 134349314;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Setting hasShownTeachableMoment flag: %@", &v10, 0x16u);
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = v8;
  if (momentCopy)
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