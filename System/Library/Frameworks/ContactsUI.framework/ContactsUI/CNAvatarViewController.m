@interface CNAvatarViewController
+ (id)avatarViewController;
- (CALayer)sourceAvatarLayer;
- (CNAvatarViewController)initWithCoder:(id)a3;
- (CNAvatarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNAvatarViewController)initWithSettings:(id)a3;
- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate;
- (UIImageView)destinationAvatarImageView;
- (id)descriptorForRequiredKeys;
- (void)performTransitionAnimationWithStartHandler:(id)a3 completion:(id)a4;
@end

@implementation CNAvatarViewController

- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->objectViewControllerDelegate);

  return WeakRetained;
}

- (void)performTransitionAnimationWithStartHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAvatarViewController *)self sharedProfileStateOracle];

  if (!v8)
  {
    v9 = CNUILogAvatarView();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEBUG, "Skipping transition animation, no state oracle", buf, 2u);
    }

    goto LABEL_7;
  }

  if (![(CNAvatarViewController *)self isPerformingTransition])
  {
    v10 = objc_alloc_init(CNSharedProfileAnimationGenerator);
    v11 = [(CNAvatarViewController *)self sharedProfileStateOracle];
    v12 = [v11 avatarViewAnimationTypeForEffectiveState];

    if (v6)
    {
      v6[2](v6, v12);
    }

    if (v12 == 2)
    {
      v24 = CNUILogAvatarView();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_DEFAULT, "No transition animation to perform", buf, 2u);
      }

      if (v7)
      {
        v7[2](v7, 2);
      }

      goto LABEL_25;
    }

    if (v12 == 1)
    {
      v19 = CNUILogAvatarView();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "Performing transition animation (peek-a-boo)", buf, 2u);
      }

      [(CNAvatarViewController *)self setIsPerformingTransition:1];
      v20 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      v21 = [v20 pendingNickname];
      v22 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      v23 = [v22 contact];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __80__CNAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke_7;
      v25[3] = &unk_1E74E6DD0;
      v25[4] = self;
      v26 = v7;
      [(CNSharedProfileAnimationGenerator *)v10 performPeekABooAnimationForAnimatingAvatarView:self pendingNickname:v21 contact:v23 completionHandler:v25];

      v18 = v26;
    }

    else
    {
      if (v12)
      {
LABEL_25:

        goto LABEL_26;
      }

      v13 = CNUILogAvatarView();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v13, OS_LOG_TYPE_DEFAULT, "Performing transition animation (coin flip)", buf, 2u);
      }

      [(CNAvatarViewController *)self setIsPerformingTransition:1];
      v14 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      v15 = [v14 pendingNickname];
      v16 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      v17 = [v16 contact];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__CNAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke;
      v27[3] = &unk_1E74E6DD0;
      v27[4] = self;
      v28 = v7;
      [(CNSharedProfileAnimationGenerator *)v10 performCoinFlipAnimationForAnimatingAvatarView:self pendingNickname:v15 contact:v17 completionHandler:v27];

      v18 = v28;
    }

    goto LABEL_25;
  }

  v9 = CNUILogAvatarView();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "Skipping transition animation, animation already in progress", buf, 2u);
  }

LABEL_7:

  if (v7)
  {
    v7[2](v7, 2);
  }

LABEL_26:
}

uint64_t __80__CNAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingTransition:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __80__CNAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setIsPerformingTransition:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (UIImageView)destinationAvatarImageView
{
  v2 = [(CNAvatarViewController *)self view];
  v3 = [v2 destinationAvatarImageView];

  return v3;
}

- (CALayer)sourceAvatarLayer
{
  v2 = [(CNAvatarViewController *)self view];
  v3 = [v2 sourceAvatarLayer];

  return v3;
}

- (CNAvatarViewController)initWithSettings:(id)a3
{
  v4 = a3;
  if ([(CNAvatarViewController *)self isMemberOfClass:objc_opt_class()])
  {

    v5 = [objc_alloc(objc_msgSend(objc_opt_class() "defaultImplementation"))];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNAvatarViewController;
    v5 = [(CNAvatarViewController *)&v8 initWithNibName:0 bundle:0];
  }

  v6 = v5;

  return v6;
}

- (CNAvatarViewController)initWithCoder:(id)a3
{
  v4 = +[CNAvatarViewControllerSettings defaultSettings];
  v5 = [(CNAvatarViewController *)self initWithSettings:v4];

  return v5;
}

- (CNAvatarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNAvatarViewControllerSettings defaultSettings:a3];
  v6 = [(CNAvatarViewController *)self initWithSettings:v5];

  return v6;
}

- (id)descriptorForRequiredKeys
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[CNAvatarViewController descriptorForRequiredKeys]"];
  v4 = [v2 descriptorWithKeyDescriptors:MEMORY[0x1E695E0F0] description:v3];

  return v4;
}

+ (id)avatarViewController
{
  v2 = objc_alloc([objc_opt_class() defaultImplementation]);
  v3 = +[CNAvatarViewControllerSettings defaultSettings];
  v4 = [v2 initWithSettings:v3];

  return v4;
}

@end