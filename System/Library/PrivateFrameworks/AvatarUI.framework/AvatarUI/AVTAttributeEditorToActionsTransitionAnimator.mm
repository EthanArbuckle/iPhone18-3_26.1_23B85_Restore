@interface AVTAttributeEditorToActionsTransitionAnimator
+ (UIEdgeInsets)adjustedSafeAreaInsetsForView:(id)view;
- (AVTAttributeEditorToActionsTransitionAnimator)initWithAVTViewLayoutInfo:(id)info userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
@end

@implementation AVTAttributeEditorToActionsTransitionAnimator

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

- (AVTAttributeEditorToActionsTransitionAnimator)initWithAVTViewLayoutInfo:(id)info userInfoViewHeight:(double)height RTL:(BOOL)l environment:(id)environment
{
  infoCopy = info;
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = AVTAttributeEditorToActionsTransitionAnimator;
  v13 = [(AVTAttributeEditorToActionsTransitionAnimator *)&v16 init];
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

  v107 = v5;
  currentLayout = [v7 currentLayout];
  buttonCount = [currentLayout buttonCount];

  v104 = v7;
  [transitionCopy finalFrameForViewController:v7];
  v10 = v9;
  v12 = v11;
  v13 = [transitionCopy viewForKey:*MEMORY[0x1E69DE770]];
  v14 = [transitionCopy viewForKey:*MEMORY[0x1E69DE780]];
  backgroundColor = [v14 backgroundColor];
  containerView = [transitionCopy containerView];
  v106 = backgroundColor;
  [containerView setBackgroundColor:backgroundColor];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:clearColor];

  containerView2 = [transitionCopy containerView];
  [containerView2 addSubview:v14];

  [objc_opt_class() adjustedSafeAreaInsetsForView:v13];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  userInfoViewHeight = self->_userInfoViewHeight;
  v28 = [(AVTAttributeEditorToActionsTransitionAnimator *)self RTL];
  environment = [(AVTAttributeEditorToActionsTransitionAnimator *)self environment];
  v102 = v10;
  v108 = v12;
  userInfoViewHeight = [AVTAvatarAttributeEditorLayoutProvider defaultLayoutInContainerOfSize:v28 insets:environment userInfoViewHeight:v10 RTL:v12 environment:v20, v22, v24, v26, userInfoViewHeight];

  [objc_opt_class() adjustedSafeAreaInsetsForView:v13];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = self->_userInfoViewHeight;
  v40 = [(AVTAttributeEditorToActionsTransitionAnimator *)self RTL];
  environment2 = [(AVTAttributeEditorToActionsTransitionAnimator *)self environment];
  v103 = [AVTAvatarAttributeEditorLayoutProvider editorToActionsTransitionStartingLayoutInContainerOfSize:v40 insets:environment2 userInfoViewHeight:v10 RTL:v12 environment:v32, v34, v36, v38, v39];

  [objc_opt_class() adjustedSafeAreaInsetsForView:v13];
  v101 = v42;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = self->_userInfoViewHeight;
  v50 = [(AVTAttributeEditorToActionsTransitionAnimator *)self RTL];
  [userInfoViewHeight avatarContainerFrame];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  environment3 = [(AVTAttributeEditorToActionsTransitionAnimator *)self environment];
  v60 = [AVTAvatarAttributeEditorLayoutProvider actionsToEditorTransitionStartingLayoutInContainerOfSize:v50 attributesContentViewExtraHeight:environment3 insets:v102 userInfoViewHeight:v108 RTL:0.0 avatarViewStartFrame:v101 avatarViewAlpha:v44 environment:v46, v48, v49, v52, v54, v56, v58, 0];

  environment4 = [(AVTAttributeEditorToActionsTransitionAnimator *)self environment];
  if ([environment4 deviceIsPad])
  {

    v62 = off_1E7F398B0;
    v63 = off_1E7F398B8;
  }

  else
  {
    environment5 = [(AVTAttributeEditorToActionsTransitionAnimator *)self environment];
    deviceIsMac = [environment5 deviceIsMac];

    v63 = off_1E7F398C0;
    if (deviceIsMac)
    {
      v63 = off_1E7F398B8;
      v62 = off_1E7F398B0;
    }

    else
    {
      v62 = off_1E7F398A8;
    }
  }

  v66 = objc_alloc(*v63);
  [v14 safeAreaInsets];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  avtViewLayoutInfo = [(AVTAttributeEditorToActionsTransitionAnimator *)self avtViewLayoutInfo];
  [userInfoViewHeight avatarContainerFrame];
  v80 = [v66 initWithContainerSize:buttonCount insets:avtViewLayoutInfo buttonCount:v102 avtViewLayoutInfo:v108 startingAvatarViewFrame:{v68, v70, v72, v74, v76, v77, v78, v79}];

  v81 = objc_alloc(*v62);
  [v14 safeAreaInsets];
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  avtViewLayoutInfo2 = [(AVTAttributeEditorToActionsTransitionAnimator *)self avtViewLayoutInfo];
  v91 = [v81 initWithContainerSize:buttonCount insets:avtViewLayoutInfo2 buttonCount:v102 avtViewLayoutInfo:{v108, v83, v85, v87, v89}];

  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke;
  v110[3] = &unk_1E7F3BB90;
  v110[4] = self;
  v111 = transitionCopy;
  v109 = userInfoViewHeight;
  v112 = v107;
  v113 = v103;
  v114 = v60;
  v115 = v13;
  v116 = v104;
  v117 = v91;
  v118 = v14;
  v119 = v106;
  v92 = v106;
  v93 = v14;
  v94 = v91;
  v95 = v104;
  v96 = v13;
  v97 = v60;
  v98 = v103;
  v99 = v107;
  v100 = transitionCopy;
  [v95 prepareForAnimatedTransitionWithLayout:v80 completionBlock:v110];
}

void __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) transitionDuration:*(a1 + 40)];
  v3 = v2;
  [*(a1 + 48) applyLayout:*(a1 + 56)];
  v4 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke_2;
  v16[3] = &unk_1E7F3AD60;
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke_3;
  v14[3] = &unk_1E7F3AA80;
  v15 = *(a1 + 72);
  [v4 animateWithDuration:v16 animations:v14 completion:v3 * 0.4];
  v5 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke_4;
  v11[3] = &unk_1E7F3AD60;
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke_5;
  v6[3] = &unk_1E7F3BB68;
  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 40);
  v10 = *(a1 + 72);
  [v5 animateWithDuration:0 delay:v11 options:v6 animations:v3 * 0.3 completion:v3 * 0.35];
}

void __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) applyLayout:*(a1 + 40)];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

uint64_t __67__AVTAttributeEditorToActionsTransitionAnimator_animateTransition___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  v2 = [*(a1 + 48) transitionWasCancelled];
  v3 = 56;
  if (v2)
  {
    v3 = 32;
  }

  [*(a1 + v3) removeFromSuperview];
  v4 = *(a1 + 48);
  v5 = [v4 transitionWasCancelled] ^ 1;

  return [v4 completeTransition:v5];
}

- (double)transitionDuration:(id)duration
{
  v3 = +[AVTUIEnvironment defaultEnvironment];
  [v3 actionAnimationsMultiplier];
  v5 = v4 * 0.84;

  return v5;
}

@end