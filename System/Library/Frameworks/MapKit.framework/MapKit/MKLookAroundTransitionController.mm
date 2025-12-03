@interface MKLookAroundTransitionController
- (CGRect)initialFrame;
- (UIView)sourceView;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)_dismiss:(id)_dismiss fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_present:(id)_present fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)beginFullScreenDismissalOfViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)beginFullScreenPresentationOfViewController:(id)controller fromView:(id)view animated:(BOOL)animated completion:(id)completion;
@end

@implementation MKLookAroundTransitionController

- (CGRect)initialFrame
{
  x = self->_initialFrame.origin.x;
  y = self->_initialFrame.origin.y;
  width = self->_initialFrame.size.width;
  height = self->_initialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (void)_present:(id)_present fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentCopy = _present;
  view = [controllerCopy view];
  sourceView = [(MKLookAroundTransitionController *)self sourceView];
  [sourceView frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sourceView2 = [(MKLookAroundTransitionController *)self sourceView];
  [view convertRect:sourceView2 fromView:{v16, v18, v20, v22}];
  [(MKLookAroundTransitionController *)self setInitialFrame:?];

  [controllerCopy presentViewController:_presentCopy animated:animatedCopy completion:0];
  transitionCoordinator = [_presentCopy transitionCoordinator];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__MKLookAroundTransitionController__present_fromViewController_animated_completion___block_invoke;
  v26[3] = &unk_1E76C61F0;
  v27 = completionCopy;
  v25 = completionCopy;
  [transitionCoordinator animateAlongsideTransition:0 completion:v26];
}

uint64_t __84__MKLookAroundTransitionController__present_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (void)_dismiss:(id)_dismiss fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  _dismissCopy = _dismiss;
  [controller dismissViewControllerAnimated:animatedCopy completion:0];
  transitionCoordinator = [_dismissCopy transitionCoordinator];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__MKLookAroundTransitionController__dismiss_fromViewController_animated_completion___block_invoke;
  v13[3] = &unk_1E76C61F0;
  v14 = completionCopy;
  v12 = completionCopy;
  [transitionCoordinator animateAlongsideTransition:0 completion:v13];
}

uint64_t __84__MKLookAroundTransitionController__dismiss_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = [MKLookAroundPresentAnimationController alloc];
  sourceView = [(MKLookAroundTransitionController *)self sourceView];
  [(MKLookAroundTransitionController *)self initialFrame];
  v8 = [(MKLookAroundPresentAnimationController *)v6 initWithSourceView:sourceView initialFrame:?];

  return v8;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v4 = [MKLookAroundDismissAnimationController alloc];
  sourceView = [(MKLookAroundTransitionController *)self sourceView];
  [(MKLookAroundTransitionController *)self initialFrame];
  v6 = [(MKLookAroundDismissAnimationController *)v4 initWithSourceView:sourceView finalFrame:?];

  return v6;
}

- (void)beginFullScreenPresentationOfViewController:(id)controller fromView:(id)view animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewCopy = view;
  completionCopy = completion;
  [(MKLookAroundTransitionController *)self setSourceView:viewCopy];
  [controllerCopy setTransitioningDelegate:self];
  if (viewCopy && ([MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:viewCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
  }

  else
  {
    v15 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] supportsMultipleScenes])
    {
      v14 = 0;
    }

    else
    {

      _mklookaround_possibleWindowForControllingOverallAppearance = [*v15 _mklookaround_possibleWindowForControllingOverallAppearance];
      for (i = [_mklookaround_possibleWindowForControllingOverallAppearance rootViewController];
      {
        v14 = i;

        viewCopy = [v14 presentedViewController];

        if (!viewCopy)
        {
          break;
        }

        _mklookaround_possibleWindowForControllingOverallAppearance = v14;
        [v14 presentedViewController];
      }
    }
  }

  if (controllerCopy)
  {
    v16 = [completionCopy copy];

    transitionCoordinator = [v14 transitionCoordinator];
    if (transitionCoordinator)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __109__MKLookAroundTransitionController_beginFullScreenPresentationOfViewController_fromView_animated_completion___block_invoke;
      v20[3] = &unk_1E76C61C8;
      v20[4] = self;
      v21 = controllerCopy;
      v22 = v14;
      v24 = animatedCopy;
      v23 = v16;
      [transitionCoordinator animateAlongsideTransition:0 completion:v20];
    }

    else
    {
      [(MKLookAroundTransitionController *)self _present:controllerCopy fromViewController:v14 animated:animatedCopy completion:v16];
    }
  }

  else
  {
    v16 = completionCopy;
  }
}

- (void)beginFullScreenDismissalOfViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentingViewController = [controllerCopy presentingViewController];
  transitionCoordinator = [controllerCopy transitionCoordinator];
  if (transitionCoordinator)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__MKLookAroundTransitionController_beginFullScreenDismissalOfViewController_animated_completion___block_invoke;
    v12[3] = &unk_1E76C61C8;
    v12[4] = self;
    v13 = controllerCopy;
    v14 = presentingViewController;
    v16 = animatedCopy;
    v15 = completionCopy;
    [transitionCoordinator animateAlongsideTransition:0 completion:v12];
  }

  else
  {
    [(MKLookAroundTransitionController *)self _dismiss:controllerCopy fromViewController:presentingViewController animated:animatedCopy completion:completionCopy];
  }
}

@end