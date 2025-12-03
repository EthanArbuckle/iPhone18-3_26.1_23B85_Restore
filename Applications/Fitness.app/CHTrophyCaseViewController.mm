@interface CHTrophyCaseViewController
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (CHTrophyCaseViewController)initWithBadgeImageFactory:(id)factory formattingManager:(id)manager localizationProvider:(id)provider initialAchievement:(id)achievement shouldShowCelebration:(BOOL)celebration;
- (CHTrophyCaseViewControllerDelegate)delegate;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (void)_presentInitialAchievementIfNeeded;
- (void)achievementsDataProviderDidFinishInitialLoad:(id)load;
- (void)dealloc;
- (void)detachPalette;
- (void)presentDetailForAchievement:(id)achievement badgeRect:(CGRect)rect conversionView:(id)view cell:(id)cell;
- (void)setWheelchairUseCache:(id)cache;
- (void)unitPreferencesDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change;
@end

@implementation CHTrophyCaseViewController

- (CHTrophyCaseViewController)initWithBadgeImageFactory:(id)factory formattingManager:(id)manager localizationProvider:(id)provider initialAchievement:(id)achievement shouldShowCelebration:(BOOL)celebration
{
  factoryCopy = factory;
  managerCopy = manager;
  providerCopy = provider;
  achievementCopy = achievement;
  v27.receiver = self;
  v27.super_class = CHTrophyCaseViewController;
  v17 = [(CHTrophyCaseViewController *)&v27 initWithNibName:0 bundle:0];
  if (v17)
  {
    +[NSBundle mainBundle];
    v18 = v26 = celebration;
    [v18 localizedStringForKey:@"AWARDS" value:&stru_1008680E8 table:@"Localizable"];
    obj = achievement;
    v19 = achievementCopy;
    v20 = providerCopy;
    v21 = managerCopy;
    v23 = v22 = factoryCopy;
    [(CHTrophyCaseViewController *)v17 setTitle:v23];

    factoryCopy = v22;
    managerCopy = v21;
    providerCopy = v20;
    achievementCopy = v19;

    objc_storeStrong(&v17->_badgeImageFactory, factory);
    objc_storeStrong(&v17->_formattingManager, manager);
    objc_storeStrong(&v17->_localizationProvider, provider);
    objc_storeStrong(&v17->_initialAchievement, obj);
    v17->_shouldShowCelebration = v26;
  }

  return v17;
}

- (void)viewDidLoad
{
  v111.receiver = self;
  v111.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v111 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(CHTrophyCaseViewController *)self view];
  [view setBackgroundColor:v3];

  v107 = objc_alloc_init(UICollectionViewFlowLayout);
  _rowAlignmentOptions = [v107 _rowAlignmentOptions];
  v106 = [_rowAlignmentOptions mutableCopy];

  [v106 setObject:&off_10086E368 forKeyedSubscript:UIFlowLayoutRowVerticalAlignmentKey];
  v6 = [v106 copy];
  [v107 _setRowAlignmentsOptions:v6];

  v7 = [UICollectionView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11 = [v7 initWithFrame:v107 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(CHTrophyCaseViewController *)self setMainCollectionView:v11];

  v12 = +[UIColor systemBackgroundColor];
  mainCollectionView = [(CHTrophyCaseViewController *)self mainCollectionView];
  [mainCollectionView setBackgroundColor:v12];

  mainCollectionView2 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [mainCollectionView2 setPrefetchingEnabled:1];

  mainCollectionView3 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [mainCollectionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(CHTrophyCaseViewController *)self view];
  mainCollectionView4 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [view2 addSubview:mainCollectionView4];

  v105 = objc_alloc_init(CHRecentAndRelevantAchievementsCollectionViewFlowLayout);
  v18 = [[UICollectionView alloc] initWithFrame:v105 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(CHTrophyCaseViewController *)self setRecentAndRelevantCollectionView:v18];

  v19 = +[UIColor systemBackgroundColor];
  recentAndRelevantCollectionView = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [recentAndRelevantCollectionView setBackgroundColor:v19];

  recentAndRelevantCollectionView2 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [recentAndRelevantCollectionView2 setPrefetchingEnabled:1];

  recentAndRelevantCollectionView3 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [recentAndRelevantCollectionView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  recentAndRelevantCollectionView4 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [recentAndRelevantCollectionView4 setShowsHorizontalScrollIndicator:0];

  [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)v105 setSectionHeadersPinToVisibleBounds:1];
  v24 = [CHAchievementsRecentAndRelevantDataSource alloc];
  dataProvider = [(CHTrophyCaseViewController *)self dataProvider];
  recentAndRelevantCollectionView5 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  localizationProvider = [(CHTrophyCaseViewController *)self localizationProvider];
  badgeImageFactory = [(CHTrophyCaseViewController *)self badgeImageFactory];
  v29 = [(CHAchievementsRecentAndRelevantDataSource *)v24 initWithDataProvider:dataProvider collectionView:recentAndRelevantCollectionView5 localizationProvider:localizationProvider badgeImageFactory:badgeImageFactory];
  [(CHTrophyCaseViewController *)self setRecentAndRelevantDataSource:v29];

  v30 = [CHAchievementsDataSource alloc];
  dataProvider2 = [(CHTrophyCaseViewController *)self dataProvider];
  mainCollectionView5 = [(CHTrophyCaseViewController *)self mainCollectionView];
  recentAndRelevantCollectionView6 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  recentAndRelevantDataSource = [(CHTrophyCaseViewController *)self recentAndRelevantDataSource];
  localizationProvider2 = [(CHTrophyCaseViewController *)self localizationProvider];
  badgeImageFactory2 = [(CHTrophyCaseViewController *)self badgeImageFactory];
  v37 = [(CHAchievementsDataSource *)v30 initWithDataProvider:dataProvider2 collectionView:mainCollectionView5 recentAndRelevantCollectionView:recentAndRelevantCollectionView6 recentAndRelevantDataSource:recentAndRelevantDataSource localizationProvider:localizationProvider2 badgeImageFactory:badgeImageFactory2];
  [(CHTrophyCaseViewController *)self setMainSectionDataSource:v37];

  mainCollectionView6 = [(CHTrophyCaseViewController *)self mainCollectionView];
  topAnchor = [mainCollectionView6 topAnchor];
  view3 = [(CHTrophyCaseViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v103 = [topAnchor constraintEqualToAnchor:topAnchor2];

  mainCollectionView7 = [(CHTrophyCaseViewController *)self mainCollectionView];
  bottomAnchor = [mainCollectionView7 bottomAnchor];
  view4 = [(CHTrophyCaseViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v102 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  mainCollectionView8 = [(CHTrophyCaseViewController *)self mainCollectionView];
  leadingAnchor = [mainCollectionView8 leadingAnchor];
  view5 = [(CHTrophyCaseViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v101 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  mainCollectionView9 = [(CHTrophyCaseViewController *)self mainCollectionView];
  trailingAnchor = [mainCollectionView9 trailingAnchor];
  view6 = [(CHTrophyCaseViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v100 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v113[0] = v103;
  v113[1] = v102;
  v113[2] = v101;
  v113[3] = v100;
  v54 = [NSArray arrayWithObjects:v113 count:4];
  [NSLayoutConstraint activateConstraints:v54];

  objc_initWeak(&location, self);
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_100119340;
  v108[3] = &unk_10083CBE0;
  objc_copyWeak(&v109, &location);
  v104 = objc_retainBlock(v108);
  mainSectionDataSource = [(CHTrophyCaseViewController *)self mainSectionDataSource];
  [mainSectionDataSource setAchievementTappedHandler:v104];

  recentAndRelevantDataSource2 = [(CHTrophyCaseViewController *)self recentAndRelevantDataSource];
  [recentAndRelevantDataSource2 setAchievementTappedHandler:v104];

  v57 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CHTrophyCaseViewController *)self setLoadingView:v57];

  loadingView = [(CHTrophyCaseViewController *)self loadingView];
  [loadingView setTranslatesAutoresizingMaskIntoConstraints:0];

  v59 = +[UIColor systemBackgroundColor];
  loadingView2 = [(CHTrophyCaseViewController *)self loadingView];
  [loadingView2 setBackgroundColor:v59];

  view7 = [(CHTrophyCaseViewController *)self view];
  loadingView3 = [(CHTrophyCaseViewController *)self loadingView];
  [view7 addSubview:loadingView3];

  loadingView4 = [(CHTrophyCaseViewController *)self loadingView];
  centerXAnchor = [loadingView4 centerXAnchor];
  view8 = [(CHTrophyCaseViewController *)self view];
  centerXAnchor2 = [view8 centerXAnchor];
  v67 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  loadingView5 = [(CHTrophyCaseViewController *)self loadingView];
  centerYAnchor = [loadingView5 centerYAnchor];
  view9 = [(CHTrophyCaseViewController *)self view];
  centerYAnchor2 = [view9 centerYAnchor];
  v72 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  loadingView6 = [(CHTrophyCaseViewController *)self loadingView];
  widthAnchor = [loadingView6 widthAnchor];
  view10 = [(CHTrophyCaseViewController *)self view];
  widthAnchor2 = [view10 widthAnchor];
  v77 = [widthAnchor constraintEqualToAnchor:widthAnchor2];

  loadingView7 = [(CHTrophyCaseViewController *)self loadingView];
  heightAnchor = [loadingView7 heightAnchor];
  view11 = [(CHTrophyCaseViewController *)self view];
  heightAnchor2 = [view11 heightAnchor];
  v82 = [heightAnchor constraintEqualToAnchor:heightAnchor2];

  v112[0] = v67;
  v112[1] = v72;
  v112[2] = v77;
  v112[3] = v82;
  v83 = [NSArray arrayWithObjects:v112 count:4];
  [NSLayoutConstraint activateConstraints:v83];

  v84 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(CHTrophyCaseViewController *)self setSpinner:v84];

  spinner = [(CHTrophyCaseViewController *)self spinner];
  [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

  loadingView8 = [(CHTrophyCaseViewController *)self loadingView];
  spinner2 = [(CHTrophyCaseViewController *)self spinner];
  [loadingView8 addSubview:spinner2];

  spinner3 = [(CHTrophyCaseViewController *)self spinner];
  centerXAnchor3 = [spinner3 centerXAnchor];
  loadingView9 = [(CHTrophyCaseViewController *)self loadingView];
  centerXAnchor4 = [loadingView9 centerXAnchor];
  v92 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v92 setActive:1];

  spinner4 = [(CHTrophyCaseViewController *)self spinner];
  centerYAnchor3 = [spinner4 centerYAnchor];
  loadingView10 = [(CHTrophyCaseViewController *)self loadingView];
  centerYAnchor4 = [loadingView10 centerYAnchor];
  v97 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v97 setActive:1];

  spinner5 = [(CHTrophyCaseViewController *)self spinner];
  [spinner5 startAnimating];

  v99 = +[NSNotificationCenter defaultCenter];
  [v99 addObserver:self selector:"unitPreferencesDidChange:" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];

  objc_destroyWeak(&v109);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v8 viewWillAppear:appear];
  if (!self->_observerSetupComplete)
  {
    self->_observerSetupComplete = 1;
    dataProvider = [(CHTrophyCaseViewController *)self dataProvider];
    [dataProvider addInitialLoadObserver:self];
  }

  navigationController = [(CHTrophyCaseViewController *)self navigationController];
  v6 = [navigationController conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v6)
  {
    navigationController2 = [(CHTrophyCaseViewController *)self navigationController];
    [navigationController2 detachPalette];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v5 viewDidAppear:appear];
  navigationController = [(CHTrophyCaseViewController *)self navigationController];
  [navigationController setDelegate:self];

  [(CHTrophyCaseViewController *)self setTransitionAnimator:0];
  [(CHTrophyCaseViewController *)self _presentInitialAchievementIfNeeded];
}

- (void)dealloc
{
  dataProvider = [(CHTrophyCaseViewController *)self dataProvider];
  [dataProvider removeInitialLoadObserver:self];

  v4.receiver = self;
  v4.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v4 dealloc];
}

- (void)unitPreferencesDidChange:(id)change
{
  recentAndRelevantCollectionView = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [recentAndRelevantCollectionView reloadData];

  mainCollectionView = [(CHTrophyCaseViewController *)self mainCollectionView];
  [mainCollectionView reloadData];
}

- (void)presentDetailForAchievement:(id)achievement badgeRect:(CGRect)rect conversionView:(id)view cell:(id)cell
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  achievementCopy = achievement;
  viewCopy = view;
  cellCopy = cell;
  v16 = ACHLogDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v17 = NSStringFromCGRect(v33);
    *buf = 138543874;
    v28 = achievementCopy;
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = viewCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Presenting detail for achievement %{public}@ badgeRect %{public}@ conversionView %{public}@", buf, 0x20u);
  }

  v18 = [CHAchievementDetailViewController alloc];
  localizationProvider = [(CHTrophyCaseViewController *)self localizationProvider];
  v20 = [(CHAchievementDetailViewController *)v18 initWithAchievement:achievementCopy locProvider:localizationProvider formatsForFriend:0 forDayView:0 forModalPresentation:0 shouldShowCelebration:0];

  LODWORD(localizationProvider) = [achievementCopy unearned];
  v21 = [AAUIAchievementDetailTransitionAnimator alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100119864;
  v25[3] = &unk_10083B8E0;
  v26 = cellCopy;
  v22 = cellCopy;
  v23 = [v21 initWithPresentingViewController:self detailViewController:v20 shouldPlayFlipInAnimation:localizationProvider ^ 1 initialBadgeFrame:viewCopy conversionView:&stru_10083CC20 presentAlongsideBlock:&stru_10083CC40 dismissAlongsideBlock:x completionBlock:{y, width, height, v25}];
  [(CHTrophyCaseViewController *)self setTransitionAnimator:v23];

  navigationController = [(CHTrophyCaseViewController *)self navigationController];
  [navigationController pushViewController:v20 animated:1];
}

- (void)detachPalette
{
  navigationController = [(CHTrophyCaseViewController *)self navigationController];
  v4 = [navigationController conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v4)
  {
    navigationController2 = [(CHTrophyCaseViewController *)self navigationController];
    [navigationController2 detachPalette];
  }
}

- (void)_presentInitialAchievementIfNeeded
{
  if (self->_initialAchievement && !self->_initialAchievementPresented)
  {
    self->_initialAchievementPresented = 1;
    v3 = [CHAchievementDetailViewController alloc];
    initialAchievement = self->_initialAchievement;
    localizationProvider = [(CHTrophyCaseViewController *)self localizationProvider];
    v6 = [(CHAchievementDetailViewController *)v3 initWithAchievement:initialAchievement locProvider:localizationProvider formatsForFriend:0 forDayView:0 forModalPresentation:1 shouldShowCelebration:self->_shouldShowCelebration];

    v7 = ACHLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Pushing achievement detail sheet for initial achievement", v10, 2u);
    }

    navigationController = [(CHTrophyCaseViewController *)self navigationController];
    [navigationController pushViewController:v6 animated:0];

    delegate = [(CHTrophyCaseViewController *)self delegate];
    [delegate trophyCaseDidBeginCelebration:self];
  }
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  if (operation == 2)
  {
    transitionAnimatorFromViewController = [(CHTrophyCaseViewController *)self transitionAnimatorFromViewController];
    if (transitionAnimatorFromViewController == toViewControllerCopy)
    {
      transitionAnimator = [(CHTrophyCaseViewController *)self transitionAnimator];
    }

    else
    {
      transitionAnimator = 0;
    }
  }

  else if (operation == 1)
  {
    [(CHTrophyCaseViewController *)self setTransitionAnimatorFromViewController:viewControllerCopy];
    transitionAnimator = [(CHTrophyCaseViewController *)self transitionAnimator];
  }

  else
  {
    transitionAnimator = 0;
  }

  return transitionAnimator;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  navigationController = [(CHTrophyCaseViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)achievementsDataProviderDidFinishInitialLoad:(id)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119BEC;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setWheelchairUseCache:(id)cache
{
  objc_storeStrong(&self->_wheelchairUseCache, cache);
  cacheCopy = cache;
  [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCache addObserver:self];
}

- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change
{
  changeCopy = change;
  localizationProvider = [(CHTrophyCaseViewController *)self localizationProvider];
  [localizationProvider setWheelchairUser:changeCopy];
}

- (CHTrophyCaseViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end