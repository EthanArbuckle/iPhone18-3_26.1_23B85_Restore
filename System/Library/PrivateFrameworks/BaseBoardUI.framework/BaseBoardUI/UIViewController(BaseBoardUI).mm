@interface UIViewController(BaseBoardUI)
+ (id)bs_nextViewControllerForView:()BaseBoardUI;
- (BOOL)bs_endAppearanceTransition;
- (id)bs_presentationContextDefiningViewController;
- (id)bs_presentedViewControllerIncludingAncestors;
- (id)bs_topPresentedViewController;
- (uint64_t)bs_addChildViewController:()BaseBoardUI withSuperview:animated:transitionBlock:;
- (uint64_t)bs_beginAppearanceTransition:()BaseBoardUI animated:;
- (uint64_t)bs_beginAppearanceTransitionForChildViewController:()BaseBoardUI toVisible:animated:;
- (uint64_t)bs_endAppearanceTransition:()BaseBoardUI;
- (uint64_t)bs_endAppearanceTransitionForChildViewController:()BaseBoardUI;
- (uint64_t)bs_endAppearanceTransitionForChildViewController:()BaseBoardUI toVisible:;
- (uint64_t)bs_removeChildViewController:()BaseBoardUI animated:transitionBlock:;
- (void)bs_traitCollectionDidChange:()BaseBoardUI forManagedTraitEnvironment:;
@end

@implementation UIViewController(BaseBoardUI)

- (BOOL)bs_endAppearanceTransition
{
  v2 = [self _appearState] & 0xFFFFFFFD;
  if (v2 == 1)
  {
    [self endAppearanceTransition];
  }

  return v2 == 1;
}

+ (id)bs_nextViewControllerForView:()BaseBoardUI
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [self viewControllerForView:v5];
      superview = [v5 superview];

      if (!superview)
      {
        break;
      }

      v5 = superview;
    }

    while (!v6);
  }

  else
  {
    v6 = 0;
    superview = 0;
  }

  return v6;
}

- (uint64_t)bs_beginAppearanceTransition:()BaseBoardUI animated:
{
  if (a3)
  {
    if (([self bs_isDisappearingOrDisappeared] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = [self bs_isAppearingOrAppeared];
    if (!result)
    {
      return result;
    }
  }

  [self beginAppearanceTransition:a3 animated:a4];
  return 1;
}

- (uint64_t)bs_endAppearanceTransition:()BaseBoardUI
{
  [self bs_beginAppearanceTransition:a3 animated:0];

  return [self bs_endAppearanceTransition];
}

- (uint64_t)bs_beginAppearanceTransitionForChildViewController:()BaseBoardUI toVisible:animated:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (self == v9)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"self != childController"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      selfCopy = self;
      v24 = 2114;
      v25 = @"UIViewController+BaseBoardUI.m";
      v26 = 1024;
      v27 = 68;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D48BE0);
  }

  if (([self shouldAutomaticallyForwardAppearanceMethods] & 1) != 0 || (objc_msgSend(v9, "parentViewController"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != self) || a4 && !objc_msgSend(self, "_appearState"))
  {
    v11 = 0;
  }

  else
  {
    v11 = [v9 bs_beginAppearanceTransition:a4 animated:a5];
  }

  return v11;
}

- (uint64_t)bs_endAppearanceTransitionForChildViewController:()BaseBoardUI
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self == v5)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"self != childController"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"UIViewController+BaseBoardUI.m";
      v22 = 1024;
      v23 = 83;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_1A2D36000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A2D48DDCLL);
  }

  if (([self shouldAutomaticallyForwardAppearanceMethods] & 1) == 0 && (objc_msgSend(v5, "parentViewController"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == self))
  {
    bs_endAppearanceTransition = [v5 bs_endAppearanceTransition];
  }

  else
  {
    bs_endAppearanceTransition = 0;
  }

  return bs_endAppearanceTransition;
}

- (uint64_t)bs_endAppearanceTransitionForChildViewController:()BaseBoardUI toVisible:
{
  v6 = a3;
  [self bs_beginAppearanceTransitionForChildViewController:v6 toVisible:a4 animated:0];
  v7 = [self bs_endAppearanceTransitionForChildViewController:v6];

  return v7;
}

- (uint64_t)bs_addChildViewController:()BaseBoardUI withSuperview:animated:transitionBlock:
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10 && [self isViewLoaded] && (objc_msgSend(v10, "parentViewController"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != self))
  {
    [v10 loadViewIfNeeded];
    [self addChildViewController:v10];
    v14 = [self bs_beginAppearanceTransitionForChildViewController:v10 toVisible:1 animated:a5];
    if (v11)
    {
      view = v11;
    }

    else
    {
      view = [self view];
    }

    v18 = view;
    view2 = [v10 view];
    superview = [view2 superview];
    v21 = superview;
    if (!superview || ([superview isDescendantOfView:v18] & 1) == 0)
    {
      [v18 addSubview:view2];
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __98__UIViewController_BaseBoardUI__bs_addChildViewController_withSuperview_animated_transitionBlock___block_invoke;
    v32[3] = &unk_1E76B7EC8;
    v33 = v10;
    selfCopy = self;
    v35 = v14;
    v22 = MEMORY[0x1A58E5D00](v32);
    v23 = v22;
    if (v12)
    {
      v24 = MEMORY[0x1E698E630];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __98__UIViewController_BaseBoardUI__bs_addChildViewController_withSuperview_animated_transitionBlock___block_invoke_11;
      v30[3] = &unk_1E76B7EF0;
      v31 = v22;
      v25 = [v24 sentinelWithCompletion:v30];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __98__UIViewController_BaseBoardUI__bs_addChildViewController_withSuperview_animated_transitionBlock___block_invoke_2_13;
      v28[3] = &unk_1E76B7BA8;
      v29 = v25;
      v26 = v12[2];
      v27 = v25;
      v26(v12, v28);
    }

    else
    {
      v22[2](v22, 1);
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (uint64_t)bs_removeChildViewController:()BaseBoardUI animated:transitionBlock:
{
  v8 = a3;
  v9 = a5;
  if (v8 && ([v8 parentViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == self))
  {
    [v8 willMoveToParentViewController:0];
    v12 = [self bs_beginAppearanceTransitionForChildViewController:v8 toVisible:0 animated:a4];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__UIViewController_BaseBoardUI__bs_removeChildViewController_animated_transitionBlock___block_invoke;
    v24[3] = &unk_1E76B7EC8;
    v25 = v8;
    selfCopy = self;
    v27 = v12;
    v13 = MEMORY[0x1A58E5D00](v24);
    v14 = v13;
    if (v9)
    {
      v15 = MEMORY[0x1E698E630];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __87__UIViewController_BaseBoardUI__bs_removeChildViewController_animated_transitionBlock___block_invoke_14;
      v22[3] = &unk_1E76B7EF0;
      v23 = v13;
      v16 = [v15 sentinelWithCompletion:v22];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __87__UIViewController_BaseBoardUI__bs_removeChildViewController_animated_transitionBlock___block_invoke_2_15;
      v20[3] = &unk_1E76B7BA8;
      v21 = v16;
      v17 = v9[2];
      v18 = v16;
      v17(v9, v20);
    }

    else
    {
      v13[2](v13, 1);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)bs_presentedViewControllerIncludingAncestors
{
  presentedViewController = [self presentedViewController];
  v3 = presentedViewController;
  if (presentedViewController)
  {
    bs_presentedViewControllerIncludingAncestors = presentedViewController;
  }

  else
  {
    parentViewController = [self parentViewController];
    bs_presentedViewControllerIncludingAncestors = [parentViewController bs_presentedViewControllerIncludingAncestors];
  }

  return bs_presentedViewControllerIncludingAncestors;
}

- (id)bs_presentationContextDefiningViewController
{
  selfCopy = self;
  v2 = selfCopy;
  if (selfCopy)
  {
    for (i = selfCopy; ; i = parentViewController)
    {
      definesPresentationContext = [v2 definesPresentationContext];
      v5 = i ? definesPresentationContext : 1;
      if (v5)
      {
        break;
      }

      v6 = i;

      parentViewController = [v6 parentViewController];

      v2 = v6;
    }
  }

  else
  {
    i = 0;
  }

  return v2;
}

- (id)bs_topPresentedViewController
{
  selfCopy = self;
  v2 = selfCopy;
  if (selfCopy)
  {
    presentedViewController = selfCopy;
    do
    {
      v4 = v2;
      v2 = presentedViewController;

      presentedViewController = [v2 presentedViewController];
    }

    while (presentedViewController);
  }

  return v2;
}

- (void)bs_traitCollectionDidChange:()BaseBoardUI forManagedTraitEnvironment:
{
  v8 = a3;
  v6 = a4;
  parentViewController = [self parentViewController];
  [parentViewController bs_traitCollectionDidChange:v8 forManagedTraitEnvironment:v6];
}

@end