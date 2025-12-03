@interface BKBasePresentingViewController
+ (id)_lastOpenedBookWithKey:(id)key;
+ (id)_successfullyOpenedBookWithKey:(id)key successKey:(id)successKey deleteOnFailure:(BOOL)failure;
+ (id)animatorForAsset:(id)asset isCurrentBook:(BOOL)book opening:(BOOL)opening largeCover:(BOOL)cover skipZoom:(BOOL)zoom;
+ (id)defaultAnimatorForOpening:(BOOL)opening skipReveal:(BOOL)reveal;
+ (id)futureViewControllerWithAssetIdentifier:(id)identifier libraryAssetProvider:(id)provider options:(id)options;
+ (id)holdAnimationAssertion;
+ (void)_markBookAsCurrent:(id)current;
+ (void)clearLastKnownSuccessfullyOpenBookID;
+ (void)clearLastKnownSuccessfullyOpenedCurrentBookID;
+ (void)initialize;
+ (void)markCarPlayBackgroundBookAsCurrent:(id)current;
+ (void)startingOpenOfMinifedCurrentBook:(id)book;
- (BKAssetPresentingViewControllerHoldAnimationAssertion)holdAnimationAssertion;
- (BKBasePresentingViewController)initWithAssetIdentifier:(id)identifier assetViewController:(id)controller helper:(id)helper libraryAssetProvider:(id)provider;
- (BKBasePresentingViewController)initWithAssetIdentifier:(id)identifier placeholderViewController:(id)controller holdAnimationAssertion:(id)assertion libraryAssetProvider:(id)provider;
- (BKContentOpenAnimating)assetPresenterAnimator;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKMinifiedPresenting)minifiedPresenter;
- (BOOL)_isAudiobook;
- (BOOL)_isHostedInAuxiliaryScene;
- (BOOL)_shouldTrackReadingSession;
- (BOOL)assetPresenterKeepOpenWithoutBundle;
- (BOOL)assetViewController:(id)controller requestClose:(BOOL)close finishedConsuming:(BOOL)consuming error:(id)error withErrorBlock:(id)block;
- (BOOL)assetViewController:(id)controller requestOpenURL:(id)l likelyUserInitiated:(BOOL)initiated;
- (BOOL)assetViewControllerIsCurrentBook:(id)book;
- (BOOL)assetViewControllerIsPresentingSupplementalContent:(id)content;
- (BOOL)canUpdateLibraryBarButtonItem:(id)item withOldString:(id)string;
- (BOOL)needTOCEntriesForOrdinal:(int64_t)ordinal;
- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal;
- (BOOL)prefersStatusBarHidden;
- (BOOL)readingStatisticsEnabled;
- (BOOL)shouldCloseDueToAssetDeletion;
- (CGRect)liveResizeViewOriginalFrame;
- (NSString)assetPresenterAssetID;
- (NSString)assetPresenterPermanentOrTemporaryAssetID;
- (double)_transitionDurationForLiveResizeOfViewController:(id)controller;
- (id)_buyButton;
- (id)_closeBarButtonTitle;
- (id)_fetchSampleProfileFuture;
- (id)_newBarButtonItemWithBuyButton;
- (id)_sceneControllerCurrentlyHostingAssetPresenter;
- (id)analyticsAssetPropertyProviderForAssetViewController:(id)controller fromSourceView:(id)view;
- (id)analyticsContentDataForAssetViewController:(id)controller contentSubType:(id)type tracker:(id)tracker;
- (id)assetPresenterCoverAnimationSource;
- (id)assetPresenterCoverImage;
- (id)assetPresenterCoverShadowImage;
- (id)assetViewControllerBuyButtonItem:(id)item isSample:(BOOL)sample isPreorder:(BOOL)preorder storeID:(id)d;
- (id)assetViewControllerMinifiedBarButtonItem:(id)item;
- (id)backItemForCoverView;
- (id)bc_childCardPresentingViewController;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)contextMenuWithAssetViewController:(id)controller sourceView:(id)view;
- (id)dataModelWithSourceView:(id)view;
- (id)libraryButtonItemForViewController:(id)controller selector:(SEL)selector;
- (id)traitCollection;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_applicationWillResignActiveNotification:(id)notification;
- (void)_assetPresenterDidEnterBackground;
- (void)_assetPresenterWillEnterForeground;
- (void)_beginReadingSessionForEventType:(unint64_t)type;
- (void)_cancelInteractionTimerIfNeeded;
- (void)_cancelSuccessfullyOpenedTimerIfNeeded;
- (void)_clearCacheForBook:(id)book;
- (void)_clearLiveResizeViews;
- (void)_commonInitWithIdentifier:(id)identifier libraryAssetProvider:(id)provider;
- (void)_configureBuyButton:(id)button;
- (void)_configureBuyButtonForPricing:(id)pricing profile:(id)profile;
- (void)_confirmBookSuccessfullyOpened;
- (void)_didEnterFullScreen:(id)screen;
- (void)_didExitFullScreen:(id)screen;
- (void)_didOpenBookAnimated:(BOOL)animated;
- (void)_downloadStatusNotification:(id)notification;
- (void)_endReadingSessionForEventType:(unint64_t)type withCompletion:(id)completion;
- (void)_fetchProfileForStoreID:(id)d completion:(id)completion;
- (void)_finalizeAssetVCState;
- (void)_handleClosingCleanup:(BOOL)cleanup;
- (void)_libraryOwnershipNotification:(id)notification;
- (void)_loadAssetVC;
- (void)_loadWithAssetViewController:(id)controller helper:(id)helper;
- (void)_maybeUpdateSuccessfullyOpenedCurrentBook:(id)book;
- (void)_refreshReadingState;
- (void)_reloadAssetCloseViewController:(BOOL)controller;
- (void)_sendDeferredURLOpenRequests;
- (void)_startBookSuccessfullyOpenedTimer;
- (void)_startInteractionTimer;
- (void)_updateAssetStateAndDownloadStatus:(id)status;
- (void)_updateBuyButtonProgressIfNeeded;
- (void)_updateLastOpenBookWithAssetID:(id)d;
- (void)_updateLibraryAssetFromMetadataWithURL:(id)l completion:(id)completion;
- (void)_waitForOngoingMigrationAttemptToFinish:(id)finish completion:(id)completion;
- (void)_willEnterFullScreen:(id)screen;
- (void)_willExitFullScreen:(id)screen;
- (void)_willOpenBookAnimated:(BOOL)animated;
- (void)addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion;
- (void)addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion;
- (void)assetPresenterDismissalDidEnd:(BOOL)end;
- (void)assetPresenterJumpToBeginningAnimated:(BOOL)animated;
- (void)assetPresenterOpenToLocation:(id)location animated:(BOOL)animated;
- (void)assetPresenterPrepareForDismissal;
- (void)assetPresenterPrepareForTermination;
- (void)assetPresenterUpdateCloseTypeState;
- (void)assetPresenterUpdateToolbars;
- (void)assetViewController:(id)controller assetPropertyChanged:(id)changed;
- (void)assetViewController:(id)controller attemptClose:(BOOL)close;
- (void)assetViewController:(id)controller cancelledClose:(BOOL)close;
- (void)assetViewController:(id)controller didShowContentWithCFIs:(id)is;
- (void)assetViewController:(id)controller handleFamilyChangeError:(id)error;
- (void)assetViewController:(id)controller openSupplementalAssetWithIdentifier:(id)identifier;
- (void)assetViewController:(id)controller presentModalViewController:(id)viewController animated:(BOOL)animated;
- (void)assetViewController:(id)controller presentTranslationForText:(id)text fromRect:(CGRect)rect onClose:(id)close;
- (void)assetViewController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)assetViewController:(id)controller setFinishedAndCloseForAssetID:(id)d;
- (void)assetViewController:(id)controller updateBuyButton:(id)button setIsDark:(BOOL)dark;
- (void)assetViewController:(id)controller willClose:(BOOL)close;
- (void)assetViewController:(id)controller willHideContentWithCFIs:(id)is;
- (void)assetViewController:(id)controller willOpen:(BOOL)open;
- (void)assetViewControllerPaginationCompletedForBook:(id)book;
- (void)assetViewControllerSignificantReadingLocationChange:(id)change;
- (void)ba_setAnalyticsTracker:(id)tracker;
- (void)bkaxSetUpAccessibilityForPresentedBook;
- (void)dealloc;
- (void)didFinishUpdateForAssetViewController:(id)controller;
- (void)didMoveToParentViewController:(id)controller;
- (void)dismissLibraryBookCoverViewController:(id)controller animated:(BOOL)animated;
- (void)im_dismissAnimated:(BOOL)animated immediate:(BOOL)immediate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)readingStatisticsDidChangeOnController:(id)controller changes:(id)changes;
- (void)removeFromParentViewController;
- (void)requestToBuy:(id)buy;
- (void)setAssetViewController:(id)controller;
- (void)setFinishedForAssetID:(id)d;
- (void)setProgressStatus:(id)status;
- (void)timeTracker:(id)tracker didPromoteAsset:(id)asset deletedFromWantToRead:(BOOL)read;
- (void)transitionContextNeedsSetup;
- (void)transitionContextWillCompleteTransitionInContainerView:(id)view;
- (void)updatePromotionStateWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillMoveToWindow:(id)window;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willAddViewToHierarchy;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation BKBasePresentingViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  _sceneControllerCurrentlyHostingAssetPresenter = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  v4 = BUDynamicCast();

  rootBarCoordinator = [v4 rootBarCoordinator];

  if (rootBarCoordinator)
  {
    goto LABEL_3;
  }

  v7 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  currentSceneController = [v7 currentSceneController];
  bk_window = [currentSceneController bk_window];
  [bk_window bounds];
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
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    shouldCloseDueToAssetDeletion = [assetViewController shouldCloseDueToAssetDeletion];
  }

  else
  {
    shouldCloseDueToAssetDeletion = 1;
  }

  return shouldCloseDueToAssetDeletion;
}

- (BKBasePresentingViewController)initWithAssetIdentifier:(id)identifier assetViewController:(id)controller helper:(id)helper libraryAssetProvider:(id)provider
{
  identifierCopy = identifier;
  controllerCopy = controller;
  helperCopy = helper;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = BKBasePresentingViewController;
  v14 = [(BKBasePresentingViewController *)&v18 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(BKBasePresentingViewController *)v14 setAssetViewController:controllerCopy];
    [(BKBasePresentingViewController *)v15 setAssetHelper:helperCopy];
    assetViewController = [(BKBasePresentingViewController *)v15 assetViewController];
    [assetViewController setAssetViewControllerDelegate:v15];

    [(BKBasePresentingViewController *)v15 _commonInitWithIdentifier:identifierCopy libraryAssetProvider:providerCopy];
  }

  return v15;
}

- (BKBasePresentingViewController)initWithAssetIdentifier:(id)identifier placeholderViewController:(id)controller holdAnimationAssertion:(id)assertion libraryAssetProvider:(id)provider
{
  identifierCopy = identifier;
  controllerCopy = controller;
  assertionCopy = assertion;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = BKBasePresentingViewController;
  v14 = [(BKBasePresentingViewController *)&v18 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(BKBasePresentingViewController *)v14 setPlaceholderViewController:controllerCopy];
    objc_opt_class();
    v16 = BUDynamicCast();
    [(BKBasePresentingViewController *)v15 setHoldAnimationAssertion:v16];

    [(BKBasePresentingViewController *)v15 _commonInitWithIdentifier:identifierCopy libraryAssetProvider:providerCopy];
  }

  return v15;
}

- (void)_commonInitWithIdentifier:(id)identifier libraryAssetProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_applicationDidBecomeActiveNotification:" name:UIApplicationDidBecomeActiveNotification object:0];
  [v8 addObserver:self selector:"_applicationWillResignActiveNotification:" name:UIApplicationWillResignActiveNotification object:0];
  [v8 addObserver:self selector:"_downloadStatusNotification:" name:BKLibraryDownloadStatusNotification object:0];
  v9 = BKLibraryOwnershipDidChangeNotification;
  v10 = +[BKLibraryManager defaultManager];
  [v8 addObserver:self selector:"_libraryOwnershipNotification:" name:v9 object:v10];

  v11 = +[BCBookReadingTimeTracker sharedInstance];
  [v11 addPromotionObserver:self];

  v12 = [identifierCopy copy];
  assetIdentifier = self->_assetIdentifier;
  self->_assetIdentifier = v12;

  [(BKBasePresentingViewController *)self setLibraryAssetProvider:providerCopy];
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
  assetHelper = [(BKBasePresentingViewController *)self assetHelper];
  v18 = BUDynamicCast();

  if (v18)
  {
    mAsset = [v18 mAsset];
    v20 = [BAAppAnalyticsAdditionalData alloc];
    supportsUnifiedProductPage = [mAsset supportsUnifiedProductPage];
    editionKind = [mAsset editionKind];
    v23 = [v20 initWithSupportsUnifiedProductPage:supportsUnifiedProductPage editionKind:editionKind];
    [(BKBasePresentingViewController *)self setAppAnalyticsAdditionalData:v23];
  }

  objc_initWeak(&location, self);
  v24 = [BKFrontmostAssetTracker alloc];
  permanentOrTemporaryAssetID = [identifierCopy permanentOrTemporaryAssetID];
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10005DA08;
  v33 = &unk_100A03B10;
  objc_copyWeak(&v34, &location);
  v26 = [(BKFrontmostAssetTracker *)v24 initWithAssetID:permanentOrTemporaryAssetID window:0 onFrontmostChanged:&v30];
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
  sampleProfileFuture = [(BKBasePresentingViewController *)self sampleProfileFuture];
  [sampleProfileFuture cancel];

  [(BKBasePresentingViewController *)self _finalizeAssetVCState];
  filePresenter = [(BKBasePresentingViewController *)self filePresenter];
  [filePresenter deactivate];

  [(BKBasePresentingViewController *)self setFilePresenter:0];
  buyButtonItem = [(BKBasePresentingViewController *)self buyButtonItem];
  customView = [buyButtonItem customView];
  v9 = [customView viewWithTag:7];

  [v9 removeTarget:self action:"requestToBuy:" forControlEvents:64];
  v10.receiver = self;
  v10.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v10 dealloc];
}

- (BOOL)_isAudiobook
{
  v3 = +[AEAudiobookPlugin associatedAssetType];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  asset = [assetViewController asset];

  if (asset)
  {
    assetType = [asset assetType];
    lowercaseString = [assetType lowercaseString];
    lowercaseString2 = [v3 lowercaseString];
    LOBYTE(assetIdentifier) = [lowercaseString isEqualToString:lowercaseString2];

LABEL_3:
    goto LABEL_8;
  }

  if (!+[NSThread isMainThread])
  {
    LOBYTE(assetIdentifier) = 0;
    goto LABEL_8;
  }

  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];

  if (assetIdentifier)
  {
    assetIdentifier = [(BKBasePresentingViewController *)self libraryAssetProvider];
    assetIdentifier2 = [(BKBasePresentingViewController *)self assetIdentifier];
    assetType = [assetIdentifier libraryAssetOnMainQueueWithAssetIdentifier:assetIdentifier2];

    LOBYTE(assetIdentifier) = [assetType isAudiobook];
    goto LABEL_3;
  }

LABEL_8:

  return assetIdentifier;
}

- (BOOL)_shouldTrackReadingSession
{
  if ([(BKBasePresentingViewController *)self successfullyOpened])
  {
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];
    if ([permanentAssetID length] && !-[BKBasePresentingViewController _isAudiobook](self, "_isAudiobook"))
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

- (void)_clearCacheForBook:(id)book
{
  bookCopy = book;
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];
  v7 = permanentAssetID;
  if (permanentAssetID)
  {
    assetID = permanentAssetID;
  }

  else
  {
    assetViewController = [(BKBasePresentingViewController *)self assetViewController];
    asset = [assetViewController asset];
    assetID = [asset assetID];
  }

  if ([assetID length])
  {
    v11 = dispatch_time(0, 1000000000);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10005DF28;
    v14[3] = &unk_100A03788;
    v15 = assetID;
    v16 = bookCopy;
    dispatch_after(v11, &_dispatch_main_q, v14);
  }

  else
  {
    v12 = objc_retainBlock(bookCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12);
    }
  }
}

- (void)_finalizeAssetVCState
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];

  if (assetViewController)
  {
    if ([(BKBasePresentingViewController *)self assetState]< 3)
    {
      if (![(BKBasePresentingViewController *)self willTerminate])
      {
        [(BKBasePresentingViewController *)self _updateLastOpenBookWithAssetID:0];
      }

      assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
      [assetViewController2 saveStateClosing:1];

      assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
      [assetViewController3 close:0];

      [(BKBasePresentingViewController *)self setAssetState:3];
      [(BCReadingStatisticsController *)self->_readingStatisticsController removeObserver:self];
      readingStatisticsController = self->_readingStatisticsController;
      self->_readingStatisticsController = 0;
    }

    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];

    if ([(BKBasePresentingViewController *)self assetState]<= 3)
    {
      minifiedPresenter = [(BKBasePresentingViewController *)self minifiedPresenter];
      [minifiedPresenter minifiedPresenterDidCloseAssetID:permanentAssetID finishedConsuming:{-[BKBasePresentingViewController finishedConsuming](self, "finishedConsuming")}];

      assetViewController4 = [(BKBasePresentingViewController *)self assetViewController];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        assetViewController5 = [(BKBasePresentingViewController *)self assetViewController];
        [assetViewController5 assetViewControllerDidCloseAnimated:0];
      }

      [(BKBasePresentingViewController *)self setAssetState:4];
      [(BKBasePresentingViewController *)self _clearCacheForBook:0];
      libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
      libraryAssetProvider2 = [(BKBasePresentingViewController *)self libraryAssetProvider];
      assetIdentifier2 = [(BKBasePresentingViewController *)self assetIdentifier];
      v15 = [libraryAssetProvider2 libraryAssetOnMainQueueWithAssetIdentifier:assetIdentifier2];
      [libraryAssetProvider didCloseLibraryAsset:v15];
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
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];

  if (!assetViewController)
  {
    view = [(BKBasePresentingViewController *)self view];
    [view setOpaque:0];
  }

  assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];

  if (assetViewController2)
  {
    transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
    assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
LABEL_7:
    v9 = assetViewController3;
    [transitioningViewController setContentViewController:assetViewController3];

    goto LABEL_8;
  }

  placeholderViewController = [(BKBasePresentingViewController *)self placeholderViewController];

  if (placeholderViewController)
  {
    transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
    assetViewController3 = [(BKBasePresentingViewController *)self placeholderViewController];
    goto LABEL_7;
  }

LABEL_8:
  transitioningViewController2 = [(BKBasePresentingViewController *)self transitioningViewController];
  view2 = [transitioningViewController2 view];
  [view2 setAutoresizingMask:18];

  transitioningViewController3 = [(BKBasePresentingViewController *)self transitioningViewController];
  [(BKBasePresentingViewController *)self addChildViewController:transitioningViewController3];

  view3 = [(BKBasePresentingViewController *)self view];
  transitioningViewController4 = [(BKBasePresentingViewController *)self transitioningViewController];
  view4 = [transitioningViewController4 view];
  [view3 addSubview:view4];

  view5 = [(BKBasePresentingViewController *)self view];
  [view5 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  transitioningViewController5 = [(BKBasePresentingViewController *)self transitioningViewController];
  view6 = [transitioningViewController5 view];
  [view6 setFrame:{v18, v20, v22, v24}];

  transitioningViewController6 = [(BKBasePresentingViewController *)self transitioningViewController];
  [transitioningViewController6 didMoveToParentViewController:self];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = BKBasePresentingViewController;
  containerCopy = container;
  [(BKBasePresentingViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(BKBasePresentingViewController *)self setPreferredContentSize:v6, v8];
}

- (id)childViewControllerForStatusBarStyle
{
  transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
  childViewControllerForStatusBarStyle = [transitioningViewController childViewControllerForStatusBarStyle];

  return childViewControllerForStatusBarStyle;
}

- (id)childViewControllerForStatusBarHidden
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  contentOpenAnimator = [assetViewController contentOpenAnimator];
  v5 = BUProtocolCast();

  assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
  childViewControllerForStatusBarHidden = 0;
  if (assetViewController2 && !v5)
  {
    transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
    childViewControllerForStatusBarHidden = [transitioningViewController childViewControllerForStatusBarHidden];
  }

  return childViewControllerForStatusBarHidden;
}

- (BOOL)prefersStatusBarHidden
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  contentOpenAnimator = [assetViewController contentOpenAnimator];
  v4 = BUProtocolCast();

  LOBYTE(assetViewController) = [v4 statusBarHidden];
  return assetViewController;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
  childViewControllerForHomeIndicatorAutoHidden = [transitioningViewController childViewControllerForHomeIndicatorAutoHidden];

  return childViewControllerForHomeIndicatorAutoHidden;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100ACC420 == context)
  {
    if ([(BKBasePresentingViewController *)self autoDownload]&& [(BKLibraryDownloadStatus *)self->_progressStatus state]== 4)
    {
      downloadProgressBlock = [(BKBasePresentingViewController *)self downloadProgressBlock];
      if (downloadProgressBlock)
      {
        [(BKLibraryDownloadStatus *)self->_progressStatus progressValue];
        downloadProgressBlock[2](downloadProgressBlock, 0);
      }
    }

    [(BKBasePresentingViewController *)self _updateBuyButtonProgressIfNeeded];
  }

  else if (off_100ACC428 == context)
  {
    objc_opt_class();
    v14 = BUDynamicCast();
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];

    assetID = [v14 assetID];
    v18 = [assetID isEqualToString:permanentAssetID];

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
    [(BKBasePresentingViewController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setProgressStatus:(id)status
{
  statusCopy = status;
  progressStatus = self->_progressStatus;
  v8 = statusCopy;
  if (progressStatus != statusCopy)
  {
    if (progressStatus)
    {
      [(BKLibraryDownloadStatus *)progressStatus removeObserver:self forKeyPath:@"progressValue" context:off_100ACC420];
      [(BKLibraryDownloadStatus *)self->_progressStatus removeObserver:self forKeyPath:@"state" context:off_100ACC428];
    }

    objc_storeStrong(&self->_progressStatus, status);
    [(BKBasePresentingViewController *)self _updateBuyButtonProgressIfNeeded];
    v7 = self->_progressStatus;
    if (v7)
    {
      [(BKLibraryDownloadStatus *)v7 addObserver:self forKeyPath:@"progressValue" options:0 context:off_100ACC420];
      [(BKLibraryDownloadStatus *)self->_progressStatus addObserver:self forKeyPath:@"state" options:0 context:off_100ACC428];
    }
  }
}

- (void)_updateLibraryAssetFromMetadataWithURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    pageCountIncludingUpsell = [assetViewController2 pageCountIncludingUpsell];
  }

  else
  {
    pageCountIncludingUpsell = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_initWeak(&location, self);
  v11 = [NSFileAccessIntent readingIntentWithURL:lCopy options:1];
  v12 = [v11 URL];
  v13 = v12 == 0;

  if (v13)
  {
    v17 = BCIMLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1007892FC();
    }

    v18 = objc_retainBlock(completionCopy);
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
    v21 = lCopy;
    selfCopy = self;
    v24[1] = pageCountIncludingUpsell;
    v23 = completionCopy;
    [v14 coordinateAccessWithIntents:v15 queue:v16 byAccessor:v20];

    objc_destroyWeak(v24);
  }

  objc_destroyWeak(&location);
}

- (void)_willOpenBookAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (!self->_deferredURLOpenRequests)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    deferredURLOpenRequests = self->_deferredURLOpenRequests;
    self->_deferredURLOpenRequests = v5;
  }

  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];

  v8 = +[BEDocumentExternalLoadApprovalCache sharedInstance];
  [v8 removeCachedDisapprovalForBookID:permanentOrTemporaryAssetID];

  libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
  uiChildContext = [libraryAssetProvider uiChildContext];

  libraryAssetProvider2 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v12 = [libraryAssetProvider2 libraryMutableAssetWithPermanentOrTemporaryAssetID:permanentOrTemporaryAssetID inManagedObjectContext:uiChildContext];

  [uiChildContext refreshObject:v12 mergeChanges:1];
  v13 = +[BKUserActivityManager sharedInstance];
  [v13 startReadingAsset:v12];

  [(BKBasePresentingViewController *)self subscribeToFullScreenEvents];
  objc_opt_class();
  openOptions = [(BKBasePresentingViewController *)self openOptions];
  v15 = [openOptions objectForKeyedSubscript:@"BKAssetPresentingOpenLocationKey"];
  v16 = BUDynamicCast();

  [(BKBasePresentingViewController *)self setAssetState:1];
  -[BKBasePresentingViewController setAssetPresenterIsSupplementalContent:](self, "setAssetPresenterIsSupplementalContent:", [v12 isSupplementalContent]);
  v17 = [[BKAssetPresentingFilePresenter alloc] initWithViewController:self];
  [(BKBasePresentingViewController *)self setFilePresenter:v17];

  if ([permanentOrTemporaryAssetID length])
  {
    [(BKBasePresentingViewController *)self _trackProgressForLibraryAsset:v12];
  }

  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  assetViewControllerDelegate = [assetViewController assetViewControllerDelegate];

  if (!assetViewControllerDelegate)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController2 setAssetViewControllerDelegate:self];
  }

  assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    objc_opt_class();
    openOptions2 = [(BKBasePresentingViewController *)self openOptions];
    v24 = [openOptions2 objectForKeyedSubscript:AEHelperNumberIsPreorderKey];
    v25 = BUDynamicCast();

    assetViewController4 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController4 setAssetIsPreordered:v25];
  }

  assetViewController5 = [(BKBasePresentingViewController *)self assetViewController];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    assetViewController6 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController6 assetViewControllerWillOpen];
  }

  assetViewController7 = [(BKBasePresentingViewController *)self assetViewController];
  v31 = assetViewController7;
  if (v16)
  {
    [assetViewController7 openToLocation:v16 animated:animatedCopy];
  }

  else
  {
    [assetViewController7 open:animatedCopy];
  }
}

- (void)transitionContextWillCompleteTransitionInContainerView:(id)view
{
  viewCopy = view;
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  view = [assetViewController view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [viewCopy bounds];
  v32.origin.x = v7;
  v32.origin.y = v9;
  v32.size.width = v11;
  v32.size.height = v13;
  if (!CGRectEqualToRect(v31, v32))
  {
    v14 = objc_alloc_init(IMViewControllerNullAnimationTransitionCoordinator);
    [v14 setContainerView:viewCopy];
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    [viewCopy bounds];
    [assetViewController2 viewWillTransitionToSize:v14 withTransitionCoordinator:{v16, v17}];

    [viewCopy bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
    view2 = [assetViewController3 view];
    [view2 setFrame:{v19, v21, v23, v25}];

    [v14 _runAlongsideAnimations];
    [v14 _runAlongsideCompletionsAfterCommit];
  }

  assetViewController4 = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController4 assetViewControllerUpdateToolbarsAfterOpenAnimation];
}

- (void)transitionContextNeedsSetup
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController assetViewControllerUpdateToolbarsForOpenAnimation];
}

- (void)willAddViewToHierarchy
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController2 assetViewControllerWillAddView];
  }
}

- (void)_didOpenBookAnimated:(BOOL)animated
{
  animatedCopy = animated;
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v8 = +[NSDate date];
  [libraryAssetProvider updateLibraryAssetWithID:permanentAssetID withLastOpenDate:v8 completion:0];

  [(BKBasePresentingViewController *)self setAssetState:2];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController2 assetViewControllerDidOpenAnimated:animatedCopy];
  }

  minifiedPresenter = [(BKBasePresentingViewController *)self minifiedPresenter];
  [minifiedPresenter minifiedPresenterDidOpenAssetID:permanentAssetID];

  [(BKBasePresentingViewController *)self setNeedsWhitePointAdaptivityStyleUpdate];
  libraryAssetProvider2 = [(BKBasePresentingViewController *)self libraryAssetProvider];
  v13 = [libraryAssetProvider2 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:permanentAssetID];

  if ([v13 isSample])
  {
    objc_initWeak(&location, self);
    v14 = [BKSampleToPurchaseMonitor alloc];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10005F7A0;
    v27[3] = &unk_100A03B60;
    objc_copyWeak(&v28, &location);
    v15 = [(BKSampleToPurchaseMonitor *)v14 initWithAssetID:permanentAssetID notify:v27];
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

  assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
  v17 = BUProtocolCast();

  if (v17)
  {
    upSellData = [(BKBasePresentingViewController *)self upSellData];

    if (upSellData)
    {
      upSellData2 = [(BKBasePresentingViewController *)self upSellData];
      [v17 setUpSellData:upSellData2];
    }

    appAnalyticsAdditionalData = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];

    if (appAnalyticsAdditionalData)
    {
      appAnalyticsAdditionalData2 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
      [v17 setAppAnalyticsAdditionalData:appAnalyticsAdditionalData2];
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

- (void)viewWillAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v18 viewWillAppear:?];
  ba_analyticsTracker = [(BKBasePresentingViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v6 = [(BKBasePresentingViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentReading"];
  }

  bc_windowForViewController = [(BKBasePresentingViewController *)self bc_windowForViewController];
  rootViewController = [bc_windowForViewController rootViewController];

  if (([rootViewController isPerformingModalTransition] & 1) == 0)
  {
    navigationController = [(BKBasePresentingViewController *)self navigationController];
    -[BKBasePresentingViewController setShouldRestoreNavBar:](self, "setShouldRestoreNavBar:", [navigationController isNavigationBarHidden] ^ 1);
  }

  if ([(BKBasePresentingViewController *)self stateShouldOpen])
  {
    assetViewController = [(BKBasePresentingViewController *)self assetViewController];

    if (assetViewController)
    {
      [(BKBasePresentingViewController *)self _startBookSuccessfullyOpenedTimer];
      assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
      asset = [assetViewController2 asset];
      v13 = [asset url];

      if (v13)
      {
        objc_initWeak(&location, self);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10005FB24;
        v14[3] = &unk_100A03BB0;
        objc_copyWeak(&v15, &location);
        appearCopy = appear;
        [(BKBasePresentingViewController *)self _updateLibraryAssetFromMetadataWithURL:v13 completion:v14];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [NSNumber numberWithBool:[(BKBasePresentingViewController *)self enteringFullScreen]];
    v10 = [NSNumber numberWithBool:[(BKBasePresentingViewController *)self inFullScreen]];
    v11 = [NSNumber numberWithBool:[(BKBasePresentingViewController *)self exitingFullScreen]];
    *v21 = width;
    *&v21[1] = height;
    v12 = [NSValue valueWithBytes:v21 objCType:"{CGSize=dd}"];
    view = [(BKBasePresentingViewController *)self view];
    [view bounds];
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
  [(BKBasePresentingViewController *)&v19 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  [coordinatorCopy animateAlongsideTransition:v18 completion:v17];
}

- (void)_waitForOngoingMigrationAttemptToFinish:(id)finish completion:(id)completion
{
  finishCopy = finish;
  completionCopy = completion;
  if (!+[NSThread isMainThread])
  {
    sub_10078959C();
  }

  if ([finishCopy isSupplementalContent])
  {
    v7 = [finishCopy contentType] == 3;
  }

  else
  {
    v7 = 0;
  }

  if ([finishCopy isStore] && !v7 || (objc_msgSend(finishCopy, "permlink"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_retainBlock(completionCopy);
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

    ubiquitousDocumentsController = [v10 ubiquitousDocumentsController];
    assetID = [finishCopy assetID];
    temporaryAssetID = [finishCopy temporaryAssetID];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000603BC;
    v15[3] = &unk_100A03920;
    v16 = completionCopy;
    [ubiquitousDocumentsController waitForOngoingMigrationAttemptToFinishWithAssetID:assetID temporaryAssetID:temporaryAssetID completion:v15];
  }
}

- (void)_loadAssetVC
{
  v3 = sub_10005D1D8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];
    loadAssetBlock = [(BKBasePresentingViewController *)self loadAssetBlock];
    v7 = objc_retainBlock(loadAssetBlock);
    *buf = 141558530;
    v15 = 1752392040;
    v16 = 2112;
    v17 = permanentOrTemporaryAssetID;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _loadAssetVC - localAssetBlock=%@", buf, 0x20u);
  }

  loadAssetBlock2 = [(BKBasePresentingViewController *)self loadAssetBlock];

  if (loadAssetBlock2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100060650;
    v13[3] = &unk_100A03C00;
    v13[4] = self;
    assetIdentifier2 = objc_retainBlock(v13);
    loadAssetBlock3 = [(BKBasePresentingViewController *)self loadAssetBlock];
    (loadAssetBlock3)[2](loadAssetBlock3, assetIdentifier2);
  }

  else
  {
    assetIdentifier2 = [(BKBasePresentingViewController *)self assetIdentifier];
    loadAssetBlock3 = [(BKBasePresentingViewController *)self openOptions];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100060698;
    v12[3] = &unk_100A03C00;
    v12[4] = self;
    v11 = [BKAssetLookup assetLookupWithIdentifier:assetIdentifier2 options:loadAssetBlock3 completion:v12];
    [(BKBasePresentingViewController *)self setAssetLookup:v11];
  }
}

- (void)_loadWithAssetViewController:(id)controller helper:(id)helper
{
  controllerCopy = controller;
  helperCopy = helper;
  if (!+[NSThread isMainThread])
  {
    sub_1007895D8();
  }

  v8 = sub_10005D1D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];
    *buf = 141558786;
    v39 = 1752392040;
    v40 = 2112;
    v41 = permanentOrTemporaryAssetID;
    v42 = 2112;
    v43 = controllerCopy;
    v44 = 2112;
    v45 = helperCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _loadWithAssetViewController - assetVC=%@, helper=%@", buf, 0x2Au);
  }

  if (controllerCopy && helperCopy)
  {
    placeholderViewController = [(BKBasePresentingViewController *)self placeholderViewController];
    if (objc_opt_respondsToSelector())
    {
      placeholderViewController2 = [(BKBasePresentingViewController *)self placeholderViewController];
      coverAnimationHostTopViewsToFadeOut = [placeholderViewController2 coverAnimationHostTopViewsToFadeOut];
    }

    else
    {
      coverAnimationHostTopViewsToFadeOut = 0;
    }

    placeholderViewController3 = [(BKBasePresentingViewController *)self placeholderViewController];
    assetIdentifier2 = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentOrTemporaryAssetID2 = [assetIdentifier2 permanentOrTemporaryAssetID];
    v18 = [placeholderViewController3 coverAnimationHostSourceForItem:permanentOrTemporaryAssetID2];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100060AB0;
    v34[3] = &unk_100A03C78;
    v34[4] = self;
    v35 = controllerCopy;
    v36 = helperCopy;
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
    presentingViewController = coverAnimationHostTopViewsToFadeOut;
    v30 = presentingViewController;
    v22 = v21;
    v31 = v22;
    v23 = objc_retainBlock(v29);
    holdAnimationAssertion = [(BKBasePresentingViewController *)self holdAnimationAssertion];
    v25 = holdAnimationAssertion;
    if (holdAnimationAssertion)
    {
      future = [holdAnimationAssertion future];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100061300;
      v27[3] = &unk_100A03CC8;
      v28 = v23;
      [future get:v27];
    }

    else
    {
      (v23[2])(v23);
    }
  }

  else
  {
    presentingViewController = [(BKBasePresentingViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
    selfCopy = self;
    v49 = selfCopy;
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
    libraryAssetProvider = [(BKBasePresentingViewController *)selfCopy libraryAssetProvider];
    assetIdentifier = [(BKBasePresentingViewController *)selfCopy assetIdentifier];
    v10 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:assetIdentifier];

    v11 = sub_10005D1D8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      assetIdentifier2 = [(BKBasePresentingViewController *)selfCopy assetIdentifier];
      *buf = 141558530;
      v52 = 1752392040;
      v53 = 2112;
      v54 = assetIdentifier2;
      v55 = 2112;
      v56 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] libraryAsset: %@", buf, 0x20u);
    }

    parentViewController = [(BKBasePresentingViewController *)selfCopy parentViewController];

    if (parentViewController)
    {
      [(BKBasePresentingViewController *)selfCopy setStateShouldOpen:0];
    }

    assetViewController = [(BKBasePresentingViewController *)selfCopy assetViewController];

    if (assetViewController)
    {
      [(BKBasePresentingViewController *)selfCopy _didOpenBookAnimated:appearCopy];
    }

    else if (-[BKBasePresentingViewController autoOpen](selfCopy, "autoOpen") && (([v10 isLocal] & 1) != 0 || objc_msgSend(v10, "streamable")))
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

    else if ([(BKBasePresentingViewController *)selfCopy autoDownload])
    {
      objc_initWeak(&location, selfCopy);
      [(BKBasePresentingViewController *)selfCopy setStateFlags:[(BKBasePresentingViewController *)selfCopy stateFlags]| 8];
      assetIdentifier3 = [(BKBasePresentingViewController *)selfCopy assetIdentifier];
      permanentOrTemporaryAssetID = [assetIdentifier3 permanentOrTemporaryAssetID];

      v28 = +[BKLibraryAssetStatusController sharedController];
      v29 = [v28 statusForAssetID:permanentOrTemporaryAssetID];
      [(BKBasePresentingViewController *)selfCopy setProgressStatus:v29];

      progressStatus = [(BKBasePresentingViewController *)selfCopy progressStatus];
      v31 = 0.0;
      if ([progressStatus state] == 4)
      {
        progressStatus2 = [(BKBasePresentingViewController *)selfCopy progressStatus];
        [progressStatus2 progressValue];
        v31 = v33;
      }

      downloadProgressBlock = [(BKBasePresentingViewController *)selfCopy downloadProgressBlock];
      v35 = downloadProgressBlock;
      if (downloadProgressBlock)
      {
        (*(downloadProgressBlock + 16))(downloadProgressBlock, 0, v31);
      }

      v36 = sub_10005D1D8();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558274;
        v52 = 1752392040;
        v53 = 2112;
        v54 = permanentOrTemporaryAssetID;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] Attempt to resolve to local", buf, 0x16u);
      }

      libraryAssetProvider2 = [(BKBasePresentingViewController *)selfCopy libraryAssetProvider];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000622C4;
      v39[3] = &unk_100A03DB8;
      v38 = permanentOrTemporaryAssetID;
      v40 = v38;
      objc_copyWeak(&v42, &location);
      v41 = v7;
      [libraryAssetProvider2 resolveToLocalAssetWithAssetID:v38 completion:v39];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

    v15 = +[UIDevice currentDevice];
    orientation = [v15 orientation];

    bc_windowForViewController = [(BKBasePresentingViewController *)selfCopy bc_windowForViewController];
    windowScene = [bc_windowForViewController windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    v20 = isPhone();
    if ((orientation - 3) < 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 == 1 && (interfaceOrientation - 1) <= 1)
    {
      +[UIViewController attemptRotationToDeviceOrientation];
    }

    v22 = +[BKAppDelegate sceneManager];
    primarySceneController = [v22 primarySceneController];
    primaryScenePresenting = [primarySceneController primaryScenePresenting];

    [primaryScenePresenting presenterDidStartReadingExperienceWithAssetPresenter:selfCopy];
    _Block_object_dispose(v48, 8);
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v5 willMoveToParentViewController:?];
  [(BKBasePresentingViewController *)self setStateShouldClose:controller == 0];
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

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v4 didMoveToParentViewController:controller];
  [(BKBasePresentingViewController *)self setStateShouldClose:0];
}

- (void)viewWillMoveToWindow:(id)window
{
  windowCopy = window;
  v12.receiver = self;
  v12.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v12 viewWillMoveToWindow:windowCopy];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];

  if (windowCopy && assetViewController)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    asset = [assetViewController2 asset];
    displayTitle = [asset displayTitle];
    windowScene = [windowCopy windowScene];
    [windowScene setTitle:displayTitle];

    v10 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
    [v10 updateAllAssetPresenterCloseStateTypes];
  }

  frontmostTracker = [(BKBasePresentingViewController *)self frontmostTracker];
  [frontmostTracker setWindow:windowCopy];
}

- (void)_handleClosingCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(BKBasePresentingViewController *)self unsubscribeFromFullScreenEvents];
  sessionID = [(BKBasePresentingViewController *)self sessionID];

  if (sessionID)
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
    assetViewController = [(BKBasePresentingViewController *)self assetViewController];
    v8 = BUProtocolCast();

    [v8 saveStateClosing:1];
  }

  assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController2 close:cleanupCopy];

  if (![(BKBasePresentingViewController *)self willTerminate])
  {
    [(BKBasePresentingViewController *)self _updateLastOpenBookWithAssetID:0];
  }

  [(BCReadingStatisticsController *)self->_readingStatisticsController removeObserver:self];
  readingStatisticsController = self->_readingStatisticsController;
  self->_readingStatisticsController = 0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v9 viewWillDisappear:?];
  [(BKBasePresentingViewController *)self unsubscribeToLiveResize];
  v5 = +[UIApplication sharedApplication];
  keyWindow = [v5 keyWindow];
  rootViewController = [keyWindow rootViewController];

  if (-[BKBasePresentingViewController shouldRestoreNavBar](self, "shouldRestoreNavBar") && ([rootViewController isPerformingModalTransition] & 1) == 0)
  {
    navigationController = [(BKBasePresentingViewController *)self navigationController];
    [navigationController setNavigationBarHidden:0 animated:0];
  }

  if ([(BKBasePresentingViewController *)self stateShouldClose]&& !+[BKUIPFeatures useUIPFluidBookOpenTransition])
  {
    [(BKBasePresentingViewController *)self _handleClosingCleanup:disappearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v30.receiver = self;
  v30.super_class = BKBasePresentingViewController;
  [(BKBasePresentingViewController *)&v30 viewDidDisappear:?];
  if ([(BKBasePresentingViewController *)self stateShouldClose]&& ![(BKBasePresentingViewController *)self preparingEndOfBookExperience])
  {
    if (+[BKUIPFeatures useUIPFluidBookOpenTransition])
    {
      [(BKBasePresentingViewController *)self _handleClosingCleanup:disappearCopy];
    }

    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];

    v7 = +[BCProgressKitController sharedController];
    [v7 didCloseBookWithAssetID:permanentAssetID completion:0];

    objc_opt_class();
    openOptions = [(BKBasePresentingViewController *)self openOptions];
    v9 = [openOptions objectForKeyedSubscript:@"BKBookPresentingSecure"];
    v10 = BUDynamicCast();
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      assetViewController = [(BKBasePresentingViewController *)self assetViewController];
      asset = [assetViewController asset];
      v14 = [asset url];

      [v14 stopAccessingSecurityScopedResource];
    }

    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
      [assetViewController3 assetViewControllerDidCloseAnimated:disappearCopy];
    }

    v18 = +[BKUserActivityManager sharedInstance];
    [v18 stopReadingCurrentAsset];

    libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
    libraryAssetProvider2 = [(BKBasePresentingViewController *)self libraryAssetProvider];
    assetIdentifier2 = [(BKBasePresentingViewController *)self assetIdentifier];
    v22 = [libraryAssetProvider2 libraryAssetOnMainQueueWithAssetIdentifier:assetIdentifier2];
    [libraryAssetProvider didCloseLibraryAsset:v22];

    if (([(BKBasePresentingViewController *)self stateFlags]& 0x80) != 0)
    {
      +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0xFFFFFFFFFFFFFF7FLL];
    }

    minifiedPresenter = [(BKBasePresentingViewController *)self minifiedPresenter];
    [minifiedPresenter minifiedPresenterUpdateCurrentBookWithCompletion:0];

    minifiedPresenter2 = [(BKBasePresentingViewController *)self minifiedPresenter];
    [minifiedPresenter2 minifiedPresenterDidCloseAssetID:permanentAssetID finishedConsuming:{-[BKBasePresentingViewController finishedConsuming](self, "finishedConsuming")}];

    [(BKBasePresentingViewController *)self setAssetState:4];
    [(BKBasePresentingViewController *)self _clearCacheForBook:0];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 postNotificationName:@"BKBookDidCloseNotificationName" object:self];

    [(BKBasePresentingViewController *)self setUpSellData:0];
    [(BKBasePresentingViewController *)self setAppAnalyticsAdditionalData:0];
    [(BKBasePresentingViewController *)self setStateShouldOpen:1];
    assetViewController4 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController4 setAssetViewControllerDelegate:0];
  }

  v27 = +[BKAppDelegate sceneManager];
  primarySceneController = [v27 primarySceneController];
  primaryScenePresenting = [primarySceneController primaryScenePresenting];

  [primaryScenePresenting presenterDidEndReadingExperienceWithAssetPresenter:self];
}

- (void)setAssetViewController:(id)controller
{
  objc_storeStrong(&self->_assetViewController, controller);
  controllerCopy = controller;
  ba_analyticsTracker = [(BKBasePresentingViewController *)self ba_analyticsTracker];
  [(AEAssetViewController *)self->_assetViewController ba_setAnalyticsTracker:ba_analyticsTracker];
}

- (void)ba_setAnalyticsTracker:(id)tracker
{
  v6.receiver = self;
  v6.super_class = BKBasePresentingViewController;
  trackerCopy = tracker;
  [(BKBasePresentingViewController *)&v6 ba_setAnalyticsTracker:trackerCopy];
  v5 = [(BKBasePresentingViewController *)self assetViewController:v6.receiver];
  [v5 ba_setAnalyticsTracker:trackerCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v4 = [assetViewController conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling];

  if (v4)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
LABEL_5:
    v8 = assetViewController2;
    supportedInterfaceOrientations = [assetViewController2 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  childModalViewController = [(BKBasePresentingViewController *)self childModalViewController];
  v7 = [childModalViewController conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling];

  if (v7)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self childModalViewController];
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = BKBasePresentingViewController;
  return [(BKBasePresentingViewController *)&v11 supportedInterfaceOrientations];
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  [(BKBasePresentingViewController *)self setIsResigningActive:0];
  filePresenter = [(BKBasePresentingViewController *)self filePresenter];
  [filePresenter activate];
}

- (void)_applicationWillResignActiveNotification:(id)notification
{
  [(BKBasePresentingViewController *)self setIsResigningActive:1];
  filePresenter = [(BKBasePresentingViewController *)self filePresenter];
  [filePresenter deactivate];

  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  [BKLibraryIndexer establishBackgroundTaskForProgressUpdateOfAsset:permanentAssetID];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController saveStateClosing:0 suspending:1];
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
  timeThresholdForOpenEvent = [v3 timeThresholdForOpenEvent];
  longLongValue = [timeThresholdForOpenEvent longLongValue];

  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  sessionID = [(BKBasePresentingViewController *)self sessionID];
  if (sessionID)
  {
    v9 = sessionID;
    _shouldTrackReadingSession = [(BKBasePresentingViewController *)self _shouldTrackReadingSession];

    if (_shouldTrackReadingSession)
    {
      confirmActiveTimer = [(BKBasePresentingViewController *)self confirmActiveTimer];

      if (!confirmActiveTimer)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100063200;
        v13[3] = &unk_100A03DE0;
        v14 = permanentAssetID;
        v12 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v13 block:longLongValue];
        [(BKBasePresentingViewController *)self setConfirmActiveTimer:v12];
      }
    }
  }
}

- (void)_cancelInteractionTimerIfNeeded
{
  confirmActiveTimer = [(BKBasePresentingViewController *)self confirmActiveTimer];
  [confirmActiveTimer invalidate];

  [(BKBasePresentingViewController *)self setConfirmActiveTimer:0];
}

- (void)_assetPresenterWillEnterForeground
{
  [(BKBasePresentingViewController *)self assetPresenterUpdateCloseTypeState];
  [(BKBasePresentingViewController *)self _refreshReadingState];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController2 assetViewControllerWillEnterForeground];
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
    assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];

    if (assetViewController3)
    {
      v8 = BCCurrentBookLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Book entered foreground with no current reading session yet.", buf, 2u);
      }

      sessionID = [(BKBasePresentingViewController *)self sessionID];

      if (sessionID)
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

  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController2 assetViewControllerDidEnterBackground];
  }
}

- (void)_refreshReadingState
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  asset = [assetViewController asset];
  v5 = [asset url];

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

+ (id)animatorForAsset:(id)asset isCurrentBook:(BOOL)book opening:(BOOL)opening largeCover:(BOOL)cover skipZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  coverCopy = cover;
  openingCopy = opening;
  assetType = [asset assetType];
  v11 = +[AEAudiobookPlugin associatedAssetType];
  v12 = [assetType isEqualToString:v11];

  if (v12)
  {
    if (openingCopy && coverCopy)
    {
      v13 = [(BKBookOpenAnimator *)[BKAudiobookSlideOpenAnimator alloc] initOpening:1];
    }

    else
    {
      v13 = [(BKBookOpenAnimator *)[BKAudiobookOpenAnimator alloc] initOpening:openingCopy];
      [v13 setUseLegacyTiming:0];
    }
  }

  else
  {
    v13 = [[BKBookBloomOpenAnimator alloc] initOpening:openingCopy];
    objc_opt_class();
    v14 = BUDynamicCast();
    [v14 setUseShadowEffects:1];
  }

  objc_opt_class();
  v15 = BUDynamicCast();
  [v15 setSkipZoomPhase:zoomCopy];

  return v13;
}

+ (id)defaultAnimatorForOpening:(BOOL)opening skipReveal:(BOOL)reveal
{
  revealCopy = reveal;
  v5 = [[BKBookBloomOpenAnimator alloc] initOpening:opening];
  [v5 setSkipReveal:revealCopy];
  [v5 setUseShadowEffects:1];

  return v5;
}

- (void)_reloadAssetCloseViewController:(BOOL)controller
{
  controllerCopy = controller;
  v5 = [BKSnapshotViewController alloc];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v7 = [(BKSnapshotViewController *)v5 initWithViewController:assetViewController];

  v8 = sub_10005D1D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];
    v11 = [NSNumber numberWithBool:controllerCopy];
    *buf = 141558530;
    v22 = 1752392040;
    v23 = 2112;
    v24 = permanentOrTemporaryAssetID;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{mask.hash}@] _reloadAssetCloseViewController close:%@", buf, 0x20u);
  }

  assetViewController2 = [(BKBasePresentingViewController *)self assetViewController];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    assetViewController3 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController3 assetViewControllerPrepareForReload];
  }

  if (controllerCopy)
  {
    assetViewController4 = [(BKBasePresentingViewController *)self assetViewController];
    [assetViewController4 close:0];

    assetViewController5 = [(BKBasePresentingViewController *)self assetViewController];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      assetViewController6 = [(BKBasePresentingViewController *)self assetViewController];
      [assetViewController6 assetViewControllerDidCloseAnimated:0];
    }
  }

  transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
  [transitioningViewController setContentViewController:v7];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000639FC;
  v20[3] = &unk_100A033C8;
  v20[4] = self;
  [(BKBasePresentingViewController *)self _clearCacheForBook:v20];
}

- (void)dismissLibraryBookCoverViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  _sceneControllerCurrentlyHostingAssetPresenter = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  [v7 handleCloseAssetForSceneController:_sceneControllerCurrentlyHostingAssetPresenter assetPresentingViewController:self animated:animatedCopy];
}

- (void)assetViewController:(id)controller willOpen:(BOOL)open
{
  controllerCopy = controller;
  viewIfLoaded = [(BKBasePresentingViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    asset = [controllerCopy asset];
    displayTitle = [asset displayTitle];
    viewIfLoaded2 = [(BKBasePresentingViewController *)self viewIfLoaded];
    window2 = [viewIfLoaded2 window];
    windowScene = [window2 windowScene];
    [windowScene setTitle:displayTitle];
  }
}

- (void)assetViewController:(id)controller willClose:(BOOL)close
{
  v5 = [(BKBasePresentingViewController *)self assetIdentifier:controller];
  permanentAssetID = [v5 permanentAssetID];

  if ([permanentAssetID length])
  {
    v6 = [NSSet setWithObject:permanentAssetID];
    objc_opt_class();
    v7 = +[UIApplication sharedApplication];
    delegate = [v7 delegate];
    v9 = BUDynamicCast();

    libraryAssetIsNewManager = [v9 libraryAssetIsNewManager];
    allObjects = [v6 allObjects];
    [libraryAssetIsNewManager resetIsNewForAssetIDs:allObjects];

    libraryAssetIsNewManager2 = [v9 libraryAssetIsNewManager];
    allObjects2 = [v6 allObjects];
    [libraryAssetIsNewManager2 resetProgressHighWaterMarkForAssetIDs:allObjects2];
  }

  minifiedPresenter = [(BKBasePresentingViewController *)self minifiedPresenter];
  [minifiedPresenter minifiedPresenterWillCloseAsset];
}

- (double)_transitionDurationForLiveResizeOfViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    if ([controllerCopy animateLiveResizeTransitions])
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
  liveResizeWrapperView = [(BKBasePresentingViewController *)self liveResizeWrapperView];
  [liveResizeWrapperView removeFromSuperview];

  [(BKBasePresentingViewController *)self setLiveResizeWrapperView:0];
  [(BKBasePresentingViewController *)self setScrimLiveResizeView:0];
  [(BKBasePresentingViewController *)self setScrimLiveResizeBlurView:0];

  [(BKBasePresentingViewController *)self setOverlayView:0];
}

- (void)assetViewController:(id)controller attemptClose:(BOOL)close
{
  v5 = [BKAppDelegate sceneManager:controller];
  primarySceneController = [v5 primarySceneController];
  primaryScenePresenting = [primarySceneController primaryScenePresenting];

  [primaryScenePresenting presenterUpdateReadingNowAssetVisibility:0 assetPresenter:self];
}

- (void)assetViewController:(id)controller cancelledClose:(BOOL)close
{
  v5 = [BKAppDelegate sceneManager:controller];
  primarySceneController = [v5 primarySceneController];
  primaryScenePresenting = [primarySceneController primaryScenePresenting];

  [primaryScenePresenting presenterUpdateReadingNowAssetVisibility:1 assetPresenter:self];
}

- (void)didFinishUpdateForAssetViewController:(id)controller
{
  if ([(BKBasePresentingViewController *)self inLiveResize]|| ![(BKBasePresentingViewController *)self scrimAppliedForLiveResize])
  {
    transitioningViewController = [(BKBasePresentingViewController *)self transitioningViewController];
    view = [transitioningViewController view];
    [view setAlpha:1.0];
  }

  else
  {
    [(BKBasePresentingViewController *)self setScrimAppliedForLiveResize:0];
    v4 = BCCurrentBookLiveResizeLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100789894(self);
    }

    assetViewController = [(BKBasePresentingViewController *)self assetViewController];
    [(BKBasePresentingViewController *)self _transitionDurationForLiveResizeOfViewController:assetViewController];
    if (v6 == 0.0 || (v7 = v6, [(BKBasePresentingViewController *)self enteringFullScreen]) || [(BKBasePresentingViewController *)self exitingFullScreen])
    {
      liveResizeWrapperView = [(BKBasePresentingViewController *)self liveResizeWrapperView];
      [liveResizeWrapperView setAlpha:0.0];

      transitioningViewController2 = [(BKBasePresentingViewController *)self transitioningViewController];
      view2 = [transitioningViewController2 view];
      [view2 setAlpha:1.0];

      [(BKBasePresentingViewController *)self _clearLiveResizeViews];
      if (objc_opt_respondsToSelector())
      {
        [assetViewController assetViewControllerDidFinishUpdateForLiveResize];
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
      v14 = assetViewController;
      [UIView animateWithDuration:v15 animations:v13 completion:v7];
    }
  }
}

- (BOOL)assetViewControllerIsCurrentBook:(id)book
{
  bookCopy = book;
  v4 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  asset = [bookCopy asset];

  assetID = [asset assetID];
  v7 = [assetID isEqualToString:v4];

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
  _sceneControllerCurrentlyHostingAssetPresenter = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  primarySceneController = [v3 primarySceneController];
  v6 = _sceneControllerCurrentlyHostingAssetPresenter != primarySceneController;

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

- (BOOL)assetViewController:(id)controller requestOpenURL:(id)l likelyUserInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  deferredURLOpenRequests = self->_deferredURLOpenRequests;
  if (deferredURLOpenRequests)
  {
    lCopy = l;
    v8 = [NSNumber numberWithBool:initiatedCopy];
    [(NSMutableDictionary *)deferredURLOpenRequests setObject:v8 forKey:lCopy];
  }

  else
  {
    lCopy2 = l;
    v8 = +[BKAppDelegate sceneManager];
    lCopy = [v8 sceneControllerForViewController:self];
    v11 = [NSNumber numberWithBool:initiatedCopy];
    newShowURLTransaction = [lCopy newShowURLTransaction];
    [v8 handleApplicationURL:lCopy2 sourceApplication:@"__self__" annotation:0 likelyUserInitiated:v11 transaction:newShowURLTransaction];
  }

  return 1;
}

- (BOOL)assetViewController:(id)controller requestClose:(BOOL)close finishedConsuming:(BOOL)consuming error:(id)error withErrorBlock:(id)block
{
  consumingCopy = consuming;
  closeCopy = close;
  controllerCopy = controller;
  errorCopy = error;
  blockCopy = block;
  if (errorCopy)
  {
    [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0x80];
  }

  [(BKBasePresentingViewController *)self setFinishedConsuming:consumingCopy];
  if ([controllerCopy conformsToProtocol:&OBJC_PROTOCOL___AEAssetViewController])
  {
    [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 0x100];
    [controllerCopy saveStateClosing:1];
  }

  if (([(BKBasePresentingViewController *)self stateFlags]& 1) != 0)
  {
    v17 = BCCurrentBookLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 134217984;
      stateFlags = [(BKBasePresentingViewController *)self stateFlags];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Asset requested to close but delaying it due to state: %ld", &v22, 0xCu);
    }

    [(BKBasePresentingViewController *)self setStateFlags:[(BKBasePresentingViewController *)self stateFlags]| 2];
    [(BKBasePresentingViewController *)self setErrorCloseBlock:blockCopy];
  }

  else
  {
    v15 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
    _sceneControllerCurrentlyHostingAssetPresenter = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
    if (_sceneControllerCurrentlyHostingAssetPresenter)
    {
      [v15 handleCloseAssetForSceneController:_sceneControllerCurrentlyHostingAssetPresenter assetPresentingViewController:self animated:closeCopy];
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

    v19 = objc_retainBlock(blockCopy);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19);
    }
  }

  return 1;
}

- (void)requestToBuy:(id)buy
{
  _buyButton = [(BKBasePresentingViewController *)self _buyButton];
  [_buyButton setDisableInteraction:1];
  [_buyButton setModeState:2];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100065150;
  v7[3] = &unk_100A034F8;
  v8 = _buyButton;
  selfCopy = self;
  v6 = _buyButton;
  [(BKBasePresentingViewController *)self assetViewControllerRequestToBuy:assetViewController completion:v7];
}

- (void)assetViewController:(id)controller handleFamilyChangeError:(id)error
{
  errorCopy = error;
  v7 = [BKAppDelegate sceneControllerForViewController:controller];
  v11 = v7;
  if (!v7)
  {
    sub_100789980();
    v7 = 0;
  }

  newShowAssetTransaction = [v7 newShowAssetTransaction];
  v9 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  [v9 handleFamilyChangeErrorWithTransaction:newShowAssetTransaction error:errorCopy assetIdentifier:assetIdentifier];
}

- (void)assetViewControllerSignificantReadingLocationChange:(id)change
{
  [change saveStateClosing:0];
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  if ([permanentAssetID length])
  {
    v5 = [NSSet setWithObject:permanentAssetID];
    objc_opt_class();
    v6 = +[UIApplication sharedApplication];
    delegate = [v6 delegate];
    v8 = BUDynamicCast();

    libraryAssetIsNewManager = [v8 libraryAssetIsNewManager];
    allObjects = [v5 allObjects];
    [libraryAssetIsNewManager resetIsNewForAssetIDs:allObjects];

    libraryAssetIsNewManager2 = [v8 libraryAssetIsNewManager];
    allObjects2 = [v5 allObjects];
    [libraryAssetIsNewManager2 resetProgressHighWaterMarkForAssetIDs:allObjects2];
  }
}

- (void)assetViewController:(id)controller assetPropertyChanged:(id)changed
{
  if ([BKLibraryAsset hasBookReachedReadThreshold:changed])
  {
    if (([(BKBasePresentingViewController *)self stateFlags]& 0x10) == 0)
    {
      libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000655D8;
      v6[3] = &unk_100A03EA8;
      v6[4] = self;
      [libraryAssetProvider performBlockOnWorkerQueue:v6];
    }
  }
}

- (id)assetViewControllerMinifiedBarButtonItem:(id)item
{
  minifiedPresenter = [(BKBasePresentingViewController *)self minifiedPresenter];
  minifiedPresenterBarButtonItem = [minifiedPresenter minifiedPresenterBarButtonItem];

  return minifiedPresenterBarButtonItem;
}

- (id)_fetchSampleProfileFuture
{
  if (!+[NSThread isMainThread])
  {
    sub_1007899B8();
  }

  sampleProfileFuture = [(BKBasePresentingViewController *)self sampleProfileFuture];
  if (![(BKBasePresentingViewController *)self didFetchProfile])
  {
    [(BKBasePresentingViewController *)self setDidFetchProfile:1];
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000657E4;
    v7[3] = &unk_100A03E58;
    v8 = sampleProfileFuture;
    [(BKBasePresentingViewController *)self _fetchProfileForStoreID:permanentAssetID completion:v7];
  }

  return sampleProfileFuture;
}

- (void)assetViewController:(id)controller updateBuyButton:(id)button setIsDark:(BOOL)dark
{
  darkCopy = dark;
  buttonCopy = button;
  [buttonCopy setStyle:2];
  objc_opt_class();
  customView = [buttonCopy customView];
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

    v11 = +[BCBuyButtonColorProvider colorsForButtonState:isDark:isEnabled:](BCBuyButtonColorProvider, "colorsForButtonState:isDark:isEnabled:", v10, darkCopy, [v9 isEnabled]);
    backgroundColor = [v11 backgroundColor];
    [buttonCopy setTintColor:backgroundColor];

    if (darkCopy)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [v9 setOverrideUserInterfaceStyle:v13];
    [(BKBasePresentingViewController *)self _configureBuyButton:v9];
    foregroundColor = [v11 foregroundColor];
    [v9 setTitleColor:foregroundColor forState:0];
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

- (id)assetViewControllerBuyButtonItem:(id)item isSample:(BOOL)sample isPreorder:(BOOL)preorder storeID:(id)d
{
  sampleCopy = sample;
  itemCopy = item;
  dCopy = d;
  v12 = dCopy;
  buyButtonItem2 = 0;
  if (sampleCopy && !preorder)
  {
    if ([dCopy length])
    {
      buyButtonItem = [(BKBasePresentingViewController *)self buyButtonItem];

      if (!buyButtonItem)
      {
        _newBarButtonItemWithBuyButton = [(BKBasePresentingViewController *)self _newBarButtonItemWithBuyButton];
        [(BKBasePresentingViewController *)self setBuyButtonItem:_newBarButtonItemWithBuyButton];

        _buyButton = [(BKBasePresentingViewController *)self _buyButton];
        [_buyButton setIsPreorder:0];
        [_buyButton setModeState:0];
        [_buyButton addTarget:self action:"requestToBuy:" forControlEvents:64];
        [(BKBasePresentingViewController *)self setStoreID:v12];
        objc_initWeak(&location, self);
        sampleProfileFuture = [(BKBasePresentingViewController *)self sampleProfileFuture];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100065C20;
        v21[3] = &unk_100A03ED0;
        objc_copyWeak(&v23, &location);
        v18 = _buyButton;
        v22 = v18;
        [sampleProfileFuture get:v21];

        _fetchSampleProfileFuture = [(BKBasePresentingViewController *)self _fetchSampleProfileFuture];
        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }

      buyButtonItem2 = [(BKBasePresentingViewController *)self buyButtonItem];
    }

    else
    {
      buyButtonItem2 = 0;
    }
  }

  return buyButtonItem2;
}

- (void)assetViewController:(id)controller didShowContentWithCFIs:(id)is
{
  isCopy = is;
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  [readingStatisticsController cfisDidAppear:isCopy];
}

- (void)assetViewController:(id)controller willHideContentWithCFIs:(id)is
{
  isCopy = is;
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  [readingStatisticsController cfisWillDisappear:isCopy];
}

- (void)setFinishedForAssetID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = +[BKAppDelegate delegate];
    serviceCenter = [v5 serviceCenter];
    readingActivityService = [serviceCenter readingActivityService];

    [(BKBasePresentingViewController *)self libraryAssetProvider];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100065F18;
    v11 = v10[3] = &unk_100A03EF8;
    v12 = dCopy;
    v13 = readingActivityService;
    selfCopy = self;
    v8 = readingActivityService;
    v9 = v11;
    [v9 performBlockOnWorkerQueue:v10];
  }
}

- (void)assetViewController:(id)controller setFinishedAndCloseForAssetID:(id)d
{
  controllerCopy = controller;
  [(BKBasePresentingViewController *)self setFinishedForAssetID:d];
  if (d)
  {
    [(BKBasePresentingViewController *)self assetViewController:controllerCopy requestClose:1 error:0];
  }
}

- (BOOL)needTextNodeCharacterCountsForOrdinal:(int64_t)ordinal
{
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  LOBYTE(ordinal) = [readingStatisticsController needTextNodeCharacterCountsForOrdinal:ordinal];

  return ordinal;
}

- (void)addTextNodeCharacterCounts:(id)counts ordinal:(int64_t)ordinal completion:(id)completion
{
  completionCopy = completion;
  countsCopy = counts;
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  [readingStatisticsController addTextNodeCharacterCounts:countsCopy ordinal:ordinal completion:completionCopy];
}

- (BOOL)needTOCEntriesForOrdinal:(int64_t)ordinal
{
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  LOBYTE(ordinal) = [readingStatisticsController needTOCEntriesForOrdinal:ordinal];

  return ordinal;
}

- (void)addTOCEntries:(id)entries ordinal:(int64_t)ordinal completion:(id)completion
{
  completionCopy = completion;
  entriesCopy = entries;
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  [readingStatisticsController addTOCEntries:entriesCopy ordinal:ordinal completion:completionCopy];

  [(BKBasePresentingViewController *)self setNeedToRebuildContextTree:1];
}

- (void)assetViewControllerPaginationCompletedForBook:(id)book
{
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  v6 = +[BCProgressKitController sharedController];
  if (![v6 isTrackingAssetID:permanentAssetID])
  {
    goto LABEL_4;
  }

  needToRebuildContextTree = [(BKBasePresentingViewController *)self needToRebuildContextTree];

  if (needToRebuildContextTree)
  {
    [(BKBasePresentingViewController *)self setNeedToRebuildContextTree:0];
    assetViewController = [(BKBasePresentingViewController *)self assetViewController];
    v9 = BUProtocolCast();

    readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100066588;
    v11[3] = &unk_100A03418;
    v12 = v9;
    v6 = v9;
    [readingStatisticsController tocCFIMapWithCompletion:v11];

LABEL_4:
  }
}

- (void)assetViewController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v12 = +[BKAppDelegate sceneManager];
  v13 = [v12 sceneControllerForViewController:controllerCopy];

  [v13 presentViewController:viewControllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)assetViewController:(id)controller presentModalViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v9 = +[BKAppDelegate sceneManager];
  v10 = [v9 sceneControllerForViewController:controllerCopy];

  [v10 presentModalViewController:viewControllerCopy animated:animatedCopy];
}

- (id)libraryButtonItemForViewController:(id)controller selector:(SEL)selector
{
  controllerCopy = controller;
  v7 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
  _sceneControllerCurrentlyHostingAssetPresenter = [(BKBasePresentingViewController *)self _sceneControllerCurrentlyHostingAssetPresenter];
  if ([v7 closeTypeForSceneController:_sceneControllerCurrentlyHostingAssetPresenter] == 3)
  {
    _closeBarButtonTitle = [(BKBasePresentingViewController *)self _closeBarButtonTitle];
    if ([_closeBarButtonTitle length])
    {
      v10 = [[UIBarButtonItem alloc] initWithTitle:_closeBarButtonTitle style:2 target:controllerCopy action:selector];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    _closeBarButtonTitle = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:3 scale:17.0];
    v11 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:17.0];
    v12 = [UIImage systemImageNamed:@"chevron.backward"];
    v13 = [v12 imageWithConfiguration:_closeBarButtonTitle];
    v14 = [v12 imageWithConfiguration:v11];
    v10 = [[UIBarButtonItem alloc] initWithImage:v13 landscapeImagePhone:v14 style:0 target:controllerCopy action:selector];
    [v10 setLargeContentSizeImageInsets:{42.0, 0.0, 0.0, 0.0}];
    [v10 setWidth:32.0];
  }

  return v10;
}

- (BOOL)canUpdateLibraryBarButtonItem:(id)item withOldString:(id)string
{
  if (!item || !string)
  {
    return (item != 0) ^ (string != 0);
  }

  stringCopy = string;
  title = [item title];
  v7 = [stringCopy isEqualToString:title];

  return v7 ^ 1;
}

- (BOOL)readingStatisticsEnabled
{
  readingStatisticsController = [(BKBasePresentingViewController *)self readingStatisticsController];
  v3 = readingStatisticsController != 0;

  return v3;
}

- (id)contextMenuWithAssetViewController:(id)controller sourceView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100066BC4;
  v16 = &unk_100A03F20;
  objc_copyWeak(&v19, &location);
  selfCopy = self;
  v8 = viewCopy;
  v18 = v8;
  v9 = [UIDeferredMenuElement elementWithUncachedProvider:&v13];
  v21 = v9;
  selfCopy = [NSArray arrayWithObjects:&v21 count:1, v13, v14, v15, v16, selfCopy];
  v11 = [UIMenu menuWithTitle:&stru_100A30A68 children:selfCopy];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v11;
}

- (id)analyticsAssetPropertyProviderForAssetViewController:(id)controller fromSourceView:(id)view
{
  viewCopy = view;
  v6 = +[BKContextMenuProvider sharedProvider];
  v7 = [(BKBasePresentingViewController *)self dataModelWithSourceView:viewCopy];

  v8 = [v6 analyticsAssetPropertyProviderForDataModel:v7];

  return v8;
}

- (id)dataModelWithSourceView:(id)view
{
  viewCopy = view;
  v5 = [BSUIContextActionDataAssetModel alloc];
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];
  v8 = [v5 initWithAdamID:permanentOrTemporaryAssetID];

  v9 = [[BSUIContextActionDataModel alloc] initWithAssetModel:v8 sourceView:viewCopy];

  return v9;
}

- (void)assetViewController:(id)controller openSupplementalAssetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = +[BKLibraryManager defaultManager];
  v7 = [v6 libraryAssetOnMainQueueWithAssetIdentifier:identifierCopy];

  v8 = objc_opt_new();
  v9 = +[BKAppDelegate sceneManager];
  v10 = [v9 sceneControllerForViewController:self];
  newShowAssetTransaction = [v10 newShowAssetTransaction];
  v12 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100066F60;
  v17[3] = &unk_100A03F70;
  v18 = newShowAssetTransaction;
  v19 = v8;
  v20 = v7;
  selfCopy = self;
  v22 = identifierCopy;
  v13 = identifierCopy;
  v14 = v7;
  v15 = v8;
  v16 = newShowAssetTransaction;
  [v12 preflightShowAssetWithTransaction:v16 assetIdentifier:v13 completion:v17];
}

- (BOOL)assetViewControllerIsPresentingSupplementalContent:(id)content
{
  bc_contextualPresentedViewController = [(BKBasePresentingViewController *)self bc_contextualPresentedViewController];
  objc_opt_class();
  v4 = BUDynamicCast();
  isSupplementalContent = [v4 isSupplementalContent];

  return isSupplementalContent;
}

- (void)readingStatisticsDidChangeOnController:(id)controller changes:(id)changes
{
  controllerCopy = controller;
  changesCopy = changes;
  v7 = BCReadingStatisticsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134218242;
    v9 = controllerCopy;
    v10 = 2112;
    v11 = changesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Reading statistics changed on controller %p changes=%@", &v8, 0x16u);
  }
}

- (void)timeTracker:(id)tracker didPromoteAsset:(id)asset deletedFromWantToRead:(BOOL)read
{
  readCopy = read;
  [(BKBasePresentingViewController *)BKAssetPresentingViewController _markBookAsCurrent:asset];
  if (readCopy)
  {
    ba_effectiveAnalyticsTracker = [(BKBasePresentingViewController *)self ba_effectiveAnalyticsTracker];
    libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    v10 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:assetIdentifier];

    if (v10 && ba_effectiveAnalyticsTracker)
    {
      v11 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v10 contentType]);
      v12 = +[BAEventReporter sharedReporter];
      assetID = [v10 assetID];
      [v12 emitRemoveFromWantListEventWithTracker:ba_effectiveAnalyticsTracker contentID:assetID contentType:v11];
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

  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  [(BKBasePresentingViewController *)self _updateLastOpenBookWithAssetID:permanentAssetID];
  [(BKBasePresentingViewController *)self _maybeUpdateSuccessfullyOpenedCurrentBook:permanentAssetID];
  [(BKBasePresentingViewController *)self setSuccessfullyOpened:1];
  if (![(BKBasePresentingViewController *)self isSupplementalContent])
  {
    v6 = +[BKLastOpenBookManager sharedInstance];
    [v6 updateSuccessfullyOpenedBookForAssetID:permanentAssetID successfullyOpenedBook:1];
  }

  v7 = +[UIApplication sharedApplication];
  applicationState = [v7 applicationState];

  v9 = BCCurrentBookLog();
  v10 = v9;
  if (applicationState == 2)
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
  timeThresholdForOpenEvent = [v4 timeThresholdForOpenEvent];
  longLongValue = [timeThresholdForOpenEvent longLongValue];

  objc_initWeak(buf, self);
  [(BKBasePresentingViewController *)self _cancelSuccessfullyOpenedTimerIfNeeded];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000678C8;
  v8[3] = &unk_100A03FB8;
  objc_copyWeak(&v9, buf);
  v7 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:longLongValue];
  [(BKBasePresentingViewController *)self setSuccessfullyOpenedTimer:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)_cancelSuccessfullyOpenedTimerIfNeeded
{
  successfullyOpenedTimer = [(BKBasePresentingViewController *)self successfullyOpenedTimer];
  if (successfullyOpenedTimer)
  {
    v4 = successfullyOpenedTimer;
    successfullyOpenedTimer2 = [(BKBasePresentingViewController *)self successfullyOpenedTimer];
    isValid = [successfullyOpenedTimer2 isValid];

    if (isValid)
    {
      v7 = BCCurrentBookLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Cancelling successfully opened timer", v9, 2u);
      }

      successfullyOpenedTimer3 = [(BKBasePresentingViewController *)self successfullyOpenedTimer];
      [successfullyOpenedTimer3 invalidate];

      [(BKBasePresentingViewController *)self setSuccessfullyOpenedTimer:0];
    }
  }
}

+ (void)startingOpenOfMinifedCurrentBook:(id)book
{
  bookCopy = book;
  v4 = BCCurrentBookLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = bookCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting open of book as minified & current %@.", &v7, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setBool:0 forKey:@"kSuccessfullyOpenedCurrentBook"];

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];
}

+ (void)_markBookAsCurrent:(id)current
{
  currentCopy = current;
  v4 = BCCurrentBookLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = currentCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Marking book as current %@.", &v6, 0xCu);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:currentCopy forKey:@"kLastCurrentBookKey"];
  [v5 setBool:1 forKey:@"kSuccessfullyOpenedCurrentBook"];
  [v5 synchronize];
}

+ (void)markCarPlayBackgroundBookAsCurrent:(id)current
{
  currentCopy = current;
  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:currentCopy forKey:@"BKMainViewControllerLastBook"];
  [v5 setBool:1 forKey:@"BKMainViewControllerSuccessfullyOpenedBook"];
  [self _markBookAsCurrent:currentCopy];
}

- (void)_maybeUpdateSuccessfullyOpenedCurrentBook:(id)book
{
  bookCopy = book;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 stringForKey:@"kLastCurrentBookKey"];
  if ([v5 isEqualToString:bookCopy])
  {
    v6 = BCCurrentBookLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = bookCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Current book successfully opened %@.", &v7, 0xCu);
    }

    [v4 setBool:1 forKey:@"kSuccessfullyOpenedCurrentBook"];
    [v4 synchronize];
  }
}

- (void)_updateLastOpenBookWithAssetID:(id)d
{
  dCopy = d;
  v9 = dCopy;
  if (dCopy)
  {
    permanentAssetID = 0;
  }

  else
  {
    if ([(BKBasePresentingViewController *)self willTerminate]|| [(BKBasePresentingViewController *)self isResigningActive])
    {
      goto LABEL_11;
    }

    assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier permanentAssetID];

    dCopy = 0;
  }

  if ([dCopy length] && !-[BKBasePresentingViewController isSupplementalContent](self, "isSupplementalContent"))
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v8 = +[BKLastOpenBookManager sharedInstance];
  [v8 updateLastOpenBookByRemovingAssetID:permanentAssetID addingAssetID:v6];

LABEL_11:
}

+ (id)_lastOpenedBookWithKey:(id)key
{
  keyCopy = key;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:keyCopy];

  v6 = BCCurrentBookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = keyCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Last known assetID: %@ (for key %@)", &v8, 0x16u);
  }

  return v5;
}

+ (id)_successfullyOpenedBookWithKey:(id)key successKey:(id)successKey deleteOnFailure:(BOOL)failure
{
  v5 = [self _lastOpenedBookWithKey:{key, successKey, failure}];
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

+ (id)futureViewControllerWithAssetIdentifier:(id)identifier libraryAssetProvider:(id)provider options:(id)options
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000682A4;
  v17[3] = &unk_100A03FE0;
  identifierCopy = identifier;
  providerCopy = provider;
  optionsCopy = options;
  v7 = objc_opt_new();
  v21 = v7;
  v8 = optionsCopy;
  v9 = providerCopy;
  v10 = identifierCopy;
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
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  return permanentAssetID;
}

- (NSString)assetPresenterPermanentOrTemporaryAssetID
{
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];

  return permanentOrTemporaryAssetID;
}

- (void)assetPresenterOpenToLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  locationCopy = location;
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController openToLocation:locationCopy animated:animatedCopy];
}

- (void)assetPresenterJumpToBeginningAnimated:(BOOL)animated
{
  animatedCopy = animated;
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController jumpToBeginningAnimated:animatedCopy];
}

- (void)assetPresenterPrepareForDismissal
{
  [(BKBasePresentingViewController *)self setStateShouldClose:1];
  [(BKBasePresentingViewController *)self _cancelInteractionTimerIfNeeded];

  [(BKBasePresentingViewController *)self _cancelSuccessfullyOpenedTimerIfNeeded];
}

- (void)assetPresenterDismissalDidEnd:(BOOL)end
{
  endCopy = end;
  [(BKBasePresentingViewController *)self setStateDismissInProgress:0];
  [(BKBasePresentingViewController *)self setStateShouldClose:0];
  if (endCopy)
  {
    [(BKBasePresentingViewController *)self _finalizeAssetVCState];
    assetViewController = [(BKBasePresentingViewController *)self assetViewController];

    if (assetViewController)
    {
      v6 = [(BKBasePresentingViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKSceneHosting];
      [v6 updateAllAssetPresenterCloseStateTypes];
    }
  }
}

- (void)assetPresenterUpdateToolbars
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController assetViewControllerUpdateToolbars];
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
  openOptions = [(BKBasePresentingViewController *)self openOptions];
  v3 = [openOptions objectForKeyedSubscript:@"BKBookPresentingCoverAnimationSource"];
  v4 = BUProtocolCast();

  return v4;
}

- (id)assetPresenterCoverImage
{
  objc_opt_class();
  openOptions = [(BKBasePresentingViewController *)self openOptions];
  v4 = [openOptions objectForKeyedSubscript:@"BKBookPresentingCoverImage"];
  v5 = BUDynamicCast();

  return v5;
}

- (id)assetPresenterCoverShadowImage
{
  objc_opt_class();
  openOptions = [(BKBasePresentingViewController *)self openOptions];
  v4 = [openOptions objectForKeyedSubscript:@"BKBookPresentingCoverShadowImage"];
  v5 = BUDynamicCast();

  return v5;
}

- (void)im_dismissAnimated:(BOOL)animated immediate:(BOOL)immediate
{
  if (([(BKBasePresentingViewController *)self stateFlags]& 1) != 0 || [(BKBasePresentingViewController *)self stateShouldClose])
  {
    v7 = BCCurrentBookLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      stateFlags = [(BKBasePresentingViewController *)self stateFlags];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ignored dismiss of asset due to state: %ld", buf, 0xCu);
    }
  }

  else
  {
    [(BKBasePresentingViewController *)self setAutoOpen:0];
    assetLookup = [(BKBasePresentingViewController *)self assetLookup];
    [assetLookup cancel];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100068B50;
    v23[3] = &unk_100A04030;
    animatedCopy = animated;
    immediateCopy = immediate;
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
    immediateCopy2 = immediate;
    v13 = v10;
    v16 = v13;
    v14 = v11;
    v17 = v14;
    [(BKBasePresentingViewController *)self _endReadingSessionForEventType:2 withCompletion:v15];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

- (void)updatePromotionStateWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v8 = completionCopy;
  v6 = completionCopy;
  [(BKBasePresentingViewController *)self _endReadingSessionForEventType:2 withCompletion:v7];
}

- (id)_buyButton
{
  objc_opt_class();
  buyButtonItem = [(BKBasePresentingViewController *)self buyButtonItem];
  customView = [buyButtonItem customView];
  v5 = [customView viewWithTag:7];
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

- (void)_configureBuyButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy isPreorder])
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  v10 = +[BCBuyButtonColorProvider colorsForButtonState:isDark:isEnabled:](BCBuyButtonColorProvider, "colorsForButtonState:isDark:isEnabled:", v4, [buttonCopy overrideUserInterfaceStyle] == 2, objc_msgSend(buttonCopy, "isEnabled"));
  foregroundColor = [v10 foregroundColor];
  [buttonCopy setTitleColor:foregroundColor forState:0];

  foregroundColor2 = [v10 foregroundColor];
  v7 = [foregroundColor2 colorWithAlphaComponent:0.25];
  [buttonCopy setTitleColor:v7 forState:1];

  foregroundColor3 = [v10 foregroundColor];
  v9 = [foregroundColor3 colorWithAlphaComponent:0.25];
  [buttonCopy setTitleColor:v9 forState:2];
}

- (id)_newBarButtonItemWithBuyButton
{
  v3 = [[IMButtonAndRadialProgress alloc] initWithFrame:{0.0, 0.0, 54.0, 26.0}];
  [(BKBasePresentingViewController *)self _configureBuyButton:v3];
  titleLabel = [v3 titleLabel];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [titleLabel setFont:v5];

  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  titleLabel3 = [v3 titleLabel];
  [titleLabel3 setMinimumScaleFactor:0.5];

  [v3 setTag:7];
  v8 = [[UIBarButtonItem alloc] initWithCustomView:v3];
  [v8 setSharesBackground:0];

  return v8;
}

- (id)traitCollection
{
  v6.receiver = self;
  v6.super_class = BKBasePresentingViewController;
  traitCollection = [(BKBasePresentingViewController *)&v6 traitCollection];
  v4 = [(BKBasePresentingViewController *)self im_traitCollectionAdjustedForMedusaLevels:traitCollection];

  return v4;
}

- (void)_configureBuyButtonForPricing:(id)pricing profile:(id)profile
{
  pricingCopy = pricing;
  profileCopy = profile;
  if (!+[NSThread isMainThread])
  {
    sub_100789AA4();
  }

  v7 = [profileCopy actionTextWithType:0];
  [pricingCopy setTitle:v7 forState:0];
  if ([profileCopy isPreorder])
  {
    [pricingCopy setIsPreorder:1];
    [(BKBasePresentingViewController *)self _configureBuyButton:pricingCopy];
  }

  buyParameters = [profileCopy buyParameters];
  v9 = [buyParameters length];

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
    isBookStoreAllowed = [v12 isBookStoreAllowed];

    if (isBookStoreAllowed)
    {
      v11 = 1;
      goto LABEL_12;
    }
  }

  v11 = 3;
LABEL_12:
  [pricingCopy setModeState:v11];
}

- (void)_fetchProfileForStoreID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = +[AEUserPublishing sharedInstance];
  v14 = dCopy;
  v8 = [NSArray arrayWithObjects:&v14 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100069D7C;
  v11[3] = &unk_100A04188;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = dCopy;
  v10 = completionCopy;
  [v7 productProfilesForStoreIDs:v8 completion:v11];
}

- (void)_downloadStatusNotification:(id)notification
{
  notificationCopy = notification;
  objc_opt_class();
  v18 = notificationCopy;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:BKLibraryDownloadStatusKey];
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
        assetID = [v13 assetID];
        assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
        permanentOrTemporaryAssetID = [assetIdentifier permanentOrTemporaryAssetID];

        if ([permanentOrTemporaryAssetID isEqualToString:assetID])
        {
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_10006A1A4;
          v21[3] = &unk_100A03A30;
          v21[4] = self;
          v22 = permanentOrTemporaryAssetID;
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

- (void)_libraryOwnershipNotification:(id)notification
{
  [notification userInfo];
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
        assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
        permanentAssetID = [assetIdentifier permanentAssetID];

        if ([v10 isEqualToString:permanentAssetID])
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

- (void)_updateAssetStateAndDownloadStatus:(id)status
{
  statusCopy = status;
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006A4D8;
    v7[3] = &unk_100A03440;
    v8 = statusCopy;
    selfCopy = self;
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
        newShowURLTransaction = [v3 newShowURLTransaction];
        [v13 handleApplicationURL:v8 sourceApplication:@"__self__" annotation:0 likelyUserInitiated:v9 transaction:newShowURLTransaction];
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  deferredURLOpenRequests = self->_deferredURLOpenRequests;
  self->_deferredURLOpenRequests = 0;
}

- (id)analyticsContentDataForAssetViewController:(id)controller contentSubType:(id)type tracker:(id)tracker
{
  typeCopy = type;
  trackerCopy = tracker;
  libraryAssetProvider = [(BKBasePresentingViewController *)self libraryAssetProvider];
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  v11 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetIdentifier:assetIdentifier];

  if (v11)
  {
    v41 = typeCopy;
    contentType = [v11 contentType];
    v38 = [BAUtilities contentTypeFromAssetType:contentType];
    storeID = [v11 storeID];
    v14 = [storeID length];
    v15 = 1;
    if (!v14)
    {
      v15 = 2;
    }

    v37 = v15;

    assetIdentifier2 = [(BKBasePresentingViewController *)self assetIdentifier];
    permanentAssetID = [assetIdentifier2 permanentAssetID];

    v40 = [trackerCopy contentPrivateIDForContentID:permanentAssetID];
    v39 = [trackerCopy contentUserIDForContentID:permanentAssetID];
    v18 = +[BAEventReporter sharedReporter];
    v36 = [v18 seriesTypeForContentID:permanentAssetID];

    if ([v11 isAudiobook])
    {
      hasRACSupport = [v11 hasRACSupport];
      bOOLValue = [hasRACSupport BOOLValue];
      v21 = 1;
      if (!bOOLValue)
      {
        v21 = 2;
      }

      v35 = v21;
    }

    else
    {
      v35 = 0;
    }

    appAnalyticsAdditionalData = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
    if (appAnalyticsAdditionalData && (v24 = appAnalyticsAdditionalData, v25 = _os_feature_enabled_impl(), v24, v25))
    {
      appAnalyticsAdditionalData2 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [appAnalyticsAdditionalData2 supportsUnifiedProductPage]);

      appAnalyticsAdditionalData3 = [(BKBasePresentingViewController *)self appAnalyticsAdditionalData];
      editionKind = [appAnalyticsAdditionalData3 editionKind];
    }

    else
    {
      v27 = 0;
      editionKind = 0;
    }

    v30 = [BAContentData alloc];
    if (contentType == 3)
    {
      v31 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v11 pageCount]);
    }

    else
    {
      v31 = 0;
    }

    supplementalContentAssets = [v11 supplementalContentAssets];
    v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supplementalContentAssets count]);
    v22 = [v30 initWithContentID:permanentAssetID contentType:v38 contentPrivateID:v40 contentUserID:v39 contentAcquisitionType:v37 contentSubType:v41 contentLength:v31 supplementalContentCount:v33 seriesType:v36 productionType:v35 isUnified:v27 contentKind:editionKind];

    if (contentType == 3)
    {
    }

    typeCopy = v41;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)assetViewController:(id)controller presentTranslationForText:(id)text fromRect:(CGRect)rect onClose:(id)close
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  closeCopy = close;
  textCopy = text;
  controllerCopy = controller;
  v16 = objc_alloc_init(LTUITranslationViewController);
  v17 = [[NSAttributedString alloc] initWithString:textCopy];

  [v16 setText:v17];
  [v16 setIsSourceEditable:0];
  [v16 setOverrideUserInterfaceStyle:{objc_msgSend(controllerCopy, "preferredUserInterfaceStyle")}];
  [v16 setModalPresentationStyle:7];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10006AD4C;
  v21[3] = &unk_100A03920;
  v22 = closeCopy;
  v18 = closeCopy;
  [v16 setDismissCompletionHandler:v21];
  popoverPresentationController = [v16 popoverPresentationController];
  view = [controllerCopy view];
  [popoverPresentationController setSourceView:view];

  [popoverPresentationController setSourceRect:{x, y, width, height}];
  [popoverPresentationController setPermittedArrowDirections:15];
  [popoverPresentationController bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:controllerCopy];
  [(BKBasePresentingViewController *)self assetViewController:controllerCopy presentViewController:v16 animated:1 completion:0];
}

- (void)_beginReadingSessionForEventType:(unint64_t)type
{
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  if ((type | 4) == 4)
  {
    sessionID = [(BKBasePresentingViewController *)self sessionID];
    if (sessionID)
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
        v16 = permanentAssetID;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting reading session for book with assetID: %@", &v15, 0xCu);
      }

      assetViewController = [(BKBasePresentingViewController *)self assetViewController];
      if ([assetViewController readerType] == 6)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      v13 = +[BCBookReadingTimeTracker sharedInstance];
      sessionID2 = [(BKBasePresentingViewController *)self sessionID];
      [v13 trackReadingSessionBeganWithAssetID:permanentAssetID sessionID:sessionID2 trackerEventType:type readingFeatureFlags:v12 completion:0];
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

- (void)_endReadingSessionForEventType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  assetIdentifier = [(BKBasePresentingViewController *)self assetIdentifier];
  permanentAssetID = [assetIdentifier permanentAssetID];

  if (permanentAssetID && ([(BKBasePresentingViewController *)self sessionID], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, v11 = [(BKBasePresentingViewController *)self _shouldTrackReadingSession], v10, v11))
  {
    v12 = BCCurrentBookLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = permanentAssetID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ending reading session for book with assetID: %@", buf, 0xCu);
    }

    assetViewController = [(BKBasePresentingViewController *)self assetViewController];
    if ([assetViewController readerType] == 6)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v15 = +[BCBookReadingTimeTracker sharedInstance];
    sessionID = [(BKBasePresentingViewController *)self sessionID];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10006B1A8;
    v19[3] = &unk_100A041B0;
    v20 = completionCopy;
    [v15 trackReadingSessionEndedWithAssetID:permanentAssetID sessionID:sessionID trackerEventType:type readingFeatureFlags:v14 completion:v19];

    [(BKBasePresentingViewController *)self setSessionID:0];
  }

  else
  {
    v17 = objc_retainBlock(completionCopy);
    if (v17)
    {
      v18 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
      v17[2](v17, [permanentAssetID isEqualToString:v18]);
    }
  }
}

- (void)assetPresenterUpdateCloseTypeState
{
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  [assetViewController assetViewControllerUpdateCloseStateTypeIfNeeded];
}

- (id)bc_childCardPresentingViewController
{
  presentedViewController = [(BKBasePresentingViewController *)self presentedViewController];
  v3 = BUProtocolCast();

  return v3;
}

- (void)_willEnterFullScreen:(id)screen
{
  v4 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100789B58();
  }

  [(BKBasePresentingViewController *)self setEnteringFullScreen:1];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [assetViewController assetViewControllerWillEnterFullScreen];
  }
}

- (void)_didEnterFullScreen:(id)screen
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

  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [assetViewController assetViewControllerDidEnterFullScreen];
  }
}

- (void)_willExitFullScreen:(id)screen
{
  v4 = BCCurrentBookLiveResizeLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100789BC0();
  }

  [(BKBasePresentingViewController *)self setExitingFullScreen:1];
  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [assetViewController assetViewControllerWillExitFullScreen];
  }
}

- (void)_didExitFullScreen:(id)screen
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

  assetViewController = [(BKBasePresentingViewController *)self assetViewController];
  if (objc_opt_respondsToSelector())
  {
    [assetViewController assetViewControllerDidExitFullScreen];
  }
}

- (void)bkaxSetUpAccessibilityForPresentedBook
{
  view = [(BKBasePresentingViewController *)self view];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 isEqualToString:@"UITransitionView"];

  if (v4)
  {
    superview2 = view;
LABEL_6:
    v11 = +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
    [superview2 setAccessibilityIdentifier:v11];

    v12 = superview2;
  }

  else
  {
    v6 = view;
    while (1)
    {
      v14 = v6;
      superview = [v6 superview];

      if (!superview)
      {
        break;
      }

      superview2 = [v14 superview];

      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v9 isEqualToString:@"UITransitionView"];

      v6 = superview2;
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