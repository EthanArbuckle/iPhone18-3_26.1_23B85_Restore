@interface BKAuxiliarySceneMainFlowController
- (BKAuxiliarySceneMainFlowControllerDelegate)delegate;
- (BOOL)coverEffectsNightMode;
- (BOOL)presenterShouldOpenBookUsingLargeCover;
- (id)presenterFirstVisibleChildConformingToProtocol:(id)protocol;
- (id)presenterModalPresentingViewController;
- (id)presenterSceneController;
- (id)presenterViewControllersConformingToProtocol:(id)protocol;
- (void)presenterDismissAllModalControllersAnimated:(BOOL)animated completion:(id)completion;
- (void)presenterDismissModalController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presenterFinishModalTransitionsWithCompletion:(id)completion;
- (void)presenterShowAlertController:(id)controller animated:(BOOL)animated;
- (void)presenterShowModalController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)animated;
- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)animated;
- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)completion;
@end

@implementation BKAuxiliarySceneMainFlowController

- (id)presenterSceneController
{
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v4 = [BKAppDelegate sceneControllerForViewController:rootViewController];

  return v4;
}

- (void)presenterShowAlertController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  [rootViewController presentViewController:controllerCopy animated:animatedCopy completion:0];
}

- (id)presenterModalPresentingViewController
{
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  flowControllerModalPresentingViewController = [delegate flowControllerModalPresentingViewController];

  return flowControllerModalPresentingViewController;
}

- (void)presenterShowModalController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  [controllerCopy setTransitioningDelegate:self];
  [(BKAuxiliarySceneMainFlowController *)self presenterModalPresentingViewController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009B164;
  v16[3] = &unk_100A057F0;
  v16[4] = self;
  v10 = v20 = animatedCopy;
  v17 = v10;
  v18 = controllerCopy;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = controllerCopy;
  v13 = objc_retainBlock(v16);
  bc_descendentPresentedViewController = [v10 bc_descendentPresentedViewController];

  if (bc_descendentPresentedViewController)
  {
    bc_descendentPresentedViewController2 = [v10 bc_descendentPresentedViewController];
    [bc_descendentPresentedViewController2 dismissViewControllerAnimated:animatedCopy completion:v13];
  }

  else
  {
    (v13[2])(v13);
  }
}

- (void)presenterDismissModalController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  [(BKAuxiliarySceneMainFlowController *)self presenterVisibleViewControllerWillChangeAnimated:animatedCopy];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10009B3A0;
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
    [(BKAuxiliarySceneMainFlowController *)self presenterDismissModalController:bc_descendentPresentedViewController animated:animatedCopy completion:v12];
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
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  bc_descendentPresentedViewController = [rootViewController bc_descendentPresentedViewController];

  if (bc_descendentPresentedViewController)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B5C0;
    v12[3] = &unk_100A03490;
    v12[4] = self;
    v14 = animatedCopy;
    v13 = completionCopy;
    [(BKAuxiliarySceneMainFlowController *)self presenterDismissModalController:bc_descendentPresentedViewController animated:animatedCopy completion:v12];
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
    appLaunchCoordinator = [v4 appLaunchCoordinator];
    appLaunchCoordinatorHasAppLaunched = [appLaunchCoordinator appLaunchCoordinatorHasAppLaunched];

    v3 = appLaunchCoordinatorHasAppLaunched ^ 1;
  }

  return v3;
}

- (void)presenterFinishModalTransitionsWithCompletion:(id)completion
{
  v3 = objc_retainBlock(completion);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)presenterVisibleViewControllerWillChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  [delegate mainFlowController:self visibleViewControllerWillChangeAnimated:animatedCopy];
}

- (void)presenterVisibleViewControllerDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  [delegate mainFlowController:self visibleViewControllerDidChangeAnimated:animatedCopy];
}

- (id)presenterFirstVisibleChildConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v7 = [rootViewController im_firstVisibleChildConformingToProtocol:protocolCopy includePresented:1];

  return v7;
}

- (id)presenterViewControllersConformingToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_alloc_init(NSMutableArray);
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10009B8C4;
  v10[3] = &unk_100A05990;
  v8 = v5;
  v11 = v8;
  [rootViewController im_enumerateChildrenConformingToProtocol:protocolCopy block:v10];

  return v8;
}

- (void)presenterWaitForAssetPresenterTransitionsToFinishIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(BKAuxiliarySceneMainFlowController *)self delegate];
  rootViewController = [delegate rootViewController];
  [rootViewController im_finishOngoingModalTransitionAnimations:completionCopy];
}

- (BOOL)coverEffectsNightMode
{
  v2 = [(BKAuxiliarySceneMainFlowController *)self presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BCUCoverEffectsEnvironment];
  coverEffectsNightMode = [v2 coverEffectsNightMode];

  return coverEffectsNightMode;
}

- (BKAuxiliarySceneMainFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end