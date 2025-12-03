@interface TUIFeedViewController
- (BOOL)_didSizeChangeComparedToEnvironment;
- (BOOL)_handleNativePressAction:(id)action arguments:(id)arguments;
- (BOOL)_shouldDisableLayoutDueToAppBeingBackgrounded;
- (BOOL)canHandleDropSession:(id)session actionObject:(id)object behavior:(id)behavior;
- (BOOL)handleActionForObject:(id)object withName:(id)name arguments:(id)arguments;
- (BOOL)isContentVisible;
- (BOOL)runningInExtension;
- (BOOL)shouldPromoteLargeTitleAccessoryViewButtonsForAccessibility;
- (BOOL)visibilityProviderIsScrolling;
- (BOOL)visibilityProviderIsVisible;
- (CGPoint)contentOffset;
- (CGPoint)savedContentOffset;
- (CGRect)boundsForFeedView;
- (CGRect)screenCoordinatesForFrame:(CGRect)frame;
- (CGRect)visibilityProviderVisibleBounds;
- (CGSize)_viewSize;
- (CGSize)_windowSize;
- (CGSize)savedContentSize;
- (TUIContextMenuConfigurationProviding)contextMenuConfigurationProvider;
- (TUIFeedContent)content;
- (TUIFeedDebugDelegate)debugDelegate;
- (TUIFeedViewController)initWithFeedContent:(id)content manager:(id)manager factory:(id)factory;
- (TUIFeedViewControllerDelegate)delegate;
- (TUIInteractionBuilding)interactionBuilder;
- (UIEdgeInsets)_viewSafeAreaInsets;
- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets;
- (UINavigationBar)hostingNavigationBar;
- (double)availableHeight;
- (id)_captureFeedViewState;
- (id)_effectiveSyncLayoutController;
- (id)_renderModelForIndexPath:(id)path;
- (id)_renderModelForSection:(unint64_t)section;
- (id)dragItemForObject:(id)object withName:(id)name arguments:(id)arguments;
- (id)imageResourcesMatchingQuery:(id)query;
- (id)navigationBarItemMatchingQuery:(id)query;
- (id)renderReferenceOverrideObservers;
- (id)renderReferencesMatchingQuery:(id)query;
- (id)resolveViewWithPath:(id)path;
- (id)resumeAndRebuildForReason:(id)reason;
- (id)suspendLayout;
- (id)suspendUpdates;
- (id)suspendUpdatesUntilContentExceedsHeightWithCompletion:(id)completion;
- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)identifier indexPath:(id)path host:(id)host;
- (id)visibilityProviderHostingLayer;
- (id)visibilityProviderSections;
- (id)visibilityProviderWindowLayer;
- (id)waitForVisibleImageResourcesToLoadAssertionWithTimeout:(double)timeout completion:(id)completion;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_createSyncTransactionIfNeededAnimated:(BOOL)animated duration:(double)duration timingParameters:(id)parameters timeout:(double)timeout isLayingOutFeed:(BOOL)feed ignoreWindow:(BOOL)window flags:(unint64_t)flags;
- (void)_createSyncTransactionWithOptions:(id)options;
- (void)_layoutFeedIgnoringWindow:(BOOL)window;
- (void)_loadFeed;
- (void)_removeTriggerObservationForRenderModel:(id)model;
- (void)_setContentNeedsUpdate;
- (void)_setupControllers;
- (void)_setupFeedView;
- (void)_synchronouslyUpdateContent:(id)content environment:(id)environment andWaitForEntry:(id)entry timeout:(double)timeout assertion:(id)assertion completion:(id)completion;
- (void)_teardownControllers;
- (void)_teardownFeedView;
- (void)_updateDatesCollectorInitialResourcesRenderedDate;
- (void)_updateEnvironment;
- (void)_updateHeightLayoutConditions;
- (void)_updateHostingGeometryMapIfNeededWithTransaction:(id)transaction;
- (void)_updateHostingGeometryMapWithTransaction:(id)transaction;
- (void)_updateLayoutIfNeededIgnoringWindow:(BOOL)window;
- (void)_updateNavigationBarItems;
- (void)_updateNavigationItemTriggerObservanceForCurrentRenderModel:(id)model previous:(id)previous;
- (void)_updatePriority;
- (void)_updateUserInterfaceStyleForNavigationItemBottomPalette;
- (void)_waitForSyncTransaction;
- (void)_waitForSyncTransactionCompletion:(id)completion;
- (void)addRenderOverride:(id)override animated:(BOOL)animated duration:(double)duration;
- (void)applyUpdate:(id)update;
- (void)applyUpdate:(id)update controller:(id)controller completion:(id)completion;
- (void)clearSuspendedViewState;
- (void)clearVisibleOverride;
- (void)dealloc;
- (void)didBeginDraggingView:(id)view;
- (void)didEndDraggingView:(id)view;
- (void)didReceiveMemoryWarning;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)feedLayoutController:(id)controller applyUpdatesFromTransactionGroup:(id)group;
- (void)feedLayoutController:(id)controller axModelSections:(id)sections renderModelCollection:(id)collection renderModelSections:(id)modelSections;
- (void)feedLayoutController:(id)controller didTransitionToLayoutState:(unint64_t)state;
- (void)feedLayoutController:(id)controller updateStats:(id)stats;
- (void)feedLayoutController:(id)controller willTransitionToLayoutState:(unint64_t)state;
- (void)feedLayoutControllerAllContentReady:(id)ready;
- (void)feedLayoutControllerInitialContentReady:(id)ready;
- (void)finalizeSynchronousTransaction:(id)transaction;
- (void)flushPendingTransactionsWithCompletion:(id)completion;
- (void)flushPendingTransactionsWithTimeout:(double)timeout;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
- (void)imagePrefetchControllerDidLoadAllResources:(id)resources;
- (void)imagePrefetchControllerDidStartLoadingInitialResources:(id)resources;
- (void)impressionController:(id)controller didUpdateSnapshot:(id)snapshot;
- (void)notifyWhenVisibleImageResourcesAreLoadedWithTimeout:(double)timeout completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseUpdates;
- (void)performDropWithSession:(id)session actionObject:(id)object behavior:(id)behavior;
- (void)removeRenderOverride:(id)override animated:(BOOL)animated duration:(double)duration;
- (void)reportLargeLayer:(id)layer renderModel:(id)model;
- (void)resumeEnvironmentUpdates;
- (void)resumeUpdates;
- (void)scrollToRefId:(id)id refInstance:(id)instance onEntry:(id)entry animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setContent:(id)content;
- (void)setContentNeedsUpdate;
- (void)setDelegate:(id)delegate;
- (void)setFeedBackgroundColor:(id)color;
- (void)setNavBarBackgroundOpacity:(double)opacity manualScrollEdgeAppearanceEnabled:(BOOL)enabled;
- (void)setNeedsEnvironmentUpdate;
- (void)setPerformanceIdentifier:(id)identifier;
- (void)setRespectsSafeArea:(BOOL)area;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
- (void)suspendAndTeardownForReason:(id)reason;
- (void)suspendUpdatesUntilEndOfTransaction:(id)transaction;
- (void)synchronouslyUpdateContent:(id)content environment:(id)environment andWaitForEntry:(id)entry timeout:(double)timeout;
- (void)tui_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)updateHostingMap:(id)map controller:(id)controller;
- (void)updateNavigationBarOpacity;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewFactoryPrepareToReuseHost:(id)host;
- (void)viewFactoryReuseSubviews:(id)subviews host:(id)host;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)visibleOverrideVisible:(BOOL)visible;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation TUIFeedViewController

- (TUIFeedViewController)initWithFeedContent:(id)content manager:(id)manager factory:(id)factory
{
  contentCopy = content;
  managerCopy = manager;
  factoryCopy = factory;
  v41.receiver = self;
  v41.super_class = TUIFeedViewController;
  v12 = [(TUIFeedViewController *)&v41 initWithNibName:0 bundle:0];
  if (v12)
  {
    *(v12 + 20) = TUIFeedIdentifierGenerate();
    v13 = TUIDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(v12 + 20);
      *buf = 134218242;
      v43 = v14;
      v44 = 2112;
      v45 = v12;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[fid:%lu] created view controller %@", buf, 0x16u);
    }

    *(v12 + 2) = 0;
    objc_storeStrong(v12 + 15, content);
    v12[27] = contentCopy != 0;
    currentStackName = [*(v12 + 15) currentStackName];
    v16 = [currentStackName instanceForObserver:v12];
    v17 = *(v12 + 48);
    *(v12 + 48) = v16;

    *(v12 + 28) = 1061158912;
    *(v12 + 29) = 1048576000;
    v12[106] = 1;
    v12[108] = 1;
    v18 = +[UIColor systemBackgroundColor];
    v19 = *(v12 + 36);
    *(v12 + 36) = v18;

    *(v12 + 38) = 0x3FF0000000000000;
    *(v12 + 37) = 0x3FF0000000000000;
    *(v12 + 40) = 1;
    objc_storeStrong(v12 + 31, manager);
    objc_storeStrong(v12 + 30, factory);
    v20 = [[TUIFeedLayoutController alloc] initWithFeedId:*(v12 + 20) environment:0 factory:*(v12 + 30) manager:managerCopy renderMode:0];
    v21 = *(v12 + 59);
    *(v12 + 59) = v20;

    LODWORD(v22) = *(v12 + 29);
    [*(v12 + 59) setPriority:v22];
    [*(v12 + 59) setDelegate:v12];
    [*(v12 + 59) setActionHandlerDelegate:v12];
    v23 = [[TUIFeedAutoScrollController alloc] initWithDelegate:v12];
    v24 = *(v12 + 51);
    *(v12 + 51) = v23;

    v25 = objc_alloc_init(_TUIFeedViewControllerQueueContext);
    v26 = *(v12 + 52);
    *(v12 + 52) = v25;

    v27 = [[TUIHostingController alloc] initWithFeedId:*(v12 + 20) delegate:v12 viewController:v12 manager:*(v12 + 31)];
    v28 = *(v12 + 22);
    *(v12 + 22) = v27;

    v29 = [TUILinkEntityController alloc];
    v30 = +[TUIVisibilityController sharedQueue];
    v31 = [(TUILinkEntityController *)v29 initWithFeedId:*(v12 + 20) queue:v30 viewResolver:v12];
    v32 = *(v12 + 26);
    *(v12 + 26) = v31;

    *(v12 + 504) = CGSizeZero;
    *(v12 + 488) = CGPointZero;
    [v12 _setupControllers];
    v33 = +[NSUserDefaults standardUserDefaults];
    LODWORD(v30) = [v33 BOOLForKey:@"TUIRecordStats"];

    if (v30)
    {
      [*(v12 + 59) setStatsMode:31];
    }

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v12 selector:"setNeedsEnvironmentUpdate" name:kAXSApplicationAccessibilityEnabledNotification object:0];
    [v34 addObserver:v12 selector:"_applicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v34 addObserver:v12 selector:"setNeedsEnvironmentUpdate" name:NSCurrentLocaleDidChangeNotification object:0];
    v35 = +[NSUserDefaults standardUserDefaults];
    [v35 addObserver:v12 forKeyPath:@"TUIForceFallbackFont" options:0 context:off_2E4400];

    v36 = objc_alloc_init(TUIRenderReferenceOverrideProvider);
    v37 = *(v12 + 21);
    *(v12 + 21) = v36;

    [*(v12 + 21) setDelegate:v12];
    [v12 setContainmentSupport:1];
    v38 = +[UITraitCollection tui_allAPITraits];
    v39 = [v12 registerForTraitChanges:v38 withTarget:v12 action:"tui_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v12;
}

- (void)dealloc
{
  [(TUIFeedViewController *)self _teardownControllers];
  [(TUIFeedView *)self->_feedView teardown];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"TUIForceFallbackFont" context:off_2E4400];

  v5.receiver = self;
  v5.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_2E4400 == context)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_117034;
    v7[3] = &unk_25DE30;
    v7[4] = self;
    TUIDispatchAsyncViaRunLoop(v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUIFeedViewController;
    [(TUIFeedViewController *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_content);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_content, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xDF | v10;
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"TUIRecordStats"];

    if (v12 & 1) == 0 && (objc_opt_respondsToSelector())
    {
      -[TUIFeedView setStatsMode:](self->_feedView, "setStatsMode:", [obj statsModeForFeedViewController:self]);
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [obj feedViewControllerInteractionBuilder:self];
      objc_storeWeak(&self->_interactionBuilder, v13);
    }

    else
    {
      objc_storeWeak(&self->_interactionBuilder, 0);
    }

    v5 = obj;
  }
}

- (TUIInteractionBuilding)interactionBuilder
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionBuilder);

  return WeakRetained;
}

- (TUIFeedViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_content);

  return WeakRetained;
}

- (void)_setupControllers
{
  v3 = [TUIVisibilityController alloc];
  v4 = +[TUIVisibilityController sharedQueue];
  v5 = [(TUIVisibilityController *)v3 initWithRootProvider:self queue:v4];
  embeddedScrollViewCoordinator = self->_embeddedScrollViewCoordinator;
  self->_embeddedScrollViewCoordinator = v5;

  v7 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator newTrackerWithDefaultThreshold:&stru_261EA0 block:0.5];
  auxiliaryViewState = self->_auxiliaryViewState;
  self->_auxiliaryViewState = v7;

  v9 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator newTrackerWithDefaultThreshold:&stru_261EC0 block:0.0];
  impressionTracker = self->_impressionTracker;
  self->_impressionTracker = v9;

  v11 = [TUIImpressionController alloc];
  v12 = self->_auxiliaryViewState;
  v13 = +[TUIVisibilityController sharedQueue];
  v14 = [(TUIImpressionController *)v11 initWithFeedId:self->_visibilityController delegate:self tracker:v12 queue:v13];
  options = self->_options;
  self->_options = v14;

  [(TUIImpressionController *)self->_impressionController attachToTracker:self->_impressionTracker];
  v16 = objc_alloc_init(TUITriggerStateManager);
  dropController = self->_dropController;
  self->_dropController = v16;

  v18 = [TUIImagePrefetchController alloc];
  resourceLoader = [(TUITemplateFactory *)self->_templateFactory resourceLoader];
  v20 = [(TUIImagePrefetchController *)v18 initWithResourceLoader:resourceLoader];
  linkEntityController = self->_linkEntityController;
  self->_linkEntityController = v20;

  [(TUILinkEntityController *)self->_linkEntityController setDelegate:self];
  v22 = objc_alloc_init(TUIDropController);
  imagePrefetchController = self->_imagePrefetchController;
  self->_imagePrefetchController = v22;

  [(TUIImagePrefetchController *)self->_imagePrefetchController setActionHandlerDelegate:self];
  v24 = objc_alloc_init(TUIEmbeddedScrollViewCoordinator);
  pagedScrollableController = self->_pagedScrollableController;
  self->_pagedScrollableController = v24;
}

- (void)_teardownControllers
{
  [(TUIImpressionController *)self->_impressionController detachFromTracker];
  [self->_options teardown];
  options = self->_options;
  self->_options = 0;

  [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator removeTracker:self->_auxiliaryViewState];
  [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator removeTracker:self->_impressionTracker];
  embeddedScrollViewCoordinator = self->_embeddedScrollViewCoordinator;
  self->_embeddedScrollViewCoordinator = 0;

  dropController = self->_dropController;
  self->_dropController = 0;

  [(TUILinkEntityController *)self->_linkEntityController setDelegate:0];
  linkEntityController = self->_linkEntityController;
  self->_linkEntityController = 0;

  [(TUIImagePrefetchController *)self->_imagePrefetchController setActionHandlerDelegate:0];
  imagePrefetchController = self->_imagePrefetchController;
  self->_imagePrefetchController = 0;

  pagedScrollableController = self->_pagedScrollableController;
  self->_pagedScrollableController = 0;
}

- (void)clearVisibleOverride
{
  savedViewState = self->_savedViewState;
  self->_savedViewState = 0;

  [(TUIFeedViewController *)self _updatePriority];
}

- (void)_applicationWillEnterForegroundNotification:(id)notification
{
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)visibleOverrideVisible:(BOOL)visible
{
  v4 = [NSNumber numberWithBool:visible];
  savedViewState = self->_savedViewState;
  self->_savedViewState = v4;

  [(TUIFeedViewController *)self _updatePriority];
}

- (BOOL)isContentVisible
{
  savedViewState = self->_savedViewState;
  if (savedViewState)
  {

    return [(TUIMutableViewState *)savedViewState BOOLValue];
  }

  else
  {
    _appearState = [(TUIFeedViewController *)self _appearState];
    if (_appearState == 1)
    {
      return 1;
    }

    if (_appearState != 2)
    {
      return 0;
    }

    viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    v8 = window != 0;

    return v8;
  }
}

- (UINavigationBar)hostingNavigationBar
{
  navigationController = [(TUIFeedViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  return navigationBar;
}

- (void)_updatePriority
{
  if ([(TUIFeedViewController *)self isContentVisible])
  {
    [(TUIFeedViewController *)self visiblePriority];
  }

  else
  {
    [(TUIFeedViewController *)self hiddenPriority];
  }

  v4 = v3;
  [(TUIFeedView *)self->_feedView setPriority:?];
  linkEntityController = self->_linkEntityController;
  LODWORD(v6) = v4;

  [(TUILinkEntityController *)linkEntityController setPriority:v6];
}

- (void)_updateEnvironment
{
  v3 = [TUIEnvironment alloc];
  [(TUIFeedViewController *)self _viewSize];
  v5 = v4;
  v7 = v6;
  [(TUIFeedViewController *)self _viewSafeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(TUIFeedViewController *)self _windowSize];
  v18 = [(TUIEnvironment *)v3 initWithViewController:self viewSize:v5 viewSafeAreaInsets:v7 windowSize:v9, v11, v13, v15, v16, v17];
  environment = self->_environment;
  self->_environment = v18;

  renderOverrideProvider = self->_renderOverrideProvider;
  traitCollection = [(TUIEnvironment *)self->_environment traitCollection];
  [(TUIRenderReferenceOverrideProvider *)renderOverrideProvider updateTraitCollection:traitCollection];

  WeakRetained = objc_loadWeakRetained(&self->_content);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained feedViewController:self customizeEnvironment:self->_environment];
  }
}

- (void)setNeedsEnvironmentUpdate
{
  self->_environmentNeedsUpdate = 1;
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_setupFeedView
{
  updateController = [(TUIFeedView *)self->_feedView updateController];
  v39 = [updateController registerDelegate:self];

  first = [v39 first];
  v5 = [TUIFeedView alloc];
  view = [(TUIFeedViewController *)self view];
  [view bounds];
  v7 = [(TUIFeedView *)v5 initWithFrame:?];
  syncLayoutController = self->_syncLayoutController;
  self->_syncLayoutController = v7;

  v9 = NAN;
  if (self->_liveResizeOptions == 1)
  {
    v9 = 2.0;
  }

  [(TUISyncLayoutController *)self->_syncLayoutController setContentHeightFactorForScrollingGuess:v9];
  [(TUISyncLayoutController *)self->_syncLayoutController setAutoresizingMask:18];
  [(TUISyncLayoutController *)self->_syncLayoutController setViewFactory:self->_feedContentLayoutStackNameInstance];
  [(TUISyncLayoutController *)self->_syncLayoutController setCurrentViewState:self->_keyboardSupport];
  renderOverrideProvider = self->_renderOverrideProvider;
  second = [v39 second];
  [(TUIRenderReferenceOverrideProvider *)renderOverrideProvider updateHostingMap:second];

  [(TUISyncLayoutController *)self->_syncLayoutController reloadWithRenderModel:first];
  [(TUISyncLayoutController *)self->_syncLayoutController setBackgroundColor:self->_contextMenuConfigurationProvider];
  v12 = self->_syncLayoutController;
  v13 = +[TUIDragController sharedInstance];
  v14 = [v13 dragInteractionWithActionHandlerDelegate:self dragDelegate:self];
  [(TUISyncLayoutController *)v12 addInteraction:v14];

  v15 = self->_syncLayoutController;
  dropInteraction = [(TUIImagePrefetchController *)self->_imagePrefetchController dropInteraction];
  [(TUISyncLayoutController *)v15 addInteraction:dropInteraction];

  [(TUISyncLayoutController *)self->_syncLayoutController setDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setSubviewsDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setRectScrollingDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setScrollingDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setControllerHost:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setAlwaysBounceVertical:1];
  view2 = [(TUIFeedViewController *)self view];
  [view2 addSubview:self->_syncLayoutController];

  [(TUIFeedViewController *)self setContentScrollView:self->_syncLayoutController forEdge:5];
  v18 = [TUIViewVisibilityController alloc];
  view3 = [(TUIFeedViewController *)self view];
  v20 = [(TUIViewVisibilityController *)v18 initWithView:view3 scrollView:self->_syncLayoutController];
  hostingController = self->_hostingController;
  self->_hostingController = v20;

  v22 = objc_alloc_init(TUIPagedScrollableController);
  delegate = self->_delegate;
  self->_delegate = v22;

  auxiliaryUpdateController = [(TUIFeedView *)self->_feedView auxiliaryUpdateController];
  v25 = [auxiliaryUpdateController registerDelegate:self];

  v26 = +[NSUserDefaults standardUserDefaults];
  if ([v26 BOOLForKey:@"TUIEnableDebugMenu"])
  {

LABEL_6:
    v29 = objc_alloc_init(TUIFeedOverlayDebugView);
    queueContext = self->_queueContext;
    self->_queueContext = v29;

    [(_TUIFeedViewControllerQueueContext *)self->_queueContext setDelegate:self];
    [(_TUIFeedViewControllerQueueContext *)self->_queueContext setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_TUIFeedViewControllerQueueContext *)self->_queueContext setAutoresizingMask:18];
    if (_UISolariumEnabled())
    {
      v31 = 0.0;
    }

    else
    {
      v31 = 48.0;
    }

    view4 = [(TUIFeedViewController *)self view];
    [view4 bounds];
    v34 = v33;
    view5 = [(TUIFeedViewController *)self view];
    [view5 bounds];
    [(_TUIFeedViewControllerQueueContext *)self->_queueContext setFrame:0.0, v31, v34];

    view6 = [(TUIFeedViewController *)self view];
    [view6 addSubview:self->_queueContext];

    goto LABEL_10;
  }

  v27 = +[NSUserDefaults standardUserDefaults];
  v28 = [v27 BOOLForKey:@"TUIReportErrors"];

  if (v28)
  {
    goto LABEL_6;
  }

LABEL_10:
  v37 = [[TUIAuxiliaryViewState alloc] initWithSearchControllerDelegate:self hostingController:self->_renderOverrideProvider viewVisibilityController:self->_hostingController];
  overlayDebugView = self->_overlayDebugView;
  self->_overlayDebugView = v37;
}

- (void)_teardownFeedView
{
  [(TUIFeedViewController *)self setContentScrollView:0 forEdge:5];
  overlayDebugView = self->_overlayDebugView;
  self->_overlayDebugView = 0;

  hostingController = self->_hostingController;
  self->_hostingController = 0;

  [(TUISyncLayoutController *)self->_syncLayoutController saveViewStateForVisibleViews];
  currentViewState = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  keyboardSupport = self->_keyboardSupport;
  self->_keyboardSupport = currentViewState;

  [(TUISyncLayoutController *)self->_syncLayoutController removeFromSuperview];
  syncLayoutController = self->_syncLayoutController;
  self->_syncLayoutController = 0;

  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider updateHostingMap:0];
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext removeFromSuperview];
  queueContext = self->_queueContext;
  self->_queueContext = 0;

  delegate = self->_delegate;
  self->_delegate = 0;

  [(TUIDynamicInstance *)self->_feedContentLayoutStackNameInstance clearPool];
  updateController = [(TUIFeedView *)self->_feedView updateController];
  [updateController unregisterDelegate:self];

  auxiliaryUpdateController = [(TUIFeedView *)self->_feedView auxiliaryUpdateController];
  [auxiliaryUpdateController unregisterDelegate:self];
}

- (void)_setContentNeedsUpdate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_contentNeedsUpdate)
  {
    self->_contentNeedsUpdate = 1;

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = *&self->_hiddenPriority;
    self->_contentNeedsUpdate = v3 != 0;
    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      if (+[NSThread isMainThread])
      {
        viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
        [viewIfLoaded setNeedsLayout];
      }

      else
      {
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_118344;
        v5[3] = &unk_25DE30;
        v5[4] = self;
        TUIDispatchAsyncViaRunLoop(v5);
      }
    }
  }
}

- (void)setContentNeedsUpdate
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(TUIFeedViewController *)self _setContentNeedsUpdate];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v17 viewDidLoad];
  +[TUIButtonBox setupSize];
  +[TUIToggleBox setupSize];
  if (!self->_feedContentLayoutStackNameInstance)
  {
    v3 = [TUIViewFactory alloc];
    viewRegistry = [(TUITemplateFactory *)self->_templateFactory viewRegistry];
    v5 = [(TUIViewFactory *)v3 initWithRegistry:viewRegistry];
    feedContentLayoutStackNameInstance = self->_feedContentLayoutStackNameInstance;
    self->_feedContentLayoutStackNameInstance = v5;
  }

  if (!self->_environment)
  {
    parentViewController = [(TUIFeedViewController *)self parentViewController];
    if (parentViewController)
    {
      v13 = *(&self->_flags + 2);

      if (v13 == 1)
      {
        self->_environmentNeedsUpdate = 1;
        view = [(TUIFeedViewController *)self view];
        [view setNeedsLayout];
      }
    }
  }

  if (self->_environmentNeedsUpdate || self->_environment)
  {
    [(TUIFeedViewController *)self _setContentNeedsUpdate];
  }

  v7 = +[UIColor systemBackgroundColor];
  view2 = [(TUIFeedViewController *)self view];
  [view2 setBackgroundColor:v7];

  suspendedViewState = [(TUIFeedViewController *)self suspendedViewState];

  if (suspendedViewState)
  {
    v10 = [(TUIFeedViewController *)self resumeAndRebuildForReason:@"view loaded"];
  }

  else
  {
    [(TUIFeedViewController *)self _setupFeedView];
  }

  LODWORD(v11) = *&self->_suspendedDueToMemoryPressure;
  [(TUIFeedView *)self->_feedView setPriority:v11];
  navigationController = [(TUIFeedViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v6 didReceiveMemoryWarning];
  _appearState = [(TUIFeedViewController *)self _appearState];
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  if (window || _appearState == 1)
  {
  }

  else
  {

    if (_appearState != 2)
    {
      [(TUIFeedViewController *)self suspendAndTeardownForReason:@"memory pressure: view not in window & VC is not appearing nor appeared"];
      [(TUIFeedViewController *)self setSuspendedDueToMemoryPressure:1];
    }
  }
}

- (id)_captureFeedViewState
{
  v3 = objc_alloc_init(TUIMutableFeedViewState);
  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  v5 = v4;
  v7 = v6;
  renderModel = [(TUISyncLayoutController *)self->_syncLayoutController renderModel];
  anchorSet = [renderModel anchorSet];
  v10 = [anchorSet scrollAnchorWithScrollView:self->_syncLayoutController offset:{v5, v7}];
  [(TUIFeedViewState *)v3 setFeedScrollAnchor:v10];

  return v3;
}

- (BOOL)_didSizeChangeComparedToEnvironment
{
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    environment = self->_environment;
    if (environment)
    {
      [(TUIEnvironment *)environment viewSize];
      width = v5;
      height = v7;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }

    [(TUIFeedViewController *)self _viewSize];
    v11 = v10;
    v13 = v12;
    v14 = self->_environment;
    if (v14)
    {
      [(TUIEnvironment *)v14 viewSafeAreaInsets];
      top = v15;
      left = v17;
      bottom = v19;
      right = v21;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
    }

    [(TUIFeedViewController *)self _viewSafeAreaInsets];
    v27 = self->_environment;
    v29 = width != v11 || v27 == 0;
    v30 = left != v24;
    if (top != v23)
    {
      v30 = 1;
    }

    if (right != v26)
    {
      v30 = 1;
    }

    if (bottom != v25)
    {
      v30 = 1;
    }

    if (v27)
    {
      v31 = v30;
    }

    else
    {
      v31 = 1;
    }

    if (v29)
    {
      v9 = 1;
    }

    else
    {
      v32 = (self->_viewVisibilityController & 1) == 0;
      if (height == v13)
      {
        v32 = 0;
      }

      v9 = v32 | v31;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)viewWillLayoutSubviews
{
  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider beginLayout];
  [(TUIFeedViewController *)self _updateHeightLayoutConditions];
  _didSizeChangeComparedToEnvironment = [(TUIFeedViewController *)self _didSizeChangeComparedToEnvironment];
  if (!self->_auxiliaryRenderModel && ![(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
  {
    content = [(TUIFeedViewController *)self content];
    if (content)
    {
      needUpdate = self->_pendingViewAppearingTransition.needUpdate;

      if (needUpdate)
      {
        [TUIFeedViewController _createSyncTransactionIfNeededAnimated:"_createSyncTransactionIfNeededAnimated:duration:timingParameters:timeout:isLayingOutFeed:ignoreWindow:flags:" duration:self->_pendingViewAppearingTransition.duration > 0.0 timingParameters:0 timeout:0 isLayingOutFeed:1 ignoreWindow:4 flags:?];
      }
    }
  }

  self->_pendingViewAppearingTransition.needUpdate = 0;
  if (_didSizeChangeComparedToEnvironment)
  {
    viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    if (window || self->_auxiliaryRenderModel || +[UIView areAnimationsEnabled])
    {
    }

    else
    {
      avoidSyncTransactionInViewWillAppear = [(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear];

      if ((avoidSyncTransactionInViewWillAppear & 1) == 0)
      {
        [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:1 timeout:1 isLayingOutFeed:4 ignoreWindow:0.0 flags:self->_viewTransitionSyncTimeoutDuration];
      }
    }

    content2 = [(TUIFeedViewController *)self content];
    if (content2)
    {
      v9 = content2;
      viewIfLoaded2 = [(TUIFeedViewController *)self viewIfLoaded];
      window2 = [viewIfLoaded2 window];
      v12 = window2;
      if (window2 && !self->_auxiliaryRenderModel)
      {
        +[UIView inheritedAnimationDuration];
        v23 = v22;

        if (v23 == 0.0)
        {
          self->_needsVisibleStateUpdate = 1;
          [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:1 timeout:0 isLayingOutFeed:4 ignoreWindow:0.0 flags:*&self->_feedBackgroundColor];
        }
      }

      else
      {
      }
    }
  }

  if (self->_auxiliaryRenderModel || (*&self->_flags & 1) != 0 || (self->_environment == 0) | _didSizeChangeComparedToEnvironment & 1)
  {
    v13 = TUILayoutLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      visibilityController = self->_visibilityController;
      v15 = self->_auxiliaryRenderModel != 0;
      v16 = *&self->_flags & 1;
      v17 = self->_environment != 0;
      feedView = self->_feedView;
      *buf = 134219266;
      v27 = visibilityController;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      v34 = 2048;
      v35 = _didSizeChangeComparedToEnvironment;
      v36 = 2112;
      v37 = feedView;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[fid:%lu] viewWillLayoutSubviews start sync layout: wasSync=%ld, force=%ld, hasEnv=%ld, changedSize=%ld, FeedLayoutController=%@", buf, 0x3Eu);
    }

    [(TUIFeedViewController *)self _layoutFeedIgnoringWindow:self->_auxiliaryRenderModel != 0];
  }

  else
  {
    v19 = TUILayoutLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_visibilityController;
      v21 = self->_feedView;
      *buf = 134218242;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[fid:%lu] viewWillLayoutSubviews start async layout: FeedLayoutController=%@", buf, 0x16u);
    }

    [(TUIFeedViewController *)self layoutIfNeeded];
  }

  *&self->_flags &= ~1u;
  v25.receiver = self;
  v25.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v25 viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  if (self->_needsVisibleStateUpdate)
  {
    [(TUISyncLayoutController *)self->_syncLayoutController restoreViewStateForVisibleViews];
    self->_needsVisibleStateUpdate = 0;
  }

  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider endLayout];
  [(TUIHostingController *)self->_hostingController updateView];
  [(TUIHostingController *)self->_hostingController updatePopoverLayout];
  v3.receiver = self;
  v3.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v3 viewDidLayoutSubviews];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v12 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  self->_needsVisibleStateUpdate = 1;
  [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
  ++self->_pendingCoordinatedTransition.needUpdate;
  [coordinatorCopy transitionDuration];
  self->_pendingCoordinatedTransition.duration = v7;
  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    timingParameters = [coordinatorCopy timingParameters];
  }

  else
  {
    timingParameters = 0;
  }

  objc_storeStrong(&self->_pendingCoordinatedTransitionTimingProvider, timingParameters);
  if (v8)
  {
  }

  imageResourceCache = [(TUITemplateFactory *)self->_templateFactory imageResourceCache];
  [imageResourceCache deferLoadsBegin];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_118E84;
  v11[3] = &unk_261E20;
  v11[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v11];
}

- (void)tui_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  self->_needsVisibleStateUpdate = 1;
  [(TUIFeedViewController *)self _updateUserInterfaceStyleForNavigationItemBottomPalette:change];

  [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
}

- (void)_createSyncTransactionWithOptions:(id)options
{
  if (!self->_auxiliaryRenderModel)
  {
    v4 = [TUITransaction transactionWithOptions:options];
    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    self->_auxiliaryRenderModel = v4;

    _captureFeedViewState = [(TUIFeedViewController *)self _captureFeedViewState];
    suspendedViewState = self->_suspendedViewState;
    self->_suspendedViewState = _captureFeedViewState;

    transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
    [transactionCoordinator scheduleSyncTransaction:self->_auxiliaryRenderModel];
  }
}

- (void)_createSyncTransactionIfNeededAnimated:(BOOL)animated duration:(double)duration timingParameters:(id)parameters timeout:(double)timeout isLayingOutFeed:(BOOL)feed ignoreWindow:(BOOL)window flags:(unint64_t)flags
{
  animatedCopy = animated;
  parametersCopy = parameters;
  if (!self->_auxiliaryRenderModel)
  {
    if (window || (-[TUIFeedViewController viewIfLoaded](self, "viewIfLoaded"), v17 = objc_claimAutoreleasedReturnValue(), [v17 window], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      v19 = objc_alloc_init(TUIMutableTransactionOptions);
      [(TUITransactionOptions *)v19 setAnimate:animatedCopy];
      [(TUITransactionOptions *)v19 setDuration:duration];
      [(TUITransactionOptions *)v19 setSyncTimeout:timeout];
      [(TUITransactionOptions *)v19 setFlags:flags];
      [(TUITransactionOptions *)v19 setTimingProvider:parametersCopy];
      v20 = [TUITransaction transactionWithOptions:v19];
      auxiliaryRenderModel = self->_auxiliaryRenderModel;
      self->_auxiliaryRenderModel = v20;

      _captureFeedViewState = [(TUIFeedViewController *)self _captureFeedViewState];
      suspendedViewState = self->_suspendedViewState;
      self->_suspendedViewState = _captureFeedViewState;

      transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
      [transactionCoordinator scheduleSyncTransaction:self->_auxiliaryRenderModel];

      if (!feed)
      {
        view = [(TUIFeedViewController *)self view];
        [view setNeedsLayout];
      }

      v26 = TUITransactionLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        visibilityController = self->_visibilityController;
        v28 = [(TUIRenderModelAuxiliary *)self->_auxiliaryRenderModel tx];
        v29 = 134218242;
        v30 = visibilityController;
        v31 = 2114;
        v32 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "[fid:%lu] _createSyncTransactionIfNeededAnimated:... syncTransaction=%{public}@", &v29, 0x16u);
      }
    }
  }
}

- (void)feedLayoutController:(id)controller applyUpdatesFromTransactionGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy flags])
  {
    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider beginViewUpdates];
    [groupCopy applyUpdates];
    view = [(TUIFeedViewController *)self view];
    [view layoutIfNeeded];

    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider endViewUpdatesNotifyDelegate:0];
    if ([(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider geometryUpdatedFlag])
    {
      [groupCopy addNotifyWhenAppliedDeferral];
      options = [groupCopy options];
      [(TUIFeedViewController *)self _createSyncTransactionWithOptions:options];

      [(TUIFeedViewController *)self _updateHostingGeometryMapWithTransaction:self->_auxiliaryRenderModel];
      v8 = self->_auxiliaryRenderModel;
      auxiliaryRenderModel = self->_auxiliaryRenderModel;
      self->_auxiliaryRenderModel = 0;

      [(TUIRenderModelAuxiliary *)v8 commit];
      v10 = TUITransactionLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        visibilityController = self->_visibilityController;
        v12 = [(TUIRenderModelAuxiliary *)v8 tx];
        *buf = 134218242;
        v29 = visibilityController;
        v30 = 2112;
        v31 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[fid:%lu] scheduled sync transaction for hosting geometry update: %@", buf, 0x16u);
      }

      _effectiveSyncLayoutController = [(TUIFeedViewController *)self _effectiveSyncLayoutController];
      options2 = [(TUIRenderModelAuxiliary *)v8 options];
      [options2 syncTimeout];
      v16 = v15;
      v17 = [(TUIRenderModelAuxiliary *)v8 tx];
      v18 = [_effectiveSyncLayoutController syncAssertionWithTimeout:v17 transaction:self->_visibilityController feedId:v16];

      v19 = [(TUIRenderModelAuxiliary *)v8 tx];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_119540;
      v26[3] = &unk_25DE30;
      v27 = groupCopy;
      [v19 notifyWhenAppliedWithBlock:v26];
      transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_119548;
      v23[3] = &unk_25E7C0;
      v23[4] = self;
      v24 = v8;
      v25 = v18;
      v21 = v18;
      v22 = v8;
      [transactionCoordinator waitForSyncTransaction:v22 completion:v23];
    }
  }

  else
  {
    [groupCopy applyUpdates];
  }
}

- (void)_waitForSyncTransactionCompletion:(id)completion
{
  completionCopy = completion;
  auxiliaryRenderModel = self->_auxiliaryRenderModel;
  if (auxiliaryRenderModel)
  {
    self->_auxiliaryRenderModel = 0;
    v8 = completionCopy;
    v6 = auxiliaryRenderModel;

    [(TUIRenderModelAuxiliary *)v6 commit];
    transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
    [transactionCoordinator waitForSyncTransaction:v6 completion:v8];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v8 = completionCopy;
    completionCopy[2]();
  }

  completionCopy = v8;
LABEL_6:
}

- (void)_waitForSyncTransaction
{
  auxiliaryRenderModel = self->_auxiliaryRenderModel;
  if (auxiliaryRenderModel)
  {
    v4 = auxiliaryRenderModel;
    v5 = self->_auxiliaryRenderModel;
    self->_auxiliaryRenderModel = 0;

    [(TUIRenderModelAuxiliary *)v4 commit];
    _effectiveSyncLayoutController = [(TUIFeedViewController *)self _effectiveSyncLayoutController];
    options = [(TUIRenderModelAuxiliary *)v4 options];
    [options syncTimeout];
    v9 = v8;
    v10 = [(TUIRenderModelAuxiliary *)v4 tx];
    v11 = [_effectiveSyncLayoutController syncAssertionWithTimeout:v10 transaction:self->_visibilityController feedId:v9];

    transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_11987C;
    v16[3] = &unk_25E7C0;
    v16[4] = self;
    v17 = v4;
    v18 = v11;
    v13 = v11;
    v14 = v4;
    [transactionCoordinator waitForSyncTransaction:v14 completion:v16];

    suspendedViewState = self->_suspendedViewState;
    self->_suspendedViewState = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v14.receiver = self;
  v14.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_needsVisibleStateUpdate = 1;
  ++self->_pendingCoordinatedTransition.needUpdate;
  [coordinatorCopy transitionDuration];
  self->_pendingCoordinatedTransition.duration = v8;
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    timingParameters = [coordinatorCopy timingParameters];
  }

  else
  {
    timingParameters = 0;
  }

  objc_storeStrong(&self->_pendingCoordinatedTransitionTimingProvider, timingParameters);
  if (v9)
  {
  }

  imageResourceCache = [(TUITemplateFactory *)self->_templateFactory imageResourceCache];
  [imageResourceCache deferLoadsBegin];

  v12[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_119B18;
  v13[3] = &unk_261E20;
  v13[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_119C90;
  v12[3] = &unk_261E20;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v10 viewWillAppear:appear];
  if (![(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
  {
    content = [(TUIFeedViewController *)self content];

    if (content)
    {
      self->_pendingViewAppearingTransition.needUpdate = 1;
      +[UIView inheritedAnimationDuration];
      self->_pendingViewAppearingTransition.duration = v5;
    }
  }

  [(TUIFeedViewController *)self _updatePriority];
  heightGuessForScrollingOption = self->_heightGuessForScrollingOption;
  if (!heightGuessForScrollingOption)
  {
    v7 = [[TUIKeyboardAvoidingSupport alloc] initWithViewController:self];
    v8 = self->_heightGuessForScrollingOption;
    self->_heightGuessForScrollingOption = v7;

    heightGuessForScrollingOption = self->_heightGuessForScrollingOption;
  }

  [heightGuessForScrollingOption registerForNotifications];
  [self->_heightGuessForScrollingOption setViewIsDisappearing:0];
  v9 = [(TUIFeedViewController *)self resumeAndRebuildForReason:@"view appearing"];
  [(TUIFeedViewController *)self setSuspendedDueToMemoryPressure:0];
  [(TUIFeedView *)self->_feedView statRecordViewWillAppear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v12 viewDidAppear:appear];
  self->_pendingViewAppearingTransition.needUpdate = 0;
  [(TUIFeedViewController *)self _updatePriority];
  [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator updateVisible];
  if ([(TUIFeedViewController *)self suspendedDueToMemoryPressure])
  {
    v4 = [(TUIFeedViewController *)self resumeAndRebuildForReason:@"view appeared: recovering from suspend caused by memory pressure"];
    [(TUIFeedViewController *)self setSuspendedDueToMemoryPressure:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_content);
  navigationItem = [(TUIFeedViewController *)self navigationItem];
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained feedViewControllerNavigationBarItem:self];

    navigationItem = v7;
  }

  [(TUIFeedOverlayDebugView *)self->_overlayDebugView configureSearchControllerIfNeededForNavigationItem:navigationItem];
  [(TUIFeedViewController *)self _updateUserInterfaceStyleForNavigationItemBottomPalette];
  anchorSet = [(TUIFeedView *)self->_feedView anchorSet];
  if (anchorSet)
  {
    dropController = self->_dropController;
    scrollView = [(TUIFeedViewController *)self scrollView];
    v11 = [anchorSet computeTriggerStatesInScrollView:scrollView axis:2];
    [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v11 updateEvent:0];
  }

  self->_showsVerticalScrollIndicator = 0;
}

- (void)_updateUserInterfaceStyleForNavigationItemBottomPalette
{
  traitCollection = [(TUIFeedViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  navigationItem = [(TUIFeedViewController *)self navigationItem];
  _bottomPalette = [navigationItem _bottomPalette];
  contentView = [_bottomPalette contentView];
  traitOverrides = [contentView traitOverrides];
  [traitOverrides setUserInterfaceStyle:userInterfaceStyle];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [self->_heightGuessForScrollingOption setViewIsDisappearing:1];
  [self->_heightGuessForScrollingOption unregisterForNotifications];
  v5.receiver = self;
  v5.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v5 viewWillDisappear:disappearCopy];
  [(TUIFeedViewController *)self _updatePriority];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v8 viewDidDisappear:disappear];
  [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator updateVisible];
  [(TUIFeedViewController *)self _updatePriority];
  [(NSHashTable *)self->_heightLayoutConditions invalidatePendingScrolls];
  anchorSet = [(TUIFeedView *)self->_feedView anchorSet];
  v5 = anchorSet;
  if (anchorSet)
  {
    dropController = self->_dropController;
    v7 = [anchorSet feedNotVisibleTriggerStatesForAxis:2];
    [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v7 updateEvent:1];
  }

  self->_showsVerticalScrollIndicator = 1;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
  }
}

- (TUIFeedContent)content
{
  os_unfair_lock_lock(&self->_lock);
  v3 = *&self->_hiddenPriority;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  os_unfair_lock_lock(&self->_lock);
  v5 = *&self->_hiddenPriority;
  os_unfair_lock_unlock(&self->_lock);
  if (([v5 isEqual:contentCopy] & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_hiddenPriority, content);
    currentStackName = [*&self->_hiddenPriority currentStackName];
    v7 = [currentStackName instanceForObserver:self];
    restoreViewState = self->_restoreViewState;
    self->_restoreViewState = v7;

    os_unfair_lock_unlock(&self->_lock);
    [(TUIFeedViewController *)self _setContentNeedsUpdate];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  if ([(TUISyncLayoutController *)self->_syncLayoutController showsVerticalScrollIndicator]!= indicator)
  {
    *(&self->_flags + 3) = indicatorCopy;
    syncLayoutController = self->_syncLayoutController;

    [(TUISyncLayoutController *)syncLayoutController setShowsVerticalScrollIndicator:indicatorCopy];
  }
}

- (void)setRespectsSafeArea:(BOOL)area
{
  if (self->_avoidSyncTransactionInViewWillAppear != area)
  {
    self->_avoidSyncTransactionInViewWillAppear = area;
    if (self->_environment)
    {
      [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
    }
  }
}

- (void)setFeedBackgroundColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  contextMenuConfigurationProvider = self->_contextMenuConfigurationProvider;
  self->_contextMenuConfigurationProvider = v4;

  [(TUISyncLayoutController *)self->_syncLayoutController setBackgroundColor:colorCopy];
}

- (void)synchronouslyUpdateContent:(id)content environment:(id)environment andWaitForEntry:(id)entry timeout:(double)timeout
{
  entryCopy = entry;
  environmentCopy = environment;
  contentCopy = content;
  _effectiveSyncLayoutController = [(TUIFeedViewController *)self _effectiveSyncLayoutController];
  v14 = [_effectiveSyncLayoutController syncAssertionWithTimeout:0 transaction:self->_visibilityController feedId:timeout];

  [(TUIFeedViewController *)self _synchronouslyUpdateContent:contentCopy environment:environmentCopy andWaitForEntry:entryCopy timeout:v14 assertion:0 completion:timeout];
}

- (void)_synchronouslyUpdateContent:(id)content environment:(id)environment andWaitForEntry:(id)entry timeout:(double)timeout assertion:(id)assertion completion:(id)completion
{
  contentCopy = content;
  environmentCopy = environment;
  assertionCopy = assertion;
  completionCopy = completion;
  v18 = *&self->_hiddenPriority;
  *&self->_hiddenPriority = 0;
  entryCopy = entry;

  [(TUIFeedViewController *)self loadViewIfNeeded];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_hiddenPriority, content);
  currentStackName = [*&self->_hiddenPriority currentStackName];
  v21 = [currentStackName instanceForObserver:self];
  restoreViewState = self->_restoreViewState;
  self->_restoreViewState = v21;

  self->_contentNeedsUpdate = 0;
  os_unfair_lock_unlock(&self->_lock);
  auxiliaryRenderModel = self->_auxiliaryRenderModel;
  if (!auxiliaryRenderModel)
  {
    [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:0 timeout:1 isLayingOutFeed:0 ignoreWindow:0.0 flags:timeout];
    auxiliaryRenderModel = self->_auxiliaryRenderModel;
  }

  v24 = auxiliaryRenderModel;
  v25 = TUITransactionLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    visibilityController = self->_visibilityController;
    v27 = [(TUIRenderModelAuxiliary *)self->_auxiliaryRenderModel tx];
    *buf = 134218242;
    v39 = visibilityController;
    v40 = 2114;
    v41 = v27;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "[fid:%lu] _synchronouslyUpdateContent:... syncTransaction=%{public}@", buf, 0x16u);
  }

  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider reset];
  if (environmentCopy)
  {
    objc_storeStrong(&self->_environment, environment);
  }

  else
  {
    [(TUIFeedViewController *)self _updateEnvironment];
  }

  [(TUIFeedView *)self->_feedView updateWithContent:contentCopy layoutUpToEntry:entryCopy environment:self->_environment transaction:v24];

  if (assertionCopy | completionCopy)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_11A8DC;
    v35[3] = &unk_25EA78;
    v36 = assertionCopy;
    v37 = completionCopy;
    v28 = objc_retainBlock(v35);
    v29 = [(TUIRenderModelAuxiliary *)v24 tx];
    v30 = v29;
    if (v29)
    {
      [v29 notifyWhenAppliedWithBlock:v28];
    }

    else
    {
      (v28[2])(v28);
    }
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_11A930;
  v33[3] = &unk_25DCA0;
  v33[4] = self;
  v34 = v24;
  v31 = v24;
  [(TUIFeedViewController *)self _waitForSyncTransactionCompletion:v33];
}

- (void)finalizeSynchronousTransaction:(id)transaction
{
  if (transaction)
  {
    feedView = self->_feedView;
    transactionCopy = transaction;
    transactionCoordinator = [(TUIFeedView *)feedView transactionCoordinator];
    [transactionCoordinator finalizeSyncTransaction:transactionCopy];

    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    self->_auxiliaryRenderModel = 0;

    suspendedViewState = self->_suspendedViewState;
    self->_suspendedViewState = 0;
  }
}

- (void)_updateLayoutIfNeededIgnoringWindow:(BOOL)window
{
  if (!self->_pauseEnvironmentUpdates && self->_environment && [(TUIFeedViewController *)self _didSizeChangeComparedToEnvironment])
  {
    self->_environmentNeedsUpdate = 1;
  }

  _shouldDisableLayoutDueToAppBeingBackgrounded = [(TUIFeedViewController *)self _shouldDisableLayoutDueToAppBeingBackgrounded];
  if (self->_environmentNeedsUpdate && !self->_pauseEnvironmentUpdates)
  {
    if (_shouldDisableLayoutDueToAppBeingBackgrounded)
    {
      goto LABEL_11;
    }

    if (window || (-[TUIFeedViewController viewIfLoaded](self, "viewIfLoaded"), v31 = objc_claimAutoreleasedReturnValue(), [v31 window], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v32))
    {
      self->_environmentNeedsUpdate = 0;
      [(TUIFeedViewController *)self _updateEnvironment];
      _captureFeedViewState = self->_suspendedViewState;
      if (!_captureFeedViewState)
      {
        traitCollection = [(TUIFeedViewController *)self traitCollection];
        tui_feedProxyScrollView = [traitCollection tui_feedProxyScrollView];
        syncLayoutController = tui_feedProxyScrollView;
        if (!tui_feedProxyScrollView)
        {
          syncLayoutController = self->_syncLayoutController;
        }

        v37 = syncLayoutController;

        if (([(TUISyncLayoutController *)v37 isDragging]& 1) != 0 || ([(TUISyncLayoutController *)v37 isTracking]& 1) != 0 || ([(TUISyncLayoutController *)v37 isDecelerating]& 1) != 0 || ([(TUISyncLayoutController *)v37 _isAnimatingScroll]& 1) != 0)
        {
          _captureFeedViewState = 0;
        }

        else
        {
          _captureFeedViewState = [(TUIFeedViewController *)self _captureFeedViewState];
        }
      }

      [(TUIFeedViewController *)self _updateHostingGeometryMapIfNeededWithTransaction:self->_auxiliaryRenderModel];
      layoutController = [(TUIFeedViewController *)self layoutController];
      [layoutController updateWithEnvironment:self->_environment state:_captureFeedViewState withTransaction:self->_auxiliaryRenderModel];
    }
  }

  else if (_shouldDisableLayoutDueToAppBeingBackgrounded)
  {
    goto LABEL_11;
  }

  os_unfair_lock_lock(&self->_lock);
  contentNeedsUpdate = self->_contentNeedsUpdate;
  self->_contentNeedsUpdate = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (contentNeedsUpdate)
  {
    [(TUIFeedViewController *)self _loadFeed];
  }

LABEL_11:
  [(TUIFeedViewController *)self _viewSize];
  v41 = v8;
  v42 = v7;
  v9 = self->_syncLayoutController;
  [(TUISyncLayoutController *)v9 contentOffset];
  v39 = v11;
  v40 = v10;
  scrollView = [(TUIFeedViewController *)self scrollView];
  [scrollView contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  tabBarController = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)v9 updateLiveTransformsIfNecessaryWithViewSize:tabBarController != 0 contentOffset:v42 contentInsets:v41 safeAreaInsets:v40 hasTabBar:v39, v14, v16, v18, v20, v22, v24, v26, v28];

  if (self->_needsVisibleStateUpdate)
  {
    v30 = self->_syncLayoutController;

    [(TUISyncLayoutController *)v30 saveViewStateForVisibleViews];
  }
}

- (void)_layoutFeedIgnoringWindow:(BOOL)window
{
  windowCopy = window;
  if (!self->_auxiliaryRenderModel)
  {
    content = [(TUIFeedViewController *)self content];
    if (content)
    {
      needUpdate = self->_pendingCoordinatedTransition.needUpdate;

      if (needUpdate)
      {
        [TUIFeedViewController _createSyncTransactionIfNeededAnimated:"_createSyncTransactionIfNeededAnimated:duration:timingParameters:timeout:isLayingOutFeed:ignoreWindow:flags:" duration:self->_pendingCoordinatedTransition.duration > 0.0 timingParameters:self->_pendingCoordinatedTransitionTimingProvider timeout:1 isLayingOutFeed:0 ignoreWindow:6 flags:?];
      }
    }
  }

  [(TUIFeedViewController *)self _updateLayoutIfNeededIgnoringWindow:windowCopy];

  [(TUIFeedViewController *)self _waitForSyncTransaction];
}

- (void)_updateHostingGeometryMapWithTransaction:(id)transaction
{
  feedView = self->_feedView;
  renderOverrideProvider = self->_renderOverrideProvider;
  transactionCopy = transaction;
  newGeometryMap = [(TUIRenderReferenceOverrideProvider *)renderOverrideProvider newGeometryMap];
  [(TUIFeedView *)feedView updateHostingGeometryMap:newGeometryMap withTransaction:transactionCopy];

  v8 = self->_renderOverrideProvider;

  [(TUIRenderReferenceOverrideProvider *)v8 resetGeometryUpdatedFlag];
}

- (void)_updateHostingGeometryMapIfNeededWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider geometryUpdatedFlag])
  {
    feedView = self->_feedView;
    newGeometryMap = [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider newGeometryMap];
    [(TUIFeedView *)feedView updateHostingGeometryMap:newGeometryMap withTransaction:transactionCopy];

    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider resetGeometryUpdatedFlag];
  }
}

- (void)flushPendingTransactionsWithTimeout:(double)timeout
{
  if (self->_auxiliaryRenderModel)
  {
    v4 = TUIDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_19B87C(self, v4);
    }
  }

  else
  {
    [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:0 timeout:1 isLayingOutFeed:8 ignoreWindow:0.0 flags:timeout];
  }

  [(TUIFeedViewController *)self _layoutFeedIgnoringWindow:1];
}

- (void)flushPendingTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(TUIFeedViewController *)self _updateLayoutIfNeededIgnoringWindow:1];
  v4 = +[(TUITransactionOptions *)TUIMutableTransactionOptions];
  [v4 setFlags:8];
  v5 = [TUITransaction transactionWithOptions:v4];
  if (completionCopy)
  {
    [v5 addCompletion:completionCopy queue:&_dispatch_main_q];
  }

  transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
  [transactionCoordinator scheduleLayoutUpdateWithTransaction:v5 block:&stru_261EE0];
}

- (void)pauseUpdates
{
  transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
  [transactionCoordinator pauseUpdates];
}

- (void)resumeUpdates
{
  transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
  [transactionCoordinator resumeUpdates];
}

- (void)resumeEnvironmentUpdates
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = self->_pauseEnvironmentUpdates - 1;
  self->_pauseEnvironmentUpdates = v3;
  if (!v3)
  {
    [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:1 timeout:0 isLayingOutFeed:6 ignoreWindow:0.0 flags:*&self->_feedBackgroundColor];
    view = [(TUIFeedViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)suspendAndTeardownForReason:(id)reason
{
  reasonCopy = reason;
  v5 = TUIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    visibilityController = self->_visibilityController;
    v13 = 134218242;
    v14 = visibilityController;
    v15 = 2114;
    v16 = reasonCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] suspend and teardown for reason: %{public}@", &v13, 0x16u);
  }

  if ([(TUIFeedViewController *)self runningInExtension])
  {
    [(TUISyncLayoutController *)self->_syncLayoutController contentSize];
    self->_savedContentOffset.y = v7;
    self->_savedContentSize.width = v8;
    [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
    self->_debugDelegate = v9;
    self->_savedContentOffset.x = v10;
  }

  _captureFeedViewState = [(TUIFeedViewController *)self _captureFeedViewState];
  [(TUIFeedViewController *)self setSuspendedViewState:_captureFeedViewState];

  [(TUIFeedViewController *)self _teardownFeedView];
  [(TUIFeedViewController *)self _teardownControllers];
  environment = self->_environment;
  self->_environment = 0;

  [(TUIFeedView *)self->_feedView suspendAndTeardownWithTransaction:self->_auxiliaryRenderModel];
}

- (void)clearSuspendedViewState
{
  suspendedViewState = [(TUIFeedViewController *)self suspendedViewState];
  v4 = [suspendedViewState mutableCopy];

  [v4 setFeedScrollAnchor:0];
  [(TUIFeedViewController *)self setSuspendedViewState:v4];
}

- (id)resumeAndRebuildForReason:(id)reason
{
  reasonCopy = reason;
  v5 = TUIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    visibilityController = self->_visibilityController;
    v19 = 134218242;
    v20 = visibilityController;
    v21 = 2114;
    v22 = reasonCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] resume and rebuild for reason: %{public}@", &v19, 0x16u);
  }

  suspendedViewState = [(TUIFeedViewController *)self suspendedViewState];

  if (suspendedViewState)
  {
    [(TUIFeedViewController *)self _setupControllers];
    [(TUIFeedViewController *)self _setupFeedView];
    if ([(TUIFeedViewController *)self runningInExtension])
    {
      if ((*&self->_debugDelegate != CGPointZero.x || self->_savedContentOffset.x != CGPointZero.y) && (self->_savedContentOffset.y != CGSizeZero.width || self->_savedContentSize.width != CGSizeZero.height))
      {
        [(TUISyncLayoutController *)self->_syncLayoutController setContentSize:?];
        [(TUISyncLayoutController *)self->_syncLayoutController setContentOffset:0 animated:*&self->_debugDelegate, self->_savedContentOffset.x];
      }
    }

    *&self->_flags |= 1u;
    view = [(TUIFeedViewController *)self view];
    [view setNeedsLayout];

    [(TUIFeedViewController *)self _updateEnvironment];
    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    if (auxiliaryRenderModel)
    {
      goto LABEL_20;
    }

    if (![(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
    {
      content = [(TUIFeedViewController *)self content];
      if (content)
      {
        needUpdate = self->_pendingViewAppearingTransition.needUpdate;

        if (needUpdate)
        {
          self->_pendingViewAppearingTransition.needUpdate = 0;
          [TUIFeedViewController _createSyncTransactionIfNeededAnimated:"_createSyncTransactionIfNeededAnimated:duration:timingParameters:timeout:isLayingOutFeed:ignoreWindow:flags:" duration:self->_pendingViewAppearingTransition.duration > 0.0 timingParameters:0 timeout:0 isLayingOutFeed:1 ignoreWindow:4 flags:?];
        }
      }
    }

    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    if (auxiliaryRenderModel)
    {
LABEL_20:
      v14 = auxiliaryRenderModel;
    }

    else
    {
      v14 = +[TUITransaction currentOrImplicitTransaction];
    }

    suspendedViewState = v14;
    feedView = self->_feedView;
    environment = self->_environment;
    suspendedViewState2 = [(TUIFeedViewController *)self suspendedViewState];
    [(TUIFeedView *)feedView resumeAndRebuildWithEnvironment:environment state:suspendedViewState2 transaction:suspendedViewState];

    [(TUIFeedViewController *)self setSuspendedViewState:0];
    [(TUIFeedViewController *)self visibilityProviderIsVisible];
  }

  return suspendedViewState;
}

- (id)suspendUpdatesUntilContentExceedsHeightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [TUIFeedHeightLayoutCondition alloc];
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  v7 = [(TUIFeedHeightLayoutCondition *)v5 initWithView:viewIfLoaded completion:completionCopy];

  [(TUIFeedView *)self->_feedView suspendUpdatesUntilMeetingLayoutCondition:v7];
  viewFactory = self->_viewFactory;
  if (!viewFactory)
  {
    v9 = [NSHashTable hashTableWithOptions:517];
    v10 = self->_viewFactory;
    self->_viewFactory = v9;

    viewFactory = self->_viewFactory;
  }

  [(TUIViewFactory *)viewFactory addObject:v7];

  return v7;
}

- (void)_updateHeightLayoutConditions
{
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_viewFactory;
    v5 = [(TUIViewFactory *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) updateWithView:{viewIfLoaded, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [(TUIViewFactory *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)suspendUpdates
{
  v3 = [(TUIFeedBaseLayoutCondition *)[TUIFeedSuspendLayoutUpdateCondition alloc] initWithCompletion:0];
  [(TUIFeedView *)self->_feedView suspendUpdatesUntilMeetingLayoutCondition:v3];

  return v3;
}

- (void)suspendUpdatesUntilEndOfTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [(TUIFeedBaseLayoutCondition *)[TUIFeedSuspendLayoutUpdateCondition alloc] initWithCompletion:0];
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  [(TUIFeedView *)self->_feedView suspendUpdatesUntilMeetingLayoutCondition:v5];
  transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_11BA84;
  v8[3] = &unk_25EB80;
  v9 = v5;
  v7 = v5;
  [transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v8];
}

- (id)suspendLayout
{
  v3 = [(TUIFeedBaseLayoutCondition *)[TUIFeedSuspendLayoutCondition alloc] initWithCompletion:0];
  [(TUIFeedView *)self->_feedView suspendLayoutsUntilMeetingLayoutCondition:v3];

  return v3;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController];
  rootCollector = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [rootCollector updateVisibleBounds];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController];
  rootCollector = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [rootCollector updateVisibleBounds];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController, decelerate];
  rootCollector = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [rootCollector updateVisibleBounds];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  rootCollector = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [rootCollector updateVisibleBounds];

  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController];
  [(NSHashTable *)self->_heightLayoutConditions invalidatePendingScrolls];
  anchorSet = [(TUIFeedView *)self->_feedView anchorSet];
  v6 = anchorSet;
  if (anchorSet)
  {
    dropController = self->_dropController;
    v8 = [anchorSet computeTriggerStatesInScrollView:scrollCopy axis:2];
    [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v8 updateEvent:3];
  }

  navigationController = [(TUIFeedViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(TUIFeedViewController *)self updateNavigationBarOpacity];
  }

  syncLayoutController = self->_syncLayoutController;
  [(TUIFeedViewController *)self _viewSize];
  v48 = v13;
  v49 = v12;
  [scrollCopy contentOffset];
  v46 = v15;
  v47 = v14;
  scrollView = [(TUIFeedViewController *)self scrollView];
  [scrollView contentInset];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [scrollCopy safeAreaInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  tabBarController = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)syncLayoutController updateLiveTransformsIfNecessaryWithViewSize:tabBarController != 0 contentOffset:v49 contentInsets:v48 safeAreaInsets:v47 hasTabBar:v46, v18, v20, v22, v24, v26, v28, v30, v32];

  WeakRetained = objc_loadWeakRetained(&self->_content);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained feedViewControllerDidScroll:self];
  }

  linkEntityController = self->_linkEntityController;
  renderModel = [(TUISyncLayoutController *)self->_syncLayoutController renderModel];
  [(TUISyncLayoutController *)self->_syncLayoutController visibleBounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  currentViewState = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  [(TUILinkEntityController *)linkEntityController updatePrioritiesForRenderModel:renderModel visibleRect:currentViewState viewState:v38, v40, v42, v44];
}

- (void)viewSafeAreaInsetsDidChange
{
  v30.receiver = self;
  v30.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v30 viewSafeAreaInsetsDidChange];
  if ([(TUIFeedViewController *)self _didSizeChangeComparedToEnvironment])
  {
    self->_needsVisibleStateUpdate = 1;
    [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
  }

  syncLayoutController = self->_syncLayoutController;
  [(TUIFeedViewController *)self _viewSize];
  v28 = v5;
  v29 = v4;
  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  v26 = v7;
  v27 = v6;
  scrollView = [(TUIFeedViewController *)self scrollView];
  [scrollView contentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  tabBarController = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)syncLayoutController updateLiveTransformsIfNecessaryWithViewSize:tabBarController != 0 contentOffset:v29 contentInsets:v28 safeAreaInsets:v27 hasTabBar:v26, v10, v12, v14, v16, v18, v20, v22, v24];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext setNeedsLayout];
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext layoutIfNeeded];
}

- (void)setNavBarBackgroundOpacity:(double)opacity manualScrollEdgeAppearanceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(TUIFeedViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _setTitleOpacity:opacity];

  if ((_UISolariumEnabled() & 1) == 0 && enabledCopy)
  {
    navigationItem = [(TUIFeedViewController *)self navigationItem];
    [navigationItem _setManualScrollEdgeAppearanceEnabled:1];

    navigationItem2 = [(TUIFeedViewController *)self navigationItem];
    [navigationItem2 _setManualScrollEdgeAppearanceProgress:opacity];
  }
}

- (BOOL)runningInExtension
{
  extensionContext = [(TUIFeedViewController *)self extensionContext];
  v3 = extensionContext != 0;

  return v3;
}

- (CGSize)_viewSize
{
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  [viewIfLoaded bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (UIEdgeInsets)_viewSafeAreaInsets
{
  if (self->_avoidSyncTransactionInViewWillAppear)
  {
    viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
    [viewIfLoaded safeAreaInsets];
    left = v3;
    right = v5;

    bottom = 0.0;
    top = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v9 = left;
  v10 = right;
  result.right = v10;
  result.bottom = bottom;
  result.left = v9;
  result.top = top;
  return result;
}

- (CGSize)_windowSize
{
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  v4 = window;
  if (window)
  {
    v5 = window;
  }

  else
  {
    v5 = +[UIWindow _applicationKeyWindow];
  }

  v6 = v5;

  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)_shouldDisableLayoutDueToAppBeingBackgrounded
{
  if ([(TUIFeedViewController *)self runningInExtension])
  {
    return 0;
  }

  selfCopy = self;
  v5 = selfCopy;
  do
  {
    v6 = selfCopy;
    selfCopy = v5;

    parentViewController = [(TUIFeedViewController *)selfCopy parentViewController];
    v8 = parentViewController;
    if (parentViewController)
    {
      presentingViewController = parentViewController;
    }

    else
    {
      presentingViewController = [(TUIFeedViewController *)selfCopy presentingViewController];
    }

    v5 = presentingViewController;
  }

  while (v5);
  if (selfCopy)
  {
    while (1)
    {
      viewIfLoaded = [(TUIFeedViewController *)selfCopy viewIfLoaded];
      window = [viewIfLoaded window];
      if (window)
      {
        break;
      }

      presentedViewController = [(TUIFeedViewController *)selfCopy presentedViewController];

      if (presentedViewController)
      {
        presentedViewController2 = [(TUIFeedViewController *)selfCopy presentedViewController];

        selfCopy = presentedViewController2;
        if (presentedViewController2)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  viewIfLoaded2 = [(TUIFeedViewController *)selfCopy viewIfLoaded];
  window2 = [viewIfLoaded2 window];
  windowScene = [window2 windowScene];

  if (windowScene)
  {
    if ([windowScene activationState])
    {
      v3 = [windowScene activationState] != &dword_0 + 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)_loadFeed
{
  layoutController = [(TUIFeedViewController *)self layoutController];
  content = [(TUIFeedViewController *)self content];
  [layoutController updateWithContent:content transaction:0];
}

- (id)_renderModelForIndexPath:(id)path
{
  section = [path section];

  return [(TUIFeedViewController *)self _renderModelForSection:section];
}

- (id)_renderModelForSection:(unint64_t)section
{
  _renderModel = [(TUIFeedViewController *)self _renderModel];
  sections = [_renderModel sections];
  v6 = [sections count];

  if (v6 <= section)
  {
    v9 = 0;
  }

  else
  {
    sections2 = [_renderModel sections];
    v8 = [sections2 objectAtIndexedSubscript:section];

    if ([v8 kind] == &dword_4 + 3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)_handleNativePressAction:(id)action arguments:(id)arguments
{
  actionCopy = action;
  argumentsCopy = arguments;
  v8 = TUIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    visibilityController = self->_visibilityController;
    v11 = 134218498;
    v12 = visibilityController;
    v13 = 2112;
    v14 = actionCopy;
    v15 = 2112;
    v16 = argumentsCopy;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[fid:%lu] handling press: %@ with arguments: %@", &v11, 0x20u);
  }

  return 0;
}

- (void)_updateDatesCollectorInitialResourcesRenderedDate
{
  layoutController = [(TUIFeedViewController *)self layoutController];
  [layoutController statRecordInitialResourcesRenderedDate];
}

- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  delegate = [(TUIFeedViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(TUIFeedViewController *)self delegate];
    [delegate2 feedViewController:self contentInsetsForScrollingToRectWithContentInsets:{top, left, bottom, right}];
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

- (void)updateHostingMap:(id)map controller:(id)controller
{
  mapCopy = map;
  feedView = self->_feedView;
  controllerCopy = controller;
  updateController = [(TUIFeedView *)feedView updateController];

  if (updateController == controllerCopy)
  {
    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider updateHostingMap:mapCopy];
  }
}

- (void)applyUpdate:(id)update controller:(id)controller completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  controllerCopy = controller;
  v11 = TUIViewUpdateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_19B900(self, updateCopy, v11);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  updateController = [(TUIFeedView *)self->_feedView updateController];

  if (updateController != controllerCopy)
  {
    goto LABEL_4;
  }

  v13 = [updateCopy to];
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext setRenderModel:v13];

  WeakRetained = [updateCopy to];
  content = [WeakRetained content];
  if (!content)
  {
    goto LABEL_15;
  }

  v16 = content;
  v17 = [updateCopy to];
  sections = [v17 sections];
  if ([sections count])
  {
  }

  else
  {
    v19 = [updateCopy to];
    info = [v19 info];
    v21 = [info objectForKeyedSubscript:@"TUIRenderInfoKeyIsFinal"];
    bOOLValue = [v21 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v22 = [updateCopy to];
  [v22 size];
  v24 = v23;
  v26 = v25;

  from = [updateCopy from];
  if (!from || (v28 = from, [updateCopy from], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "size"), v31 = v30, v33 = v32, v29, v28, v31 != v24) || v33 != v26)
  {
    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_content);
      [WeakRetained feedViewController:self willTransitionToContentHeight:v26];
LABEL_15:
    }
  }

LABEL_16:
  v34 = [updateCopy to];
  content2 = [v34 content];
  if (content2)
  {
    v36 = content2;
    v37 = [updateCopy to];
    info2 = [v37 info];
    v39 = [info2 objectForKeyedSubscript:@"TUIRenderInfoKeyIsFinal"];
    bOOLValue2 = [v39 BOOLValue];

    if (bOOLValue2)
    {
      [(TUISyncLayoutController *)self->_syncLayoutController setContentHeightFactorForScrollingGuess:NAN];
    }

    if (!updateCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (!updateCopy)
    {
      goto LABEL_4;
    }
  }

  if (!self->_syncLayoutController)
  {
LABEL_4:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_29;
  }

  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider beginViewUpdates];
  [updateCopy applyToFeedView:self->_syncLayoutController completion:completionCopy];
  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider endViewUpdates];
  if ([(TUIFeedViewController *)self isContentVisible]&& !self->_showsVerticalScrollIndicator)
  {
    v41 = [updateCopy to];
    anchorSet = [v41 anchorSet];

    if (anchorSet)
    {
      dropController = self->_dropController;
      scrollView = [(TUIFeedViewController *)self scrollView];
      v45 = [anchorSet computeTriggerStatesInScrollView:scrollView axis:2];
      [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v45 updateEvent:2];
    }
  }

  [(NSHashTable *)self->_heightLayoutConditions attemptPendingScrolls];
  linkEntityController = self->_linkEntityController;
  _renderModel = [(TUIFeedViewController *)self _renderModel];
  [(TUISyncLayoutController *)self->_syncLayoutController visibleBounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  currentViewState = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  [(TUILinkEntityController *)linkEntityController updatePrioritiesForRenderModel:_renderModel visibleRect:currentViewState viewState:v49, v51, v53, v55];

  rootCollector = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [rootCollector updateSections];

LABEL_29:
}

- (void)applyUpdate:(id)update
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_11CD10;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  updateCopy = update;
  v3 = updateCopy;
  TUIDispatchAsyncViaRunLoop(v4);
}

- (void)_updateNavigationBarItems
{
  WeakRetained = objc_loadWeakRetained(&self->_content);
  navigationItem = [(TUIFeedViewController *)self navigationItem];
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained feedViewControllerNavigationBarItem:self];

    navigationItem = v4;
  }

  [(TUIFeedOverlayDebugView *)self->_overlayDebugView updateWithRenderModel:self->_visibleOverride factory:self triggerManager:self->_dropController promoteAccessory:[(TUIFeedViewController *)self shouldPromoteLargeTitleAccessoryViewButtonsForAccessibility]];
  self->_updatingNavigationBarItems = 1;
  overlayDebugView = self->_overlayDebugView;
  feedView = [(TUIFeedViewController *)self feedView];
  extraLeftItems = [(TUIFeedViewController *)self extraLeftItems];
  extraRightItems = [(TUIFeedViewController *)self extraRightItems];
  v9 = [(TUIFeedOverlayDebugView *)overlayDebugView configureNavigationItem:navigationItem scrollView:feedView extraLeftItems:extraLeftItems extraRightItems:extraRightItems];

  [(TUIFeedViewController *)self updateNavigationBarOpacity];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarItemsDidUpdate:self hasItems:v9];
  }

  self->_updatingNavigationBarItems = 0;
}

- (void)updateNavigationBarOpacity
{
  overlayDebugView = self->_overlayDebugView;
  if (overlayDebugView)
  {
    dropController = self->_dropController;
    anchorSet = [(TUIFeedView *)self->_feedView anchorSet];
    scrollView = [(TUIFeedViewController *)self scrollView];
    [(TUIFeedOverlayDebugView *)overlayDebugView navigationBarBackgroundOpacity:dropController anchors:anchorSet scrollView:scrollView];
    v8 = v7;

    [(TUIFeedViewController *)self setNavBarBackgroundOpacity:1 manualScrollEdgeAppearanceEnabled:v8];
  }
}

- (void)_updateNavigationItemTriggerObservanceForCurrentRenderModel:(id)model previous:(id)previous
{
  modelCopy = model;
  previousCopy = previous;
  if (previousCopy)
  {
    [(TUIFeedViewController *)self _removeTriggerObservationForRenderModel:previousCopy];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  triggers = [modelCopy triggers];
  v9 = [triggers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(triggers);
        }

        [(TUIDropController *)self->_dropController addObserver:self forTrigger:*(*(&v13 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [triggers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_removeTriggerObservationForRenderModel:(id)model
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  triggers = [model triggers];
  v5 = [triggers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(triggers);
        }

        [(TUIDropController *)self->_dropController removeObserver:self forTrigger:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [triggers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  if (event <= 3 && event != 2 && !self->_updatingNavigationBarItems)
  {
    [(TUIFeedViewController *)self _updateNavigationBarItems:trigger];
  }
}

- (void)feedLayoutController:(id)controller updateStats:(id)stats
{
  statsCopy = stats;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUISyncLayoutController *)self->_syncLayoutController setStats:statsCopy];
}

- (void)feedLayoutControllerAllContentReady:(id)ready
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewControllerAllContentReady:self];
  }
}

- (void)feedLayoutControllerInitialContentReady:(id)ready
{
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewControllerInitialContentReady:self];
  }
}

- (void)feedLayoutController:(id)controller axModelSections:(id)sections renderModelCollection:(id)collection renderModelSections:(id)modelSections
{
  controllerCopy = controller;
  sectionsCopy = sections;
  collectionCopy = collection;
  modelSectionsCopy = modelSections;
  if (!self->_topLevelAXElement)
  {
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    [v11 setScreenOffsetProvider:self];
    [v11 setSectionOffset:{CGPointZero.x, CGPointZero.y}];
    v12 = [TUIAXElement alloc];
    view = [(TUIFeedViewController *)self view];
    v14 = [(TUIAXElement *)v12 initWithEvaluationContext:v11 accessibilityContainer:view];
    topLevelAXElement = self->_topLevelAXElement;
    self->_topLevelAXElement = v14;

    [(TUIAXElement *)self->_topLevelAXElement updateWithAXModel:v10];
  }

  v16 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  selfCopy = self;
  accessibilityElements = [(TUIAXElement *)self->_topLevelAXElement accessibilityElements];
  v18 = [accessibilityElements countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v69;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v69 != v20)
        {
          objc_enumerationMutation(accessibilityElements);
        }

        v22 = *(*(&v68 + 1) + 8 * i);
        v23 = objc_opt_class();
        v24 = TUIDynamicCast(v23, v22);
        context = [v24 context];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [context sectionIndex]);
        [v16 setObject:v24 forKeyedSubscript:v26];
      }

      v19 = [accessibilityElements countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v19);
  }

  v27 = sectionsCopy;
  v28 = [sectionsCopy count];
  v64 = objc_opt_new();
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (v28)
  {
    v33 = 0;
    v34 = CGPointZero.y;
    do
    {
      v35 = [NSNumber numberWithUnsignedInteger:v33];
      v36 = [modelSectionsCopy objectForKeyedSubscript:v35];

      v37 = [v27 objectAtIndexedSubscript:v33];
      v38 = [NSNumber numberWithUnsignedInteger:v33];
      v39 = [v16 objectForKeyedSubscript:v38];

      if (([v37 hidden] & 1) == 0)
      {
        if (v39)
        {
          context2 = [(TUIAXElement *)v39 context];
          [context2 setSectionOffset:{CGPointZero.x, v34}];

          [collectionCopy size];
          v42 = v41;
          context3 = [(TUIAXElement *)v39 context];
          [context3 setTotalContentHeight:v42];

          context4 = [(TUIAXElement *)v39 context];
          [context4 setRenderModelSection:v36];

          [(TUIAXElement *)v39 updateWithAXModel:v37];
        }

        else
        {
          v45 = objc_opt_new();
          [v45 setScreenOffsetProvider:selfCopy];
          [v45 setSectionOffset:{CGPointZero.x, v34}];
          [collectionCopy size];
          [v45 setTotalContentHeight:v46];
          [v45 setSectionIndex:v33];
          [v45 setRenderModelSection:v36];
          v39 = [[TUIAXElement alloc] initWithEvaluationContext:v45 accessibilityContainer:selfCopy->_topLevelAXElement];
          [(TUIAXElement *)v39 updateWithAXModel:v37];
        }

        if (-[TUIAXElement isAccessibilityElement](v39, "isAccessibilityElement") || (-[TUIAXElement accessibilityElements](v39, "accessibilityElements"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 count], v47, v48))
        {
          [v64 addObject:v39];
        }

        [v37 accessibilityFrameRelativeToScrollAncestor];
        v77 = CGRectOffset(v74, CGPointZero.x, v34);
        v75.origin.x = x;
        v75.origin.y = y;
        v75.size.width = width;
        v75.size.height = height;
        v76 = CGRectUnion(v75, v77);
        x = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
        [v36 frame];
        v34 = v34 + v49;
        v27 = sectionsCopy;
      }

      ++v33;
    }

    while (v28 != v33);
  }

  v50 = [v64 copy];
  [(TUIAXElement *)selfCopy->_topLevelAXElement setChildren:v50];

  axModel = [(TUIAXElement *)selfCopy->_topLevelAXElement axModel];
  [axModel setAccessibilityFrameRelativeToScrollAncestor:{x, y, width, height}];

  view2 = [(TUIFeedViewController *)selfCopy view];
  [(TUIAXElement *)selfCopy->_topLevelAXElement setAccessibilityContainer:view2];

  v53 = objc_opt_class();
  view3 = [(TUIFeedViewController *)selfCopy view];
  accessibilityElements2 = [view3 accessibilityElements];
  firstObject = [accessibilityElements2 firstObject];
  v57 = TUIDynamicCast(v53, firstObject);

  children = [(TUIAXElement *)selfCopy->_topLevelAXElement children];
  if ([children count])
  {
    v59 = selfCopy->_topLevelAXElement;

    if (v57 != v59)
    {
      v72 = selfCopy->_topLevelAXElement;
      v60 = [NSArray arrayWithObjects:&v72 count:1];
      view4 = [(TUIFeedViewController *)selfCopy view];
      [view4 setAccessibilityElements:v60];

      v27 = sectionsCopy;
      if ([(TUIFeedViewController *)selfCopy visibilityProviderIsVisible])
      {
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, selfCopy->_topLevelAXElement);
      }
    }
  }

  else
  {
  }
}

- (void)feedLayoutController:(id)controller willTransitionToLayoutState:(unint64_t)state
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewController:self willTransitionToLayoutState:state];
  }
}

- (void)feedLayoutController:(id)controller didTransitionToLayoutState:(unint64_t)state
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewController:self didTransitionToLayoutState:state];
  }
}

- (void)scrollToRefId:(id)id refInstance:(id)instance onEntry:(id)entry animated:(BOOL)animated skipVoiceOverFocus:(BOOL)focus
{
  focusCopy = focus;
  animatedCopy = animated;
  entryCopy = entry;
  instanceCopy = instance;
  idCopy = id;
  uuid = [entryCopy uuid];
  v16 = [entryCopy uid];

  v18 = [TUIRenderReferenceQuery queryWithUUID:uuid uid:v16 refId:idCopy refInstance:instanceCopy];

  [(NSHashTable *)self->_heightLayoutConditions addScrollQuery:v18 animated:animatedCopy skipVoiceOverFocus:focusCopy];
  [(NSHashTable *)self->_heightLayoutConditions attemptPendingScrolls];
  if (_AXSFullKeyboardAccessEnabled())
  {
    scrollView = [(TUIFeedViewController *)self scrollView];
    _UIAXAssignFocusToItem();
  }
}

- (id)renderReferencesMatchingQuery:(id)query
{
  syncLayoutController = self->_syncLayoutController;
  queryCopy = query;
  [(TUISyncLayoutController *)syncLayoutController saveViewStateForVisibleViews];
  currentViewState = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  v7 = [TUIRenderReferenceCollector referenceCollectorWithViewState:currentViewState];

  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  v9 = v8;
  v11 = v10;
  renderModel = [(TUISyncLayoutController *)self->_syncLayoutController renderModel];
  CGAffineTransformMakeTranslation(&v15, -v9, -v11);
  [renderModel appendReferencesToCollector:v7 transform:&v15 query:queryCopy liveTransformResolver:self->_syncLayoutController];

  renderReferences = [v7 renderReferences];

  return renderReferences;
}

- (id)navigationBarItemMatchingQuery:(id)query
{
  overlayDebugView = self->_overlayDebugView;
  if (overlayDebugView)
  {
    overlayDebugView = [overlayDebugView navigationBarItemMatchingQuery:query];
    v3 = vars8;
  }

  return overlayDebugView;
}

- (id)imageResourcesMatchingQuery:(id)query
{
  v3 = [(TUIFeedViewController *)self renderReferencesMatchingQuery:query];
  +[TUIResourceCollector createImageResourceCollector];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_11DE38;
  v12 = v11 = &unk_261F30;
  v13 = objc_opt_new();
  v4 = v13;
  v5 = v12;
  [v3 enumerateKeysAndObjectsUsingBlock:&v8];
  v6 = [v4 copy];

  return v6;
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  syncLayoutController = self->_syncLayoutController;
  [(TUIFeedViewController *)self _viewSize];
  v32 = v6;
  v33 = v5;
  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  v30 = v8;
  v31 = v7;
  scrollView = [(TUIFeedViewController *)self scrollView];
  [scrollView contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  tabBarController = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)syncLayoutController updateLiveTransformsIfNecessaryWithViewSize:tabBarController != 0 contentOffset:v33 contentInsets:v32 safeAreaInsets:v31 hasTabBar:v30, v11, v13, v15, v17, v19, v21, v23, v25];

  rootCollector = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [rootCollector updateVisibleBounds];

  hostingController = self->_hostingController;
  v29 = self->_syncLayoutController;

  [(TUIHostingController *)hostingController updatedVisibleBoundsOfScrollView:v29];
}

- (id)waitForVisibleImageResourcesToLoadAssertionWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v7 = TUISignpostFeedViewController();
  v8 = os_signpost_id_generate(v7);

  v9 = TUISignpostFeedViewController();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "waitForVisibleImageResources", "", buf, 2u);
  }

  [(TUISyncLayoutController *)self->_syncLayoutController saveViewStateForVisibleViews];
  v11 = +[_TUIRunLoopWaiter sharedInstance];
  userInteractiveCallbackQueue = [(TUIFeedAutoScrollController *)self->_autoScrollController userInteractiveCallbackQueue];
  v13 = [v11 notReadyAssertionWithTimeout:userInteractiveCallbackQueue queue:timeout];

  v14 = +[_TUIRunLoopWaiter sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_11E298;
  v20[3] = &unk_261F80;
  v20[4] = self;
  v15 = v13;
  v22 = completionCopy;
  v23 = v8;
  v21 = v15;
  v16 = completionCopy;
  [v14 addPreCommitBlock:v20];

  v17 = v22;
  v18 = v15;

  return v15;
}

- (void)notifyWhenVisibleImageResourcesAreLoadedWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  [(TUISyncLayoutController *)self->_syncLayoutController saveViewStateForVisibleViews];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_11E79C;
  v15[4] = sub_11E7C8;
  v16 = objc_retainBlock(completionCopy);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_11E7D0;
  v14[3] = &unk_2607A8;
  v14[4] = v15;
  v7 = [[_TUIRunLoopAssertion alloc] initWithCompletion:v14];
  v8 = dispatch_time(0, (timeout * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11E8AC;
  block[3] = &unk_2607A8;
  block[4] = v15;
  dispatch_after(v8, &_dispatch_main_q, block);
  v9 = +[_TUIRunLoopWaiter sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11E918;
  v11[3] = &unk_25DCA0;
  v11[4] = self;
  v10 = v7;
  v12 = v10;
  [v9 addPreCommitBlock:v11];

  _Block_object_dispose(v15, 8);
}

- (id)_effectiveSyncLayoutController
{
  linkEntityTracker = self->_linkEntityTracker;
  if (!linkEntityTracker)
  {
    parentViewController = [(TUIFeedViewController *)self parentViewController];
    if (parentViewController || ([(TUIFeedViewController *)self presentingViewController], v5 = objc_claimAutoreleasedReturnValue(), 0, (parentViewController = v5) != 0))
    {
      while (1)
      {
        if (objc_opt_respondsToSelector())
        {
          syncLayoutController = [parentViewController syncLayoutController];
          if (syncLayoutController)
          {
            break;
          }
        }

        v4ParentViewController = [parentViewController parentViewController];
        v8 = v4ParentViewController;
        if (v4ParentViewController)
        {
          presentingViewController = v4ParentViewController;
        }

        else
        {
          presentingViewController = [parentViewController presentingViewController];
        }

        v10 = presentingViewController;

        parentViewController = v10;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v14 = self->_linkEntityTracker;
      self->_linkEntityTracker = syncLayoutController;
      v13 = syncLayoutController;
    }

    else
    {
LABEL_10:
      WeakRetained = objc_loadWeakRetained(&self->_content);
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        parentViewController = 0;
LABEL_15:

        linkEntityTracker = self->_linkEntityTracker;
        goto LABEL_16;
      }

      v13 = objc_loadWeakRetained(&self->_content);
      [(TUIVisibilityTracker *)v13 feedViewControllerNeedsSyncLayoutController:self];
      parentViewController = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return linkEntityTracker;
}

- (void)addRenderOverride:(id)override animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  overrideCopy = override;
  v9 = overrideCopy;
  if (animatedCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_11ED94;
    v10[3] = &unk_25DCA0;
    v10[4] = self;
    v11 = overrideCopy;
    [UIView animateWithDuration:v10 animations:duration];
  }

  else
  {
    [self->_feedId.uniqueIdentifier addRenderOverride:overrideCopy];
  }
}

- (void)removeRenderOverride:(id)override animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  overrideCopy = override;
  v9 = overrideCopy;
  if (animatedCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_11EED0;
    v10[3] = &unk_25DCA0;
    v10[4] = self;
    v11 = overrideCopy;
    [UIView animateWithDuration:v10 animations:duration];
  }

  else
  {
    [self->_feedId.uniqueIdentifier removeRenderOverride:overrideCopy];
  }
}

- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)identifier indexPath:(id)path host:(id)host
{
  syncLayoutController = self->_syncLayoutController;
  hostCopy = host;
  pathCopy = path;
  identifierCopy = identifier;
  viewFactory = [(TUISyncLayoutController *)syncLayoutController viewFactory];
  v12 = [viewFactory viewFactoryDequeueReusableSubviewWithReuseIdentifier:identifierCopy indexPath:pathCopy host:hostCopy];

  return v12;
}

- (void)viewFactoryPrepareToReuseHost:(id)host
{
  feedContentLayoutStackNameInstance = self->_feedContentLayoutStackNameInstance;
  hostCopy = host;
  subviewPool = [(TUIDynamicInstance *)feedContentLayoutStackNameInstance subviewPool];
  [subviewPool prepareToReuseHost:hostCopy];
}

- (void)viewFactoryReuseSubviews:(id)subviews host:(id)host
{
  feedContentLayoutStackNameInstance = self->_feedContentLayoutStackNameInstance;
  hostCopy = host;
  subviewsCopy = subviews;
  subviewPool = [(TUIDynamicInstance *)feedContentLayoutStackNameInstance subviewPool];
  [subviewPool reuseSubviews:subviewsCopy host:hostCopy];
}

- (BOOL)handleActionForObject:(id)object withName:(id)name arguments:(id)arguments
{
  nameCopy = name;
  argumentsCopy = arguments;
  objectCopy = object;
  v11 = objc_opt_class();
  v12 = TUIDynamicCast(v11, objectCopy);

  v13 = TUIDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    visibilityController = self->_visibilityController;
    v18 = 134218498;
    v19 = visibilityController;
    v20 = 2112;
    v21 = nameCopy;
    v22 = 2112;
    v23 = argumentsCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[fid:%lu] handling action: %@: parameters: %@", &v18, 0x20u);
  }

  v15 = [v12 handleBehaviorWithName:nameCopy arguments:argumentsCopy];
  if ((v15 & 1) == 0)
  {
    v16 = TUIDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_19BA30(self, nameCopy, v16);
    }
  }

  return v15;
}

- (id)dragItemForObject:(id)object withName:(id)name arguments:(id)arguments
{
  argumentsCopy = arguments;
  nameCopy = name;
  objectCopy = object;
  v11 = objc_opt_class();
  v12 = TUIDynamicCast(v11, objectCopy);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_11F368;
  v16[3] = &unk_261FA8;
  v16[4] = self;
  v13 = objc_retainBlock(v16);
  v14 = [v12 dragItemForFeedEntry:objectCopy name:nameCopy arguments:argumentsCopy imageResourceBlock:v13];

  return v14;
}

- (void)didBeginDraggingView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v4 = TUIPlatformAncestorOfClass(viewCopy);
  [v4 suspendReuseOfView:viewCopy];
}

- (void)didEndDraggingView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v4 = TUIPlatformAncestorOfClass(viewCopy);
  [v4 resumeReuseOfView:viewCopy];
}

- (void)performDropWithSession:(id)session actionObject:(id)object behavior:(id)behavior
{
  behaviorCopy = behavior;
  objectCopy = object;
  sessionCopy = session;
  v10 = objc_opt_class();
  v11 = TUIDynamicCast(v10, objectCopy);

  [v11 performDropWithSession:sessionCopy behavior:behaviorCopy];
}

- (BOOL)canHandleDropSession:(id)session actionObject:(id)object behavior:(id)behavior
{
  behaviorCopy = behavior;
  objectCopy = object;
  sessionCopy = session;
  v10 = objc_opt_class();
  v11 = TUIDynamicCast(v10, objectCopy);

  LOBYTE(objectCopy) = [v11 canHandleDropSession:sessionCopy behavior:behaviorCopy];
  return objectCopy;
}

- (void)impressionController:(id)controller didUpdateSnapshot:(id)snapshot
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_11F6DC;
  v5[3] = &unk_25DCA0;
  v5[4] = self;
  snapshotCopy = snapshot;
  v4 = snapshotCopy;
  TUIDispatchAsyncViaRunLoop(v5);
}

- (id)visibilityProviderHostingLayer
{
  scrollView = [(TUIFeedViewController *)self scrollView];
  layer = [scrollView layer];

  return layer;
}

- (id)visibilityProviderWindowLayer
{
  view = [(TUIFeedViewController *)self view];
  window = [view window];
  layer = [window layer];

  return layer;
}

- (CGRect)visibilityProviderVisibleBounds
{
  scrollView = [(TUIFeedViewController *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  scrollView2 = [(TUIFeedViewController *)self scrollView];
  [scrollView2 adjustedContentInset];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)visibilityProviderSections
{
  _renderModel = [(TUIFeedViewController *)self _renderModel];
  sections = [_renderModel sections];

  return sections;
}

- (BOOL)visibilityProviderIsVisible
{
  viewIfLoaded = [(TUIFeedViewController *)self viewIfLoaded];
  if ([viewIfLoaded isHidden])
  {
    window = 0;
  }

  else
  {
    window = [viewIfLoaded window];

    if (window)
    {
      if ((*&self->_delegateFlags & 0x20) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_content);
        window = [WeakRetained feedViewControllerIsConsideredVisible:self];
      }

      else
      {
        window = &dword_0 + 1;
      }
    }
  }

  [(TUIHostingController *)self->_hostingController setVisible:window];

  return window;
}

- (BOOL)visibilityProviderIsScrolling
{
  if (([(TUISyncLayoutController *)self->_syncLayoutController isDragging]& 1) != 0 || ([(TUISyncLayoutController *)self->_syncLayoutController isTracking]& 1) != 0 || ([(TUISyncLayoutController *)self->_syncLayoutController isDecelerating]& 1) != 0)
  {
    return 1;
  }

  syncLayoutController = self->_syncLayoutController;

  return [(TUISyncLayoutController *)syncLayoutController _isAnimatingScroll];
}

- (CGRect)screenCoordinatesForFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  scrollView = [(TUIFeedViewController *)self scrollView];
  [scrollView convertRect:0 toView:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGPoint)contentOffset
{
  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)boundsForFeedView
{
  [(TUISyncLayoutController *)self->_syncLayoutController bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)availableHeight
{
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v4 = v3;
  v6 = v5;
  [(TUISyncLayoutController *)self->_syncLayoutController bounds];
  return v7 - v6 - v4;
}

- (void)imagePrefetchControllerDidStartLoadingInitialResources:(id)resources
{
  layoutController = [(TUIFeedViewController *)self layoutController];
  [layoutController statRecordResourcesStartLoadingDate];
}

- (void)imagePrefetchControllerDidLoadAllResources:(id)resources
{
  [(TUIFeedViewController *)self _updateDatesCollectorInitialResourcesRenderedDate];
  layoutController = [(TUIFeedViewController *)self layoutController];
  [layoutController statRecordResourcesLoadedDate];
}

- (void)reportLargeLayer:(id)layer renderModel:(id)model
{
  layerCopy = layer;
  modelCopy = model;
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    v9 = TUIDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      visibilityController = self->_visibilityController;
      [layerCopy bounds];
      v36.width = v11;
      v36.height = v12;
      v13 = NSStringFromCGSize(v36);
      content = [(TUIFeedViewController *)self content];
      *buf = 134219010;
      v27 = visibilityController;
      v28 = 2114;
      v29 = layerCopy;
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = modelCopy;
      v34 = 2114;
      v35 = content;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[fid:%lu] unexpected large layer used: layer=%{public}@ size=%{public}@ renderModel=%{public}@ content=%{public}@", buf, 0x34u);
    }

    if (_TUIDeviceHasInternalInstall())
    {
      v15 = [NSException alloc];
      v23 = @"layer";
      v16 = layerCopy;
      if (!layerCopy)
      {
        v16 = +[NSNull null];
      }

      v25[0] = v16;
      v24 = @"renderModel";
      v17 = modelCopy;
      if (!modelCopy)
      {
        v17 = +[NSNull null];
      }

      v18 = [(TUIFeedViewController *)self content:v23];
      v19 = v18;
      if (!v18)
      {
        v19 = +[NSNull null];
      }

      v25[2] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:&v23 count:3];
      v21 = [v15 initWithName:@"LargeLayer" reason:@"A very large layer was used; this is not expected" userInfo:v20];
      v22 = v21;

      if (!v18)
      {
      }

      if (!modelCopy)
      {
      }

      if (!layerCopy)
      {
      }

      objc_exception_throw(v21);
    }
  }
}

- (id)renderReferenceOverrideObservers
{
  v3 = objc_opt_new();
  [(TUISyncLayoutController *)self->_syncLayoutController appendRenderOverrideObservers:v3];
  v4 = [v3 copy];

  return v4;
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  transactionCopy = transaction;
  changedCopy = changed;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_restoreViewState;
  os_unfair_lock_unlock(&self->_lock);

  if (v7 == changedCopy)
  {
    [(TUIFeedView *)self->_feedView layoutIfNeededWithTransaction:transactionCopy];
  }
}

- (BOOL)shouldPromoteLargeTitleAccessoryViewButtonsForAccessibility
{
  navigationController = [(TUIFeedViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  if ([navigationBar prefersLargeTitles])
  {
    v4 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)resolveViewWithPath:(id)path
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  pathCopy = path;
  v5 = [pathCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    v9 = 1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(pathCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v7)
        {
          if (v9)
          {
            tui_identifierWithoutUUID = v11;
          }

          else
          {
            tui_identifierWithoutUUID = [*(*(&v16 + 1) + 8 * i) tui_identifierWithoutUUID];
          }

          v13 = tui_identifierWithoutUUID;
          v14 = [v7 descendentViewWithIdentifier:{tui_identifierWithoutUUID, v16}];

          v7 = v14;
          if (!v14)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = [(TUISyncLayoutController *)self->_syncLayoutController descendentViewWithIdentifier:v11, v16];
          v9 = 0;
          if (!v7)
          {
            goto LABEL_17;
          }
        }
      }

      v6 = [pathCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_17:

  return v7;
}

- (void)setPerformanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  manager = self->_manager;
  if (manager != identifierCopy)
  {
    v10 = identifierCopy;
    v6 = [(TUIManager *)manager isEqual:identifierCopy];
    identifierCopy = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [(TUIManager *)v10 copy];
      v8 = self->_manager;
      self->_manager = v7;

      transactionCoordinator = [(TUIFeedView *)self->_feedView transactionCoordinator];
      [transactionCoordinator updatePerformanceIdentifier:v10];

      identifierCopy = v10;
    }
  }
}

- (TUIContextMenuConfigurationProviding)contextMenuConfigurationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extraRightItems);

  return WeakRetained;
}

- (CGPoint)savedContentOffset
{
  debugDelegate = self->_debugDelegate;
  x = self->_savedContentOffset.x;
  result.y = x;
  result.x = *&debugDelegate;
  return result;
}

- (CGSize)savedContentSize
{
  y = self->_savedContentOffset.y;
  width = self->_savedContentSize.width;
  result.height = width;
  result.width = y;
  return result;
}

- (TUIFeedDebugDelegate)debugDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutController);

  return WeakRetained;
}

@end