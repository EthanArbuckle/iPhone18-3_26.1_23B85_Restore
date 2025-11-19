@interface MKLookAroundPresentAnimationController
- (MKLookAroundPresentAnimationController)initWithSourceView:(id)a3 initialFrame:(CGRect)a4;
- (void)animateTransition:(id)a3;
@end

@implementation MKLookAroundPresentAnimationController

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  if (v5)
  {
    v6 = [v4 containerView];
    v7 = self->_sourceView;
    [v4 finalFrameForViewController:v5];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(MKLookAroundPresentAnimationController *)self transitionDuration:v4];
    v17 = v16;
    v18 = [v4 viewForKey:*MEMORY[0x1E69DE780]];
    if (v18)
    {
      [v6 addSubview:v18];
    }

    [v6 addSubview:v7];
    [v18 setHidden:1];
    [(UIView *)v7 setFrame:self->_initialFrame.origin.x, self->_initialFrame.origin.y, self->_initialFrame.size.width, self->_initialFrame.size.height];
    [v18 setFrame:{v9, v11, v13, v15}];
    v19 = [(MKLookAroundPresentAnimationController *)self _shouldUseSpringWithDampingAnimationStyle];
    v20 = MEMORY[0x1E69DD250];
    if (v19)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __60__MKLookAroundPresentAnimationController_animateTransition___block_invoke;
      v41[3] = &unk_1E76CD348;
      v30 = v42;
      v21 = v7;
      v42[0] = v21;
      *&v42[1] = v9;
      *&v42[2] = v11;
      *&v42[3] = v13;
      *&v42[4] = v15;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __60__MKLookAroundPresentAnimationController_animateTransition___block_invoke_2;
      v37[3] = &unk_1E76CD370;
      v22 = &v38;
      v23 = &v39;
      v38 = v18;
      v39 = v21;
      v24 = &v40;
      v40 = v4;
      v25 = v21;
      v26 = v18;
      [v20 animateWithDuration:0 delay:v41 usingSpringWithDamping:v37 initialSpringVelocity:v17 options:0.0 animations:0.666666687 completion:0.0];
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __60__MKLookAroundPresentAnimationController_animateTransition___block_invoke_3;
      v35[3] = &unk_1E76CD348;
      v30 = v36;
      v27 = v7;
      v36[0] = v27;
      *&v36[1] = v9;
      *&v36[2] = v11;
      *&v36[3] = v13;
      *&v36[4] = v15;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __60__MKLookAroundPresentAnimationController_animateTransition___block_invoke_4;
      v31[3] = &unk_1E76CD370;
      v22 = &v32;
      v23 = &v33;
      v32 = v18;
      v33 = v27;
      v24 = &v34;
      v34 = v4;
      v28 = v27;
      v29 = v18;
      [v20 animateWithDuration:0 delay:v35 options:v31 animations:v17 completion:0.0];
    }
  }
}

uint64_t __60__MKLookAroundPresentAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 48);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

uint64_t __60__MKLookAroundPresentAnimationController_animateTransition___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  [*(a1 + 40) removeFromSuperview];
  v2 = *(a1 + 48);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

- (MKLookAroundPresentAnimationController)initWithSourceView:(id)a3 initialFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = MKLookAroundPresentAnimationController;
  v11 = [(MKLookAroundPresentAnimationController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceView, a3);
    v12->_initialFrame.origin.x = x;
    v12->_initialFrame.origin.y = y;
    v12->_initialFrame.size.width = width;
    v12->_initialFrame.size.height = height;
  }

  return v12;
}

@end