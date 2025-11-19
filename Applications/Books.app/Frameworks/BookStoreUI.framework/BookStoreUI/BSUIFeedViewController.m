@interface BSUIFeedViewController
+ (void)createAsync:(id)a3 :(id)a4;
+ (void)createAsyncWithNavigationController:(id)a3 :(id)a4;
+ (void)createSeriesViewControllerFromOptions:(NSDictionary *)a3 withParentTracker:(_TtC13BookAnalytics9BATracker *)a4 navigationTypeValue:(NSString *)a5 navigationContext:(BSUINavigationContext *)a6 shouldReportFigaro:(BOOL)a7 completion:(id)a8;
- (BCCardContentDelegate)cardContentDelegate;
- (BCCardStackTransitioningCoverSource)cardStackTransitioningCardContentCoverSource;
- (BCSafeAreaInsetsObserver)bcSafeAreaInsetsObserver;
- (BOOL)canHandleDropSession:(id)a3 behavior:(id)a4;
- (BOOL)coverAnimationHostIsFullyVisible:(id)a3;
- (BOOL)coverEffectsNightMode;
- (BOOL)feedControllerIsOnScreen:(id)a3;
- (BOOL)feedEntry:(id)a3 handleBehavior:(id)a4 name:(id)a5 arguments:(id)a6;
- (BOOL)feedViewControllerIsConsideredVisible:(id)a3;
- (BOOL)shouldNotifyScrollViewReachedTheBottom;
- (BOOL)shouldOnlyAllowDismiss;
- (BSUIFeedViewController)initWithOptions:(id)a3;
- (BSUIFeedViewControllerFeedMetadataDelegate)metadataDelegate;
- (CGRect)_frameOfElementWithEntryID:(id)a3 refId:(id)a4 refInstance:(id)a5;
- (CGRect)getSourceRectFromOptions:(id)a3;
- (CGSize)viewSizeWhenNotifiedBottomReached;
- (JSValue)feed;
- (UIColor)preferredNavigationBarTintColor;
- (UIEdgeInsets)feedViewController:(id)a3 contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a4;
- (UIEdgeInsets)navigationBarMetricsLayoutMargins;
- (UINavigationItem)navigationItem;
- (UIViewController)currentPopOverViewController;
- (id)_coverSourceQueryForRepresentedObject:(id)a3;
- (id)_createFeedContentFromDictionaries:(id)a3 initialContentReadyEntryIndex:(int64_t)a4;
- (id)_dataModelWithData:(id)a3;
- (id)_getBarButtonItemFromOptions:(id)a3;
- (id)_localIdentifiers;
- (id)_overrideMatchingQuery:(id)a3;
- (id)_overrideMatchingRefId:(id)a3 refInstance:(id)a4;
- (id)accessibilityCardContentSummary;
- (id)artworkSourceInEntryWithIndex:(unint64_t)a3 refId:(id)a4 refInstance:(id)a5 isCover:(BOOL)a6;
- (id)coverAnimationHostSourceForUUID:(id)a3 uid:(id)a4 refId:(id)a5 refInstance:(id)a6;
- (id)coverSourceForRepresentedObject:(id)a3;
- (id)dragItemForFeedEntry:(id)a3 name:(id)a4 arguments:(id)a5 imageResourceBlock:(id)a6;
- (id)feedContentCompletion;
- (id)feedEntry:(id)a3 requestDataWithPriority:(float)a4 block:(id)a5;
- (id)getTintColorFromOptions:(id)a3;
- (id)menuElementsWithData:(id)a3;
- (id)metricsForFeedController:(id)a3;
- (id)newAnalyticsSessionAssertionForFeedController:(id)a3;
- (id)newAnalyticsSessionExtendingAssertionForFeedController:(id)a3;
- (id)preferredFocusEnvironments;
- (id)resumeAndRebuildForReason:(id)a3;
- (int64_t)_resolvedLargeTitleDisplayMode:(int64_t)a3;
- (int64_t)feedContentLoadingState;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)supportedInterfaceOrientationsForSelf;
- (unint64_t)visibilityOfArtworkSource:(id)a3;
- (unint64_t)visibilityOfCoverSource:(id)a3 ignoringYAxis:(BOOL)a4;
- (void)_addAlphaOverrideToRefId:(id)a3 refInstance:(id)a4 alpha:(double)a5 animated:(BOOL)a6 duration:(double)a7;
- (void)_configureNavigationBarWithStyle:(unint64_t)a3;
- (void)_customizePresentationUsingViewController:(id)a3 environment:(id)a4;
- (void)_dismissBanner:(BOOL)a3;
- (void)_displayBottomBanner:(id)a3 animated:(BOOL)a4;
- (void)_displayBottomBannerForRequest:(id)a3;
- (void)_feedContentDidLoad:(id)a3 signpost:(unint64_t)a4;
- (void)_feedMetadataDidUpdate;
- (void)_fixTwoLineLargeTitleLayoutIfNeeded;
- (void)_handleEngagementMessageRequest:(id)a3 forIdentifier:(id)a4;
- (void)_manuallyAdjustBottomContentInset;
- (void)_prepareForOpenWithViewController:(id)a3 viewSize:(CGSize)a4 overrideTraitsBlock:(id)a5 numEntries:(int64_t)a6 completion:(id)a7;
- (void)_removeAlphaOverrideFromRefId:(id)a3 refInstance:(id)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)_scheduleUpdateEngagementMessagesToDisplay:(id)a3;
- (void)_setEffectiveAnalyticsTracker:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateBackgroundColor:(BOOL)a3;
- (void)_updateEngagementMessagesToDisplay;
- (void)_updateEngagementMessagesToDisplay:(id)a3;
- (void)_updateNavigationItemWithTitle:(id)a3;
- (void)_updateNavigationLayoutMetrics;
- (void)_updateViewWithBackgroundColor:(id)a3;
- (void)addEngagementObserver:(id)a3;
- (void)auxiliaryNavigationBarViewControllerWithCompletionHandler:(id)a3;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityDidDisappear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)a3;
- (void)cardSetViewController:(id)a3 willUpdateWithNavigationType:(int64_t)a4;
- (void)cardStackTransitioningCardContentFinalizeForOpen;
- (void)cardStackTransitioningCardContentFinalizePreparationForOpen;
- (void)cardStackTransitioningCardContentPrepareForOpenWithViewController:(id)a3 viewSize:(CGSize)a4 index:(unint64_t)a5 completion:(id)a6;
- (void)cardStackViewController:(id)a3 parentCardWillDismissWithReason:(int64_t)a4 targetViewController:(id)a5;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 withData:(id)a5;
- (void)coverAnimationHostScrollToMakeVisible:(id)a3;
- (void)coverAnimationHostUpdateItemVisibility:(BOOL)a3 refId:(id)a4 refInstance:(id)a5;
- (void)dealloc;
- (void)didBecomeCurrentFeed;
- (void)didBecomeVisibleContentScrollView;
- (void)didEndDragSession:(id)a3 dropOperation:(unint64_t)a4;
- (void)didSetCurrentCardState:(id)a3;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)feedController:(id)a3 addAlphaOverrideToItem:(id)a4 alpha:(double)a5 animated:(BOOL)a6 duration:(double)a7;
- (void)feedController:(id)a3 addObserver:(id)a4 forTrigger:(id)a5;
- (void)feedController:(id)a3 collectAndFlush:(BOOL)a4 accumulatedImpressionsWithCompletion:(id)a5;
- (void)feedController:(id)a3 collectStatsWithCompletion:(id)a4;
- (void)feedController:(id)a3 collectVisibleImpressionsWithCompletion:(id)a4;
- (void)feedController:(id)a3 didLoadCardResource:(id)a4;
- (void)feedController:(id)a3 dismissKeyboard:(id)a4;
- (void)feedController:(id)a3 removeAlphaOverrideFromItem:(id)a4 animated:(BOOL)a5 duration:(double)a6;
- (void)feedController:(id)a3 removeObserver:(id)a4 forTrigger:(id)a5;
- (void)feedController:(id)a3 requestToSetNavigationBarHidden:(BOOL)a4 animated:(BOOL)a5;
- (void)feedController:(id)a3 scrollToItem:(id)a4 animated:(BOOL)a5 skipVoiceOverFocus:(BOOL)a6;
- (void)feedController:(id)a3 wantsToCreateNewFeedWithOptions:(id)a4 completion:(id)a5;
- (void)feedController:(id)a3 wantsToDismissViewControllerAnimated:(BOOL)a4 completion:(id)a5;
- (void)feedController:(id)a3 wantsToPerformRawActionModel:(id)a4 shouldReportFigaro:(BOOL)a5;
- (void)feedController:(id)a3 wantsToPopToRootViewControllerAnimated:(BOOL)a4 completion:(id)a5;
- (void)feedController:(id)a3 wantsToPopViewController:(BOOL)a4 completion:(id)a5;
- (void)feedController:(id)a3 wantsToPresentCardsWithCardArray:(id)a4 focusedIndex:(unint64_t)a5 animated:(BOOL)a6 options:(id)a7 completion:(id)a8;
- (void)feedController:(id)a3 wantsToPresentViewController:(id)a4 animated:(BOOL)a5 params:(id)a6;
- (void)feedController:(id)a3 wantsToPushViewController:(id)a4 animated:(BOOL)a5;
- (void)feedController:(id)a3 wantsToReplaceCurrentViewController:(id)a4 animated:(BOOL)a5;
- (void)feedController:(id)a3 wantsToSlideInFeedViewController:(id)a4;
- (void)feedController:(id)a3 wantsToUpdateContentWithData:(id)a4;
- (void)feedController:(id)val viewStateDidUpdate:fromPreviousState:;
- (void)feedControllerWillHotReload:(id)a3;
- (void)feedViewController:(id)a3 customizeEnvironment:(id)a4;
- (void)feedViewController:(id)a3 willTransitionToLayoutState:(unint64_t)a4;
- (void)feedViewControllerAllContentReady:(id)a3;
- (void)feedViewControllerInitialContentReady:(id)a3;
- (void)hideLoadingViewForFeedController:(id)a3;
- (void)hostedMessageViewDidBecomeVisible:(id)a3;
- (void)hostedMessageViewDidTriggerAction:(id)a3;
- (void)hostingController:(id)a3 didChangeContentIdentifiers:(id)a4;
- (void)loadEntries;
- (void)menuElementsWithData:(id)a3 completion:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4;
- (void)messageViewControllerDidSelectCancel:(id)a3;
- (void)navigationBarItemsDidUpdate:(id)a3 hasItems:(BOOL)a4;
- (void)observeCardActiveState;
- (void)performDropWithSession:(id)a3 behavior:(id)a4;
- (void)preloadAugmentedExperienceContentWithViewController:(id)a3 numEntries:(int64_t)a4 completion:(id)a5;
- (void)removeEngagementObserver:(id)a3;
- (void)removeProviderForIdentifier:(id)a3;
- (void)renderSharableImageWithOptions:(id)a3 completion:(id)a4;
- (void)resetImpressionsForFeedController:(id)a3;
- (void)revealCoverForRepresentedObject:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCardContentScrollManager:(id)a3;
- (void)setDistanceFromFocusedCard:(int64_t)a3;
- (void)setFeedContentLoadingState:(int64_t)a3;
- (void)setFeedLiveResizeOptions:(int64_t)a3;
- (void)setLoadPriority:(int64_t)a3;
- (void)setMetadataDelegate:(id)a3;
- (void)setNavBarBackgroundOpacity:(double)a3 manualScrollEdgeAppearanceEnabled:(BOOL)a4;
- (void)setPerformantForReadingExperience:(BOOL)a3;
- (void)setPerformantForScrolling:(BOOL)a3;
- (void)setTrackerName:(id)a3;
- (void)setupAMSEngagementObservers;
- (void)sheetTransitioningCardContentPrepareForOpenWithViewController:(id)a3 viewSize:(CGSize)a4 overrideTraitsBlock:(id)a5 numEntries:(int64_t)a6 completion:(id)a7;
- (void)showLoadingViewForFeedController:(id)a3;
- (void)showPopoverWithViewController:(id)a3 params:(id)a4;
- (void)suspendAndTeardownForReason:(id)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateNavigationBarOpacity;
- (void)updateRightBarButtonItemsVisibility:(BOOL)a3;
- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)a3 previousTraitCollection:(id)a4;
- (void)viewController:(id)a3 didDisplayMessageWithId:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BSUIFeedViewController

- (BSUIFeedViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[BSUITemplate manager];
  v6 = +[BSUITemplate factory];
  v43.receiver = self;
  v43.super_class = BSUIFeedViewController;
  v7 = [(BSUIFeedViewController *)&v43 initWithFeedContent:0 manager:v5 factory:v6];

  if (v7)
  {
    objc_opt_class();
    v8 = [v4 objectForKeyedSubscript:@"reading-now-homepage"];
    v9 = BUDynamicCast();
    v7->_isHomePage = [v9 BOOLValue];

    v10 = [BSUIDynamicValue alloc];
    v11 = [(BSUIDynamicValue *)v10 initWithValue:TUIFeedContentDefaultStackName options:&off_39B5C0];
    currentStackName = v7->_currentStackName;
    v7->_currentStackName = v11;

    v7->_contentInsetAdjustmentBehavior = 0;
    v7->_isFirstLayout = 1;
    v13 = [objc_alloc(-[BSUIFeedViewController jsaFeedControllerClass](v7 "jsaFeedControllerClass"))];
    jsFeedController = v7->_jsFeedController;
    v7->_jsFeedController = v13;

    [(JSAFeedController *)v7->_jsFeedController setDataSource:v7];
    [(JSAFeedController *)v7->_jsFeedController setDelegate:v7];
    v7->_preferredLargeTitleDisplayMode = [(JSAFeedController *)v7->_jsFeedController isRootFeed];
    v15 = [v4 objectForKeyedSubscript:@"contextMenuProvider"];
    v16 = BUProtocolCast();
    contextMenuProvider = v7->_contextMenuProvider;
    v7->_contextMenuProvider = v16;

    v18 = [v4 objectForKeyedSubscript:@"contextMenuProvider"];
    v19 = BUProtocolCast();
    asyncContextMenuProvider = v7->_asyncContextMenuProvider;
    v7->_asyncContextMenuProvider = v19;

    if (v7->_contextMenuProvider && v7->_asyncContextMenuProvider)
    {
      [(BSUIFeedViewController *)v7 setContextMenuConfigurationProvider:v7];
    }

    v21 = objc_alloc_init(BSUIFeedTriggerBlockObserver);
    feedTriggerObserver = v7->_feedTriggerObserver;
    v7->_feedTriggerObserver = v21;

    [(BSUIFeedViewController *)v7 setDelegate:v7];
    objc_opt_class();
    v23 = [v4 objectForKeyedSubscript:@"isInCard"];
    v24 = BUDynamicCast();
    v25 = [v24 BOOLValue];

    [(BSUIFeedViewController *)v7 setIsInCard:v25];
    objc_opt_class();
    v26 = [v4 objectForKeyedSubscript:@"respectsSafeArea"];
    v27 = BUDynamicCast();

    if (v27)
    {
      v28 = [v27 BOOLValue];
    }

    else
    {
      v28 = (v25 ^ 1);
    }

    [(BSUIFeedViewController *)v7 setRespectsSafeArea:v28];
    [(BSUIFeedViewController *)v7 _feedMetadataDidUpdate];
    if (v25)
    {
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v29 = objc_alloc_init(BSUICardAuxiliaryNavigationBarManager);
        cardAuxiliaryNavigationBarManager = v7->_cardAuxiliaryNavigationBarManager;
        v7->_cardAuxiliaryNavigationBarManager = v29;
      }
    }

    else
    {
      [(BSUIFeedViewController *)v7 loadEntries];
    }

    objc_opt_class();
    v31 = [v4 objectForKeyedSubscript:@"deferUIUpdateUntilInitialContentReady"];
    v32 = BUDynamicCast();
    v7->_deferUIUpdateUntilInitialContentReady = [v32 BOOLValue];

    if ([(BSUIFeedViewController *)v7 deferUIUpdateUntilInitialContentReady])
    {
      v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v34 = dispatch_queue_attr_make_with_qos_class(v33, QOS_CLASS_USER_INITIATED, 0);
      v35 = dispatch_queue_attr_make_initially_inactive(v34);
      v36 = dispatch_queue_create("com.apple.iBooks.BSUIFeedVC.deferredReloads", v35);
      deferredReloadsQueue = v7->_deferredReloadsQueue;
      v7->_deferredReloadsQueue = v36;

      v38 = +[NSMutableSet set];
      deferredEngagementMessageIdentifiers = v7->_deferredEngagementMessageIdentifiers;
      v7->_deferredEngagementMessageIdentifiers = v38;
    }

    v40 = +[UITraitCollection bc_allAPITraits];
    v41 = [(BSUIFeedViewController *)v7 registerForTraitChanges:v40 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

    [(BSUIFeedViewController *)v7 observeCardActiveState];
  }

  return v7;
}

+ (void)createAsync:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_448BC;
  v13[3] = &unk_3887F8;
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v16 = a1;
  v10 = objc_retainBlock(v13);
  if (v10)
  {
    if (+[NSThread isMainThread])
    {
      (v10[2])(v10);
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_44D44;
      v11[3] = &unk_386C58;
      v12 = v10;
      dispatch_async(&_dispatch_main_q, v11);
    }
  }
}

+ (void)createAsyncWithNavigationController:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_44EAC;
  v13[3] = &unk_3887F8;
  v16 = a1;
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v10 = objc_retainBlock(v13);
  if (v10)
  {
    if (+[NSThread isMainThread])
    {
      (v10[2])(v10);
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_44FD0;
      v11[3] = &unk_386C58;
      v12 = v10;
      dispatch_async(&_dispatch_main_q, v11);
    }
  }
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v26 viewDidLoad];
  v3 = [(BSUIFeedViewController *)self isInCard];
  if (self)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    self->_showLoadingView = 1;
    [(BSUIFeedViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }

  contentInsetAdjustmentBehavior = self->_contentInsetAdjustmentBehavior;
  v6 = [(BSUIFeedViewController *)self scrollView];
  [v6 setContentInsetAdjustmentBehavior:contentInsetAdjustmentBehavior];

  if (self->_wantsTransparentNavigationBar)
  {
    sub_2BDB98(self);
  }

  if (self->_deferredAdjustBottomContentInset)
  {
    [(BSUIFeedViewController *)self _manuallyAdjustBottomContentInset];
  }

  v7 = [(BSUIFeedViewController *)self hostingController];
  [v7 addContentObserver:self];

  [(BSUIFeedViewController *)self setupAMSEngagementObservers];
  [(BSUIFeedViewController *)self loadEntries];
  v8 = [(BSUIFeedViewController *)self cardContentScrollManager];
  v9 = [(BSUIFeedViewController *)self scrollView];
  [v8 cardContentViewController:self initializeManagerWithScrollView:v9];

  v10 = [(BSUIFeedViewController *)self scrollView];
  [v10 bounds];
  [(BSUIFeedViewController *)self setViewSizeWhenNotifiedBottomReached:v11, v12];

  [(BSUIFeedViewController *)self _updateBackgroundColor:0];
  objc_initWeak(&location, self);
  v13 = +[NSNotificationCenter defaultCenter];
  v14 = +[NSOperationQueue mainQueue];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_452F0;
  v23 = &unk_388820;
  objc_copyWeak(&v24, &location);
  v15 = [v13 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v14 usingBlock:&v20];

  v27 = v15;
  v16 = [NSArray arrayWithObjects:&v27 count:1, v20, v21, v22, v23];
  notificationObservers = self->_notificationObservers;
  self->_notificationObservers = v16;

  v18 = [(BSUIFeedViewController *)self navigationItem];
  v19 = [v18 title];
  [(BSUIFeedViewController *)self setLastTwoLineTitleFixed:v19];

  [(BSUIFeedViewController *)self _feedMetadataDidUpdate];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  if ([(BSUIFeedViewController *)self isInCard:a3])
  {
    objc_opt_class();
    v5 = [(BSUIFeedViewController *)self navigationController];
    v6 = BUDynamicCast();

    if ([v6 isCurrentCard])
    {
      [(BSUIFeedViewController *)self didBecomeVisibleContentScrollView];
    }
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v5 viewSafeAreaInsetsDidChange];
  if ([(BSUIFeedViewController *)self navigationBarStyle]== &dword_0 + 2)
  {
    [(BSUIFeedViewController *)self _manuallyAdjustBottomContentInset];
  }

  v3 = [(BSUIFeedViewController *)self bcSafeAreaInsetsObserver];
  v4 = [(BSUIFeedViewController *)self view];
  [v4 safeAreaInsets];
  [v3 bcSafeAreaInsetsObservableViewController:self safeAreaInsetsDidChange:?];
}

- (void)updateNavigationBarOpacity
{
  v3 = [(BSUIFeedViewController *)self navigationController];
  v4 = [v3 topViewController];

  if (v4 == self)
  {
    v5.receiver = self;
    v5.super_class = BSUIFeedViewController;
    [(BSUIFeedViewController *)&v5 updateNavigationBarOpacity];
  }
}

- (void)setFeedLiveResizeOptions:(int64_t)a3
{
  self->_feedLiveResizeOptions = a3;
  if (a3 <= 3)
  {
    [(BSUIFeedViewController *)self setLiveResizeOptions:qword_2E1548[a3]];
  }
}

- (id)preferredFocusEnvironments
{
  v2 = [(BSUIFeedViewController *)self view];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)cardSetViewController:(id)a3 willUpdateWithNavigationType:(int64_t)a4
{
  v6 = a3;
  if (a4 <= 3)
  {
    v7 = v6;
    [(BSUIFeedViewController *)self setParentCardNavigationType:off_388CB8[a4]];
    v6 = v7;
  }
}

- (void)cardStackViewController:(id)a3 parentCardWillDismissWithReason:(int64_t)a4 targetViewController:(id)a5
{
  if (a4 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_388CD8[a4];
  }

  v11 = BUProtocolCast();
  v7 = [v11 currentFeedViewController];
  v8 = [v7 feedController];
  v9 = [v8 feed];

  v10 = [(BSUIFeedViewController *)self feedController];
  [v10 notifyParentCardWillDismissWithReason:v6 targetFeed:v9];
}

- (void)setMetadataDelegate:(id)a3
{
  objc_storeWeak(&self->_metadataDelegate, a3);

  [(BSUIFeedViewController *)self _feedMetadataDidUpdate];
}

- (void)_feedMetadataDidUpdate
{
  v3 = [(BSUIFeedViewController *)self jsFeedController];
  v18 = [v3 metadata];

  v4 = v18;
  if (v18)
  {
    v5 = [(BSUIFeedViewController *)self metadataDelegate];
    [v5 bsuiFeedViewControllerNavigationBarStyle:{objc_msgSend(v18, "navigationBarStyle")}];

    v6 = [v18 trackerName];
    if ([v6 length])
    {
      [(BSUIFeedViewController *)self setTrackerName:v6];
    }

    -[BSUIFeedViewController bc_setNavBarVisible:](self, "bc_setNavBarVisible:", [v18 navigationBarVisible]);
    v7 = [(BSUIFeedViewController *)self jsFeedController];
    v8 = [v7 isRootFeed];

    if ((v8 & 1) == 0)
    {
      if ([v18 navigationBarStyle] == &dword_0 + 2)
      {
        [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:&stru_3960F8];
      }

      else
      {
        v9 = [v18 title];

        if (v9)
        {
          v10 = [v18 title];
          [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:v10];
        }
      }
    }

    v11 = [v18 backTitle];
    v12 = v11;
    if (v11)
    {
      v13 = 0;
      v14 = v11;
    }

    else
    {
      v8 = [v18 title];
      if ([v8 length])
      {
        v14 = [v18 title];
        v13 = 1;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }
    }

    v15 = [(BSUIFeedViewController *)self navigationItem];
    [v15 setBackButtonTitle:v14];

    if (v13)
    {
    }

    if (!v12)
    {
    }

    if (_UISolariumEnabled())
    {
      v16 = [(BSUIFeedViewController *)self navigationItem];
      [v16 setBackButtonDisplayMode:2];
    }

    v17 = [(BSUIFeedViewController *)self navigationItem];
    [v17 _setSupportsTwoLineLargeTitles:1];

    -[BSUIFeedViewController _configureNavigationBarWithStyle:](self, "_configureNavigationBarWithStyle:", [v18 navigationBarStyle]);
    [(BSUIFeedViewController *)self _updateBackgroundColor:1];
    [(BSUIFeedViewController *)self _fixTwoLineLargeTitleLayoutIfNeeded];
    [(BSUIFeedViewController *)self _updateNavigationLayoutMetrics];
    -[BSUIFeedViewController setShowsVerticalScrollIndicator:](self, "setShowsVerticalScrollIndicator:", [v18 showsVerticalScrollIndicator]);

    v4 = v18;
  }
}

- (void)_manuallyAdjustBottomContentInset
{
  v3 = [(BSUIFeedViewController *)self scrollView];

  if (v3)
  {
    v4 = [(BSUIFeedViewController *)self scrollView];
    [v4 contentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [(BSUIFeedViewController *)self viewIfLoaded];
    [v11 safeAreaInsets];
    v13 = v12;

    v14 = [(BSUIFeedViewController *)self scrollView];
    [v14 setContentInset:{v6, v8, v13, v10}];

    v15 = [(BSUIFeedViewController *)self scrollView];
    [v15 setScrollIndicatorInsets:{v6, v8, v13, v10}];

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  self->_deferredAdjustBottomContentInset = v16;
}

- (void)_configureNavigationBarWithStyle:(unint64_t)a3
{
  if ([(BSUIFeedViewController *)self navigationBarStyle]!= a3)
  {
    [(BSUIFeedViewController *)self setNavigationBarStyle:a3];
    v5 = [(BSUIFeedViewController *)self jsFeedController];
    v6 = [v5 metadata];
    v7 = [v6 navigationBarTintColor];

    if (v7)
    {
      [(BSUIFeedViewController *)self setNavigationBarTintColorWhenLayoutReady:v7];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_45C7C;
    v12[3] = &unk_3873D8;
    v12[4] = self;
    v8 = objc_retainBlock(v12);
    v9 = v8;
    switch(a3)
    {
      case 2uLL:
        (v8[2])(v8);
LABEL_6:

        return;
      case 4uLL:
        sub_2BDE54(v8, self);
        break;
      case 0uLL:
        v10 = self;
        v11 = 1;
LABEL_13:
        sub_2BDC90(v10, v11);
        goto LABEL_6;
    }

    v10 = self;
    v11 = 2;
    goto LABEL_13;
  }
}

- (int64_t)_resolvedLargeTitleDisplayMode:(int64_t)a3
{
  v5 = _UISolariumEnabled();
  if (a3 == 1 && v5)
  {
    if (isPad())
    {
      v6 = [(BSUIFeedViewController *)self navigationItem];
      v7 = [v6 searchController];

      v8 = isPhone();
      v9 = 3;
      if (!v8)
      {
        v9 = 1;
      }

      if (v7)
      {
        return 2;
      }

      else
      {
        return v9;
      }
    }

    else if (isPhone())
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return a3;
}

- (void)_updateNavigationLayoutMetrics
{
  objc_opt_class();
  v3 = [(BSUIFeedViewController *)self navigationController];
  v4 = BUDynamicCast();

  [v4 updateLayoutMetrics];
}

- (void)_updateBackgroundColor:(BOOL)a3
{
  v3 = a3;
  if ([(BSUIFeedViewController *)self isViewLoaded])
  {
    v5 = [(BSUIFeedViewController *)self traitCollection];
    v6 = [v5 userInterfaceStyle];

    v7 = [(BSUIFeedViewController *)self jsFeedController];
    v8 = [v7 metadata];
    v9 = [v8 dayBackgroundColor];

    v10 = [(BSUIFeedViewController *)self jsFeedController];
    v11 = [v10 metadata];
    v12 = [v11 nightBackgroundColor];

    if (v9 && v12)
    {
      v13 = [UIColor bc_dynamicColorWithLightColor:v9 darkColor:v12];
    }

    else
    {
      if (v6 == &dword_0 + 2 && v12)
      {
        v14 = v12;
        goto LABEL_10;
      }

      v13 = v9;
    }

    v14 = v13;
    if (!v13)
    {
LABEL_14:

      return;
    }

LABEL_10:
    if (v3 && (-[BSUIFeedViewController viewIfLoaded](self, "viewIfLoaded"), v15 = objc_claimAutoreleasedReturnValue(), [v15 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_45FD4;
      v17[3] = &unk_386D98;
      v17[4] = self;
      v14 = v14;
      v18 = v14;
      [UIView animateWithDuration:v17 animations:0.2];
    }

    else
    {
      [(BSUIFeedViewController *)self _updateViewWithBackgroundColor:v14];
    }

    goto LABEL_14;
  }
}

- (UINavigationItem)navigationItem
{
  navigationItem = self->_navigationItem;
  if (!navigationItem)
  {
    v4 = objc_opt_new();
    [(UINavigationItem *)v4 setAllowsTitle:1];
    if (_UISolariumEnabled())
    {
      if (isPad())
      {
        v5 = UINavigationItemSearchBarPlacementInlineCenterPreferred;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 2;
    }

    [(UINavigationItem *)v4 setPreferredSearchBarPlacement:v5];
    v6 = self->_navigationItem;
    self->_navigationItem = v4;

    navigationItem = self->_navigationItem;
  }

  return navigationItem;
}

- (void)_updateNavigationItemWithTitle:(id)a3
{
  v9 = a3;
  v4 = [(BSUIFeedViewController *)self navigationItem];
  v5 = [v4 title];
  v6 = [v5 isEqualToString:v9];

  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    v7 = [(BSUIFeedViewController *)self navigationItem];
    v8 = BUDynamicCast();

    [v8 setAllowsTitle:1];
    [v8 setTitle:v9];
    [v8 setAllowsTitle:{objc_msgSend(v9, "length") != 0}];
  }
}

- (void)_fixTwoLineLargeTitleLayoutIfNeeded
{
  v21 = [(BSUIFeedViewController *)self navigationItem];
  v3 = [v21 title];
  if (![v3 length] || objc_msgSend(v21, "largeTitleDisplayMode") == &dword_0 + 2 || objc_msgSend(v21, "_largeTitleTwoLineMode") != &dword_0 + 1)
  {
    goto LABEL_11;
  }

  v4 = [(BSUIFeedViewController *)self lastTwoLineTitleFixed];
  if (![v4 length])
  {
    goto LABEL_9;
  }

  v5 = [(BSUIFeedViewController *)self lastTwoLineTitleFixed];
  v6 = [v21 title];
  if (![v5 isEqualToString:v6])
  {

LABEL_9:
    goto LABEL_10;
  }

  v7 = [(BSUIFeedViewController *)self lastTwoLineTitleFixHadSearchController];
  v8 = [v21 searchController];
  v9 = v7 ^ (v8 != 0);

  if (v9)
  {
LABEL_10:
    v10 = [v21 title];
    [(BSUIFeedViewController *)self setLastTwoLineTitleFixed:v10];

    v11 = [v21 searchController];
    [(BSUIFeedViewController *)self setLastTwoLineTitleFixHadSearchController:v11 != 0];

    v12 = [(BSUIFeedViewController *)self navigationController];
    v13 = [v12 navigationBar];
    [v13 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v15 = v14;

    v16 = [(BSUIFeedViewController *)self navigationController];
    v17 = [v16 navigationBar];
    [v17 frame];
    v19 = -(v15 + v18);

    v20 = [(BSUIFeedViewController *)self scrollView];
    [v20 setContentOffset:{0.0, v19}];

    v3 = [(BSUIFeedViewController *)self scrollView];
    [v3 setContentOffset:{0.0, v19}];
LABEL_11:
  }
}

- (void)setNavBarBackgroundOpacity:(double)a3 manualScrollEdgeAppearanceEnabled:(BOOL)a4
{
  v6 = [(BSUIFeedViewController *)self jsFeedController];
  v7 = [v6 isRootFeed];

  if ((v7 & 1) == 0)
  {
    v8 = [(BSUIFeedViewController *)self jsFeedController];
    v9 = [v8 metadata];
    v10 = [v9 navigationBarStyle];

    if (v10 == &dword_0 + 2)
    {
      if (fabs(a3) >= 2.22044605e-16)
      {
        v11 = [(BSUIFeedViewController *)self jsFeedController];
        v12 = [v11 metadata];
        v13 = [v12 title];

        if (v13)
        {
          v14 = [(BSUIFeedViewController *)self jsFeedController];
          v15 = [v14 metadata];
          v16 = [v15 title];
          [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:v16];
        }
      }

      else
      {
        [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:&stru_3960F8];
      }
    }
  }

  self->_hasUberHeaderBehindNavBar = a3 < 1.0;
  v17 = [(BSUIFeedViewController *)self jsFeedController];
  v18 = [v17 metadata];
  v19 = [v18 navigationBarStyle];

  if (v19 == &dword_0 + 2)
  {
    v20 = &dword_0 + 1;
  }

  else
  {
    v20 = [(BSUIFeedViewController *)self bsui_hasLargeTitle];
  }

  [(BSUIFeedViewController *)self bsui_configureHideSmallTitleOnScroll:v20];
  v21 = [(BSUIFeedViewController *)self traitCollection];
  [(BSUIFeedViewController *)self updateTopScrollEdgeEffectVisibilityWithViewController:self previousTraitCollection:v21];
}

- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)a3
{
  if (!a3 || ([(BSUIFeedViewController *)self navigationController], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = +[BSUIDefaults disableHideSmallTitleOnScroll], v5, (v6 & 1) != 0))
  {
    v7 = [(BSUIFeedViewController *)self navigationItem];
    v8 = [v7 scrollEdgeAppearance];

    if (v8)
    {
      v9 = [(BSUIFeedViewController *)self navigationItem];
      [v9 setScrollEdgeAppearance:0];
    }

    hasUberHeaderBehindNavBar = self->_hasUberHeaderBehindNavBar;
    v11 = [(BSUIFeedViewController *)self navigationItem];
    v12 = [v11 standardAppearance];
    v13 = [v12 _titleControlHidden];

    if (hasUberHeaderBehindNavBar != v13)
    {
      v14 = +[UIViewPropertyAnimator bc_swiftUIDefault];
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_469FC;
      v48[3] = &unk_3882B0;
      v48[4] = self;
      v49 = hasUberHeaderBehindNavBar;
      [v14 addAnimations:v48];
      [v14 startAnimation];
    }

    return;
  }

  if (!isPhone() || (-[BSUIFeedViewController navigationController](self, "navigationController"), v15 = objc_claimAutoreleasedReturnValue(), [v15 viewControllers], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, v17 != self))
  {
    v18 = [(BSUIFeedViewController *)self navigationItem];
    v19 = [v18 scrollEdgeAppearance];

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = [(BSUIFeedViewController *)self navigationItem];
    [v20 setScrollEdgeAppearance:0];
    goto LABEL_13;
  }

  v28 = [(BSUIFeedViewController *)self navigationItem];
  v29 = [v28 scrollEdgeAppearance];

  if (!v29)
  {
    v30 = [(BSUIFeedViewController *)self navigationController];
    v31 = [v30 navigationBar];
    v32 = [v31 scrollEdgeAppearance];
    v33 = [v32 copy];
    v34 = v33;
    if (v33)
    {
      v20 = v33;
    }

    else
    {
      v39 = [(BSUIFeedViewController *)self navigationItem];
      v40 = [v39 standardAppearance];
      v41 = [v40 copy];
      v42 = v41;
      if (v41)
      {
        v20 = v41;
      }

      else
      {
        v47 = [(BSUIFeedViewController *)self navigationController];
        v45 = [v47 navigationBar];
        v43 = [v45 standardAppearance];
        v20 = [v43 copy];
      }
    }

    [v20 _setTitleControlHidden:0];
    v44 = [(BSUIFeedViewController *)self navigationItem];
    [v44 setScrollEdgeAppearance:v20];

LABEL_13:
  }

LABEL_14:
  v21 = [(BSUIFeedViewController *)self navigationItem];
  v22 = [v21 standardAppearance];
  v23 = [v22 _titleControlHidden];

  if ((v23 & 1) == 0)
  {
    v24 = [(BSUIFeedViewController *)self navigationItem];
    v25 = [v24 standardAppearance];
    v26 = [v25 copy];
    v27 = v26;
    if (v26)
    {
      v46 = v26;
    }

    else
    {
      v35 = [(BSUIFeedViewController *)self navigationController];
      v36 = [v35 navigationBar];
      v37 = [v36 standardAppearance];
      v46 = [v37 copy];
    }

    [v46 _setTitleControlHidden:1];
    v38 = [(BSUIFeedViewController *)self navigationItem];
    [v38 setStandardAppearance:v46];
  }
}

- (UIColor)preferredNavigationBarTintColor
{
  v3 = [(BSUIFeedViewController *)self navigationItem];
  v4 = [v3 _isManualScrollEdgeAppearanceEnabled];

  if (v4)
  {
    v5 = [(BSUIFeedViewController *)self navigationItem];
    [v5 _manualScrollEdgeAppearanceProgress];
    if (v6 > 0.5)
    {
      v9 = +[UIColor bc_booksKeyColor];
    }

    else
    {
      v7 = [(BSUIFeedViewController *)self jsFeedController];
      v8 = [v7 metadata];
      v9 = [v8 navigationBarTintColor];
    }
  }

  else
  {
    v9 = +[UIColor bc_booksKeyColor];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(BSUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
  {
    v5 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v29 = [(BSUIFeedViewController *)self feedId];
      v30 = 1024;
      v31 = [(BSUIFeedViewController *)self performantForScrolling];
      v32 = 1024;
      v33 = [(BSUIFeedViewController *)self performantForReadingExperience];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] viewWillAppear skips sync transaction because either Scrolling=%{BOOL}d or ReadingExperience=%{BOOL}d", buf, 0x18u);
    }
  }

  v27.receiver = self;
  v27.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v27 viewWillAppear:v3];
  v6 = [(BSUIFeedViewController *)self feedController];
  [v6 notifyOnAppear];

  if (([(BSUIFeedViewController *)self isBeingPresented]& 1) == 0)
  {
    v7 = [(BSUIFeedViewController *)self jsFeedController];
    v8 = [v7 metadata];
    -[BSUIFeedViewController _configureNavigationBarWithStyle:](self, "_configureNavigationBarWithStyle:", [v8 navigationBarStyle]);
  }

  v9 = [(BSUIFeedViewController *)self presentedViewController];
  if (v9)
  {
    goto LABEL_10;
  }

  v10 = [(BSUIFeedViewController *)self navigationController];
  v11 = [v10 isNavigationBarHidden];
  v12 = [(BSUIFeedViewController *)self bc_navBarVisible];

  if (v11 == v12)
  {
    v9 = [(BSUIFeedViewController *)self navigationController];
    v13 = [(BSUIFeedViewController *)self navigationController];
    [v9 setNavigationBarHidden:objc_msgSend(v13 animated:{"isNavigationBarHidden") ^ 1, v3}];

LABEL_10:
  }

  if (self->_trackerName)
  {
    v14 = [(BSUIFeedViewController *)self ba_analyticsTracker];

    if (!v14)
    {
      v15 = [(BSUIFeedViewController *)self ba_setupNewAnalyticsTrackerWithName:self->_trackerName];
      [(BSUIFeedViewController *)self _setEffectiveAnalyticsTracker:v15];
    }
  }

  v16 = [(BSUIFeedViewController *)self transitionCoordinator];
  v17 = [v16 isAnimated];

  if (v17)
  {
    v18 = [(BSUIFeedViewController *)self transitionCoordinator];
    v25[4] = self;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_46FAC;
    v26[3] = &unk_386C80;
    v26[4] = self;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_46FB4;
    v25[3] = &unk_386C80;
    [v18 animateAlongsideTransition:v26 completion:v25];
  }

  v19 = [(BSUIFeedViewController *)self waitForVisibleImageResourcesToLoadAssertionWithTimeout:0 completion:0.2];
  v20 = [(BSUIFeedViewController *)self metadataDelegate];
  v21 = [(BSUIFeedViewController *)self jsFeedController];
  v22 = [v21 metadata];
  [v20 bsuiFeedViewControllerNavigationBarStyle:{objc_msgSend(v22, "navigationBarStyle")}];

  if ([(BSUIFeedViewController *)self isInCard])
  {
    objc_opt_class();
    v23 = [(BSUIFeedViewController *)self navigationController];
    v24 = BUDynamicCast();

    if ([v24 isCurrentCard])
    {
      [(BSUIFeedViewController *)self didBecomeVisibleContentScrollView];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v13 viewDidAppear:a3];
  v4 = [(BSUIFeedViewController *)self presentingViewController];
  [(BSUIFeedViewController *)self setIsPresented:v4 != 0];

  v5 = [(BSUIFeedViewController *)self feedController];
  [v5 notifyDidAppear];

  [(BSUIFeedViewController *)self bc_analyticsVisibilityUpdateSubtree];
  if ([(BSUIFeedViewController *)self isPresented])
  {
    v6 = [(BSUIFeedViewController *)self navigationController];
    v7 = [v6 navigationBar];
    v8 = [v7 isHidden];

    if ((v8 & 1) == 0)
    {
      v9 = [(BSUIFeedViewController *)self cardStackViewController];
      v10 = [v9 topCardSetViewController];
      v11 = [v10 currentCardViewController];

      LODWORD(v9) = UIAccessibilityScreenChangedNotification;
      v12 = [v11 view];
      UIAccessibilityPostNotification(v9, v12);
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v9 viewWillDisappear:a3];
  v4 = [(BSUIFeedViewController *)self navigationController];
  if ([v4 isNavigationBarHidden])
  {
    v5 = [(BSUIFeedViewController *)self bc_navBarVisible];

    if (!v5)
    {
      goto LABEL_5;
    }

    v4 = [(BSUIFeedViewController *)self navigationController];
    [v4 setNavigationBarHidden:0 animated:0];
  }

LABEL_5:
  v6 = [(BSUIFeedViewController *)self currentPopOverViewController];

  if (v6)
  {
    v7 = [(BSUIFeedViewController *)self currentPopOverViewController];
    [v7 dismissViewControllerAnimated:1 completion:0];
  }

  [(BSUIFeedViewController *)self setIsPresented:0];
  [(BSUIFeedViewController *)self setWasPresentingCards:0];
  v8 = [(BSUIFeedViewController *)self feedController];
  [v8 notifyOnDisappear];

  [(BSUIFeedViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v7 viewDidDisappear:a3];
  [(BSUIFeedViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
  v4 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(BSUIFeedViewController *)self feedId];
    *buf = 134217984;
    v9 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[fid:%lu] viewDidDisappear: Sending BSUIFeedViewControllerDidDisappearNotification", buf, 0xCu);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"BSUIFeedViewControllerDidDisappearNotification" object:0];
}

- (void)viewWillLayoutSubviews
{
  if (self->_isFirstLayout)
  {
    self->_isFirstLayout = 0;
    if (!+[BSUIDefaults disableTabBarL2LargeTitleScrollOffsetWorkaround])
    {
      v3 = [(BSUIFeedViewController *)self traitCollection];
      if ([v3 horizontalSizeClass] == &dword_0 + 1)
      {
LABEL_6:

        goto LABEL_7;
      }

      v4 = [(BSUIFeedViewController *)self bsui_hasLargeTitle];

      if (v4)
      {
        v3 = [(BSUIFeedViewController *)self scrollView];
        [v3 _scrollToTopIfPossible:0];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v5.receiver = self;
  v5.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v5 viewWillLayoutSubviews];
}

- (void)bc_analyticsVisibilityDidAppear
{
  v4.receiver = self;
  v4.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v4 bc_analyticsVisibilityDidAppear];
  [(BSUIFeedViewController *)self updateVisibility];
  v3 = [(BSUIFeedViewController *)self jsFeedController];
  [v3 notifyAnalyticsVisibilityDidAppear];

  [(BSUIFeedViewController *)self _updateEngagementMessagesToDisplay];
}

- (void)bc_analyticsVisibilityWillDisappear
{
  v4.receiver = self;
  v4.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v4 bc_analyticsVisibilityWillDisappear];
  v3 = [(BSUIFeedViewController *)self jsFeedController];
  [v3 notifyAnalyticsVisibilityWillDisappear];
}

- (void)bc_analyticsVisibilityDidDisappear
{
  v3.receiver = self;
  v3.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v3 bc_analyticsVisibilityDidDisappear];
  [(BSUIFeedViewController *)self updateVisibility];
}

- (void)setPerformantForScrolling:(BOOL)a3
{
  if (self->_performantForScrolling != a3)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    v9 = a3;
    self->_performantForScrolling = a3;
    if (a3)
    {
      v11 = [(BSUIFeedViewController *)self suspendLayout];
      [(BSUIFeedViewController *)self setSuspendLayoutForScrolling:v11];
    }

    else
    {
      [(BSUIFeedViewController *)self setSuspendLayoutForScrolling:0];
    }

    [(BSUIFeedViewController *)self setDisallowLoadingView:v9, v6, v12, v13, v14, v7];

    [(BSUIFeedViewController *)self _updateSyncTransactionBehaviorInViewWillAppear];
  }
}

- (void)setPerformantForReadingExperience:(BOOL)a3
{
  if (self->_performantForReadingExperience != a3)
  {
    self->_performantForReadingExperience = a3;
    [(BSUIFeedViewController *)self _updateSyncTransactionBehaviorInViewWillAppear];
  }
}

- (void)didBecomeVisibleContentScrollView
{
  if ([(BSUIFeedViewController *)self isInCard])
  {
    v3 = [(BSUIFeedViewController *)self presentingViewController];
    v13 = [v3 tabBarController];

    v4 = [(BSUIFeedViewController *)self cardStackViewController];
    v5 = [v4 topCardSetViewController];
    v6 = [v5 currentCardViewController];
    v7 = [v6 expanded];

    if (v7)
    {
      [v13 bc_setPreferredTabBarScrollEdgeAppearance:0];
      v8 = [v13 selectedViewController];
      [v8 setContentScrollView:0 forEdge:4];

      v9 = [v13 selectedViewController];
      v10 = [(BSUIFeedViewController *)self scrollView];
      [v9 setContentScrollView:v10 forEdge:4];

      goto LABEL_7;
    }

    v11 = [v13 tabBar];
    v12 = [v11 standardAppearance];
    [v13 bc_setPreferredTabBarScrollEdgeAppearance:v12];
  }

  else
  {
    v13 = [(BSUIFeedViewController *)self tabBarController];
    [v13 bc_setPreferredTabBarScrollEdgeAppearance:0];
  }

  v9 = [v13 selectedViewController];
  [v9 setContentScrollView:0 forEdge:4];
LABEL_7:
}

- (void)didSetCurrentCardState:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self presentingViewController];
  v11 = [v5 tabBarController];

  v6 = +[BCCardSetState expandedState];

  if (v6 == v4)
  {
    [v11 bc_setPreferredTabBarScrollEdgeAppearance:0];
    v9 = [v11 selectedViewController];
    v10 = [(BSUIFeedViewController *)self scrollView];
    [v9 setContentScrollView:v10 forEdge:4];
  }

  else
  {
    v7 = [v11 tabBar];
    v8 = [v7 standardAppearance];
    [v11 bc_setPreferredTabBarScrollEdgeAppearance:v8];

    v9 = [v11 selectedViewController];
    [v9 setContentScrollView:0 forEdge:4];
  }
}

- (void)didBecomeCurrentFeed
{
  v3 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = [(BSUIFeedViewController *)self feedId];
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[fid:%lu] didBecomeCurrentFeed", &v4, 0xCu);
  }
}

- (void)loadEntries
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_47AE4;
  v14 = &unk_3870C8;
  v15 = self;
  v16 = &v17;
  v3 = v12;
  os_unfair_lock_lock(&self->_stateLock);
  v13(v3);
  os_unfair_lock_unlock(&self->_stateLock);

  if (*(v18 + 24) == 1)
  {
    v4 = BCSignpostFeedViewController();
    v5 = os_signpost_id_generate(v4);

    v6 = BCSignpostFeedViewController();
    v7 = v6;
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Load Entries", "", buf, 2u);
    }

    objc_initWeak(buf, self);
    v8 = [(BSUIFeedViewController *)self jsFeedController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_47B14;
    v9[3] = &unk_388848;
    objc_copyWeak(v10, buf);
    v10[1] = v5;
    [v8 requestEntriesWithCompletion:v9];

    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v17, 8);
}

- (id)_createFeedContentFromDictionaries:(id)a3 initialContentReadyEntryIndex:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = BSUIFixRelativeURLInEntryDictionary(*(*(&v19 + 1) + 8 * i));
        v14 = [TUIFeedEntry alloc];
        v15 = [v14 initWithDictionary:{v13, v19}];
        [v15 setDelegate:self];
        [v7 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [(BSUIFeedViewController *)self currentStackName];
  v17 = [TUIFeedContent feedContentWithEntries:v7 stackName:v16 initialContentReadyEntryIndex:a4];

  return v17;
}

- (void)_feedContentDidLoad:(id)a3 signpost:(unint64_t)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = [(BSUIFeedViewController *)self jsFeedController];
  v8 = [v7 options];
  v9 = [v8 objectForKeyedSubscript:@"isInitialFeed"];
  v10 = BUDynamicCast();
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = +[JSABridge sharedInstance];
    v13 = [v12 environment];
    v14 = [v13 context];

    v15 = [v14 objectForKeyedSubscript:@"App"];
    v16 = [v15 invokeMethod:@"initialContentReadySection" withArguments:0];
    v17 = [v16 toNumber];

    if (v17)
    {
      [v17 doubleValue];
      v18 = BSUIFeedViewControllerLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        *&buf[4] = [(BSUIFeedViewController *)self feedId];
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "[fid:%lu] Obtained initialContentReadySection=%@ from JS", buf, 0x16u);
      }
    }

    else
    {

      v18 = BSUIFeedViewControllerLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_2BDE98(self, v18);
      }

      v17 = &off_39B4D0;
    }

    v19 = [v17 unsignedIntegerValue];
  }

  else
  {
    v17 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = [(BSUIFeedViewController *)self _createFeedContentFromDictionaries:v6 initialContentReadyEntryIndex:v19];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = sub_4813C;
  v36 = sub_48168;
  v37 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v30 = sub_48170;
  v31 = &unk_388870;
  v32 = self;
  v33 = buf;
  v21 = v29;
  os_unfair_lock_lock(&self->_stateLock);
  v30(v21);
  os_unfair_lock_unlock(&self->_stateLock);

  if (*(*&buf[8] + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_481E8;
    block[3] = &unk_388898;
    v27 = buf;
    v26 = v20;
    v28 = a4;
    dispatch_async(&_dispatch_main_q, block);
    v22 = v26;
  }

  else
  {
    [(BSUIFeedViewController *)self setContent:v20];
    v23 = BCSignpostFeedViewController();
    v22 = v23;
    if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, a4, "Load Entries", "", v24, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)setCardContentScrollManager:(id)a3
{
  v4 = a3;
  if (self->_cardContentScrollManager != v4)
  {
    self->_cardContentScrollManager = v4;
    v7 = v4;
    v5 = [(BSUIFeedViewController *)self scrollView];

    v4 = v7;
    if (v5)
    {
      v6 = [(BSUIFeedViewController *)self scrollView];
      [(BCCardContentScrollManager *)v7 cardContentViewController:self initializeManagerWithScrollView:v6];

      v4 = v7;
    }
  }
}

- (int64_t)feedContentLoadingState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_4842C;
  v8 = &unk_3870C8;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_stateLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_stateLock);

  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)setFeedContentLoadingState:(int64_t)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_484EC;
  v4[3] = &unk_3888C0;
  v4[4] = self;
  v4[5] = a3;
  os_unfair_lock_lock(&self->_stateLock);
  sub_484EC(v4);
  os_unfair_lock_unlock(&self->_stateLock);
}

- (id)feedContentCompletion
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_4813C;
  v15 = sub_48168;
  v16 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_48634;
  v8 = &unk_3870C8;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_stateLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_stateLock);

  v4 = objc_retainBlock(v12[5]);
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setLoadPriority:(int64_t)a3
{
  if (self->_loadPriority != a3)
  {
    self->_loadPriority = a3;
    v4 = [(BSUIFeedViewController *)self jsFeedController];
    v5 = __ROR8__(self->_loadPriority + 8, 2);
    LODWORD(v6) = 0.5;
    if (v5 <= 4)
    {
      LODWORD(v6) = dword_2E1568[v5];
    }

    v7 = v4;
    [v4 setFeedDataRequestPriority:v6];
  }
}

- (void)navigationBarItemsDidUpdate:(id)a3 hasItems:(BOOL)a4
{
  if ([(BSUIFeedViewController *)self _appearState])
  {
    if (a4)
    {
      v6 = &dword_0 + 1;
    }

    else
    {
      v7 = [(BSUIFeedViewController *)self jsFeedController];
      v8 = [v7 metadata];
      if (v8)
      {
        v9 = [(BSUIFeedViewController *)self jsFeedController];
        v10 = [v9 metadata];
        v6 = [v10 navigationBarVisible];
      }

      else
      {
        v6 = &dword_0 + 1;
      }
    }

    [(BSUIFeedViewController *)self bc_setNavBarVisible:v6];
    v11 = [(BSUIFeedViewController *)self navigationController];
    v12 = [v11 topViewController];

    if (v12 == self)
    {
      v13 = [(BSUIFeedViewController *)self jsFeedController];
      v14 = [v13 metadata];

      if (v14)
      {
        v16 = [(BSUIFeedViewController *)self scrollView];
        [v16 _verticalVelocity];
        v18 = v17;

        v15 = 0.15;
        if (v18 < -3.5)
        {
          v15 = 0.0;
        }

        if (v18 >= -2.0)
        {
          v19 = 0.2;
        }

        else
        {
          v19 = v15;
        }
      }

      else
      {
        v19 = 0.0;
      }

      v20 = [(BSUIFeedViewController *)self navigationController];
      [v20 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:v19];

      [(BSUIFeedViewController *)self _fixTwoLineLargeTitleLayoutIfNeeded];
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(BSUIFeedViewController *)self presentedViewController];
  v4 = v3;
  if (v3 && [v3 conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling])
  {
    v5 = [v4 supportedInterfaceOrientations];
  }

  else
  {
    v5 = [(BSUIFeedViewController *)self supportedInterfaceOrientationsForSelf];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)supportedInterfaceOrientationsForSelf
{
  if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (id)feedEntry:(id)a3 requestDataWithPriority:(float)a4 block:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v9 = [(BSUIFeedViewController *)self jsFeedController];

    if (v9)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v10 = BCSignpostFeedViewController();
      v11 = os_signpost_id_generate(v10);

      v31 = v11;
      v12 = BCSignpostFeedViewController();
      v13 = v12;
      v14 = v29[3];
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v15 = [v7 uid];
        v16 = [v7 templateURL];
        v17 = [v16 lastPathComponent];
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Request Entry Data", "Entry: %{public}@, Template: %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v33 = -1;
      objc_initWeak(&location, self);
      v18 = [(BSUIFeedViewController *)self jsFeedController];
      v19 = [v7 uid];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_48C5C;
      v21[3] = &unk_388910;
      objc_copyWeak(&v26, &location);
      v24 = &v28;
      v25 = buf;
      v22 = v7;
      v23 = v8;
      [v18 requestCompleteDataForEntry:v19 completion:v21];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }

  return 0;
}

- (BOOL)feedEntry:(id)a3 handleBehavior:(id)a4 name:(id)a5 arguments:(id)a6
{
  if (!a3 || !a5)
  {
    return 0;
  }

  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(BSUIFeedViewController *)self jsFeedController];
  v13 = [v11 uid];

  LOBYTE(v11) = [v12 executeBehaviorNamed:v10 forEntry:v13 withArguments:v9];
  return v11;
}

- (id)dragItemForFeedEntry:(id)a3 name:(id)a4 arguments:(id)a5 imageResourceBlock:(id)a6
{
  v6 = a5;
  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"item"];

  v8 = BUDynamicCast();

  objc_opt_class();
  v9 = [v8 objectForKeyedSubscript:@"assetID"];
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [v8 objectForKeyedSubscript:@"storeID"];
  v12 = BUDynamicCast();

  if (![v12 length])
  {
    if ([v10 length])
    {
      v20 = [[BCAssetDragInfo alloc] initWithDragInfo:v8];
LABEL_7:
      v16 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  v13 = [v8 objectForKeyedSubscript:@"isRestricted"];
  v14 = BUDynamicCast();
  v15 = [v14 BOOLValue];

  if (v15)
  {
    goto LABEL_6;
  }

  v16 = [[BSUIItemDescription alloc] initWithDragInfo:v8];
  objc_opt_class();
  v17 = [v8 objectForKeyedSubscript:@"kind"];
  v18 = BUDynamicCast();
  v19 = [v18 integerValue];

  v20 = objc_alloc_init(BCAssetDragInfo);
  v21 = [(BSUIItemDescription *)v16 title];
  [(BSUIItemDescription *)v20 setTitle:v21];

  v22 = [(BSUIItemDescription *)v16 author];
  [(BSUIItemDescription *)v20 setAuthor:v22];

  v23 = [(BSUIItemDescription *)v16 productURL];
  [(BSUIItemDescription *)v20 setStoreURL:v23];

  [(BSUIItemDescription *)v20 setAssetID:v10];
  [(BSUIItemDescription *)v20 setStoreID:v12];
  [(BSUIItemDescription *)v20 setContentType:v19];
  objc_opt_class();
  v24 = [v8 objectForKeyedSubscript:@"isSample"];
  v25 = BUDynamicCast();
  -[BSUIItemDescription setIsSample:](v20, "setIsSample:", [v25 BOOLValue]);

LABEL_8:
  v26 = [(BSUIItemDescription *)v20 contentType];
  if (v26 - 2 < 2)
  {
    goto LABEL_16;
  }

  if (v26 != &dword_4 && v26 != (&dword_0 + 1))
  {
LABEL_14:
    v27 = 0;
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_17:
    v28 = objc_alloc_init(NSItemProvider);
    v29 = [[UIDragItem alloc] initWithItemProvider:v28];
    v30 = v29;
    if (v16)
    {
      v31 = v16;
    }

    else
    {
      v31 = v20;
    }

    [v29 setLocalObject:v31];
    [BCDragRepresentationFactory registerRepresentationsFromAssetDragInfo:v20 withProvider:v28 canDragToNewCanvas:v27];

    goto LABEL_23;
  }

  if ([v12 length])
  {
    if (![v10 length] || (-[BSUIItemDescription isSample](v20, "isSample") & 1) != 0)
    {
      goto LABEL_14;
    }

    v32 = BSUIGetLibraryItemStateProvider();
    v33 = [v32 itemStateWithIdentifier:v10];

    v27 = [v33 library] != &dword_0 + 3;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_16:
    v27 = 1;
    if (v20)
    {
      goto LABEL_17;
    }
  }

LABEL_22:
  v30 = 0;
LABEL_23:

  return v30;
}

- (void)performDropWithSession:(id)a3 behavior:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(BSUIFeedViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BSUIFeedViewControllerDropHandler];
  v8 = v7;
  if (v7)
  {
    [v7 performDropWithSession:v9 behavior:v6];
  }
}

- (BOOL)canHandleDropSession:(id)a3 behavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSUIFeedViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BSUIFeedViewControllerDropHandler];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 canHandleDropSession:v6 behavior:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setTrackerName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_498C4;
  v9[3] = &unk_3876C8;
  objc_copyWeak(&v12, &location);
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = objc_retainBlock(v9);
  if (v6)
  {
    if (+[NSThread isMainThread])
    {
      (v6[2])(v6);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_49A34;
      block[3] = &unk_386C58;
      v8 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (JSValue)feed
{
  v2 = [(BSUIFeedViewController *)self jsFeedController];
  v3 = [v2 feed];

  return v3;
}

- (void)renderSharableImageWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_4813C;
    v15 = sub_48168;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_49BCC;
    v10[3] = &unk_388960;
    v10[4] = self;
    v10[5] = &v11;
    v8 = objc_retainBlock(v10);
    v9 = v12[5];
    v12[5] = v8;

    (*(v12[5] + 16))();
    _Block_object_dispose(&v11, 8);
  }
}

- (id)metricsForFeedController:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(BSUIFeedViewController *)self parentCardNavigationType];

  if (v5)
  {
    v6 = [(BSUIFeedViewController *)self parentCardNavigationType];
    [v4 setObject:v6 forKey:@"navigationType"];
  }

  else if ([(BSUIFeedViewController *)self wasPresentingCards])
  {
    [v4 setObject:@"pop" forKey:@"navigationType"];
  }

  return v4;
}

- (id)newAnalyticsSessionAssertionForFeedController:(id)a3
{
  v3 = [(BSUIFeedViewController *)self effectiveAnalyticsTracker];
  v4 = [v3 newSessionAssertion];

  return v4;
}

- (id)newAnalyticsSessionExtendingAssertionForFeedController:(id)a3
{
  v3 = [(BSUIFeedViewController *)self effectiveAnalyticsTracker];
  v4 = [v3 newSessionExtendingAssertion];

  return v4;
}

- (void)coverAnimationHostUpdateItemVisibility:(BOOL)a3 refId:(id)a4 refInstance:(id)a5
{
  if (a3)
  {
    [(BSUIFeedViewController *)self _removeAlphaOverrideFromRefId:a4 refInstance:a5 animated:0 duration:0.0];
  }

  else
  {
    [(BSUIFeedViewController *)self _addAlphaOverrideToRefId:a4 refInstance:a5 alpha:0 animated:0.0 duration:0.0];
  }
}

- (void)_addAlphaOverrideToRefId:(id)a3 refInstance:(id)a4 alpha:(double)a5 animated:(BOOL)a6 duration:(double)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = [(BSUIFeedViewController *)self _overrideMatchingRefId:v12 refInstance:v13];
  if (!v14)
  {
    if (!self->_activeRenderOverrides)
    {
      v18 = objc_alloc_init(NSMutableSet);
      activeRenderOverrides = self->_activeRenderOverrides;
      self->_activeRenderOverrides = v18;
    }

    v16 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:v12 refInstance:v13];
    v15 = [TUIRenderReferenceOverride overrideWithQuery:v16 alpha:a5];
    [(BSUIFeedViewController *)self addRenderOverride:v15 animated:v8 duration:a7];
    [(NSMutableSet *)self->_activeRenderOverrides addObject:v15];
    v17 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = [NSNumber numberWithDouble:a5];
      v21 = 138412802;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v20;
      _os_log_debug_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "_addAlphaOverride: added - refId: %@, refInstance: %@, alpha: %@", &v21, 0x20u);
    }

    goto LABEL_8;
  }

  v15 = v14;
  v16 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [NSNumber numberWithDouble:a5];
    v21 = 138412802;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v17;
    _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "_addAlphaOverride: override exists - refId: %@, refInstance: %@, alpha: %@", &v21, 0x20u);
LABEL_8:
  }
}

- (void)_removeAlphaOverrideFromRefId:(id)a3 refInstance:(id)a4 animated:(BOOL)a5 duration:(double)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(BSUIFeedViewController *)self _overrideMatchingRefId:v10 refInstance:v11];
  if (v12)
  {
    [(BSUIFeedViewController *)self removeRenderOverride:v12 animated:v7 duration:a6];
    [(NSMutableSet *)self->_activeRenderOverrides removeObject:v12];
    v13 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "_removeAlphaOverride: removed - refId: %@, refInstance: %@, override: %@", &v14, 0x20u);
    }
  }

  else
  {
    v13 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_2BDF70();
    }
  }
}

- (id)_overrideMatchingRefId:(id)a3 refInstance:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:v7 refInstance:v6];
  v9 = [(BSUIFeedViewController *)self _overrideMatchingQuery:v8];
  v10 = [v7 isEqualToString:@"currentBook"];

  if (v10 && !v9)
  {
    v11 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:@"cover" refInstance:v6];

    v9 = [(BSUIFeedViewController *)self _overrideMatchingQuery:v11];
    v8 = v11;
  }

  return v9;
}

- (id)_overrideMatchingQuery:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_49D3C;
  v16 = sub_49D4C;
  v17 = 0;
  activeRenderOverrides = self->_activeRenderOverrides;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4A830;
  v9[3] = &unk_388988;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)activeRenderOverrides enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)feedControllerIsOnScreen:(id)a3
{
  if (![(BSUIFeedViewController *)self isViewLoaded])
  {
    return 0;
  }

  v4 = [(BSUIFeedViewController *)self view];
  v5 = [v4 window];
  v6 = v5 != 0;

  return v6;
}

- (void)feedController:(id)a3 wantsToCreateNewFeedWithOptions:(id)a4 completion:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v10 = [v8 objectForKeyedSubscript:@"useSwiftUI"];
  v11 = BUDynamicCast();
  v12 = [v11 BOOLValue];

  if (v12)
  {
    objc_opt_class();
    v13 = [v23 metrics];
    v14 = [v13 objectForKeyedSubscript:@"navigationType"];
    v15 = BUDynamicCast();

    objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"shouldReportFigaro"];
    v17 = BUDynamicCast();
    v18 = [v17 BOOLValue];

    v19 = [BSUINavigationContext alloc];
    v20 = [(BSUIFeedViewController *)self presentingViewController];
    v21 = [(BSUINavigationContext *)v19 initWithIsInModal:v20 != 0];

    v22 = [(BSUIFeedViewController *)self ba_effectiveAnalyticsTracker];
    [BSUIFeedViewController createSeriesViewControllerFromOptions:v8 withParentTracker:v22 navigationTypeValue:v15 navigationContext:v21 shouldReportFigaro:v18 completion:v9];
  }

  else
  {
    v15 = objc_retainBlock(v9);
    if (!v15)
    {
      goto LABEL_6;
    }

    v21 = [[BSUIFeedViewController alloc] initWithOptions:v8];
    (v15)[2](v15, v21, 0);
  }

LABEL_6:
}

- (void)feedController:(id)a3 wantsToUpdateContentWithData:(id)a4
{
  v5 = [(BSUIFeedViewController *)self _createFeedContentFromDictionaries:a4 initialContentReadyEntryIndex:0x7FFFFFFFFFFFFFFFLL];
  [(BSUIFeedViewController *)self setContent:v5];
}

- (void)feedController:(id)a3 wantsToPushViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(BSUIFeedViewController *)self navigationController];
  [v8 pushViewController:v7 animated:v5];
}

- (void)feedController:(id)a3 wantsToReplaceCurrentViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  v7 = [(BSUIFeedViewController *)self navigationController];
  v8 = [v7 viewControllers];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = [v9 count] - 1;
  }

  else
  {
    v10 = 0;
  }

  [v9 replaceObjectAtIndex:v10 withObject:v12];
  v11 = [(BSUIFeedViewController *)self navigationController];
  [v11 setViewControllers:v9 animated:v5];
}

- (void)feedController:(id)a3 wantsToPresentViewController:(id)a4 animated:(BOOL)a5 params:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = v9;
  objc_opt_class();
  v12 = [v10 objectForKeyedSubscript:@"noNavigationController"];
  v13 = BUDynamicCast();
  v14 = [v13 BOOLValue];

  v15 = v11;
  if ((v14 & 1) == 0)
  {
    v15 = [[BSUIFeedNavigationController alloc] initWithOptions:v10];
    v23 = v11;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(BSUINavigationController *)v15 setViewControllers:v16 animated:0];
  }

  v17 = [v10 objectForKeyedSubscript:@"presentationStyle"];

  if (v17)
  {
    objc_opt_class();
    v18 = [v10 objectForKeyedSubscript:@"presentationStyle"];
    v19 = BUDynamicCast();
    -[BSUIFeedNavigationController setModalPresentationStyle:](v15, "setModalPresentationStyle:", [v19 integerValue]);
  }

  v20 = [v10 objectForKeyedSubscript:@"transitionStyle"];

  if (v20)
  {
    objc_opt_class();
    v21 = [v10 objectForKeyedSubscript:@"transitionStyle"];
    v22 = BUDynamicCast();
    -[BSUIFeedNavigationController setModalTransitionStyle:](v15, "setModalTransitionStyle:", [v22 integerValue]);
  }

  [(BSUIFeedViewController *)self presentViewController:v15 animated:v7 completion:0];
}

- (void)feedController:(id)a3 wantsToSlideInFeedViewController:(id)a4
{
  v5 = a4;
  [v5 bsui_setPrefersExtraCompactNavBarMargin:1];
  v6 = [(BSUIFeedViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)feedController:(id)a3 wantsToPopViewController:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(BSUIFeedViewController *)self navigationController];
  v9 = [v8 viewControllers];
  v10 = [v9 count];

  if (v10 < 2)
  {
    v16 = [(BSUIFeedViewController *)self cardStackViewController];

    if (v16)
    {
      v17 = [(BSUIFeedViewController *)self cardStackViewController];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_4B2EC;
      v23[3] = &unk_3873D8;
      v24 = v7;
      [v17 popAllCardsAnimated:v5 completion:v23];

      v15 = v24;
      goto LABEL_6;
    }

    v18 = +[JSABridge sharedInstance];
    v19 = v18;
    v20 = &off_39B630;
    v21 = v7;
    v22 = 1855;
LABEL_9:
    [v18 enqueueValueCall:v21 arguments:v20 file:@"BSUIFeedViewController.m" line:v22];

    goto LABEL_10;
  }

  v11 = [(BSUIFeedViewController *)self navigationController];
  v12 = [v11 popViewControllerAnimated:v5];

  if (!v5)
  {
    v18 = +[JSABridge sharedInstance];
    v19 = v18;
    v20 = &off_39B5E8;
    v21 = v7;
    v22 = 1844;
    goto LABEL_9;
  }

  v13 = [(BSUIFeedViewController *)self navigationController];
  v14 = [v13 transitionCoordinator];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4B280;
  v25[3] = &unk_386C80;
  v26 = v7;
  [v14 animateAlongsideTransition:0 completion:v25];

  v15 = v26;
LABEL_6:

LABEL_10:
}

- (void)feedController:(id)a3 wantsToPopToRootViewControllerAnimated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = dispatch_group_create();
  objc_opt_class();
  v9 = [(BSUIFeedViewController *)self navigationController];
  v10 = [v9 presentedViewController];
  v11 = BUDynamicCast();

  v12 = v11 != 0;
  if (v11)
  {
    dispatch_group_enter(v8);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_4B5DC;
    v26[3] = &unk_3873D8;
    v27 = v8;
    [v11 popAllCardsAnimated:v5 prefersCrossfade:1 completion:v26];
  }

  v13 = [(BSUIFeedViewController *)self navigationController];
  v14 = [v13 viewControllers];
  v15 = [v14 count];

  if (v15 >= 2)
  {
    v16 = [(BSUIFeedViewController *)self navigationController];
    v17 = [v16 popToRootViewControllerAnimated:v5];

    if (v5)
    {
      dispatch_group_enter(v8);
      v18 = [(BSUIFeedViewController *)self navigationController];
      v19 = [v18 transitionCoordinator];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_4B5E4;
      v24[3] = &unk_386C80;
      v25 = v8;
      [v19 animateAlongsideTransition:0 completion:v24];
    }

    v12 = 1;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4B5EC;
  v21[3] = &unk_3882B0;
  v22 = v7;
  v23 = v12;
  v20 = v7;
  dispatch_group_notify(v8, &_dispatch_main_q, v21);
}

- (void)feedController:(id)a3 wantsToDismissViewControllerAnimated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4B764;
  v8[3] = &unk_3873D8;
  v9 = a5;
  v7 = v9;
  [(BSUIFeedViewController *)self dismissViewControllerAnimated:v5 completion:v8];
}

- (void)feedController:(id)a3 wantsToPresentCardsWithCardArray:(id)a4 focusedIndex:(unint64_t)a5 animated:(BOOL)a6 options:(id)a7 completion:(id)a8
{
  v9 = a6;
  v13 = a8;
  v14 = a7;
  v15 = a4;
  [(BSUIFeedViewController *)self setWasPresentingCards:1];
  [(BSUIFeedViewController *)self presentFeedsInCards:v15 focusedIndex:a5 animated:v9 options:v14 completion:v13];
}

- (void)feedController:(id)a3 didLoadCardResource:(id)a4
{
  v5 = a4;
  v6 = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4B928;
  v8[3] = &unk_3889B0;
  v9 = v5;
  v7 = v5;
  [v6 viewControllerWhenAvailable:v8];
}

- (void)feedController:(id)a3 collectAndFlush:(BOOL)a4 accumulatedImpressionsWithCompletion:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(BSUIFeedViewController *)self impressionController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4B9F0;
  v10[3] = &unk_3889D8;
  v11 = v7;
  v9 = v7;
  [v8 collectAndFlush:v5 accumulatedImpressionsWithCompletion:v10];
}

- (void)feedController:(id)a3 collectVisibleImpressionsWithCompletion:(id)a4
{
  v5 = a4;
  v6 = [(BSUIFeedViewController *)self impressionController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4BC3C;
  v8[3] = &unk_3889D8;
  v9 = v5;
  v7 = v5;
  [v6 collectVisibleImpressionsWithCompletion:v8];
}

- (void)resetImpressionsForFeedController:(id)a3
{
  v3 = [(BSUIFeedViewController *)self impressionController];
  [v3 reset];
}

- (void)feedController:(id)a3 collectStatsWithCompletion:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4BEB0;
  v6[3] = &unk_388A00;
  v7 = a4;
  v5 = v7;
  [(BSUIFeedViewController *)self collectStatsWithCompletion:v6];
}

- (void)feedController:(id)a3 dismissKeyboard:(id)a4
{
  v4 = [(BSUIFeedViewController *)self view:a3];
  [v4 endEditing:1];
}

- (void)feedController:(id)a3 scrollToItem:(id)a4 animated:(BOOL)a5 skipVoiceOverFocus:(BOOL)a6
{
  v36 = a6;
  v6 = a5;
  v8 = a4;
  objc_opt_class();
  v9 = [v8 objectForKeyedSubscript:@"refId"];
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [v8 objectForKeyedSubscript:@"refInstance"];
  v12 = BUDynamicCast();

  objc_opt_class();
  v13 = [v8 objectForKeyedSubscript:@"entryID"];
  v14 = BUDynamicCast();

  objc_opt_class();
  v15 = [v8 objectForKeyedSubscript:@"entryIndex"];
  v16 = BUDynamicCast();

  v37 = self;
  if (v14)
  {
    v38 = v12;
    v34 = v6;
    v35 = v10;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = [(BSUIFeedViewController *)self content];
    v18 = [v17 entries];

    v19 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [v23 uid];
          v25 = [v24 isEqualToString:v14];

          if (v25)
          {
            v12 = v38;
            v10 = v35;
            [(BSUIFeedViewController *)v37 scrollToRefId:v35 refInstance:v38 onEntry:v23 animated:v34 skipVoiceOverFocus:v36];

            goto LABEL_17;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v10 = v35;
    goto LABEL_16;
  }

  if (v16)
  {
    v26 = [v16 integerValue];
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = v26;
      [(BSUIFeedViewController *)self content];
      v28 = v38 = v12;
      v29 = [v28 entries];
      v30 = [v29 count];

      v12 = v38;
      if (v27 < v30)
      {
        v31 = [(BSUIFeedViewController *)self content];
        v32 = [v31 entries];
        v33 = [v32 objectAtIndexedSubscript:v27];
        [(BSUIFeedViewController *)self scrollToRefId:v10 refInstance:v38 onEntry:v33 animated:v6 skipVoiceOverFocus:v36];

LABEL_16:
        v12 = v38;
      }
    }
  }

LABEL_17:
}

- (void)feedControllerWillHotReload:(id)a3
{
  v4 = [(BSUIFeedViewController *)self navigationItem];
  v3 = [v4 searchController];
  [v3 setActive:0];
}

- (void)feedController:(id)a3 requestToSetNavigationBarHidden:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [(BSUIFeedViewController *)self navigationController];
  v11 = [v8 navigationBar];

  v9 = [(BSUIFeedViewController *)self navigationItem];
  if (![v11 state] && objc_msgSend(v11, "isHidden") != v6 && (objc_msgSend(v9, "_isManualScrollEdgeAppearanceEnabled") & 1) == 0)
  {
    v10 = [(BSUIFeedViewController *)self navigationController];
    [v10 setNavigationBarHidden:v6 animated:v5];
  }
}

- (void)feedController:(id)a3 addAlphaOverrideToItem:(id)a4 alpha:(double)a5 animated:(BOOL)a6 duration:(double)a7
{
  v8 = a6;
  v11 = a4;
  objc_opt_class();
  v12 = [v11 objectForKeyedSubscript:@"refId"];
  v15 = BUDynamicCast();

  objc_opt_class();
  v13 = [v11 objectForKeyedSubscript:@"refInstance"];

  v14 = BUDynamicCast();

  if (v15)
  {
    [(BSUIFeedViewController *)self _addAlphaOverrideToRefId:v15 refInstance:v14 alpha:v8 animated:a5 duration:a7];
  }
}

- (void)feedController:(id)a3 removeAlphaOverrideFromItem:(id)a4 animated:(BOOL)a5 duration:(double)a6
{
  v7 = a5;
  v9 = a4;
  objc_opt_class();
  v10 = [v9 objectForKeyedSubscript:@"refId"];
  v13 = BUDynamicCast();

  objc_opt_class();
  v11 = [v9 objectForKeyedSubscript:@"refInstance"];

  v12 = BUDynamicCast();

  if (v13)
  {
    [(BSUIFeedViewController *)self _removeAlphaOverrideFromRefId:v13 refInstance:v12 animated:v7 duration:a6];
  }
}

- (void)feedController:(id)a3 addObserver:(id)a4 forTrigger:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if ([v9 length])
    {
      v11 = [(BSUIFeedViewController *)self triggerStateManager];

      if (v11)
      {
        feedTriggerObserver = self->_feedTriggerObserver;
        v13 = [(BSUIFeedViewController *)self triggerStateManager];
        [(BSUIFeedTriggerBlockObserver *)feedTriggerObserver addObserver:v8 forTrigger:v10 inStateManager:v13];
      }
    }
  }
}

- (void)feedController:(id)a3 removeObserver:(id)a4 forTrigger:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if ([v9 length])
    {
      v11 = [(BSUIFeedViewController *)self triggerStateManager];

      if (v11)
      {
        feedTriggerObserver = self->_feedTriggerObserver;
        v13 = [(BSUIFeedViewController *)self triggerStateManager];
        [(BSUIFeedTriggerBlockObserver *)feedTriggerObserver removeObserver:v8 forTrigger:v10 inStateManager:v13];
      }
    }
  }
}

- (void)feedController:(id)a3 wantsToPerformRawActionModel:(id)a4 shouldReportFigaro:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v9 = [(BSUIFeedViewController *)self jetActionHandlerInContext];
  v8 = [(BSUIFeedViewController *)self ba_effectiveAnalyticsTracker];
  [v9 performRawActionModel:v7 withParentTracker:v8 shouldReportFigaro:v5 sourceViewController:self completion:&stru_388A40];
}

- (CGRect)getSourceRectFromOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (v4)
  {
    v10 = [v4 objectForKeyedSubscript:@"popoverAnchorRefId"];

    if (v10)
    {
      objc_opt_class();
      v11 = [v5 objectForKeyedSubscript:@"popoverAnchorRefId"];
      v12 = BUDynamicCast();

      objc_opt_class();
      v13 = [v5 objectForKeyedSubscript:@"popoverAnchorRefInstance"];
      v14 = BUDynamicCast();

      objc_opt_class();
      v15 = [v5 objectForKeyedSubscript:@"popoverAnchorEntryID"];
      v16 = BUDynamicCast();

      if (v12 && v14 && v16)
      {
        [(BSUIFeedViewController *)self _frameOfElementWithEntryID:v16 refId:v12 refInstance:v14];
        x = v17;
        y = v18;
        width = v19;
        height = v20;
      }

LABEL_14:

      goto LABEL_15;
    }

    v21 = [v5 objectForKeyedSubscript:@"sourceRect"];

    if (v21)
    {
      objc_opt_class();
      v22 = [v5 objectForKeyedSubscript:@"sourceRect"];
      v12 = BUDynamicCast();

      objc_opt_class();
      v23 = [v12 objectForKeyedSubscript:@"x"];
      v14 = BUDynamicCast();

      objc_opt_class();
      v24 = [v12 objectForKeyedSubscript:@"y"];
      v16 = BUDynamicCast();

      objc_opt_class();
      v25 = [v12 objectForKeyedSubscript:@"width"];
      v26 = BUDynamicCast();

      objc_opt_class();
      v27 = [v12 objectForKeyedSubscript:@"height"];
      v28 = BUDynamicCast();

      if (v14 && v16 && v26 && v28)
      {
        [v14 doubleValue];
        x = v29;
        [v16 doubleValue];
        y = v30;
        [v26 doubleValue];
        width = v31;
        [v28 doubleValue];
        height = v32;
      }

      goto LABEL_14;
    }
  }

LABEL_15:

  v33 = x;
  v34 = y;
  v35 = width;
  v36 = height;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)_getBarButtonItemFromOptions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"popoverAnchorRefId"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    objc_opt_class();
    v7 = [v5 objectForKeyedSubscript:@"popoverAnchorRefId"];
    v8 = BUDynamicCast();

    objc_opt_class();
    v9 = [v5 objectForKeyedSubscript:@"popoverAnchorRefInstance"];
    v10 = BUDynamicCast();

    objc_opt_class();
    v11 = [v5 objectForKeyedSubscript:@"popoverAnchorEntryID"];
    v12 = BUDynamicCast();

    v13 = 0;
    if (v8 && v10 && v12)
    {
      v14 = [TUIRenderReferenceQuery queryWithUUID:0 uid:v12 refId:v8 refInstance:v10];
      v13 = [(BSUIFeedViewController *)self navigationBarItemMatchingQuery:v14];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)getTintColorFromOptions:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"tintColor"];
  v5 = BUDynamicCast();

  if (v5)
  {
    objc_opt_class();
    v6 = [v3 objectForKeyedSubscript:@"tintColor"];
    v7 = BUDynamicCast();

    objc_opt_class();
    v8 = [v7 objectForKeyedSubscript:@"red"];
    v9 = BUDynamicCast();

    objc_opt_class();
    v10 = [v7 objectForKeyedSubscript:@"green"];
    v11 = BUDynamicCast();

    objc_opt_class();
    v12 = [v7 objectForKeyedSubscript:@"blue"];
    v13 = BUDynamicCast();

    objc_opt_class();
    v14 = [v7 objectForKeyedSubscript:@"alpha"];
    v15 = BUDynamicCast();

    v16 = 0;
    if (v9 && v11 && v13 && v15)
    {
      [v9 floatValue];
      v18 = v17;
      [v11 floatValue];
      v20 = v19;
      [v13 floatValue];
      v22 = v21;
      [v15 floatValue];
      v16 = [UIColor colorWithRed:v18 green:v20 blue:v22 alpha:v23];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)showPopoverWithViewController:(id)a3 params:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"noNavigationController"];
  v10 = BUDynamicCast();
  v11 = [v10 BOOLValue];

  v12 = v8;
  if ((v11 & 1) == 0)
  {
    v12 = [[BSUINavigationController alloc] initWithOptions:v7];
    v42 = v8;
    v13 = [NSArray arrayWithObjects:&v42 count:1];
    [(BSUINavigationController *)v12 setViewControllers:v13 animated:0];
  }

  v14 = [(BSUIFeedViewController *)self currentPopOverViewController];

  if (v14)
  {
    v15 = [(BSUIFeedViewController *)self currentPopOverViewController];
    [v15 dismissViewControllerAnimated:1 completion:0];
  }

  v16 = [(BSUIFeedViewController *)self view];
  if (v7)
  {
    v17 = [v7 objectForKeyedSubscript:@"arrowDirection"];

    if (v17)
    {
      v18 = [v7 objectForKeyedSubscript:@"arrowDirection"];
      v19 = [v18 integerValue];
    }

    else
    {
      v19 = &dword_0 + 1;
    }

    v20 = [v7 objectForKeyedSubscript:@"width"];
    if (v20)
    {
      v21 = v20;
      v22 = [v7 objectForKeyedSubscript:@"height"];

      if (v22)
      {
        objc_opt_class();
        v41 = [v7 objectForKeyedSubscript:@"width"];
        v23 = BUDynamicCast();
        [v23 floatValue];
        v25 = v24;
        objc_opt_class();
        [v7 objectForKeyedSubscript:@"height"];
        v26 = v16;
        v27 = v19;
        v29 = v28 = v8;
        v30 = BUDynamicCast();
        [v30 floatValue];
        [(BSUINavigationController *)v12 setPreferredContentSize:v25, v31];

        v8 = v28;
        v19 = v27;
        v16 = v26;
      }
    }
  }

  else
  {
    v19 = &dword_0 + 1;
  }

  v32 = [v7 objectForKeyedSubscript:@"presentationStyle"];

  if (v32)
  {
    objc_opt_class();
    v33 = [v7 objectForKeyedSubscript:@"presentationStyle"];
    v34 = BUDynamicCast();
    -[BSUINavigationController setModalPresentationStyle:](v12, "setModalPresentationStyle:", [v34 integerValue]);
  }

  else
  {
    v33 = [(BSUIFeedViewController *)self traitCollection];
    if ([v33 horizontalSizeClass] == &dword_0 + 1)
    {
      v35 = 2;
    }

    else
    {
      v35 = 7;
    }

    [(BSUINavigationController *)v12 setModalPresentationStyle:v35];
  }

  [(BSUIFeedViewController *)self presentViewController:v12 animated:1 completion:0];
  v36 = [(BSUINavigationController *)v12 popoverPresentationController];
  [v36 setPermittedArrowDirections:v19];
  v37 = +[UIColor bc_booksBackground];
  [v36 setBackgroundColor:v37];

  [v36 setSourceView:v16];
  v38 = [(BSUIFeedViewController *)self traitCollection];
  v39 = [v38 horizontalSizeClass];

  if (v39 == &dword_0 + 2)
  {
    v40 = [(BSUIFeedViewController *)self _getBarButtonItemFromOptions:v7];
    if (v40)
    {
      [v36 setBarButtonItem:v40];
    }

    else
    {
      [(BSUIFeedViewController *)self getSourceRectFromOptions:v7];
      [v36 setSourceRect:?];
    }
  }

  [(BSUIFeedViewController *)self setCurrentPopOverViewController:v12];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v17.receiver = self;
  v17.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v17 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(BSUIFeedViewController *)self alertController];
  [v5 dismiss];

  [(BSUIFeedViewController *)self setAlertController:0];
  v6 = [(BSUIFeedViewController *)self currentPopOverViewController];
  [v6 dismissViewControllerAnimated:0 completion:0];

  [(BSUIFeedViewController *)self setCurrentPopOverViewController:0];
  v7 = [(BSUIFeedViewController *)self messageViewControllerProvider];
  if (v7)
  {
    v8 = v7;
    v9 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    v10 = [v9 viewController];

    if (v10)
    {
      v11 = [(BSUIFeedViewController *)self messageViewControllerProvider];
      v12 = [v11 viewController];
      v13 = [v12 view];
      v14 = [(BSUIFeedViewController *)self view];
      [v14 bounds];
      [v13 sizeThatFits:{v15, v16}];
    }
  }
}

- (BOOL)shouldNotifyScrollViewReachedTheBottom
{
  [(BSUIFeedViewController *)self viewSizeWhenNotifiedBottomReached];
  v4 = v3;
  v6 = v5;
  v7 = [(BSUIFeedViewController *)self scrollView];
  [v7 bounds];
  v10 = v6 != v9 || v4 != v8;

  if (v10 || ![(BSUIFeedViewController *)self alreadyNotifiedBottomReached])
  {
    v12 = [(BSUIFeedViewController *)self scrollView];
    [v12 contentOffset];
    v14 = v13;
    v15 = [(BSUIFeedViewController *)self scrollView];
    [v15 bounds];
    v17 = v14 + v16 + 50.0;
    v18 = [(BSUIFeedViewController *)self scrollView];
    [v18 contentSize];
    LODWORD(v11) = v17 > v19;

    if ((v11 & v10) == 1)
    {
      v11 = [(BSUIFeedViewController *)self scrollView];
      [v11 bounds];
      [(BSUIFeedViewController *)self setViewSizeWhenNotifiedBottomReached:v20, v21];

      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)scrollViewDidScroll:(id)a3
{
  v10.receiver = self;
  v10.super_class = BSUIFeedViewController;
  v4 = a3;
  [(BSUIFeedViewController *)&v10 scrollViewDidScroll:v4];
  [v4 contentOffset];
  v6 = v5;
  [v4 adjustedContentInset];
  v8 = v7;

  [(BSUIFeedViewController *)self updateRightBarButtonItemsVisibility:v6 <= 1.0 - v8];
  if ([(BSUIFeedViewController *)self shouldNotifyScrollViewReachedTheBottom])
  {
    v9 = [(BSUIFeedViewController *)self jsFeedController];
    [v9 notifyScrollViewReachedTheBottom];

    [(BSUIFeedViewController *)self setAlreadyNotifiedBottomReached:1];
  }
}

- (void)updateRightBarButtonItemsVisibility:(BOOL)a3
{
  if (self->_isHomePage)
  {
    v3 = a3;
    v11 = [(BSUIFeedViewController *)self navigationItem];
    v5 = [v11 rightBarButtonItems];
    if ([v5 count])
    {
      v6 = [(BSUIFeedViewController *)self navigationItem];
      v7 = [v6 rightBarButtonItems];
      v8 = [v7 firstObject];
      v9 = [v8 isHidden];

      if (v9 == v3)
      {
        v10 = +[UIViewPropertyAnimator bc_swiftUIDefault];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_4DCC0;
        v12[3] = &unk_3882B0;
        v12[4] = self;
        v13 = v3;
        [v10 addAnimations:v12];
        [v10 startAnimation];
      }
    }

    else
    {
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  if (a4.y < -3.5)
  {
    v6 = [(BSUIFeedViewController *)self navigationController:a3];
    v7 = [v6 isNavigationBarHidden];

    if (v7)
    {
      v8 = [(BSUIFeedViewController *)self navigationController];
      [v8 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];
    }
  }
}

- (id)coverAnimationHostSourceForUUID:(id)a3 uid:(id)a4 refId:(id)a5 refInstance:(id)a6
{
  v10 = a6;
  v11 = [TUIRenderReferenceQuery queryWithUUID:a3 uid:a4 refId:a5 refInstance:v10];
  v12 = [BSUICoverAnimatingSource renderReferenceMatchingQuery:v11 inFeedViewController:self];
  if (v12)
  {
    v13 = v12;
LABEL_5:
    v16 = [v13 UUID];
    v17 = [v13 uid];
    v18 = [v13 refId];
    v19 = [v13 refInstance];
    v14 = [TUIRenderReferenceQuery queryWithUUID:v16 uid:v17 refId:v18 refInstance:v19];

    v20 = [v13 UUID];
    v21 = [v13 uid];
    v22 = [v13 refInstance];
    v23 = [TUIRenderReferenceQuery queryWithUUID:v20 uid:v21 refId:@"audiobook-control" refInstance:v22];

    goto LABEL_6;
  }

  v14 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:@"cover" refInstance:v10];

  v15 = [BSUICoverAnimatingSource renderReferenceMatchingQuery:v14 inFeedViewController:self];
  if (v15)
  {
    v13 = v15;
    v11 = v14;
    goto LABEL_5;
  }

  v13 = [v14 UUID];
  v20 = [v14 uid];
  v23 = [TUIRenderReferenceQuery queryWithUUID:v13 uid:v20 refId:@"audiobook-control" refInstance:v10];
LABEL_6:

  v24 = [[BSUICoverAnimatingSource alloc] initWithFeedViewController:self query:v14 audioBookControlQuery:v23];

  return v24;
}

- (BOOL)coverAnimationHostIsFullyVisible:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self view];
  [v4 coverAnimationSourceFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 coverAnimationSourceReferenceView];

  [v5 convertRect:v14 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(BSUIFeedViewController *)self view];
  v24 = [v23 safeAreaLayoutGuide];
  [v24 layoutFrame];
  v34.origin.x = v16;
  v34.origin.y = v18;
  v34.size.width = v20;
  v34.size.height = v22;
  v32 = CGRectIntersection(v31, v34);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;

  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  if (CGRectIsEmpty(v33))
  {
    return 0;
  }

  v30 = vabdd_f64(width, v20) < 0.01;
  return vabdd_f64(height, v22) < 0.01 && v30;
}

- (void)coverAnimationHostScrollToMakeVisible:(id)a3
{
  v10 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 query];
    if (v6)
    {
      v7 = v6;
      [v5 coverAnimationSourceFrame];
      v13.origin.x = CGRectZero.origin.x;
      v13.origin.y = CGRectZero.origin.y;
      v13.size.width = CGRectZero.size.width;
      v13.size.height = CGRectZero.size.height;
      v8 = CGRectEqualToRect(v12, v13);

      if (!v8)
      {
        v9 = [v5 query];
        [(BSUIFeedViewController *)self scrollToItemsMatchingQuery:v9 atScrollPosition:18 animated:0 skipVoiceOverFocus:0];

        [v10 coverAnimationSourceInvalidateFrame];
      }
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v11 viewDidLayoutSubviews];
  if ([(BSUIFeedViewController *)self modalPresentationStyle]== &dword_4 + 3 && !self->_popoverArrowBackgroundView)
  {
    v3 = [(BSUIFeedViewController *)self view];
    [v3 safeAreaInsets];
    v5 = v4;

    if (v5 > 0.0)
    {
      v6 = [(BSUIFeedViewController *)self view];
      v7 = [UIView alloc];
      [v6 frame];
      v8 = [v7 initWithFrame:{0.0, 0.0}];
      popoverArrowBackgroundView = self->_popoverArrowBackgroundView;
      self->_popoverArrowBackgroundView = v8;

      v10 = +[UIColor bc_booksBackground];
      [(UIView *)self->_popoverArrowBackgroundView setBackgroundColor:v10];

      [v6 addSubview:self->_popoverArrowBackgroundView];
    }
  }
}

- (BOOL)coverEffectsNightMode
{
  v2 = [(BSUIFeedViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == &dword_0 + 2;

  return v3;
}

- (id)_coverSourceQueryForRepresentedObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = BUDynamicCast();

  v5 = [v4 objectForKeyedSubscript:@"id"];
  v6 = [v4 objectForKeyedSubscript:@"instanceId"];
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  v11 = [v4 objectForKeyedSubscript:@"entryID"];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    objc_opt_class();
    v15 = [v4 objectForKeyedSubscript:@"columnIndex"];
    v16 = BUDynamicCast();

    if (!v16 || ([v16 integerValue] & 0x8000000000000000) != 0)
    {
      v17 = @"cover";
    }

    else
    {
      v17 = [v16 stringValue];
    }

    v14 = [TUIRenderReferenceQuery queryWithUUID:0 uid:v12 refId:v17 refInstance:v10];
  }

  return v14;
}

- (id)coverSourceForRepresentedObject:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self _coverSourceQueryForRepresentedObject:v4];
  if (v5)
  {
    if ([BSUICardStackTransitioningCoverSource isValidSourceWithFeedViewController:self query:v5])
    {
      objc_opt_class();
      v6 = BUDynamicCast();
      v7 = [v6 objectForKeyedSubscript:@"isInNonHorizontalLayout"];
      v8 = [v7 BOOLValue];

      v9 = [[BSUICardStackTransitioningCoverSource alloc] initWithFeedViewController:self query:v5 isInNonHorizontalLayout:v8];
      goto LABEL_8;
    }

    v10 = BCCardModelLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_2BE064(v10);
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (unint64_t)visibilityOfCoverSource:(id)a3 ignoringYAxis:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BSUIFeedViewController *)self view];
  [v6 cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v6 cardStackTransitioningCoverSourceReferenceView];

  [v7 convertRect:v16 fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(BSUIFeedViewController *)self view];
  [v25 bounds];
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  v33 = CGRectIntersection(v32, v35);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  if (CGRectIsEmpty(v34))
  {
    return 2;
  }

  v31 = (vabdd_f64(height, v24) >= 0.01) & ~v4;
  if (vabdd_f64(width, v22) >= 0.01)
  {
    return 1;
  }

  else
  {
    return v31;
  }
}

- (void)revealCoverForRepresentedObject:(id)a3
{
  v4 = [(BSUIFeedViewController *)self _coverSourceQueryForRepresentedObject:a3];
  if (v4)
  {
    [(BSUIFeedViewController *)self scrollToItemsMatchingQuery:v4 atScrollPosition:0 animated:0 skipVoiceOverFocus:0];
  }

  _objc_release_x1();
}

- (BCCardStackTransitioningCoverSource)cardStackTransitioningCardContentCoverSource
{
  objc_opt_class();
  v3 = [(BSUIFeedViewController *)self feedController];
  v4 = [v3 options];
  v5 = BUDynamicCast();

  v6 = [v5 objectForKeyedSubscript:@"id"];
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:@"isInNonHorizontalLayout"];
  v8 = BUDynamicCast();
  v9 = [v8 BOOLValue];

  if (v6)
  {
    v10 = [(BSUIFeedViewController *)self content];
    v11 = [v10 entries];
    v12 = [v11 firstObject];

    v13 = [v12 uuid];
    v14 = [TUIRenderReferenceQuery queryWithUUID:v13 uid:0 refId:@"cover" refInstance:v6];
    v15 = [[BSUICardStackTransitioningCoverSource alloc] initWithFeedViewController:self query:v14 isInNonHorizontalLayout:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)cardStackTransitioningCardContentFinalizePreparationForOpen
{
  if (!self->_openFinalized)
  {
    [(BSUIFeedViewController *)self pauseUpdates];
  }
}

- (void)cardStackTransitioningCardContentPrepareForOpenWithViewController:(id)a3 viewSize:(CGSize)a4 index:(unint64_t)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v13 = a3;
  v12 = [NSNumber numberWithUnsignedInteger:a5];
  [(BSUIFeedViewController *)self setPerformanceIdentifier:v12];

  [(BSUIFeedViewController *)self _prepareForOpenWithViewController:v13 viewSize:0 overrideTraitsBlock:1 numEntries:v11 completion:width, height];
}

- (void)_prepareForOpenWithViewController:(id)a3 viewSize:(CGSize)a4 overrideTraitsBlock:(id)a5 numEntries:(int64_t)a6 completion:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  objc_initWeak(&location, self);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_4EDF8;
  v33[3] = &unk_388AB8;
  objc_copyWeak(v37, &location);
  v16 = v13;
  v34 = v16;
  v17 = v14;
  v35 = v17;
  v37[1] = *&width;
  v37[2] = *&height;
  v37[3] = a6;
  v18 = v15;
  v36 = v18;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v24 = sub_4F0EC;
  v25 = &unk_388AE0;
  v28 = &v29;
  v26 = self;
  v19 = objc_retainBlock(v33);
  v27 = v19;
  v20 = v23;
  os_unfair_lock_lock(&self->_stateLock);
  v24(v20);
  os_unfair_lock_unlock(&self->_stateLock);

  v21 = v30[3];
  if (!v21)
  {
    [(BSUIFeedViewController *)self loadEntries];
    v21 = v30[3];
  }

  if (v21 == 2)
  {
    v22 = [(BSUIFeedViewController *)self content];
    (v19[2])(v19, v22);
  }

  _Block_object_dispose(&v29, 8);
  objc_destroyWeak(v37);
  objc_destroyWeak(&location);
}

- (void)cardStackTransitioningCardContentFinalizeForOpen
{
  [(BSUIFeedViewController *)self resumeUpdates];
  [(BSUIFeedViewController *)self layoutIfNeeded];
  self->_openFinalized = 1;

  [(BSUIFeedViewController *)self setPerformanceIdentifier:0];
}

- (id)artworkSourceInEntryWithIndex:(unint64_t)a3 refId:(id)a4 refInstance:(id)a5 isCover:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = [(BSUIFeedViewController *)self content];
  v13 = [v12 entries];

  if ([v13 count] <= a3)
  {
    v17 = 0;
  }

  else
  {
    v14 = [v13 objectAtIndexedSubscript:a3];
    v15 = [v14 uuid];
    v16 = [TUIRenderReferenceQuery queryWithUUID:v15 uid:0 refId:v10 refInstance:v11];
    v17 = 0;
    if ([BSUISheetTransitioningArtworkSource isValidSourceWithFeedViewController:self query:v16])
    {
      v17 = [[BSUISheetTransitioningArtworkSource alloc] initWithFeedViewController:self query:v16 isCover:v6];
    }
  }

  return v17;
}

- (unint64_t)visibilityOfArtworkSource:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self view];
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 referenceView];

  [v5 convertRect:v14 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(BSUIFeedViewController *)self view];
  [v23 bounds];
  v33.origin.x = v16;
  v33.origin.y = v18;
  v33.size.width = v20;
  v33.size.height = v22;
  v31 = CGRectIntersection(v30, v33);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (CGRectIsEmpty(v32))
  {
    return 2;
  }

  v29 = vabdd_f64(width, v20) >= 0.01;
  return vabdd_f64(height, v22) >= 0.01 || v29;
}

- (void)sheetTransitioningCardContentPrepareForOpenWithViewController:(id)a3 viewSize:(CGSize)a4 overrideTraitsBlock:(id)a5 numEntries:(int64_t)a6 completion:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a5;
  v15 = a3;
  [(BSUIFeedViewController *)self setPerformanceIdentifier:&off_39B4E8];
  self->_openFinalized = 0;
  [(BSUIFeedViewController *)self _prepareForOpenWithViewController:v15 viewSize:v14 overrideTraitsBlock:a6 numEntries:v13 completion:width, height];
}

- (void)preloadAugmentedExperienceContentWithViewController:(id)a3 numEntries:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(BSUIFeedViewController *)self view];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  v15 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v42.width = v12;
    v42.height = v14;
    v16 = NSStringFromCGSize(v42);
    *buf = 138413058;
    v35 = self;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v16;
    v40 = 2048;
    v41 = a4;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%@: preloadAugmentedExperienceContent _prepareForOpen (vc: %@, viewSize: %@, numEntries: %ld)", buf, 0x2Au);
  }

  v17 = BCAugmentedExperienceSignpost();
  v18 = os_signpost_id_generate(v17);

  v19 = BCAugmentedExperienceSignpost();
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "BSUIFeedVC.AugExp.preload", "", buf, 2u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_4F880;
  v31[3] = &unk_388B08;
  v33 = v18;
  v21 = v9;
  v32 = v21;
  v22 = objc_retainBlock(v31);
  v23 = BCAugmentedExperienceSignpost();
  v24 = os_signpost_id_generate(v23);

  v25 = BCAugmentedExperienceSignpost();
  v26 = v25;
  if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "BSUIFeedVC.AugExp.prepareForOpen", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_4F9AC;
  v28[3] = &unk_388B58;
  objc_copyWeak(v30, buf);
  v30[1] = v24;
  v28[4] = self;
  v27 = v22;
  v29 = v27;
  [(BSUIFeedViewController *)self _prepareForOpenWithViewController:v8 viewSize:0 overrideTraitsBlock:a4 numEntries:v28 completion:v12, v14];

  objc_destroyWeak(v30);
  objc_destroyWeak(buf);
}

- (id)accessibilityCardContentSummary
{
  v2 = [(BSUIFeedViewController *)self jsFeedController];
  v3 = [v2 metadata];
  v4 = [v3 accessibilitySummary];

  return v4;
}

- (BOOL)shouldOnlyAllowDismiss
{
  v2 = [(BSUIFeedViewController *)self contentUnavailableConfiguration];
  v3 = v2 != 0;

  return v3;
}

- (void)auxiliaryNavigationBarViewControllerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4FFD0;
  v7[3] = &unk_388BA8;
  v8 = v4;
  v6 = v4;
  [v5 createViewControllerForFeedViewController:self shouldReportFigaro:1 completionHandler:v7];
}

- (void)suspendAndTeardownForReason:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v6 = [v5 viewControllerIfAvailable];
  [v6 suspendAndTeardown];

  v7.receiver = self;
  v7.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v7 suspendAndTeardownForReason:v4];
}

- (id)resumeAndRebuildForReason:(id)a3
{
  v9.receiver = self;
  v9.super_class = BSUIFeedViewController;
  v4 = [(BSUIFeedViewController *)&v9 resumeAndRebuildForReason:a3];
  v5 = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v6 = [v5 viewControllerIfAvailable];
  v7 = [(BSUIFeedViewController *)self triggerStateManager];
  [v6 resumeAndRebuildWithTriggerStateManager:v7];

  return v4;
}

- (void)_customizePresentationUsingViewController:(id)a3 environment:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (v21 == self)
  {
    v8 = [(BSUIFeedViewController *)self traitCollection];
    v7 = [v8 bc_userInterfaceStyleDark];
  }

  else
  {
    v7 = [v6 style] == &dword_0 + 2;
  }

  v9 = [(BSUIFeedViewController *)self jsFeedController];
  v10 = [v9 metadata];
  v11 = [v10 dayBackgroundColor];

  v12 = [(BSUIFeedViewController *)self jsFeedController];
  v13 = [v12 metadata];
  v14 = [v13 nightBackgroundColor];

  if (v11 && v14)
  {
    if (v7)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    [(BSUIFeedViewController *)self _updateViewWithBackgroundColor:v15];
  }

  else
  {
    v16 = +[UIColor bc_booksBackground];
    [(BSUIFeedViewController *)self _updateViewWithBackgroundColor:v16];
  }

  v17 = +[UIColor whiteColor];
  v18 = [UIColor colorWithRed:0.1804 green:0.1804 blue:0.1804 alpha:1.0];
  v19 = [UIColor bc_dynamicColorWithLightColor:v17 darkColor:v18];
  v20 = +[TUIDragController sharedInstance];
  [v20 setDragBackgroundColor:v19];
}

- (void)feedViewController:(id)a3 customizeEnvironment:(id)a4
{
  v8 = a4;
  [(BSUIFeedViewController *)self _customizePresentationUsingViewController:self environment:?];
  v5 = [(BSUIFeedViewController *)self jsFeedController];
  v6 = [v5 metadata];
  v7 = [v6 ignoreActiveAppearanceEnvironmentUpdate];

  if (v7)
  {
    [v8 setActiveAppearance:2];
  }
}

- (UIEdgeInsets)feedViewController:(id)a3 contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = [(BSUIFeedViewController *)self cardContentScrollManager];

  if (v9)
  {
    v10 = [(BSUIFeedViewController *)self cardContentScrollManager];
    [v10 cardContentViewController:self contentInsetsForScrollingToRectWithContentInsets:{top, left, bottom, right}];
    top = v11;
    left = v12;
    bottom = v13;
    right = v14;
  }

  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)feedViewController:(id)a3 willTransitionToLayoutState:(unint64_t)a4
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_505A8;
  block[3] = &unk_388BD0;
  objc_copyWeak(v6, &location);
  v6[1] = a4;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (void)feedViewControllerInitialContentReady:(id)a3
{
  kdebug_trace();
  v4 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "feedViewControllerInitialContentReady: Sending BSUIFeedInitialContentReadyNotification", buf, 2u);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"BSUIFeedInitialContentReadyNotification" object:0];

  v6 = [(BSUIFeedViewController *)self feedController];
  [v6 notifyInitialContentReady];

  if ([(BSUIFeedViewController *)self deferUIUpdateUntilInitialContentReady])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_509BC;
    block[3] = &unk_3873D8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_50A7C;
    v7[3] = &unk_3873D8;
    v7[4] = self;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)feedViewControllerAllContentReady:(id)a3
{
  v3 = [(BSUIFeedViewController *)self feedController];
  [v3 allContentReady];
}

- (BOOL)feedViewControllerIsConsideredVisible:(id)a3
{
  if (![(BSUIFeedViewController *)self bc_analyticsVisibility])
  {
    return 0;
  }

  v4 = [(BSUIFeedViewController *)self viewIfLoaded];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 activationState] == 0;

  return v7;
}

- (void)didEndDragSession:(id)a3 dropOperation:(unint64_t)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = BSUIFeedViewController;
  v19 = a4;
  [(BSUIFeedViewController *)&v24 didEndDragSession:v6 dropOperation:a4];
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v6 items];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        v14 = [v13 localObject];
        v15 = BUDynamicCast();

        v16 = [v15 storeID];
        if ([v16 length])
        {
          [v7 addObject:v16];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  if (v19 - 1 > 2)
  {
    v17 = @"cancel";
  }

  else
  {
    v17 = off_388CF0[v19 - 1];
  }

  v18 = objc_opt_new();
  [v18 setObject:JSARecordEventTypeDragAndDrop forKeyedSubscript:JSARecordKeyEventType];
  [v18 setObject:v17 forKeyedSubscript:JSARecordKeyResult];
  [v18 setObject:v7 forKeyedSubscript:JSARecordKeyItems];
  [JSAApplication recordNativeEvent:v18];
}

- (void)hostingController:(id)a3 didChangeContentIdentifiers:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [(BSUIFeedViewController *)self navigationController];
  v7 = BUDynamicCast();

  if (!v7 || [v7 isCurrentCard])
  {
    v8 = +[NSMutableSet set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 type];
          v16 = [v15 isEqualToString:@"message"];

          if (v16)
          {
            v17 = [v14 identifier];
            [v8 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v18 _scheduleUpdateEngagementMessagesToDisplay:v8];
    v5 = v19;
  }
}

- (void)removeProviderForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self hostingController];
  [v5 removeProviderForIdentifier:v4];
}

- (void)hostedMessageViewDidTriggerAction:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self feedController];
  [v5 notifyOnMessageActionTriggered:v4];
}

- (void)hostedMessageViewDidBecomeVisible:(id)a3
{
  v5 = a3;
  if ([(BSUIFeedViewController *)self isInCard])
  {
    v4 = [(BSUIFeedViewController *)self cardStackViewController];
    [v4 viewController:self didDisplayMessageWithId:v5];
  }
}

- (void)setupAMSEngagementObservers
{
  v3 = [AMSEngagement alloc];
  v5 = +[BUBag defaultBag];
  v4 = [v3 initWithBag:v5];
  [(BSUIFeedViewController *)self setAmsEngagement:v4];
}

- (void)addEngagementObserver:(id)a3
{
  v4 = a3;
  v6 = [(BSUIFeedViewController *)self amsEngagement];
  v5 = [v4 identifier];

  [v6 addObserver:self placement:v5 serviceType:@"books"];
}

- (void)removeEngagementObserver:(id)a3
{
  v4 = a3;
  v6 = [(BSUIFeedViewController *)self amsEngagement];
  v5 = [v4 identifier];

  [v6 removeObserver:self placement:v5 serviceType:@"books"];
}

- (void)_updateEngagementMessagesToDisplay
{
  v3 = [(BSUIFeedViewController *)self feedController];
  v4 = [v3 metadata];
  v5 = [v4 messagePlacements];
  v6 = v5;
  v7 = &__NSArray0__struct;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v20 = v8;
  v9 = [NSMutableSet setWithArray:v8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(BSUIFeedViewController *)self hostingController];
  v11 = [v10 contentIdentifiers];

  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 type];
        v18 = [v17 isEqualToString:@"message"];

        if (v18)
        {
          v19 = [v16 identifier];
          [v9 addObject:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [(BSUIFeedViewController *)self _scheduleUpdateEngagementMessagesToDisplay:v9];
}

- (void)_scheduleUpdateEngagementMessagesToDisplay:(id)a3
{
  v4 = a3;
  if (self->_deferredEngagementMessageIdentifiers)
  {
    v5 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "_scheduleUpdateEngagementMessagesToDisplay: deferring updating engagement messages for: %@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_deferredEngagementMessageIdentifiers unionSet:v4];
  }

  else
  {
    [(BSUIFeedViewController *)self _updateEngagementMessagesToDisplay:v4];
  }
}

- (void)_updateEngagementMessagesToDisplay:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self _localIdentifiers];
  if ([v5 count])
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[NSMutableSet set];
    }

    v9 = v8;

    [v9 unionSet:v5];
    v10 = [v9 copy];

    v4 = v10;
  }

  if ([v4 count])
  {
    v11 = [(BSUIFeedViewController *)self bc_effectiveEngagementProvider];
    if (v11)
    {
      v12 = [(BSUIFeedViewController *)self hostingController];
      objc_initWeak(&location, self);
      v13 = BSUIFeedViewControllerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "_updateEngagementMessagesToDisplay: fetchDialogRequestsFor: %@", buf, 0xCu);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_51808;
      v15[3] = &unk_388C20;
      objc_copyWeak(&v18, &location);
      v14 = v12;
      v16 = v14;
      v17 = v5;
      [v11 fetchDialogRequestsFor:v4 completion:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_localIdentifiers
{
  v3 = +[NSMutableArray array];
  if ([(BSUIFeedViewController *)self isInCard])
  {
    [v3 addObject:@"product_page_want_to_read_bubble_tip"];
  }

  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)_handleEngagementMessageRequest:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 style] - 3 <= &dword_0 + 1)
  {
    v8 = [(BSUIFeedViewController *)self hostingController];
    v9 = [[BSUIHostedMessageViewProvider alloc] initWithRequest:v6 identifier:v7 delegate:self];
    [v8 addProvider:v9 forIdentifier:v7];

    v10 = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_51EF4;
    v11[3] = &unk_388C48;
    v12 = v6;
    v13 = v7;
    [v10 viewControllerWhenAvailable:v11];
  }
}

- (void)_displayBottomBannerForRequest:(id)a3
{
  v9 = a3;
  v4 = [(BSUIFeedViewController *)self messageViewControllerProvider];

  if (!v4)
  {
    v5 = [[BCMessageViewControllerProvider alloc] initWithRequest:v9 placement:@"store_page_bottom_banner"];
    [(BSUIFeedViewController *)self setMessageViewControllerProvider:v5];

    v6 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    [v6 setDelegate:self];

    v7 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    v8 = [v7 viewController];
    [(BSUIFeedViewController *)self _displayBottomBanner:v8 animated:1];
  }
}

- (void)_displayBottomBanner:(id)a3 animated:(BOOL)a4
{
  v33 = a4;
  v5 = a3;
  v6 = [(BSUIFeedViewController *)self view];
  v7 = [v5 view];
  v8 = [v7 layer];
  [v8 setCornerRadius:0.0];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(BSUIFeedViewController *)self view];
  [v9 addSubview:v7];

  v36 = v5;
  [(BSUIFeedViewController *)self addChildViewController:v5];
  v10 = [v7 bottomAnchor];
  v11 = [v6 bottomAnchor];
  v34 = [v10 constraintEqualToAnchor:v11 constant:0.0];

  v12 = [v7 leadingAnchor];
  v13 = [v6 layoutMarginsGuide];
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v45[0] = v15;
  v16 = [v7 trailingAnchor];
  v35 = v6;
  v17 = [v6 layoutMarginsGuide];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v45[1] = v19;
  v20 = [NSArray arrayWithObjects:v45 count:2];
  [NSLayoutConstraint activateConstraints:v20];

  if (v33)
  {
    v21 = [v7 topAnchor];
    v22 = v35;
    v23 = [v35 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];

    v44 = v24;
    v25 = [NSArray arrayWithObjects:&v44 count:1];
    [NSLayoutConstraint activateConstraints:v25];

    [v7 layoutIfNeeded];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_52470;
    v39[3] = &unk_387000;
    v40 = v7;
    v26 = v24;
    v41 = v26;
    v27 = v34;
    v42 = v34;
    v28 = objc_retainBlock(v39);
    v29 = v36;
    v30 = BUProtocolCast();
    v31 = v30;
    if (v30)
    {
      v32 = [v30 loadPromise];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_52634;
      v37[3] = &unk_387D88;
      v38 = v28;
      [v32 addFinishBlock:v37];
    }

    else
    {
      (v28[2])(v28);
    }
  }

  else
  {
    v27 = v34;
    v43 = v34;
    v26 = [NSArray arrayWithObjects:&v43 count:1];
    [NSLayoutConstraint activateConstraints:v26];
    v22 = v35;
    v29 = v36;
  }
}

- (void)_dismissBanner:(BOOL)a3
{
  v3 = a3;
  v5 = [(BSUIFeedViewController *)self messageViewControllerProvider];
  v6 = [v5 viewController];

  v7 = [v6 view];
  v8 = v7;
  if (v3)
  {
    v9 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    v10 = [v9 viewController];
    v11 = [v10 view];

    [v11 frame];
    x = v27.origin.x;
    width = v27.size.width;
    height = v27.size.height;
    v15 = CGRectGetHeight(v27) + v27.origin.y;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5282C;
    v21[3] = &unk_388C70;
    v22 = v11;
    v23 = x;
    v24 = v15;
    v25 = width;
    v26 = height;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_5283C;
    v17[3] = &unk_388C98;
    v18 = v22;
    v19 = v6;
    v20 = self;
    v16 = v22;
    [UIView animateWithDuration:0 delay:v21 options:v17 animations:0.3 completion:0.0];
  }

  else
  {
    [v7 removeFromSuperview];
    [v6 removeFromParentViewController];
    [(BSUIFeedViewController *)self setMessageViewControllerProvider:0];
  }
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_52A44;
  v19[3] = &unk_3876C8;
  objc_copyWeak(&v22, &location);
  v14 = v12;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v16 = objc_retainBlock(v19);
  if (v16)
  {
    if (+[NSThread isMainThread])
    {
      (v16[2])(v16);
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_52BBC;
      block[3] = &unk_386C58;
      v18 = v16;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)messageViewController:(id)a3 didSelectActionWithURL:(id)a4
{
  v5 = a4;
  v7 = [(BSUIFeedViewController *)self feedController];
  v6 = [v5 absoluteString];

  [v7 notifyOnMessageActionTriggered:v6];
}

- (void)messageViewControllerDidSelectCancel:(id)a3
{
  v4 = a3;
  v5 = [(BSUIFeedViewController *)self messageViewControllerProvider];

  if (v5 == v4)
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_52DC8;
    v9[3] = &unk_387698;
    objc_copyWeak(&v10, &location);
    v6 = objc_retainBlock(v9);
    if (v6)
    {
      if (+[NSThread isMainThread])
      {
        (v6[2])(v6);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_52E0C;
        block[3] = &unk_386C58;
        v8 = v6;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)viewController:(id)a3 didDisplayMessageWithId:(id)a4
{
  if (a3 != self)
  {
    v6 = a4;
    v8 = [[TUIHostingIdentifier alloc] initWithType:@"message" identifier:v6];

    v7 = [(BSUIFeedViewController *)self hostingController];
    [v7 removeProviderForIdentifier:v8];
  }
}

- (void)setDistanceFromFocusedCard:(int64_t)a3
{
  if (self->_distanceFromFocusedCard != a3)
  {
    self->_distanceFromFocusedCard = a3;
    if (a3 >= 0)
    {
      v3 = a3;
    }

    else
    {
      v3 = -a3;
    }

    if (v3 > 2)
    {
      [(BSUIFeedViewController *)self setLoadPriority:-8];
    }

    else
    {
      [(BSUIFeedViewController *)self setLoadPriority:qword_2E1580[v3]];
    }
  }
}

- (id)menuElementsWithData:(id)a3
{
  contextMenuProvider = self->_contextMenuProvider;
  v5 = [(BSUIFeedViewController *)self _dataModelWithData:a3];
  v6 = [(BSUIContextMenuProviding *)contextMenuProvider menuElementsForViewController:self dataModel:v5];

  return v6;
}

- (void)menuElementsWithData:(id)a3 completion:(id)a4
{
  asyncContextMenuProvider = self->_asyncContextMenuProvider;
  v7 = a4;
  v8 = [(BSUIFeedViewController *)self _dataModelWithData:a3];
  [(BSUIAsyncContextMenuProviding *)asyncContextMenuProvider menuElementsWithDataModel:v8 viewController:self completion:v7];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4
{
  self->_contextMenuAppearDate = [NSDate date:a3];

  _objc_release_x1();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 withData:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (self->_contextMenuProvider && [v9 count])
  {
    contextMenuAppearDate = self->_contextMenuAppearDate;
    if (contextMenuAppearDate)
    {
      v12 = contextMenuAppearDate;
    }

    else
    {
      v12 = +[NSDate date];
    }

    v13 = v12;
    v14 = [(BSUIFeedViewController *)self _dataModelWithData:v10];
    v15 = [(BSUIContextMenuProviding *)self->_contextMenuProvider analyticsAssetPropertyProviderForDataModel:v14];
    if (v15)
    {
      v16 = +[BAEventReporter sharedReporter];
      v17 = [(BSUIFeedViewController *)self ba_effectiveAnalyticsTracker];
      [v16 emitContextualActionSheetExposureEventWithTracker:v17 startDate:v13 propertyProvider:v15];
    }

    v18 = self->_contextMenuAppearDate;
    self->_contextMenuAppearDate = 0;
  }
}

- (id)_dataModelWithData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"assets"];
  v5 = BUDynamicCast();

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v7 = v6;
  if (v5)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          v13 = BUDynamicCast();
          v14 = sub_53740(v13, v13);
          if (v14)
          {
            [v7 addObject:{v14, v42}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = sub_53740(v6, v3);
    if (v8)
    {
      [v7 addObject:v8];
    }
  }

  v15 = [v7 count];
  v16 = [BSUIContextActionDataModel alloc];
  v17 = v16;
  if (v15 == &dword_0 + 1)
  {
    v18 = [v7 objectAtIndexedSubscript:0];
    objc_opt_class();
    v19 = [v3 objectForKeyedSubscript:@"sourceView"];
    v20 = BUDynamicCast();
    v21 = [(BSUIContextActionDataModel *)v17 initWithAssetModel:v18 sourceView:v20];
  }

  else
  {
    v21 = [(BSUIContextActionDataModel *)v16 initWithAssetModels:v7];
  }

  objc_opt_class();
  v22 = [v3 objectForKeyedSubscript:@"animateFromRefId"];
  v23 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setPresentationRefID:v23];

  objc_opt_class();
  v24 = [v3 objectForKeyedSubscript:@"animateFromRefInstance"];
  v25 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setPresentationRefInstance:v25];

  objc_opt_class();
  v26 = [v3 objectForKeyedSubscript:@"entryID"];
  v27 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setPresentationUID:v27];

  objc_opt_class();
  v28 = [v3 objectForKeyedSubscript:@"location"];
  v29 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setOriginatingLocation:v29];

  objc_opt_class();
  v30 = [v3 objectForKeyedSubscript:@"isAnODPRecommendation"];
  v31 = BUDynamicCast();
  -[BSUIContextActionDataModel setIsAnODPRecommendation:](v21, "setIsAnODPRecommendation:", [v31 BOOLValue]);

  v32 = [v3 objectForKeyedSubscript:@"supportsSuggestionContextMenu"];
  if (v32)
  {
    objc_opt_class();
    v33 = [v3 objectForKeyedSubscript:@"supportsSuggestionContextMenu"];
    v34 = BUDynamicCast();
    -[BSUIContextActionDataModel setSupportsSuggestionContextMenu:](v21, "setSupportsSuggestionContextMenu:", [v34 BOOLValue]);
  }

  else
  {
    [(BSUIContextActionDataModel *)v21 setSupportsSuggestionContextMenu:[(BSUIContextActionDataModel *)v21 isAnODPRecommendation]];
  }

  objc_opt_class();
  v35 = [v3 objectForKeyedSubscript:@"shouldRecordMetrics"];
  v36 = BUDynamicCast();
  -[BSUIContextActionDataModel setShouldReportFigaro:](v21, "setShouldReportFigaro:", [v36 BOOLValue]);

  objc_opt_class();
  v37 = [v3 objectForKeyedSubscript:@"sourcePoint"];
  v38 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setSourcePoint:v38];

  v39 = [v3 objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v40 = BUProtocolCast();
  [(BSUIContextActionDataModel *)v21 setTransaction:v40];

  if ([(BSUIContextActionDataModel *)v21 isAnODPRecommendation])
  {
    [(BSUIContextActionDataModel *)v21 setODPAnalyticsWithAttributes:v3];
  }

  return v21;
}

- (void)_setEffectiveAnalyticsTracker:(id)a3
{
  v4 = a3;
  [(BSUIFeedViewController *)self setEffectiveAnalyticsTracker:v4];
  v5 = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_53990;
  v7[3] = &unk_3889B0;
  v8 = v4;
  v6 = v4;
  [v5 viewControllerWhenAvailable:v7];
}

- (CGRect)_frameOfElementWithEntryID:(id)a3 refId:(id)a4 refInstance:(id)a5
{
  v6 = [TUIRenderReferenceQuery queryWithUUID:0 uid:a3 refId:a4 refInstance:a5];
  v7 = [(BSUIFeedViewController *)self renderReferencesMatchingQuery:v6];
  v8 = [v7 allKeys];
  v9 = [v8 firstObject];

  if (v9 && ([v7 objectForKeyedSubscript:v9], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    [v11 center];
    [v11 size];
    CGRectMakeWithCenterAndSize();
    x = v12;
    y = v14;
    width = v16;
    height = v18;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)dealloc
{
  deferredReloadsQueue = self->_deferredReloadsQueue;
  if (deferredReloadsQueue)
  {
    dispatch_activate(deferredReloadsQueue);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_notificationObservers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = +[NSNotificationCenter defaultCenter];
        [v10 removeObserver:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(JSAFeedController *)self->_jsFeedController setAbandoned:1];
  [(JSAFeedController *)self->_jsFeedController tearDownWithCompletion:0];
  v11.receiver = self;
  v11.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v11 dealloc];
}

- (void)_updateViewWithBackgroundColor:(id)a3
{
  [(BSUIFeedViewController *)self setFeedBackgroundColor:a3];

  [(BSUIFeedViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (self->_showLoadingView)
  {
    v7 = +[UIContentUnavailableConfiguration loadingConfiguration];
    v4 = [(BSUIFeedViewController *)self viewIfLoaded];
    v5 = [v4 backgroundColor];
    v6 = [v7 background];
    [v6 setBackgroundColor:v5];

    [(BSUIFeedViewController *)self setContentUnavailableConfiguration:v7];
  }

  else
  {
    sub_2BE0A8(self);
  }
}

- (UIEdgeInsets)navigationBarMetricsLayoutMargins
{
  v2 = [(BSUIFeedViewController *)self feedController];
  v3 = [v2 metadata];
  [v3 navigationBarLayoutInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BCCardContentDelegate)cardContentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->cardContentDelegate);

  return WeakRetained;
}

- (BCSafeAreaInsetsObserver)bcSafeAreaInsetsObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_bcSafeAreaInsetsObserver);

  return WeakRetained;
}

- (BSUIFeedViewControllerFeedMetadataDelegate)metadataDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_metadataDelegate);

  return WeakRetained;
}

- (CGSize)viewSizeWhenNotifiedBottomReached
{
  width = self->_viewSizeWhenNotifiedBottomReached.width;
  height = self->_viewSizeWhenNotifiedBottomReached.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIViewController)currentPopOverViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentPopOverViewController);

  return WeakRetained;
}

+ (void)createSeriesViewControllerFromOptions:(NSDictionary *)a3 withParentTracker:(_TtC13BookAnalytics9BATracker *)a4 navigationTypeValue:(NSString *)a5 navigationContext:(BSUINavigationContext *)a6 shouldReportFigaro:(BOOL)a7 completion:(id)a8
{
  v15 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(a8);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  *(v19 + 56) = v18;
  *(v19 + 64) = a1;
  v20 = sub_2C5C58();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_2ED3C8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_2ED3D0;
  v22[5] = v21;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  sub_1CDB58(0, 0, v17, &unk_2E47F0, v22);
}

- (void)observeCardActiveState
{
  sub_6620C(&unk_3C0230);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2E15C0;
  v4 = sub_2C09B8();
  v5 = sub_144ADC(&qword_3BFDF0, &type metadata accessor for IsInCardTrait);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = sub_2C1458();
  v7 = sub_144ADC(&qword_3BFDF8, &type metadata accessor for IsInactiveCardTrait);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;
  v8 = self;
  sub_2C5E38();
  swift_unknownObjectRelease();
}

- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)a3 previousTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  _sSo22BSUIFeedViewControllerC11BookStoreUIE35updateTopScrollEdgeEffectVisibility04viewC023previousTraitCollectionyAB_So07UITraitP0CtF_0(v6);
}

- (void)feedController:(id)val viewStateDidUpdate:fromPreviousState:
{
  if (val)
  {
    objc_initWeak(&location, val);
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_506FC;
    v1[3] = &unk_387698;
    objc_copyWeak(&v2, &location);
    dispatch_async(&_dispatch_main_q, v1);
    objc_destroyWeak(&v2);
    objc_destroyWeak(&location);
  }
}

- (void)showLoadingViewForFeedController:(id)a3
{
  if (self)
  {
    sub_545C0(self, 24);
  }
}

- (void)hideLoadingViewForFeedController:(id)a3
{
  if (self)
  {
    sub_545CC(self, 24);
  }
}

@end