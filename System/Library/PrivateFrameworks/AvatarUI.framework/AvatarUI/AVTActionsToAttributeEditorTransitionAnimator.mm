@interface AVTActionsToAttributeEditorTransitionAnimator
+ (UIEdgeInsets)adjustedSafeAreaInsetsForView:(id)view;
- (AVTActionsToAttributeEditorTransitionAnimator)initWithAVTViewLayoutInfo:(id)info userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation AVTActionsToAttributeEditorTransitionAnimator

+ (UIEdgeInsets)adjustedSafeAreaInsetsForView:(id)view
{
  [view safeAreaInsets];
  if (v3 > 40.0)
  {
    v3 = v3 + -40.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (AVTActionsToAttributeEditorTransitionAnimator)initWithAVTViewLayoutInfo:(id)info userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment
{
  infoCopy = info;
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = AVTActionsToAttributeEditorTransitionAnimator;
  v13 = [(AVTActionsToAttributeEditorTransitionAnimator *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_environment, environment);
    objc_storeStrong(&v14->_avtViewLayoutInfo, info);
    v14->_RTL = l;
    v14->_userInfoViewHeight = height;
  }

  return v14;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v6}];
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v5}];
  }

  v8 = v5;
  v9 = [transitionCopy viewForKey:*MEMORY[0x1E69DE770]];
  v10 = [transitionCopy viewForKey:*MEMORY[0x1E69DE780]];
  [transitionCopy finalFrameForViewController:v7];
  v61 = v12;
  v62 = v11;
  v14 = v13;
  v16 = v15;
  currentLayout = [v8 currentLayout];
  buttonCount = [currentLayout buttonCount];

  environment = [(AVTActionsToAttributeEditorTransitionAnimator *)self environment];
  if ([environment deviceIsPad])
  {

    v20 = off_1E7F398B0;
  }

  else
  {
    environment2 = [(AVTActionsToAttributeEditorTransitionAnimator *)self environment];
    deviceIsMac = [environment2 deviceIsMac];

    v20 = off_1E7F398A8;
    if (deviceIsMac)
    {
      v20 = off_1E7F398B0;
    }
  }

  v23 = objc_alloc(*v20);
  [v9 safeAreaInsets];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  avtViewLayoutInfo = [(AVTActionsToAttributeEditorTransitionAnimator *)self avtViewLayoutInfo];
  v33 = [v23 initWithContainerSize:buttonCount insets:avtViewLayoutInfo buttonCount:v14 avtViewLayoutInfo:{v16, v25, v27, v29, v31}];

  [objc_opt_class() adjustedSafeAreaInsetsForView:v9];
  v59 = v35;
  v60 = v34;
  v37 = v36;
  v39 = v38;
  userInfoViewHeight = self->_userInfoViewHeight;
  v40 = [(AVTActionsToAttributeEditorTransitionAnimator *)self RTL];
  [v33 avatarContainerViewFrame];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v14;
  v49 = v48;
  environment3 = [(AVTActionsToAttributeEditorTransitionAnimator *)self environment];
  0x3FF0000000000000 = [AVTAvatarAttributeEditorLayoutProvider actionsToEditorTransitionStartingLayoutInContainerOfSize:v40 attributesContentViewExtraHeight:environment3 insets:v47 userInfoViewHeight:v16 RTL:100.0 avatarViewStartFrame:v60 avatarViewAlpha:v59 environment:v37, v39, userInfoViewHeight, v42, v44, v46, v49, 0x3FF0000000000000];

  containerView = [transitionCopy containerView];
  [containerView addSubview:v10];

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke;
  v63[3] = &unk_1E7F3B360;
  v70 = v62;
  v71 = v61;
  v72 = v47;
  v73 = v16;
  v64 = transitionCopy;
  selfCopy = self;
  v66 = v10;
  v67 = 0x3FF0000000000000;
  v68 = v9;
  v69 = v7;
  v53 = v7;
  v54 = v9;
  v55 = 0x3FF0000000000000;
  v56 = v10;
  v57 = transitionCopy;
  [v53 prepareForAnimatedTransitionWithLayout:v55 completionBlock:v63];
}

void __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 backgroundColor];
  v5 = [*(a1 + 32) containerView];
  [v5 setBackgroundColor:v4];

  [v3 setAlpha:0.0];
  v6 = [AVTAvatarAttributeEditorOverridingLayout alloc];
  [objc_opt_class() adjustedSafeAreaInsetsForView:*(a1 + 48)];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [*(a1 + 56) userInfoViewHeight];
  v16 = v15;
  v17 = [*(a1 + 40) RTL];
  v18 = [*(a1 + 40) environment];
  v19 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v17 insets:v18 userInfoViewHeight:*(a1 + 96) RTL:*(a1 + 104) environment:v8, v10, v12, v14, v16];
  v20 = [(AVTAvatarAttributeEditorOverridingLayout *)v6 initWithLayout:v19];

  [(AVTAvatarAttributeEditorOverridingLayout *)v20 attributesContentViewFrame];
  [(AVTAvatarAttributeEditorOverridingLayout *)v20 setAttributesContentViewFrame:v21 + 0.0, v22 + 0.0];
  [objc_opt_class() adjustedSafeAreaInsetsForView:*(a1 + 48)];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [*(a1 + 56) userInfoViewHeight];
  v32 = v31;
  v33 = [*(a1 + 40) RTL];
  v34 = [*(a1 + 40) environment];
  v35 = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v33 insets:v34 userInfoViewHeight:*(a1 + 96) RTL:*(a1 + 104) environment:v24, v26, v28, v30, v32];

  [*(a1 + 40) transitionDuration:*(a1 + 32)];
  v37 = v36;
  v38 = v36 * 0.25;
  v39 = MEMORY[0x1E69DD250];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke_2;
  v55[3] = &unk_1E7F3A9B8;
  v56 = *(a1 + 64);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke_3;
  v53[3] = &unk_1E7F3AA80;
  v54 = v3;
  v40 = v3;
  [v39 animateWithDuration:v55 animations:v53 completion:v38];
  v41 = MEMORY[0x1E69DD250];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke_4;
  v50[3] = &unk_1E7F3AD60;
  v51 = *(a1 + 72);
  v52 = v20;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke_5;
  v44[3] = &unk_1E7F3B338;
  v45 = *(a1 + 72);
  v46 = v35;
  v47 = *(a1 + 64);
  v48 = *(a1 + 32);
  v49 = *(a1 + 48);
  v42 = v35;
  v43 = v20;
  [v41 animateWithDuration:0 delay:v50 usingSpringWithDamping:v44 initialSpringVelocity:v37 * 0.75 options:v38 animations:0.7 completion:0.65];
}

uint64_t __67__AVTActionsToAttributeEditorTransitionAnimator_animateTransition___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) applyLayout:*(a1 + 40)];
  v2 = (a1 + 48);
  [*(a1 + 48) setAlpha:1.0];
  if ([*(a1 + 56) transitionWasCancelled])
  {
    v2 = (a1 + 64);
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    v4 = [*(a1 + 56) containerView];
    [v4 setBackgroundColor:v3];
  }

  [*v2 removeFromSuperview];
  [*(a1 + 32) setDisableAvatarSnapshotting:0];
  v5 = *(a1 + 56);
  v6 = [v5 transitionWasCancelled] ^ 1;

  return [v5 completeTransition:v6];
}

- (double)transitionDuration:(id)duration
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 actionAnimationsMultiplier];
  v5 = v4 * 0.84;

  return v5;
}

@end