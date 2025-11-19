@interface CNContactSharedProfileSettingsAction
+ (id)os_log;
- (CNContactSharedProfileSettingsActionDelegate)sharedProfileSettingsActionDelegate;
- (id)meContact;
- (void)performActionWithSender:(id)a3;
- (void)presentSharingSettingsWithNicknameContact:(id)a3 sender:(id)a4;
- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4;
- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4;
@end

@implementation CNContactSharedProfileSettingsAction

+ (id)os_log
{
  if (os_log_cn_once_token_1_1384 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1_1384, &__block_literal_global_1385);
  }

  v3 = os_log_cn_once_object_1_1386;

  return v3;
}

uint64_t __46__CNContactSharedProfileSettingsAction_os_log__block_invoke()
{
  os_log_cn_once_object_1_1386 = os_log_create("com.apple.contactsui", "CNContactSharedProfileSettingsAction");

  return MEMORY[0x1EEE66BB8]();
}

- (CNContactSharedProfileSettingsActionDelegate)sharedProfileSettingsActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sharedProfileSettingsActionDelegate);

  return WeakRetained;
}

- (void)sharingSettingsViewController:(id)a3 didUpdateWithSharingResult:(id)a4
{
  v5 = MEMORY[0x1E69966E8];
  v6 = a4;
  v7 = [v5 currentEnvironment];
  v8 = [v7 nicknameProvider];
  [v8 setPersonalNicknameWithSharingResult:v6];

  v9 = [(CNContactSharedProfileSettingsAction *)self sharedProfileSettingsActionDelegate];
  [v9 sharedProfileSettingsDidUpdate];
}

- (void)sharingSettingsViewController:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 nicknameProvider];
  [v7 setSharingAudience:a4];

  v8 = [(CNContactSharedProfileSettingsAction *)self sharedProfileSettingsActionDelegate];
  [v8 sharedProfileSettingsDidUpdate];
}

- (void)sharingSettingsViewController:(id)a3 didUpdateSharingState:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 nicknameProvider];
  [v7 setSharingEnabled:v4];

  v8 = [(CNContactSharedProfileSettingsAction *)self sharedProfileSettingsActionDelegate];
  [v8 sharedProfileSettingsDidUpdate];
}

- (id)meContact
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNContactSharedProfileSettingsAction *)self contactStore];
  v3 = +[CNMeCardSharingSettingsViewController descriptorForRequiredKeys];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = 0;
  v5 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, "No me contact found, error: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)presentSharingSettingsWithNicknameContact:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(CNContactSharedProfileSettingsAction *)self meContact];
  v8 = [(CNContactSharedProfileSettingsAction *)self contactStore];
  v9 = [CNSharedProfileOnboardingController sharingSettingsViewControllerForNicknameContact:v7 meContact:v11 mode:1 contactStore:v8];

  [v9 setDelegate:self];
  v10 = [(CNContactAction *)self delegate];
  [v10 action:self pushViewController:v9 sender:v6];
}

- (void)performActionWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CNContactSharedProfileSettingsAction *)self contactStore];

  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke;
    aBlock[3] = &unk_1E74E1A18;
    aBlock[4] = self;
    v23 = v4;
    v6 = _Block_copy(aBlock);
    v7 = [CNSharedProfileOnboardingController alloc];
    v8 = [(CNContactSharedProfileSettingsAction *)self contactStore];
    v9 = [(CNSharedProfileOnboardingController *)v7 initWithContactStore:v8];

    v10 = [(CNContactAction *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [(CNContactSharedProfileSettingsAction *)self setOnboardingController:v9];
      v12 = [(CNContactAction *)self delegate];
      v13 = [v12 actionPresentingViewController];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_2;
      v20[3] = &unk_1E74E1A40;
      v14 = &v21;
      v21 = v6;
      v15 = v6;
      [(CNSharedProfileOnboardingController *)v9 presentOnboardingFlowIfNeededForSettingsMode:1 fromViewController:v13 completion:v20];
    }

    else
    {
      v12 = [MEMORY[0x1E69966E8] currentEnvironment];
      v13 = [v12 nicknameProvider];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_3;
      v18[3] = &unk_1E74E1A68;
      v14 = &v19;
      v19 = v6;
      v17 = v6;
      [v13 fetchPersonalNicknameAsContactWithCompletion:v18];
    }
  }

  else
  {
    v16 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "me card sharing settings requires a contact store", buf, 2u);
    }
  }
}

void __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_INFO, "No personal nickname contact found", buf, 2u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_3;
  block[3] = &unk_1E74E6EE8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_3(uint64_t a1)
{
  return (*(*(a1 + 32) + 16))();
}

{
  return [*(a1 + 32) presentSharingSettingsWithNicknameContact:*(a1 + 40) sender:*(a1 + 48)];
}

@end