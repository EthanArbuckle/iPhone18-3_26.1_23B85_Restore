@interface MKLookAroundDismissAnimationController
- (MKLookAroundDismissAnimationController)initWithSourceView:(id)a3 finalFrame:(CGRect)a4;
- (void)animateTransition:(id)a3;
@end

@implementation MKLookAroundDismissAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  if (v5)
  {
    v6 = [v4 containerView];
    v7 = self->_sourceView;
    size = self->_finalFrame.size;
    origin = self->_finalFrame.origin;
    v41 = size;
    [(MKLookAroundDismissAnimationController *)self transitionDuration:v4];
    v10 = v9;
    v11 = [v4 viewForKey:*MEMORY[0x1E69DE780]];
    if (v11)
    {
      [v6 insertSubview:v11 atIndex:0];
    }

    [v6 addSubview:v7];
    v12 = [(MKLookAroundDismissAnimationController *)self _shouldUseSpringWithDampingAnimationStyle];
    v13 = MEMORY[0x1E69DD250];
    if (v12)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __60__MKLookAroundDismissAnimationController_animateTransition___block_invoke;
      v36[3] = &unk_1E76CD348;
      v23 = &v37;
      v14 = v7;
      v38 = origin;
      v37 = v14;
      v39 = v41;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __60__MKLookAroundDismissAnimationController_animateTransition___block_invoke_2;
      v32[3] = &unk_1E76CD370;
      v15 = &v33;
      v33 = v14;
      v16 = &v34;
      v17 = &v35;
      v34 = v4;
      v35 = v11;
      v18 = v11;
      v19 = v14;
      [v13 animateWithDuration:0 delay:v36 usingSpringWithDamping:v32 initialSpringVelocity:v10 options:0.0 animations:0.666666687 completion:0.0];
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __60__MKLookAroundDismissAnimationController_animateTransition___block_invoke_3;
      v28[3] = &unk_1E76CD348;
      v23 = &v29;
      v20 = v7;
      v30 = origin;
      v31 = v41;
      v29 = v20;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __60__MKLookAroundDismissAnimationController_animateTransition___block_invoke_4;
      v24[3] = &unk_1E76CD370;
      v15 = &v25;
      v25 = v20;
      v16 = &v26;
      v17 = &v27;
      v26 = v4;
      v27 = v11;
      v21 = v11;
      v22 = v20;
      [v13 animateWithDuration:0 delay:v28 options:v24 animations:v10 completion:0.0];
    }
  }
}

uint64_t __60__MKLookAroundDismissAnimationController_animateTransition___block_invoke_2(id *a1)
{
  [a1[4] removeFromSuperview];
  if ([a1[5] transitionWasCancelled])
  {
    [a1[6] removeFromSuperview];
  }

  v2 = a1[5];
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

uint64_t __60__MKLookAroundDismissAnimationController_animateTransition___block_invoke_4(id *a1)
{
  [a1[4] removeFromSuperview];
  if ([a1[5] transitionWasCancelled])
  {
    [a1[6] removeFromSuperview];
  }

  v2 = a1[5];
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

- (MKLookAroundDismissAnimationController)initWithSourceView:(id)a3 finalFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = MKLookAroundDismissAnimationController;
  v11 = [(MKLookAroundDismissAnimationController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceView, a3);
    v12->_finalFrame.origin.x = x;
    v12->_finalFrame.origin.y = y;
    v12->_finalFrame.size.width = width;
    v12->_finalFrame.size.height = height;
  }

  return v12;
}

@end