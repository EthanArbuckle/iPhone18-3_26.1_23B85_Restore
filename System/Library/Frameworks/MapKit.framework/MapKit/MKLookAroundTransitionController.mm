@interface MKLookAroundTransitionController
- (CGRect)initialFrame;
- (UIView)sourceView;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_dismiss:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_present:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)beginFullScreenDismissalOfViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)beginFullScreenPresentationOfViewController:(id)a3 fromView:(id)a4 animated:(BOOL)a5 completion:(id)a6;
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

- (void)_present:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v11 view];
  v14 = [(MKLookAroundTransitionController *)self sourceView];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(MKLookAroundTransitionController *)self sourceView];
  [v13 convertRect:v23 fromView:{v16, v18, v20, v22}];
  [(MKLookAroundTransitionController *)self setInitialFrame:?];

  [v11 presentViewController:v12 animated:v6 completion:0];
  v24 = [v12 transitionCoordinator];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__MKLookAroundTransitionController__present_fromViewController_animated_completion___block_invoke;
  v26[3] = &unk_1E76C61F0;
  v27 = v10;
  v25 = v10;
  [v24 animateAlongsideTransition:0 completion:v26];
}

uint64_t __84__MKLookAroundTransitionController__present_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (void)_dismiss:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a3;
  [a4 dismissViewControllerAnimated:v6 completion:0];
  v11 = [v10 transitionCoordinator];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__MKLookAroundTransitionController__dismiss_fromViewController_animated_completion___block_invoke;
  v13[3] = &unk_1E76C61F0;
  v14 = v9;
  v12 = v9;
  [v11 animateAlongsideTransition:0 completion:v13];
}

uint64_t __84__MKLookAroundTransitionController__dismiss_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = [MKLookAroundPresentAnimationController alloc];
  v7 = [(MKLookAroundTransitionController *)self sourceView];
  [(MKLookAroundTransitionController *)self initialFrame];
  v8 = [(MKLookAroundPresentAnimationController *)v6 initWithSourceView:v7 initialFrame:?];

  return v8;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = [MKLookAroundDismissAnimationController alloc];
  v5 = [(MKLookAroundTransitionController *)self sourceView];
  [(MKLookAroundTransitionController *)self initialFrame];
  v6 = [(MKLookAroundDismissAnimationController *)v4 initWithSourceView:v5 finalFrame:?];

  return v6;
}

- (void)beginFullScreenPresentationOfViewController:(id)a3 fromView:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [(MKLookAroundTransitionController *)self setSourceView:v11];
  [v10 setTransitioningDelegate:self];
  if (v11 && ([MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:v11], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
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

      v18 = [*v15 _mklookaround_possibleWindowForControllingOverallAppearance];
      for (i = [v18 rootViewController];
      {
        v14 = i;

        v11 = [v14 presentedViewController];

        if (!v11)
        {
          break;
        }

        v18 = v14;
        [v14 presentedViewController];
      }
    }
  }

  if (v10)
  {
    v16 = [v12 copy];

    v17 = [v14 transitionCoordinator];
    if (v17)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __109__MKLookAroundTransitionController_beginFullScreenPresentationOfViewController_fromView_animated_completion___block_invoke;
      v20[3] = &unk_1E76C61C8;
      v20[4] = self;
      v21 = v10;
      v22 = v14;
      v24 = v7;
      v23 = v16;
      [v17 animateAlongsideTransition:0 completion:v20];
    }

    else
    {
      [(MKLookAroundTransitionController *)self _present:v10 fromViewController:v14 animated:v7 completion:v16];
    }
  }

  else
  {
    v16 = v12;
  }
}

- (void)beginFullScreenDismissalOfViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 presentingViewController];
  v11 = [v8 transitionCoordinator];
  if (v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__MKLookAroundTransitionController_beginFullScreenDismissalOfViewController_animated_completion___block_invoke;
    v12[3] = &unk_1E76C61C8;
    v12[4] = self;
    v13 = v8;
    v14 = v10;
    v16 = v6;
    v15 = v9;
    [v11 animateAlongsideTransition:0 completion:v12];
  }

  else
  {
    [(MKLookAroundTransitionController *)self _dismiss:v8 fromViewController:v10 animated:v6 completion:v9];
  }
}

@end