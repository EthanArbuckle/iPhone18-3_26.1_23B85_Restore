@interface BKAuxiliarySceneMainFlowController
- (BKAuxiliarySceneMainFlowControllerDelegate)delegate;
- (BOOL)coverEffectsNightMode;
- (BOOL)presenterShouldOpenBookUsingLargeCover;
- (id)presenterFirstVisibleChildConformingToProtocol:(id)a3;
- (id)presenterModalPresentingViewController;
- (id)presenterSceneController;
- (id)presenterViewControllersConformingToProtocol:(id)a3;
- (void)presenterDismissAllModalControllersAnimated:(BOOL)a3 completion:(id)a4;
- (void)presenterDismissModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presenterFinishModalTransitionsWithCompletion:(id)a3;
- (void)presenterShowAlertController:(id)a3 animated:(BOOL)a4;
- (void)presenterShowModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)a3;
- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)a3;
- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)a3;
@end

@implementation BKAuxiliarySceneMainFlowController

- (id)presenterSceneController
{
  v2 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v3 = [v2 rootViewController];
  v4 = [BKAppDelegate sceneControllerForViewController:v3];

  return v4;
}

- (void)presenterShowAlertController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v7 = [v8 rootViewController];
  [v7 presentViewController:v6 animated:v4 completion:0];
}

- (id)presenterModalPresentingViewController
{
  v2 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v3 = [v2 flowControllerModalPresentingViewController];

  return v3;
}

- (void)presenterShowModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [v8 setTransitioningDelegate:self];
  [(BKAuxiliarySceneMainFlowController *)self presenterModalPresentingViewController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009B164;
  v16[3] = &unk_100A057F0;
  v16[4] = self;
  v10 = v20 = v6;
  v17 = v10;
  v18 = v8;
  v19 = v9;
  v11 = v9;
  v12 = v8;
  v13 = objc_retainBlock(v16);
  v14 = [v10 bc_descendentPresentedViewController];

  if (v14)
  {
    v15 = [v10 bc_descendentPresentedViewController];
    [v15 dismissViewControllerAnimated:v6 completion:v13];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)presenterDismissModalController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(BKAuxiliarySceneMainFlowController *)self presenterVisibleViewControllerWillChangeAnimated:v6];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10009B3A0;
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
    [(BKAuxiliarySceneMainFlowController *)self presenterDismissModalController:v13 animated:v6 completion:v12];
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
  v7 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v8 = [v7 rootViewController];
  v9 = [v8 bc_descendentPresentedViewController];

  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B5C0;
    v12[3] = &unk_100A03490;
    v12[4] = self;
    v14 = v4;
    v13 = v6;
    [(BKAuxiliarySceneMainFlowController *)self presenterDismissModalController:v9 animated:v4 completion:v12];
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

- (BOOL)presenterShouldOpenBookUsingLargeCover
{
  v2 = [(BKAuxiliarySceneMainFlowController *)self presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[BKAppDelegate delegate];
    v5 = [v4 appLaunchCoordinator];
    v6 = [v5 appLaunchCoordinatorHasAppLaunched];

    v3 = v6 ^ 1;
  }

  return v3;
}

- (void)presenterFinishModalTransitionsWithCompletion:(id)a3
{
  v3 = objc_retainBlock(a3);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  [v5 mainFlowController:self visibleViewControllerWillChangeAnimated:v3];
}

- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  [v5 mainFlowController:self visibleViewControllerDidChangeAnimated:v3];
}

- (id)presenterFirstVisibleChildConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v6 = [v5 rootViewController];
  v7 = [v6 im_firstVisibleChildConformingToProtocol:v4 includePresented:1];

  return v7;
}

- (id)presenterViewControllersConformingToProtocol:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v7 = [v6 rootViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009B8C4;
  v10[3] = &unk_100A05990;
  v8 = v5;
  v11 = v8;
  [v7 im_enumerateChildrenConformingToProtocol:v4 block:v10];

  return v8;
}

- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(BKAuxiliarySceneMainFlowController *)self delegate];
  v5 = [v6 rootViewController];
  [v5 im_finishOngoingModalTransitionAnimations:v4];
}

- (BOOL)coverEffectsNightMode
{
  v2 = [(BKAuxiliarySceneMainFlowController *)self presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCUCoverEffectsEnvironment];
  v3 = [v2 coverEffectsNightMode];

  return v3;
}

- (BKAuxiliarySceneMainFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end