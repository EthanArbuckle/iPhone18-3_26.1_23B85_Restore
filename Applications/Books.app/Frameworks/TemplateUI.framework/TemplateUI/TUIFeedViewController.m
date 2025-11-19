@interface TUIFeedViewController
- (BOOL)_didSizeChangeComparedToEnvironment;
- (BOOL)_handleNativePressAction:(id)a3 arguments:(id)a4;
- (BOOL)_shouldDisableLayoutDueToAppBeingBackgrounded;
- (BOOL)canHandleDropSession:(id)a3 actionObject:(id)a4 behavior:(id)a5;
- (BOOL)handleActionForObject:(id)a3 withName:(id)a4 arguments:(id)a5;
- (BOOL)isContentVisible;
- (BOOL)runningInExtension;
- (BOOL)shouldPromoteLargeTitleAccessoryViewButtonsForAccessibility;
- (BOOL)visibilityProviderIsScrolling;
- (BOOL)visibilityProviderIsVisible;
- (CGPoint)contentOffset;
- (CGPoint)savedContentOffset;
- (CGRect)boundsForFeedView;
- (CGRect)screenCoordinatesForFrame:(CGRect)a3;
- (CGRect)visibilityProviderVisibleBounds;
- (CGSize)_viewSize;
- (CGSize)_windowSize;
- (CGSize)savedContentSize;
- (TUIContextMenuConfigurationProviding)contextMenuConfigurationProvider;
- (TUIFeedContent)content;
- (TUIFeedDebugDelegate)debugDelegate;
- (TUIFeedViewController)initWithFeedContent:(id)a3 manager:(id)a4 factory:(id)a5;
- (TUIFeedViewControllerDelegate)delegate;
- (TUIInteractionBuilding)interactionBuilder;
- (UIEdgeInsets)_viewSafeAreaInsets;
- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a3;
- (UINavigationBar)hostingNavigationBar;
- (double)availableHeight;
- (id)_captureFeedViewState;
- (id)_effectiveSyncLayoutController;
- (id)_renderModelForIndexPath:(id)a3;
- (id)_renderModelForSection:(unint64_t)a3;
- (id)dragItemForObject:(id)a3 withName:(id)a4 arguments:(id)a5;
- (id)imageResourcesMatchingQuery:(id)a3;
- (id)navigationBarItemMatchingQuery:(id)a3;
- (id)renderReferenceOverrideObservers;
- (id)renderReferencesMatchingQuery:(id)a3;
- (id)resolveViewWithPath:(id)a3;
- (id)resumeAndRebuildForReason:(id)a3;
- (id)suspendLayout;
- (id)suspendUpdates;
- (id)suspendUpdatesUntilContentExceedsHeightWithCompletion:(id)a3;
- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)a3 indexPath:(id)a4 host:(id)a5;
- (id)visibilityProviderHostingLayer;
- (id)visibilityProviderSections;
- (id)visibilityProviderWindowLayer;
- (id)waitForVisibleImageResourcesToLoadAssertionWithTimeout:(double)a3 completion:(id)a4;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_createSyncTransactionIfNeededAnimated:(BOOL)a3 duration:(double)a4 timingParameters:(id)a5 timeout:(double)a6 isLayingOutFeed:(BOOL)a7 ignoreWindow:(BOOL)a8 flags:(unint64_t)a9;
- (void)_createSyncTransactionWithOptions:(id)a3;
- (void)_layoutFeedIgnoringWindow:(BOOL)a3;
- (void)_loadFeed;
- (void)_removeTriggerObservationForRenderModel:(id)a3;
- (void)_setContentNeedsUpdate;
- (void)_setupControllers;
- (void)_setupFeedView;
- (void)_synchronouslyUpdateContent:(id)a3 environment:(id)a4 andWaitForEntry:(id)a5 timeout:(double)a6 assertion:(id)a7 completion:(id)a8;
- (void)_teardownControllers;
- (void)_teardownFeedView;
- (void)_updateDatesCollectorInitialResourcesRenderedDate;
- (void)_updateEnvironment;
- (void)_updateHeightLayoutConditions;
- (void)_updateHostingGeometryMapIfNeededWithTransaction:(id)a3;
- (void)_updateHostingGeometryMapWithTransaction:(id)a3;
- (void)_updateLayoutIfNeededIgnoringWindow:(BOOL)a3;
- (void)_updateNavigationBarItems;
- (void)_updateNavigationItemTriggerObservanceForCurrentRenderModel:(id)a3 previous:(id)a4;
- (void)_updatePriority;
- (void)_updateUserInterfaceStyleForNavigationItemBottomPalette;
- (void)_waitForSyncTransaction;
- (void)_waitForSyncTransactionCompletion:(id)a3;
- (void)addRenderOverride:(id)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)applyUpdate:(id)a3;
- (void)applyUpdate:(id)a3 controller:(id)a4 completion:(id)a5;
- (void)clearSuspendedViewState;
- (void)clearVisibleOverride;
- (void)dealloc;
- (void)didBeginDraggingView:(id)a3;
- (void)didEndDraggingView:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
- (void)feedLayoutController:(id)a3 applyUpdatesFromTransactionGroup:(id)a4;
- (void)feedLayoutController:(id)a3 axModelSections:(id)a4 renderModelCollection:(id)a5 renderModelSections:(id)a6;
- (void)feedLayoutController:(id)a3 didTransitionToLayoutState:(unint64_t)a4;
- (void)feedLayoutController:(id)a3 updateStats:(id)a4;
- (void)feedLayoutController:(id)a3 willTransitionToLayoutState:(unint64_t)a4;
- (void)feedLayoutControllerAllContentReady:(id)a3;
- (void)feedLayoutControllerInitialContentReady:(id)a3;
- (void)finalizeSynchronousTransaction:(id)a3;
- (void)flushPendingTransactionsWithCompletion:(id)a3;
- (void)flushPendingTransactionsWithTimeout:(double)a3;
- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5;
- (void)imagePrefetchControllerDidLoadAllResources:(id)a3;
- (void)imagePrefetchControllerDidStartLoadingInitialResources:(id)a3;
- (void)impressionController:(id)a3 didUpdateSnapshot:(id)a4;
- (void)notifyWhenVisibleImageResourcesAreLoadedWithTimeout:(double)a3 completion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseUpdates;
- (void)performDropWithSession:(id)a3 actionObject:(id)a4 behavior:(id)a5;
- (void)removeRenderOverride:(id)a3 animated:(BOOL)a4 duration:(double)a5;
- (void)reportLargeLayer:(id)a3 renderModel:(id)a4;
- (void)resumeEnvironmentUpdates;
- (void)resumeUpdates;
- (void)scrollToRefId:(id)a3 refInstance:(id)a4 onEntry:(id)a5 animated:(BOOL)a6 skipVoiceOverFocus:(BOOL)a7;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setContent:(id)a3;
- (void)setContentNeedsUpdate;
- (void)setDelegate:(id)a3;
- (void)setFeedBackgroundColor:(id)a3;
- (void)setNavBarBackgroundOpacity:(double)a3 manualScrollEdgeAppearanceEnabled:(BOOL)a4;
- (void)setNeedsEnvironmentUpdate;
- (void)setPerformanceIdentifier:(id)a3;
- (void)setRespectsSafeArea:(BOOL)a3;
- (void)setShowsVerticalScrollIndicator:(BOOL)a3;
- (void)suspendAndTeardownForReason:(id)a3;
- (void)suspendUpdatesUntilEndOfTransaction:(id)a3;
- (void)synchronouslyUpdateContent:(id)a3 environment:(id)a4 andWaitForEntry:(id)a5 timeout:(double)a6;
- (void)tui_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)updateHostingMap:(id)a3 controller:(id)a4;
- (void)updateNavigationBarOpacity;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewFactoryPrepareToReuseHost:(id)a3;
- (void)viewFactoryReuseSubviews:(id)a3 host:(id)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)visibleOverrideVisible:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TUIFeedViewController

- (TUIFeedViewController)initWithFeedContent:(id)a3 manager:(id)a4 factory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
    objc_storeStrong(v12 + 15, a3);
    v12[27] = v9 != 0;
    v15 = [*(v12 + 15) currentStackName];
    v16 = [v15 instanceForObserver:v12];
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
    objc_storeStrong(v12 + 31, a4);
    objc_storeStrong(v12 + 30, a5);
    v20 = [[TUIFeedLayoutController alloc] initWithFeedId:*(v12 + 20) environment:0 factory:*(v12 + 30) manager:v10 renderMode:0];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_2E4400 == a6)
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
    [(TUIFeedViewController *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v19 = [(TUITemplateFactory *)self->_templateFactory resourceLoader];
  v20 = [(TUIImagePrefetchController *)v18 initWithResourceLoader:v19];
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

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  v3 = [(TUIFeedViewController *)self viewIfLoaded];
  [v3 setNeedsLayout];
}

- (void)visibleOverrideVisible:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
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
    v5 = [(TUIFeedViewController *)self _appearState];
    if (v5 == 1)
    {
      return 1;
    }

    if (v5 != 2)
    {
      return 0;
    }

    v6 = [(TUIFeedViewController *)self viewIfLoaded];
    v7 = [v6 window];
    v8 = v7 != 0;

    return v8;
  }
}

- (UINavigationBar)hostingNavigationBar
{
  v2 = [(TUIFeedViewController *)self navigationController];
  v3 = [v2 navigationBar];

  return v3;
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
  v21 = [(TUIEnvironment *)self->_environment traitCollection];
  [(TUIRenderReferenceOverrideProvider *)renderOverrideProvider updateTraitCollection:v21];

  WeakRetained = objc_loadWeakRetained(&self->_content);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained feedViewController:self customizeEnvironment:self->_environment];
  }
}

- (void)setNeedsEnvironmentUpdate
{
  self->_environmentNeedsUpdate = 1;
  v2 = [(TUIFeedViewController *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)_setupFeedView
{
  v3 = [(TUIFeedView *)self->_feedView updateController];
  v39 = [v3 registerDelegate:self];

  v4 = [v39 first];
  v5 = [TUIFeedView alloc];
  v6 = [(TUIFeedViewController *)self view];
  [v6 bounds];
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
  v11 = [v39 second];
  [(TUIRenderReferenceOverrideProvider *)renderOverrideProvider updateHostingMap:v11];

  [(TUISyncLayoutController *)self->_syncLayoutController reloadWithRenderModel:v4];
  [(TUISyncLayoutController *)self->_syncLayoutController setBackgroundColor:self->_contextMenuConfigurationProvider];
  v12 = self->_syncLayoutController;
  v13 = +[TUIDragController sharedInstance];
  v14 = [v13 dragInteractionWithActionHandlerDelegate:self dragDelegate:self];
  [(TUISyncLayoutController *)v12 addInteraction:v14];

  v15 = self->_syncLayoutController;
  v16 = [(TUIImagePrefetchController *)self->_imagePrefetchController dropInteraction];
  [(TUISyncLayoutController *)v15 addInteraction:v16];

  [(TUISyncLayoutController *)self->_syncLayoutController setDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setSubviewsDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setRectScrollingDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setScrollingDelegate:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setControllerHost:self];
  [(TUISyncLayoutController *)self->_syncLayoutController setAlwaysBounceVertical:1];
  v17 = [(TUIFeedViewController *)self view];
  [v17 addSubview:self->_syncLayoutController];

  [(TUIFeedViewController *)self setContentScrollView:self->_syncLayoutController forEdge:5];
  v18 = [TUIViewVisibilityController alloc];
  v19 = [(TUIFeedViewController *)self view];
  v20 = [(TUIViewVisibilityController *)v18 initWithView:v19 scrollView:self->_syncLayoutController];
  hostingController = self->_hostingController;
  self->_hostingController = v20;

  v22 = objc_alloc_init(TUIPagedScrollableController);
  delegate = self->_delegate;
  self->_delegate = v22;

  v24 = [(TUIFeedView *)self->_feedView auxiliaryUpdateController];
  v25 = [v24 registerDelegate:self];

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

    v32 = [(TUIFeedViewController *)self view];
    [v32 bounds];
    v34 = v33;
    v35 = [(TUIFeedViewController *)self view];
    [v35 bounds];
    [(_TUIFeedViewControllerQueueContext *)self->_queueContext setFrame:0.0, v31, v34];

    v36 = [(TUIFeedViewController *)self view];
    [v36 addSubview:self->_queueContext];

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
  v5 = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  keyboardSupport = self->_keyboardSupport;
  self->_keyboardSupport = v5;

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
  v10 = [(TUIFeedView *)self->_feedView updateController];
  [v10 unregisterDelegate:self];

  v11 = [(TUIFeedView *)self->_feedView auxiliaryUpdateController];
  [v11 unregisterDelegate:self];
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
        v4 = [(TUIFeedViewController *)self viewIfLoaded];
        [v4 setNeedsLayout];
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
    v4 = [(TUITemplateFactory *)self->_templateFactory viewRegistry];
    v5 = [(TUIViewFactory *)v3 initWithRegistry:v4];
    feedContentLayoutStackNameInstance = self->_feedContentLayoutStackNameInstance;
    self->_feedContentLayoutStackNameInstance = v5;
  }

  if (!self->_environment)
  {
    v12 = [(TUIFeedViewController *)self parentViewController];
    if (v12)
    {
      v13 = *(&self->_flags + 2);

      if (v13 == 1)
      {
        self->_environmentNeedsUpdate = 1;
        v14 = [(TUIFeedViewController *)self view];
        [v14 setNeedsLayout];
      }
    }
  }

  if (self->_environmentNeedsUpdate || self->_environment)
  {
    [(TUIFeedViewController *)self _setContentNeedsUpdate];
  }

  v7 = +[UIColor systemBackgroundColor];
  v8 = [(TUIFeedViewController *)self view];
  [v8 setBackgroundColor:v7];

  v9 = [(TUIFeedViewController *)self suspendedViewState];

  if (v9)
  {
    v10 = [(TUIFeedViewController *)self resumeAndRebuildForReason:@"view loaded"];
  }

  else
  {
    [(TUIFeedViewController *)self _setupFeedView];
  }

  LODWORD(v11) = *&self->_suspendedDueToMemoryPressure;
  [(TUIFeedView *)self->_feedView setPriority:v11];
  v15 = [(TUIFeedViewController *)self navigationController];
  v16 = [v15 navigationBar];
  [v16 setPrefersLargeTitles:1];
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v6 didReceiveMemoryWarning];
  v3 = [(TUIFeedViewController *)self _appearState];
  v4 = [(TUIFeedViewController *)self viewIfLoaded];
  v5 = [v4 window];
  if (v5 || v3 == 1)
  {
  }

  else
  {

    if (v3 != 2)
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
  v8 = [(TUISyncLayoutController *)self->_syncLayoutController renderModel];
  v9 = [v8 anchorSet];
  v10 = [v9 scrollAnchorWithScrollView:self->_syncLayoutController offset:{v5, v7}];
  [(TUIFeedViewState *)v3 setFeedScrollAnchor:v10];

  return v3;
}

- (BOOL)_didSizeChangeComparedToEnvironment
{
  v3 = [(TUIFeedViewController *)self viewIfLoaded];
  if (v3)
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
  v3 = [(TUIFeedViewController *)self _didSizeChangeComparedToEnvironment];
  if (!self->_auxiliaryRenderModel && ![(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
  {
    v4 = [(TUIFeedViewController *)self content];
    if (v4)
    {
      needUpdate = self->_pendingViewAppearingTransition.needUpdate;

      if (needUpdate)
      {
        [TUIFeedViewController _createSyncTransactionIfNeededAnimated:"_createSyncTransactionIfNeededAnimated:duration:timingParameters:timeout:isLayingOutFeed:ignoreWindow:flags:" duration:self->_pendingViewAppearingTransition.duration > 0.0 timingParameters:0 timeout:0 isLayingOutFeed:1 ignoreWindow:4 flags:?];
      }
    }
  }

  self->_pendingViewAppearingTransition.needUpdate = 0;
  if (v3)
  {
    v6 = [(TUIFeedViewController *)self viewIfLoaded];
    v7 = [v6 window];
    if (v7 || self->_auxiliaryRenderModel || +[UIView areAnimationsEnabled])
    {
    }

    else
    {
      v24 = [(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear];

      if ((v24 & 1) == 0)
      {
        [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:1 timeout:1 isLayingOutFeed:4 ignoreWindow:0.0 flags:self->_viewTransitionSyncTimeoutDuration];
      }
    }

    v8 = [(TUIFeedViewController *)self content];
    if (v8)
    {
      v9 = v8;
      v10 = [(TUIFeedViewController *)self viewIfLoaded];
      v11 = [v10 window];
      v12 = v11;
      if (v11 && !self->_auxiliaryRenderModel)
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

  if (self->_auxiliaryRenderModel || (*&self->_flags & 1) != 0 || (self->_environment == 0) | v3 & 1)
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
      v35 = v3;
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

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v12 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  self->_needsVisibleStateUpdate = 1;
  [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
  ++self->_pendingCoordinatedTransition.needUpdate;
  [v6 transitionDuration];
  self->_pendingCoordinatedTransition.duration = v7;
  v8 = objc_opt_respondsToSelector();
  if (v8)
  {
    v9 = [v6 timingParameters];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&self->_pendingCoordinatedTransitionTimingProvider, v9);
  if (v8)
  {
  }

  v10 = [(TUITemplateFactory *)self->_templateFactory imageResourceCache];
  [v10 deferLoadsBegin];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_118E84;
  v11[3] = &unk_261E20;
  v11[4] = self;
  [v6 animateAlongsideTransition:0 completion:v11];
}

- (void)tui_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  self->_needsVisibleStateUpdate = 1;
  [(TUIFeedViewController *)self _updateUserInterfaceStyleForNavigationItemBottomPalette:a3];

  [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
}

- (void)_createSyncTransactionWithOptions:(id)a3
{
  if (!self->_auxiliaryRenderModel)
  {
    v4 = [TUITransaction transactionWithOptions:a3];
    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    self->_auxiliaryRenderModel = v4;

    v6 = [(TUIFeedViewController *)self _captureFeedViewState];
    suspendedViewState = self->_suspendedViewState;
    self->_suspendedViewState = v6;

    v8 = [(TUIFeedView *)self->_feedView transactionCoordinator];
    [v8 scheduleSyncTransaction:self->_auxiliaryRenderModel];
  }
}

- (void)_createSyncTransactionIfNeededAnimated:(BOOL)a3 duration:(double)a4 timingParameters:(id)a5 timeout:(double)a6 isLayingOutFeed:(BOOL)a7 ignoreWindow:(BOOL)a8 flags:(unint64_t)a9
{
  v14 = a3;
  v16 = a5;
  if (!self->_auxiliaryRenderModel)
  {
    if (a8 || (-[TUIFeedViewController viewIfLoaded](self, "viewIfLoaded"), v17 = objc_claimAutoreleasedReturnValue(), [v17 window], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
    {
      v19 = objc_alloc_init(TUIMutableTransactionOptions);
      [(TUITransactionOptions *)v19 setAnimate:v14];
      [(TUITransactionOptions *)v19 setDuration:a4];
      [(TUITransactionOptions *)v19 setSyncTimeout:a6];
      [(TUITransactionOptions *)v19 setFlags:a9];
      [(TUITransactionOptions *)v19 setTimingProvider:v16];
      v20 = [TUITransaction transactionWithOptions:v19];
      auxiliaryRenderModel = self->_auxiliaryRenderModel;
      self->_auxiliaryRenderModel = v20;

      v22 = [(TUIFeedViewController *)self _captureFeedViewState];
      suspendedViewState = self->_suspendedViewState;
      self->_suspendedViewState = v22;

      v24 = [(TUIFeedView *)self->_feedView transactionCoordinator];
      [v24 scheduleSyncTransaction:self->_auxiliaryRenderModel];

      if (!a7)
      {
        v25 = [(TUIFeedViewController *)self view];
        [v25 setNeedsLayout];
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

- (void)feedLayoutController:(id)a3 applyUpdatesFromTransactionGroup:(id)a4
{
  v5 = a4;
  if ([v5 flags])
  {
    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider beginViewUpdates];
    [v5 applyUpdates];
    v6 = [(TUIFeedViewController *)self view];
    [v6 layoutIfNeeded];

    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider endViewUpdatesNotifyDelegate:0];
    if ([(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider geometryUpdatedFlag])
    {
      [v5 addNotifyWhenAppliedDeferral];
      v7 = [v5 options];
      [(TUIFeedViewController *)self _createSyncTransactionWithOptions:v7];

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

      v13 = [(TUIFeedViewController *)self _effectiveSyncLayoutController];
      v14 = [(TUIRenderModelAuxiliary *)v8 options];
      [v14 syncTimeout];
      v16 = v15;
      v17 = [(TUIRenderModelAuxiliary *)v8 tx];
      v18 = [v13 syncAssertionWithTimeout:v17 transaction:self->_visibilityController feedId:v16];

      v19 = [(TUIRenderModelAuxiliary *)v8 tx];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_119540;
      v26[3] = &unk_25DE30;
      v27 = v5;
      [v19 notifyWhenAppliedWithBlock:v26];
      v20 = [(TUIFeedView *)self->_feedView transactionCoordinator];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_119548;
      v23[3] = &unk_25E7C0;
      v23[4] = self;
      v24 = v8;
      v25 = v18;
      v21 = v18;
      v22 = v8;
      [v20 waitForSyncTransaction:v22 completion:v23];
    }
  }

  else
  {
    [v5 applyUpdates];
  }
}

- (void)_waitForSyncTransactionCompletion:(id)a3
{
  v4 = a3;
  auxiliaryRenderModel = self->_auxiliaryRenderModel;
  if (auxiliaryRenderModel)
  {
    self->_auxiliaryRenderModel = 0;
    v8 = v4;
    v6 = auxiliaryRenderModel;

    [(TUIRenderModelAuxiliary *)v6 commit];
    v7 = [(TUIFeedView *)self->_feedView transactionCoordinator];
    [v7 waitForSyncTransaction:v6 completion:v8];
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v8 = v4;
    v4[2]();
  }

  v4 = v8;
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
    v6 = [(TUIFeedViewController *)self _effectiveSyncLayoutController];
    v7 = [(TUIRenderModelAuxiliary *)v4 options];
    [v7 syncTimeout];
    v9 = v8;
    v10 = [(TUIRenderModelAuxiliary *)v4 tx];
    v11 = [v6 syncAssertionWithTimeout:v10 transaction:self->_visibilityController feedId:v9];

    v12 = [(TUIFeedView *)self->_feedView transactionCoordinator];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_11987C;
    v16[3] = &unk_25E7C0;
    v16[4] = self;
    v17 = v4;
    v18 = v11;
    v13 = v11;
    v14 = v4;
    [v12 waitForSyncTransaction:v14 completion:v16];

    suspendedViewState = self->_suspendedViewState;
    self->_suspendedViewState = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_needsVisibleStateUpdate = 1;
  ++self->_pendingCoordinatedTransition.needUpdate;
  [v7 transitionDuration];
  self->_pendingCoordinatedTransition.duration = v8;
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    v10 = [v7 timingParameters];
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&self->_pendingCoordinatedTransitionTimingProvider, v10);
  if (v9)
  {
  }

  v11 = [(TUITemplateFactory *)self->_templateFactory imageResourceCache];
  [v11 deferLoadsBegin];

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
  [v7 animateAlongsideTransition:v13 completion:v12];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v10 viewWillAppear:a3];
  if (![(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
  {
    v4 = [(TUIFeedViewController *)self content];

    if (v4)
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

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v12 viewDidAppear:a3];
  self->_pendingViewAppearingTransition.needUpdate = 0;
  [(TUIFeedViewController *)self _updatePriority];
  [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator updateVisible];
  if ([(TUIFeedViewController *)self suspendedDueToMemoryPressure])
  {
    v4 = [(TUIFeedViewController *)self resumeAndRebuildForReason:@"view appeared: recovering from suspend caused by memory pressure"];
    [(TUIFeedViewController *)self setSuspendedDueToMemoryPressure:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_content);
  v6 = [(TUIFeedViewController *)self navigationItem];
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained feedViewControllerNavigationBarItem:self];

    v6 = v7;
  }

  [(TUIFeedOverlayDebugView *)self->_overlayDebugView configureSearchControllerIfNeededForNavigationItem:v6];
  [(TUIFeedViewController *)self _updateUserInterfaceStyleForNavigationItemBottomPalette];
  v8 = [(TUIFeedView *)self->_feedView anchorSet];
  if (v8)
  {
    dropController = self->_dropController;
    v10 = [(TUIFeedViewController *)self scrollView];
    v11 = [v8 computeTriggerStatesInScrollView:v10 axis:2];
    [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v11 updateEvent:0];
  }

  self->_showsVerticalScrollIndicator = 0;
}

- (void)_updateUserInterfaceStyleForNavigationItemBottomPalette
{
  v8 = [(TUIFeedViewController *)self traitCollection];
  v3 = [v8 userInterfaceStyle];
  v4 = [(TUIFeedViewController *)self navigationItem];
  v5 = [v4 _bottomPalette];
  v6 = [v5 contentView];
  v7 = [v6 traitOverrides];
  [v7 setUserInterfaceStyle:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [self->_heightGuessForScrollingOption setViewIsDisappearing:1];
  [self->_heightGuessForScrollingOption unregisterForNotifications];
  v5.receiver = self;
  v5.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v5 viewWillDisappear:v3];
  [(TUIFeedViewController *)self _updatePriority];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v8 viewDidDisappear:a3];
  [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator updateVisible];
  [(TUIFeedViewController *)self _updatePriority];
  [(NSHashTable *)self->_heightLayoutConditions invalidatePendingScrolls];
  v4 = [(TUIFeedView *)self->_feedView anchorSet];
  v5 = v4;
  if (v4)
  {
    dropController = self->_dropController;
    v7 = [v4 feedNotVisibleTriggerStatesForAxis:2];
    [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v7 updateEvent:1];
  }

  self->_showsVerticalScrollIndicator = 1;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = TUIFeedViewController;
  [(TUIFeedViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
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

- (void)setContent:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = *&self->_hiddenPriority;
  os_unfair_lock_unlock(&self->_lock);
  if (([v5 isEqual:v9] & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_hiddenPriority, a3);
    v6 = [*&self->_hiddenPriority currentStackName];
    v7 = [v6 instanceForObserver:self];
    restoreViewState = self->_restoreViewState;
    self->_restoreViewState = v7;

    os_unfair_lock_unlock(&self->_lock);
    [(TUIFeedViewController *)self _setContentNeedsUpdate];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)a3
{
  v3 = a3;
  if ([(TUISyncLayoutController *)self->_syncLayoutController showsVerticalScrollIndicator]!= a3)
  {
    *(&self->_flags + 3) = v3;
    syncLayoutController = self->_syncLayoutController;

    [(TUISyncLayoutController *)syncLayoutController setShowsVerticalScrollIndicator:v3];
  }
}

- (void)setRespectsSafeArea:(BOOL)a3
{
  if (self->_avoidSyncTransactionInViewWillAppear != a3)
  {
    self->_avoidSyncTransactionInViewWillAppear = a3;
    if (self->_environment)
    {
      [(TUIFeedViewController *)self setNeedsEnvironmentUpdate];
    }
  }
}

- (void)setFeedBackgroundColor:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  contextMenuConfigurationProvider = self->_contextMenuConfigurationProvider;
  self->_contextMenuConfigurationProvider = v4;

  [(TUISyncLayoutController *)self->_syncLayoutController setBackgroundColor:v6];
}

- (void)synchronouslyUpdateContent:(id)a3 environment:(id)a4 andWaitForEntry:(id)a5 timeout:(double)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(TUIFeedViewController *)self _effectiveSyncLayoutController];
  v14 = [v13 syncAssertionWithTimeout:0 transaction:self->_visibilityController feedId:a6];

  [(TUIFeedViewController *)self _synchronouslyUpdateContent:v12 environment:v11 andWaitForEntry:v10 timeout:v14 assertion:0 completion:a6];
}

- (void)_synchronouslyUpdateContent:(id)a3 environment:(id)a4 andWaitForEntry:(id)a5 timeout:(double)a6 assertion:(id)a7 completion:(id)a8
{
  v15 = a3;
  v32 = a4;
  v16 = a7;
  v17 = a8;
  v18 = *&self->_hiddenPriority;
  *&self->_hiddenPriority = 0;
  v19 = a5;

  [(TUIFeedViewController *)self loadViewIfNeeded];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_hiddenPriority, a3);
  v20 = [*&self->_hiddenPriority currentStackName];
  v21 = [v20 instanceForObserver:self];
  restoreViewState = self->_restoreViewState;
  self->_restoreViewState = v21;

  self->_contentNeedsUpdate = 0;
  os_unfair_lock_unlock(&self->_lock);
  auxiliaryRenderModel = self->_auxiliaryRenderModel;
  if (!auxiliaryRenderModel)
  {
    [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:0 timeout:1 isLayingOutFeed:0 ignoreWindow:0.0 flags:a6];
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
  if (v32)
  {
    objc_storeStrong(&self->_environment, a4);
  }

  else
  {
    [(TUIFeedViewController *)self _updateEnvironment];
  }

  [(TUIFeedView *)self->_feedView updateWithContent:v15 layoutUpToEntry:v19 environment:self->_environment transaction:v24];

  if (v16 | v17)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_11A8DC;
    v35[3] = &unk_25EA78;
    v36 = v16;
    v37 = v17;
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

- (void)finalizeSynchronousTransaction:(id)a3
{
  if (a3)
  {
    feedView = self->_feedView;
    v5 = a3;
    v6 = [(TUIFeedView *)feedView transactionCoordinator];
    [v6 finalizeSyncTransaction:v5];

    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    self->_auxiliaryRenderModel = 0;

    suspendedViewState = self->_suspendedViewState;
    self->_suspendedViewState = 0;
  }
}

- (void)_updateLayoutIfNeededIgnoringWindow:(BOOL)a3
{
  if (!self->_pauseEnvironmentUpdates && self->_environment && [(TUIFeedViewController *)self _didSizeChangeComparedToEnvironment])
  {
    self->_environmentNeedsUpdate = 1;
  }

  v5 = [(TUIFeedViewController *)self _shouldDisableLayoutDueToAppBeingBackgrounded];
  if (self->_environmentNeedsUpdate && !self->_pauseEnvironmentUpdates)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    if (a3 || (-[TUIFeedViewController viewIfLoaded](self, "viewIfLoaded"), v31 = objc_claimAutoreleasedReturnValue(), [v31 window], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v32))
    {
      self->_environmentNeedsUpdate = 0;
      [(TUIFeedViewController *)self _updateEnvironment];
      v33 = self->_suspendedViewState;
      if (!v33)
      {
        v34 = [(TUIFeedViewController *)self traitCollection];
        v35 = [v34 tui_feedProxyScrollView];
        syncLayoutController = v35;
        if (!v35)
        {
          syncLayoutController = self->_syncLayoutController;
        }

        v37 = syncLayoutController;

        if (([(TUISyncLayoutController *)v37 isDragging]& 1) != 0 || ([(TUISyncLayoutController *)v37 isTracking]& 1) != 0 || ([(TUISyncLayoutController *)v37 isDecelerating]& 1) != 0 || ([(TUISyncLayoutController *)v37 _isAnimatingScroll]& 1) != 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = [(TUIFeedViewController *)self _captureFeedViewState];
        }
      }

      [(TUIFeedViewController *)self _updateHostingGeometryMapIfNeededWithTransaction:self->_auxiliaryRenderModel];
      v38 = [(TUIFeedViewController *)self layoutController];
      [v38 updateWithEnvironment:self->_environment state:v33 withTransaction:self->_auxiliaryRenderModel];
    }
  }

  else if (v5)
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
  v12 = [(TUIFeedViewController *)self scrollView];
  [v12 contentInset];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)v9 updateLiveTransformsIfNecessaryWithViewSize:v29 != 0 contentOffset:v42 contentInsets:v41 safeAreaInsets:v40 hasTabBar:v39, v14, v16, v18, v20, v22, v24, v26, v28];

  if (self->_needsVisibleStateUpdate)
  {
    v30 = self->_syncLayoutController;

    [(TUISyncLayoutController *)v30 saveViewStateForVisibleViews];
  }
}

- (void)_layoutFeedIgnoringWindow:(BOOL)a3
{
  v3 = a3;
  if (!self->_auxiliaryRenderModel)
  {
    v5 = [(TUIFeedViewController *)self content];
    if (v5)
    {
      needUpdate = self->_pendingCoordinatedTransition.needUpdate;

      if (needUpdate)
      {
        [TUIFeedViewController _createSyncTransactionIfNeededAnimated:"_createSyncTransactionIfNeededAnimated:duration:timingParameters:timeout:isLayingOutFeed:ignoreWindow:flags:" duration:self->_pendingCoordinatedTransition.duration > 0.0 timingParameters:self->_pendingCoordinatedTransitionTimingProvider timeout:1 isLayingOutFeed:0 ignoreWindow:6 flags:?];
      }
    }
  }

  [(TUIFeedViewController *)self _updateLayoutIfNeededIgnoringWindow:v3];

  [(TUIFeedViewController *)self _waitForSyncTransaction];
}

- (void)_updateHostingGeometryMapWithTransaction:(id)a3
{
  feedView = self->_feedView;
  renderOverrideProvider = self->_renderOverrideProvider;
  v6 = a3;
  v7 = [(TUIRenderReferenceOverrideProvider *)renderOverrideProvider newGeometryMap];
  [(TUIFeedView *)feedView updateHostingGeometryMap:v7 withTransaction:v6];

  v8 = self->_renderOverrideProvider;

  [(TUIRenderReferenceOverrideProvider *)v8 resetGeometryUpdatedFlag];
}

- (void)_updateHostingGeometryMapIfNeededWithTransaction:(id)a3
{
  v6 = a3;
  if ([(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider geometryUpdatedFlag])
  {
    feedView = self->_feedView;
    v5 = [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider newGeometryMap];
    [(TUIFeedView *)feedView updateHostingGeometryMap:v5 withTransaction:v6];

    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider resetGeometryUpdatedFlag];
  }
}

- (void)flushPendingTransactionsWithTimeout:(double)a3
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
    [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:0 timeout:1 isLayingOutFeed:8 ignoreWindow:0.0 flags:a3];
  }

  [(TUIFeedViewController *)self _layoutFeedIgnoringWindow:1];
}

- (void)flushPendingTransactionsWithCompletion:(id)a3
{
  v7 = a3;
  [(TUIFeedViewController *)self _updateLayoutIfNeededIgnoringWindow:1];
  v4 = +[(TUITransactionOptions *)TUIMutableTransactionOptions];
  [v4 setFlags:8];
  v5 = [TUITransaction transactionWithOptions:v4];
  if (v7)
  {
    [v5 addCompletion:v7 queue:&_dispatch_main_q];
  }

  v6 = [(TUIFeedView *)self->_feedView transactionCoordinator];
  [v6 scheduleLayoutUpdateWithTransaction:v5 block:&stru_261EE0];
}

- (void)pauseUpdates
{
  v2 = [(TUIFeedView *)self->_feedView transactionCoordinator];
  [v2 pauseUpdates];
}

- (void)resumeUpdates
{
  v2 = [(TUIFeedView *)self->_feedView transactionCoordinator];
  [v2 resumeUpdates];
}

- (void)resumeEnvironmentUpdates
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = self->_pauseEnvironmentUpdates - 1;
  self->_pauseEnvironmentUpdates = v3;
  if (!v3)
  {
    [(TUIFeedViewController *)self _createSyncTransactionIfNeededAnimated:0 duration:0 timingParameters:1 timeout:0 isLayingOutFeed:6 ignoreWindow:0.0 flags:*&self->_feedBackgroundColor];
    v4 = [(TUIFeedViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)suspendAndTeardownForReason:(id)a3
{
  v4 = a3;
  v5 = TUIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    visibilityController = self->_visibilityController;
    v13 = 134218242;
    v14 = visibilityController;
    v15 = 2114;
    v16 = v4;
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

  v11 = [(TUIFeedViewController *)self _captureFeedViewState];
  [(TUIFeedViewController *)self setSuspendedViewState:v11];

  [(TUIFeedViewController *)self _teardownFeedView];
  [(TUIFeedViewController *)self _teardownControllers];
  environment = self->_environment;
  self->_environment = 0;

  [(TUIFeedView *)self->_feedView suspendAndTeardownWithTransaction:self->_auxiliaryRenderModel];
}

- (void)clearSuspendedViewState
{
  v3 = [(TUIFeedViewController *)self suspendedViewState];
  v4 = [v3 mutableCopy];

  [v4 setFeedScrollAnchor:0];
  [(TUIFeedViewController *)self setSuspendedViewState:v4];
}

- (id)resumeAndRebuildForReason:(id)a3
{
  v4 = a3;
  v5 = TUIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    visibilityController = self->_visibilityController;
    v19 = 134218242;
    v20 = visibilityController;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[fid:%lu] resume and rebuild for reason: %{public}@", &v19, 0x16u);
  }

  v7 = [(TUIFeedViewController *)self suspendedViewState];

  if (v7)
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
    v10 = [(TUIFeedViewController *)self view];
    [v10 setNeedsLayout];

    [(TUIFeedViewController *)self _updateEnvironment];
    auxiliaryRenderModel = self->_auxiliaryRenderModel;
    if (auxiliaryRenderModel)
    {
      goto LABEL_20;
    }

    if (![(TUIFeedViewController *)self avoidSyncTransactionInViewWillAppear])
    {
      v12 = [(TUIFeedViewController *)self content];
      if (v12)
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

    v7 = v14;
    feedView = self->_feedView;
    environment = self->_environment;
    v17 = [(TUIFeedViewController *)self suspendedViewState];
    [(TUIFeedView *)feedView resumeAndRebuildWithEnvironment:environment state:v17 transaction:v7];

    [(TUIFeedViewController *)self setSuspendedViewState:0];
    [(TUIFeedViewController *)self visibilityProviderIsVisible];
  }

  return v7;
}

- (id)suspendUpdatesUntilContentExceedsHeightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [TUIFeedHeightLayoutCondition alloc];
  v6 = [(TUIFeedViewController *)self viewIfLoaded];
  v7 = [(TUIFeedHeightLayoutCondition *)v5 initWithView:v6 completion:v4];

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
  v3 = [(TUIFeedViewController *)self viewIfLoaded];
  if (v3)
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

          [*(*(&v9 + 1) + 8 * v8) updateWithView:{v3, v9}];
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

- (void)suspendUpdatesUntilEndOfTransaction:(id)a3
{
  v4 = a3;
  v5 = [(TUIFeedBaseLayoutCondition *)[TUIFeedSuspendLayoutUpdateCondition alloc] initWithCompletion:0];
  if (!v4)
  {
    v4 = +[TUITransaction currentOrImplicitTransaction];
  }

  [(TUIFeedView *)self->_feedView suspendUpdatesUntilMeetingLayoutCondition:v5];
  v6 = [(TUIFeedView *)self->_feedView transactionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_11BA84;
  v8[3] = &unk_25EB80;
  v9 = v5;
  v7 = v5;
  [v6 scheduleLayoutUpdateWithTransaction:v4 block:v8];
}

- (id)suspendLayout
{
  v3 = [(TUIFeedBaseLayoutCondition *)[TUIFeedSuspendLayoutCondition alloc] initWithCompletion:0];
  [(TUIFeedView *)self->_feedView suspendLayoutsUntilMeetingLayoutCondition:v3];

  return v3;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController];
  v4 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [v4 updateVisibleBounds];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController];
  v4 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [v4 updateVisibleBounds];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController, a4];
  v5 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [v5 updateVisibleBounds];
}

- (void)scrollViewDidScroll:(id)a3
{
  v50 = a3;
  v4 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [v4 updateVisibleBounds];

  [(TUIHostingController *)self->_hostingController updatedVisibleBoundsOfScrollView:self->_syncLayoutController];
  [(NSHashTable *)self->_heightLayoutConditions invalidatePendingScrolls];
  v5 = [(TUIFeedView *)self->_feedView anchorSet];
  v6 = v5;
  if (v5)
  {
    dropController = self->_dropController;
    v8 = [v5 computeTriggerStatesInScrollView:v50 axis:2];
    [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v8 updateEvent:3];
  }

  v9 = [(TUIFeedViewController *)self navigationController];
  v10 = [v9 topViewController];

  if (v10 == self)
  {
    [(TUIFeedViewController *)self updateNavigationBarOpacity];
  }

  syncLayoutController = self->_syncLayoutController;
  [(TUIFeedViewController *)self _viewSize];
  v48 = v13;
  v49 = v12;
  [v50 contentOffset];
  v46 = v15;
  v47 = v14;
  v16 = [(TUIFeedViewController *)self scrollView];
  [v16 contentInset];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v50 safeAreaInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)syncLayoutController updateLiveTransformsIfNecessaryWithViewSize:v33 != 0 contentOffset:v49 contentInsets:v48 safeAreaInsets:v47 hasTabBar:v46, v18, v20, v22, v24, v26, v28, v30, v32];

  WeakRetained = objc_loadWeakRetained(&self->_content);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained feedViewControllerDidScroll:self];
  }

  linkEntityController = self->_linkEntityController;
  v36 = [(TUISyncLayoutController *)self->_syncLayoutController renderModel];
  [(TUISyncLayoutController *)self->_syncLayoutController visibleBounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  [(TUILinkEntityController *)linkEntityController updatePrioritiesForRenderModel:v36 visibleRect:v45 viewState:v38, v40, v42, v44];
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
  v8 = [(TUIFeedViewController *)self scrollView];
  [v8 contentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)syncLayoutController updateLiveTransformsIfNecessaryWithViewSize:v25 != 0 contentOffset:v29 contentInsets:v28 safeAreaInsets:v27 hasTabBar:v26, v10, v12, v14, v16, v18, v20, v22, v24];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext setNeedsLayout];
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext layoutIfNeeded];
}

- (void)setNavBarBackgroundOpacity:(double)a3 manualScrollEdgeAppearanceEnabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(TUIFeedViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 _setTitleOpacity:a3];

  if ((_UISolariumEnabled() & 1) == 0 && v4)
  {
    v9 = [(TUIFeedViewController *)self navigationItem];
    [v9 _setManualScrollEdgeAppearanceEnabled:1];

    v10 = [(TUIFeedViewController *)self navigationItem];
    [v10 _setManualScrollEdgeAppearanceProgress:a3];
  }
}

- (BOOL)runningInExtension
{
  v2 = [(TUIFeedViewController *)self extensionContext];
  v3 = v2 != 0;

  return v3;
}

- (CGSize)_viewSize
{
  v2 = [(TUIFeedViewController *)self viewIfLoaded];
  [v2 bounds];
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
    v2 = [(TUIFeedViewController *)self viewIfLoaded];
    [v2 safeAreaInsets];
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
  v2 = [(TUIFeedViewController *)self viewIfLoaded];
  v3 = [v2 window];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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

  v4 = self;
  v5 = v4;
  do
  {
    v6 = v4;
    v4 = v5;

    v7 = [(TUIFeedViewController *)v4 parentViewController];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(TUIFeedViewController *)v4 presentingViewController];
    }

    v5 = v9;
  }

  while (v5);
  if (v4)
  {
    while (1)
    {
      v10 = [(TUIFeedViewController *)v4 viewIfLoaded];
      v11 = [v10 window];
      if (v11)
      {
        break;
      }

      v12 = [(TUIFeedViewController *)v4 presentedViewController];

      if (v12)
      {
        v13 = [(TUIFeedViewController *)v4 presentedViewController];

        v4 = v13;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  v14 = [(TUIFeedViewController *)v4 viewIfLoaded];
  v15 = [v14 window];
  v16 = [v15 windowScene];

  if (v16)
  {
    if ([v16 activationState])
    {
      v3 = [v16 activationState] != &dword_0 + 1;
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
  v4 = [(TUIFeedViewController *)self layoutController];
  v3 = [(TUIFeedViewController *)self content];
  [v4 updateWithContent:v3 transaction:0];
}

- (id)_renderModelForIndexPath:(id)a3
{
  v4 = [a3 section];

  return [(TUIFeedViewController *)self _renderModelForSection:v4];
}

- (id)_renderModelForSection:(unint64_t)a3
{
  v4 = [(TUIFeedViewController *)self _renderModel];
  v5 = [v4 sections];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [v4 sections];
    v8 = [v7 objectAtIndexedSubscript:a3];

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

- (BOOL)_handleNativePressAction:(id)a3 arguments:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TUIDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    visibilityController = self->_visibilityController;
    v11 = 134218498;
    v12 = visibilityController;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[fid:%lu] handling press: %@ with arguments: %@", &v11, 0x20u);
  }

  return 0;
}

- (void)_updateDatesCollectorInitialResourcesRenderedDate
{
  v2 = [(TUIFeedViewController *)self layoutController];
  [v2 statRecordInitialResourcesRenderedDate];
}

- (UIEdgeInsets)contentInsetsForScrollingToRectWithContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(TUIFeedViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TUIFeedViewController *)self delegate];
    [v10 feedViewController:self contentInsetsForScrollingToRectWithContentInsets:{top, left, bottom, right}];
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

- (void)updateHostingMap:(id)a3 controller:(id)a4
{
  v9 = a3;
  feedView = self->_feedView;
  v7 = a4;
  v8 = [(TUIFeedView *)feedView updateController];

  if (v8 == v7)
  {
    [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider updateHostingMap:v9];
  }
}

- (void)applyUpdate:(id)a3 controller:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = TUIViewUpdateLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_19B900(self, v8, v11);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12 = [(TUIFeedView *)self->_feedView updateController];

  if (v12 != v10)
  {
    goto LABEL_4;
  }

  v13 = [v8 to];
  [(_TUIFeedViewControllerQueueContext *)self->_queueContext setRenderModel:v13];

  WeakRetained = [v8 to];
  v15 = [WeakRetained content];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v8 to];
  v18 = [v17 sections];
  if ([v18 count])
  {
  }

  else
  {
    v19 = [v8 to];
    v20 = [v19 info];
    v21 = [v20 objectForKeyedSubscript:@"TUIRenderInfoKeyIsFinal"];
    v58 = [v21 BOOLValue];

    if ((v58 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v22 = [v8 to];
  [v22 size];
  v24 = v23;
  v26 = v25;

  v27 = [v8 from];
  if (!v27 || (v28 = v27, [v8 from], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "size"), v31 = v30, v33 = v32, v29, v28, v31 != v24) || v33 != v26)
  {
    if (*&self->_delegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_content);
      [WeakRetained feedViewController:self willTransitionToContentHeight:v26];
LABEL_15:
    }
  }

LABEL_16:
  v34 = [v8 to];
  v35 = [v34 content];
  if (v35)
  {
    v36 = v35;
    v37 = [v8 to];
    v38 = [v37 info];
    v39 = [v38 objectForKeyedSubscript:@"TUIRenderInfoKeyIsFinal"];
    v40 = [v39 BOOLValue];

    if (v40)
    {
      [(TUISyncLayoutController *)self->_syncLayoutController setContentHeightFactorForScrollingGuess:NAN];
    }

    if (!v8)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_4;
    }
  }

  if (!self->_syncLayoutController)
  {
LABEL_4:
    if (v9)
    {
      v9[2](v9);
    }

    goto LABEL_29;
  }

  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider beginViewUpdates];
  [v8 applyToFeedView:self->_syncLayoutController completion:v9];
  [(TUIRenderReferenceOverrideProvider *)self->_renderOverrideProvider endViewUpdates];
  if ([(TUIFeedViewController *)self isContentVisible]&& !self->_showsVerticalScrollIndicator)
  {
    v41 = [v8 to];
    v42 = [v41 anchorSet];

    if (v42)
    {
      dropController = self->_dropController;
      v44 = [(TUIFeedViewController *)self scrollView];
      v45 = [v42 computeTriggerStatesInScrollView:v44 axis:2];
      [(TUIDropController *)dropController updateTriggerStatesWithNewStates:v45 updateEvent:2];
    }
  }

  [(NSHashTable *)self->_heightLayoutConditions attemptPendingScrolls];
  linkEntityController = self->_linkEntityController;
  v47 = [(TUIFeedViewController *)self _renderModel];
  [(TUISyncLayoutController *)self->_syncLayoutController visibleBounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  [(TUILinkEntityController *)linkEntityController updatePrioritiesForRenderModel:v47 visibleRect:v56 viewState:v49, v51, v53, v55];

  v57 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [v57 updateSections];

LABEL_29:
}

- (void)applyUpdate:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_11CD10;
  v4[3] = &unk_25DCA0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  TUIDispatchAsyncViaRunLoop(v4);
}

- (void)_updateNavigationBarItems
{
  WeakRetained = objc_loadWeakRetained(&self->_content);
  v3 = [(TUIFeedViewController *)self navigationItem];
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained feedViewControllerNavigationBarItem:self];

    v3 = v4;
  }

  [(TUIFeedOverlayDebugView *)self->_overlayDebugView updateWithRenderModel:self->_visibleOverride factory:self triggerManager:self->_dropController promoteAccessory:[(TUIFeedViewController *)self shouldPromoteLargeTitleAccessoryViewButtonsForAccessibility]];
  self->_updatingNavigationBarItems = 1;
  overlayDebugView = self->_overlayDebugView;
  v6 = [(TUIFeedViewController *)self feedView];
  v7 = [(TUIFeedViewController *)self extraLeftItems];
  v8 = [(TUIFeedViewController *)self extraRightItems];
  v9 = [(TUIFeedOverlayDebugView *)overlayDebugView configureNavigationItem:v3 scrollView:v6 extraLeftItems:v7 extraRightItems:v8];

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
    v5 = [(TUIFeedView *)self->_feedView anchorSet];
    v6 = [(TUIFeedViewController *)self scrollView];
    [(TUIFeedOverlayDebugView *)overlayDebugView navigationBarBackgroundOpacity:dropController anchors:v5 scrollView:v6];
    v8 = v7;

    [(TUIFeedViewController *)self setNavBarBackgroundOpacity:1 manualScrollEdgeAppearanceEnabled:v8];
  }
}

- (void)_updateNavigationItemTriggerObservanceForCurrentRenderModel:(id)a3 previous:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(TUIFeedViewController *)self _removeTriggerObservationForRenderModel:v7];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [v6 triggers];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(TUIDropController *)self->_dropController addObserver:self forTrigger:*(*(&v13 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_removeTriggerObservationForRenderModel:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 triggers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [(TUIDropController *)self->_dropController removeObserver:self forTrigger:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)handleTrigger:(id)a3 didChangeState:(unint64_t)a4 updateEvent:(unint64_t)a5
{
  if (a5 <= 3 && a5 != 2 && !self->_updatingNavigationBarItems)
  {
    [(TUIFeedViewController *)self _updateNavigationBarItems:a3];
  }
}

- (void)feedLayoutController:(id)a3 updateStats:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(TUISyncLayoutController *)self->_syncLayoutController setStats:v5];
}

- (void)feedLayoutControllerAllContentReady:(id)a3
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewControllerAllContentReady:self];
  }
}

- (void)feedLayoutControllerInitialContentReady:(id)a3
{
  if ((*&self->_delegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewControllerInitialContentReady:self];
  }
}

- (void)feedLayoutController:(id)a3 axModelSections:(id)a4 renderModelCollection:(id)a5 renderModelSections:(id)a6
{
  v62 = a3;
  v66 = a4;
  v65 = a5;
  v67 = a6;
  if (!self->_topLevelAXElement)
  {
    v10 = objc_opt_new();
    v11 = objc_opt_new();
    [v11 setScreenOffsetProvider:self];
    [v11 setSectionOffset:{CGPointZero.x, CGPointZero.y}];
    v12 = [TUIAXElement alloc];
    v13 = [(TUIFeedViewController *)self view];
    v14 = [(TUIAXElement *)v12 initWithEvaluationContext:v11 accessibilityContainer:v13];
    topLevelAXElement = self->_topLevelAXElement;
    self->_topLevelAXElement = v14;

    [(TUIAXElement *)self->_topLevelAXElement updateWithAXModel:v10];
  }

  v16 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v63 = self;
  v17 = [(TUIAXElement *)self->_topLevelAXElement accessibilityElements];
  v18 = [v17 countByEnumeratingWithState:&v68 objects:v73 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v68 + 1) + 8 * i);
        v23 = objc_opt_class();
        v24 = TUIDynamicCast(v23, v22);
        v25 = [v24 context];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 sectionIndex]);
        [v16 setObject:v24 forKeyedSubscript:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v19);
  }

  v27 = v66;
  v28 = [v66 count];
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
      v36 = [v67 objectForKeyedSubscript:v35];

      v37 = [v27 objectAtIndexedSubscript:v33];
      v38 = [NSNumber numberWithUnsignedInteger:v33];
      v39 = [v16 objectForKeyedSubscript:v38];

      if (([v37 hidden] & 1) == 0)
      {
        if (v39)
        {
          v40 = [(TUIAXElement *)v39 context];
          [v40 setSectionOffset:{CGPointZero.x, v34}];

          [v65 size];
          v42 = v41;
          v43 = [(TUIAXElement *)v39 context];
          [v43 setTotalContentHeight:v42];

          v44 = [(TUIAXElement *)v39 context];
          [v44 setRenderModelSection:v36];

          [(TUIAXElement *)v39 updateWithAXModel:v37];
        }

        else
        {
          v45 = objc_opt_new();
          [v45 setScreenOffsetProvider:v63];
          [v45 setSectionOffset:{CGPointZero.x, v34}];
          [v65 size];
          [v45 setTotalContentHeight:v46];
          [v45 setSectionIndex:v33];
          [v45 setRenderModelSection:v36];
          v39 = [[TUIAXElement alloc] initWithEvaluationContext:v45 accessibilityContainer:v63->_topLevelAXElement];
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
        v27 = v66;
      }

      ++v33;
    }

    while (v28 != v33);
  }

  v50 = [v64 copy];
  [(TUIAXElement *)v63->_topLevelAXElement setChildren:v50];

  v51 = [(TUIAXElement *)v63->_topLevelAXElement axModel];
  [v51 setAccessibilityFrameRelativeToScrollAncestor:{x, y, width, height}];

  v52 = [(TUIFeedViewController *)v63 view];
  [(TUIAXElement *)v63->_topLevelAXElement setAccessibilityContainer:v52];

  v53 = objc_opt_class();
  v54 = [(TUIFeedViewController *)v63 view];
  v55 = [v54 accessibilityElements];
  v56 = [v55 firstObject];
  v57 = TUIDynamicCast(v53, v56);

  v58 = [(TUIAXElement *)v63->_topLevelAXElement children];
  if ([v58 count])
  {
    v59 = v63->_topLevelAXElement;

    if (v57 != v59)
    {
      v72 = v63->_topLevelAXElement;
      v60 = [NSArray arrayWithObjects:&v72 count:1];
      v61 = [(TUIFeedViewController *)v63 view];
      [v61 setAccessibilityElements:v60];

      v27 = v66;
      if ([(TUIFeedViewController *)v63 visibilityProviderIsVisible])
      {
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v63->_topLevelAXElement);
      }
    }
  }

  else
  {
  }
}

- (void)feedLayoutController:(id)a3 willTransitionToLayoutState:(unint64_t)a4
{
  if ((*&self->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewController:self willTransitionToLayoutState:a4];
  }
}

- (void)feedLayoutController:(id)a3 didTransitionToLayoutState:(unint64_t)a4
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_content);
    [WeakRetained feedViewController:self didTransitionToLayoutState:a4];
  }
}

- (void)scrollToRefId:(id)a3 refInstance:(id)a4 onEntry:(id)a5 animated:(BOOL)a6 skipVoiceOverFocus:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v12 uuid];
  v16 = [v12 uid];

  v18 = [TUIRenderReferenceQuery queryWithUUID:v15 uid:v16 refId:v14 refInstance:v13];

  [(NSHashTable *)self->_heightLayoutConditions addScrollQuery:v18 animated:v8 skipVoiceOverFocus:v7];
  [(NSHashTable *)self->_heightLayoutConditions attemptPendingScrolls];
  if (_AXSFullKeyboardAccessEnabled())
  {
    v17 = [(TUIFeedViewController *)self scrollView];
    _UIAXAssignFocusToItem();
  }
}

- (id)renderReferencesMatchingQuery:(id)a3
{
  syncLayoutController = self->_syncLayoutController;
  v5 = a3;
  [(TUISyncLayoutController *)syncLayoutController saveViewStateForVisibleViews];
  v6 = [(TUISyncLayoutController *)self->_syncLayoutController currentViewState];
  v7 = [TUIRenderReferenceCollector referenceCollectorWithViewState:v6];

  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  v9 = v8;
  v11 = v10;
  v12 = [(TUISyncLayoutController *)self->_syncLayoutController renderModel];
  CGAffineTransformMakeTranslation(&v15, -v9, -v11);
  [v12 appendReferencesToCollector:v7 transform:&v15 query:v5 liveTransformResolver:self->_syncLayoutController];

  v13 = [v7 renderReferences];

  return v13;
}

- (id)navigationBarItemMatchingQuery:(id)a3
{
  overlayDebugView = self->_overlayDebugView;
  if (overlayDebugView)
  {
    overlayDebugView = [overlayDebugView navigationBarItemMatchingQuery:a3];
    v3 = vars8;
  }

  return overlayDebugView;
}

- (id)imageResourcesMatchingQuery:(id)a3
{
  v3 = [(TUIFeedViewController *)self renderReferencesMatchingQuery:a3];
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

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  syncLayoutController = self->_syncLayoutController;
  [(TUIFeedViewController *)self _viewSize];
  v32 = v6;
  v33 = v5;
  [(TUISyncLayoutController *)self->_syncLayoutController contentOffset];
  v30 = v8;
  v31 = v7;
  v9 = [(TUIFeedViewController *)self scrollView];
  [v9 contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(TUISyncLayoutController *)self->_syncLayoutController safeAreaInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(TUIFeedViewController *)self tabBarController];
  [(TUISyncLayoutController *)syncLayoutController updateLiveTransformsIfNecessaryWithViewSize:v26 != 0 contentOffset:v33 contentInsets:v32 safeAreaInsets:v31 hasTabBar:v30, v11, v13, v15, v17, v19, v21, v23, v25];

  v27 = [(TUIEmbeddedScrollViewCoordinator *)self->_embeddedScrollViewCoordinator rootCollector];
  [v27 updateVisibleBounds];

  hostingController = self->_hostingController;
  v29 = self->_syncLayoutController;

  [(TUIHostingController *)hostingController updatedVisibleBoundsOfScrollView:v29];
}

- (id)waitForVisibleImageResourcesToLoadAssertionWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
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
  v12 = [(TUIFeedAutoScrollController *)self->_autoScrollController userInteractiveCallbackQueue];
  v13 = [v11 notReadyAssertionWithTimeout:v12 queue:a3];

  v14 = +[_TUIRunLoopWaiter sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_11E298;
  v20[3] = &unk_261F80;
  v20[4] = self;
  v15 = v13;
  v22 = v6;
  v23 = v8;
  v21 = v15;
  v16 = v6;
  [v14 addPreCommitBlock:v20];

  v17 = v22;
  v18 = v15;

  return v15;
}

- (void)notifyWhenVisibleImageResourcesAreLoadedWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(TUISyncLayoutController *)self->_syncLayoutController saveViewStateForVisibleViews];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_11E79C;
  v15[4] = sub_11E7C8;
  v16 = objc_retainBlock(v6);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_11E7D0;
  v14[3] = &unk_2607A8;
  v14[4] = v15;
  v7 = [[_TUIRunLoopAssertion alloc] initWithCompletion:v14];
  v8 = dispatch_time(0, (a3 * 1000000000.0));
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
    v4 = [(TUIFeedViewController *)self parentViewController];
    if (v4 || ([(TUIFeedViewController *)self presentingViewController], v5 = objc_claimAutoreleasedReturnValue(), 0, (v4 = v5) != 0))
    {
      while (1)
      {
        if (objc_opt_respondsToSelector())
        {
          v6 = [v4 syncLayoutController];
          if (v6)
          {
            break;
          }
        }

        v7 = [v4 parentViewController];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = [v4 presentingViewController];
        }

        v10 = v9;

        v4 = v10;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v14 = self->_linkEntityTracker;
      self->_linkEntityTracker = v6;
      v13 = v6;
    }

    else
    {
LABEL_10:
      WeakRetained = objc_loadWeakRetained(&self->_content);
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        v4 = 0;
LABEL_15:

        linkEntityTracker = self->_linkEntityTracker;
        goto LABEL_16;
      }

      v13 = objc_loadWeakRetained(&self->_content);
      [(TUIVisibilityTracker *)v13 feedViewControllerNeedsSyncLayoutController:self];
      v4 = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return linkEntityTracker;
}

- (void)addRenderOverride:(id)a3 animated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_11ED94;
    v10[3] = &unk_25DCA0;
    v10[4] = self;
    v11 = v8;
    [UIView animateWithDuration:v10 animations:a5];
  }

  else
  {
    [self->_feedId.uniqueIdentifier addRenderOverride:v8];
  }
}

- (void)removeRenderOverride:(id)a3 animated:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_11EED0;
    v10[3] = &unk_25DCA0;
    v10[4] = self;
    v11 = v8;
    [UIView animateWithDuration:v10 animations:a5];
  }

  else
  {
    [self->_feedId.uniqueIdentifier removeRenderOverride:v8];
  }
}

- (id)viewFactoryDequeueReusableSubviewWithReuseIdentifier:(id)a3 indexPath:(id)a4 host:(id)a5
{
  syncLayoutController = self->_syncLayoutController;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUISyncLayoutController *)syncLayoutController viewFactory];
  v12 = [v11 viewFactoryDequeueReusableSubviewWithReuseIdentifier:v10 indexPath:v9 host:v8];

  return v12;
}

- (void)viewFactoryPrepareToReuseHost:(id)a3
{
  feedContentLayoutStackNameInstance = self->_feedContentLayoutStackNameInstance;
  v4 = a3;
  v5 = [(TUIDynamicInstance *)feedContentLayoutStackNameInstance subviewPool];
  [v5 prepareToReuseHost:v4];
}

- (void)viewFactoryReuseSubviews:(id)a3 host:(id)a4
{
  feedContentLayoutStackNameInstance = self->_feedContentLayoutStackNameInstance;
  v6 = a4;
  v7 = a3;
  v8 = [(TUIDynamicInstance *)feedContentLayoutStackNameInstance subviewPool];
  [v8 reuseSubviews:v7 host:v6];
}

- (BOOL)handleActionForObject:(id)a3 withName:(id)a4 arguments:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = TUIDynamicCast(v11, v10);

  v13 = TUIDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    visibilityController = self->_visibilityController;
    v18 = 134218498;
    v19 = visibilityController;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[fid:%lu] handling action: %@: parameters: %@", &v18, 0x20u);
  }

  v15 = [v12 handleBehaviorWithName:v8 arguments:v9];
  if ((v15 & 1) == 0)
  {
    v16 = TUIDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_19BA30(self, v8, v16);
    }
  }

  return v15;
}

- (id)dragItemForObject:(id)a3 withName:(id)a4 arguments:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = TUIDynamicCast(v11, v10);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_11F368;
  v16[3] = &unk_261FA8;
  v16[4] = self;
  v13 = objc_retainBlock(v16);
  v14 = [v12 dragItemForFeedEntry:v10 name:v9 arguments:v8 imageResourceBlock:v13];

  return v14;
}

- (void)didBeginDraggingView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TUIPlatformAncestorOfClass(v3);
  [v4 suspendReuseOfView:v3];
}

- (void)didEndDraggingView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TUIPlatformAncestorOfClass(v3);
  [v4 resumeReuseOfView:v3];
}

- (void)performDropWithSession:(id)a3 actionObject:(id)a4 behavior:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = TUIDynamicCast(v10, v8);

  [v11 performDropWithSession:v9 behavior:v7];
}

- (BOOL)canHandleDropSession:(id)a3 actionObject:(id)a4 behavior:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v11 = TUIDynamicCast(v10, v8);

  LOBYTE(v8) = [v11 canHandleDropSession:v9 behavior:v7];
  return v8;
}

- (void)impressionController:(id)a3 didUpdateSnapshot:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_11F6DC;
  v5[3] = &unk_25DCA0;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  TUIDispatchAsyncViaRunLoop(v5);
}

- (id)visibilityProviderHostingLayer
{
  v2 = [(TUIFeedViewController *)self scrollView];
  v3 = [v2 layer];

  return v3;
}

- (id)visibilityProviderWindowLayer
{
  v2 = [(TUIFeedViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 layer];

  return v4;
}

- (CGRect)visibilityProviderVisibleBounds
{
  v3 = [(TUIFeedViewController *)self scrollView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(TUIFeedViewController *)self scrollView];
  [v12 adjustedContentInset];
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
  v2 = [(TUIFeedViewController *)self _renderModel];
  v3 = [v2 sections];

  return v3;
}

- (BOOL)visibilityProviderIsVisible
{
  v3 = [(TUIFeedViewController *)self viewIfLoaded];
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 window];

    if (v4)
    {
      if ((*&self->_delegateFlags & 0x20) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_content);
        v4 = [WeakRetained feedViewControllerIsConsideredVisible:self];
      }

      else
      {
        v4 = &dword_0 + 1;
      }
    }
  }

  [(TUIHostingController *)self->_hostingController setVisible:v4];

  return v4;
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

- (CGRect)screenCoordinatesForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(TUIFeedViewController *)self scrollView];
  [v7 convertRect:0 toView:{x, y, width, height}];
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

- (void)imagePrefetchControllerDidStartLoadingInitialResources:(id)a3
{
  v3 = [(TUIFeedViewController *)self layoutController];
  [v3 statRecordResourcesStartLoadingDate];
}

- (void)imagePrefetchControllerDidLoadAllResources:(id)a3
{
  [(TUIFeedViewController *)self _updateDatesCollectorInitialResourcesRenderedDate];
  v4 = [(TUIFeedViewController *)self layoutController];
  [v4 statRecordResourcesLoadedDate];
}

- (void)reportLargeLayer:(id)a3 renderModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  if (v8 != objc_opt_class())
  {
    v9 = TUIDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      visibilityController = self->_visibilityController;
      [v6 bounds];
      v36.width = v11;
      v36.height = v12;
      v13 = NSStringFromCGSize(v36);
      v14 = [(TUIFeedViewController *)self content];
      *buf = 134219010;
      v27 = visibilityController;
      v28 = 2114;
      v29 = v6;
      v30 = 2114;
      v31 = v13;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v14;
      _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[fid:%lu] unexpected large layer used: layer=%{public}@ size=%{public}@ renderModel=%{public}@ content=%{public}@", buf, 0x34u);
    }

    if (_TUIDeviceHasInternalInstall())
    {
      v15 = [NSException alloc];
      v23 = @"layer";
      v16 = v6;
      if (!v6)
      {
        v16 = +[NSNull null];
      }

      v25[0] = v16;
      v24 = @"renderModel";
      v17 = v7;
      if (!v7)
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

      if (!v7)
      {
      }

      if (!v6)
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

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v8 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = self->_restoreViewState;
  os_unfair_lock_unlock(&self->_lock);

  if (v7 == v6)
  {
    [(TUIFeedView *)self->_feedView layoutIfNeededWithTransaction:v8];
  }
}

- (BOOL)shouldPromoteLargeTitleAccessoryViewButtonsForAccessibility
{
  v2 = [(TUIFeedViewController *)self navigationController];
  v3 = [v2 navigationBar];
  if ([v3 prefersLargeTitles])
  {
    v4 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)resolveViewWithPath:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v7)
        {
          if (v9)
          {
            v12 = v11;
          }

          else
          {
            v12 = [*(*(&v16 + 1) + 8 * i) tui_identifierWithoutUUID];
          }

          v13 = v12;
          v14 = [v7 descendentViewWithIdentifier:{v12, v16}];

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

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setPerformanceIdentifier:(id)a3
{
  v4 = a3;
  manager = self->_manager;
  if (manager != v4)
  {
    v10 = v4;
    v6 = [(TUIManager *)manager isEqual:v4];
    v4 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [(TUIManager *)v10 copy];
      v8 = self->_manager;
      self->_manager = v7;

      v9 = [(TUIFeedView *)self->_feedView transactionCoordinator];
      [v9 updatePerformanceIdentifier:v10];

      v4 = v10;
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