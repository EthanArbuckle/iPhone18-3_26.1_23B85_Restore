@interface UIViewController
@end

@implementation UIViewController

void __98__UIViewController_BaseBoardUI__bs_addChildViewController_withSuperview_animated_transitionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

uint64_t __98__UIViewController_BaseBoardUI__bs_addChildViewController_withSuperview_animated_transitionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = BSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(a1 + 32)];
      v5 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(a1 + 40)];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_error_impl(&dword_1A2D36000, v2, OS_LOG_TYPE_ERROR, "transition completion not called adding %@ to %@", &v6, 0x16u);
    }
  }

  if (*(a1 + 49) == 1)
  {
    [*(a1 + 40) bs_endAppearanceTransitionForChildViewController:*(a1 + 32)];
  }

  return [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
}

void __98__UIViewController_BaseBoardUI__bs_addChildViewController_withSuperview_animated_transitionBlock___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 isFailed] ^ 1);
}

void __87__UIViewController_BaseBoardUI__bs_removeChildViewController_animated_transitionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

uint64_t __87__UIViewController_BaseBoardUI__bs_removeChildViewController_animated_transitionBlock___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = BSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(a1 + 32)];
      v6 = [MEMORY[0x1E698E680] succinctDescriptionForObject:*(a1 + 40)];
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_error_impl(&dword_1A2D36000, v2, OS_LOG_TYPE_ERROR, "transition completion not called removing %@ from %@", &v7, 0x16u);
    }
  }

  v3 = [*(a1 + 32) view];
  [v3 removeFromSuperview];

  if (*(a1 + 49) == 1)
  {
    [*(a1 + 40) bs_endAppearanceTransitionForChildViewController:*(a1 + 32)];
  }

  return [*(a1 + 32) removeFromParentViewController];
}

void __87__UIViewController_BaseBoardUI__bs_removeChildViewController_animated_transitionBlock___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 isFailed] ^ 1);
}

@end