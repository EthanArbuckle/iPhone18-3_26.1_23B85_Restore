@interface CNAvatarViewController
+ (id)avatarViewController;
- (CALayer)sourceAvatarLayer;
- (CNAvatarViewController)initWithCoder:(id)coder;
- (CNAvatarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNAvatarViewController)initWithSettings:(id)settings;
- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate;
- (UIImageView)destinationAvatarImageView;
- (id)descriptorForRequiredKeys;
- (void)performTransitionAnimationWithStartHandler:(id)handler completion:(id)completion;
@end

@implementation CNAvatarViewController

- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->objectViewControllerDelegate);

  return WeakRetained;
}

- (void)performTransitionAnimationWithStartHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  sharedProfileStateOracle = [(CNAvatarViewController *)self sharedProfileStateOracle];

  if (!sharedProfileStateOracle)
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
    sharedProfileStateOracle2 = [(CNAvatarViewController *)self sharedProfileStateOracle];
    avatarViewAnimationTypeForEffectiveState = [sharedProfileStateOracle2 avatarViewAnimationTypeForEffectiveState];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, avatarViewAnimationTypeForEffectiveState);
    }

    if (avatarViewAnimationTypeForEffectiveState == 2)
    {
      v24 = CNUILogAvatarView();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v24, OS_LOG_TYPE_DEFAULT, "No transition animation to perform", buf, 2u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 2);
      }

      goto LABEL_25;
    }

    if (avatarViewAnimationTypeForEffectiveState == 1)
    {
      v19 = CNUILogAvatarView();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEFAULT, "Performing transition animation (peek-a-boo)", buf, 2u);
      }

      [(CNAvatarViewController *)self setIsPerformingTransition:1];
      sharedProfileStateOracle3 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      pendingNickname = [sharedProfileStateOracle3 pendingNickname];
      sharedProfileStateOracle4 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      contact = [sharedProfileStateOracle4 contact];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __80__CNAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke_7;
      v25[3] = &unk_1E74E6DD0;
      v25[4] = self;
      v26 = completionCopy;
      [(CNSharedProfileAnimationGenerator *)v10 performPeekABooAnimationForAnimatingAvatarView:self pendingNickname:pendingNickname contact:contact completionHandler:v25];

      v18 = v26;
    }

    else
    {
      if (avatarViewAnimationTypeForEffectiveState)
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
      sharedProfileStateOracle5 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      pendingNickname2 = [sharedProfileStateOracle5 pendingNickname];
      sharedProfileStateOracle6 = [(CNAvatarViewController *)self sharedProfileStateOracle];
      contact2 = [sharedProfileStateOracle6 contact];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__CNAvatarViewController_performTransitionAnimationWithStartHandler_completion___block_invoke;
      v27[3] = &unk_1E74E6DD0;
      v27[4] = self;
      v28 = completionCopy;
      [(CNSharedProfileAnimationGenerator *)v10 performCoinFlipAnimationForAnimatingAvatarView:self pendingNickname:pendingNickname2 contact:contact2 completionHandler:v27];

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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 2);
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
  view = [(CNAvatarViewController *)self view];
  destinationAvatarImageView = [view destinationAvatarImageView];

  return destinationAvatarImageView;
}

- (CALayer)sourceAvatarLayer
{
  view = [(CNAvatarViewController *)self view];
  sourceAvatarLayer = [view sourceAvatarLayer];

  return sourceAvatarLayer;
}

- (CNAvatarViewController)initWithSettings:(id)settings
{
  settingsCopy = settings;
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

- (CNAvatarViewController)initWithCoder:(id)coder
{
  v4 = +[CNAvatarViewControllerSettings defaultSettings];
  v5 = [(CNAvatarViewController *)self initWithSettings:v4];

  return v5;
}

- (CNAvatarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNAvatarViewControllerSettings defaultSettings:name];
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