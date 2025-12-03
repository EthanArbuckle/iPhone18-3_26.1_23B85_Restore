@interface CNContactSharedProfileSettingsAction
+ (id)os_log;
- (CNContactSharedProfileSettingsActionDelegate)sharedProfileSettingsActionDelegate;
- (id)meContact;
- (void)performActionWithSender:(id)sender;
- (void)presentSharingSettingsWithNicknameContact:(id)contact sender:(id)sender;
- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience;
- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state;
- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result;
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

- (void)sharingSettingsViewController:(id)controller didUpdateWithSharingResult:(id)result
{
  v5 = MEMORY[0x1E69966E8];
  resultCopy = result;
  currentEnvironment = [v5 currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  [nicknameProvider setPersonalNicknameWithSharingResult:resultCopy];

  sharedProfileSettingsActionDelegate = [(CNContactSharedProfileSettingsAction *)self sharedProfileSettingsActionDelegate];
  [sharedProfileSettingsActionDelegate sharedProfileSettingsDidUpdate];
}

- (void)sharingSettingsViewController:(id)controller didSelectSharingAudience:(unint64_t)audience
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  [nicknameProvider setSharingAudience:audience];

  sharedProfileSettingsActionDelegate = [(CNContactSharedProfileSettingsAction *)self sharedProfileSettingsActionDelegate];
  [sharedProfileSettingsActionDelegate sharedProfileSettingsDidUpdate];
}

- (void)sharingSettingsViewController:(id)controller didUpdateSharingState:(BOOL)state
{
  stateCopy = state;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  [nicknameProvider setSharingEnabled:stateCopy];

  sharedProfileSettingsActionDelegate = [(CNContactSharedProfileSettingsAction *)self sharedProfileSettingsActionDelegate];
  [sharedProfileSettingsActionDelegate sharedProfileSettingsDidUpdate];
}

- (id)meContact
{
  v12[1] = *MEMORY[0x1E69E9840];
  contactStore = [(CNContactSharedProfileSettingsAction *)self contactStore];
  v3 = +[CNMeCardSharingSettingsViewController descriptorForRequiredKeys];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = 0;
  v5 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v9];
  v6 = v9;

  if (!v5)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_199A75000, os_log, OS_LOG_TYPE_INFO, "No me contact found, error: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)presentSharingSettingsWithNicknameContact:(id)contact sender:(id)sender
{
  senderCopy = sender;
  contactCopy = contact;
  meContact = [(CNContactSharedProfileSettingsAction *)self meContact];
  contactStore = [(CNContactSharedProfileSettingsAction *)self contactStore];
  v9 = [CNSharedProfileOnboardingController sharingSettingsViewControllerForNicknameContact:contactCopy meContact:meContact mode:1 contactStore:contactStore];

  [v9 setDelegate:self];
  delegate = [(CNContactAction *)self delegate];
  [delegate action:self pushViewController:v9 sender:senderCopy];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  contactStore = [(CNContactSharedProfileSettingsAction *)self contactStore];

  if (contactStore)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke;
    aBlock[3] = &unk_1E74E1A18;
    aBlock[4] = self;
    v23 = senderCopy;
    v6 = _Block_copy(aBlock);
    v7 = [CNSharedProfileOnboardingController alloc];
    contactStore2 = [(CNContactSharedProfileSettingsAction *)self contactStore];
    v9 = [(CNSharedProfileOnboardingController *)v7 initWithContactStore:contactStore2];

    delegate = [(CNContactAction *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      [(CNContactSharedProfileSettingsAction *)self setOnboardingController:v9];
      delegate2 = [(CNContactAction *)self delegate];
      actionPresentingViewController = [delegate2 actionPresentingViewController];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_2;
      v20[3] = &unk_1E74E1A40;
      v14 = &v21;
      v21 = v6;
      v15 = v6;
      [(CNSharedProfileOnboardingController *)v9 presentOnboardingFlowIfNeededForSettingsMode:1 fromViewController:actionPresentingViewController completion:v20];
    }

    else
    {
      delegate2 = [MEMORY[0x1E69966E8] currentEnvironment];
      actionPresentingViewController = [delegate2 nicknameProvider];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__CNContactSharedProfileSettingsAction_performActionWithSender___block_invoke_3;
      v18[3] = &unk_1E74E1A68;
      v14 = &v19;
      v19 = v6;
      v17 = v6;
      [actionPresentingViewController fetchPersonalNicknameAsContactWithCompletion:v18];
    }
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, os_log, OS_LOG_TYPE_ERROR, "me card sharing settings requires a contact store", buf, 2u);
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

@end