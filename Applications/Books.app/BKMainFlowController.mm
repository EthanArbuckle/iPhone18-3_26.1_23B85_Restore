@interface BKMainFlowController
- (BKContentOpenAnimating)bookOpenAnimator;
- (BKContentOpenAnimationHelper)bookOpenAnimationHelper;
- (BKContentOpenStatusBarStyling)statusBarStyling;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKMainFlowController)initWithLibraryAssetProvider:(id)provider;
- (BKMainFlowControllerDelegate)delegate;
- (BKMainFlowControllerDockingDelegate)dockingDelegate;
- (BKMainFlowControllerNavigationDelegate)navigationDelegate;
- (BKRootBarCoordinating)rootBarCoordinator;
- (BOOL)_closeToCurrentBookWithAssetPresenter:(id)presenter opening:(BOOL)opening;
- (BOOL)_currentlySelectedTabIsStore;
- (BOOL)_hasOpenAssets;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (BOOL)_welcomePresenterIsPresentingWelcome;
- (BOOL)coverEffectsNightMode;
- (BOOL)isBookCurrentlyOpen;
- (BOOL)presenterIsShowingLibrary;
- (BOOL)presenterIsShowingStore;
- (BOOL)presenterShouldOpenBookUsingLargeCover;
- (id)_animatorFromViewController:(id)controller toViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
- (id)_bookAndCoverAnimatorFrom:(id)from to:(id)to operation:(int64_t)operation;
- (id)_bookWithAssetPermanentOrTemporaryAssetID:(id)d;
- (id)_coverImageForAssetID:(id)d toViewController:(id)controller forAssetViewController:(id)viewController source:(id)source coverImage:(id)image;
- (id)_coverSourceFromHost:(id)host assetPresenter:(id)presenter book:(id)book opening:(BOOL)opening;
- (id)_coverViewForPresenter:(id)presenter assetPresenter:(id)assetPresenter includePresented:(BOOL)presented;
- (id)_minibarRevealAnimatorWithViewController:(id)controller opening:(BOOL)opening;
- (id)_refIdFromAssetPresenter:(id)presenter closeToCurrentBook:(BOOL)book;
- (id)_refInstanceFromAssetPresenter:(id)presenter closeToCurrentBook:(BOOL)book;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)navigationControllerWithIdentifier:(id)identifier;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)presenterFirstVisibleChildConformingToProtocol:(id)protocol;
- (id)presenterModalPresentingViewController;
- (id)presenterSceneController;
- (id)presenterViewControllersConformingToProtocol:(id)protocol;
- (id)selectedNavigationController;
- (id)viewControllerForStatusBarHidden;
- (id)viewControllerForStatusBarStyle;
- (void)_fixInterfaceOrientationForEndOfBookTransitionForDismissingViewController:(id)controller completion:(id)completion;
- (void)_forceOrientationToPortrait:(id)portrait;
- (void)_navigationController:(id)controller transitionCompletion:(id)completion;
- (void)_transition:(id)_transition animator:(id)animator completion:(id)completion;
- (void)_transition:(id)_transition navigationController:(id)controller animator:(id)animator completion:(id)completion;
- (void)_updateReadingNowFeedWithAssetPresenter:(id)presenter completion:(id)completion;
- (void)_updateReadingNowFeedWithPerformantForReadingExperience:(BOOL)experience for:(id)for;
- (void)im_dismissChildViewController:(id)controller animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presenterDidEndReadingExperienceWithAssetPresenter:(id)presenter;
- (void)presenterDismissAllModalControllersAnimated:(BOOL)animated completion:(id)completion;
- (void)presenterDismissModalController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presenterEnsureCanOpenBookInCurrentContext:(BOOL)context;
- (void)presenterFinishModalTransitionsWithCompletion:(id)completion;
- (void)presenterPopToRootAnimated:(BOOL)animated completion:(id)completion;
- (void)presenterPrepareEndOfBookExperienceWithAssetPresenter:(id)presenter completion:(id)completion;
- (void)presenterSelectLibraryAllCollection;
- (void)presenterSelectTabWithIdentifier:(id)identifier;
- (void)presenterShowAlertController:(id)controller animated:(BOOL)animated;
- (void)presenterShowModalController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presenterUpdateReadingNowAssetVisibility:(BOOL)visibility assetPresenter:(id)presenter;
- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)animated;
- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)animated;
- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)completion;
- (void)saveStateClosing:(BOOL)closing;
- (void)showLibraryAnimated:(BOOL)animated assetID:(id)d completion:(id)completion;
- (void)showLibraryAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation BKMainFlowController

- (BKMainFlowController)initWithLibraryAssetProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = BKMainFlowController;
  v5 = [(BKMainFlowController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryAssetProvider, providerCopy);
  }

  return v6;
}

- (id)presenterSceneController
{
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v4 = [BKAppDelegate sceneControllerForViewController:rootViewController];

  return v4;
}

- (id)selectedNavigationController
{
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  selectedNavigationController = [rootBarCoordinator selectedNavigationController];

  return selectedNavigationController;
}

- (id)navigationControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  v6 = [rootBarCoordinator navigationControllerForIdentifier:identifierCopy];

  return v6;
}

- (id)viewControllerForStatusBarStyle
{
  statusBarStyling = [(BKMainFlowController *)self statusBarStyling];
  if (statusBarStyling)
  {
    statusBarStyling2 = [(BKMainFlowController *)self statusBarStyling];
    viewControllerForStatusBarStyle = [statusBarStyling2 viewControllerForStatusBarStyle];
  }

  else
  {
    viewControllerForStatusBarStyle = [(BKMainFlowController *)self selectedNavigationController];
  }

  return viewControllerForStatusBarStyle;
}

- (id)viewControllerForStatusBarHidden
{
  statusBarStyling = [(BKMainFlowController *)self statusBarStyling];
  if (statusBarStyling)
  {
    statusBarStyling2 = [(BKMainFlowController *)self statusBarStyling];
    viewControllerForStatusBarHidden = [statusBarStyling2 viewControllerForStatusBarHidden];
  }

  else
  {
    viewControllerForStatusBarHidden = [(BKMainFlowController *)self selectedNavigationController];
  }

  return viewControllerForStatusBarHidden;
}

- (void)_transition:(id)_transition navigationController:(id)controller animator:(id)animator completion:(id)completion
{
  _transitionCopy = _transition;
  controllerCopy = controller;
  animatorCopy = animator;
  completionCopy = completion;
  [(BKMainFlowController *)self setAnimator:animatorCopy];
  topViewController = [controllerCopy topViewController];
  [(BKMainFlowController *)self setTransitionPreviousTopViewController:topViewController];

  v15 = objc_retainBlock(_transitionCopy);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, controllerCopy);
  }

  objc_initWeak(&location, self);
  tabBarController = [controllerCopy tabBarController];
  transitionCoordinator = [controllerCopy transitionCoordinator];
  [tabBarController im_updateTabBarVisibleWithTransitionCoordinator:transitionCoordinator];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A700C;
  v20[3] = &unk_100A0A288;
  objc_copyWeak(&v22, &location);
  v19 = completionCopy;
  v21 = v19;
  [(BKMainFlowController *)self _navigationController:controllerCopy transitionCompletion:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_transition:(id)_transition animator:(id)animator completion:(id)completion
{
  completionCopy = completion;
  animatorCopy = animator;
  _transitionCopy = _transition;
  selectedNavigationController = [(BKMainFlowController *)self selectedNavigationController];
  [(BKMainFlowController *)self _transition:_transitionCopy navigationController:selectedNavigationController animator:animatorCopy completion:completionCopy];
}

- (void)_navigationController:(id)controller transitionCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    transitionCoordinator = [controller transitionCoordinator];
    if (transitionCoordinator)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1001A71F8;
      v7[3] = &unk_100A0A2B0;
      v8 = completionCopy;
      [transitionCoordinator animateAlongsideTransition:0 completion:v7];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }
}

- (BKContentOpenAnimating)bookOpenAnimator
{
  animator = [(BKMainFlowController *)self animator];
  v3 = BUProtocolCast();

  return v3;
}

- (void)presenterPopToRootAnimated:(BOOL)animated completion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A7310;
  v4[3] = &unk_100A0A2D0;
  animatedCopy = animated;
  [(BKMainFlowController *)self _transition:v4 animator:0 completion:completion];
}

- (BOOL)_hasOpenAssets
{
  v2 = [(BKMainFlowController *)self presenterViewControllersConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_welcomePresenterIsPresentingWelcome
{
  v2 = +[BKAppDelegate sceneManager];
  isPresentingWelcome = [v2 isPresentingWelcome];

  return isPresentingWelcome;
}

- (BOOL)presenterIsShowingLibrary
{
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  selectedItem = [rootBarCoordinator selectedItem];
  if ([selectedItem isDefaultCollection] && !-[BKMainFlowController _hasOpenAssets](self, "_hasOpenAssets"))
  {
    v5 = ![(BKMainFlowController *)self _welcomePresenterIsPresentingWelcome];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)presenterIsShowingStore
{
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  selectedItem = [rootBarCoordinator selectedItem];

  isStoreOnly = [selectedItem isStoreOnly];
  if ((isStoreOnly & 1) == 0)
  {
    rootBarCoordinator = [selectedItem identifier];
    v2 = +[BKRootBarItemsProvider HomeIdentifier];
    if (rootBarCoordinator != v2)
    {
      identifier = [selectedItem identifier];
      v8 = +[BKRootBarItemsProvider SearchIdentifier];
      if (identifier == v8 && ![(BKMainFlowController *)self _hasOpenAssets])
      {
        v9 = ![(BKMainFlowController *)self _welcomePresenterIsPresentingWelcome];
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      goto LABEL_11;
    }
  }

  if ([(BKMainFlowController *)self _hasOpenAssets])
  {
    LOBYTE(v9) = 0;
    if (isStoreOnly)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = ![(BKMainFlowController *)self _welcomePresenterIsPresentingWelcome];
  if ((isStoreOnly & 1) == 0)
  {
LABEL_11:
  }

LABEL_12:

  return v9;
}

- (void)presenterShowAlertController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  [rootViewController presentViewController:controllerCopy animated:animatedCopy completion:0];
}

- (id)presenterModalPresentingViewController
{
  delegate = [(BKMainFlowController *)self delegate];
  flowControllerModalPresentingViewController = [delegate flowControllerModalPresentingViewController];

  return flowControllerModalPresentingViewController;
}

- (void)presenterShowModalController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  [controllerCopy setTransitioningDelegate:self];
  [(BKMainFlowController *)self presenterModalPresentingViewController];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001A7844;
  v28[3] = &unk_100A0A338;
  v31 = completionCopy;
  v28[4] = self;
  v10 = v32 = animatedCopy;
  v29 = v10;
  v11 = controllerCopy;
  v30 = v11;
  v12 = completionCopy;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001A7998;
  v22 = &unk_100A0A388;
  v27 = animatedCopy;
  selfCopy = self;
  v24 = v11;
  v26 = objc_retainBlock(v28);
  v13 = v10;
  v25 = v13;
  v14 = v26;
  v15 = v11;
  v16 = objc_retainBlock(&v19);
  bc_descendentPresentedViewController = [v13 bc_descendentPresentedViewController];

  if (bc_descendentPresentedViewController)
  {
    bc_descendentPresentedViewController2 = [v13 bc_descendentPresentedViewController];
    [bc_descendentPresentedViewController2 dismissViewControllerAnimated:animatedCopy completion:v16];
  }

  else
  {
    (v16[2])(v16);
  }
}

- (id)_coverViewForPresenter:(id)presenter assetPresenter:(id)assetPresenter includePresented:(BOOL)presented
{
  presentedCopy = presented;
  assetPresenterCopy = assetPresenter;
  v9 = [presenter im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:presentedCopy];
  assetPresenterAssetID = [assetPresenterCopy assetPresenterAssetID];
  v11 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:assetPresenterAssetID];

  v12 = [(BKMainFlowController *)self _coverSourceFromHost:v9 assetPresenter:assetPresenterCopy book:v11 opening:1];
  LODWORD(assetPresenterAssetID) = [assetPresenterCopy stateDismissInProgress];

  if (assetPresenterAssetID)
  {
    [v9 coverAnimationHostScrollToMakeVisible:v12];
  }

  coverAnimationSourceView = [v12 coverAnimationSourceView];
  if (!coverAnimationSourceView)
  {
    v14 = sub_1001A6B30();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100793300(v11, v14);
    }
  }

  return coverAnimationSourceView;
}

- (void)presenterDismissModalController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  [(BKMainFlowController *)self presenterVisibleViewControllerWillChangeAnimated:animatedCopy];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001A82C0;
  v17 = &unk_100A03468;
  v10 = controllerCopy;
  v21 = animatedCopy;
  selfCopy = self;
  v20 = completionCopy;
  v18 = v10;
  v11 = completionCopy;
  v12 = objc_retainBlock(&v14);
  bc_descendentPresentedViewController = [v10 bc_descendentPresentedViewController];
  if (bc_descendentPresentedViewController)
  {
    [(BKMainFlowController *)self presenterDismissModalController:bc_descendentPresentedViewController animated:animatedCopy completion:v12];
  }

  else
  {
    (v12[2])(v12);
  }
}

- (void)presenterDismissAllModalControllersAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  bc_descendentPresentedViewController = [rootViewController bc_descendentPresentedViewController];

  if (bc_descendentPresentedViewController)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A84E0;
    v12[3] = &unk_100A03490;
    v12[4] = self;
    v14 = animatedCopy;
    v13 = completionCopy;
    [(BKMainFlowController *)self presenterDismissModalController:bc_descendentPresentedViewController animated:animatedCopy completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)presenterFinishModalTransitionsWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(BKMainFlowController *)self delegate];
  isHostingRootBar = [delegate isHostingRootBar];

  if (isHostingRootBar)
  {
    selectedNavigationController = [(BKMainFlowController *)self selectedNavigationController];
    if (selectedNavigationController)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001A8618;
      v11[3] = &unk_100A03920;
      v12 = completionCopy;
      [selectedNavigationController im_finishOngoingModalTransitionAnimations:v11];
    }

    else
    {
      v9 = objc_retainBlock(completionCopy);
      v10 = v9;
      if (v9)
      {
        (*(v9 + 2))(v9);
      }
    }
  }

  else
  {
    v8 = objc_retainBlock(completionCopy);
    selectedNavigationController = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = +[BKAppDelegate delegate];
  sceneManager = [v4 sceneManager];
  minifiedFlowController = [sceneManager minifiedFlowController];

  [minifiedFlowController visibleViewControllersUpdatedPreTranstionAnimated:animatedCopy];
}

- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = +[BKAppDelegate delegate];
  sceneManager = [v4 sceneManager];
  minifiedFlowController = [sceneManager minifiedFlowController];

  [minifiedFlowController visibleViewControllersUpdatedPostTranstionAnimated:animatedCopy];
}

- (id)presenterFirstVisibleChildConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v7 = [rootViewController im_firstVisibleChildConformingToProtocol:protocolCopy includePresented:1];

  return v7;
}

- (id)presenterViewControllersConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_alloc_init(NSMutableArray);
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A88DC;
  v10[3] = &unk_100A05990;
  v8 = v5;
  v11 = v8;
  [rootViewController im_enumerateChildrenConformingToProtocol:protocolCopy block:v10];

  return v8;
}

- (void)presenterSelectLibraryAllCollection
{
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  v2 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  [rootBarCoordinator selectWithIdentifier:v2 isUserAction:1];
}

- (void)presenterPrepareEndOfBookExperienceWithAssetPresenter:(id)presenter completion:(id)completion
{
  completionCopy = completion;
  presenterCopy = presenter;
  objc_opt_class();
  presentationController = [presenterCopy presentationController];
  v12 = BUDynamicCast();

  selectedNavigationController = [(BKMainFlowController *)self selectedNavigationController];
  v10 = +[BKRootBarItemsProvider HomeIdentifier];
  v11 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v10];

  [v12 setUseEndOfBookExperience:selectedNavigationController == v11];
  [(BKMainFlowController *)self _updateReadingNowFeedWithAssetPresenter:presenterCopy completion:completionCopy];
}

- (void)presenterUpdateReadingNowAssetVisibility:(BOOL)visibility assetPresenter:(id)presenter
{
  visibilityCopy = visibility;
  presenterCopy = presenter;
  v7 = [(BKMainFlowController *)self _closeToCurrentBookWithAssetPresenter:presenterCopy opening:0];
  v12 = [(BKMainFlowController *)self _refIdFromAssetPresenter:presenterCopy closeToCurrentBook:v7];
  v8 = [(BKMainFlowController *)self _refInstanceFromAssetPresenter:presenterCopy closeToCurrentBook:v7];
  assetPresenterAssetViewController = [presenterCopy assetPresenterAssetViewController];

  presentingViewController = [assetPresenterAssetViewController presentingViewController];
  v11 = [presentingViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1];

  if (objc_opt_respondsToSelector())
  {
    [v11 coverAnimationHostUpdateItemVisibility:visibilityCopy refId:v12 refInstance:v8];
  }
}

- (void)presenterDidEndReadingExperienceWithAssetPresenter:(id)presenter
{
  [(BKMainFlowController *)self _updateReadingNowFeedWithPerformantForReadingExperience:0 for:presenter];
  presenterModalPresentingViewController = [(BKMainFlowController *)self presenterModalPresentingViewController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childViewControllers = [presenterModalPresentingViewController childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(childViewControllers);
        }

        view = [*(*(&v11 + 1) + 8 * v9) view];
        [view setAccessibilityElementsHidden:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childViewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)presenterEnsureCanOpenBookInCurrentContext:(BOOL)context
{
  delegate = [(BKMainFlowController *)self delegate];
  isHostingRootBar = [delegate isHostingRootBar];

  if (isHostingRootBar && ![(BKMainFlowController *)self presenterIsShowingLibrary]&& !context)
  {

    [(BKMainFlowController *)self presenterSelectLibraryAllCollection];
  }
}

- (BOOL)isBookCurrentlyOpen
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  rootViewController = [WeakRetained rootViewController];
  v4 = [rootViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting includePresented:1];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)presenterShouldOpenBookUsingLargeCover
{
  v3 = [(BKMainFlowController *)self presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    delegate = [(BKMainFlowController *)self delegate];
    if (![delegate isHostingRootBar] || -[BKMainFlowController presenterIsShowingLibrary](self, "presenterIsShowingLibrary") || -[BKMainFlowController presenterIsShowingStore](self, "presenterIsShowingStore"))
    {
      v6 = +[BKAppDelegate delegate];
      appLaunchCoordinator = [v6 appLaunchCoordinator];
      v4 = [appLaunchCoordinator appLaunchCoordinatorHasAppLaunched] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)showLibraryAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v7 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiTunes = [v7 isUserSignedInToiTunes];

  if (isUserSignedInToiTunes)
  {
    v9 = +[BDSJaliscoDAAPClient sharedClient];
    [v9 updatePolitely:1 reason:4 completion:0];
  }

  [(BKMainFlowController *)self presenterSelectLibraryAllCollection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A8F58;
  v10[3] = &unk_100A0A2D0;
  animatedCopy = animated;
  [(BKMainFlowController *)self _transition:v10 animator:0 completion:completionCopy];
}

- (void)showLibraryAnimated:(BOOL)animated assetID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v10 = +[BUAccountsProvider sharedProvider];
  isUserSignedInToiTunes = [v10 isUserSignedInToiTunes];

  if (isUserSignedInToiTunes)
  {
    v12 = +[BDSJaliscoDAAPClient sharedClient];
    [v12 updatePolitely:1 reason:4 completion:0];
  }

  [(BKMainFlowController *)self presenterSelectLibraryAllCollection];
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  v14 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  v15 = [rootBarCoordinator navigationControllerForIdentifier:v14];

  v16 = [v15 popToRootViewControllerAnimated:0];
  objc_opt_class();
  topViewController = [v15 topViewController];
  v18 = BUDynamicCast();

  [v18 scrollToMakeLibraryAssetIDVisible:dCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001A9134;
  v19[3] = &unk_100A0A2D0;
  animatedCopy = animated;
  [(BKMainFlowController *)self _transition:v19 animator:0 completion:completionCopy];
}

- (id)_bookWithAssetPermanentOrTemporaryAssetID:(id)d
{
  dCopy = d;
  libraryAssetProvider = [(BKMainFlowController *)self libraryAssetProvider];
  v6 = [libraryAssetProvider libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:dCopy];

  return v6;
}

- (id)_coverImageForAssetID:(id)d toViewController:(id)controller forAssetViewController:(id)viewController source:(id)source coverImage:(id)image
{
  dCopy = d;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceCopy = source;
  imageCopy = image;
  if (!imageCopy)
  {
    if (sourceCopy)
    {
      imageCopy = [sourceCopy coverAnimationSourceImage];
    }

    else
    {
      view = [controllerCopy view];
      [view bounds];
      v19 = v18;
      v21 = v20;

      v22 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:dCopy];
      if (!v22 || (BCReportAssertionFailureWithMessage(), +[BKLibraryManager fetchImageForAsset:size:includeSpine:coverEffectsEnvironment:](BKLibraryManager, "fetchImageForAsset:size:includeSpine:coverEffectsEnvironment:", v22, 1, self, v19, v21), v23 = objc_claimAutoreleasedReturnValue(), +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v23 CGImage]), v24 = objc_claimAutoreleasedReturnValue(), v23, !v24))
      {
        [v22 isRightToLeft];
        v25 = +[UIScreen mainScreen];
        [v25 scale];
        [v22 isPreorderBook];
        [v22 isAudiobook];

        CGSizeScale();
        if (v22 || (Image = BKGenericBookCoverCreateImageWithStyle()) == 0)
        {
          Image = BKGenericBookCoverCreateImage();
        }

        v27 = Image;
        v24 = [UIImage imageWithCGImage:Image];
        CGImageRelease(v27);
      }

      imageCopy = v24;
    }
  }

  return imageCopy;
}

- (id)_minibarRevealAnimatorWithViewController:(id)controller opening:(BOOL)opening
{
  openingCopy = opening;
  v5 = BUProtocolCast();
  v6 = +[BKAppDelegate delegate];
  sceneManager = [v6 sceneManager];
  minifiedFlowController = [sceneManager minifiedFlowController];

  if (v5 && ([v5 assetPresenterAssetID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(minifiedFlowController, "shouldAnimateAssetWithAssetIDFromMinibar:", v9), v9, v10))
  {
    v11 = [[BKMinibarRevealAnimator alloc] initWithOpening:openingCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_bookAndCoverAnimatorFrom:(id)from to:(id)to operation:(int64_t)operation
{
  fromCopy = from;
  toCopy = to;
  v10 = [fromCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1];
  v11 = [fromCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting includePresented:0];
  v12 = v11 == 0;

  v13 = [toCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting includePresented:v12];
  v14 = v13;
  if (v10)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!v15)
  {
    if (operation == 1)
    {
      v17 = v13;
      v18 = v10;
      goto LABEL_10;
    }

LABEL_18:

    endOfBookCoverAnimationSource = self->_endOfBookCoverAnimationSource;
    self->_endOfBookCoverAnimationSource = 0;

    v20 = 0;
    v17 = 0;
    v18 = 0;
    v22 = 0;
    goto LABEL_24;
  }

  if (operation != 2)
  {
    goto LABEL_18;
  }

  v17 = [fromCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  assetPresenterPermanentOrTemporaryAssetID = [v17 assetPresenterPermanentOrTemporaryAssetID];
  v20 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:assetPresenterPermanentOrTemporaryAssetID];

  v18 = [toCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1 validateItem:v20];

  v22 = 0;
  v23 = v17 != 0;
  if (v18 && v17)
  {
    if (v20)
    {
LABEL_15:
      v24 = self->_endOfBookCoverAnimationSource;
      if (v24)
      {
        v25 = v24;
LABEL_17:
        assetPresenterCoverAnimationSource = v25;
LABEL_20:
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1001A99F0;
        v48[3] = &unk_100A0A3D8;
        v17 = v17;
        v49 = v17;
        v20 = v20;
        v56 = v16;
        v50 = v20;
        v51 = assetPresenterCoverAnimationSource;
        v18 = v18;
        v52 = v18;
        selfCopy = self;
        v54 = toCopy;
        v55 = fromCopy;
        v28 = assetPresenterCoverAnimationSource;
        v29 = objc_retainBlock(v48);
        v22 = (v29[2])(v29, 0);

        v23 = 1;
        goto LABEL_21;
      }

      assetPresenterCoverAnimationSource = [v17 assetPresenterCoverAnimationSource];
      if (assetPresenterCoverAnimationSource)
      {
        goto LABEL_20;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        assetPresenterCoverAnimationSource = 0;
        goto LABEL_40;
      }

      if (v16)
      {
        openOptions = [v17 openOptions];
      }

      else
      {
        objc_opt_class();
        objc_opt_class();
        v33 = BUDynamicCast();
        presentationController = [v33 presentationController];
        v35 = BUDynamicCast();

        LOBYTE(v33) = [v35 useEndOfBookExperience];
        openOptions2 = [v17 openOptions];
        openOptions = openOptions2;
        if (v33)
        {
          v46 = openOptions2;
          [v17 assetPresenterAssetID];
          v44 = v47 = 0;
          v45 = @"currentBook";
LABEL_39:
          v43 = v44;
          assetPresenterCoverAnimationSource = [v18 coverAnimationHostSourceForUUID:0 uid:v47 refId:v45 refInstance:{v44, v44}];

LABEL_40:
          if (assetPresenterCoverAnimationSource || !v20)
          {
            goto LABEL_20;
          }

          v25 = [v18 coverAnimationHostSourceForItem:v20];
          goto LABEL_17;
        }
      }

      v47 = [openOptions objectForKeyedSubscript:@"BKBookPresentingAnimateFromUid"];
      v37 = [openOptions objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefId"];
      v38 = v37;
      v39 = @"cover";
      if (v37)
      {
        v39 = v37;
      }

      v45 = v39;

      v46 = openOptions;
      v40 = [openOptions objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefInstance"];
      v41 = v40;
      if (v40)
      {
        assetPresenterAssetID = v40;
      }

      else
      {
        assetPresenterAssetID = [v17 assetPresenterAssetID];
      }

      v44 = assetPresenterAssetID;

      goto LABEL_39;
    }

LABEL_10:
    assetPresenterPermanentOrTemporaryAssetID2 = [v17 assetPresenterPermanentOrTemporaryAssetID];
    v20 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:assetPresenterPermanentOrTemporaryAssetID2];

    goto LABEL_15;
  }

LABEL_21:
  v30 = self->_endOfBookCoverAnimationSource;
  self->_endOfBookCoverAnimationSource = 0;

  if (!v22 && v23)
  {
    v22 = [BKCrossFadeTransition transitionWithDuration:0.25];
  }

LABEL_24:

  return v22;
}

- (id)_coverSourceFromHost:(id)host assetPresenter:(id)presenter book:(id)book opening:(BOOL)opening
{
  openingCopy = opening;
  hostCopy = host;
  presenterCopy = presenter;
  bookCopy = book;
  endOfBookCoverAnimationSource = self->_endOfBookCoverAnimationSource;
  if (endOfBookCoverAnimationSource)
  {
    assetPresenterCoverAnimationSource = endOfBookCoverAnimationSource;
LABEL_10:
    v21 = assetPresenterCoverAnimationSource;
    goto LABEL_11;
  }

  assetPresenterCoverAnimationSource = [presenterCopy assetPresenterCoverAnimationSource];
  if (assetPresenterCoverAnimationSource)
  {
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ((v15 = -[BKMainFlowController _closeToCurrentBookWithAssetPresenter:opening:](self, "_closeToCurrentBookWithAssetPresenter:opening:", presenterCopy, openingCopy), [presenterCopy openOptions], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16, !v15) ? (objc_msgSend(v16, "objectForKeyedSubscript:", @"BKBookPresentingAnimateFromUid"), v18 = objc_claimAutoreleasedReturnValue()) : (v18 = 0), -[BKMainFlowController _refIdFromAssetPresenter:closeToCurrentBook:](self, "_refIdFromAssetPresenter:closeToCurrentBook:", presenterCopy, v15), v19 = objc_claimAutoreleasedReturnValue(), -[BKMainFlowController _refInstanceFromAssetPresenter:closeToCurrentBook:](self, "_refInstanceFromAssetPresenter:closeToCurrentBook:", presenterCopy, v15), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(hostCopy, "coverAnimationHostSourceForUUID:uid:refId:refInstance:", 0, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v17, !v21))
  {
    assetPresenterCoverAnimationSource = [hostCopy coverAnimationHostSourceForItem:bookCopy];
    goto LABEL_10;
  }

LABEL_11:
  if (!openingCopy && v21 && [hostCopy coverAnimationHostWantsScrollOnClose])
  {
    [hostCopy coverAnimationHostScrollToMakeVisible:v21];
  }

  return v21;
}

- (BOOL)_closeToCurrentBookWithAssetPresenter:(id)presenter opening:(BOOL)opening
{
  if (opening)
  {
    return 0;
  }

  presenterCopy = presenter;
  objc_opt_class();
  objc_opt_class();
  v6 = BUDynamicCast();

  presentationController = [v6 presentationController];
  v8 = BUDynamicCast();

  LOBYTE(presentationController) = [v8 useEndOfBookExperience];
  return presentationController;
}

- (id)_refIdFromAssetPresenter:(id)presenter closeToCurrentBook:(BOOL)book
{
  openOptions = [presenter openOptions];
  v6 = openOptions;
  if (book)
  {
    v7 = @"currentBook";
  }

  else
  {
    v8 = [openOptions objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefId"];
    v9 = v8;
    v10 = @"cover";
    if (v8)
    {
      v10 = v8;
    }

    v7 = v10;
  }

  return v7;
}

- (id)_refInstanceFromAssetPresenter:(id)presenter closeToCurrentBook:(BOOL)book
{
  presenterCopy = presenter;
  openOptions = [presenterCopy openOptions];
  v7 = openOptions;
  if (book)
  {
    assetPresenterAssetID = [presenterCopy assetPresenterAssetID];
  }

  else
  {
    v9 = [openOptions objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefInstance"];
    v10 = v9;
    if (v9)
    {
      assetPresenterAssetID2 = v9;
    }

    else
    {
      assetPresenterAssetID2 = [presenterCopy assetPresenterAssetID];
    }

    assetPresenterAssetID = assetPresenterAssetID2;
  }

  return assetPresenterAssetID;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  controllerCopy = controller;
  selectedNavigationController = [(BKMainFlowController *)self selectedNavigationController];
  topViewController = [selectedNavigationController topViewController];
  v7 = BUProtocolCast();

  if (v7 || [(BKMainFlowController *)self presenterIsShowingLibrary])
  {
    v8 = 0;
  }

  else
  {
    viewControllers = [controllerCopy viewControllers];
    v8 = [viewControllers count] > 1;
  }

  return v8;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  transitionCoordinator = [controllerCopy transitionCoordinator];
  v10 = [transitionCoordinator viewControllerForKey:UITransitionContextFromViewControllerKey];
  navigationController = [v10 navigationController];

  if (navigationController == controllerCopy)
  {
    if (v10)
    {
      viewControllers = [controllerCopy viewControllers];
      v22 = [viewControllers containsObject:v10];

      if (v22)
      {
        [viewControllerCopy bsui_configureHideSmallTitleOnScroll:{objc_msgSend(viewControllerCopy, "bsui_hasLargeTitle")}];
      }
    }
  }

  else
  {

    v10 = 0;
  }

  v42 = animatedCopy;
  if (animatedCopy)
  {
    v12 = transitionCoordinator;
  }

  else
  {
    v12 = 0;
  }

  v13 = BCNavBarVisibilityDuration;
  if (!animatedCopy)
  {
    v13 = 0.0;
  }

  [controllerCopy bc_updateNavBarVisibleWithTransitionCoordinator:v12 duration:v13];
  disappearingViewController = [controllerCopy disappearingViewController];
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  selectedItem = [rootBarCoordinator selectedItem];
  identifier = [selectedItem identifier];
  v18 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  v19 = [identifier isEqualToString:v18];

  if (v19 && disappearingViewController)
  {
    viewControllers2 = [controllerCopy viewControllers];
    if ([viewControllers2 indexOfObjectIdenticalTo:disappearingViewController] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      im_effectiveViewControllerForTabBarVisibility = [disappearingViewController im_effectiveViewControllerForTabBarVisibility];
      im_tabBarVisible = [im_effectiveViewControllerForTabBarVisibility im_tabBarVisible];

      if ((im_tabBarVisible & 1) == 0)
      {
        [viewControllerCopy setHidesBottomBarWhenPushed:1];
        [viewControllerCopy im_setTabBarVisible:0];
      }
    }
  }

  view = [controllerCopy view];
  [view bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  view2 = [viewControllerCopy view];
  [view2 frame];
  v46.origin.x = v27;
  v46.origin.y = v29;
  v46.size.width = v31;
  v46.size.height = v33;
  v35 = CGRectEqualToRect(v45, v46);

  if (!v35)
  {
    v36 = objc_alloc_init(objc_opt_class());
    view3 = [controllerCopy view];
    [v36 setContainerView:view3];

    [viewControllerCopy viewWillTransitionToSize:v36 withTransitionCoordinator:{v31, v33}];
    view4 = [viewControllerCopy view];
    [view4 setFrame:{v27, v29, v31, v33}];

    [v36 _runAlongsideAnimations];
    [v36 _runAlongsideCompletionsAfterCommit];
  }

  v39 = +[BCLightLevelController sharedInstance];
  currentLightLevel = [v39 currentLightLevel];

  [viewControllerCopy bc_notifyLightLevelDidChange:currentLightLevel];
  [(BKMainFlowController *)self presenterVisibleViewControllerWillChangeAnimated:v42];
  navigationDelegate = [(BKMainFlowController *)self navigationDelegate];
  [navigationDelegate navigationController:controllerCopy willShowViewController:viewControllerCopy];
}

- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  [rootViewController im_finishOngoingModalTransitionAnimations:completionCopy];
}

- (void)presenterSelectTabWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  [rootBarCoordinator selectWithIdentifier:identifierCopy isUserAction:1];
}

- (id)_animatorFromViewController:(id)controller toViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v12 = 0;
  if (controllerCopy != viewControllerCopy && animatedCopy)
  {
    animator = [(BKMainFlowController *)self animator];
    if (!animator)
    {
      animator = [(BKMainFlowController *)self _minibarRevealAnimatorWithViewController:viewControllerCopy opening:1];
      if (!animator)
      {
        animator = [(BKMainFlowController *)self _minibarRevealAnimatorWithViewController:controllerCopy opening:0];
        if (!animator)
        {
          animator = [(BKMainFlowController *)self _bookAndCoverAnimatorFrom:controllerCopy to:viewControllerCopy operation:operation];
        }
      }
    }

    v12 = animator;
  }

  return v12;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  animator = [(BKMainFlowController *)self animator];
  if (animator)
  {
    v13 = BUProtocolCast();
    [(BKMainFlowController *)self setStatusBarStyling:v13];

    statusBarStyling = [(BKMainFlowController *)self statusBarStyling];
    [statusBarStyling configureWithFromViewController:viewControllerCopy toViewController:toViewControllerCopy];

    [controllerCopy setNeedsStatusBarAppearanceUpdate];
  }

  return animator;
}

- (void)_fixInterfaceOrientationForEndOfBookTransitionForDismissingViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v7 = +[BKRootBarItemsProvider HomeIdentifier];
  v8 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v7];

  objc_opt_class();
  viewControllers = [v8 viewControllers];
  firstObject = [viewControllers firstObject];
  v11 = BUDynamicCast();

  bc_windowForViewController = [controllerCopy bc_windowForViewController];

  windowScene = [bc_windowForViewController windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  supportedInterfaceOrientationsForSelf = [v11 supportedInterfaceOrientationsForSelf];
  if ((interfaceOrientation - 3) > 1 || (supportedInterfaceOrientationsForSelf & (1 << interfaceOrientation)) != 0)
  {
    v16 = objc_retainBlock(completionCopy);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  else
  {
    [(BKMainFlowController *)self _forceOrientationToPortrait:completionCopy];
  }
}

- (void)_updateReadingNowFeedWithAssetPresenter:(id)presenter completion:(id)completion
{
  presenterCopy = presenter;
  completionCopy = completion;
  if (presenterCopy)
  {
    v7 = +[BKRootBarItemsProvider HomeIdentifier];
    v8 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v7];

    objc_opt_class();
    viewControllers = [v8 viewControllers];
    firstObject = [viewControllers firstObject];
    v11 = BUDynamicCast();

    viewIfLoaded = [v11 viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      viewIfLoaded2 = [presenterCopy viewIfLoaded];
      window2 = [viewIfLoaded2 window];

      if (window2 == window)
      {
        [v11 updateFeedContentWithCompletion:completionCopy];
      }
    }
  }

  else
  {
    v16 = objc_retainBlock(completionCopy);
    v8 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16);
    }
  }
}

- (void)_updateReadingNowFeedWithPerformantForReadingExperience:(BOOL)experience for:(id)for
{
  experienceCopy = experience;
  forCopy = for;
  v6 = +[BKRootBarItemsProvider HomeIdentifier];
  v7 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v6];

  objc_opt_class();
  viewControllers = [v7 viewControllers];
  firstObject = [viewControllers firstObject];
  v10 = BUDynamicCast();

  viewIfLoaded = [v10 viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    viewIfLoaded2 = [forCopy viewIfLoaded];
    window2 = [viewIfLoaded2 window];

    if (window2 == window)
    {
      [v10 setPerformantForReadingExperience:experienceCopy];
    }
  }
}

- (BOOL)_currentlySelectedTabIsStore
{
  rootBarCoordinator = [(BKMainFlowController *)self rootBarCoordinator];
  selectedItem = [rootBarCoordinator selectedItem];
  identifier = [selectedItem identifier];

  LOBYTE(rootBarCoordinator) = [BKRootBarItemsProvider isStoreOnlyFor:identifier];
  return rootBarCoordinator;
}

- (void)im_dismissChildViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selectedNavigationController = [(BKMainFlowController *)self selectedNavigationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AAE30;
  v9[3] = &unk_100A03E80;
  v9[4] = self;
  v10 = controllerCopy;
  animatedCopy = animated;
  v8 = controllerCopy;
  [selectedNavigationController im_finishOngoingModalTransitionAnimations:v9];
}

- (void)_forceOrientationToPortrait:(id)portrait
{
  portraitCopy = portrait;
  objc_opt_class();
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  bc_windowForViewController = [rootViewController bc_windowForViewController];
  windowScene = [bc_windowForViewController windowScene];
  v9 = BUDynamicCast();

  if (v9)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001AB2B4;
    v13[3] = &unk_100A060C0;
    v14 = portraitCopy;
    [v9 attemptRotateToPortraitWithCompletion:v13];
    v10 = v14;
  }

  else
  {
    v11 = sub_1001A6B30();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100793398(v11);
    }

    v12 = objc_retainBlock(portraitCopy);
    v10 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

- (BOOL)coverEffectsNightMode
{
  v2 = [(BKMainFlowController *)self presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCUCoverEffectsEnvironment];
  coverEffectsNightMode = [v2 coverEffectsNightMode];

  return coverEffectsNightMode;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  objc_opt_class();
  v9 = BUDynamicCast();
  if (+[BKUIPFeatures useUIPFluidBookOpenTransition](BKUIPFeatures, "useUIPFluidBookOpenTransition") && ![v9 useLegacyAnimation])
  {
    v10 = 0;
  }

  else
  {
    v10 = [(BKMainFlowController *)self _animatorFromViewController:presentingControllerCopy toViewController:controllerCopy operation:1 animated:1];
  }

  return v10;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v5 = BUDynamicCast();
  if (+[BKUIPFeatures useUIPFluidBookOpenTransition](BKUIPFeatures, "useUIPFluidBookOpenTransition") && ![v5 useLegacyAnimation])
  {
    v17 = 0;
  }

  else
  {
    v6 = [controllerCopy im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
    assetPresenterAssetViewController = [v6 assetPresenterAssetViewController];
    assetPresenterAssetID = [v6 assetPresenterAssetID];
    v9 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:assetPresenterAssetID];

    readerType = [assetPresenterAssetViewController readerType];
    presentingViewController = [controllerCopy presentingViewController];
    v12 = presentingViewController;
    if (readerType == 6)
    {
      v27 = v5;
      v13 = [presentingViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1];

      assetPresenterAssetViewController2 = [v6 assetPresenterAssetViewController];
      v25 = v13;
      v26 = v9;
      v14 = [(BKMainFlowController *)self _coverSourceFromHost:v13 assetPresenter:v6 book:v9 opening:0];
      v15 = [BKCloseBookAnimator alloc];
      bookOpenAnimationHelper = [(BKMainFlowController *)self bookOpenAnimationHelper];
      v17 = [(BKCloseBookAnimator *)v15 initWithContentHelper:bookOpenAnimationHelper coverSource:v14];

      objc_initWeak(&location, self);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1001AB808;
      v31[3] = &unk_100A070B8;
      objc_copyWeak(&v33, &location);
      v18 = v6;
      v32 = v18;
      [(BKCloseBookAnimator *)v17 setAnimationComplete:v31];
      v19 = BUProtocolCast();
      coverAnimationSourceCurrentBookWidgetInfo = [v19 coverAnimationSourceCurrentBookWidgetInfo];
      if ((v19 == 0) | [coverAnimationSourceCurrentBookWidgetInfo isCover] & 1)
      {
        assetPresenterAssetID2 = [v18 assetPresenterAssetID];
        assetPresenterCoverImage = [v18 assetPresenterCoverImage];
        v23 = [(BKMainFlowController *)self _coverImageForAssetID:assetPresenterAssetID2 toViewController:controllerCopy forAssetViewController:assetPresenterAssetViewController2 source:v14 coverImage:assetPresenterCoverImage];
        [(BKCloseBookAnimator *)v17 setCoverImage:v23];
      }

      else
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_1001AB85C;
        v29[3] = &unk_100A0A450;
        v30 = v19;
        [(BKCloseBookAnimator *)v17 setSpreadSnapshot:v29];
        assetPresenterAssetID2 = v30;
      }

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);

      v9 = v26;
      v5 = v27;
    }

    else
    {
      v17 = [(BKMainFlowController *)self _animatorFromViewController:controllerCopy toViewController:presentingViewController operation:2 animated:1];
    }
  }

  return v17;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = BUProtocolCast();

  if (v8)
  {
    v8 = [[BKAssetPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
  }

  return v8;
}

- (void)saveStateClosing:(BOOL)closing
{
  closingCopy = closing;
  delegate = [(BKMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v6 = [rootViewController im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___AEAssetViewController];

  [v6 saveStateClosing:closingCopy];
  v7 = +[BKAppDelegate delegate];
  sceneManager = [v7 sceneManager];
  minifiedFlowController = [sceneManager minifiedFlowController];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  minifiedAssetPresenters = [minifiedFlowController minifiedAssetPresenters];
  v11 = [minifiedAssetPresenters countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(minifiedAssetPresenters);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 minifiedAssetPresenterIsAudiobook])
        {
          [v15 minifiedAssetPresenterSaveStateClosing:closingCopy];
        }
      }

      v12 = [minifiedAssetPresenters countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (BKMainFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKLibraryAssetProvider)libraryAssetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryAssetProvider);

  return WeakRetained;
}

- (BKContentOpenStatusBarStyling)statusBarStyling
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarStyling);

  return WeakRetained;
}

- (BKContentOpenAnimationHelper)bookOpenAnimationHelper
{
  selfCopy = self;
  v3 = BKMainFlowController.bookOpenAnimationHelper.getter();

  return v3;
}

- (BKMainFlowControllerDockingDelegate)dockingDelegate
{
  selfCopy = self;
  v3 = BKMainFlowController.dockingDelegate.getter();

  return v3;
}

- (BKMainFlowControllerNavigationDelegate)navigationDelegate
{
  selfCopy = self;
  v3 = BKMainFlowController.navigationDelegate.getter();

  return v3;
}

- (BKRootBarCoordinating)rootBarCoordinator
{
  selfCopy = self;
  v3 = BKMainFlowController.rootBarCoordinator.getter();

  return v3;
}

@end