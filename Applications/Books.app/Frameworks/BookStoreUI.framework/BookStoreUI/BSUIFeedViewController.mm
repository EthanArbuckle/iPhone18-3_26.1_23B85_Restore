@interface BSUIFeedViewController
+ (void)createAsync:(id)async :(id)a4;
+ (void)createAsyncWithNavigationController:(id)controller :(id)a4;
+ (void)createSeriesViewControllerFromOptions:(NSDictionary *)options withParentTracker:(_TtC13BookAnalytics9BATracker *)tracker navigationTypeValue:(NSString *)value navigationContext:(BSUINavigationContext *)context shouldReportFigaro:(BOOL)figaro completion:(id)completion;
- (BCCardContentDelegate)cardContentDelegate;
- (BCCardStackTransitioningCoverSource)cardStackTransitioningCardContentCoverSource;
- (BCSafeAreaInsetsObserver)bcSafeAreaInsetsObserver;
- (BOOL)canHandleDropSession:(id)session behavior:(id)behavior;
- (BOOL)coverAnimationHostIsFullyVisible:(id)visible;
- (BOOL)coverEffectsNightMode;
- (BOOL)feedControllerIsOnScreen:(id)screen;
- (BOOL)feedEntry:(id)entry handleBehavior:(id)behavior name:(id)name arguments:(id)arguments;
- (BOOL)feedViewControllerIsConsideredVisible:(id)visible;
- (BOOL)shouldNotifyScrollViewReachedTheBottom;
- (BOOL)shouldOnlyAllowDismiss;
- (BSUIFeedViewController)initWithOptions:(id)options;
- (BSUIFeedViewControllerFeedMetadataDelegate)metadataDelegate;
- (CGRect)_frameOfElementWithEntryID:(id)d refId:(id)id refInstance:(id)instance;
- (CGRect)getSourceRectFromOptions:(id)options;
- (CGSize)viewSizeWhenNotifiedBottomReached;
- (JSValue)feed;
- (UIColor)preferredNavigationBarTintColor;
- (UIEdgeInsets)feedViewController:(id)controller contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)navigationBarMetricsLayoutMargins;
- (UINavigationItem)navigationItem;
- (UIViewController)currentPopOverViewController;
- (id)_coverSourceQueryForRepresentedObject:(id)object;
- (id)_createFeedContentFromDictionaries:(id)dictionaries initialContentReadyEntryIndex:(int64_t)index;
- (id)_dataModelWithData:(id)data;
- (id)_getBarButtonItemFromOptions:(id)options;
- (id)_localIdentifiers;
- (id)_overrideMatchingQuery:(id)query;
- (id)_overrideMatchingRefId:(id)id refInstance:(id)instance;
- (id)accessibilityCardContentSummary;
- (id)artworkSourceInEntryWithIndex:(unint64_t)index refId:(id)id refInstance:(id)instance isCover:(BOOL)cover;
- (id)coverAnimationHostSourceForUUID:(id)d uid:(id)uid refId:(id)id refInstance:(id)instance;
- (id)coverSourceForRepresentedObject:(id)object;
- (id)dragItemForFeedEntry:(id)entry name:(id)name arguments:(id)arguments imageResourceBlock:(id)block;
- (id)feedContentCompletion;
- (id)feedEntry:(id)entry requestDataWithPriority:(float)priority block:(id)block;
- (id)getTintColorFromOptions:(id)options;
- (id)menuElementsWithData:(id)data;
- (id)metricsForFeedController:(id)controller;
- (id)newAnalyticsSessionAssertionForFeedController:(id)controller;
- (id)newAnalyticsSessionExtendingAssertionForFeedController:(id)controller;
- (id)preferredFocusEnvironments;
- (id)resumeAndRebuildForReason:(id)reason;
- (int64_t)_resolvedLargeTitleDisplayMode:(int64_t)mode;
- (int64_t)feedContentLoadingState;
- (unint64_t)supportedInterfaceOrientations;
- (unint64_t)supportedInterfaceOrientationsForSelf;
- (unint64_t)visibilityOfArtworkSource:(id)source;
- (unint64_t)visibilityOfCoverSource:(id)source ignoringYAxis:(BOOL)axis;
- (void)_addAlphaOverrideToRefId:(id)id refInstance:(id)instance alpha:(double)alpha animated:(BOOL)animated duration:(double)duration;
- (void)_configureNavigationBarWithStyle:(unint64_t)style;
- (void)_customizePresentationUsingViewController:(id)controller environment:(id)environment;
- (void)_dismissBanner:(BOOL)banner;
- (void)_displayBottomBanner:(id)banner animated:(BOOL)animated;
- (void)_displayBottomBannerForRequest:(id)request;
- (void)_feedContentDidLoad:(id)load signpost:(unint64_t)signpost;
- (void)_feedMetadataDidUpdate;
- (void)_fixTwoLineLargeTitleLayoutIfNeeded;
- (void)_handleEngagementMessageRequest:(id)request forIdentifier:(id)identifier;
- (void)_manuallyAdjustBottomContentInset;
- (void)_prepareForOpenWithViewController:(id)controller viewSize:(CGSize)size overrideTraitsBlock:(id)block numEntries:(int64_t)entries completion:(id)completion;
- (void)_removeAlphaOverrideFromRefId:(id)id refInstance:(id)instance animated:(BOOL)animated duration:(double)duration;
- (void)_scheduleUpdateEngagementMessagesToDisplay:(id)display;
- (void)_setEffectiveAnalyticsTracker:(id)tracker;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateBackgroundColor:(BOOL)color;
- (void)_updateEngagementMessagesToDisplay;
- (void)_updateEngagementMessagesToDisplay:(id)display;
- (void)_updateNavigationItemWithTitle:(id)title;
- (void)_updateNavigationLayoutMetrics;
- (void)_updateViewWithBackgroundColor:(id)color;
- (void)addEngagementObserver:(id)observer;
- (void)auxiliaryNavigationBarViewControllerWithCompletionHandler:(id)handler;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityDidDisappear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)scroll;
- (void)cardSetViewController:(id)controller willUpdateWithNavigationType:(int64_t)type;
- (void)cardStackTransitioningCardContentFinalizeForOpen;
- (void)cardStackTransitioningCardContentFinalizePreparationForOpen;
- (void)cardStackTransitioningCardContentPrepareForOpenWithViewController:(id)controller viewSize:(CGSize)size index:(unint64_t)index completion:(id)completion;
- (void)cardStackViewController:(id)controller parentCardWillDismissWithReason:(int64_t)reason targetViewController:(id)viewController;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration withData:(id)data;
- (void)coverAnimationHostScrollToMakeVisible:(id)visible;
- (void)coverAnimationHostUpdateItemVisibility:(BOOL)visibility refId:(id)id refInstance:(id)instance;
- (void)dealloc;
- (void)didBecomeCurrentFeed;
- (void)didBecomeVisibleContentScrollView;
- (void)didEndDragSession:(id)session dropOperation:(unint64_t)operation;
- (void)didSetCurrentCardState:(id)state;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)feedController:(id)controller addAlphaOverrideToItem:(id)item alpha:(double)alpha animated:(BOOL)animated duration:(double)duration;
- (void)feedController:(id)controller addObserver:(id)observer forTrigger:(id)trigger;
- (void)feedController:(id)controller collectAndFlush:(BOOL)flush accumulatedImpressionsWithCompletion:(id)completion;
- (void)feedController:(id)controller collectStatsWithCompletion:(id)completion;
- (void)feedController:(id)controller collectVisibleImpressionsWithCompletion:(id)completion;
- (void)feedController:(id)controller didLoadCardResource:(id)resource;
- (void)feedController:(id)controller dismissKeyboard:(id)keyboard;
- (void)feedController:(id)controller removeAlphaOverrideFromItem:(id)item animated:(BOOL)animated duration:(double)duration;
- (void)feedController:(id)controller removeObserver:(id)observer forTrigger:(id)trigger;
- (void)feedController:(id)controller requestToSetNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)feedController:(id)controller scrollToItem:(id)item animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus;
- (void)feedController:(id)controller wantsToCreateNewFeedWithOptions:(id)options completion:(id)completion;
- (void)feedController:(id)controller wantsToDismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)feedController:(id)controller wantsToPerformRawActionModel:(id)model shouldReportFigaro:(BOOL)figaro;
- (void)feedController:(id)controller wantsToPopToRootViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)feedController:(id)controller wantsToPopViewController:(BOOL)viewController completion:(id)completion;
- (void)feedController:(id)controller wantsToPresentCardsWithCardArray:(id)array focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options completion:(id)completion;
- (void)feedController:(id)controller wantsToPresentViewController:(id)viewController animated:(BOOL)animated params:(id)params;
- (void)feedController:(id)controller wantsToPushViewController:(id)viewController animated:(BOOL)animated;
- (void)feedController:(id)controller wantsToReplaceCurrentViewController:(id)viewController animated:(BOOL)animated;
- (void)feedController:(id)controller wantsToSlideInFeedViewController:(id)viewController;
- (void)feedController:(id)controller wantsToUpdateContentWithData:(id)data;
- (void)feedController:(id)val viewStateDidUpdate:fromPreviousState:;
- (void)feedControllerWillHotReload:(id)reload;
- (void)feedViewController:(id)controller customizeEnvironment:(id)environment;
- (void)feedViewController:(id)controller willTransitionToLayoutState:(unint64_t)state;
- (void)feedViewControllerAllContentReady:(id)ready;
- (void)feedViewControllerInitialContentReady:(id)ready;
- (void)hideLoadingViewForFeedController:(id)controller;
- (void)hostedMessageViewDidBecomeVisible:(id)visible;
- (void)hostedMessageViewDidTriggerAction:(id)action;
- (void)hostingController:(id)controller didChangeContentIdentifiers:(id)identifiers;
- (void)loadEntries;
- (void)menuElementsWithData:(id)data completion:(id)completion;
- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l;
- (void)messageViewControllerDidSelectCancel:(id)cancel;
- (void)navigationBarItemsDidUpdate:(id)update hasItems:(BOOL)items;
- (void)observeCardActiveState;
- (void)performDropWithSession:(id)session behavior:(id)behavior;
- (void)preloadAugmentedExperienceContentWithViewController:(id)controller numEntries:(int64_t)entries completion:(id)completion;
- (void)removeEngagementObserver:(id)observer;
- (void)removeProviderForIdentifier:(id)identifier;
- (void)renderSharableImageWithOptions:(id)options completion:(id)completion;
- (void)resetImpressionsForFeedController:(id)controller;
- (void)revealCoverForRepresentedObject:(id)object;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCardContentScrollManager:(id)manager;
- (void)setDistanceFromFocusedCard:(int64_t)card;
- (void)setFeedContentLoadingState:(int64_t)state;
- (void)setFeedLiveResizeOptions:(int64_t)options;
- (void)setLoadPriority:(int64_t)priority;
- (void)setMetadataDelegate:(id)delegate;
- (void)setNavBarBackgroundOpacity:(double)opacity manualScrollEdgeAppearanceEnabled:(BOOL)enabled;
- (void)setPerformantForReadingExperience:(BOOL)experience;
- (void)setPerformantForScrolling:(BOOL)scrolling;
- (void)setTrackerName:(id)name;
- (void)setupAMSEngagementObservers;
- (void)sheetTransitioningCardContentPrepareForOpenWithViewController:(id)controller viewSize:(CGSize)size overrideTraitsBlock:(id)block numEntries:(int64_t)entries completion:(id)completion;
- (void)showLoadingViewForFeedController:(id)controller;
- (void)showPopoverWithViewController:(id)controller params:(id)params;
- (void)suspendAndTeardownForReason:(id)reason;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateNavigationBarOpacity;
- (void)updateRightBarButtonItemsVisibility:(BOOL)visibility;
- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)controller previousTraitCollection:(id)collection;
- (void)viewController:(id)controller didDisplayMessageWithId:(id)id;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BSUIFeedViewController

- (BSUIFeedViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[BSUITemplate manager];
  v6 = +[BSUITemplate factory];
  v43.receiver = self;
  v43.super_class = BSUIFeedViewController;
  v7 = [(BSUIFeedViewController *)&v43 initWithFeedContent:0 manager:v5 factory:v6];

  if (v7)
  {
    objc_opt_class();
    v8 = [optionsCopy objectForKeyedSubscript:@"reading-now-homepage"];
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
    v15 = [optionsCopy objectForKeyedSubscript:@"contextMenuProvider"];
    v16 = BUProtocolCast();
    contextMenuProvider = v7->_contextMenuProvider;
    v7->_contextMenuProvider = v16;

    v18 = [optionsCopy objectForKeyedSubscript:@"contextMenuProvider"];
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
    v23 = [optionsCopy objectForKeyedSubscript:@"isInCard"];
    v24 = BUDynamicCast();
    bOOLValue = [v24 BOOLValue];

    [(BSUIFeedViewController *)v7 setIsInCard:bOOLValue];
    objc_opt_class();
    v26 = [optionsCopy objectForKeyedSubscript:@"respectsSafeArea"];
    v27 = BUDynamicCast();

    if (v27)
    {
      bOOLValue2 = [v27 BOOLValue];
    }

    else
    {
      bOOLValue2 = (bOOLValue ^ 1);
    }

    [(BSUIFeedViewController *)v7 setRespectsSafeArea:bOOLValue2];
    [(BSUIFeedViewController *)v7 _feedMetadataDidUpdate];
    if (bOOLValue)
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
    v31 = [optionsCopy objectForKeyedSubscript:@"deferUIUpdateUntilInitialContentReady"];
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

+ (void)createAsync:(id)async :(id)a4
{
  asyncCopy = async;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_448BC;
  v13[3] = &unk_3887F8;
  v8 = asyncCopy;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  selfCopy = self;
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

+ (void)createAsyncWithNavigationController:(id)controller :(id)a4
{
  controllerCopy = controller;
  v7 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_44EAC;
  v13[3] = &unk_3887F8;
  selfCopy = self;
  v8 = controllerCopy;
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
  isInCard = [(BSUIFeedViewController *)self isInCard];
  if (self)
  {
    v4 = isInCard;
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
  scrollView = [(BSUIFeedViewController *)self scrollView];
  [scrollView setContentInsetAdjustmentBehavior:contentInsetAdjustmentBehavior];

  if (self->_wantsTransparentNavigationBar)
  {
    sub_2BDB98(self);
  }

  if (self->_deferredAdjustBottomContentInset)
  {
    [(BSUIFeedViewController *)self _manuallyAdjustBottomContentInset];
  }

  hostingController = [(BSUIFeedViewController *)self hostingController];
  [hostingController addContentObserver:self];

  [(BSUIFeedViewController *)self setupAMSEngagementObservers];
  [(BSUIFeedViewController *)self loadEntries];
  cardContentScrollManager = [(BSUIFeedViewController *)self cardContentScrollManager];
  scrollView2 = [(BSUIFeedViewController *)self scrollView];
  [cardContentScrollManager cardContentViewController:self initializeManagerWithScrollView:scrollView2];

  scrollView3 = [(BSUIFeedViewController *)self scrollView];
  [scrollView3 bounds];
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

  navigationItem = [(BSUIFeedViewController *)self navigationItem];
  title = [navigationItem title];
  [(BSUIFeedViewController *)self setLastTwoLineTitleFixed:title];

  [(BSUIFeedViewController *)self _feedMetadataDidUpdate];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  if ([(BSUIFeedViewController *)self isInCard:change])
  {
    objc_opt_class();
    navigationController = [(BSUIFeedViewController *)self navigationController];
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

  bcSafeAreaInsetsObserver = [(BSUIFeedViewController *)self bcSafeAreaInsetsObserver];
  view = [(BSUIFeedViewController *)self view];
  [view safeAreaInsets];
  [bcSafeAreaInsetsObserver bcSafeAreaInsetsObservableViewController:self safeAreaInsetsDidChange:?];
}

- (void)updateNavigationBarOpacity
{
  navigationController = [(BSUIFeedViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    v5.receiver = self;
    v5.super_class = BSUIFeedViewController;
    [(BSUIFeedViewController *)&v5 updateNavigationBarOpacity];
  }
}

- (void)setFeedLiveResizeOptions:(int64_t)options
{
  self->_feedLiveResizeOptions = options;
  if (options <= 3)
  {
    [(BSUIFeedViewController *)self setLiveResizeOptions:qword_2E1548[options]];
  }
}

- (id)preferredFocusEnvironments
{
  view = [(BSUIFeedViewController *)self view];
  v5 = view;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)cardSetViewController:(id)controller willUpdateWithNavigationType:(int64_t)type
{
  controllerCopy = controller;
  if (type <= 3)
  {
    v7 = controllerCopy;
    [(BSUIFeedViewController *)self setParentCardNavigationType:off_388CB8[type]];
    controllerCopy = v7;
  }
}

- (void)cardStackViewController:(id)controller parentCardWillDismissWithReason:(int64_t)reason targetViewController:(id)viewController
{
  if (reason > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_388CD8[reason];
  }

  v11 = BUProtocolCast();
  currentFeedViewController = [v11 currentFeedViewController];
  feedController = [currentFeedViewController feedController];
  feed = [feedController feed];

  feedController2 = [(BSUIFeedViewController *)self feedController];
  [feedController2 notifyParentCardWillDismissWithReason:v6 targetFeed:feed];
}

- (void)setMetadataDelegate:(id)delegate
{
  objc_storeWeak(&self->_metadataDelegate, delegate);

  [(BSUIFeedViewController *)self _feedMetadataDidUpdate];
}

- (void)_feedMetadataDidUpdate
{
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  metadata = [jsFeedController metadata];

  v4 = metadata;
  if (metadata)
  {
    metadataDelegate = [(BSUIFeedViewController *)self metadataDelegate];
    [metadataDelegate bsuiFeedViewControllerNavigationBarStyle:{objc_msgSend(metadata, "navigationBarStyle")}];

    trackerName = [metadata trackerName];
    if ([trackerName length])
    {
      [(BSUIFeedViewController *)self setTrackerName:trackerName];
    }

    -[BSUIFeedViewController bc_setNavBarVisible:](self, "bc_setNavBarVisible:", [metadata navigationBarVisible]);
    jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
    isRootFeed = [jsFeedController2 isRootFeed];

    if ((isRootFeed & 1) == 0)
    {
      if ([metadata navigationBarStyle] == &dword_0 + 2)
      {
        [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:&stru_3960F8];
      }

      else
      {
        title = [metadata title];

        if (title)
        {
          title2 = [metadata title];
          [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:title2];
        }
      }
    }

    backTitle = [metadata backTitle];
    v12 = backTitle;
    if (backTitle)
    {
      v13 = 0;
      title3 = backTitle;
    }

    else
    {
      isRootFeed = [metadata title];
      if ([isRootFeed length])
      {
        title3 = [metadata title];
        v13 = 1;
      }

      else
      {
        v13 = 0;
        title3 = 0;
      }
    }

    navigationItem = [(BSUIFeedViewController *)self navigationItem];
    [navigationItem setBackButtonTitle:title3];

    if (v13)
    {
    }

    if (!v12)
    {
    }

    if (_UISolariumEnabled())
    {
      navigationItem2 = [(BSUIFeedViewController *)self navigationItem];
      [navigationItem2 setBackButtonDisplayMode:2];
    }

    navigationItem3 = [(BSUIFeedViewController *)self navigationItem];
    [navigationItem3 _setSupportsTwoLineLargeTitles:1];

    -[BSUIFeedViewController _configureNavigationBarWithStyle:](self, "_configureNavigationBarWithStyle:", [metadata navigationBarStyle]);
    [(BSUIFeedViewController *)self _updateBackgroundColor:1];
    [(BSUIFeedViewController *)self _fixTwoLineLargeTitleLayoutIfNeeded];
    [(BSUIFeedViewController *)self _updateNavigationLayoutMetrics];
    -[BSUIFeedViewController setShowsVerticalScrollIndicator:](self, "setShowsVerticalScrollIndicator:", [metadata showsVerticalScrollIndicator]);

    v4 = metadata;
  }
}

- (void)_manuallyAdjustBottomContentInset
{
  scrollView = [(BSUIFeedViewController *)self scrollView];

  if (scrollView)
  {
    scrollView2 = [(BSUIFeedViewController *)self scrollView];
    [scrollView2 contentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    viewIfLoaded = [(BSUIFeedViewController *)self viewIfLoaded];
    [viewIfLoaded safeAreaInsets];
    v13 = v12;

    scrollView3 = [(BSUIFeedViewController *)self scrollView];
    [scrollView3 setContentInset:{v6, v8, v13, v10}];

    scrollView4 = [(BSUIFeedViewController *)self scrollView];
    [scrollView4 setScrollIndicatorInsets:{v6, v8, v13, v10}];

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  self->_deferredAdjustBottomContentInset = v16;
}

- (void)_configureNavigationBarWithStyle:(unint64_t)style
{
  if ([(BSUIFeedViewController *)self navigationBarStyle]!= style)
  {
    [(BSUIFeedViewController *)self setNavigationBarStyle:style];
    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
    metadata = [jsFeedController metadata];
    navigationBarTintColor = [metadata navigationBarTintColor];

    if (navigationBarTintColor)
    {
      [(BSUIFeedViewController *)self setNavigationBarTintColorWhenLayoutReady:navigationBarTintColor];
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_45C7C;
    v12[3] = &unk_3873D8;
    v12[4] = self;
    v8 = objc_retainBlock(v12);
    v9 = v8;
    switch(style)
    {
      case 2uLL:
        (v8[2])(v8);
LABEL_6:

        return;
      case 4uLL:
        sub_2BDE54(v8, self);
        break;
      case 0uLL:
        selfCopy2 = self;
        v11 = 1;
LABEL_13:
        sub_2BDC90(selfCopy2, v11);
        goto LABEL_6;
    }

    selfCopy2 = self;
    v11 = 2;
    goto LABEL_13;
  }
}

- (int64_t)_resolvedLargeTitleDisplayMode:(int64_t)mode
{
  v5 = _UISolariumEnabled();
  if (mode == 1 && v5)
  {
    if (isPad())
    {
      navigationItem = [(BSUIFeedViewController *)self navigationItem];
      searchController = [navigationItem searchController];

      v8 = isPhone();
      v9 = 3;
      if (!v8)
      {
        v9 = 1;
      }

      if (searchController)
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

  return mode;
}

- (void)_updateNavigationLayoutMetrics
{
  objc_opt_class();
  navigationController = [(BSUIFeedViewController *)self navigationController];
  v4 = BUDynamicCast();

  [v4 updateLayoutMetrics];
}

- (void)_updateBackgroundColor:(BOOL)color
{
  colorCopy = color;
  if ([(BSUIFeedViewController *)self isViewLoaded])
  {
    traitCollection = [(BSUIFeedViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
    metadata = [jsFeedController metadata];
    dayBackgroundColor = [metadata dayBackgroundColor];

    jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
    metadata2 = [jsFeedController2 metadata];
    nightBackgroundColor = [metadata2 nightBackgroundColor];

    if (dayBackgroundColor && nightBackgroundColor)
    {
      v13 = [UIColor bc_dynamicColorWithLightColor:dayBackgroundColor darkColor:nightBackgroundColor];
    }

    else
    {
      if (userInterfaceStyle == &dword_0 + 2 && nightBackgroundColor)
      {
        v14 = nightBackgroundColor;
        goto LABEL_10;
      }

      v13 = dayBackgroundColor;
    }

    v14 = v13;
    if (!v13)
    {
LABEL_14:

      return;
    }

LABEL_10:
    if (colorCopy && (-[BSUIFeedViewController viewIfLoaded](self, "viewIfLoaded"), v15 = objc_claimAutoreleasedReturnValue(), [v15 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
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

- (void)_updateNavigationItemWithTitle:(id)title
{
  titleCopy = title;
  navigationItem = [(BSUIFeedViewController *)self navigationItem];
  title = [navigationItem title];
  v6 = [title isEqualToString:titleCopy];

  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    navigationItem2 = [(BSUIFeedViewController *)self navigationItem];
    v8 = BUDynamicCast();

    [v8 setAllowsTitle:1];
    [v8 setTitle:titleCopy];
    [v8 setAllowsTitle:{objc_msgSend(titleCopy, "length") != 0}];
  }
}

- (void)_fixTwoLineLargeTitleLayoutIfNeeded
{
  navigationItem = [(BSUIFeedViewController *)self navigationItem];
  title = [navigationItem title];
  if (![title length] || objc_msgSend(navigationItem, "largeTitleDisplayMode") == &dword_0 + 2 || objc_msgSend(navigationItem, "_largeTitleTwoLineMode") != &dword_0 + 1)
  {
    goto LABEL_11;
  }

  lastTwoLineTitleFixed = [(BSUIFeedViewController *)self lastTwoLineTitleFixed];
  if (![lastTwoLineTitleFixed length])
  {
    goto LABEL_9;
  }

  lastTwoLineTitleFixed2 = [(BSUIFeedViewController *)self lastTwoLineTitleFixed];
  title2 = [navigationItem title];
  if (![lastTwoLineTitleFixed2 isEqualToString:title2])
  {

LABEL_9:
    goto LABEL_10;
  }

  lastTwoLineTitleFixHadSearchController = [(BSUIFeedViewController *)self lastTwoLineTitleFixHadSearchController];
  searchController = [navigationItem searchController];
  v9 = lastTwoLineTitleFixHadSearchController ^ (searchController != 0);

  if (v9)
  {
LABEL_10:
    title3 = [navigationItem title];
    [(BSUIFeedViewController *)self setLastTwoLineTitleFixed:title3];

    searchController2 = [navigationItem searchController];
    [(BSUIFeedViewController *)self setLastTwoLineTitleFixHadSearchController:searchController2 != 0];

    navigationController = [(BSUIFeedViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v15 = v14;

    navigationController2 = [(BSUIFeedViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 frame];
    v19 = -(v15 + v18);

    scrollView = [(BSUIFeedViewController *)self scrollView];
    [scrollView setContentOffset:{0.0, v19}];

    title = [(BSUIFeedViewController *)self scrollView];
    [title setContentOffset:{0.0, v19}];
LABEL_11:
  }
}

- (void)setNavBarBackgroundOpacity:(double)opacity manualScrollEdgeAppearanceEnabled:(BOOL)enabled
{
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  isRootFeed = [jsFeedController isRootFeed];

  if ((isRootFeed & 1) == 0)
  {
    jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
    metadata = [jsFeedController2 metadata];
    navigationBarStyle = [metadata navigationBarStyle];

    if (navigationBarStyle == &dword_0 + 2)
    {
      if (fabs(opacity) >= 2.22044605e-16)
      {
        jsFeedController3 = [(BSUIFeedViewController *)self jsFeedController];
        metadata2 = [jsFeedController3 metadata];
        title = [metadata2 title];

        if (title)
        {
          jsFeedController4 = [(BSUIFeedViewController *)self jsFeedController];
          metadata3 = [jsFeedController4 metadata];
          title2 = [metadata3 title];
          [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:title2];
        }
      }

      else
      {
        [(BSUIFeedViewController *)self _updateNavigationItemWithTitle:&stru_3960F8];
      }
    }
  }

  self->_hasUberHeaderBehindNavBar = opacity < 1.0;
  jsFeedController5 = [(BSUIFeedViewController *)self jsFeedController];
  metadata4 = [jsFeedController5 metadata];
  navigationBarStyle2 = [metadata4 navigationBarStyle];

  if (navigationBarStyle2 == &dword_0 + 2)
  {
    bsui_hasLargeTitle = &dword_0 + 1;
  }

  else
  {
    bsui_hasLargeTitle = [(BSUIFeedViewController *)self bsui_hasLargeTitle];
  }

  [(BSUIFeedViewController *)self bsui_configureHideSmallTitleOnScroll:bsui_hasLargeTitle];
  traitCollection = [(BSUIFeedViewController *)self traitCollection];
  [(BSUIFeedViewController *)self updateTopScrollEdgeEffectVisibilityWithViewController:self previousTraitCollection:traitCollection];
}

- (void)bsui_configureHideSmallTitleOnScroll:(BOOL)scroll
{
  if (!scroll || ([(BSUIFeedViewController *)self navigationController], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = +[BSUIDefaults disableHideSmallTitleOnScroll], v5, (v6 & 1) != 0))
  {
    navigationItem = [(BSUIFeedViewController *)self navigationItem];
    scrollEdgeAppearance = [navigationItem scrollEdgeAppearance];

    if (scrollEdgeAppearance)
    {
      navigationItem2 = [(BSUIFeedViewController *)self navigationItem];
      [navigationItem2 setScrollEdgeAppearance:0];
    }

    hasUberHeaderBehindNavBar = self->_hasUberHeaderBehindNavBar;
    navigationItem3 = [(BSUIFeedViewController *)self navigationItem];
    standardAppearance = [navigationItem3 standardAppearance];
    _titleControlHidden = [standardAppearance _titleControlHidden];

    if (hasUberHeaderBehindNavBar != _titleControlHidden)
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
    navigationItem4 = [(BSUIFeedViewController *)self navigationItem];
    scrollEdgeAppearance2 = [navigationItem4 scrollEdgeAppearance];

    if (!scrollEdgeAppearance2)
    {
      goto LABEL_14;
    }

    navigationItem5 = [(BSUIFeedViewController *)self navigationItem];
    [navigationItem5 setScrollEdgeAppearance:0];
    goto LABEL_13;
  }

  navigationItem6 = [(BSUIFeedViewController *)self navigationItem];
  scrollEdgeAppearance3 = [navigationItem6 scrollEdgeAppearance];

  if (!scrollEdgeAppearance3)
  {
    navigationController = [(BSUIFeedViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    scrollEdgeAppearance4 = [navigationBar scrollEdgeAppearance];
    v33 = [scrollEdgeAppearance4 copy];
    v34 = v33;
    if (v33)
    {
      navigationItem5 = v33;
    }

    else
    {
      navigationItem7 = [(BSUIFeedViewController *)self navigationItem];
      standardAppearance2 = [navigationItem7 standardAppearance];
      v41 = [standardAppearance2 copy];
      v42 = v41;
      if (v41)
      {
        navigationItem5 = v41;
      }

      else
      {
        navigationController2 = [(BSUIFeedViewController *)self navigationController];
        navigationBar2 = [navigationController2 navigationBar];
        standardAppearance3 = [navigationBar2 standardAppearance];
        navigationItem5 = [standardAppearance3 copy];
      }
    }

    [navigationItem5 _setTitleControlHidden:0];
    navigationItem8 = [(BSUIFeedViewController *)self navigationItem];
    [navigationItem8 setScrollEdgeAppearance:navigationItem5];

LABEL_13:
  }

LABEL_14:
  navigationItem9 = [(BSUIFeedViewController *)self navigationItem];
  standardAppearance4 = [navigationItem9 standardAppearance];
  _titleControlHidden2 = [standardAppearance4 _titleControlHidden];

  if ((_titleControlHidden2 & 1) == 0)
  {
    navigationItem10 = [(BSUIFeedViewController *)self navigationItem];
    standardAppearance5 = [navigationItem10 standardAppearance];
    v26 = [standardAppearance5 copy];
    v27 = v26;
    if (v26)
    {
      v46 = v26;
    }

    else
    {
      navigationController3 = [(BSUIFeedViewController *)self navigationController];
      navigationBar3 = [navigationController3 navigationBar];
      standardAppearance6 = [navigationBar3 standardAppearance];
      v46 = [standardAppearance6 copy];
    }

    [v46 _setTitleControlHidden:1];
    navigationItem11 = [(BSUIFeedViewController *)self navigationItem];
    [navigationItem11 setStandardAppearance:v46];
  }
}

- (UIColor)preferredNavigationBarTintColor
{
  navigationItem = [(BSUIFeedViewController *)self navigationItem];
  _isManualScrollEdgeAppearanceEnabled = [navigationItem _isManualScrollEdgeAppearanceEnabled];

  if (_isManualScrollEdgeAppearanceEnabled)
  {
    navigationItem2 = [(BSUIFeedViewController *)self navigationItem];
    [navigationItem2 _manualScrollEdgeAppearanceProgress];
    if (v6 > 0.5)
    {
      navigationBarTintColor = +[UIColor bc_booksKeyColor];
    }

    else
    {
      jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
      metadata = [jsFeedController metadata];
      navigationBarTintColor = [metadata navigationBarTintColor];
    }
  }

  else
  {
    navigationBarTintColor = +[UIColor bc_booksKeyColor];
  }

  return navigationBarTintColor;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(BSUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
  {
    v5 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      feedId = [(BSUIFeedViewController *)self feedId];
      v30 = 1024;
      performantForScrolling = [(BSUIFeedViewController *)self performantForScrolling];
      v32 = 1024;
      performantForReadingExperience = [(BSUIFeedViewController *)self performantForReadingExperience];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] viewWillAppear skips sync transaction because either Scrolling=%{BOOL}d or ReadingExperience=%{BOOL}d", buf, 0x18u);
    }
  }

  v27.receiver = self;
  v27.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v27 viewWillAppear:appearCopy];
  feedController = [(BSUIFeedViewController *)self feedController];
  [feedController notifyOnAppear];

  if (([(BSUIFeedViewController *)self isBeingPresented]& 1) == 0)
  {
    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
    metadata = [jsFeedController metadata];
    -[BSUIFeedViewController _configureNavigationBarWithStyle:](self, "_configureNavigationBarWithStyle:", [metadata navigationBarStyle]);
  }

  presentedViewController = [(BSUIFeedViewController *)self presentedViewController];
  if (presentedViewController)
  {
    goto LABEL_10;
  }

  navigationController = [(BSUIFeedViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];
  bc_navBarVisible = [(BSUIFeedViewController *)self bc_navBarVisible];

  if (isNavigationBarHidden == bc_navBarVisible)
  {
    presentedViewController = [(BSUIFeedViewController *)self navigationController];
    navigationController2 = [(BSUIFeedViewController *)self navigationController];
    [presentedViewController setNavigationBarHidden:objc_msgSend(navigationController2 animated:{"isNavigationBarHidden") ^ 1, appearCopy}];

LABEL_10:
  }

  if (self->_trackerName)
  {
    ba_analyticsTracker = [(BSUIFeedViewController *)self ba_analyticsTracker];

    if (!ba_analyticsTracker)
    {
      v15 = [(BSUIFeedViewController *)self ba_setupNewAnalyticsTrackerWithName:self->_trackerName];
      [(BSUIFeedViewController *)self _setEffectiveAnalyticsTracker:v15];
    }
  }

  transitionCoordinator = [(BSUIFeedViewController *)self transitionCoordinator];
  isAnimated = [transitionCoordinator isAnimated];

  if (isAnimated)
  {
    transitionCoordinator2 = [(BSUIFeedViewController *)self transitionCoordinator];
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
    [transitionCoordinator2 animateAlongsideTransition:v26 completion:v25];
  }

  v19 = [(BSUIFeedViewController *)self waitForVisibleImageResourcesToLoadAssertionWithTimeout:0 completion:0.2];
  metadataDelegate = [(BSUIFeedViewController *)self metadataDelegate];
  jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
  metadata2 = [jsFeedController2 metadata];
  [metadataDelegate bsuiFeedViewControllerNavigationBarStyle:{objc_msgSend(metadata2, "navigationBarStyle")}];

  if ([(BSUIFeedViewController *)self isInCard])
  {
    objc_opt_class();
    navigationController3 = [(BSUIFeedViewController *)self navigationController];
    v24 = BUDynamicCast();

    if ([v24 isCurrentCard])
    {
      [(BSUIFeedViewController *)self didBecomeVisibleContentScrollView];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v13 viewDidAppear:appear];
  presentingViewController = [(BSUIFeedViewController *)self presentingViewController];
  [(BSUIFeedViewController *)self setIsPresented:presentingViewController != 0];

  feedController = [(BSUIFeedViewController *)self feedController];
  [feedController notifyDidAppear];

  [(BSUIFeedViewController *)self bc_analyticsVisibilityUpdateSubtree];
  if ([(BSUIFeedViewController *)self isPresented])
  {
    navigationController = [(BSUIFeedViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    isHidden = [navigationBar isHidden];

    if ((isHidden & 1) == 0)
    {
      cardStackViewController = [(BSUIFeedViewController *)self cardStackViewController];
      topCardSetViewController = [cardStackViewController topCardSetViewController];
      currentCardViewController = [topCardSetViewController currentCardViewController];

      LODWORD(cardStackViewController) = UIAccessibilityScreenChangedNotification;
      view = [currentCardViewController view];
      UIAccessibilityPostNotification(cardStackViewController, view);
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v9 viewWillDisappear:disappear];
  navigationController = [(BSUIFeedViewController *)self navigationController];
  if ([navigationController isNavigationBarHidden])
  {
    bc_navBarVisible = [(BSUIFeedViewController *)self bc_navBarVisible];

    if (!bc_navBarVisible)
    {
      goto LABEL_5;
    }

    navigationController = [(BSUIFeedViewController *)self navigationController];
    [navigationController setNavigationBarHidden:0 animated:0];
  }

LABEL_5:
  currentPopOverViewController = [(BSUIFeedViewController *)self currentPopOverViewController];

  if (currentPopOverViewController)
  {
    currentPopOverViewController2 = [(BSUIFeedViewController *)self currentPopOverViewController];
    [currentPopOverViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  [(BSUIFeedViewController *)self setIsPresented:0];
  [(BSUIFeedViewController *)self setWasPresentingCards:0];
  feedController = [(BSUIFeedViewController *)self feedController];
  [feedController notifyOnDisappear];

  [(BSUIFeedViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v7 viewDidDisappear:disappear];
  [(BSUIFeedViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
  v4 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    feedId = [(BSUIFeedViewController *)self feedId];
    *buf = 134217984;
    v9 = feedId;
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
      traitCollection = [(BSUIFeedViewController *)self traitCollection];
      if ([traitCollection horizontalSizeClass] == &dword_0 + 1)
      {
LABEL_6:

        goto LABEL_7;
      }

      bsui_hasLargeTitle = [(BSUIFeedViewController *)self bsui_hasLargeTitle];

      if (bsui_hasLargeTitle)
      {
        traitCollection = [(BSUIFeedViewController *)self scrollView];
        [traitCollection _scrollToTopIfPossible:0];
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
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  [jsFeedController notifyAnalyticsVisibilityDidAppear];

  [(BSUIFeedViewController *)self _updateEngagementMessagesToDisplay];
}

- (void)bc_analyticsVisibilityWillDisappear
{
  v4.receiver = self;
  v4.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v4 bc_analyticsVisibilityWillDisappear];
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  [jsFeedController notifyAnalyticsVisibilityWillDisappear];
}

- (void)bc_analyticsVisibilityDidDisappear
{
  v3.receiver = self;
  v3.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v3 bc_analyticsVisibilityDidDisappear];
  [(BSUIFeedViewController *)self updateVisibility];
}

- (void)setPerformantForScrolling:(BOOL)scrolling
{
  if (self->_performantForScrolling != scrolling)
  {
    v12 = v5;
    v13 = v4;
    v14 = v3;
    scrollingCopy = scrolling;
    self->_performantForScrolling = scrolling;
    if (scrolling)
    {
      suspendLayout = [(BSUIFeedViewController *)self suspendLayout];
      [(BSUIFeedViewController *)self setSuspendLayoutForScrolling:suspendLayout];
    }

    else
    {
      [(BSUIFeedViewController *)self setSuspendLayoutForScrolling:0];
    }

    [(BSUIFeedViewController *)self setDisallowLoadingView:scrollingCopy, v6, v12, v13, v14, v7];

    [(BSUIFeedViewController *)self _updateSyncTransactionBehaviorInViewWillAppear];
  }
}

- (void)setPerformantForReadingExperience:(BOOL)experience
{
  if (self->_performantForReadingExperience != experience)
  {
    self->_performantForReadingExperience = experience;
    [(BSUIFeedViewController *)self _updateSyncTransactionBehaviorInViewWillAppear];
  }
}

- (void)didBecomeVisibleContentScrollView
{
  if ([(BSUIFeedViewController *)self isInCard])
  {
    presentingViewController = [(BSUIFeedViewController *)self presentingViewController];
    tabBarController = [presentingViewController tabBarController];

    cardStackViewController = [(BSUIFeedViewController *)self cardStackViewController];
    topCardSetViewController = [cardStackViewController topCardSetViewController];
    currentCardViewController = [topCardSetViewController currentCardViewController];
    expanded = [currentCardViewController expanded];

    if (expanded)
    {
      [tabBarController bc_setPreferredTabBarScrollEdgeAppearance:0];
      selectedViewController = [tabBarController selectedViewController];
      [selectedViewController setContentScrollView:0 forEdge:4];

      selectedViewController2 = [tabBarController selectedViewController];
      scrollView = [(BSUIFeedViewController *)self scrollView];
      [selectedViewController2 setContentScrollView:scrollView forEdge:4];

      goto LABEL_7;
    }

    tabBar = [tabBarController tabBar];
    standardAppearance = [tabBar standardAppearance];
    [tabBarController bc_setPreferredTabBarScrollEdgeAppearance:standardAppearance];
  }

  else
  {
    tabBarController = [(BSUIFeedViewController *)self tabBarController];
    [tabBarController bc_setPreferredTabBarScrollEdgeAppearance:0];
  }

  selectedViewController2 = [tabBarController selectedViewController];
  [selectedViewController2 setContentScrollView:0 forEdge:4];
LABEL_7:
}

- (void)didSetCurrentCardState:(id)state
{
  stateCopy = state;
  presentingViewController = [(BSUIFeedViewController *)self presentingViewController];
  tabBarController = [presentingViewController tabBarController];

  v6 = +[BCCardSetState expandedState];

  if (v6 == stateCopy)
  {
    [tabBarController bc_setPreferredTabBarScrollEdgeAppearance:0];
    selectedViewController = [tabBarController selectedViewController];
    scrollView = [(BSUIFeedViewController *)self scrollView];
    [selectedViewController setContentScrollView:scrollView forEdge:4];
  }

  else
  {
    tabBar = [tabBarController tabBar];
    standardAppearance = [tabBar standardAppearance];
    [tabBarController bc_setPreferredTabBarScrollEdgeAppearance:standardAppearance];

    selectedViewController = [tabBarController selectedViewController];
    [selectedViewController setContentScrollView:0 forEdge:4];
  }
}

- (void)didBecomeCurrentFeed
{
  v3 = BSUIFeedViewControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    feedId = [(BSUIFeedViewController *)self feedId];
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
  selfCopy = self;
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
    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_47B14;
    v9[3] = &unk_388848;
    objc_copyWeak(v10, buf);
    v10[1] = v5;
    [jsFeedController requestEntriesWithCompletion:v9];

    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v17, 8);
}

- (id)_createFeedContentFromDictionaries:(id)dictionaries initialContentReadyEntryIndex:(int64_t)index
{
  dictionariesCopy = dictionaries;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = dictionariesCopy;
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

  currentStackName = [(BSUIFeedViewController *)self currentStackName];
  v17 = [TUIFeedContent feedContentWithEntries:v7 stackName:currentStackName initialContentReadyEntryIndex:index];

  return v17;
}

- (void)_feedContentDidLoad:(id)load signpost:(unint64_t)signpost
{
  loadCopy = load;
  objc_opt_class();
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  options = [jsFeedController options];
  v9 = [options objectForKeyedSubscript:@"isInitialFeed"];
  v10 = BUDynamicCast();
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = +[JSABridge sharedInstance];
    environment = [v12 environment];
    context = [environment context];

    v15 = [context objectForKeyedSubscript:@"App"];
    v16 = [v15 invokeMethod:@"initialContentReadySection" withArguments:0];
    toNumber = [v16 toNumber];

    if (toNumber)
    {
      [toNumber doubleValue];
      v18 = BSUIFeedViewControllerLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        *&buf[4] = [(BSUIFeedViewController *)self feedId];
        *&buf[12] = 2112;
        *&buf[14] = toNumber;
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

      toNumber = &off_39B4D0;
    }

    unsignedIntegerValue = [toNumber unsignedIntegerValue];
  }

  else
  {
    toNumber = 0;
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = [(BSUIFeedViewController *)self _createFeedContentFromDictionaries:loadCopy initialContentReadyEntryIndex:unsignedIntegerValue];
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
  selfCopy = self;
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
    signpostCopy = signpost;
    dispatch_async(&_dispatch_main_q, block);
    v22 = v26;
  }

  else
  {
    [(BSUIFeedViewController *)self setContent:v20];
    v23 = BCSignpostFeedViewController();
    v22 = v23;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, signpost, "Load Entries", "", v24, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)setCardContentScrollManager:(id)manager
{
  managerCopy = manager;
  if (self->_cardContentScrollManager != managerCopy)
  {
    self->_cardContentScrollManager = managerCopy;
    v7 = managerCopy;
    scrollView = [(BSUIFeedViewController *)self scrollView];

    managerCopy = v7;
    if (scrollView)
    {
      scrollView2 = [(BSUIFeedViewController *)self scrollView];
      [(BCCardContentScrollManager *)v7 cardContentViewController:self initializeManagerWithScrollView:scrollView2];

      managerCopy = v7;
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
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_stateLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_stateLock);

  v4 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)setFeedContentLoadingState:(int64_t)state
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_484EC;
  v4[3] = &unk_3888C0;
  v4[4] = self;
  v4[5] = state;
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
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_stateLock);
  v7(v3);
  os_unfair_lock_unlock(&self->_stateLock);

  v4 = objc_retainBlock(v12[5]);
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)setLoadPriority:(int64_t)priority
{
  if (self->_loadPriority != priority)
  {
    self->_loadPriority = priority;
    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
    v5 = __ROR8__(self->_loadPriority + 8, 2);
    LODWORD(v6) = 0.5;
    if (v5 <= 4)
    {
      LODWORD(v6) = dword_2E1568[v5];
    }

    v7 = jsFeedController;
    [jsFeedController setFeedDataRequestPriority:v6];
  }
}

- (void)navigationBarItemsDidUpdate:(id)update hasItems:(BOOL)items
{
  if ([(BSUIFeedViewController *)self _appearState])
  {
    if (items)
    {
      navigationBarVisible = &dword_0 + 1;
    }

    else
    {
      jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
      metadata = [jsFeedController metadata];
      if (metadata)
      {
        jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
        metadata2 = [jsFeedController2 metadata];
        navigationBarVisible = [metadata2 navigationBarVisible];
      }

      else
      {
        navigationBarVisible = &dword_0 + 1;
      }
    }

    [(BSUIFeedViewController *)self bc_setNavBarVisible:navigationBarVisible];
    navigationController = [(BSUIFeedViewController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      jsFeedController3 = [(BSUIFeedViewController *)self jsFeedController];
      metadata3 = [jsFeedController3 metadata];

      if (metadata3)
      {
        scrollView = [(BSUIFeedViewController *)self scrollView];
        [scrollView _verticalVelocity];
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

      navigationController2 = [(BSUIFeedViewController *)self navigationController];
      [navigationController2 bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:v19];

      [(BSUIFeedViewController *)self _fixTwoLineLargeTitleLayoutIfNeeded];
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  presentedViewController = [(BSUIFeedViewController *)self presentedViewController];
  v4 = presentedViewController;
  if (presentedViewController && [presentedViewController conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling])
  {
    supportedInterfaceOrientations = [v4 supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = [(BSUIFeedViewController *)self supportedInterfaceOrientationsForSelf];
  }

  v6 = supportedInterfaceOrientations;

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

- (id)feedEntry:(id)entry requestDataWithPriority:(float)priority block:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  if (blockCopy)
  {
    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];

    if (jsFeedController)
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
        v15 = [entryCopy uid];
        templateURL = [entryCopy templateURL];
        lastPathComponent = [templateURL lastPathComponent];
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = lastPathComponent;
        _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Request Entry Data", "Entry: %{public}@, Template: %{public}@", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v33 = -1;
      objc_initWeak(&location, self);
      jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
      v19 = [entryCopy uid];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_48C5C;
      v21[3] = &unk_388910;
      objc_copyWeak(&v26, &location);
      v24 = &v28;
      v25 = buf;
      v22 = entryCopy;
      v23 = blockCopy;
      [jsFeedController2 requestCompleteDataForEntry:v19 completion:v21];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0);
    }
  }

  return 0;
}

- (BOOL)feedEntry:(id)entry handleBehavior:(id)behavior name:(id)name arguments:(id)arguments
{
  if (!entry || !name)
  {
    return 0;
  }

  argumentsCopy = arguments;
  nameCopy = name;
  entryCopy = entry;
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  v13 = [entryCopy uid];

  LOBYTE(entryCopy) = [jsFeedController executeBehaviorNamed:nameCopy forEntry:v13 withArguments:argumentsCopy];
  return entryCopy;
}

- (id)dragItemForFeedEntry:(id)entry name:(id)name arguments:(id)arguments imageResourceBlock:(id)block
{
  argumentsCopy = arguments;
  objc_opt_class();
  v7 = [argumentsCopy objectForKeyedSubscript:@"item"];

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
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_6;
  }

  v16 = [[BSUIItemDescription alloc] initWithDragInfo:v8];
  objc_opt_class();
  v17 = [v8 objectForKeyedSubscript:@"kind"];
  v18 = BUDynamicCast();
  integerValue = [v18 integerValue];

  v20 = objc_alloc_init(BCAssetDragInfo);
  title = [(BSUIItemDescription *)v16 title];
  [(BSUIItemDescription *)v20 setTitle:title];

  author = [(BSUIItemDescription *)v16 author];
  [(BSUIItemDescription *)v20 setAuthor:author];

  productURL = [(BSUIItemDescription *)v16 productURL];
  [(BSUIItemDescription *)v20 setStoreURL:productURL];

  [(BSUIItemDescription *)v20 setAssetID:v10];
  [(BSUIItemDescription *)v20 setStoreID:v12];
  [(BSUIItemDescription *)v20 setContentType:integerValue];
  objc_opt_class();
  v24 = [v8 objectForKeyedSubscript:@"isSample"];
  v25 = BUDynamicCast();
  -[BSUIItemDescription setIsSample:](v20, "setIsSample:", [v25 BOOLValue]);

LABEL_8:
  contentType = [(BSUIItemDescription *)v20 contentType];
  if (contentType - 2 < 2)
  {
    goto LABEL_16;
  }

  if (contentType != &dword_4 && contentType != (&dword_0 + 1))
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

- (void)performDropWithSession:(id)session behavior:(id)behavior
{
  sessionCopy = session;
  behaviorCopy = behavior;
  v7 = [(BSUIFeedViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BSUIFeedViewControllerDropHandler];
  v8 = v7;
  if (v7)
  {
    [v7 performDropWithSession:sessionCopy behavior:behaviorCopy];
  }
}

- (BOOL)canHandleDropSession:(id)session behavior:(id)behavior
{
  sessionCopy = session;
  behaviorCopy = behavior;
  v8 = [(BSUIFeedViewController *)self im_ancestorViewControllerConformingToProtocol:&OBJC_PROTOCOL___BSUIFeedViewControllerDropHandler];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 canHandleDropSession:sessionCopy behavior:behaviorCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setTrackerName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_498C4;
  v9[3] = &unk_3876C8;
  objc_copyWeak(&v12, &location);
  v5 = nameCopy;
  v10 = v5;
  selfCopy = self;
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
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  feed = [jsFeedController feed];

  return feed;
}

- (void)renderSharableImageWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (optionsCopy)
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

- (id)metricsForFeedController:(id)controller
{
  v4 = objc_opt_new();
  parentCardNavigationType = [(BSUIFeedViewController *)self parentCardNavigationType];

  if (parentCardNavigationType)
  {
    parentCardNavigationType2 = [(BSUIFeedViewController *)self parentCardNavigationType];
    [v4 setObject:parentCardNavigationType2 forKey:@"navigationType"];
  }

  else if ([(BSUIFeedViewController *)self wasPresentingCards])
  {
    [v4 setObject:@"pop" forKey:@"navigationType"];
  }

  return v4;
}

- (id)newAnalyticsSessionAssertionForFeedController:(id)controller
{
  effectiveAnalyticsTracker = [(BSUIFeedViewController *)self effectiveAnalyticsTracker];
  newSessionAssertion = [effectiveAnalyticsTracker newSessionAssertion];

  return newSessionAssertion;
}

- (id)newAnalyticsSessionExtendingAssertionForFeedController:(id)controller
{
  effectiveAnalyticsTracker = [(BSUIFeedViewController *)self effectiveAnalyticsTracker];
  newSessionExtendingAssertion = [effectiveAnalyticsTracker newSessionExtendingAssertion];

  return newSessionExtendingAssertion;
}

- (void)coverAnimationHostUpdateItemVisibility:(BOOL)visibility refId:(id)id refInstance:(id)instance
{
  if (visibility)
  {
    [(BSUIFeedViewController *)self _removeAlphaOverrideFromRefId:id refInstance:instance animated:0 duration:0.0];
  }

  else
  {
    [(BSUIFeedViewController *)self _addAlphaOverrideToRefId:id refInstance:instance alpha:0 animated:0.0 duration:0.0];
  }
}

- (void)_addAlphaOverrideToRefId:(id)id refInstance:(id)instance alpha:(double)alpha animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  idCopy = id;
  instanceCopy = instance;
  v14 = [(BSUIFeedViewController *)self _overrideMatchingRefId:idCopy refInstance:instanceCopy];
  if (!v14)
  {
    if (!self->_activeRenderOverrides)
    {
      v18 = objc_alloc_init(NSMutableSet);
      activeRenderOverrides = self->_activeRenderOverrides;
      self->_activeRenderOverrides = v18;
    }

    v16 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:idCopy refInstance:instanceCopy];
    v15 = [TUIRenderReferenceOverride overrideWithQuery:v16 alpha:alpha];
    [(BSUIFeedViewController *)self addRenderOverride:v15 animated:animatedCopy duration:duration];
    [(NSMutableSet *)self->_activeRenderOverrides addObject:v15];
    v17 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = [NSNumber numberWithDouble:alpha];
      v21 = 138412802;
      v22 = idCopy;
      v23 = 2112;
      v24 = instanceCopy;
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
    v17 = [NSNumber numberWithDouble:alpha];
    v21 = 138412802;
    v22 = idCopy;
    v23 = 2112;
    v24 = instanceCopy;
    v25 = 2112;
    v26 = v17;
    _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "_addAlphaOverride: override exists - refId: %@, refInstance: %@, alpha: %@", &v21, 0x20u);
LABEL_8:
  }
}

- (void)_removeAlphaOverrideFromRefId:(id)id refInstance:(id)instance animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  idCopy = id;
  instanceCopy = instance;
  v12 = [(BSUIFeedViewController *)self _overrideMatchingRefId:idCopy refInstance:instanceCopy];
  if (v12)
  {
    [(BSUIFeedViewController *)self removeRenderOverride:v12 animated:animatedCopy duration:duration];
    [(NSMutableSet *)self->_activeRenderOverrides removeObject:v12];
    v13 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      v15 = idCopy;
      v16 = 2112;
      v17 = instanceCopy;
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

- (id)_overrideMatchingRefId:(id)id refInstance:(id)instance
{
  instanceCopy = instance;
  idCopy = id;
  v8 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:idCopy refInstance:instanceCopy];
  v9 = [(BSUIFeedViewController *)self _overrideMatchingQuery:v8];
  v10 = [idCopy isEqualToString:@"currentBook"];

  if (v10 && !v9)
  {
    v11 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:@"cover" refInstance:instanceCopy];

    v9 = [(BSUIFeedViewController *)self _overrideMatchingQuery:v11];
    v8 = v11;
  }

  return v9;
}

- (id)_overrideMatchingQuery:(id)query
{
  queryCopy = query;
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
  v6 = queryCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)activeRenderOverrides enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)feedControllerIsOnScreen:(id)screen
{
  if (![(BSUIFeedViewController *)self isViewLoaded])
  {
    return 0;
  }

  view = [(BSUIFeedViewController *)self view];
  window = [view window];
  v6 = window != 0;

  return v6;
}

- (void)feedController:(id)controller wantsToCreateNewFeedWithOptions:(id)options completion:(id)completion
{
  controllerCopy = controller;
  optionsCopy = options;
  completionCopy = completion;
  objc_opt_class();
  v10 = [optionsCopy objectForKeyedSubscript:@"useSwiftUI"];
  v11 = BUDynamicCast();
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    objc_opt_class();
    metrics = [controllerCopy metrics];
    v14 = [metrics objectForKeyedSubscript:@"navigationType"];
    v15 = BUDynamicCast();

    objc_opt_class();
    v16 = [optionsCopy objectForKeyedSubscript:@"shouldReportFigaro"];
    v17 = BUDynamicCast();
    bOOLValue2 = [v17 BOOLValue];

    v19 = [BSUINavigationContext alloc];
    presentingViewController = [(BSUIFeedViewController *)self presentingViewController];
    v21 = [(BSUINavigationContext *)v19 initWithIsInModal:presentingViewController != 0];

    ba_effectiveAnalyticsTracker = [(BSUIFeedViewController *)self ba_effectiveAnalyticsTracker];
    [BSUIFeedViewController createSeriesViewControllerFromOptions:optionsCopy withParentTracker:ba_effectiveAnalyticsTracker navigationTypeValue:v15 navigationContext:v21 shouldReportFigaro:bOOLValue2 completion:completionCopy];
  }

  else
  {
    v15 = objc_retainBlock(completionCopy);
    if (!v15)
    {
      goto LABEL_6;
    }

    v21 = [[BSUIFeedViewController alloc] initWithOptions:optionsCopy];
    (v15)[2](v15, v21, 0);
  }

LABEL_6:
}

- (void)feedController:(id)controller wantsToUpdateContentWithData:(id)data
{
  v5 = [(BSUIFeedViewController *)self _createFeedContentFromDictionaries:data initialContentReadyEntryIndex:0x7FFFFFFFFFFFFFFFLL];
  [(BSUIFeedViewController *)self setContent:v5];
}

- (void)feedController:(id)controller wantsToPushViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  navigationController = [(BSUIFeedViewController *)self navigationController];
  [navigationController pushViewController:viewControllerCopy animated:animatedCopy];
}

- (void)feedController:(id)controller wantsToReplaceCurrentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  navigationController = [(BSUIFeedViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v9 = [viewControllers mutableCopy];

  if ([v9 count])
  {
    v10 = [v9 count] - 1;
  }

  else
  {
    v10 = 0;
  }

  [v9 replaceObjectAtIndex:v10 withObject:viewControllerCopy];
  navigationController2 = [(BSUIFeedViewController *)self navigationController];
  [navigationController2 setViewControllers:v9 animated:animatedCopy];
}

- (void)feedController:(id)controller wantsToPresentViewController:(id)viewController animated:(BOOL)animated params:(id)params
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  paramsCopy = params;
  v11 = viewControllerCopy;
  objc_opt_class();
  v12 = [paramsCopy objectForKeyedSubscript:@"noNavigationController"];
  v13 = BUDynamicCast();
  bOOLValue = [v13 BOOLValue];

  v15 = v11;
  if ((bOOLValue & 1) == 0)
  {
    v15 = [[BSUIFeedNavigationController alloc] initWithOptions:paramsCopy];
    v23 = v11;
    v16 = [NSArray arrayWithObjects:&v23 count:1];
    [(BSUINavigationController *)v15 setViewControllers:v16 animated:0];
  }

  v17 = [paramsCopy objectForKeyedSubscript:@"presentationStyle"];

  if (v17)
  {
    objc_opt_class();
    v18 = [paramsCopy objectForKeyedSubscript:@"presentationStyle"];
    v19 = BUDynamicCast();
    -[BSUIFeedNavigationController setModalPresentationStyle:](v15, "setModalPresentationStyle:", [v19 integerValue]);
  }

  v20 = [paramsCopy objectForKeyedSubscript:@"transitionStyle"];

  if (v20)
  {
    objc_opt_class();
    v21 = [paramsCopy objectForKeyedSubscript:@"transitionStyle"];
    v22 = BUDynamicCast();
    -[BSUIFeedNavigationController setModalTransitionStyle:](v15, "setModalTransitionStyle:", [v22 integerValue]);
  }

  [(BSUIFeedViewController *)self presentViewController:v15 animated:animatedCopy completion:0];
}

- (void)feedController:(id)controller wantsToSlideInFeedViewController:(id)viewController
{
  viewControllerCopy = viewController;
  [viewControllerCopy bsui_setPrefersExtraCompactNavBarMargin:1];
  navigationController = [(BSUIFeedViewController *)self navigationController];
  [navigationController pushViewController:viewControllerCopy animated:1];
}

- (void)feedController:(id)controller wantsToPopViewController:(BOOL)viewController completion:(id)completion
{
  viewControllerCopy = viewController;
  completionCopy = completion;
  navigationController = [(BSUIFeedViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v10 = [viewControllers count];

  if (v10 < 2)
  {
    cardStackViewController = [(BSUIFeedViewController *)self cardStackViewController];

    if (cardStackViewController)
    {
      cardStackViewController2 = [(BSUIFeedViewController *)self cardStackViewController];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_4B2EC;
      v23[3] = &unk_3873D8;
      v24 = completionCopy;
      [cardStackViewController2 popAllCardsAnimated:viewControllerCopy completion:v23];

      v15 = v24;
      goto LABEL_6;
    }

    v18 = +[JSABridge sharedInstance];
    v19 = v18;
    v20 = &off_39B630;
    v21 = completionCopy;
    v22 = 1855;
LABEL_9:
    [v18 enqueueValueCall:v21 arguments:v20 file:@"BSUIFeedViewController.m" line:v22];

    goto LABEL_10;
  }

  navigationController2 = [(BSUIFeedViewController *)self navigationController];
  v12 = [navigationController2 popViewControllerAnimated:viewControllerCopy];

  if (!viewControllerCopy)
  {
    v18 = +[JSABridge sharedInstance];
    v19 = v18;
    v20 = &off_39B5E8;
    v21 = completionCopy;
    v22 = 1844;
    goto LABEL_9;
  }

  navigationController3 = [(BSUIFeedViewController *)self navigationController];
  transitionCoordinator = [navigationController3 transitionCoordinator];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4B280;
  v25[3] = &unk_386C80;
  v26 = completionCopy;
  [transitionCoordinator animateAlongsideTransition:0 completion:v25];

  v15 = v26;
LABEL_6:

LABEL_10:
}

- (void)feedController:(id)controller wantsToPopToRootViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v8 = dispatch_group_create();
  objc_opt_class();
  navigationController = [(BSUIFeedViewController *)self navigationController];
  presentedViewController = [navigationController presentedViewController];
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
    [v11 popAllCardsAnimated:animatedCopy prefersCrossfade:1 completion:v26];
  }

  navigationController2 = [(BSUIFeedViewController *)self navigationController];
  viewControllers = [navigationController2 viewControllers];
  v15 = [viewControllers count];

  if (v15 >= 2)
  {
    navigationController3 = [(BSUIFeedViewController *)self navigationController];
    v17 = [navigationController3 popToRootViewControllerAnimated:animatedCopy];

    if (animatedCopy)
    {
      dispatch_group_enter(v8);
      navigationController4 = [(BSUIFeedViewController *)self navigationController];
      transitionCoordinator = [navigationController4 transitionCoordinator];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_4B5E4;
      v24[3] = &unk_386C80;
      v25 = v8;
      [transitionCoordinator animateAlongsideTransition:0 completion:v24];
    }

    v12 = 1;
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_4B5EC;
  v21[3] = &unk_3882B0;
  v22 = completionCopy;
  v23 = v12;
  v20 = completionCopy;
  dispatch_group_notify(v8, &_dispatch_main_q, v21);
}

- (void)feedController:(id)controller wantsToDismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4B764;
  v8[3] = &unk_3873D8;
  completionCopy = completion;
  v7 = completionCopy;
  [(BSUIFeedViewController *)self dismissViewControllerAnimated:animatedCopy completion:v8];
}

- (void)feedController:(id)controller wantsToPresentCardsWithCardArray:(id)array focusedIndex:(unint64_t)index animated:(BOOL)animated options:(id)options completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  optionsCopy = options;
  arrayCopy = array;
  [(BSUIFeedViewController *)self setWasPresentingCards:1];
  [(BSUIFeedViewController *)self presentFeedsInCards:arrayCopy focusedIndex:index animated:animatedCopy options:optionsCopy completion:completionCopy];
}

- (void)feedController:(id)controller didLoadCardResource:(id)resource
{
  resourceCopy = resource;
  cardAuxiliaryNavigationBarManager = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4B928;
  v8[3] = &unk_3889B0;
  v9 = resourceCopy;
  v7 = resourceCopy;
  [cardAuxiliaryNavigationBarManager viewControllerWhenAvailable:v8];
}

- (void)feedController:(id)controller collectAndFlush:(BOOL)flush accumulatedImpressionsWithCompletion:(id)completion
{
  flushCopy = flush;
  completionCopy = completion;
  impressionController = [(BSUIFeedViewController *)self impressionController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4B9F0;
  v10[3] = &unk_3889D8;
  v11 = completionCopy;
  v9 = completionCopy;
  [impressionController collectAndFlush:flushCopy accumulatedImpressionsWithCompletion:v10];
}

- (void)feedController:(id)controller collectVisibleImpressionsWithCompletion:(id)completion
{
  completionCopy = completion;
  impressionController = [(BSUIFeedViewController *)self impressionController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_4BC3C;
  v8[3] = &unk_3889D8;
  v9 = completionCopy;
  v7 = completionCopy;
  [impressionController collectVisibleImpressionsWithCompletion:v8];
}

- (void)resetImpressionsForFeedController:(id)controller
{
  impressionController = [(BSUIFeedViewController *)self impressionController];
  [impressionController reset];
}

- (void)feedController:(id)controller collectStatsWithCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4BEB0;
  v6[3] = &unk_388A00;
  completionCopy = completion;
  v5 = completionCopy;
  [(BSUIFeedViewController *)self collectStatsWithCompletion:v6];
}

- (void)feedController:(id)controller dismissKeyboard:(id)keyboard
{
  v4 = [(BSUIFeedViewController *)self view:controller];
  [v4 endEditing:1];
}

- (void)feedController:(id)controller scrollToItem:(id)item animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus
{
  focusCopy = focus;
  animatedCopy = animated;
  itemCopy = item;
  objc_opt_class();
  v9 = [itemCopy objectForKeyedSubscript:@"refId"];
  v10 = BUDynamicCast();

  objc_opt_class();
  v11 = [itemCopy objectForKeyedSubscript:@"refInstance"];
  v12 = BUDynamicCast();

  objc_opt_class();
  v13 = [itemCopy objectForKeyedSubscript:@"entryID"];
  v14 = BUDynamicCast();

  objc_opt_class();
  v15 = [itemCopy objectForKeyedSubscript:@"entryIndex"];
  v16 = BUDynamicCast();

  selfCopy = self;
  if (v14)
  {
    v38 = v12;
    v34 = animatedCopy;
    v35 = v10;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    content = [(BSUIFeedViewController *)self content];
    entries = [content entries];

    v19 = [entries countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(entries);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [v23 uid];
          v25 = [v24 isEqualToString:v14];

          if (v25)
          {
            v12 = v38;
            v10 = v35;
            [(BSUIFeedViewController *)selfCopy scrollToRefId:v35 refInstance:v38 onEntry:v23 animated:v34 skipVoiceOverFocus:focusCopy];

            goto LABEL_17;
          }
        }

        v20 = [entries countByEnumeratingWithState:&v39 objects:v43 count:16];
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
    integerValue = [v16 integerValue];
    if ((integerValue & 0x8000000000000000) == 0)
    {
      v27 = integerValue;
      [(BSUIFeedViewController *)self content];
      v28 = v38 = v12;
      entries2 = [v28 entries];
      v30 = [entries2 count];

      v12 = v38;
      if (v27 < v30)
      {
        content2 = [(BSUIFeedViewController *)self content];
        entries3 = [content2 entries];
        v33 = [entries3 objectAtIndexedSubscript:v27];
        [(BSUIFeedViewController *)self scrollToRefId:v10 refInstance:v38 onEntry:v33 animated:animatedCopy skipVoiceOverFocus:focusCopy];

LABEL_16:
        v12 = v38;
      }
    }
  }

LABEL_17:
}

- (void)feedControllerWillHotReload:(id)reload
{
  navigationItem = [(BSUIFeedViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];
}

- (void)feedController:(id)controller requestToSetNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  navigationController = [(BSUIFeedViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  navigationItem = [(BSUIFeedViewController *)self navigationItem];
  if (![navigationBar state] && objc_msgSend(navigationBar, "isHidden") != hiddenCopy && (objc_msgSend(navigationItem, "_isManualScrollEdgeAppearanceEnabled") & 1) == 0)
  {
    navigationController2 = [(BSUIFeedViewController *)self navigationController];
    [navigationController2 setNavigationBarHidden:hiddenCopy animated:animatedCopy];
  }
}

- (void)feedController:(id)controller addAlphaOverrideToItem:(id)item alpha:(double)alpha animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  itemCopy = item;
  objc_opt_class();
  v12 = [itemCopy objectForKeyedSubscript:@"refId"];
  v15 = BUDynamicCast();

  objc_opt_class();
  v13 = [itemCopy objectForKeyedSubscript:@"refInstance"];

  v14 = BUDynamicCast();

  if (v15)
  {
    [(BSUIFeedViewController *)self _addAlphaOverrideToRefId:v15 refInstance:v14 alpha:animatedCopy animated:alpha duration:duration];
  }
}

- (void)feedController:(id)controller removeAlphaOverrideFromItem:(id)item animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  itemCopy = item;
  objc_opt_class();
  v10 = [itemCopy objectForKeyedSubscript:@"refId"];
  v13 = BUDynamicCast();

  objc_opt_class();
  v11 = [itemCopy objectForKeyedSubscript:@"refInstance"];

  v12 = BUDynamicCast();

  if (v13)
  {
    [(BSUIFeedViewController *)self _removeAlphaOverrideFromRefId:v13 refInstance:v12 animated:animatedCopy duration:duration];
  }
}

- (void)feedController:(id)controller addObserver:(id)observer forTrigger:(id)trigger
{
  controllerCopy = controller;
  observerCopy = observer;
  triggerCopy = trigger;
  v10 = triggerCopy;
  if (observerCopy)
  {
    if ([triggerCopy length])
    {
      triggerStateManager = [(BSUIFeedViewController *)self triggerStateManager];

      if (triggerStateManager)
      {
        feedTriggerObserver = self->_feedTriggerObserver;
        triggerStateManager2 = [(BSUIFeedViewController *)self triggerStateManager];
        [(BSUIFeedTriggerBlockObserver *)feedTriggerObserver addObserver:observerCopy forTrigger:v10 inStateManager:triggerStateManager2];
      }
    }
  }
}

- (void)feedController:(id)controller removeObserver:(id)observer forTrigger:(id)trigger
{
  controllerCopy = controller;
  observerCopy = observer;
  triggerCopy = trigger;
  v10 = triggerCopy;
  if (observerCopy)
  {
    if ([triggerCopy length])
    {
      triggerStateManager = [(BSUIFeedViewController *)self triggerStateManager];

      if (triggerStateManager)
      {
        feedTriggerObserver = self->_feedTriggerObserver;
        triggerStateManager2 = [(BSUIFeedViewController *)self triggerStateManager];
        [(BSUIFeedTriggerBlockObserver *)feedTriggerObserver removeObserver:observerCopy forTrigger:v10 inStateManager:triggerStateManager2];
      }
    }
  }
}

- (void)feedController:(id)controller wantsToPerformRawActionModel:(id)model shouldReportFigaro:(BOOL)figaro
{
  figaroCopy = figaro;
  modelCopy = model;
  jetActionHandlerInContext = [(BSUIFeedViewController *)self jetActionHandlerInContext];
  ba_effectiveAnalyticsTracker = [(BSUIFeedViewController *)self ba_effectiveAnalyticsTracker];
  [jetActionHandlerInContext performRawActionModel:modelCopy withParentTracker:ba_effectiveAnalyticsTracker shouldReportFigaro:figaroCopy sourceViewController:self completion:&stru_388A40];
}

- (CGRect)getSourceRectFromOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (optionsCopy)
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"popoverAnchorRefId"];

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

- (id)_getBarButtonItemFromOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy && ([optionsCopy objectForKeyedSubscript:@"popoverAnchorRefId"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
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

- (id)getTintColorFromOptions:(id)options
{
  optionsCopy = options;
  objc_opt_class();
  v4 = [optionsCopy objectForKeyedSubscript:@"tintColor"];
  v5 = BUDynamicCast();

  if (v5)
  {
    objc_opt_class();
    v6 = [optionsCopy objectForKeyedSubscript:@"tintColor"];
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

- (void)showPopoverWithViewController:(id)controller params:(id)params
{
  controllerCopy = controller;
  paramsCopy = params;
  v8 = controllerCopy;
  objc_opt_class();
  v9 = [paramsCopy objectForKeyedSubscript:@"noNavigationController"];
  v10 = BUDynamicCast();
  bOOLValue = [v10 BOOLValue];

  v12 = v8;
  if ((bOOLValue & 1) == 0)
  {
    v12 = [[BSUINavigationController alloc] initWithOptions:paramsCopy];
    v42 = v8;
    v13 = [NSArray arrayWithObjects:&v42 count:1];
    [(BSUINavigationController *)v12 setViewControllers:v13 animated:0];
  }

  currentPopOverViewController = [(BSUIFeedViewController *)self currentPopOverViewController];

  if (currentPopOverViewController)
  {
    currentPopOverViewController2 = [(BSUIFeedViewController *)self currentPopOverViewController];
    [currentPopOverViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  view = [(BSUIFeedViewController *)self view];
  if (paramsCopy)
  {
    v17 = [paramsCopy objectForKeyedSubscript:@"arrowDirection"];

    if (v17)
    {
      v18 = [paramsCopy objectForKeyedSubscript:@"arrowDirection"];
      integerValue = [v18 integerValue];
    }

    else
    {
      integerValue = &dword_0 + 1;
    }

    v20 = [paramsCopy objectForKeyedSubscript:@"width"];
    if (v20)
    {
      v21 = v20;
      v22 = [paramsCopy objectForKeyedSubscript:@"height"];

      if (v22)
      {
        objc_opt_class();
        v41 = [paramsCopy objectForKeyedSubscript:@"width"];
        v23 = BUDynamicCast();
        [v23 floatValue];
        v25 = v24;
        objc_opt_class();
        [paramsCopy objectForKeyedSubscript:@"height"];
        v26 = view;
        v27 = integerValue;
        v29 = v28 = v8;
        v30 = BUDynamicCast();
        [v30 floatValue];
        [(BSUINavigationController *)v12 setPreferredContentSize:v25, v31];

        v8 = v28;
        integerValue = v27;
        view = v26;
      }
    }
  }

  else
  {
    integerValue = &dword_0 + 1;
  }

  v32 = [paramsCopy objectForKeyedSubscript:@"presentationStyle"];

  if (v32)
  {
    objc_opt_class();
    traitCollection = [paramsCopy objectForKeyedSubscript:@"presentationStyle"];
    v34 = BUDynamicCast();
    -[BSUINavigationController setModalPresentationStyle:](v12, "setModalPresentationStyle:", [v34 integerValue]);
  }

  else
  {
    traitCollection = [(BSUIFeedViewController *)self traitCollection];
    if ([traitCollection horizontalSizeClass] == &dword_0 + 1)
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
  popoverPresentationController = [(BSUINavigationController *)v12 popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:integerValue];
  v37 = +[UIColor bc_booksBackground];
  [popoverPresentationController setBackgroundColor:v37];

  [popoverPresentationController setSourceView:view];
  traitCollection2 = [(BSUIFeedViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];

  if (horizontalSizeClass == &dword_0 + 2)
  {
    v40 = [(BSUIFeedViewController *)self _getBarButtonItemFromOptions:paramsCopy];
    if (v40)
    {
      [popoverPresentationController setBarButtonItem:v40];
    }

    else
    {
      [(BSUIFeedViewController *)self getSourceRectFromOptions:paramsCopy];
      [popoverPresentationController setSourceRect:?];
    }
  }

  [(BSUIFeedViewController *)self setCurrentPopOverViewController:v12];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v17.receiver = self;
  v17.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v17 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  alertController = [(BSUIFeedViewController *)self alertController];
  [alertController dismiss];

  [(BSUIFeedViewController *)self setAlertController:0];
  currentPopOverViewController = [(BSUIFeedViewController *)self currentPopOverViewController];
  [currentPopOverViewController dismissViewControllerAnimated:0 completion:0];

  [(BSUIFeedViewController *)self setCurrentPopOverViewController:0];
  messageViewControllerProvider = [(BSUIFeedViewController *)self messageViewControllerProvider];
  if (messageViewControllerProvider)
  {
    v8 = messageViewControllerProvider;
    messageViewControllerProvider2 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    viewController = [messageViewControllerProvider2 viewController];

    if (viewController)
    {
      messageViewControllerProvider3 = [(BSUIFeedViewController *)self messageViewControllerProvider];
      viewController2 = [messageViewControllerProvider3 viewController];
      view = [viewController2 view];
      view2 = [(BSUIFeedViewController *)self view];
      [view2 bounds];
      [view sizeThatFits:{v15, v16}];
    }
  }
}

- (BOOL)shouldNotifyScrollViewReachedTheBottom
{
  [(BSUIFeedViewController *)self viewSizeWhenNotifiedBottomReached];
  v4 = v3;
  v6 = v5;
  scrollView = [(BSUIFeedViewController *)self scrollView];
  [scrollView bounds];
  v10 = v6 != v9 || v4 != v8;

  if (v10 || ![(BSUIFeedViewController *)self alreadyNotifiedBottomReached])
  {
    scrollView2 = [(BSUIFeedViewController *)self scrollView];
    [scrollView2 contentOffset];
    v14 = v13;
    scrollView3 = [(BSUIFeedViewController *)self scrollView];
    [scrollView3 bounds];
    v17 = v14 + v16 + 50.0;
    scrollView4 = [(BSUIFeedViewController *)self scrollView];
    [scrollView4 contentSize];
    LODWORD(scrollView5) = v17 > v19;

    if ((scrollView5 & v10) == 1)
    {
      scrollView5 = [(BSUIFeedViewController *)self scrollView];
      [scrollView5 bounds];
      [(BSUIFeedViewController *)self setViewSizeWhenNotifiedBottomReached:v20, v21];

      LOBYTE(scrollView5) = 1;
    }
  }

  else
  {
    LOBYTE(scrollView5) = 0;
  }

  return scrollView5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v10.receiver = self;
  v10.super_class = BSUIFeedViewController;
  scrollCopy = scroll;
  [(BSUIFeedViewController *)&v10 scrollViewDidScroll:scrollCopy];
  [scrollCopy contentOffset];
  v6 = v5;
  [scrollCopy adjustedContentInset];
  v8 = v7;

  [(BSUIFeedViewController *)self updateRightBarButtonItemsVisibility:v6 <= 1.0 - v8];
  if ([(BSUIFeedViewController *)self shouldNotifyScrollViewReachedTheBottom])
  {
    jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
    [jsFeedController notifyScrollViewReachedTheBottom];

    [(BSUIFeedViewController *)self setAlreadyNotifiedBottomReached:1];
  }
}

- (void)updateRightBarButtonItemsVisibility:(BOOL)visibility
{
  if (self->_isHomePage)
  {
    visibilityCopy = visibility;
    navigationItem = [(BSUIFeedViewController *)self navigationItem];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    if ([rightBarButtonItems count])
    {
      navigationItem2 = [(BSUIFeedViewController *)self navigationItem];
      rightBarButtonItems2 = [navigationItem2 rightBarButtonItems];
      firstObject = [rightBarButtonItems2 firstObject];
      isHidden = [firstObject isHidden];

      if (isHidden == visibilityCopy)
      {
        v10 = +[UIViewPropertyAnimator bc_swiftUIDefault];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_4DCC0;
        v12[3] = &unk_3882B0;
        v12[4] = self;
        v13 = visibilityCopy;
        [v10 addAnimations:v12];
        [v10 startAnimation];
      }
    }

    else
    {
    }
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  if (velocity.y < -3.5)
  {
    v6 = [(BSUIFeedViewController *)self navigationController:dragging];
    isNavigationBarHidden = [v6 isNavigationBarHidden];

    if (isNavigationBarHidden)
    {
      navigationController = [(BSUIFeedViewController *)self navigationController];
      [navigationController bc_updateNavBarVisibleWithTransitionCoordinator:0 duration:0.0];
    }
  }
}

- (id)coverAnimationHostSourceForUUID:(id)d uid:(id)uid refId:(id)id refInstance:(id)instance
{
  instanceCopy = instance;
  v11 = [TUIRenderReferenceQuery queryWithUUID:d uid:uid refId:id refInstance:instanceCopy];
  v12 = [BSUICoverAnimatingSource renderReferenceMatchingQuery:v11 inFeedViewController:self];
  if (v12)
  {
    uUID3 = v12;
LABEL_5:
    uUID = [uUID3 UUID];
    v17 = [uUID3 uid];
    refId = [uUID3 refId];
    refInstance = [uUID3 refInstance];
    v14 = [TUIRenderReferenceQuery queryWithUUID:uUID uid:v17 refId:refId refInstance:refInstance];

    uUID2 = [uUID3 UUID];
    v21 = [uUID3 uid];
    refInstance2 = [uUID3 refInstance];
    v23 = [TUIRenderReferenceQuery queryWithUUID:uUID2 uid:v21 refId:@"audiobook-control" refInstance:refInstance2];

    goto LABEL_6;
  }

  v14 = [TUIRenderReferenceQuery queryWithUUID:0 uid:0 refId:@"cover" refInstance:instanceCopy];

  v15 = [BSUICoverAnimatingSource renderReferenceMatchingQuery:v14 inFeedViewController:self];
  if (v15)
  {
    uUID3 = v15;
    v11 = v14;
    goto LABEL_5;
  }

  uUID3 = [v14 UUID];
  uUID2 = [v14 uid];
  v23 = [TUIRenderReferenceQuery queryWithUUID:uUID3 uid:uUID2 refId:@"audiobook-control" refInstance:instanceCopy];
LABEL_6:

  v24 = [[BSUICoverAnimatingSource alloc] initWithFeedViewController:self query:v14 audioBookControlQuery:v23];

  return v24;
}

- (BOOL)coverAnimationHostIsFullyVisible:(id)visible
{
  visibleCopy = visible;
  view = [(BSUIFeedViewController *)self view];
  [visibleCopy coverAnimationSourceFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  coverAnimationSourceReferenceView = [visibleCopy coverAnimationSourceReferenceView];

  [view convertRect:coverAnimationSourceReferenceView fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  view2 = [(BSUIFeedViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
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

- (void)coverAnimationHostScrollToMakeVisible:(id)visible
{
  visibleCopy = visible;
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    query = [v4 query];
    if (query)
    {
      v7 = query;
      [v5 coverAnimationSourceFrame];
      v13.origin.x = CGRectZero.origin.x;
      v13.origin.y = CGRectZero.origin.y;
      v13.size.width = CGRectZero.size.width;
      v13.size.height = CGRectZero.size.height;
      v8 = CGRectEqualToRect(v12, v13);

      if (!v8)
      {
        query2 = [v5 query];
        [(BSUIFeedViewController *)self scrollToItemsMatchingQuery:query2 atScrollPosition:18 animated:0 skipVoiceOverFocus:0];

        [visibleCopy coverAnimationSourceInvalidateFrame];
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
    view = [(BSUIFeedViewController *)self view];
    [view safeAreaInsets];
    v5 = v4;

    if (v5 > 0.0)
    {
      view2 = [(BSUIFeedViewController *)self view];
      v7 = [UIView alloc];
      [view2 frame];
      v8 = [v7 initWithFrame:{0.0, 0.0}];
      popoverArrowBackgroundView = self->_popoverArrowBackgroundView;
      self->_popoverArrowBackgroundView = v8;

      v10 = +[UIColor bc_booksBackground];
      [(UIView *)self->_popoverArrowBackgroundView setBackgroundColor:v10];

      [view2 addSubview:self->_popoverArrowBackgroundView];
    }
  }
}

- (BOOL)coverEffectsNightMode
{
  traitCollection = [(BSUIFeedViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceStyle] == &dword_0 + 2;

  return v3;
}

- (id)_coverSourceQueryForRepresentedObject:(id)object
{
  objectCopy = object;
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
      stringValue = @"cover";
    }

    else
    {
      stringValue = [v16 stringValue];
    }

    v14 = [TUIRenderReferenceQuery queryWithUUID:0 uid:v12 refId:stringValue refInstance:v10];
  }

  return v14;
}

- (id)coverSourceForRepresentedObject:(id)object
{
  objectCopy = object;
  v5 = [(BSUIFeedViewController *)self _coverSourceQueryForRepresentedObject:objectCopy];
  if (v5)
  {
    if ([BSUICardStackTransitioningCoverSource isValidSourceWithFeedViewController:self query:v5])
    {
      objc_opt_class();
      v6 = BUDynamicCast();
      v7 = [v6 objectForKeyedSubscript:@"isInNonHorizontalLayout"];
      bOOLValue = [v7 BOOLValue];

      v9 = [[BSUICardStackTransitioningCoverSource alloc] initWithFeedViewController:self query:v5 isInNonHorizontalLayout:bOOLValue];
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

- (unint64_t)visibilityOfCoverSource:(id)source ignoringYAxis:(BOOL)axis
{
  axisCopy = axis;
  sourceCopy = source;
  view = [(BSUIFeedViewController *)self view];
  [sourceCopy cardStackTransitioningCoverSourceFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cardStackTransitioningCoverSourceReferenceView = [sourceCopy cardStackTransitioningCoverSourceReferenceView];

  [view convertRect:cardStackTransitioningCoverSourceReferenceView fromView:{v9, v11, v13, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  view2 = [(BSUIFeedViewController *)self view];
  [view2 bounds];
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

  v31 = (vabdd_f64(height, v24) >= 0.01) & ~axisCopy;
  if (vabdd_f64(width, v22) >= 0.01)
  {
    return 1;
  }

  else
  {
    return v31;
  }
}

- (void)revealCoverForRepresentedObject:(id)object
{
  v4 = [(BSUIFeedViewController *)self _coverSourceQueryForRepresentedObject:object];
  if (v4)
  {
    [(BSUIFeedViewController *)self scrollToItemsMatchingQuery:v4 atScrollPosition:0 animated:0 skipVoiceOverFocus:0];
  }

  _objc_release_x1();
}

- (BCCardStackTransitioningCoverSource)cardStackTransitioningCardContentCoverSource
{
  objc_opt_class();
  feedController = [(BSUIFeedViewController *)self feedController];
  options = [feedController options];
  v5 = BUDynamicCast();

  v6 = [v5 objectForKeyedSubscript:@"id"];
  objc_opt_class();
  v7 = [v5 objectForKeyedSubscript:@"isInNonHorizontalLayout"];
  v8 = BUDynamicCast();
  bOOLValue = [v8 BOOLValue];

  if (v6)
  {
    content = [(BSUIFeedViewController *)self content];
    entries = [content entries];
    firstObject = [entries firstObject];

    uuid = [firstObject uuid];
    v14 = [TUIRenderReferenceQuery queryWithUUID:uuid uid:0 refId:@"cover" refInstance:v6];
    v15 = [[BSUICardStackTransitioningCoverSource alloc] initWithFeedViewController:self query:v14 isInNonHorizontalLayout:bOOLValue];
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

- (void)cardStackTransitioningCardContentPrepareForOpenWithViewController:(id)controller viewSize:(CGSize)size index:(unint64_t)index completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  controllerCopy = controller;
  v12 = [NSNumber numberWithUnsignedInteger:index];
  [(BSUIFeedViewController *)self setPerformanceIdentifier:v12];

  [(BSUIFeedViewController *)self _prepareForOpenWithViewController:controllerCopy viewSize:0 overrideTraitsBlock:1 numEntries:completionCopy completion:width, height];
}

- (void)_prepareForOpenWithViewController:(id)controller viewSize:(CGSize)size overrideTraitsBlock:(id)block numEntries:(int64_t)entries completion:(id)completion
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  blockCopy = block;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_4EDF8;
  v33[3] = &unk_388AB8;
  objc_copyWeak(v37, &location);
  v16 = controllerCopy;
  v34 = v16;
  v17 = blockCopy;
  v35 = v17;
  v37[1] = *&width;
  v37[2] = *&height;
  v37[3] = entries;
  v18 = completionCopy;
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
  selfCopy = self;
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
    content = [(BSUIFeedViewController *)self content];
    (v19[2])(v19, content);
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

- (id)artworkSourceInEntryWithIndex:(unint64_t)index refId:(id)id refInstance:(id)instance isCover:(BOOL)cover
{
  coverCopy = cover;
  idCopy = id;
  instanceCopy = instance;
  content = [(BSUIFeedViewController *)self content];
  entries = [content entries];

  if ([entries count] <= index)
  {
    v17 = 0;
  }

  else
  {
    v14 = [entries objectAtIndexedSubscript:index];
    uuid = [v14 uuid];
    v16 = [TUIRenderReferenceQuery queryWithUUID:uuid uid:0 refId:idCopy refInstance:instanceCopy];
    v17 = 0;
    if ([BSUISheetTransitioningArtworkSource isValidSourceWithFeedViewController:self query:v16])
    {
      v17 = [[BSUISheetTransitioningArtworkSource alloc] initWithFeedViewController:self query:v16 isCover:coverCopy];
    }
  }

  return v17;
}

- (unint64_t)visibilityOfArtworkSource:(id)source
{
  sourceCopy = source;
  view = [(BSUIFeedViewController *)self view];
  [sourceCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  referenceView = [sourceCopy referenceView];

  [view convertRect:referenceView fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  view2 = [(BSUIFeedViewController *)self view];
  [view2 bounds];
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

- (void)sheetTransitioningCardContentPrepareForOpenWithViewController:(id)controller viewSize:(CGSize)size overrideTraitsBlock:(id)block numEntries:(int64_t)entries completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  blockCopy = block;
  controllerCopy = controller;
  [(BSUIFeedViewController *)self setPerformanceIdentifier:&off_39B4E8];
  self->_openFinalized = 0;
  [(BSUIFeedViewController *)self _prepareForOpenWithViewController:controllerCopy viewSize:blockCopy overrideTraitsBlock:entries numEntries:completionCopy completion:width, height];
}

- (void)preloadAugmentedExperienceContentWithViewController:(id)controller numEntries:(int64_t)entries completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  view = [(BSUIFeedViewController *)self view];
  [view bounds];
  v12 = v11;
  v14 = v13;

  v15 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v42.width = v12;
    v42.height = v14;
    v16 = NSStringFromCGSize(v42);
    *buf = 138413058;
    selfCopy = self;
    v36 = 2112;
    v37 = controllerCopy;
    v38 = 2112;
    v39 = v16;
    v40 = 2048;
    entriesCopy = entries;
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
  v21 = completionCopy;
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
  [(BSUIFeedViewController *)self _prepareForOpenWithViewController:controllerCopy viewSize:0 overrideTraitsBlock:entries numEntries:v28 completion:v12, v14];

  objc_destroyWeak(v30);
  objc_destroyWeak(buf);
}

- (id)accessibilityCardContentSummary
{
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  metadata = [jsFeedController metadata];
  accessibilitySummary = [metadata accessibilitySummary];

  return accessibilitySummary;
}

- (BOOL)shouldOnlyAllowDismiss
{
  contentUnavailableConfiguration = [(BSUIFeedViewController *)self contentUnavailableConfiguration];
  v3 = contentUnavailableConfiguration != 0;

  return v3;
}

- (void)auxiliaryNavigationBarViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  cardAuxiliaryNavigationBarManager = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4FFD0;
  v7[3] = &unk_388BA8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [cardAuxiliaryNavigationBarManager createViewControllerForFeedViewController:self shouldReportFigaro:1 completionHandler:v7];
}

- (void)suspendAndTeardownForReason:(id)reason
{
  reasonCopy = reason;
  cardAuxiliaryNavigationBarManager = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  viewControllerIfAvailable = [cardAuxiliaryNavigationBarManager viewControllerIfAvailable];
  [viewControllerIfAvailable suspendAndTeardown];

  v7.receiver = self;
  v7.super_class = BSUIFeedViewController;
  [(BSUIFeedViewController *)&v7 suspendAndTeardownForReason:reasonCopy];
}

- (id)resumeAndRebuildForReason:(id)reason
{
  v9.receiver = self;
  v9.super_class = BSUIFeedViewController;
  v4 = [(BSUIFeedViewController *)&v9 resumeAndRebuildForReason:reason];
  cardAuxiliaryNavigationBarManager = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  viewControllerIfAvailable = [cardAuxiliaryNavigationBarManager viewControllerIfAvailable];
  triggerStateManager = [(BSUIFeedViewController *)self triggerStateManager];
  [viewControllerIfAvailable resumeAndRebuildWithTriggerStateManager:triggerStateManager];

  return v4;
}

- (void)_customizePresentationUsingViewController:(id)controller environment:(id)environment
{
  controllerCopy = controller;
  environmentCopy = environment;
  if (controllerCopy == self)
  {
    traitCollection = [(BSUIFeedViewController *)self traitCollection];
    bc_userInterfaceStyleDark = [traitCollection bc_userInterfaceStyleDark];
  }

  else
  {
    bc_userInterfaceStyleDark = [environmentCopy style] == &dword_0 + 2;
  }

  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  metadata = [jsFeedController metadata];
  dayBackgroundColor = [metadata dayBackgroundColor];

  jsFeedController2 = [(BSUIFeedViewController *)self jsFeedController];
  metadata2 = [jsFeedController2 metadata];
  nightBackgroundColor = [metadata2 nightBackgroundColor];

  if (dayBackgroundColor && nightBackgroundColor)
  {
    if (bc_userInterfaceStyleDark)
    {
      v15 = nightBackgroundColor;
    }

    else
    {
      v15 = dayBackgroundColor;
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

- (void)feedViewController:(id)controller customizeEnvironment:(id)environment
{
  environmentCopy = environment;
  [(BSUIFeedViewController *)self _customizePresentationUsingViewController:self environment:?];
  jsFeedController = [(BSUIFeedViewController *)self jsFeedController];
  metadata = [jsFeedController metadata];
  ignoreActiveAppearanceEnvironmentUpdate = [metadata ignoreActiveAppearanceEnvironmentUpdate];

  if (ignoreActiveAppearanceEnvironmentUpdate)
  {
    [environmentCopy setActiveAppearance:2];
  }
}

- (UIEdgeInsets)feedViewController:(id)controller contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  cardContentScrollManager = [(BSUIFeedViewController *)self cardContentScrollManager];

  if (cardContentScrollManager)
  {
    cardContentScrollManager2 = [(BSUIFeedViewController *)self cardContentScrollManager];
    [cardContentScrollManager2 cardContentViewController:self contentInsetsForScrollingToRectWithContentInsets:{top, left, bottom, right}];
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

- (void)feedViewController:(id)controller willTransitionToLayoutState:(unint64_t)state
{
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_505A8;
  block[3] = &unk_388BD0;
  objc_copyWeak(v6, &location);
  v6[1] = state;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

- (void)feedViewControllerInitialContentReady:(id)ready
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

  feedController = [(BSUIFeedViewController *)self feedController];
  [feedController notifyInitialContentReady];

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

- (void)feedViewControllerAllContentReady:(id)ready
{
  feedController = [(BSUIFeedViewController *)self feedController];
  [feedController allContentReady];
}

- (BOOL)feedViewControllerIsConsideredVisible:(id)visible
{
  if (![(BSUIFeedViewController *)self bc_analyticsVisibility])
  {
    return 0;
  }

  viewIfLoaded = [(BSUIFeedViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v7 = [windowScene activationState] == 0;

  return v7;
}

- (void)didEndDragSession:(id)session dropOperation:(unint64_t)operation
{
  sessionCopy = session;
  v24.receiver = self;
  v24.super_class = BSUIFeedViewController;
  operationCopy = operation;
  [(BSUIFeedViewController *)&v24 didEndDragSession:sessionCopy dropOperation:operation];
  v7 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  items = [sessionCopy items];
  v9 = [items countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(items);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        localObject = [v13 localObject];
        v15 = BUDynamicCast();

        storeID = [v15 storeID];
        if ([storeID length])
        {
          [v7 addObject:storeID];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [items countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  if (operationCopy - 1 > 2)
  {
    v17 = @"cancel";
  }

  else
  {
    v17 = off_388CF0[operationCopy - 1];
  }

  v18 = objc_opt_new();
  [v18 setObject:JSARecordEventTypeDragAndDrop forKeyedSubscript:JSARecordKeyEventType];
  [v18 setObject:v17 forKeyedSubscript:JSARecordKeyResult];
  [v18 setObject:v7 forKeyedSubscript:JSARecordKeyItems];
  [JSAApplication recordNativeEvent:v18];
}

- (void)hostingController:(id)controller didChangeContentIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  objc_opt_class();
  navigationController = [(BSUIFeedViewController *)self navigationController];
  v7 = BUDynamicCast();

  if (!v7 || [v7 isCurrentCard])
  {
    v8 = +[NSMutableSet set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = identifiersCopy;
    v9 = identifiersCopy;
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
          type = [v14 type];
          v16 = [type isEqualToString:@"message"];

          if (v16)
          {
            identifier = [v14 identifier];
            [v8 addObject:identifier];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v18 _scheduleUpdateEngagementMessagesToDisplay:v8];
    identifiersCopy = v19;
  }
}

- (void)removeProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  hostingController = [(BSUIFeedViewController *)self hostingController];
  [hostingController removeProviderForIdentifier:identifierCopy];
}

- (void)hostedMessageViewDidTriggerAction:(id)action
{
  actionCopy = action;
  feedController = [(BSUIFeedViewController *)self feedController];
  [feedController notifyOnMessageActionTriggered:actionCopy];
}

- (void)hostedMessageViewDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  if ([(BSUIFeedViewController *)self isInCard])
  {
    cardStackViewController = [(BSUIFeedViewController *)self cardStackViewController];
    [cardStackViewController viewController:self didDisplayMessageWithId:visibleCopy];
  }
}

- (void)setupAMSEngagementObservers
{
  v3 = [AMSEngagement alloc];
  v5 = +[BUBag defaultBag];
  v4 = [v3 initWithBag:v5];
  [(BSUIFeedViewController *)self setAmsEngagement:v4];
}

- (void)addEngagementObserver:(id)observer
{
  observerCopy = observer;
  amsEngagement = [(BSUIFeedViewController *)self amsEngagement];
  identifier = [observerCopy identifier];

  [amsEngagement addObserver:self placement:identifier serviceType:@"books"];
}

- (void)removeEngagementObserver:(id)observer
{
  observerCopy = observer;
  amsEngagement = [(BSUIFeedViewController *)self amsEngagement];
  identifier = [observerCopy identifier];

  [amsEngagement removeObserver:self placement:identifier serviceType:@"books"];
}

- (void)_updateEngagementMessagesToDisplay
{
  feedController = [(BSUIFeedViewController *)self feedController];
  metadata = [feedController metadata];
  messagePlacements = [metadata messagePlacements];
  v6 = messagePlacements;
  v7 = &__NSArray0__struct;
  if (messagePlacements)
  {
    v7 = messagePlacements;
  }

  v8 = v7;

  v20 = v8;
  v9 = [NSMutableSet setWithArray:v8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  hostingController = [(BSUIFeedViewController *)self hostingController];
  contentIdentifiers = [hostingController contentIdentifiers];

  v12 = [contentIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(contentIdentifiers);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        type = [v16 type];
        v18 = [type isEqualToString:@"message"];

        if (v18)
        {
          identifier = [v16 identifier];
          [v9 addObject:identifier];
        }
      }

      v13 = [contentIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [(BSUIFeedViewController *)self _scheduleUpdateEngagementMessagesToDisplay:v9];
}

- (void)_scheduleUpdateEngagementMessagesToDisplay:(id)display
{
  displayCopy = display;
  if (self->_deferredEngagementMessageIdentifiers)
  {
    v5 = BSUIFeedViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = displayCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "_scheduleUpdateEngagementMessagesToDisplay: deferring updating engagement messages for: %@", &v6, 0xCu);
    }

    [(NSMutableSet *)self->_deferredEngagementMessageIdentifiers unionSet:displayCopy];
  }

  else
  {
    [(BSUIFeedViewController *)self _updateEngagementMessagesToDisplay:displayCopy];
  }
}

- (void)_updateEngagementMessagesToDisplay:(id)display
{
  displayCopy = display;
  _localIdentifiers = [(BSUIFeedViewController *)self _localIdentifiers];
  if ([_localIdentifiers count])
  {
    v6 = [displayCopy mutableCopy];
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

    [v9 unionSet:_localIdentifiers];
    v10 = [v9 copy];

    displayCopy = v10;
  }

  if ([displayCopy count])
  {
    bc_effectiveEngagementProvider = [(BSUIFeedViewController *)self bc_effectiveEngagementProvider];
    if (bc_effectiveEngagementProvider)
    {
      hostingController = [(BSUIFeedViewController *)self hostingController];
      objc_initWeak(&location, self);
      v13 = BSUIFeedViewControllerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = displayCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "_updateEngagementMessagesToDisplay: fetchDialogRequestsFor: %@", buf, 0xCu);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_51808;
      v15[3] = &unk_388C20;
      objc_copyWeak(&v18, &location);
      v14 = hostingController;
      v16 = v14;
      v17 = _localIdentifiers;
      [bc_effectiveEngagementProvider fetchDialogRequestsFor:displayCopy completion:v15];

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

- (void)_handleEngagementMessageRequest:(id)request forIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  if ([requestCopy style] - 3 <= &dword_0 + 1)
  {
    hostingController = [(BSUIFeedViewController *)self hostingController];
    v9 = [[BSUIHostedMessageViewProvider alloc] initWithRequest:requestCopy identifier:identifierCopy delegate:self];
    [hostingController addProvider:v9 forIdentifier:identifierCopy];

    cardAuxiliaryNavigationBarManager = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_51EF4;
    v11[3] = &unk_388C48;
    v12 = requestCopy;
    v13 = identifierCopy;
    [cardAuxiliaryNavigationBarManager viewControllerWhenAvailable:v11];
  }
}

- (void)_displayBottomBannerForRequest:(id)request
{
  requestCopy = request;
  messageViewControllerProvider = [(BSUIFeedViewController *)self messageViewControllerProvider];

  if (!messageViewControllerProvider)
  {
    v5 = [[BCMessageViewControllerProvider alloc] initWithRequest:requestCopy placement:@"store_page_bottom_banner"];
    [(BSUIFeedViewController *)self setMessageViewControllerProvider:v5];

    messageViewControllerProvider2 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    [messageViewControllerProvider2 setDelegate:self];

    messageViewControllerProvider3 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    viewController = [messageViewControllerProvider3 viewController];
    [(BSUIFeedViewController *)self _displayBottomBanner:viewController animated:1];
  }
}

- (void)_displayBottomBanner:(id)banner animated:(BOOL)animated
{
  animatedCopy = animated;
  bannerCopy = banner;
  view = [(BSUIFeedViewController *)self view];
  view2 = [bannerCopy view];
  layer = [view2 layer];
  [layer setCornerRadius:0.0];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(BSUIFeedViewController *)self view];
  [view3 addSubview:view2];

  v36 = bannerCopy;
  [(BSUIFeedViewController *)self addChildViewController:bannerCopy];
  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

  leadingAnchor = [view2 leadingAnchor];
  layoutMarginsGuide = [view layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v15;
  trailingAnchor = [view2 trailingAnchor];
  v35 = view;
  layoutMarginsGuide2 = [view layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[1] = v19;
  v20 = [NSArray arrayWithObjects:v45 count:2];
  [NSLayoutConstraint activateConstraints:v20];

  if (animatedCopy)
  {
    topAnchor = [view2 topAnchor];
    v22 = v35;
    bottomAnchor3 = [v35 bottomAnchor];
    v24 = [topAnchor constraintEqualToAnchor:bottomAnchor3];

    v44 = v24;
    v25 = [NSArray arrayWithObjects:&v44 count:1];
    [NSLayoutConstraint activateConstraints:v25];

    [view2 layoutIfNeeded];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_52470;
    v39[3] = &unk_387000;
    v40 = view2;
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
      loadPromise = [v30 loadPromise];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_52634;
      v37[3] = &unk_387D88;
      v38 = v28;
      [loadPromise addFinishBlock:v37];
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

- (void)_dismissBanner:(BOOL)banner
{
  bannerCopy = banner;
  messageViewControllerProvider = [(BSUIFeedViewController *)self messageViewControllerProvider];
  viewController = [messageViewControllerProvider viewController];

  view = [viewController view];
  v8 = view;
  if (bannerCopy)
  {
    messageViewControllerProvider2 = [(BSUIFeedViewController *)self messageViewControllerProvider];
    viewController2 = [messageViewControllerProvider2 viewController];
    view2 = [viewController2 view];

    [view2 frame];
    x = v27.origin.x;
    width = v27.size.width;
    height = v27.size.height;
    v15 = CGRectGetHeight(v27) + v27.origin.y;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_5282C;
    v21[3] = &unk_388C70;
    v22 = view2;
    v23 = x;
    v24 = v15;
    v25 = width;
    v26 = height;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_5283C;
    v17[3] = &unk_388C98;
    v18 = v22;
    v19 = viewController;
    selfCopy = self;
    v16 = v22;
    [UIView animateWithDuration:0 delay:v21 options:v17 animations:0.3 completion:0.0];
  }

  else
  {
    [view removeFromSuperview];
    [viewController removeFromParentViewController];
    [(BSUIFeedViewController *)self setMessageViewControllerProvider:0];
  }
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  engagementCopy = engagement;
  requestCopy = request;
  placementCopy = placement;
  typeCopy = type;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_52A44;
  v19[3] = &unk_3876C8;
  objc_copyWeak(&v22, &location);
  v14 = placementCopy;
  v20 = v14;
  v15 = requestCopy;
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

- (void)messageViewController:(id)controller didSelectActionWithURL:(id)l
{
  lCopy = l;
  feedController = [(BSUIFeedViewController *)self feedController];
  absoluteString = [lCopy absoluteString];

  [feedController notifyOnMessageActionTriggered:absoluteString];
}

- (void)messageViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  messageViewControllerProvider = [(BSUIFeedViewController *)self messageViewControllerProvider];

  if (messageViewControllerProvider == cancelCopy)
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

- (void)viewController:(id)controller didDisplayMessageWithId:(id)id
{
  if (controller != self)
  {
    idCopy = id;
    v8 = [[TUIHostingIdentifier alloc] initWithType:@"message" identifier:idCopy];

    hostingController = [(BSUIFeedViewController *)self hostingController];
    [hostingController removeProviderForIdentifier:v8];
  }
}

- (void)setDistanceFromFocusedCard:(int64_t)card
{
  if (self->_distanceFromFocusedCard != card)
  {
    self->_distanceFromFocusedCard = card;
    if (card >= 0)
    {
      cardCopy = card;
    }

    else
    {
      cardCopy = -card;
    }

    if (cardCopy > 2)
    {
      [(BSUIFeedViewController *)self setLoadPriority:-8];
    }

    else
    {
      [(BSUIFeedViewController *)self setLoadPriority:qword_2E1580[cardCopy]];
    }
  }
}

- (id)menuElementsWithData:(id)data
{
  contextMenuProvider = self->_contextMenuProvider;
  v5 = [(BSUIFeedViewController *)self _dataModelWithData:data];
  v6 = [(BSUIContextMenuProviding *)contextMenuProvider menuElementsForViewController:self dataModel:v5];

  return v6;
}

- (void)menuElementsWithData:(id)data completion:(id)completion
{
  asyncContextMenuProvider = self->_asyncContextMenuProvider;
  completionCopy = completion;
  v8 = [(BSUIFeedViewController *)self _dataModelWithData:data];
  [(BSUIAsyncContextMenuProviding *)asyncContextMenuProvider menuElementsWithDataModel:v8 viewController:self completion:completionCopy];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration
{
  self->_contextMenuAppearDate = [NSDate date:interaction];

  _objc_release_x1();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration withData:(id)data
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  dataCopy = data;
  v10 = dataCopy;
  if (self->_contextMenuProvider && [dataCopy count])
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
      ba_effectiveAnalyticsTracker = [(BSUIFeedViewController *)self ba_effectiveAnalyticsTracker];
      [v16 emitContextualActionSheetExposureEventWithTracker:ba_effectiveAnalyticsTracker startDate:v13 propertyProvider:v15];
    }

    v18 = self->_contextMenuAppearDate;
    self->_contextMenuAppearDate = 0;
  }
}

- (id)_dataModelWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v4 = [dataCopy objectForKeyedSubscript:@"assets"];
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
    v8 = sub_53740(v6, dataCopy);
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
    v19 = [dataCopy objectForKeyedSubscript:@"sourceView"];
    v20 = BUDynamicCast();
    v21 = [(BSUIContextActionDataModel *)v17 initWithAssetModel:v18 sourceView:v20];
  }

  else
  {
    v21 = [(BSUIContextActionDataModel *)v16 initWithAssetModels:v7];
  }

  objc_opt_class();
  v22 = [dataCopy objectForKeyedSubscript:@"animateFromRefId"];
  v23 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setPresentationRefID:v23];

  objc_opt_class();
  v24 = [dataCopy objectForKeyedSubscript:@"animateFromRefInstance"];
  v25 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setPresentationRefInstance:v25];

  objc_opt_class();
  v26 = [dataCopy objectForKeyedSubscript:@"entryID"];
  v27 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setPresentationUID:v27];

  objc_opt_class();
  v28 = [dataCopy objectForKeyedSubscript:@"location"];
  v29 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setOriginatingLocation:v29];

  objc_opt_class();
  v30 = [dataCopy objectForKeyedSubscript:@"isAnODPRecommendation"];
  v31 = BUDynamicCast();
  -[BSUIContextActionDataModel setIsAnODPRecommendation:](v21, "setIsAnODPRecommendation:", [v31 BOOLValue]);

  v32 = [dataCopy objectForKeyedSubscript:@"supportsSuggestionContextMenu"];
  if (v32)
  {
    objc_opt_class();
    v33 = [dataCopy objectForKeyedSubscript:@"supportsSuggestionContextMenu"];
    v34 = BUDynamicCast();
    -[BSUIContextActionDataModel setSupportsSuggestionContextMenu:](v21, "setSupportsSuggestionContextMenu:", [v34 BOOLValue]);
  }

  else
  {
    [(BSUIContextActionDataModel *)v21 setSupportsSuggestionContextMenu:[(BSUIContextActionDataModel *)v21 isAnODPRecommendation]];
  }

  objc_opt_class();
  v35 = [dataCopy objectForKeyedSubscript:@"shouldRecordMetrics"];
  v36 = BUDynamicCast();
  -[BSUIContextActionDataModel setShouldReportFigaro:](v21, "setShouldReportFigaro:", [v36 BOOLValue]);

  objc_opt_class();
  v37 = [dataCopy objectForKeyedSubscript:@"sourcePoint"];
  v38 = BUDynamicCast();
  [(BSUIContextActionDataModel *)v21 setSourcePoint:v38];

  v39 = [dataCopy objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v40 = BUProtocolCast();
  [(BSUIContextActionDataModel *)v21 setTransaction:v40];

  if ([(BSUIContextActionDataModel *)v21 isAnODPRecommendation])
  {
    [(BSUIContextActionDataModel *)v21 setODPAnalyticsWithAttributes:dataCopy];
  }

  return v21;
}

- (void)_setEffectiveAnalyticsTracker:(id)tracker
{
  trackerCopy = tracker;
  [(BSUIFeedViewController *)self setEffectiveAnalyticsTracker:trackerCopy];
  cardAuxiliaryNavigationBarManager = [(BSUIFeedViewController *)self cardAuxiliaryNavigationBarManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_53990;
  v7[3] = &unk_3889B0;
  v8 = trackerCopy;
  v6 = trackerCopy;
  [cardAuxiliaryNavigationBarManager viewControllerWhenAvailable:v7];
}

- (CGRect)_frameOfElementWithEntryID:(id)d refId:(id)id refInstance:(id)instance
{
  v6 = [TUIRenderReferenceQuery queryWithUUID:0 uid:d refId:id refInstance:instance];
  v7 = [(BSUIFeedViewController *)self renderReferencesMatchingQuery:v6];
  allKeys = [v7 allKeys];
  firstObject = [allKeys firstObject];

  if (firstObject && ([v7 objectForKeyedSubscript:firstObject], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
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

- (void)_updateViewWithBackgroundColor:(id)color
{
  [(BSUIFeedViewController *)self setFeedBackgroundColor:color];

  [(BSUIFeedViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  if (self->_showLoadingView)
  {
    v7 = +[UIContentUnavailableConfiguration loadingConfiguration];
    viewIfLoaded = [(BSUIFeedViewController *)self viewIfLoaded];
    backgroundColor = [viewIfLoaded backgroundColor];
    background = [v7 background];
    [background setBackgroundColor:backgroundColor];

    [(BSUIFeedViewController *)self setContentUnavailableConfiguration:v7];
  }

  else
  {
    sub_2BE0A8(self);
  }
}

- (UIEdgeInsets)navigationBarMetricsLayoutMargins
{
  feedController = [(BSUIFeedViewController *)self feedController];
  metadata = [feedController metadata];
  [metadata navigationBarLayoutInsets];
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

+ (void)createSeriesViewControllerFromOptions:(NSDictionary *)options withParentTracker:(_TtC13BookAnalytics9BATracker *)tracker navigationTypeValue:(NSString *)value navigationContext:(BSUINavigationContext *)context shouldReportFigaro:(BOOL)figaro completion:(id)completion
{
  v15 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(completion);
  v19 = swift_allocObject();
  *(v19 + 16) = options;
  *(v19 + 24) = tracker;
  *(v19 + 32) = value;
  *(v19 + 40) = context;
  *(v19 + 48) = figaro;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
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
  optionsCopy = options;
  trackerCopy = tracker;
  valueCopy = value;
  contextCopy = context;
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
  selfCopy = self;
  sub_2C5E38();
  swift_unknownObjectRelease();
}

- (void)updateTopScrollEdgeEffectVisibilityWithViewController:(id)controller previousTraitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  _sSo22BSUIFeedViewControllerC11BookStoreUIE35updateTopScrollEdgeEffectVisibility04viewC023previousTraitCollectionyAB_So07UITraitP0CtF_0(controllerCopy);
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

- (void)showLoadingViewForFeedController:(id)controller
{
  if (self)
  {
    sub_545C0(self, 24);
  }
}

- (void)hideLoadingViewForFeedController:(id)controller
{
  if (self)
  {
    sub_545CC(self, 24);
  }
}

@end