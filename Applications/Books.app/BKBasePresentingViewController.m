@interface BKBasePresentingViewController
+ (id)_lastOpenedBookWithKey:(id)a3;
+ (id)_successfullyOpenedBookWithKey:(id)a3 successKey:(id)a4 deleteOnFailure:(BOOL)a5;
+ (id)animatorForAsset:(id)a3 isCurrentBook:(BOOL)a4 opening:(BOOL)a5 largeCover:(BOOL)a6 skipZoom:(BOOL)a7;
+ (id)defaultAnimatorForOpening:(BOOL)a3 skipReveal:(BOOL)a4;
+ (id)futureViewControllerWithAssetIdentifier:(id)a3 libraryAssetProvider:(id)a4 options:(id)a5;
+ (id)holdAnimationAssertion;
+ (void)_markBookAsCurrent:(id)a3;
+ (void)clearLastKnownSuccessfullyOpenBookID;
+ (void)clearLastKnownSuccessfullyOpenedCurrentBookID;
+ (void)initialize;
+ (void)markCarPlayBackgroundBookAsCurrent:(id)a3;
+ (void)startingOpenOfMinifedCurrentBook:(id)a3;
- (BKAssetPresentingViewControllerHoldAnimationAssertion)holdAnimationAssertion;
- (BKBasePresentingViewController)initWithAssetIdentifier:(id)a3 assetViewController:(id)a4 helper:(id)a5 libraryAssetProvider:(id)a6;
- (BKBasePresentingViewController)initWithAssetIdentifier:(id)a3 placeholderViewController:(id)a4 holdAnimationAssertion:(id)a5 libraryAssetProvider:(id)a6;
- (BKContentOpenAnimating)assetPresenterAnimator;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKMinifiedPresenting)minifiedPresenter;
- (BOOL)_isAudiobook;
- (BOOL)_isHostedInAuxiliaryScene;
- (BOOL)_shouldTrackReadingSession;
- (BOOL)assetPresenterKeepOpenWithoutBundle;
- (BOOL)assetViewController:(id)a3 requestClose:(BOOL)a4 finishedConsuming:(BOOL)a5 error:(id)a6 withErrorBlock:(id)a7;
- (BOOL)assetViewController:(id)a3 requestOpenURL:(id)a4 likelyUserInitiated:(BOOL)a5;
- (BOOL)assetViewControllerIsCurrentBook:(id)a3;
- (BOOL)assetViewControllerIsPresentingSupplementalContent:(id)a3;
- (BOOL)canUpdateLibraryBarButtonItem:(id)a3 withOldString:(id)a4;
- (BOOL)needTOCEntriesForOrdinal:(int64_t)a3;
- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)a3;
- (BOOL)prefersStatusBarHidden;
- (BOOL)readingStatisticsEnabled;
- (BOOL)shouldCloseDueToAssetDeletion;
- (CGRect)liveResizeViewOriginalFrame;
- (NSString)assetPresenterAssetID;
- (NSString)assetPresenterPermanentOrTemporaryAssetID;
- (double)_transitionDurationForLiveResizeOfViewController:(id)a3;
- (id)_buyButton;
- (id)_closeBarButtonTitle;
- (id)_fetchSampleProfileFuture;
- (id)_newBarButtonItemWithBuyButton;
- (id)_sceneControllerCurrentlyHostingAssetPresenter;
- (id)analyticsAssetPropertyProviderForAssetViewController:(id)a3 fromSourceView:(id)a4;
- (id)analyticsContentDataForAssetViewController:(id)a3 contentSubType:(id)a4 tracker:(id)a5;
- (id)assetPresenterCoverAnimationSource;
- (id)assetPresenterCoverImage;
- (id)assetPresenterCoverShadowImage;
- (id)assetViewControllerBuyButtonItem:(id)a3 isSample:(BOOL)a4 isPreorder:(BOOL)a5 storeID:(id)a6;
- (id)assetViewControllerMinifiedBarButtonItem:(id)a3;
- (id)backItemForCoverView;
- (id)bc_childCardPresentingViewController;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)contextMenuWithAssetViewController:(id)a3 sourceView:(id)a4;
- (id)dataModelWithSourceView:(id)a3;
- (id)libraryButtonItemForViewController:(id)a3 selector:(SEL)a4;
- (id)traitCollection;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidBecomeActiveNotification:(id)a3;
- (void)_applicationWillResignActiveNotification:(id)a3;
- (void)_assetPresenterDidEnterBackground;
- (void)_assetPresenterWillEnterForeground;
- (void)_beginReadingSessionForEventType:(unint64_t)a3;
- (void)_cancelInteractionTimerIfNeeded;
- (void)_cancelSuccessfullyOpenedTimerIfNeeded;
- (void)_clearCacheForBook:(id)a3;
- (void)_clearLiveResizeViews;
- (void)_commonInitWithIdentifier:(id)a3 libraryAssetProvider:(id)a4;
- (void)_configureBuyButton:(id)a3;
- (void)_configureBuyButtonForPricing:(id)a3 profile:(id)a4;
- (void)_confirmBookSuccessfullyOpened;
- (void)_didEnterFullScreen:(id)a3;
- (void)_didExitFullScreen:(id)a3;
- (void)_didOpenBookAnimated:(BOOL)a3;
- (void)_downloadStatusNotification:(id)a3;
- (void)_endReadingSessionForEventType:(unint64_t)a3 withCompletion:(id)a4;
- (void)_fetchProfileForStoreID:(id)a3 completion:(id)a4;
- (void)_finalizeAssetVCState;
- (void)_handleClosingCleanup:(BOOL)a3;
- (void)_libraryOwnershipNotification:(id)a3;
- (void)_loadAssetVC;
- (void)_loadWithAssetViewController:(id)a3 helper:(id)a4;
- (void)_maybeUpdateSuccessfullyOpenedCurrentBook:(id)a3;
- (void)_refreshReadingState;
- (void)_reloadAssetCloseViewController:(BOOL)a3;
- (void)_sendDeferredURLOpenRequests;
- (void)_startBookSuccessfullyOpenedTimer;
- (void)_startInteractionTimer;
- (void)_updateAssetStateAndDownloadStatus:(id)a3;
- (void)_updateBuyButtonProgressIfNeeded;
- (void)_updateLastOpenBookWithAssetID:(id)a3;
- (void)_updateLibraryAssetFromMetadataWithURL:(id)a3 completion:(id)a4;
- (void)_waitForOngoingMigrationAttemptToFinish:(id)a3 completion:(id)a4;
- (void)_willEnterFullScreen:(id)a3;
- (void)_willExitFullScreen:(id)a3;
- (void)_willOpenBookAnimated:(BOOL)a3;
- (void)addTOCEntries:(id)a3 ordinal:(int64_t)a4 completion:(id)a5;
- (void)addTextNodeCharacterCounts:(id)a3 ordinal:(int64_t)a4 completion:(id)a5;
- (void)assetPresenterDismissalDidEnd:(BOOL)a3;
- (void)assetPresenterJumpToBeginningAnimated:(BOOL)a3;
- (void)assetPresenterOpenToLocation:(id)a3 animated:(BOOL)a4;
- (void)assetPresenterPrepareForDismissal;
- (void)assetPresenterPrepareForTermination;
- (void)assetPresenterUpdateCloseTypeState;
- (void)assetPresenterUpdateToolbars;
- (void)assetViewController:(id)a3 assetPropertyChanged:(id)a4;
- (void)assetViewController:(id)a3 attemptClose:(BOOL)a4;
- (void)assetViewController:(id)a3 cancelledClose:(BOOL)a4;
- (void)assetViewController:(id)a3 didShowContentWithCFIs:(id)a4;
- (void)assetViewController:(id)a3 handleFamilyChangeError:(id)a4;
- (void)assetViewController:(id)a3 openSupplementalAssetWithIdentifier:(id)a4;
- (void)assetViewController:(id)a3 presentModalViewController:(id)a4 animated:(BOOL)a5;
- (void)assetViewController:(id)a3 presentTranslationForText:(id)a4 fromRect:(CGRect)a5 onClose:(id)a6;
- (void)assetViewController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)assetViewController:(id)a3 setFinishedAndCloseForAssetID:(id)a4;
- (void)assetViewController:(id)a3 updateBuyButton:(id)a4 setIsDark:(BOOL)a5;
- (void)assetViewController:(id)a3 willClose:(BOOL)a4;
- (void)assetViewController:(id)a3 willHideContentWithCFIs:(id)a4;
- (void)assetViewController:(id)a3 willOpen:(BOOL)a4;
- (void)assetViewControllerPaginationCompletedForBook:(id)a3;
- (void)assetViewControllerSignificantReadingLocationChange:(id)a3;
- (void)ba_setAnalyticsTracker:(id)a3;
- (void)bkaxSetUpAccessibilityForPresentedBook;
- (void)dealloc;
- (void)didFinishUpdateForAssetViewController:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissLibraryBookCoverViewController:(id)a3 animated:(BOOL)a4;
- (void)im_dismissAnimated:(BOOL)a3 immediate:(BOOL)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)readingStatisticsDidChangeOnController:(id)a3 changes:(id)a4;
- (void)removeFromParentViewController;
- (void)requestToBuy:(id)a3;
- (void)setAssetViewController:(id)a3;
- (void)setFinishedForAssetID:(id)a3;
- (void)setProgressStatus:(id)a3;
- (void)timeTracker:(id)a3 didPromoteAsset:(id)a4 deletedFromWantToRead:(BOOL)a5;
- (void)transitionContextNeedsSetup;
- (void)transitionContextWillCompleteTransitionInContainerView:(id)a3;
- (void)updatePromotionStateWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillMoveToWindow:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willAddViewToHierarchy;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation BKBasePresentingViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"BKMainViewControllerSuccessfullyOpenedBook", &stru_100A30A68, @"BKMainViewControllerLastBook", &__kCFBooleanTrue, @"kSuccessfullyOpenedCurrentBook", &stru_100A30A68, @"kLastCurrentBookKey", 0}];
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 registerDefaults:v3];
  }
}

+ (id)holdAnimationAssertion
{
  v2 = objc_alloc_init(BKAssetPresentingViewControllerHoldAnimationAssertion);

  return v2;
}

- (id)backItemForCoverView
{
  if (![(BKBasePresentingViewController *)self _isHostedInAuxiliaryScene])
  {
    v6 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  v3 = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  v4 = BUDynamicCast();

  v5 = [v4 rootBarCoordinator];

  if (v5)
  {
    goto LABEL_3;
  }

  v7 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  v8 = [v7 currentSceneController];
  v9 = [v8 bk_window];
  [v9 bounds];
  v11 = v10;
  v12 = +[UIScreen mainScreen];
  [v12 bounds];
  v14 = v13;

  if (v11 < v14)
  {
    v6 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Library" value:&stru_100A30A68 table:0];

  if (v16)
  {
    v6 = [[UINavigationItem alloc] initWithTitle:v16];
    v7 = v16;
    goto LABEL_9;
  }

LABEL_3:
  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

- (BOOL)shouldCloseDueToAssetDeletion
{
  v2 = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 shouldCloseDueToAssetDeletion];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BKBasePresentingViewController)initWithAssetIdentifier:(id)a3 assetViewController:(id)a4 helper:(id)a5 libraryAssetProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = BKBasePresentingViewController;
  v14 = [(BKBasePresentingViewController *)&v18 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(BKBasePresentingViewController *)v14 setAssetViewController:v11];
    [(BKBasePresentingViewController *)v15 setAssetHelper:v12];
    v16 = [(BKBasePresentingViewController *)v15 assetViewController];
    [v16 setAssetViewControllerDelegate:v15];

    [(BKBasePresentingViewController *)v15 _commonInitWithIdentifier:v10 libraryAssetProvider:v13];
  }

  return v15;
}

- (BKBasePresentingViewController)initWithAssetIdentifier:(id)a3 placeholderViewController:(id)a4 holdAnimationAssertion:(id)a5 libraryAssetProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = BKBasePresentingViewController;
  v14 = [(BKBasePresentingViewController *)&v18 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(BKBasePresentingViewController *)v14 setPlaceholderViewController:v11];
    objc_opt_class();
    v16 = BUDynamicCast();
    [(BKBasePresentingViewController *)v15 setHoldAnimationAssertion:v16];

    [(BKBasePresentingViewController *)v15 _commonInitWithIdentifier:v10 libraryAssetProvider:v13];
  }

  return v15;
}

- (void)_commonInitWithIdentifier:(id)a3 libraryAssetProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v8 addObserver:self selector:"_applicationWillResignActiveNotification:" name:UIApplicationWillResignActiveNotification object:0];
  [v8 addObserver:self selector:"_downloadStatusNotification:" name:BKLibraryDownloadStatusNotification object:0];
  v9 = BKLibraryOwnershipDidChangeNotification;
  v10 = +[BKLibraryManager defaultManager];
  [v8 addObserver:self selector:"_libraryOwnershipNotification:" name:v9 object:v10];

  v11 = +[BCBookReadingTimeTracker sharedInstance];
  [v11 addPromotionObserver:self];

  v12 = [v6 copy];
  assetIdentifier = self->_assetIdentifier;
  self->_assetIdentifier = v12;

  [(BKBasePresentingViewController *)self setLibraryAssetProvider:v7];
  v14 = objc_opt_new();
  sampleProfileFuture = self->_sampleProfileFuture;
  self->_sampleProfileFuture = v14;

  v16 = [[BKTransitioningViewController alloc] initWithContentViewController:0];
  [(BKBasePresentingViewController *)self setTransitioningViewController:v16];

  [(BKBasePresentingViewController *)self setStateShouldOpen:1];
  [(BKBasePresentingViewController *)self bc_setNavBarVisible:0];
  [(BKBasePresentingViewController *)self setDefinesPresentationContext:1];
  [(BKBasePresentingViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
  objc_opt_class();
  v17 = [(BKBasePresentingViewController *)self assetHelper];
  v18 = BUDynamicCast();

  if (v18)
  {
    v19 = [v18 mAsset];
    v20 = [BAAppAnalyticsAdditionalData alloc];
    v21 = [v19 supportsUnifiedProductPage];
    v22 = [v19 editionKind];
    v23 = [v20 initWithSupportsUnifiedProductPage:v21 editionKind:v22];
    [(BKBasePresentingViewController *)self setAppAnalyticsAdditionalData:v23];
  }

  objc_initWeak(&location, self);
  v24 = [BKFrontmostAssetTracker alloc];
  v25 = [v6 permanentOrTemporaryAssetID];
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10005DA08;
  v33 = &unk_100A03B10;
  objc_copyWeak(&v34, &location);
  v26 = [(BKFrontmostAssetTracker *)v24 initWithAssetID:v25 window:0 onFrontmostChanged:&v30];
  frontmostTracker = self->_frontmostTracker;
  self->_frontmostTracker = v26;

  v28 = [UITraitCollection bc_allAPITraits:v30];
  v29 = [(BKBasePresentingViewController *)self registerForTraitChanges:v28 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(BKFrontmostAssetTracker *)self->_frontmostTracker setOnFrontmostChanged:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(BKBasePresentingViewController *)self _cancelInteractionTimerIfNeeded];
  [(BKBasePresentingViewController *)self _cancelSuccessfullyOpenedTimerIfNeeded];
  [(BCReadingStatisticsController *)self->_readingStatisticsController removeObserver:self];
  readingStatisticsController = self->_readingStatisticsController;
  self->_readingStatisticsController = 0;

  [(BKBasePresentingViewController *)self setProgressStatus:0];
  v5 = [(BKBasePresentingViewController *)self sampleProfileFuture];
  [v5 cancel];

  [(BKBasePresentingViewController *)self _finalizeAssetVCState];
  v6 = [(BKBasePresentingViewController *)self filePresenter];
  [v6 deactivate];

  [(BKBasePresentingViewController *)self setFilePresenter:0];
  v7 = [(BKBasePresentingViewController *)self buyButtonItem];
  v8 = [v7 customView];
  v9 = [v8 viewWithTag:7];

  [v9 removeTarget:self action:"requestToBuy:" forControlEvents:64];
  v10.receiver = self;
  v10.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v10 dealloc];
}

- (BOOL)_isAudiobook
{
  v3 = +[AEAudiobookPlugin associatedAssetType];
  v4 = [(BKBasePresentingViewController *)self assetViewController];
  v5 = [v4 asset];

  if (v5)
  {
    v6 = [v5 assetType];
    v7 = [v6 lowercaseString];
    v8 = [v3 lowercaseString];
    LOBYTE(v9) = [v7 isEqualToString:v8];

LABEL_3:
    goto LABEL_8;
  }

  if (!+[NSThread isMainThread])
  {
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  v9 = [(BKBasePresentingViewController *)self assetIdentifier];

  if (v9)
  {
    v9 = [(BKBasePresentingViewController *)self libraryAssetProvider];
    v10 = [(BKBasePresentingViewController *)self assetIdentifier];
    v6 = [v9 libraryAssetOnMainQueueWithAssetIdentifier:v10];

    LOBYTE(v9) = [v6 isAudiobook];
    goto LABEL_3;
  }

LABEL_8:

  return v9;
}

- (BOOL)_shouldTrackReadingSession
{
  if ([(BKBasePresentingViewController *)self successfullyOpened])
  {
    v3 = [(BKBasePresentingViewController *)self assetIdentifier];
    v4 = [v3 permanentAssetID];
    if ([v4 length] && !-[BKBasePresentingViewController _isAudiobook](self, "_isAudiobook"))
    {
      v5 = ![(BKBasePresentingViewController *)self isSupplementalContent];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)removeFromParentViewController
{
  v3.receiver = self;
  v3.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v3 removeFromParentViewController];
  [(BKBasePresentingViewController *)self _finalizeAssetVCState];
}

- (void)_clearCacheForBook:(id)a3
{
  v4 = a3;
  v5 = [(BKBasePresentingViewController *)self assetIdentifier];
  v6 = [v5 permanentAssetID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(BKBasePresentingViewController *)self assetViewController];
    v10 = [v9 asset];
    v8 = [v10 assetID];
  }

  if ([v8 length])
  {
    v11 = dispatch_time(0, 1000000000);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005DF28;
    v14[3] = &unk_100A03788;
    v15 = v8;
    v16 = v4;
    dispatch_after(v11, &_dispatch_main_q, v14);
  }

  else
  {
    v12 = objc_retainBlock(v4);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }
}

- (void)_finalizeAssetVCState
{
  v3 = [(BKBasePresentingViewController *)self assetViewController];

  if (v3)
  {
    if ([(BKBasePresentingViewController *)self assetState]< 3)
    {
      if (![(BKBasePresentingViewController *)self willTerminate])
      {
        [(BKBasePresentingViewController *)self _updateLastOpenBookWithAssetID:0];
      }

      v4 = [(BKBasePresentingViewController *)self assetViewController];
      [v4 saveStateClosing:1];

      v5 = [(BKBasePresentingViewController *)self assetViewController];
      [v5 close:0];

      [(BKBasePresentingViewController *)self setAssetState:3];
      [(BCReadingStatisticsController *)self->_readingStatisticsController removeObserver:self];
      readingStatisticsController = self->_readingStatisticsController;
      self->_readingStatisticsController = 0;
    }

    v7 = [(BKBasePresentingViewController *)self assetIdentifier];
    v16 = [v7 permanentAssetID];

    if ([(BKBasePresentingViewController *)self assetState]<= 3)
    {
      v8 = [(BKBasePresentingViewController *)self minifiedPresenter];
      [v8 minifiedPresenterDidCloseAssetID:v16 finishedConsuming:{-[BKBasePresentingViewController finishedConsuming](self, "finishedConsuming")}];

      v9 = [(BKBasePresentingViewController *)self assetViewController];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(BKBasePresentingViewController *)self assetViewController];
        [v11 assetViewControllerDidCloseAnimated:0];
      }

      [(BKBasePresentingViewController *)self setAssetState:4];
      [(BKBasePresentingViewController *)self _clearCacheForBook:0];
      v12 = [(BKBasePresentingViewController *)self libraryAssetProvider];
      v13 = [(BKBasePresentingViewController *)self libraryAssetProvider];
      v14 = [(BKBasePresentingViewController *)self assetIdentifier];
      v15 = [v13 libraryAssetOnMainQueueWithAssetIdentifier:v14];
      [v12 didCloseLibraryAsset:v15];
    }

    [(BKBasePresentingViewController *)self setSampleToPurchasedMonitor:0];
    [(BKBasePresentingViewController *)self setImportInPlaceMonitor:0];
  }
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v28 viewDidLoad];
  v3 = [(BKBasePresentingViewController *)self assetViewController];

  if (!v3)
  {
    v4 = [(BKBasePresentingViewController *)self view];
    [v4 setOpaque:0];
  }

  v5 = [(BKBasePresentingViewController *)self assetViewController];

  if (v5)
  {
    v6 = [(BKBasePresentingViewController *)self transitioningViewController];
    v7 = [(BKBasePresentingViewController *)self assetViewController];
LABEL_7:
    v9 = v7;
    [v6 setContentViewController:v7];

    goto LABEL_8;
  }

  v8 = [(BKBasePresentingViewController *)self placeholderViewController];

  if (v8)
  {
    v6 = [(BKBasePresentingViewController *)self transitioningViewController];
    v7 = [(BKBasePresentingViewController *)self placeholderViewController];
    goto LABEL_7;
  }

LABEL_8:
  v10 = [(BKBasePresentingViewController *)self transitioningViewController];
  v11 = [v10 view];
  [v11 setAutoresizingMask:18];

  v12 = [(BKBasePresentingViewController *)self transitioningViewController];
  [(BKBasePresentingViewController *)self addChildViewController:v12];

  v13 = [(BKBasePresentingViewController *)self view];
  v14 = [(BKBasePresentingViewController *)self transitioningViewController];
  v15 = [v14 view];
  [v13 addSubview:v15];

  v16 = [(BKBasePresentingViewController *)self view];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(BKBasePresentingViewController *)self transitioningViewController];
  v26 = [v25 view];
  [v26 setFrame:{v18, v20, v22, v24}];

  v27 = [(BKBasePresentingViewController *)self transitioningViewController];
  [v27 didMoveToParentViewController:self];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = BKBasePresentingViewController;
  v4 = a3;
  [(BKBasePresentingViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(BKBasePresentingViewController *)self setPreferredContentSize:v6, v8];
}

- (id)childViewControllerForStatusBarStyle
{
  v2 = [(BKBasePresentingViewController *)self transitioningViewController];
  v3 = [v2 childViewControllerForStatusBarStyle];

  return v3;
}

- (id)childViewControllerForStatusBarHidden
{
  v3 = [(BKBasePresentingViewController *)self assetViewController];
  v4 = [v3 contentOpenAnimator];
  v5 = BUProtocolCast();

  v6 = [(BKBasePresentingViewController *)self assetViewController];
  v7 = 0;
  if (v6 && !v5)
  {
    v8 = [(BKBasePresentingViewController *)self transitioningViewController];
    v7 = [v8 childViewControllerForStatusBarHidden];
  }

  return v7;
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(BKBasePresentingViewController *)self assetViewController];
  v3 = [v2 contentOpenAnimator];
  v4 = BUProtocolCast();

  LOBYTE(v2) = [v4 statusBarHidden];
  return v2;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(BKBasePresentingViewController *)self transitioningViewController];
  v3 = [v2 childViewControllerForHomeIndicatorAutoHidden];

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100ACC420 == a6)
  {
    if ([(BKBasePresentingViewController *)self autoDownload]&& [(BKLibraryDownloadStatus *)self->_progressStatus state]== 4)
    {
      v13 = [(BKBasePresentingViewController *)self downloadProgressBlock];
      if (v13)
      {
        [(BKLibraryDownloadStatus *)self->_progressStatus progressValue];
        v13[2](v13, 0);
      }
    }

    [(BKBasePresentingViewController *)self _updateBuyButtonProgressIfNeeded];
  }

  else if (off_100ACC428 == a6)
  {
    objc_opt_class();
    v14 = BUDynamicCast();
    v15 = [(BKBasePresentingViewController *)self assetIdentifier];
    v16 = [v15 permanentAssetID];

    v17 = [v14 assetID];
    v18 = [v17 isEqualToString:v16];

    if (v18)
    {
      [(BKBasePresentingViewController *)self _updateBuyButtonProgressIfNeeded];
      [(BKBasePresentingViewController *)self _updateAssetStateAndDownloadStatus:v14];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BKBasePresentingViewController;
    [(BKBasePresentingViewController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setProgressStatus:(id)a3
{
  v5 = a3;
  progressStatus = self->_progressStatus;
  v8 = v5;
  if (progressStatus != v5)
  {
    if (progressStatus)
    {
      [(BKLibraryDownloadStatus *)progressStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACC420];
      [(BKLibraryDownloadStatus *)self->_progressStatus removeObserver:self forKeyPath:@"state" context:off_100ACC428];
    }

    objc_storeStrong(&self->_progressStatus, a3);
    [(BKBasePresentingViewController *)self _updateBuyButtonProgressIfNeeded];
    v7 = self->_progressStatus;
    if (v7)
    {
      [(BKLibraryDownloadStatus *)v7 addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACC420];
      [(BKLibraryDownloadStatus *)self->_progressStatus addObserver:self forKeyPath:@"state" options:0 context:off_100ACC428];
    }
  }
}

- (void)_updateLibraryAssetFromMetadataWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(BKBasePresentingViewController *)self assetViewController];
    v10 = [v9 pageCountIncludingUpsell];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_initWeak(&location, self);
  v11 = [NSFileAccessIntent readingIntentWithURL:v6 options:1];
  v12 = [v11 URL];
  v13 = v12 == 0;

  if (v13)
  {
    v17 = BCIMLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1007892FC();
    }

    v18 = objc_retainBlock(v7);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }

  else
  {
    v14 = objc_opt_new();
    v26 = v11;
    v15 = [NSArray arrayWithObjects:&v26 count:1];
    v16 = objc_opt_new();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10005EB40;
    v20[3] = &unk_100A03B38;
    objc_copyWeak(v24, &location);
    v21 = v6;
    v22 = self;
    v24[1] = v10;
    v23 = v7;
    [v14 coordinateAccessWithIntents:v15 queue:v16 byAccessor:v20];

    objc_destroyWeak(v24);
  }

  objc_destroyWeak(&location);
}

- (void)_willOpenBookAnimated:(BOOL)a3
{
  v3 = a3;
  if (!self->_deferredURLOpenRequests)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    deferredURLOpenRequests = self->_deferredURLOpenRequests;
    self->_deferredURLOpenRequests = v5;
  }

  v7 = [(BKBasePresentingViewController *)self assetIdentifier];
  v32 = [v7 permanentOrTemporaryAssetID];

  v8 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
  [v8 removeCachedDisapprovalForBookID:v32];

  v9 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v10 = [v9 uiChildContext];

  v11 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v12 = [v11 libraryMutableAssetWithPermanentOrTemporaryAssetID:v32 inManagedObjectContext:v10];

  [v10 refreshObject:v12 mergeChanges:1];
  v13 = +[BKUserActivityManager sharedInstance];
  [v13 startReadingAsset:v12];

  [(BKBasePresentingViewController *)self subscribeToFullScreenEvents];
  objc_opt_class();
  v14 = [(BKBasePresentingViewController *)self openOptions];
  v15 = [v14 objectForKeyedSubscript:@"BKAssetPresentingOpenLocationKey"];
  v16 = BUDynamicCast();

  [(BKBasePresentingViewController *)self setAssetState:1];
  -[BKBasePresentingViewController setAssetPresenterIsSupplementalContent:](self, "setAssetPresenterIsSupplementalContent:", [v12 isSupplementalContent]);
  v17 = [[BKAssetPresentingFilePresenter alloc] initWithViewController:self];
  [(BKBasePresentingViewController *)self setFilePresenter:v17];

  if ([v32 length])
  {
    [(BKBasePresentingViewController *)self _trackProgressForLibraryAsset:v12];
  }

  v18 = [(BKBasePresentingViewController *)self assetViewController];
  v19 = [v18 assetViewControllerDelegate];

  if (!v19)
  {
    v20 = [(BKBasePresentingViewController *)self assetViewController];
    [v20 setAssetViewControllerDelegate:self];
  }

  v21 = [(BKBasePresentingViewController *)self assetViewController];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    objc_opt_class();
    v23 = [(BKBasePresentingViewController *)self openOptions];
    v24 = [v23 objectForKeyedSubscript:AEHelperNumberIsPreorderKey];
    v25 = BUDynamicCast();

    v26 = [(BKBasePresentingViewController *)self assetViewController];
    [v26 setAssetIsPreordered:v25];
  }

  v27 = [(BKBasePresentingViewController *)self assetViewController];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(BKBasePresentingViewController *)self assetViewController];
    [v29 assetViewControllerWillOpen];
  }

  v30 = [(BKBasePresentingViewController *)self assetViewController];
  v31 = v30;
  if (v16)
  {
    [v30 openToLocation:v16 animated:v3];
  }

  else
  {
    [v30 open:v3];
  }
}

- (void)transitionContextWillCompleteTransitionInContainerView:(id)a3
{
  v29 = a3;
  v4 = [(BKBasePresentingViewController *)self assetViewController];
  v5 = [v4 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v29 bounds];
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  if (!CGRectEqualToRect(v31, v32))
  {
    v14 = objc_alloc_init(IMViewControllerNullAnimationTransitionCoordinator);
    [v14 setContainerView:v29];
    v15 = [(BKBasePresentingViewController *)self assetViewController];
    [v29 bounds];
    [v15 viewWillTransitionToSize:v14 withTransitionCoordinator:{v16, v17}];

    [v29 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(BKBasePresentingViewController *)self assetViewController];
    v27 = [v26 view];
    [v27 setFrame:{v19, v21, v23, v25}];

    [v14 _runAlongsideAnimations];
    [v14 _runAlongsideCompletionsAfterCommit];
  }

  v28 = [(BKBasePresentingViewController *)self assetViewController];
  [v28 assetViewControllerUpdateToolbarsAfterOpenAnimation];
}

- (void)transitionContextNeedsSetup
{
  v2 = [(BKBasePresentingViewController *)self assetViewController];
  [v2 assetViewControllerUpdateToolbarsForOpenAnimation];
}

- (void)willAddViewToHierarchy
{
  v3 = [(BKBasePresentingViewController *)self assetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BKBasePresentingViewController *)self assetViewController];
    [v5 assetViewControllerWillAddView];
  }
}

- (void)_didOpenBookAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKBasePresentingViewController *)self assetIdentifier];
  v6 = [v5 permanentAssetID];

  v7 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v8 = +[NSDate date];
  [v7 updateLibraryAssetWithID:v6 withLastOpenDate:v8 completion:0];

  [(BKBasePresentingViewController *)self setAssetState:2];
  v9 = [(BKBasePresentingViewController *)self assetViewController];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = [(BKBasePresentingViewController *)self assetViewController];
    [v10 assetViewControllerDidOpenAnimated:v3];
  }

  v11 = [(BKBasePresentingViewController *)self minifiedPresenter];
  [v11 minifiedPresenterDidOpenAssetID:v6];

  [(BKBasePresentingViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  v12 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v13 = [v12 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:v6];

  if ([v13 isSample])
  {
    objc_initWeak(&location, self);
    v14 = [BKSampleToPurchaseMonitor alloc];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005F7A0;
    v27[3] = &unk_100A03B60;
    objc_copyWeak(&v28, &location);
    v15 = [(BKSampleToPurchaseMonitor *)v14 initWithAssetID:v6 notify:v27];
    [(BKBasePresentingViewController *)self setSampleToPurchasedMonitor:v15];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  [(BKBasePresentingViewController *)self _sendDeferredURLOpenRequests];
  if ([(BKBasePresentingViewController *)self needToForcePagination])
  {
    [(BKBasePresentingViewController *)self setNeedToForcePagination:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F800;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  v16 = [(BKBasePresentingViewController *)self assetViewController];
  v17 = BUProtocolCast();

  if (v17)
  {
    v18 = [(BKBasePresentingViewController *)self upSellData];

    if (v18)
    {
      v19 = [(BKBasePresentingViewController *)self upSellData];
      [v17 setUpSellData:v19];
    }

    v20 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];

    if (v20)
    {
      v21 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
      [v17 setAppAnalyticsAdditionalData:v21];
    }
  }

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 postNotificationName:@"BKAssetPresentingBookOpenComplete" object:0];

  [(BKBasePresentingViewController *)self bkaxSetUpAccessibilityForPresentedBook];
  if (+[BKUIPFeatures useUIPFluidBookOpenTransition]&& ![(BKBasePresentingViewController *)self useLegacyAnimation])
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v25, &location);
    v23 = [(BKBasePresentingViewController *)self _preferredTransition:_NSConcreteStackBlock];
    [v23 set_interactiveDismissShouldBeginHandler:&v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v18 viewWillAppear:?];
  v5 = [(BKBasePresentingViewController *)self ba_analyticsTracker];

  if (!v5)
  {
    v6 = [(BKBasePresentingViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentReading"];
  }

  v7 = [(BKBasePresentingViewController *)self bc_windowForViewController];
  v8 = [v7 rootViewController];

  if (([v8 isPerformingModalTransition] & 1) == 0)
  {
    v9 = [(BKBasePresentingViewController *)self navigationController];
    -[BKBasePresentingViewController setShouldRestoreNavBar:](self, "setShouldRestoreNavBar:", [v9 isNavigationBarHidden] ^ 1);
  }

  if ([(BKBasePresentingViewController *)self stateShouldOpen])
  {
    v10 = [(BKBasePresentingViewController *)self assetViewController];

    if (v10)
    {
      [(BKBasePresentingViewController *)self _startBookSuccessfullyOpenedTimer];
      v11 = [(BKBasePresentingViewController *)self assetViewController];
      v12 = [v11 asset];
      v13 = [v12 url];

      if (v13)
      {
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10005FB24;
        v14[3] = &unk_100A03BB0;
        objc_copyWeak(&v15, &location);
        v16 = a3;
        [(BKBasePresentingViewController *)self _updateLibraryAssetFromMetadataWithURL:v13 completion:v14];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [NSNumber numberWithBool:[(BKBasePresentingViewController *)self enteringFullScreen]];
    v10 = [NSNumber numberWithBool:[(BKBasePresentingViewController *)self inFullScreen]];
    v11 = [NSNumber numberWithBool:[(BKBasePresentingViewController *)self exitingFullScreen]];
    *v21 = width;
    *&v21[1] = height;
    v12 = [NSValue valueWithBytes:v21 objCType:"{CGSize=dd}"];
    v13 = [(BKBasePresentingViewController *)self view];
    [v13 bounds];
    v20[0] = v14;
    v20[1] = v15;
    v16 = [NSValue valueWithBytes:v20 objCType:"{CGSize=dd}"];
    *buf = 138413314;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v16;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "viewWillTransitionToSize enteringFullScreen:%@ exitingFullScreen:%@ inFullScreen:%@ size:%@ viewSize:%@", buf, 0x34u);
  }

  v19.receiver = self;
  v19.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v19 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0x40];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005FE34;
  v18[3] = &unk_100A03BD8;
  v18[4] = self;
  *&v18[5] = width;
  *&v18[6] = height;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000600C0;
  v17[3] = &unk_100A03BD8;
  v17[4] = self;
  *&v17[5] = width;
  *&v17[6] = height;
  [v7 animateAlongsideTransition:v18 completion:v17];
}

- (void)_waitForOngoingMigrationAttemptToFinish:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_10078959C();
  }

  if ([v5 isSupplementalContent])
  {
    v7 = [v5 contentType] == 3;
  }

  else
  {
    v7 = 0;
  }

  if ([v5 isStore] && !v7 || (objc_msgSend(v5, "permlink"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_retainBlock(v6);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }

  else
  {
    objc_opt_class();
    v11 = +[BKAppDelegate delegate];
    v10 = BUDynamicCast();

    v12 = [v10 ubiquitousDocumentsController];
    v13 = [v5 assetID];
    v14 = [v5 temporaryAssetID];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000603BC;
    v15[3] = &unk_100A03920;
    v16 = v6;
    [v12 waitForOngoingMigrationAttemptToFinishWithAssetID:v13 temporaryAssetID:v14 completion:v15];
  }
}

- (void)_loadAssetVC
{
  v3 = sub_10005D1D8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BKBasePresentingViewController *)self assetIdentifier];
    v5 = [v4 permanentOrTemporaryAssetID];
    v6 = [(BKBasePresentingViewController *)self loadAssetBlock];
    v7 = objc_retainBlock(v6);
    *buf = 141558530;
    v15 = 1752392040;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _loadAssetVC - localAssetBlock=%@", buf, 0x20u);
  }

  v8 = [(BKBasePresentingViewController *)self loadAssetBlock];

  if (v8)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100060650;
    v13[3] = &unk_100A03C00;
    v13[4] = self;
    v9 = objc_retainBlock(v13);
    v10 = [(BKBasePresentingViewController *)self loadAssetBlock];
    (v10)[2](v10, v9);
  }

  else
  {
    v9 = [(BKBasePresentingViewController *)self assetIdentifier];
    v10 = [(BKBasePresentingViewController *)self openOptions];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100060698;
    v12[3] = &unk_100A03C00;
    v12[4] = self;
    v11 = [BKAssetLookup assetLookupWithIdentifier:v9 options:v10 completion:v12];
    [(BKBasePresentingViewController *)self setAssetLookup:v11];
  }
}

- (void)_loadWithAssetViewController:(id)a3 helper:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_1007895D8();
  }

  v8 = sub_10005D1D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BKBasePresentingViewController *)self assetIdentifier];
    v10 = [v9 permanentOrTemporaryAssetID];
    *buf = 141558786;
    v39 = 1752392040;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _loadWithAssetViewController - assetVC=%@, helper=%@", buf, 0x2Au);
  }

  if (v6 && v7)
  {
    v11 = [(BKBasePresentingViewController *)self placeholderViewController];
    if (objc_opt_respondsToSelector())
    {
      v12 = [(BKBasePresentingViewController *)self placeholderViewController];
      v13 = [v12 coverAnimationHostTopViewsToFadeOut];
    }

    else
    {
      v13 = 0;
    }

    v15 = [(BKBasePresentingViewController *)self placeholderViewController];
    v16 = [(BKBasePresentingViewController *)self assetIdentifier];
    v17 = [v16 permanentOrTemporaryAssetID];
    v18 = [v15 coverAnimationHostSourceForItem:v17];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100060AB0;
    v34[3] = &unk_100A03C78;
    v34[4] = self;
    v35 = v6;
    v36 = v7;
    v19 = v18;
    v37 = v19;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100061004;
    v32[3] = &unk_100A03788;
    v32[4] = self;
    v20 = objc_retainBlock(v34);
    v33 = v20;
    v21 = objc_retainBlock(v32);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000610CC;
    v29[3] = &unk_100A03788;
    v14 = v13;
    v30 = v14;
    v22 = v21;
    v31 = v22;
    v23 = objc_retainBlock(v29);
    v24 = [(BKBasePresentingViewController *)self holdAnimationAssertion];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 future];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100061300;
      v27[3] = &unk_100A03CC8;
      v28 = v23;
      [v26 get:v27];
    }

    else
    {
      (v23[2])(v23);
    }
  }

  else
  {
    v14 = [(BKBasePresentingViewController *)self presentingViewController];
    [v14 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v50.receiver = self;
  v50.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v50 viewDidAppear:?];
  [(BKBasePresentingViewController *)self subscribeToLiveResize];
  if ([(BKBasePresentingViewController *)self stateShouldOpen])
  {
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = sub_1000272E4;
    v48[4] = sub_1000275B8;
    v5 = self;
    v49 = v5;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100061944;
    v47[3] = &unk_100A03D18;
    v47[4] = v48;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100061C00;
    v44[3] = &unk_100A03D68;
    v46 = v48;
    v6 = objc_retainBlock(v47);
    v45 = v6;
    v7 = objc_retainBlock(v44);
    v8 = [(BKBasePresentingViewController *)v5 libraryAssetProvider];
    v9 = [(BKBasePresentingViewController *)v5 assetIdentifier];
    v10 = [v8 libraryAssetOnMainQueueWithAssetIdentifier:v9];

    v11 = sub_10005D1D8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BKBasePresentingViewController *)v5 assetIdentifier];
      *buf = 141558530;
      v52 = 1752392040;
      v53 = 2112;
      v54 = v12;
      v55 = 2112;
      v56 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] libraryAsset: %@", buf, 0x20u);
    }

    v13 = [(BKBasePresentingViewController *)v5 parentViewController];

    if (v13)
    {
      [(BKBasePresentingViewController *)v5 setStateShouldOpen:0];
    }

    v14 = [(BKBasePresentingViewController *)v5 assetViewController];

    if (v14)
    {
      [(BKBasePresentingViewController *)v5 _didOpenBookAnimated:v3];
    }

    else if (-[BKBasePresentingViewController autoOpen](v5, "autoOpen") && (([v10 isLocal] & 1) != 0 || objc_msgSend(v10, "streamable")))
    {
      if ([v10 isLocal])
      {
        v25 = v7;
      }

      else
      {
        v25 = v6;
      }

      (v25[2])(v25, v10);
    }

    else if ([(BKBasePresentingViewController *)v5 autoDownload])
    {
      objc_initWeak(&location, v5);
      [(BKBasePresentingViewController *)v5 setStateFlags:[(BKBasePresentingViewController *)v5 stateFlags]| 8];
      v26 = [(BKBasePresentingViewController *)v5 assetIdentifier];
      v27 = [v26 permanentOrTemporaryAssetID];

      v28 = +[BKLibraryAssetStatusController sharedController];
      v29 = [v28 statusForAssetID:v27];
      [(BKBasePresentingViewController *)v5 setProgressStatus:v29];

      v30 = [(BKBasePresentingViewController *)v5 progressStatus];
      v31 = 0.0;
      if ([v30 state] == 4)
      {
        v32 = [(BKBasePresentingViewController *)v5 progressStatus];
        [v32 progressValue];
        v31 = v33;
      }

      v34 = [(BKBasePresentingViewController *)v5 downloadProgressBlock];
      v35 = v34;
      if (v34)
      {
        (*(v34 + 16))(v34, 0, v31);
      }

      v36 = sub_10005D1D8();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v52 = 1752392040;
        v53 = 2112;
        v54 = v27;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] Attempt to resolve to local", buf, 0x16u);
      }

      v37 = [(BKBasePresentingViewController *)v5 libraryAssetProvider];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000622C4;
      v39[3] = &unk_100A03DB8;
      v38 = v27;
      v40 = v38;
      objc_copyWeak(&v42, &location);
      v41 = v7;
      [v37 resolveToLocalAssetWithAssetID:v38 completion:v39];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

    v15 = +[UIDevice currentDevice];
    v16 = [v15 orientation];

    v17 = [(BKBasePresentingViewController *)v5 bc_windowForViewController];
    v18 = [v17 windowScene];
    v19 = [v18 interfaceOrientation];

    v20 = isPhone();
    if ((v16 - 3) < 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == 1 && (v19 - 1) <= 1)
    {
      +[UIViewController attemptRotationToDeviceOrientation];
    }

    v22 = +[BKAppDelegate sceneManager];
    v23 = [v22 primarySceneController];
    v24 = [v23 primaryScenePresenting];

    [v24 presenterDidStartReadingExperienceWithAssetPresenter:v5];
    _Block_object_dispose(v48, 8);
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v5 willMoveToParentViewController:?];
  [(BKBasePresentingViewController *)self setStateShouldClose:a3 == 0];
}

- (BKMinifiedPresenting)minifiedPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_minifiedPresenter);

  if (!WeakRetained)
  {
    v4 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKMinifiedPresenting];
    objc_storeWeak(&self->_minifiedPresenter, v4);
  }

  v5 = objc_loadWeakRetained(&self->_minifiedPresenter);

  return v5;
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v4 didMoveToParentViewController:a3];
  [(BKBasePresentingViewController *)self setStateShouldClose:0];
}

- (void)viewWillMoveToWindow:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v12 viewWillMoveToWindow:v4];
  v5 = [(BKBasePresentingViewController *)self assetViewController];

  if (v4 && v5)
  {
    v6 = [(BKBasePresentingViewController *)self assetViewController];
    v7 = [v6 asset];
    v8 = [v7 displayTitle];
    v9 = [v4 windowScene];
    [v9 setTitle:v8];

    v10 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
    [v10 updateAllAssetPresenterCloseStateTypes];
  }

  v11 = [(BKBasePresentingViewController *)self frontmostTracker];
  [v11 setWindow:v4];
}

- (void)_handleClosingCleanup:(BOOL)a3
{
  v3 = a3;
  [(BKBasePresentingViewController *)self unsubscribeFromFullScreenEvents];
  v5 = [(BKBasePresentingViewController *)self sessionID];

  if (v5)
  {
    v6 = BCBookPromotionLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ending reading session due to another asset being opened.", v11, 2u);
    }

    [(BKBasePresentingViewController *)self _endReadingSessionForEventType:2 withCompletion:0];
  }

  [(BKBasePresentingViewController *)self setAssetState:3];
  if (([(BKBasePresentingViewController *)self stateFlags]& 0x100) == 0)
  {
    v7 = [(BKBasePresentingViewController *)self assetViewController];
    v8 = BUProtocolCast();

    [v8 saveStateClosing:1];
  }

  v9 = [(BKBasePresentingViewController *)self assetViewController];
  [v9 close:v3];

  if (![(BKBasePresentingViewController *)self willTerminate])
  {
    [(BKBasePresentingViewController *)self _updateLastOpenBookWithAssetID:0];
  }

  [(BCReadingStatisticsController *)self->_readingStatisticsController removeObserver:self];
  readingStatisticsController = self->_readingStatisticsController;
  self->_readingStatisticsController = 0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v9 viewWillDisappear:?];
  [(BKBasePresentingViewController *)self unsubscribeToLiveResize];
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 keyWindow];
  v7 = [v6 rootViewController];

  if (-[BKBasePresentingViewController shouldRestoreNavBar](self, "shouldRestoreNavBar") && ([v7 isPerformingModalTransition] & 1) == 0)
  {
    v8 = [(BKBasePresentingViewController *)self navigationController];
    [v8 setNavigationBarHidden:0 animated:0];
  }

  if ([(BKBasePresentingViewController *)self stateShouldClose]&& !+[BKUIPFeatures useUIPFluidBookOpenTransition])
  {
    [(BKBasePresentingViewController *)self _handleClosingCleanup:v3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v30.receiver = self;
  v30.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v30 viewDidDisappear:?];
  if ([(BKBasePresentingViewController *)self stateShouldClose]&& ![(BKBasePresentingViewController *)self preparingEndOfBookExperience])
  {
    if (+[BKUIPFeatures useUIPFluidBookOpenTransition])
    {
      [(BKBasePresentingViewController *)self _handleClosingCleanup:v3];
    }

    v5 = [(BKBasePresentingViewController *)self assetIdentifier];
    v6 = [v5 permanentAssetID];

    v7 = +[BCProgressKitController sharedController];
    [v7 didCloseBookWithAssetID:v6 completion:0];

    objc_opt_class();
    v8 = [(BKBasePresentingViewController *)self openOptions];
    v9 = [v8 objectForKeyedSubscript:@"BKBookPresentingSecure"];
    v10 = BUDynamicCast();
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v12 = [(BKBasePresentingViewController *)self assetViewController];
      v13 = [v12 asset];
      v14 = [v13 url];

      [v14 stopAccessingSecurityScopedResource];
    }

    v15 = [(BKBasePresentingViewController *)self assetViewController];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(BKBasePresentingViewController *)self assetViewController];
      [v17 assetViewControllerDidCloseAnimated:v3];
    }

    v18 = +[BKUserActivityManager sharedInstance];
    [v18 stopReadingCurrentAsset];

    v19 = [(BKBasePresentingViewController *)self libraryAssetProvider];
    v20 = [(BKBasePresentingViewController *)self libraryAssetProvider];
    v21 = [(BKBasePresentingViewController *)self assetIdentifier];
    v22 = [v20 libraryAssetOnMainQueueWithAssetIdentifier:v21];
    [v19 didCloseLibraryAsset:v22];

    if (([(BKBasePresentingViewController *)self stateFlags]& 0x80) != 0)
    {
      +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0xFFFFFFFFFFFFFF7FLL];
    }

    v23 = [(BKBasePresentingViewController *)self minifiedPresenter];
    [v23 minifiedPresenterUpdateCurrentBookWithCompletion:0];

    v24 = [(BKBasePresentingViewController *)self minifiedPresenter];
    [v24 minifiedPresenterDidCloseAssetID:v6 finishedConsuming:{-[BKBasePresentingViewController finishedConsuming](self, "finishedConsuming")}];

    [(BKBasePresentingViewController *)self setAssetState:4];
    [(BKBasePresentingViewController *)self _clearCacheForBook:0];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"BKBookDidCloseNotificationName" object:self];

    [(BKBasePresentingViewController *)self setUpSellData:0];
    [(BKBasePresentingViewController *)self setAppAnalyticsAdditionalData:0];
    [(BKBasePresentingViewController *)self setStateShouldOpen:1];
    v26 = [(BKBasePresentingViewController *)self assetViewController];
    [v26 setAssetViewControllerDelegate:0];
  }

  v27 = +[BKAppDelegate sceneManager];
  v28 = [v27 primarySceneController];
  v29 = [v28 primaryScenePresenting];

  [v29 presenterDidEndReadingExperienceWithAssetPresenter:self];
}

- (void)setAssetViewController:(id)a3
{
  objc_storeStrong(&self->_assetViewController, a3);
  v5 = a3;
  v6 = [(BKBasePresentingViewController *)self ba_analyticsTracker];
  [(AEAssetViewController *)self->_assetViewController ba_setAnalyticsTracker:v6];
}

- (void)ba_setAnalyticsTracker:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKBasePresentingViewController;
  v4 = a3;
  [(BKBasePresentingViewController *)&v6 ba_setAnalyticsTracker:v4];
  v5 = [(BKBasePresentingViewController *)self assetViewController:v6.receiver];
  [v5 ba_setAnalyticsTracker:v4];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(BKBasePresentingViewController *)self assetViewController];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling];

  if (v4)
  {
    v5 = [(BKBasePresentingViewController *)self assetViewController];
LABEL_5:
    v8 = v5;
    v9 = [v5 supportedInterfaceOrientations];

    return v9;
  }

  v6 = [(BKBasePresentingViewController *)self childModalViewController];
  v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling];

  if (v7)
  {
    v5 = [(BKBasePresentingViewController *)self childModalViewController];
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BKBasePresentingViewController;
  return [(BKBasePresentingViewController *)&v11 supportedInterfaceOrientations];
}

- (void)_applicationDidBecomeActiveNotification:(id)a3
{
  [(BKBasePresentingViewController *)self setIsResigningActive:0];
  v4 = [(BKBasePresentingViewController *)self filePresenter];
  [v4 activate];
}

- (void)_applicationWillResignActiveNotification:(id)a3
{
  [(BKBasePresentingViewController *)self setIsResigningActive:1];
  v4 = [(BKBasePresentingViewController *)self filePresenter];
  [v4 deactivate];

  v5 = [(BKBasePresentingViewController *)self assetIdentifier];
  v7 = [v5 permanentAssetID];

  [BKLibraryIndexer establishBackgroundTaskForProgressUpdateOfAsset:v7];
  v6 = [(BKBasePresentingViewController *)self assetViewController];
  [v6 saveStateClosing:0 suspending:1];
}

- (void)assetPresenterPrepareForTermination
{
  [(BKBasePresentingViewController *)self setWillTerminate:1];
  v3 = BCBookPromotionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ending reading session due to termination.", v4, 2u);
  }

  [(BKBasePresentingViewController *)self _endReadingSessionForEventType:2 withCompletion:0];
}

- (void)_startInteractionTimer
{
  v3 = +[BCJSConfiguration sharedInstance];
  v4 = [v3 timeThresholdForOpenEvent];
  v5 = [v4 longLongValue];

  v6 = [(BKBasePresentingViewController *)self assetIdentifier];
  v7 = [v6 permanentAssetID];

  v8 = [(BKBasePresentingViewController *)self sessionID];
  if (v8)
  {
    v9 = v8;
    v10 = [(BKBasePresentingViewController *)self _shouldTrackReadingSession];

    if (v10)
    {
      v11 = [(BKBasePresentingViewController *)self confirmActiveTimer];

      if (!v11)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100063200;
        v13[3] = &unk_100A03DE0;
        v14 = v7;
        v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v13 block:v5];
        [(BKBasePresentingViewController *)self setConfirmActiveTimer:v12];
      }
    }
  }
}

- (void)_cancelInteractionTimerIfNeeded
{
  v3 = [(BKBasePresentingViewController *)self confirmActiveTimer];
  [v3 invalidate];

  [(BKBasePresentingViewController *)self setConfirmActiveTimer:0];
}

- (void)_assetPresenterWillEnterForeground
{
  [(BKBasePresentingViewController *)self assetPresenterUpdateCloseTypeState];
  [(BKBasePresentingViewController *)self _refreshReadingState];
  v3 = [(BKBasePresentingViewController *)self assetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(BKBasePresentingViewController *)self assetViewController];
    [v5 assetViewControllerWillEnterForeground];
  }

  if ([(BKBasePresentingViewController *)self successfullyOpened])
  {
    v6 = BCCurrentBookLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Book entered foreground, resuming existing reading session", v10, 2u);
    }

    [(BKBasePresentingViewController *)self _beginReadingSessionForEventType:4];
    [(BKBasePresentingViewController *)self _startInteractionTimer];
  }

  else
  {
    v7 = [(BKBasePresentingViewController *)self assetViewController];

    if (v7)
    {
      v8 = BCCurrentBookLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Book entered foreground with no current reading session yet.", buf, 2u);
      }

      v9 = [(BKBasePresentingViewController *)self sessionID];

      if (v9)
      {
        sub_1007897A0();
      }

      [(BKBasePresentingViewController *)self _startBookSuccessfullyOpenedTimer];
    }
  }
}

- (void)_assetPresenterDidEnterBackground
{
  [(BKBasePresentingViewController *)self _cancelInteractionTimerIfNeeded];
  [(BKBasePresentingViewController *)self _cancelSuccessfullyOpenedTimerIfNeeded];
  if ([(BKBasePresentingViewController *)self _shouldTrackReadingSession])
  {
    v3 = BCBookPromotionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending reading session due to scene backgrounding.", v7, 2u);
    }

    [(BKBasePresentingViewController *)self _endReadingSessionForEventType:3 withCompletion:0];
  }

  v4 = [(BKBasePresentingViewController *)self assetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(BKBasePresentingViewController *)self assetViewController];
    [v6 assetViewControllerDidEnterBackground];
  }
}

- (void)_refreshReadingState
{
  v3 = [(BKBasePresentingViewController *)self assetViewController];
  v4 = [v3 asset];
  v5 = [v4 url];

  if (v5)
  {
    if ([v5 isFileURL] && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "path"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "fileExistsAtPath:", v7), v7, v6, (v8 & 1) == 0))
    {
      [(BKBasePresentingViewController *)self im_dismissAnimated:1];
    }

    else
    {
      v9 = BCCurrentBookLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "No file path - doing nothing in _refreshReadingState ", v10, 2u);
      }
    }
  }
}

+ (id)animatorForAsset:(id)a3 isCurrentBook:(BOOL)a4 opening:(BOOL)a5 largeCover:(BOOL)a6 skipZoom:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = [a3 assetType];
  v11 = +[AEAudiobookPlugin associatedAssetType];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    if (v9 && v8)
    {
      v13 = [(BKBookOpenAnimator *)[BKAudiobookSlideOpenAnimator alloc] initOpening:1];
    }

    else
    {
      v13 = [(BKBookOpenAnimator *)[BKAudiobookOpenAnimator alloc] initOpening:v9];
      [v13 setUseLegacyTiming:0];
    }
  }

  else
  {
    v13 = [[BKBookBloomOpenAnimator alloc] initOpening:v9];
    objc_opt_class();
    v14 = BUDynamicCast();
    [v14 setUseShadowEffects:1];
  }

  objc_opt_class();
  v15 = BUDynamicCast();
  [v15 setSkipZoomPhase:v7];

  return v13;
}

+ (id)defaultAnimatorForOpening:(BOOL)a3 skipReveal:(BOOL)a4
{
  v4 = a4;
  v5 = [[BKBookBloomOpenAnimator alloc] initOpening:a3];
  [v5 setSkipReveal:v4];
  [v5 setUseShadowEffects:1];

  return v5;
}

- (void)_reloadAssetCloseViewController:(BOOL)a3
{
  v3 = a3;
  v5 = [BKSnapshotViewController alloc];
  v6 = [(BKBasePresentingViewController *)self assetViewController];
  v7 = [(BKSnapshotViewController *)v5 initWithViewController:v6];

  v8 = sub_10005D1D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BKBasePresentingViewController *)self assetIdentifier];
    v10 = [v9 permanentOrTemporaryAssetID];
    v11 = [NSNumber numberWithBool:v3];
    *buf = 141558530;
    v22 = 1752392040;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _reloadAssetCloseViewController close:%@", buf, 0x20u);
  }

  v12 = [(BKBasePresentingViewController *)self assetViewController];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(BKBasePresentingViewController *)self assetViewController];
    [v14 assetViewControllerPrepareForReload];
  }

  if (v3)
  {
    v15 = [(BKBasePresentingViewController *)self assetViewController];
    [v15 close:0];

    v16 = [(BKBasePresentingViewController *)self assetViewController];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(BKBasePresentingViewController *)self assetViewController];
      [v18 assetViewControllerDidCloseAnimated:0];
    }
  }

  v19 = [(BKBasePresentingViewController *)self transitioningViewController];
  [v19 setContentViewController:v7];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000639FC;
  v20[3] = &unk_100A033C8;
  v20[4] = self;
  [(BKBasePresentingViewController *)self _clearCacheForBook:v20];
}

- (void)dismissLibraryBookCoverViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  v6 = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  [v7 handleCloseAssetForSceneController:v6 assetPresentingViewController:self animated:v4];
}

- (void)assetViewController:(id)a3 willOpen:(BOOL)a4
{
  v12 = a3;
  v5 = [(BKBasePresentingViewController *)self viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v12 asset];
    v8 = [v7 displayTitle];
    v9 = [(BKBasePresentingViewController *)self viewIfLoaded];
    v10 = [v9 window];
    v11 = [v10 windowScene];
    [v11 setTitle:v8];
  }
}

- (void)assetViewController:(id)a3 willClose:(BOOL)a4
{
  v5 = [(BKBasePresentingViewController *)self assetIdentifier:a3];
  v15 = [v5 permanentAssetID];

  if ([v15 length])
  {
    v6 = [NSSet setWithObject:v15];
    objc_opt_class();
    v7 = +[UIApplication sharedApplication];
    v8 = [v7 delegate];
    v9 = BUDynamicCast();

    v10 = [v9 libraryAssetIsNewManager];
    v11 = [v6 allObjects];
    [v10 resetIsNewForAssetIDs:v11];

    v12 = [v9 libraryAssetIsNewManager];
    v13 = [v6 allObjects];
    [v12 resetProgressHighWaterMarkForAssetIDs:v13];
  }

  v14 = [(BKBasePresentingViewController *)self minifiedPresenter];
  [v14 minifiedPresenterWillCloseAsset];
}

- (double)_transitionDurationForLiveResizeOfViewController:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    if ([v3 animateLiveResizeTransitions])
    {
      v4 = 0.2;
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    v4 = 0.2;
  }

  return v4;
}

- (void)_clearLiveResizeViews
{
  v3 = [(BKBasePresentingViewController *)self liveResizeWrapperView];
  [v3 removeFromSuperview];

  [(BKBasePresentingViewController *)self setLiveResizeWrapperView:0];
  [(BKBasePresentingViewController *)self setScrimLiveResizeView:0];
  [(BKBasePresentingViewController *)self setScrimLiveResizeBlurView:0];

  [(BKBasePresentingViewController *)self setOverlayView:0];
}

- (void)assetViewController:(id)a3 attemptClose:(BOOL)a4
{
  v5 = [BKAppDelegate sceneManager:a3];
  v6 = [v5 primarySceneController];
  v7 = [v6 primaryScenePresenting];

  [v7 presenterUpdateReadingNowAssetVisibility:0 assetPresenter:self];
}

- (void)assetViewController:(id)a3 cancelledClose:(BOOL)a4
{
  v5 = [BKAppDelegate sceneManager:a3];
  v6 = [v5 primarySceneController];
  v7 = [v6 primaryScenePresenting];

  [v7 presenterUpdateReadingNowAssetVisibility:1 assetPresenter:self];
}

- (void)didFinishUpdateForAssetViewController:(id)a3
{
  if ([(BKBasePresentingViewController *)self inLiveResize]|| ![(BKBasePresentingViewController *)self scrimAppliedForLiveResize])
  {
    v12 = [(BKBasePresentingViewController *)self transitioningViewController];
    v11 = [v12 view];
    [v11 setAlpha:1.0];
  }

  else
  {
    [(BKBasePresentingViewController *)self setScrimAppliedForLiveResize:0];
    v4 = BCCurrentBookLiveResizeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100789894(self);
    }

    v5 = [(BKBasePresentingViewController *)self assetViewController];
    [(BKBasePresentingViewController *)self _transitionDurationForLiveResizeOfViewController:v5];
    if (v6 == 0.0 || (v7 = v6, [(BKBasePresentingViewController *)self enteringFullScreen]) || [(BKBasePresentingViewController *)self exitingFullScreen])
    {
      v8 = [(BKBasePresentingViewController *)self liveResizeWrapperView];
      [v8 setAlpha:0.0];

      v9 = [(BKBasePresentingViewController *)self transitioningViewController];
      v10 = [v9 view];
      [v10 setAlpha:1.0];

      [(BKBasePresentingViewController *)self _clearLiveResizeViews];
      if (objc_opt_respondsToSelector())
      {
        [v5 assetViewControllerDidFinishUpdateForLiveResize];
      }
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100064A60;
      v15[3] = &unk_100A033C8;
      v15[4] = self;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100064AE0;
      v13[3] = &unk_100A03E30;
      v13[4] = self;
      v14 = v5;
      [UIView animateWithDuration:v15 animations:v13 completion:v7];
    }
  }
}

- (BOOL)assetViewControllerIsCurrentBook:(id)a3
{
  v3 = a3;
  v4 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  v5 = [v3 asset];

  v6 = [v5 assetID];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (id)_sceneControllerCurrentlyHostingAssetPresenter
{
  v3 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  v4 = [v3 sceneControllerForViewController:self];

  return v4;
}

- (BOOL)_isHostedInAuxiliaryScene
{
  v3 = +[BKAppDelegate sceneManager];
  v4 = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  v5 = [v3 primarySceneController];
  v6 = v4 != v5;

  return v6;
}

- (id)_closeBarButtonTitle
{
  v2 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  if ([v2 closeTypeForForegroundedScene])
  {
    v3 = 0;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"Library" value:&stru_100A30A68 table:0];
  }

  return v3;
}

- (BOOL)assetViewController:(id)a3 requestOpenURL:(id)a4 likelyUserInitiated:(BOOL)a5
{
  v5 = a5;
  deferredURLOpenRequests = self->_deferredURLOpenRequests;
  if (deferredURLOpenRequests)
  {
    v7 = a4;
    v8 = [NSNumber numberWithBool:v5];
    [(NSMutableDictionary *)deferredURLOpenRequests setObject:v8 forKey:v7];
  }

  else
  {
    v10 = a4;
    v8 = +[BKAppDelegate sceneManager];
    v7 = [v8 sceneControllerForViewController:self];
    v11 = [NSNumber numberWithBool:v5];
    v12 = [v7 newShowURLTransaction];
    [v8 handleApplicationURL:v10 sourceApplication:@"__self__" annotation:0 likelyUserInitiated:v11 transaction:v12];
  }

  return 1;
}

- (BOOL)assetViewController:(id)a3 requestClose:(BOOL)a4 finishedConsuming:(BOOL)a5 error:(id)a6 withErrorBlock:(id)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v13)
  {
    [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0x80];
  }

  [(BKBasePresentingViewController *)self setFinishedConsuming:v9];
  if ([v12 conformsToProtocol:&OBJC_PROTOCOL___AEAssetViewController])
  {
    [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0x100];
    [v12 saveStateClosing:1];
  }

  if (([(BKBasePresentingViewController *)self stateFlags]& 1) != 0)
  {
    v17 = BCCurrentBookLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 134217984;
      v23 = [(BKBasePresentingViewController *)self stateFlags];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Asset requested to close but delaying it due to state: %ld", &v22, 0xCu);
    }

    [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 2];
    [(BKBasePresentingViewController *)self setErrorCloseBlock:v14];
  }

  else
  {
    v15 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
    v16 = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
    if (v16)
    {
      [v15 handleCloseAssetForSceneController:v16 assetPresentingViewController:self animated:v10];
    }

    else
    {
      v18 = sub_10005D1D8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Don't need to close asset view controller because it is already disconnected from its scene controller", &v22, 2u);
      }
    }

    v19 = objc_retainBlock(v14);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19);
    }
  }

  return 1;
}

- (void)requestToBuy:(id)a3
{
  v4 = [(BKBasePresentingViewController *)self _buyButton];
  [v4 setDisableInteraction:1];
  [v4 setModeState:2];
  v5 = [(BKBasePresentingViewController *)self assetViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100065150;
  v7[3] = &unk_100A034F8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(BKBasePresentingViewController *)self assetViewControllerRequestToBuy:v5 completion:v7];
}

- (void)assetViewController:(id)a3 handleFamilyChangeError:(id)a4
{
  v6 = a4;
  v7 = [BKAppDelegate sceneControllerForViewController:a3];
  v11 = v7;
  if (!v7)
  {
    sub_100789980();
    v7 = 0;
  }

  v8 = [v7 newShowAssetTransaction];
  v9 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  v10 = [(BKBasePresentingViewController *)self assetIdentifier];
  [v9 handleFamilyChangeErrorWithTransaction:v8 error:v6 assetIdentifier:v10];
}

- (void)assetViewControllerSignificantReadingLocationChange:(id)a3
{
  [a3 saveStateClosing:0];
  v4 = [(BKBasePresentingViewController *)self assetIdentifier];
  v13 = [v4 permanentAssetID];

  if ([v13 length])
  {
    v5 = [NSSet setWithObject:v13];
    objc_opt_class();
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 delegate];
    v8 = BUDynamicCast();

    v9 = [v8 libraryAssetIsNewManager];
    v10 = [v5 allObjects];
    [v9 resetIsNewForAssetIDs:v10];

    v11 = [v8 libraryAssetIsNewManager];
    v12 = [v5 allObjects];
    [v11 resetProgressHighWaterMarkForAssetIDs:v12];
  }
}

- (void)assetViewController:(id)a3 assetPropertyChanged:(id)a4
{
  if ([BKLibraryAsset hasBookReachedReadThreshold:a4])
  {
    if (([(BKBasePresentingViewController *)self stateFlags]& 0x10) == 0)
    {
      v5 = [(BKBasePresentingViewController *)self libraryAssetProvider];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000655D8;
      v6[3] = &unk_100A03EA8;
      v6[4] = self;
      [v5 performBlockOnWorkerQueue:v6];
    }
  }
}

- (id)assetViewControllerMinifiedBarButtonItem:(id)a3
{
  v3 = [(BKBasePresentingViewController *)self minifiedPresenter];
  v4 = [v3 minifiedPresenterBarButtonItem];

  return v4;
}

- (id)_fetchSampleProfileFuture
{
  if (!+[NSThread isMainThread])
  {
    sub_1007899B8();
  }

  v3 = [(BKBasePresentingViewController *)self sampleProfileFuture];
  if (![(BKBasePresentingViewController *)self didFetchProfile])
  {
    [(BKBasePresentingViewController *)self setDidFetchProfile:1];
    v4 = [(BKBasePresentingViewController *)self assetIdentifier];
    v5 = [v4 permanentAssetID];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000657E4;
    v7[3] = &unk_100A03E58;
    v8 = v3;
    [(BKBasePresentingViewController *)self _fetchProfileForStoreID:v5 completion:v7];
  }

  return v3;
}

- (void)assetViewController:(id)a3 updateBuyButton:(id)a4 setIsDark:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  [v7 setStyle:2];
  objc_opt_class();
  v8 = [v7 customView];
  v9 = BUDynamicCast();

  if (v9)
  {
    if ([v9 isPreorder])
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    v11 = +[BCBuyButtonColorProvider colorsForButtonState:isDark:isEnabled:](BCBuyButtonColorProvider, "colorsForButtonState:isDark:isEnabled:", v10, v5, [v9 isEnabled]);
    v12 = [v11 backgroundColor];
    [v7 setTintColor:v12];

    if (v5)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [v9 setOverrideUserInterfaceStyle:v13];
    [(BKBasePresentingViewController *)self _configureBuyButton:v9];
    v14 = [v11 foregroundColor];
    [v9 setTitleColor:v14 forState:0];
  }

  else
  {
    v15 = BCIMLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1007899F4();
    }
  }
}

- (id)assetViewControllerBuyButtonItem:(id)a3 isSample:(BOOL)a4 isPreorder:(BOOL)a5 storeID:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = v11;
  v13 = 0;
  if (v8 && !a5)
  {
    if ([v11 length])
    {
      v14 = [(BKBasePresentingViewController *)self buyButtonItem];

      if (!v14)
      {
        v15 = [(BKBasePresentingViewController *)self _newBarButtonItemWithBuyButton];
        [(BKBasePresentingViewController *)self setBuyButtonItem:v15];

        v16 = [(BKBasePresentingViewController *)self _buyButton];
        [v16 setIsPreorder:0];
        [v16 setModeState:0];
        [v16 addTarget:self action:"requestToBuy:" forControlEvents:64];
        [(BKBasePresentingViewController *)self setStoreID:v12];
        objc_initWeak(&location, self);
        v17 = [(BKBasePresentingViewController *)self sampleProfileFuture];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100065C20;
        v21[3] = &unk_100A03ED0;
        objc_copyWeak(&v23, &location);
        v18 = v16;
        v22 = v18;
        [v17 get:v21];

        v19 = [(BKBasePresentingViewController *)self _fetchSampleProfileFuture];
        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }

      v13 = [(BKBasePresentingViewController *)self buyButtonItem];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)assetViewController:(id)a3 didShowContentWithCFIs:(id)a4
{
  v5 = a4;
  v6 = [(BKBasePresentingViewController *)self readingStatisticsController];
  [v6 cfisDidAppear:v5];
}

- (void)assetViewController:(id)a3 willHideContentWithCFIs:(id)a4
{
  v5 = a4;
  v6 = [(BKBasePresentingViewController *)self readingStatisticsController];
  [v6 cfisWillDisappear:v5];
}

- (void)setFinishedForAssetID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[BKAppDelegate delegate];
    v6 = [v5 serviceCenter];
    v7 = [v6 readingActivityService];

    [(BKBasePresentingViewController *)self libraryAssetProvider];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100065F18;
    v11 = v10[3] = &unk_100A03EF8;
    v12 = v4;
    v13 = v7;
    v14 = self;
    v8 = v7;
    v9 = v11;
    [v9 performBlockOnWorkerQueue:v10];
  }
}

- (void)assetViewController:(id)a3 setFinishedAndCloseForAssetID:(id)a4
{
  v6 = a3;
  [(BKBasePresentingViewController *)self setFinishedForAssetID:a4];
  if (a4)
  {
    [(BKBasePresentingViewController *)self assetViewController:v6 requestClose:1 error:0];
  }
}

- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)a3
{
  v4 = [(BKBasePresentingViewController *)self readingStatisticsController];
  LOBYTE(a3) = [v4 needTextNodeCharacterCountsForOrdinal:a3];

  return a3;
}

- (void)addTextNodeCharacterCounts:(id)a3 ordinal:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BKBasePresentingViewController *)self readingStatisticsController];
  [v10 addTextNodeCharacterCounts:v9 ordinal:a4 completion:v8];
}

- (BOOL)needTOCEntriesForOrdinal:(int64_t)a3
{
  v4 = [(BKBasePresentingViewController *)self readingStatisticsController];
  LOBYTE(a3) = [v4 needTOCEntriesForOrdinal:a3];

  return a3;
}

- (void)addTOCEntries:(id)a3 ordinal:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BKBasePresentingViewController *)self readingStatisticsController];
  [v10 addTOCEntries:v9 ordinal:a4 completion:v8];

  [(BKBasePresentingViewController *)self setNeedToRebuildContextTree:1];
}

- (void)assetViewControllerPaginationCompletedForBook:(id)a3
{
  v4 = [(BKBasePresentingViewController *)self assetIdentifier];
  v5 = [v4 permanentAssetID];

  v6 = +[BCProgressKitController sharedController];
  if (![v6 isTrackingAssetID:v5])
  {
    goto LABEL_4;
  }

  v7 = [(BKBasePresentingViewController *)self needToRebuildContextTree];

  if (v7)
  {
    [(BKBasePresentingViewController *)self setNeedToRebuildContextTree:0];
    v8 = [(BKBasePresentingViewController *)self assetViewController];
    v9 = BUProtocolCast();

    v10 = [(BKBasePresentingViewController *)self readingStatisticsController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100066588;
    v11[3] = &unk_100A03418;
    v12 = v9;
    v6 = v9;
    [v10 tocCFIMapWithCompletion:v11];

LABEL_4:
  }
}

- (void)assetViewController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[BKAppDelegate sceneManager];
  v13 = [v12 sceneControllerForViewController:v11];

  [v13 presentViewController:v10 animated:v6 completion:v9];
}

- (void)assetViewController:(id)a3 presentModalViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = +[BKAppDelegate sceneManager];
  v10 = [v9 sceneControllerForViewController:v8];

  [v10 presentModalViewController:v7 animated:v5];
}

- (id)libraryButtonItemForViewController:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  v8 = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  if ([v7 closeTypeForSceneController:v8] == 3)
  {
    v9 = [(BKBasePresentingViewController *)self _closeBarButtonTitle];
    if ([v9 length])
    {
      v10 = [[UIBarButtonItem alloc] initWithTitle:v9 style:2 target:v6 action:a4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:3 scale:17.0];
    v11 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:17.0];
    v12 = [UIImage systemImageNamed:@"chevron.backward"];
    v13 = [v12 imageWithConfiguration:v9];
    v14 = [v12 imageWithConfiguration:v11];
    v10 = [[UIBarButtonItem alloc] initWithImage:v13 landscapeImagePhone:v14 style:0 target:v6 action:a4];
    [v10 setLargeContentSizeImageInsets:{42.0, 0.0, 0.0, 0.0}];
    [v10 setWidth:32.0];
  }

  return v10;
}

- (BOOL)canUpdateLibraryBarButtonItem:(id)a3 withOldString:(id)a4
{
  if (!a3 || !a4)
  {
    return (a3 != 0) ^ (a4 != 0);
  }

  v5 = a4;
  v6 = [a3 title];
  v7 = [v5 isEqualToString:v6];

  return v7 ^ 1;
}

- (BOOL)readingStatisticsEnabled
{
  v2 = [(BKBasePresentingViewController *)self readingStatisticsController];
  v3 = v2 != 0;

  return v3;
}

- (id)contextMenuWithAssetViewController:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100066BC4;
  v16 = &unk_100A03F20;
  objc_copyWeak(&v19, &location);
  v17 = self;
  v8 = v7;
  v18 = v8;
  v9 = [UIDeferredMenuElement elementWithUncachedProvider:&v13];
  v21 = v9;
  v10 = [NSArray arrayWithObjects:&v21 count:1, v13, v14, v15, v16, v17];
  v11 = [UIMenu menuWithTitle:&stru_100A30A68 children:v10];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

- (id)analyticsAssetPropertyProviderForAssetViewController:(id)a3 fromSourceView:(id)a4
{
  v5 = a4;
  v6 = +[BKContextMenuProvider sharedProvider];
  v7 = [(BKBasePresentingViewController *)self dataModelWithSourceView:v5];

  v8 = [v6 analyticsAssetPropertyProviderForDataModel:v7];

  return v8;
}

- (id)dataModelWithSourceView:(id)a3
{
  v4 = a3;
  v5 = [BSUIContextActionDataAssetModel alloc];
  v6 = [(BKBasePresentingViewController *)self assetIdentifier];
  v7 = [v6 permanentOrTemporaryAssetID];
  v8 = [v5 initWithAdamID:v7];

  v9 = [[BSUIContextActionDataModel alloc] initWithAssetModel:v8 sourceView:v4];

  return v9;
}

- (void)assetViewController:(id)a3 openSupplementalAssetWithIdentifier:(id)a4
{
  v5 = a4;
  v6 = +[BKLibraryManager defaultManager];
  v7 = [v6 libraryAssetOnMainQueueWithAssetIdentifier:v5];

  v8 = objc_opt_new();
  v9 = +[BKAppDelegate sceneManager];
  v10 = [v9 sceneControllerForViewController:self];
  v11 = [v10 newShowAssetTransaction];
  v12 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100066F60;
  v17[3] = &unk_100A03F70;
  v18 = v11;
  v19 = v8;
  v20 = v7;
  v21 = self;
  v22 = v5;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v11;
  [v12 preflightShowAssetWithTransaction:v16 assetIdentifier:v13 completion:v17];
}

- (BOOL)assetViewControllerIsPresentingSupplementalContent:(id)a3
{
  v3 = [(BKBasePresentingViewController *)self bc_contextualPresentedViewController];
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = [v4 isSupplementalContent];

  return v5;
}

- (void)readingStatisticsDidChangeOnController:(id)a3 changes:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134218242;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Reading statistics changed on controller %p changes=%@", &v8, 0x16u);
  }
}

- (void)timeTracker:(id)a3 didPromoteAsset:(id)a4 deletedFromWantToRead:(BOOL)a5
{
  v5 = a5;
  [(BKBasePresentingViewController *)BKAssetPresentingViewController _markBookAsCurrent:a4];
  if (v5)
  {
    v7 = [(BKBasePresentingViewController *)self ba_effectiveAnalyticsTracker];
    v8 = [(BKBasePresentingViewController *)self libraryAssetProvider];
    v9 = [(BKBasePresentingViewController *)self assetIdentifier];
    v10 = [v8 libraryAssetOnMainQueueWithAssetIdentifier:v9];

    if (v10 && v7)
    {
      v11 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v10 contentType]);
      v12 = +[BAEventReporter sharedReporter];
      v13 = [v10 assetID];
      [v12 emitRemoveFromWantListEventWithTracker:v7 contentID:v13 contentType:v11];
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100067444;
  v17[3] = &unk_100A033C8;
  v17[4] = self;
  v14 = objc_retainBlock(v17);
  if (v14)
  {
    if (+[NSThread isMainThread])
    {
      (v14[2])(v14);
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000675B4;
      v15[3] = &unk_100A03920;
      v16 = v14;
      dispatch_async(&_dispatch_main_q, v15);
    }
  }
}

- (void)_confirmBookSuccessfullyOpened
{
  v3 = BCCurrentBookLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Book was confirmed successfully open.", buf, 2u);
  }

  v4 = [(BKBasePresentingViewController *)self assetIdentifier];
  v5 = [v4 permanentAssetID];

  [(BKBasePresentingViewController *)self _updateLastOpenBookWithAssetID:v5];
  [(BKBasePresentingViewController *)self _maybeUpdateSuccessfullyOpenedCurrentBook:v5];
  [(BKBasePresentingViewController *)self setSuccessfullyOpened:1];
  if (![(BKBasePresentingViewController *)self isSupplementalContent])
  {
    v6 = +[BKLastOpenBookManager sharedInstance];
    [v6 updateSuccessfullyOpenedBookForAssetID:v5 successfullyOpenedBook:1];
  }

  v7 = +[UIApplication sharedApplication];
  v8 = [v7 applicationState];

  v9 = BCCurrentBookLog();
  v10 = v9;
  if (v8 == 2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100789A30();
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Book was confirmed successfully open, start tracking.", v11, 2u);
    }

    [(BKBasePresentingViewController *)self _beginReadingSessionForEventType:0];
  }
}

- (void)_startBookSuccessfullyOpenedTimer
{
  v3 = BCCurrentBookLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Scheduling successfully opened timer", buf, 2u);
  }

  v4 = +[BCJSConfiguration sharedInstance];
  v5 = [v4 timeThresholdForOpenEvent];
  v6 = [v5 longLongValue];

  objc_initWeak(buf, self);
  [(BKBasePresentingViewController *)self _cancelSuccessfullyOpenedTimerIfNeeded];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000678C8;
  v8[3] = &unk_100A03FB8;
  objc_copyWeak(&v9, buf);
  v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];
  [(BKBasePresentingViewController *)self setSuccessfullyOpenedTimer:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_cancelSuccessfullyOpenedTimerIfNeeded
{
  v3 = [(BKBasePresentingViewController *)self successfullyOpenedTimer];
  if (v3)
  {
    v4 = v3;
    v5 = [(BKBasePresentingViewController *)self successfullyOpenedTimer];
    v6 = [v5 isValid];

    if (v6)
    {
      v7 = BCCurrentBookLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Cancelling successfully opened timer", v9, 2u);
      }

      v8 = [(BKBasePresentingViewController *)self successfullyOpenedTimer];
      [v8 invalidate];

      [(BKBasePresentingViewController *)self setSuccessfullyOpenedTimer:0];
    }
  }
}

+ (void)startingOpenOfMinifedCurrentBook:(id)a3
{
  v3 = a3;
  v4 = BCCurrentBookLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting open of book as minified & current %@.", &v7, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:0 forKey:@"kSuccessfullyOpenedCurrentBook"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];
}

+ (void)_markBookAsCurrent:(id)a3
{
  v3 = a3;
  v4 = BCCurrentBookLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Marking book as current %@.", &v6, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v3 forKey:@"kLastCurrentBookKey"];
  [v5 setBool:1 forKey:@"kSuccessfullyOpenedCurrentBook"];
  [v5 synchronize];
}

+ (void)markCarPlayBackgroundBookAsCurrent:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:v4 forKey:@"BKMainViewControllerLastBook"];
  [v5 setBool:1 forKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  [a1 _markBookAsCurrent:v4];
}

- (void)_maybeUpdateSuccessfullyOpenedCurrentBook:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"kLastCurrentBookKey"];
  if ([v5 isEqualToString:v3])
  {
    v6 = BCCurrentBookLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Current book successfully opened %@.", &v7, 0xCu);
    }

    [v4 setBool:1 forKey:@"kSuccessfullyOpenedCurrentBook"];
    [v4 synchronize];
  }
}

- (void)_updateLastOpenBookWithAssetID:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    if ([(BKBasePresentingViewController *)self willTerminate]|| [(BKBasePresentingViewController *)self isResigningActive])
    {
      goto LABEL_11;
    }

    v7 = [(BKBasePresentingViewController *)self assetIdentifier];
    v5 = [v7 permanentAssetID];

    v4 = 0;
  }

  if ([v4 length] && !-[BKBasePresentingViewController isSupplementalContent](self, "isSupplementalContent"))
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v8 = +[BKLastOpenBookManager sharedInstance];
  [v8 updateLastOpenBookByRemovingAssetID:v5 addingAssetID:v6];

LABEL_11:
}

+ (id)_lastOpenedBookWithKey:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  v6 = BCCurrentBookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Last known assetID: %@ (for key %@)", &v8, 0x16u);
  }

  return v5;
}

+ (id)_successfullyOpenedBookWithKey:(id)a3 successKey:(id)a4 deleteOnFailure:(BOOL)a5
{
  v5 = [a1 _lastOpenedBookWithKey:{a3, a4, a5}];
  if ([v5 length])
  {
    v6 = +[BKLastOpenBookManager sharedInstance];
    v7 = [v6 shouldAutoOpenAsset:v5];

    if ((v7 & 1) == 0)
    {

      v5 = 0;
    }
  }

  return v5;
}

+ (void)clearLastKnownSuccessfullyOpenBookID
{
  v2 = BCCurrentBookLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clearing last known book.", v4, 2u);
  }

  v3 = +[BKLastOpenBookManager sharedInstance];
  [v3 clearAllLastOpenBooks];
}

+ (void)clearLastKnownSuccessfullyOpenedCurrentBookID
{
  v2 = BCCurrentBookLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Asked to clear current spread. Actually clearing Current Book.", v5, 2u);
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"kSuccessfullyOpenedCurrentBook"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:@"kLastCurrentBookKey"];
}

+ (id)futureViewControllerWithAssetIdentifier:(id)a3 libraryAssetProvider:(id)a4 options:(id)a5
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000682A4;
  v17[3] = &unk_100A03FE0;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v7 = objc_opt_new();
  v21 = v7;
  v8 = v20;
  v9 = v19;
  v10 = v18;
  [BKAssetLookup assetLookupWithIdentifier:v10 options:v8 completion:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100068368;
  v16 = v15[3] = &unk_100A04008;
  v11 = v16;
  [v7 get:v15];
  v12 = v16;
  v13 = v7;

  return v7;
}

- (NSString)assetPresenterAssetID
{
  v2 = [(BKBasePresentingViewController *)self assetIdentifier];
  v3 = [v2 permanentAssetID];

  return v3;
}

- (NSString)assetPresenterPermanentOrTemporaryAssetID
{
  v2 = [(BKBasePresentingViewController *)self assetIdentifier];
  v3 = [v2 permanentOrTemporaryAssetID];

  return v3;
}

- (void)assetPresenterOpenToLocation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BKBasePresentingViewController *)self assetViewController];
  [v7 openToLocation:v6 animated:v4];
}

- (void)assetPresenterJumpToBeginningAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKBasePresentingViewController *)self assetViewController];
  [v4 jumpToBeginningAnimated:v3];
}

- (void)assetPresenterPrepareForDismissal
{
  [(BKBasePresentingViewController *)self setStateShouldClose:1];
  [(BKBasePresentingViewController *)self _cancelInteractionTimerIfNeeded];

  [(BKBasePresentingViewController *)self _cancelSuccessfullyOpenedTimerIfNeeded];
}

- (void)assetPresenterDismissalDidEnd:(BOOL)a3
{
  v3 = a3;
  [(BKBasePresentingViewController *)self setStateDismissInProgress:0];
  [(BKBasePresentingViewController *)self setStateShouldClose:0];
  if (v3)
  {
    [(BKBasePresentingViewController *)self _finalizeAssetVCState];
    v5 = [(BKBasePresentingViewController *)self assetViewController];

    if (v5)
    {
      v6 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
      [v6 updateAllAssetPresenterCloseStateTypes];
    }
  }
}

- (void)assetPresenterUpdateToolbars
{
  v2 = [(BKBasePresentingViewController *)self assetViewController];
  [v2 assetViewControllerUpdateToolbars];
}

- (BOOL)assetPresenterKeepOpenWithoutBundle
{
  if (([(BKBasePresentingViewController *)self stateFlags]& 8) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(BKBasePresentingViewController *)self stateFlags]>> 2) & 1;
  }

  return v3;
}

- (id)assetPresenterCoverAnimationSource
{
  v2 = [(BKBasePresentingViewController *)self openOptions];
  v3 = [v2 objectForKeyedSubscript:@"BKBookPresentingCoverAnimationSource"];
  v4 = BUProtocolCast();

  return v4;
}

- (id)assetPresenterCoverImage
{
  objc_opt_class();
  v3 = [(BKBasePresentingViewController *)self openOptions];
  v4 = [v3 objectForKeyedSubscript:@"BKBookPresentingCoverImage"];
  v5 = BUDynamicCast();

  return v5;
}

- (id)assetPresenterCoverShadowImage
{
  objc_opt_class();
  v3 = [(BKBasePresentingViewController *)self openOptions];
  v4 = [v3 objectForKeyedSubscript:@"BKBookPresentingCoverShadowImage"];
  v5 = BUDynamicCast();

  return v5;
}

- (void)im_dismissAnimated:(BOOL)a3 immediate:(BOOL)a4
{
  if (([(BKBasePresentingViewController *)self stateFlags]& 1) != 0 || [(BKBasePresentingViewController *)self stateShouldClose])
  {
    v7 = BCCurrentBookLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = [(BKBasePresentingViewController *)self stateFlags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ignored dismiss of asset due to state: %ld", buf, 0xCu);
    }
  }

  else
  {
    [(BKBasePresentingViewController *)self setAutoOpen:0];
    v8 = [(BKBasePresentingViewController *)self assetLookup];
    [v8 cancel];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100068B50;
    v23[3] = &unk_100A04030;
    v24 = a3;
    v25 = a4;
    v23[4] = self;
    v9 = objc_retainBlock(v23);
    objc_initWeak(buf, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100068B94;
    v20[3] = &unk_100A04058;
    objc_copyWeak(&v22, buf);
    v10 = v9;
    v21 = v10;
    v11 = objc_retainBlock(v20);
    if ([(BKBasePresentingViewController *)self _shouldTrackReadingSession])
    {
      v12 = BCBookPromotionLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Ending reading session due to being dismissed to current book.", v19, 2u);
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100068CD8;
    v15[3] = &unk_100A04110;
    v15[4] = self;
    v18 = a4;
    v13 = v10;
    v16 = v13;
    v14 = v11;
    v17 = v14;
    [(BKBasePresentingViewController *)self _endReadingSessionForEventType:2 withCompletion:v15];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

- (void)updatePromotionStateWithCompletion:(id)a3
{
  v4 = a3;
  if ([(BKBasePresentingViewController *)self _shouldTrackReadingSession])
  {
    v5 = BCBookPromotionLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ending reading session due to another asset being promoted.", buf, 2u);
    }
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069284;
  v7[3] = &unk_100A04160;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BKBasePresentingViewController *)self _endReadingSessionForEventType:2 withCompletion:v7];
}

- (id)_buyButton
{
  objc_opt_class();
  v3 = [(BKBasePresentingViewController *)self buyButtonItem];
  v4 = [v3 customView];
  v5 = [v4 viewWithTag:7];
  v6 = BUDynamicCast();

  return v6;
}

- (void)_updateBuyButtonProgressIfNeeded
{
  if ([(BKLibraryDownloadStatus *)self->_progressStatus state]== 4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100069758;
    v6[3] = &unk_100A033C8;
    v6[4] = self;
    v3 = objc_retainBlock(v6);
    if (v3)
    {
      if (+[NSThread isMainThread])
      {
        (v3[2])(v3);
      }

      else
      {
        v4[0] = _NSConcreteStackBlock;
        v4[1] = 3221225472;
        v4[2] = sub_100069840;
        v4[3] = &unk_100A03920;
        v5 = v3;
        dispatch_async(&_dispatch_main_q, v4);
      }
    }
  }
}

- (void)_configureBuyButton:(id)a3
{
  v3 = a3;
  if ([v3 isPreorder])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  v10 = +[BCBuyButtonColorProvider colorsForButtonState:isDark:isEnabled:](BCBuyButtonColorProvider, "colorsForButtonState:isDark:isEnabled:", v4, [v3 overrideUserInterfaceStyle] == 2, objc_msgSend(v3, "isEnabled"));
  v5 = [v10 foregroundColor];
  [v3 setTitleColor:v5 forState:0];

  v6 = [v10 foregroundColor];
  v7 = [v6 colorWithAlphaComponent:0.25];
  [v3 setTitleColor:v7 forState:1];

  v8 = [v10 foregroundColor];
  v9 = [v8 colorWithAlphaComponent:0.25];
  [v3 setTitleColor:v9 forState:2];
}

- (id)_newBarButtonItemWithBuyButton
{
  v3 = [[IMButtonAndRadialProgress alloc] initWithFrame:{0.0, 0.0, 54.0, 26.0}];
  [(BKBasePresentingViewController *)self _configureBuyButton:v3];
  v4 = [v3 titleLabel];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v4 setFont:v5];

  v6 = [v3 titleLabel];
  [v6 setAdjustsFontSizeToFitWidth:1];

  v7 = [v3 titleLabel];
  [v7 setMinimumScaleFactor:0.5];

  [v3 setTag:7];
  v8 = [[UIBarButtonItem alloc] initWithCustomView:v3];
  [v8 setSharesBackground:0];

  return v8;
}

- (id)traitCollection
{
  v6.receiver = self;
  v6.super_class = BKBasePresentingViewController;
  v3 = [(BKBasePresentingViewController *)&v6 traitCollection];
  v4 = [(BKBasePresentingViewController *)self im_traitCollectionAdjustedForMedusaLevels:v3];

  return v4;
}

- (void)_configureBuyButtonForPricing:(id)a3 profile:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (!+[NSThread isMainThread])
  {
    sub_100789AA4();
  }

  v7 = [v6 actionTextWithType:0];
  [v14 setTitle:v7 forState:0];
  if ([v6 isPreorder])
  {
    [v14 setIsPreorder:1];
    [(BKBasePresentingViewController *)self _configureBuyButton:v14];
  }

  v8 = [v6 buyParameters];
  v9 = [v8 length];

  if (!v9)
  {
    v11 = 0;
    goto LABEL_12;
  }

  v10 = +[BUAccountsProvider sharedProvider];
  if ([v10 isStoreAccountManagedAppleID])
  {
  }

  else
  {
    v12 = +[BURestrictionsProvider sharedInstance];
    v13 = [v12 isBookStoreAllowed];

    if (v13)
    {
      v11 = 1;
      goto LABEL_12;
    }
  }

  v11 = 3;
LABEL_12:
  [v14 setModeState:v11];
}

- (void)_fetchProfileForStoreID:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[AEUserPublishing sharedInstance];
  v14 = v5;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100069D7C;
  v11[3] = &unk_100A04188;
  v12 = v5;
  v13 = v6;
  v9 = v5;
  v10 = v6;
  [v7 productProfilesForStoreIDs:v8 completion:v11];
}

- (void)_downloadStatusNotification:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v18 = v4;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:BKLibraryDownloadStatusKey];
  v7 = BUDynamicCast();

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 assetID];
        v15 = [(BKBasePresentingViewController *)self assetIdentifier];
        v16 = [v15 permanentOrTemporaryAssetID];

        if ([v16 isEqualToString:v14])
        {
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10006A1A4;
          v21[3] = &unk_100A03A30;
          v21[4] = self;
          v22 = v16;
          v23 = v13;
          v17 = objc_retainBlock(v21);
          if (v17)
          {
            if (+[NSThread isMainThread])
            {
              (v17[2])(v17);
            }

            else
            {
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_10006A234;
              block[3] = &unk_100A03920;
              v20 = v17;
              dispatch_async(&_dispatch_main_q, block);
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)_libraryOwnershipNotification:(id)a3
{
  [a3 userInfo];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = v19 = 0u;
  v4 = [v15 objectForKeyedSubscript:BKLibraryOwnershipAssetsKey];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = BKLibraryOwnershipAssetIDKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:v8];
        v11 = [(BKBasePresentingViewController *)self assetIdentifier];
        v12 = [v11 permanentAssetID];

        if ([v10 isEqualToString:v12])
        {
          if (self->_progressStatus)
          {
            [(BKBasePresentingViewController *)self _updateAssetStateAndDownloadStatus:?];
            progressStatus = self->_progressStatus;
          }

          else
          {
            progressStatus = 0;
          }

          if ([(BKLibraryDownloadStatus *)progressStatus state]== 5)
          {
            [(BKLibraryDownloadStatus *)self->_progressStatus progressValue];
            if (v14 >= 1.0)
            {
              [(BKBasePresentingViewController *)self setProgressStatus:0];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)_updateAssetStateAndDownloadStatus:(id)a3
{
  v4 = a3;
  v5 = [(BKBasePresentingViewController *)self assetViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006A4D8;
    v7[3] = &unk_100A03440;
    v8 = v4;
    v9 = self;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

- (void)_sendDeferredURLOpenRequests
{
  v13 = +[BKAppDelegate sceneManager];
  v3 = [v13 sceneControllerForViewController:self];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [(NSMutableDictionary *)self->_deferredURLOpenRequests allKeys];
  v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_deferredURLOpenRequests objectForKeyedSubscript:v8];
        v10 = [v3 newShowURLTransaction];
        [v13 handleApplicationURL:v8 sourceApplication:@"__self__" annotation:0 likelyUserInitiated:v9 transaction:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  deferredURLOpenRequests = self->_deferredURLOpenRequests;
  self->_deferredURLOpenRequests = 0;
}

- (id)analyticsContentDataForAssetViewController:(id)a3 contentSubType:(id)a4 tracker:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v10 = [(BKBasePresentingViewController *)self assetIdentifier];
  v11 = [v9 libraryAssetOnMainQueueWithAssetIdentifier:v10];

  if (v11)
  {
    v41 = v7;
    v12 = [v11 contentType];
    v38 = [BAUtilities contentTypeFromAssetType:v12];
    v13 = [v11 storeID];
    v14 = [v13 length];
    v15 = 1;
    if (!v14)
    {
      v15 = 2;
    }

    v37 = v15;

    v16 = [(BKBasePresentingViewController *)self assetIdentifier];
    v17 = [v16 permanentAssetID];

    v40 = [v8 contentPrivateIDForContentID:v17];
    v39 = [v8 contentUserIDForContentID:v17];
    v18 = +[BAEventReporter sharedReporter];
    v36 = [v18 seriesTypeForContentID:v17];

    if ([v11 isAudiobook])
    {
      v19 = [v11 hasRACSupport];
      v20 = [v19 BOOLValue];
      v21 = 1;
      if (!v20)
      {
        v21 = 2;
      }

      v35 = v21;
    }

    else
    {
      v35 = 0;
    }

    v23 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
    if (v23 && (v24 = v23, v25 = _os_feature_enabled_impl(), v24, v25))
    {
      v26 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v26 supportsUnifiedProductPage]);

      v28 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
      v29 = [v28 editionKind];
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = [BAContentData alloc];
    if (v12 == 3)
    {
      v31 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 pageCount]);
    }

    else
    {
      v31 = 0;
    }

    v32 = [v11 supplementalContentAssets];
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 count]);
    v22 = [v30 initWithContentID:v17 contentType:v38 contentPrivateID:v40 contentUserID:v39 contentAcquisitionType:v37 contentSubType:v41 contentLength:v31 supplementalContentCount:v33 seriesType:v36 productionType:v35 isUnified:v27 contentKind:v29];

    if (v12 == 3)
    {
    }

    v7 = v41;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)assetViewController:(id)a3 presentTranslationForText:(id)a4 fromRect:(CGRect)a5 onClose:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(LTUITranslationViewController);
  v17 = [[NSAttributedString alloc] initWithString:v14];

  [v16 setText:v17];
  [v16 setIsSourceEditable:0];
  [v16 setOverrideUserInterfaceStyle:{objc_msgSend(v15, "preferredUserInterfaceStyle")}];
  [v16 setModalPresentationStyle:7];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006AD4C;
  v21[3] = &unk_100A03920;
  v22 = v13;
  v18 = v13;
  [v16 setDismissCompletionHandler:v21];
  v19 = [v16 popoverPresentationController];
  v20 = [v15 view];
  [v19 setSourceView:v20];

  [v19 setSourceRect:{x, y, width, height}];
  [v19 setPermittedArrowDirections:15];
  [v19 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:v15];
  [(BKBasePresentingViewController *)self assetViewController:v15 presentViewController:v16 animated:1 completion:0];
}

- (void)_beginReadingSessionForEventType:(unint64_t)a3
{
  v5 = [(BKBasePresentingViewController *)self assetIdentifier];
  v6 = [v5 permanentAssetID];

  if ((a3 | 4) == 4)
  {
    v7 = [(BKBasePresentingViewController *)self sessionID];
    if (v7)
    {
    }

    else if ([(BKBasePresentingViewController *)self _shouldTrackReadingSession])
    {
      v9 = +[NSUUID UUID];
      [(BKBasePresentingViewController *)self setSessionID:v9];

      v10 = BCCurrentBookLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting reading session for book with assetID: %@", &v15, 0xCu);
      }

      v11 = [(BKBasePresentingViewController *)self assetViewController];
      if ([v11 readerType] == 6)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v13 = +[BCBookReadingTimeTracker sharedInstance];
      v14 = [(BKBasePresentingViewController *)self sessionID];
      [v13 trackReadingSessionBeganWithAssetID:v6 sessionID:v14 trackerEventType:a3 readingFeatureFlags:v12 completion:0];
    }
  }

  else
  {
    v8 = BCCurrentBookLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100789AE0();
    }
  }
}

- (void)_endReadingSessionForEventType:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(BKBasePresentingViewController *)self assetIdentifier];
  v8 = [v7 permanentAssetID];

  if (v8 && ([(BKBasePresentingViewController *)self sessionID], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, v11 = [(BKBasePresentingViewController *)self _shouldTrackReadingSession], v10, v11))
  {
    v12 = BCCurrentBookLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ending reading session for book with assetID: %@", buf, 0xCu);
    }

    v13 = [(BKBasePresentingViewController *)self assetViewController];
    if ([v13 readerType] == 6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = +[BCBookReadingTimeTracker sharedInstance];
    v16 = [(BKBasePresentingViewController *)self sessionID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006B1A8;
    v19[3] = &unk_100A041B0;
    v20 = v6;
    [v15 trackReadingSessionEndedWithAssetID:v8 sessionID:v16 trackerEventType:a3 readingFeatureFlags:v14 completion:v19];

    [(BKBasePresentingViewController *)self setSessionID:0];
  }

  else
  {
    v17 = objc_retainBlock(v6);
    if (v17)
    {
      v18 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      v17[2](v17, [v8 isEqualToString:v18]);
    }
  }
}

- (void)assetPresenterUpdateCloseTypeState
{
  v2 = [(BKBasePresentingViewController *)self assetViewController];
  [v2 assetViewControllerUpdateCloseStateTypeIfNeeded];
}

- (id)bc_childCardPresentingViewController
{
  v2 = [(BKBasePresentingViewController *)self presentedViewController];
  v3 = BUProtocolCast();

  return v3;
}

- (void)_willEnterFullScreen:(id)a3
{
  v4 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100789B58();
  }

  [(BKBasePresentingViewController *)self setEnteringFullScreen:1];
  v5 = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [v5 assetViewControllerWillEnterFullScreen];
  }
}

- (void)_didEnterFullScreen:(id)a3
{
  v4 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100789B8C();
  }

  [(BKBasePresentingViewController *)self setEnteringFullScreen:0];
  [(BKBasePresentingViewController *)self setInFullScreen:1];
  v5 = +[UIMenuSystem mainSystem];
  [v5 setNeedsRebuild];

  v6 = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 assetViewControllerDidEnterFullScreen];
  }
}

- (void)_willExitFullScreen:(id)a3
{
  v4 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100789BC0();
  }

  [(BKBasePresentingViewController *)self setExitingFullScreen:1];
  v5 = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [v5 assetViewControllerWillExitFullScreen];
  }
}

- (void)_didExitFullScreen:(id)a3
{
  v4 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100789BF4();
  }

  [(BKBasePresentingViewController *)self setExitingFullScreen:0];
  [(BKBasePresentingViewController *)self setInFullScreen:0];
  v5 = +[UIMenuSystem mainSystem];
  [v5 setNeedsRebuild];

  v6 = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [v6 assetViewControllerDidExitFullScreen];
  }
}

- (void)bkaxSetUpAccessibilityForPresentedBook
{
  v13 = [(BKBasePresentingViewController *)self view];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 isEqualToString:@"UITransitionView"];

  if (v4)
  {
    v5 = v13;
LABEL_6:
    v11 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
    [v5 setAccessibilityIdentifier:v11];

    v12 = v5;
  }

  else
  {
    v6 = v13;
    while (1)
    {
      v14 = v6;
      v7 = [v6 superview];

      if (!v7)
      {
        break;
      }

      v5 = [v14 superview];

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v9 isEqualToString:@"UITransitionView"];

      v6 = v5;
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v12 = v14;
  }
}

- (BKContentOpenAnimating)assetPresenterAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_assetPresenterAnimator);

  return WeakRetained;
}

- (BKLibraryAssetProvider)libraryAssetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryAssetProvider);

  return WeakRetained;
}

- (BKAssetPresentingViewControllerHoldAnimationAssertion)holdAnimationAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_holdAnimationAssertion);

  return WeakRetained;
}

- (CGRect)liveResizeViewOriginalFrame
{
  x = self->_liveResizeViewOriginalFrame.origin.x;
  y = self->_liveResizeViewOriginalFrame.origin.y;
  width = self->_liveResizeViewOriginalFrame.size.width;
  height = self->_liveResizeViewOriginalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end