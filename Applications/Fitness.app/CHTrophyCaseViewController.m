@interface CHTrophyCaseViewController
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (CHTrophyCaseViewController)initWithBadgeImageFactory:(id)a3 formattingManager:(id)a4 localizationProvider:(id)a5 initialAchievement:(id)a6 shouldShowCelebration:(BOOL)a7;
- (CHTrophyCaseViewControllerDelegate)delegate;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (void)_presentInitialAchievementIfNeeded;
- (void)achievementsDataProviderDidFinishInitialLoad:(id)a3;
- (void)dealloc;
- (void)detachPalette;
- (void)presentDetailForAchievement:(id)a3 badgeRect:(CGRect)a4 conversionView:(id)a5 cell:(id)a6;
- (void)setWheelchairUseCache:(id)a3;
- (void)unitPreferencesDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
@end

@implementation CHTrophyCaseViewController

- (CHTrophyCaseViewController)initWithBadgeImageFactory:(id)a3 formattingManager:(id)a4 localizationProvider:(id)a5 initialAchievement:(id)a6 shouldShowCelebration:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v27.receiver = self;
  v27.super_class = CHTrophyCaseViewController;
  v17 = [(CHTrophyCaseViewController *)&v27 initWithNibName:0 bundle:0];
  if (v17)
  {
    +[NSBundle mainBundle];
    v18 = v26 = a7;
    [v18 localizedStringForKey:@"AWARDS" value:&stru_1008680E8 table:@"Localizable"];
    obj = a6;
    v19 = v16;
    v20 = v15;
    v21 = v14;
    v23 = v22 = v13;
    [(CHTrophyCaseViewController *)v17 setTitle:v23];

    v13 = v22;
    v14 = v21;
    v15 = v20;
    v16 = v19;

    objc_storeStrong(&v17->_badgeImageFactory, a3);
    objc_storeStrong(&v17->_formattingManager, a4);
    objc_storeStrong(&v17->_localizationProvider, a5);
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
  v4 = [(CHTrophyCaseViewController *)self view];
  [v4 setBackgroundColor:v3];

  v107 = objc_alloc_init(UICollectionViewFlowLayout);
  v5 = [v107 _rowAlignmentOptions];
  v106 = [v5 mutableCopy];

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
  v13 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [v13 setBackgroundColor:v12];

  v14 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [v14 setPrefetchingEnabled:1];

  v15 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(CHTrophyCaseViewController *)self view];
  v17 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [v16 addSubview:v17];

  v105 = objc_alloc_init(CHRecentAndRelevantAchievementsCollectionViewFlowLayout);
  v18 = [[UICollectionView alloc] initWithFrame:v105 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  [(CHTrophyCaseViewController *)self setRecentAndRelevantCollectionView:v18];

  v19 = +[UIColor systemBackgroundColor];
  v20 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [v20 setBackgroundColor:v19];

  v21 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [v21 setPrefetchingEnabled:1];

  v22 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [v23 setShowsHorizontalScrollIndicator:0];

  [(CHRecentAndRelevantAchievementsCollectionViewFlowLayout *)v105 setSectionHeadersPinToVisibleBounds:1];
  v24 = [CHAchievementsRecentAndRelevantDataSource alloc];
  v25 = [(CHTrophyCaseViewController *)self dataProvider];
  v26 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  v27 = [(CHTrophyCaseViewController *)self localizationProvider];
  v28 = [(CHTrophyCaseViewController *)self badgeImageFactory];
  v29 = [(CHAchievementsRecentAndRelevantDataSource *)v24 initWithDataProvider:v25 collectionView:v26 localizationProvider:v27 badgeImageFactory:v28];
  [(CHTrophyCaseViewController *)self setRecentAndRelevantDataSource:v29];

  v30 = [CHAchievementsDataSource alloc];
  v31 = [(CHTrophyCaseViewController *)self dataProvider];
  v32 = [(CHTrophyCaseViewController *)self mainCollectionView];
  v33 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  v34 = [(CHTrophyCaseViewController *)self recentAndRelevantDataSource];
  v35 = [(CHTrophyCaseViewController *)self localizationProvider];
  v36 = [(CHTrophyCaseViewController *)self badgeImageFactory];
  v37 = [(CHAchievementsDataSource *)v30 initWithDataProvider:v31 collectionView:v32 recentAndRelevantCollectionView:v33 recentAndRelevantDataSource:v34 localizationProvider:v35 badgeImageFactory:v36];
  [(CHTrophyCaseViewController *)self setMainSectionDataSource:v37];

  v38 = [(CHTrophyCaseViewController *)self mainCollectionView];
  v39 = [v38 topAnchor];
  v40 = [(CHTrophyCaseViewController *)self view];
  v41 = [v40 topAnchor];
  v103 = [v39 constraintEqualToAnchor:v41];

  v42 = [(CHTrophyCaseViewController *)self mainCollectionView];
  v43 = [v42 bottomAnchor];
  v44 = [(CHTrophyCaseViewController *)self view];
  v45 = [v44 bottomAnchor];
  v102 = [v43 constraintEqualToAnchor:v45];

  v46 = [(CHTrophyCaseViewController *)self mainCollectionView];
  v47 = [v46 leadingAnchor];
  v48 = [(CHTrophyCaseViewController *)self view];
  v49 = [v48 leadingAnchor];
  v101 = [v47 constraintEqualToAnchor:v49];

  v50 = [(CHTrophyCaseViewController *)self mainCollectionView];
  v51 = [v50 trailingAnchor];
  v52 = [(CHTrophyCaseViewController *)self view];
  v53 = [v52 trailingAnchor];
  v100 = [v51 constraintEqualToAnchor:v53];

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
  v55 = [(CHTrophyCaseViewController *)self mainSectionDataSource];
  [v55 setAchievementTappedHandler:v104];

  v56 = [(CHTrophyCaseViewController *)self recentAndRelevantDataSource];
  [v56 setAchievementTappedHandler:v104];

  v57 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CHTrophyCaseViewController *)self setLoadingView:v57];

  v58 = [(CHTrophyCaseViewController *)self loadingView];
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];

  v59 = +[UIColor systemBackgroundColor];
  v60 = [(CHTrophyCaseViewController *)self loadingView];
  [v60 setBackgroundColor:v59];

  v61 = [(CHTrophyCaseViewController *)self view];
  v62 = [(CHTrophyCaseViewController *)self loadingView];
  [v61 addSubview:v62];

  v63 = [(CHTrophyCaseViewController *)self loadingView];
  v64 = [v63 centerXAnchor];
  v65 = [(CHTrophyCaseViewController *)self view];
  v66 = [v65 centerXAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];

  v68 = [(CHTrophyCaseViewController *)self loadingView];
  v69 = [v68 centerYAnchor];
  v70 = [(CHTrophyCaseViewController *)self view];
  v71 = [v70 centerYAnchor];
  v72 = [v69 constraintEqualToAnchor:v71];

  v73 = [(CHTrophyCaseViewController *)self loadingView];
  v74 = [v73 widthAnchor];
  v75 = [(CHTrophyCaseViewController *)self view];
  v76 = [v75 widthAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];

  v78 = [(CHTrophyCaseViewController *)self loadingView];
  v79 = [v78 heightAnchor];
  v80 = [(CHTrophyCaseViewController *)self view];
  v81 = [v80 heightAnchor];
  v82 = [v79 constraintEqualToAnchor:v81];

  v112[0] = v67;
  v112[1] = v72;
  v112[2] = v77;
  v112[3] = v82;
  v83 = [NSArray arrayWithObjects:v112 count:4];
  [NSLayoutConstraint activateConstraints:v83];

  v84 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
  [(CHTrophyCaseViewController *)self setSpinner:v84];

  v85 = [(CHTrophyCaseViewController *)self spinner];
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];

  v86 = [(CHTrophyCaseViewController *)self loadingView];
  v87 = [(CHTrophyCaseViewController *)self spinner];
  [v86 addSubview:v87];

  v88 = [(CHTrophyCaseViewController *)self spinner];
  v89 = [v88 centerXAnchor];
  v90 = [(CHTrophyCaseViewController *)self loadingView];
  v91 = [v90 centerXAnchor];
  v92 = [v89 constraintEqualToAnchor:v91];
  [v92 setActive:1];

  v93 = [(CHTrophyCaseViewController *)self spinner];
  v94 = [v93 centerYAnchor];
  v95 = [(CHTrophyCaseViewController *)self loadingView];
  v96 = [v95 centerYAnchor];
  v97 = [v94 constraintEqualToAnchor:v96];
  [v97 setActive:1];

  v98 = [(CHTrophyCaseViewController *)self spinner];
  [v98 startAnimating];

  v99 = +[NSNotificationCenter defaultCenter];
  [v99 addObserver:self selector:"unitPreferencesDidChange:" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];

  objc_destroyWeak(&v109);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v8 viewWillAppear:a3];
  if (!self->_observerSetupComplete)
  {
    self->_observerSetupComplete = 1;
    v4 = [(CHTrophyCaseViewController *)self dataProvider];
    [v4 addInitialLoadObserver:self];
  }

  v5 = [(CHTrophyCaseViewController *)self navigationController];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v6)
  {
    v7 = [(CHTrophyCaseViewController *)self navigationController];
    [v7 detachPalette];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v5 viewDidAppear:a3];
  v4 = [(CHTrophyCaseViewController *)self navigationController];
  [v4 setDelegate:self];

  [(CHTrophyCaseViewController *)self setTransitionAnimator:0];
  [(CHTrophyCaseViewController *)self _presentInitialAchievementIfNeeded];
}

- (void)dealloc
{
  v3 = [(CHTrophyCaseViewController *)self dataProvider];
  [v3 removeInitialLoadObserver:self];

  v4.receiver = self;
  v4.super_class = CHTrophyCaseViewController;
  [(CHTrophyCaseViewController *)&v4 dealloc];
}

- (void)unitPreferencesDidChange:(id)a3
{
  v4 = [(CHTrophyCaseViewController *)self recentAndRelevantCollectionView];
  [v4 reloadData];

  v5 = [(CHTrophyCaseViewController *)self mainCollectionView];
  [v5 reloadData];
}

- (void)presentDetailForAchievement:(id)a3 badgeRect:(CGRect)a4 conversionView:(id)a5 cell:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = ACHLogDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v17 = NSStringFromCGRect(v33);
    *buf = 138543874;
    v28 = v13;
    v29 = 2114;
    v30 = v17;
    v31 = 2114;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Presenting detail for achievement %{public}@ badgeRect %{public}@ conversionView %{public}@", buf, 0x20u);
  }

  v18 = [CHAchievementDetailViewController alloc];
  v19 = [(CHTrophyCaseViewController *)self localizationProvider];
  v20 = [(CHAchievementDetailViewController *)v18 initWithAchievement:v13 locProvider:v19 formatsForFriend:0 forDayView:0 forModalPresentation:0 shouldShowCelebration:0];

  LODWORD(v19) = [v13 unearned];
  v21 = [AAUIAchievementDetailTransitionAnimator alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100119864;
  v25[3] = &unk_10083B8E0;
  v26 = v15;
  v22 = v15;
  v23 = [v21 initWithPresentingViewController:self detailViewController:v20 shouldPlayFlipInAnimation:v19 ^ 1 initialBadgeFrame:v14 conversionView:&stru_10083CC20 presentAlongsideBlock:&stru_10083CC40 dismissAlongsideBlock:x completionBlock:{y, width, height, v25}];
  [(CHTrophyCaseViewController *)self setTransitionAnimator:v23];

  v24 = [(CHTrophyCaseViewController *)self navigationController];
  [v24 pushViewController:v20 animated:1];
}

- (void)detachPalette
{
  v3 = [(CHTrophyCaseViewController *)self navigationController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___CHActivityHistoryPaletteNavigationController];

  if (v4)
  {
    v5 = [(CHTrophyCaseViewController *)self navigationController];
    [v5 detachPalette];
  }
}

- (void)_presentInitialAchievementIfNeeded
{
  if (self->_initialAchievement && !self->_initialAchievementPresented)
  {
    self->_initialAchievementPresented = 1;
    v3 = [CHAchievementDetailViewController alloc];
    initialAchievement = self->_initialAchievement;
    v5 = [(CHTrophyCaseViewController *)self localizationProvider];
    v6 = [(CHAchievementDetailViewController *)v3 initWithAchievement:initialAchievement locProvider:v5 formatsForFriend:0 forDayView:0 forModalPresentation:1 shouldShowCelebration:self->_shouldShowCelebration];

    v7 = ACHLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Pushing achievement detail sheet for initial achievement", v10, 2u);
    }

    v8 = [(CHTrophyCaseViewController *)self navigationController];
    [v8 pushViewController:v6 animated:0];

    v9 = [(CHTrophyCaseViewController *)self delegate];
    [v9 trophyCaseDidBeginCelebration:self];
  }
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 == 2)
  {
    v14 = [(CHTrophyCaseViewController *)self transitionAnimatorFromViewController];
    if (v14 == v12)
    {
      v13 = [(CHTrophyCaseViewController *)self transitionAnimator];
    }

    else
    {
      v13 = 0;
    }
  }

  else if (a4 == 1)
  {
    [(CHTrophyCaseViewController *)self setTransitionAnimatorFromViewController:v11];
    v13 = [(CHTrophyCaseViewController *)self transitionAnimator];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v3 = [(CHTrophyCaseViewController *)self navigationController];
  v4 = [v3 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)achievementsDataProviderDidFinishInitialLoad:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119BEC;
  block[3] = &unk_10083A8B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setWheelchairUseCache:(id)a3
{
  objc_storeStrong(&self->_wheelchairUseCache, a3);
  v5 = a3;
  [(_HKWheelchairUseCharacteristicCache *)self->_wheelchairUseCache addObserver:self];
}

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v4 = a4;
  v5 = [(CHTrophyCaseViewController *)self localizationProvider];
  [v5 setWheelchairUser:v4];
}

- (CHTrophyCaseViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end