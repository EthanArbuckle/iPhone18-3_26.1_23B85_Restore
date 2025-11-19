@interface BKMainFlowController
- (BKContentOpenAnimating)bookOpenAnimator;
- (BKContentOpenAnimationHelper)bookOpenAnimationHelper;
- (BKContentOpenStatusBarStyling)statusBarStyling;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BKMainFlowController)initWithLibraryAssetProvider:(id)a3;
- (BKMainFlowControllerDelegate)delegate;
- (BKMainFlowControllerDockingDelegate)dockingDelegate;
- (BKMainFlowControllerNavigationDelegate)navigationDelegate;
- (BKRootBarCoordinating)rootBarCoordinator;
- (BOOL)_closeToCurrentBookWithAssetPresenter:(id)a3 opening:(BOOL)a4;
- (BOOL)_currentlySelectedTabIsStore;
- (BOOL)_hasOpenAssets;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (BOOL)_welcomePresenterIsPresentingWelcome;
- (BOOL)coverEffectsNightMode;
- (BOOL)isBookCurrentlyOpen;
- (BOOL)presenterIsShowingLibrary;
- (BOOL)presenterIsShowingStore;
- (BOOL)presenterShouldOpenBookUsingLargeCover;
- (id)_animatorFromViewController:(id)a3 toViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6;
- (id)_bookAndCoverAnimatorFrom:(id)a3 to:(id)a4 operation:(int64_t)a5;
- (id)_bookWithAssetPermanentOrTemporaryAssetID:(id)a3;
- (id)_coverImageForAssetID:(id)a3 toViewController:(id)a4 forAssetViewController:(id)a5 source:(id)a6 coverImage:(id)a7;
- (id)_coverSourceFromHost:(id)a3 assetPresenter:(id)a4 book:(id)a5 opening:(BOOL)a6;
- (id)_coverViewForPresenter:(id)a3 assetPresenter:(id)a4 includePresented:(BOOL)a5;
- (id)_minibarRevealAnimatorWithViewController:(id)a3 opening:(BOOL)a4;
- (id)_refIdFromAssetPresenter:(id)a3 closeToCurrentBook:(BOOL)a4;
- (id)_refInstanceFromAssetPresenter:(id)a3 closeToCurrentBook:(BOOL)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)navigationControllerWithIdentifier:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)presenterFirstVisibleChildConformingToProtocol:(id)a3;
- (id)presenterModalPresentingViewController;
- (id)presenterSceneController;
- (id)presenterViewControllersConformingToProtocol:(id)a3;
- (id)selectedNavigationController;
- (id)viewControllerForStatusBarHidden;
- (id)viewControllerForStatusBarStyle;
- (void)_fixInterfaceOrientationForEndOfBookTransitionForDismissingViewController:(id)a3 completion:(id)a4;
- (void)_forceOrientationToPortrait:(id)a3;
- (void)_navigationController:(id)a3 transitionCompletion:(id)a4;
- (void)_transition:(id)a3 animator:(id)a4 completion:(id)a5;
- (void)_transition:(id)a3 navigationController:(id)a4 animator:(id)a5 completion:(id)a6;
- (void)_updateReadingNowFeedWithAssetPresenter:(id)a3 completion:(id)a4;
- (void)_updateReadingNowFeedWithPerformantForReadingExperience:(BOOL)a3 for:(id)a4;
- (void)im_dismissChildViewController:(id)a3 animated:(BOOL)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presenterDidEndReadingExperienceWithAssetPresenter:(id)a3;
- (void)presenterDismissAllModalControllersAnimated:(BOOL)a3 completion:(id)a4;
- (void)presenterDismissModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presenterEnsureCanOpenBookInCurrentContext:(BOOL)a3;
- (void)presenterFinishModalTransitionsWithCompletion:(id)a3;
- (void)presenterPopToRootAnimated:(BOOL)a3 completion:(id)a4;
- (void)presenterPrepareEndOfBookExperienceWithAssetPresenter:(id)a3 completion:(id)a4;
- (void)presenterSelectLibraryAllCollection;
- (void)presenterSelectTabWithIdentifier:(id)a3;
- (void)presenterShowAlertController:(id)a3 animated:(BOOL)a4;
- (void)presenterShowModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presenterUpdateReadingNowAssetVisibility:(BOOL)a3 assetPresenter:(id)a4;
- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)a3;
- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)a3;
- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)a3;
- (void)saveStateClosing:(BOOL)a3;
- (void)showLibraryAnimated:(BOOL)a3 assetID:(id)a4 completion:(id)a5;
- (void)showLibraryAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation BKMainFlowController

- (BKMainFlowController)initWithLibraryAssetProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKMainFlowController;
  v5 = [(BKMainFlowController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryAssetProvider, v4);
  }

  return v6;
}

- (id)presenterSceneController
{
  v2 = [(BKMainFlowController *)self delegate];
  v3 = [v2 rootViewController];
  v4 = [BKAppDelegate sceneControllerForViewController:v3];

  return v4;
}

- (id)selectedNavigationController
{
  v2 = [(BKMainFlowController *)self rootBarCoordinator];
  v3 = [v2 selectedNavigationController];

  return v3;
}

- (id)navigationControllerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BKMainFlowController *)self rootBarCoordinator];
  v6 = [v5 navigationControllerForIdentifier:v4];

  return v6;
}

- (id)viewControllerForStatusBarStyle
{
  v3 = [(BKMainFlowController *)self statusBarStyling];
  if (v3)
  {
    v4 = [(BKMainFlowController *)self statusBarStyling];
    v5 = [v4 viewControllerForStatusBarStyle];
  }

  else
  {
    v5 = [(BKMainFlowController *)self selectedNavigationController];
  }

  return v5;
}

- (id)viewControllerForStatusBarHidden
{
  v3 = [(BKMainFlowController *)self statusBarStyling];
  if (v3)
  {
    v4 = [(BKMainFlowController *)self statusBarStyling];
    v5 = [v4 viewControllerForStatusBarHidden];
  }

  else
  {
    v5 = [(BKMainFlowController *)self selectedNavigationController];
  }

  return v5;
}

- (void)_transition:(id)a3 navigationController:(id)a4 animator:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(BKMainFlowController *)self setAnimator:v12];
  v14 = [v11 topViewController];
  [(BKMainFlowController *)self setTransitionPreviousTopViewController:v14];

  v15 = objc_retainBlock(v10);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v11);
  }

  objc_initWeak(&location, self);
  v17 = [v11 tabBarController];
  v18 = [v11 transitionCoordinator];
  [v17 im_updateTabBarVisibleWithTransitionCoordinator:v18];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A700C;
  v20[3] = &unk_100A0A288;
  objc_copyWeak(&v22, &location);
  v19 = v13;
  v21 = v19;
  [(BKMainFlowController *)self _navigationController:v11 transitionCompletion:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_transition:(id)a3 animator:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKMainFlowController *)self selectedNavigationController];
  [(BKMainFlowController *)self _transition:v10 navigationController:v11 animator:v9 completion:v8];
}

- (void)_navigationController:(id)a3 transitionCompletion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [a3 transitionCoordinator];
    if (v6)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1001A71F8;
      v7[3] = &unk_100A0A2B0;
      v8 = v5;
      [v6 animateAlongsideTransition:0 completion:v7];
    }

    else
    {
      (*(v5 + 2))(v5, 1);
    }
  }
}

- (BKContentOpenAnimating)bookOpenAnimator
{
  v2 = [(BKMainFlowController *)self animator];
  v3 = BUProtocolCast();

  return v3;
}

- (void)presenterPopToRootAnimated:(BOOL)a3 completion:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001A7310;
  v4[3] = &unk_100A0A2D0;
  v5 = a3;
  [(BKMainFlowController *)self _transition:v4 animator:0 completion:a4];
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
  v3 = [v2 isPresentingWelcome];

  return v3;
}

- (BOOL)presenterIsShowingLibrary
{
  v3 = [(BKMainFlowController *)self rootBarCoordinator];
  v4 = [v3 selectedItem];
  if ([v4 isDefaultCollection] && !-[BKMainFlowController _hasOpenAssets](self, "_hasOpenAssets"))
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
  v4 = [(BKMainFlowController *)self rootBarCoordinator];
  v5 = [v4 selectedItem];

  v6 = [v5 isStoreOnly];
  if ((v6 & 1) == 0)
  {
    v4 = [v5 identifier];
    v2 = +[BKRootBarItemsProvider HomeIdentifier];
    if (v4 != v2)
    {
      v7 = [v5 identifier];
      v8 = +[BKRootBarItemsProvider SearchIdentifier];
      if (v7 == v8 && ![(BKMainFlowController *)self _hasOpenAssets])
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
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = ![(BKMainFlowController *)self _welcomePresenterIsPresentingWelcome];
  if ((v6 & 1) == 0)
  {
LABEL_11:
  }

LABEL_12:

  return v9;
}

- (void)presenterShowAlertController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(BKMainFlowController *)self delegate];
  v7 = [v8 rootViewController];
  [v7 presentViewController:v6 animated:v4 completion:0];
}

- (id)presenterModalPresentingViewController
{
  v2 = [(BKMainFlowController *)self delegate];
  v3 = [v2 flowControllerModalPresentingViewController];

  return v3;
}

- (void)presenterShowModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [v8 setTransitioningDelegate:self];
  [(BKMainFlowController *)self presenterModalPresentingViewController];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001A7844;
  v28[3] = &unk_100A0A338;
  v31 = v9;
  v28[4] = self;
  v10 = v32 = v6;
  v29 = v10;
  v11 = v8;
  v30 = v11;
  v12 = v9;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1001A7998;
  v22 = &unk_100A0A388;
  v27 = v6;
  v23 = self;
  v24 = v11;
  v26 = objc_retainBlock(v28);
  v13 = v10;
  v25 = v13;
  v14 = v26;
  v15 = v11;
  v16 = objc_retainBlock(&v19);
  v17 = [v13 bc_descendentPresentedViewController];

  if (v17)
  {
    v18 = [v13 bc_descendentPresentedViewController];
    [v18 dismissViewControllerAnimated:v6 completion:v16];
  }

  else
  {
    (v16[2])(v16);
  }
}

- (id)_coverViewForPresenter:(id)a3 assetPresenter:(id)a4 includePresented:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:v5];
  v10 = [v8 assetPresenterAssetID];
  v11 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:v10];

  v12 = [(BKMainFlowController *)self _coverSourceFromHost:v9 assetPresenter:v8 book:v11 opening:1];
  LODWORD(v10) = [v8 stateDismissInProgress];

  if (v10)
  {
    [v9 coverAnimationHostScrollToMakeVisible:v12];
  }

  v13 = [v12 coverAnimationSourceView];
  if (!v13)
  {
    v14 = sub_1001A6B30();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100793300(v11, v14);
    }
  }

  return v13;
}

- (void)presenterDismissModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(BKMainFlowController *)self presenterVisibleViewControllerWillChangeAnimated:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001A82C0;
  v17 = &unk_100A03468;
  v10 = v8;
  v21 = v6;
  v19 = self;
  v20 = v9;
  v18 = v10;
  v11 = v9;
  v12 = objc_retainBlock(&v14);
  v13 = [v10 bc_descendentPresentedViewController];
  if (v13)
  {
    [(BKMainFlowController *)self presenterDismissModalController:v13 animated:v6 completion:v12];
  }

  else
  {
    (v12[2])(v12);
  }
}

- (void)presenterDismissAllModalControllersAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BKMainFlowController *)self delegate];
  v8 = [v7 rootViewController];
  v9 = [v8 bc_descendentPresentedViewController];

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001A84E0;
    v12[3] = &unk_100A03490;
    v12[4] = self;
    v14 = v4;
    v13 = v6;
    [(BKMainFlowController *)self presenterDismissModalController:v9 animated:v4 completion:v12];
  }

  else
  {
    v10 = objc_retainBlock(v6);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10);
    }
  }
}

- (void)presenterFinishModalTransitionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKMainFlowController *)self delegate];
  v6 = [v5 isHostingRootBar];

  if (v6)
  {
    v7 = [(BKMainFlowController *)self selectedNavigationController];
    if (v7)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001A8618;
      v11[3] = &unk_100A03920;
      v12 = v4;
      [v7 im_finishOngoingModalTransitionAnimations:v11];
    }

    else
    {
      v9 = objc_retainBlock(v4);
      v10 = v9;
      if (v9)
      {
        (*(v9 + 2))(v9);
      }
    }
  }

  else
  {
    v8 = objc_retainBlock(v4);
    v7 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8);
    }
  }
}

- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate delegate];
  v5 = [v4 sceneManager];
  v6 = [v5 minifiedFlowController];

  [v6 visibleViewControllersUpdatedPreTranstionAnimated:v3];
}

- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate delegate];
  v5 = [v4 sceneManager];
  v6 = [v5 minifiedFlowController];

  [v6 visibleViewControllersUpdatedPostTranstionAnimated:v3];
}

- (id)presenterFirstVisibleChildConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(BKMainFlowController *)self delegate];
  v6 = [v5 rootViewController];
  v7 = [v6 im_firstVisibleChildConformingToProtocol:v4 includePresented:1];

  return v7;
}

- (id)presenterViewControllersConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(BKMainFlowController *)self delegate];
  v7 = [v6 rootViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A88DC;
  v10[3] = &unk_100A05990;
  v8 = v5;
  v11 = v8;
  [v7 im_enumerateChildrenConformingToProtocol:v4 block:v10];

  return v8;
}

- (void)presenterSelectLibraryAllCollection
{
  v3 = [(BKMainFlowController *)self rootBarCoordinator];
  v2 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  [v3 selectWithIdentifier:v2 isUserAction:1];
}

- (void)presenterPrepareEndOfBookExperienceWithAssetPresenter:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [v7 presentationController];
  v12 = BUDynamicCast();

  v9 = [(BKMainFlowController *)self selectedNavigationController];
  v10 = +[BKRootBarItemsProvider HomeIdentifier];
  v11 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v10];

  [v12 setUseEndOfBookExperience:v9 == v11];
  [(BKMainFlowController *)self _updateReadingNowFeedWithAssetPresenter:v7 completion:v6];
}

- (void)presenterUpdateReadingNowAssetVisibility:(BOOL)a3 assetPresenter:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(BKMainFlowController *)self _closeToCurrentBookWithAssetPresenter:v6 opening:0];
  v12 = [(BKMainFlowController *)self _refIdFromAssetPresenter:v6 closeToCurrentBook:v7];
  v8 = [(BKMainFlowController *)self _refInstanceFromAssetPresenter:v6 closeToCurrentBook:v7];
  v9 = [v6 assetPresenterAssetViewController];

  v10 = [v9 presentingViewController];
  v11 = [v10 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1];

  if (objc_opt_respondsToSelector())
  {
    [v11 coverAnimationHostUpdateItemVisibility:v4 refId:v12 refInstance:v8];
  }
}

- (void)presenterDidEndReadingExperienceWithAssetPresenter:(id)a3
{
  [(BKMainFlowController *)self _updateReadingNowFeedWithPerformantForReadingExperience:0 for:a3];
  v4 = [(BKMainFlowController *)self presenterModalPresentingViewController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) view];
        [v10 setAccessibilityElementsHidden:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)presenterEnsureCanOpenBookInCurrentContext:(BOOL)a3
{
  v5 = [(BKMainFlowController *)self delegate];
  v6 = [v5 isHostingRootBar];

  if (v6 && ![(BKMainFlowController *)self presenterIsShowingLibrary]&& !a3)
  {

    [(BKMainFlowController *)self presenterSelectLibraryAllCollection];
  }
}

- (BOOL)isBookCurrentlyOpen
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained rootViewController];
  v4 = [v3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting includePresented:1];
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
    v5 = [(BKMainFlowController *)self delegate];
    if (![v5 isHostingRootBar] || -[BKMainFlowController presenterIsShowingLibrary](self, "presenterIsShowingLibrary") || -[BKMainFlowController presenterIsShowingStore](self, "presenterIsShowingStore"))
    {
      v6 = +[BKAppDelegate delegate];
      v7 = [v6 appLaunchCoordinator];
      v4 = [v7 appLaunchCoordinatorHasAppLaunched] ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)showLibraryAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[BUAccountsProvider sharedProvider];
  v8 = [v7 isUserSignedInToiTunes];

  if (v8)
  {
    v9 = +[BDSJaliscoDAAPClient sharedClient];
    [v9 updatePolitely:1 reason:4 completion:0];
  }

  [(BKMainFlowController *)self presenterSelectLibraryAllCollection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A8F58;
  v10[3] = &unk_100A0A2D0;
  v11 = a3;
  [(BKMainFlowController *)self _transition:v10 animator:0 completion:v6];
}

- (void)showLibraryAnimated:(BOOL)a3 assetID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = +[BUAccountsProvider sharedProvider];
  v11 = [v10 isUserSignedInToiTunes];

  if (v11)
  {
    v12 = +[BDSJaliscoDAAPClient sharedClient];
    [v12 updatePolitely:1 reason:4 completion:0];
  }

  [(BKMainFlowController *)self presenterSelectLibraryAllCollection];
  v13 = [(BKMainFlowController *)self rootBarCoordinator];
  v14 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  v15 = [v13 navigationControllerForIdentifier:v14];

  v16 = [v15 popToRootViewControllerAnimated:0];
  objc_opt_class();
  v17 = [v15 topViewController];
  v18 = BUDynamicCast();

  [v18 scrollToMakeLibraryAssetIDVisible:v9];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001A9134;
  v19[3] = &unk_100A0A2D0;
  v20 = a3;
  [(BKMainFlowController *)self _transition:v19 animator:0 completion:v8];
}

- (id)_bookWithAssetPermanentOrTemporaryAssetID:(id)a3
{
  v4 = a3;
  v5 = [(BKMainFlowController *)self libraryAssetProvider];
  v6 = [v5 libraryAssetOnMainQueueWithPermanentOrTemporaryAssetID:v4];

  return v6;
}

- (id)_coverImageForAssetID:(id)a3 toViewController:(id)a4 forAssetViewController:(id)a5 source:(id)a6 coverImage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v16)
  {
    if (v15)
    {
      v16 = [v15 coverAnimationSourceImage];
    }

    else
    {
      v17 = [v13 view];
      [v17 bounds];
      v19 = v18;
      v21 = v20;

      v22 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:v12];
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

      v16 = v24;
    }
  }

  return v16;
}

- (id)_minibarRevealAnimatorWithViewController:(id)a3 opening:(BOOL)a4
{
  v4 = a4;
  v5 = BUProtocolCast();
  v6 = +[BKAppDelegate delegate];
  v7 = [v6 sceneManager];
  v8 = [v7 minifiedFlowController];

  if (v5 && ([v5 assetPresenterAssetID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "shouldAnimateAssetWithAssetIDFromMinibar:", v9), v9, v10))
  {
    v11 = [[BKMinibarRevealAnimator alloc] initWithOpening:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_bookAndCoverAnimatorFrom:(id)a3 to:(id)a4 operation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1];
  v11 = [v8 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting includePresented:0];
  v12 = v11 == 0;

  v13 = [v9 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting includePresented:v12];
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
    if (a5 == 1)
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

  if (a5 != 2)
  {
    goto LABEL_18;
  }

  v17 = [v8 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];

  v21 = [v17 assetPresenterPermanentOrTemporaryAssetID];
  v20 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:v21];

  v18 = [v9 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1 validateItem:v20];

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
        v26 = v25;
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
        v51 = v26;
        v18 = v18;
        v52 = v18;
        v53 = self;
        v54 = v9;
        v55 = v8;
        v28 = v26;
        v29 = objc_retainBlock(v48);
        v22 = (v29[2])(v29, 0);

        v23 = 1;
        goto LABEL_21;
      }

      v26 = [v17 assetPresenterCoverAnimationSource];
      if (v26)
      {
        goto LABEL_20;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v26 = 0;
        goto LABEL_40;
      }

      if (v16)
      {
        v32 = [v17 openOptions];
      }

      else
      {
        objc_opt_class();
        objc_opt_class();
        v33 = BUDynamicCast();
        v34 = [v33 presentationController];
        v35 = BUDynamicCast();

        LOBYTE(v33) = [v35 useEndOfBookExperience];
        v36 = [v17 openOptions];
        v32 = v36;
        if (v33)
        {
          v46 = v36;
          [v17 assetPresenterAssetID];
          v44 = v47 = 0;
          v45 = @"currentBook";
LABEL_39:
          v43 = v44;
          v26 = [v18 coverAnimationHostSourceForUUID:0 uid:v47 refId:v45 refInstance:{v44, v44}];

LABEL_40:
          if (v26 || !v20)
          {
            goto LABEL_20;
          }

          v25 = [v18 coverAnimationHostSourceForItem:v20];
          goto LABEL_17;
        }
      }

      v47 = [v32 objectForKeyedSubscript:@"BKBookPresentingAnimateFromUid"];
      v37 = [v32 objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefId"];
      v38 = v37;
      v39 = @"cover";
      if (v37)
      {
        v39 = v37;
      }

      v45 = v39;

      v46 = v32;
      v40 = [v32 objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefInstance"];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = [v17 assetPresenterAssetID];
      }

      v44 = v42;

      goto LABEL_39;
    }

LABEL_10:
    v19 = [v17 assetPresenterPermanentOrTemporaryAssetID];
    v20 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:v19];

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

- (id)_coverSourceFromHost:(id)a3 assetPresenter:(id)a4 book:(id)a5 opening:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  endOfBookCoverAnimationSource = self->_endOfBookCoverAnimationSource;
  if (endOfBookCoverAnimationSource)
  {
    v14 = endOfBookCoverAnimationSource;
LABEL_10:
    v21 = v14;
    goto LABEL_11;
  }

  v14 = [v11 assetPresenterCoverAnimationSource];
  if (v14)
  {
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ((v15 = -[BKMainFlowController _closeToCurrentBookWithAssetPresenter:opening:](self, "_closeToCurrentBookWithAssetPresenter:opening:", v11, v6), [v11 openOptions], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16, !v15) ? (objc_msgSend(v16, "objectForKeyedSubscript:", @"BKBookPresentingAnimateFromUid"), v18 = objc_claimAutoreleasedReturnValue()) : (v18 = 0), -[BKMainFlowController _refIdFromAssetPresenter:closeToCurrentBook:](self, "_refIdFromAssetPresenter:closeToCurrentBook:", v11, v15), v19 = objc_claimAutoreleasedReturnValue(), -[BKMainFlowController _refInstanceFromAssetPresenter:closeToCurrentBook:](self, "_refInstanceFromAssetPresenter:closeToCurrentBook:", v11, v15), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "coverAnimationHostSourceForUUID:uid:refId:refInstance:", 0, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v17, !v21))
  {
    v14 = [v10 coverAnimationHostSourceForItem:v12];
    goto LABEL_10;
  }

LABEL_11:
  if (!v6 && v21 && [v10 coverAnimationHostWantsScrollOnClose])
  {
    [v10 coverAnimationHostScrollToMakeVisible:v21];
  }

  return v21;
}

- (BOOL)_closeToCurrentBookWithAssetPresenter:(id)a3 opening:(BOOL)a4
{
  if (a4)
  {
    return 0;
  }

  v5 = a3;
  objc_opt_class();
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = [v6 presentationController];
  v8 = BUDynamicCast();

  LOBYTE(v7) = [v8 useEndOfBookExperience];
  return v7;
}

- (id)_refIdFromAssetPresenter:(id)a3 closeToCurrentBook:(BOOL)a4
{
  v5 = [a3 openOptions];
  v6 = v5;
  if (a4)
  {
    v7 = @"currentBook";
  }

  else
  {
    v8 = [v5 objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefId"];
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

- (id)_refInstanceFromAssetPresenter:(id)a3 closeToCurrentBook:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 openOptions];
  v7 = v6;
  if (a4)
  {
    v8 = [v5 assetPresenterAssetID];
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:@"BKBookPresentingAnimateFromRefInstance"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v5 assetPresenterAssetID];
    }

    v8 = v11;
  }

  return v8;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v4 = a3;
  v5 = [(BKMainFlowController *)self selectedNavigationController];
  v6 = [v5 topViewController];
  v7 = BUProtocolCast();

  if (v7 || [(BKMainFlowController *)self presenterIsShowingLibrary])
  {
    v8 = 0;
  }

  else
  {
    v10 = [v4 viewControllers];
    v8 = [v10 count] > 1;
  }

  return v8;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v43 = a3;
  v8 = a4;
  v9 = [v43 transitionCoordinator];
  v10 = [v9 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v11 = [v10 navigationController];

  if (v11 == v43)
  {
    if (v10)
    {
      v21 = [v43 viewControllers];
      v22 = [v21 containsObject:v10];

      if (v22)
      {
        [v8 bsui_configureHideSmallTitleOnScroll:{objc_msgSend(v8, "bsui_hasLargeTitle")}];
      }
    }
  }

  else
  {

    v10 = 0;
  }

  v42 = v5;
  if (v5)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = BCNavBarVisibilityDuration;
  if (!v5)
  {
    v13 = 0.0;
  }

  [v43 bc_updateNavBarVisibleWithTransitionCoordinator:v12 duration:v13];
  v14 = [v43 disappearingViewController];
  v15 = [(BKMainFlowController *)self rootBarCoordinator];
  v16 = [v15 selectedItem];
  v17 = [v16 identifier];
  v18 = +[BKRootBarItemsProvider LibraryAllIdentifier];
  v19 = [v17 isEqualToString:v18];

  if (v19 && v14)
  {
    v20 = [v43 viewControllers];
    if ([v20 indexOfObjectIdenticalTo:v14] == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v23 = [v14 im_effectiveViewControllerForTabBarVisibility];
      v24 = [v23 im_tabBarVisible];

      if ((v24 & 1) == 0)
      {
        [v8 setHidesBottomBarWhenPushed:1];
        [v8 im_setTabBarVisible:0];
      }
    }
  }

  v25 = [v43 view];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = [v8 view];
  [v34 frame];
  v46.origin.x = v27;
  v46.origin.y = v29;
  v46.size.width = v31;
  v46.size.height = v33;
  v35 = CGRectEqualToRect(v45, v46);

  if (!v35)
  {
    v36 = objc_alloc_init(objc_opt_class());
    v37 = [v43 view];
    [v36 setContainerView:v37];

    [v8 viewWillTransitionToSize:v36 withTransitionCoordinator:{v31, v33}];
    v38 = [v8 view];
    [v38 setFrame:{v27, v29, v31, v33}];

    [v36 _runAlongsideAnimations];
    [v36 _runAlongsideCompletionsAfterCommit];
  }

  v39 = +[BCLightLevelController sharedInstance];
  v40 = [v39 currentLightLevel];

  [v8 bc_notifyLightLevelDidChange:v40];
  [(BKMainFlowController *)self presenterVisibleViewControllerWillChangeAnimated:v42];
  v41 = [(BKMainFlowController *)self navigationDelegate];
  [v41 navigationController:v43 willShowViewController:v8];
}

- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(BKMainFlowController *)self delegate];
  v5 = [v6 rootViewController];
  [v5 im_finishOngoingModalTransitionAnimations:v4];
}

- (void)presenterSelectTabWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BKMainFlowController *)self rootBarCoordinator];
  [v5 selectWithIdentifier:v4 isUserAction:1];
}

- (id)_animatorFromViewController:(id)a3 toViewController:(id)a4 operation:(int64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  if (v10 != v11 && v6)
  {
    v13 = [(BKMainFlowController *)self animator];
    if (!v13)
    {
      v13 = [(BKMainFlowController *)self _minibarRevealAnimatorWithViewController:v11 opening:1];
      if (!v13)
      {
        v13 = [(BKMainFlowController *)self _minibarRevealAnimatorWithViewController:v10 opening:0];
        if (!v13)
        {
          v13 = [(BKMainFlowController *)self _bookAndCoverAnimatorFrom:v10 to:v11 operation:a5];
        }
      }
    }

    v12 = v13;
  }

  return v12;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(BKMainFlowController *)self animator];
  if (v12)
  {
    v13 = BUProtocolCast();
    [(BKMainFlowController *)self setStatusBarStyling:v13];

    v14 = [(BKMainFlowController *)self statusBarStyling];
    [v14 configureWithFromViewController:v10 toViewController:v11];

    [v9 setNeedsStatusBarAppearanceUpdate];
  }

  return v12;
}

- (void)_fixInterfaceOrientationForEndOfBookTransitionForDismissingViewController:(id)a3 completion:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = +[BKRootBarItemsProvider HomeIdentifier];
  v8 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v7];

  objc_opt_class();
  v9 = [v8 viewControllers];
  v10 = [v9 firstObject];
  v11 = BUDynamicCast();

  v12 = [v6 bc_windowForViewController];

  v13 = [v12 windowScene];
  v14 = [v13 interfaceOrientation];

  v15 = [v11 supportedInterfaceOrientationsForSelf];
  if ((v14 - 3) > 1 || (v15 & (1 << v14)) != 0)
  {
    v16 = objc_retainBlock(v18);
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, 0);
    }
  }

  else
  {
    [(BKMainFlowController *)self _forceOrientationToPortrait:v18];
  }
}

- (void)_updateReadingNowFeedWithAssetPresenter:(id)a3 completion:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v17)
  {
    v7 = +[BKRootBarItemsProvider HomeIdentifier];
    v8 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v7];

    objc_opt_class();
    v9 = [v8 viewControllers];
    v10 = [v9 firstObject];
    v11 = BUDynamicCast();

    v12 = [v11 viewIfLoaded];
    v13 = [v12 window];

    if (v13)
    {
      v14 = [v17 viewIfLoaded];
      v15 = [v14 window];

      if (v15 == v13)
      {
        [v11 updateFeedContentWithCompletion:v6];
      }
    }
  }

  else
  {
    v16 = objc_retainBlock(v6);
    v8 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16);
    }
  }
}

- (void)_updateReadingNowFeedWithPerformantForReadingExperience:(BOOL)a3 for:(id)a4
{
  v4 = a3;
  v15 = a4;
  v6 = +[BKRootBarItemsProvider HomeIdentifier];
  v7 = [(BKMainFlowController *)self navigationControllerWithIdentifier:v6];

  objc_opt_class();
  v8 = [v7 viewControllers];
  v9 = [v8 firstObject];
  v10 = BUDynamicCast();

  v11 = [v10 viewIfLoaded];
  v12 = [v11 window];

  if (v12)
  {
    v13 = [v15 viewIfLoaded];
    v14 = [v13 window];

    if (v14 == v12)
    {
      [v10 setPerformantForReadingExperience:v4];
    }
  }
}

- (BOOL)_currentlySelectedTabIsStore
{
  v2 = [(BKMainFlowController *)self rootBarCoordinator];
  v3 = [v2 selectedItem];
  v4 = [v3 identifier];

  LOBYTE(v2) = [BKRootBarItemsProvider isStoreOnlyFor:v4];
  return v2;
}

- (void)im_dismissChildViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = [(BKMainFlowController *)self selectedNavigationController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AAE30;
  v9[3] = &unk_100A03E80;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 im_finishOngoingModalTransitionAnimations:v9];
}

- (void)_forceOrientationToPortrait:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(BKMainFlowController *)self delegate];
  v6 = [v5 rootViewController];
  v7 = [v6 bc_windowForViewController];
  v8 = [v7 windowScene];
  v9 = BUDynamicCast();

  if (v9)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001AB2B4;
    v13[3] = &unk_100A060C0;
    v14 = v4;
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

    v12 = objc_retainBlock(v4);
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
  v3 = [v2 coverEffectsNightMode];

  return v3;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = BUDynamicCast();
  if (+[BKUIPFeatures useUIPFluidBookOpenTransition](BKUIPFeatures, "useUIPFluidBookOpenTransition") && ![v9 useLegacyAnimation])
  {
    v10 = 0;
  }

  else
  {
    v10 = [(BKMainFlowController *)self _animatorFromViewController:v8 toViewController:v7 operation:1 animated:1];
  }

  return v10;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();
  if (+[BKUIPFeatures useUIPFluidBookOpenTransition](BKUIPFeatures, "useUIPFluidBookOpenTransition") && ![v5 useLegacyAnimation])
  {
    v17 = 0;
  }

  else
  {
    v6 = [v4 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
    v7 = [v6 assetPresenterAssetViewController];
    v8 = [v6 assetPresenterAssetID];
    v9 = [(BKMainFlowController *)self _bookWithAssetPermanentOrTemporaryAssetID:v8];

    v10 = [v7 readerType];
    v11 = [v4 presentingViewController];
    v12 = v11;
    if (v10 == 6)
    {
      v27 = v5;
      v13 = [v11 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCCoverAnimatingHost stopIfDescendentConformsToProtocol:&OBJC_PROTOCOL___BCCoverNonAnimating includePresented:1];

      v28 = [v6 assetPresenterAssetViewController];
      v25 = v13;
      v26 = v9;
      v14 = [(BKMainFlowController *)self _coverSourceFromHost:v13 assetPresenter:v6 book:v9 opening:0];
      v15 = [BKCloseBookAnimator alloc];
      v16 = [(BKMainFlowController *)self bookOpenAnimationHelper];
      v17 = [(BKCloseBookAnimator *)v15 initWithContentHelper:v16 coverSource:v14];

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
      v20 = [v19 coverAnimationSourceCurrentBookWidgetInfo];
      if ((v19 == 0) | [v20 isCover] & 1)
      {
        v21 = [v18 assetPresenterAssetID];
        v22 = [v18 assetPresenterCoverImage];
        v23 = [(BKMainFlowController *)self _coverImageForAssetID:v21 toViewController:v4 forAssetViewController:v28 source:v14 coverImage:v22];
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
        v21 = v30;
      }

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);

      v9 = v26;
      v5 = v27;
    }

    else
    {
      v17 = [(BKMainFlowController *)self _animatorFromViewController:v4 toViewController:v11 operation:2 animated:1];
    }
  }

  return v17;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = BUProtocolCast();

  if (v8)
  {
    v8 = [[BKAssetPresentationController alloc] initWithPresentedViewController:v6 presentingViewController:v7];
  }

  return v8;
}

- (void)saveStateClosing:(BOOL)a3
{
  v3 = a3;
  v4 = [(BKMainFlowController *)self delegate];
  v5 = [v4 rootViewController];
  v6 = [v5 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___AEAssetViewController];

  [v6 saveStateClosing:v3];
  v7 = +[BKAppDelegate delegate];
  v8 = [v7 sceneManager];
  v9 = [v8 minifiedFlowController];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 minifiedAssetPresenters];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 minifiedAssetPresenterIsAudiobook])
        {
          [v15 minifiedAssetPresenterSaveStateClosing:v3];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v2 = self;
  v3 = BKMainFlowController.bookOpenAnimationHelper.getter();

  return v3;
}

- (BKMainFlowControllerDockingDelegate)dockingDelegate
{
  v2 = self;
  v3 = BKMainFlowController.dockingDelegate.getter();

  return v3;
}

- (BKMainFlowControllerNavigationDelegate)navigationDelegate
{
  v2 = self;
  v3 = BKMainFlowController.navigationDelegate.getter();

  return v3;
}

- (BKRootBarCoordinating)rootBarCoordinator
{
  v2 = self;
  v3 = BKMainFlowController.rootBarCoordinator.getter();

  return v3;
}

@end