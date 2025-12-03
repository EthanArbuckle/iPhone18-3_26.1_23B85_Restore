@interface CompactYearViewController
- (Class)multipleMonthViewClass;
- (unint64_t)monthsPerRow;
- (void)updatePalette:(id)palette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CompactYearViewController

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CompactYearViewController;
  [(YearViewController *)&v7 viewDidAppear:appear];
  v3 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear", buf, 0xCu);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(MainViewController *)self setDisableRotationTimings:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A7D80;
  v18[3] = &unk_10020F240;
  v18[4] = self;
  v8 = objc_retainBlock(v18);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A7E24;
  v13[3] = &unk_100210688;
  v16 = width;
  v17 = height;
  v9 = coordinatorCopy;
  v14 = v9;
  selfCopy = self;
  v10 = objc_retainBlock(v13);
  if (v9)
  {
    [(MainViewController *)self transitionToSizeWillStart];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A7E64;
    v11[3] = &unk_1002106B0;
    v11[4] = self;
    v12 = v10;
    [v9 animateAlongsideTransition:v8 completion:v11];
  }

  else
  {
    (v8[2])(v8, 0);
    (v10[2])(v10, 0);
  }
}

- (Class)multipleMonthViewClass
{
  traitCollection = [(CompactYearViewController *)self traitCollection];
  EKUIUsesLargeTextYearView();
  v3 = objc_opt_class();

  return v3;
}

- (unint64_t)monthsPerRow
{
  traitCollection = [(CompactYearViewController *)self traitCollection];
  if (EKUIUsesLargeTextYearView())
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return v3;
}

- (void)updatePalette:(id)palette
{
  paletteCopy = palette;
  [paletteCopy setWeekdayHeaderVisible:0];
  [paletteCopy setWeekdayHeaderFillsHalfWidth:0];
  [paletteCopy setTodayButtonVisible:0];
  [paletteCopy setDateStringVisible:CalSolariumEnabled()];
  [paletteCopy setDividerLineVisible:CalSolariumEnabled()];
  [paletteCopy setDayScrubberController:0];
  [paletteCopy setFocusBannerPlacement:CalSolariumEnabled() ^ 1];
  [paletteCopy layoutIfNeeded];
}

@end