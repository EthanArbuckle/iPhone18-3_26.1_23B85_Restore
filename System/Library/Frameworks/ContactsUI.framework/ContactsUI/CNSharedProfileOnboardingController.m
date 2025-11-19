@interface CNSharedProfileOnboardingController
+ (id)descriptorForRequiredKeys;
+ (id)log;
+ (id)sharingSettingsViewControllerForNicknameContact:(id)a3 meContact:(id)a4 mode:(int64_t)a5 contactStore:(id)a6;
- (BOOL)accountCanCreateSNaP;
- (BOOL)accountCanCreateSNaPWithShouldShowErrorAlert:(BOOL)a3 fromViewController:(id)a4;
- (BOOL)alwaysShowSNaPOnboarding;
- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)a3;
- (BOOL)didSkipPosterSetup;
- (BOOL)hasCompletedOnboarding;
- (BOOL)isPhotosReadyForOnboarding;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)shouldShowOnboarding;
- (BOOL)shouldShowOnboardingForSettingsWithNicknameContact:(id)a3 meContact:(id)a4;
- (CNSharedProfileOnboardingController)initWithContactStore:(id)a3;
- (CNSharedProfileOnboardingController)initWithContactStore:(id)a3 stateController:(id)a4;
- (CNSharedProfileOnboardingControllerDelegate)delegate;
- (id)meContact;
- (id)meOrPrimaryAccountContact;
- (int64_t)lastShownOnboardingVersion;
- (void)dismiss:(id)a3;
- (void)dismissOnboardingIfNeeded;
- (void)onboardingFromFlowManager:(id)a3 didSelectSharingAudience:(unint64_t)a4;
- (void)onboardingFromFlowManager:(id)a3 didUpdateSharingState:(BOOL)a4;
- (void)onboardingFromFlowManager:(id)a3 didUpdateWithSharingResult:(id)a4;
- (void)presentOnboardingFlowForNicknameContact:(id)a3 mode:(int64_t)a4 fromViewController:(id)a5;
- (void)presentOnboardingFlowIfNeededForMode:(int64_t)a3 fromViewController:(id)a4;
- (void)presentOnboardingFlowIfNeededForSettingsMode:(int64_t)a3 fromViewController:(id)a4 completion:(id)a5;
- (void)presentSettingsForMode:(int64_t)a3 fromViewController:(id)a4;
- (void)presentSettingsForNicknameContact:(id)a3 meContact:(id)a4 mode:(int64_t)a5 fromViewController:(id)a6;
- (void)presentSettingsForNicknameContact:(id)a3 mode:(int64_t)a4 fromViewController:(id)a5;
- (void)presentVisualIdentityEditorFromViewController:(id)a3;
- (void)sender:(id)a3 dismissViewController:(id)a4;
- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (void)sender:(id)a3 presentViewController:(id)a4;
- (void)showMultiplePhoneNumbersAlertForNicknamesFromViewController:(id)a3;
- (void)showiCloudNotSignedInAlertForNicknamesFromViewController:(id)a3;
- (void)startOnboardingOrEditForMode:(int64_t)a3 fromViewController:(id)a4;
- (void)startVisualIdentityOnboardingForMultipleDevicesFromViewController:(id)a3;
- (void)updateNicknameWithAudience:(unint64_t)a3;
- (void)updateNicknameWithSharingResult:(id)a3;
- (void)updateNicknameWithSharingState:(BOOL)a3;
- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)a3;
- (void)writeToDefaultsCompletedOnboarding:(BOOL)a3;
- (void)writeToDefaultsLastShownOnboardingVersion;
@end

@implementation CNSharedProfileOnboardingController

- (BOOL)shouldShowOnboarding
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 shouldShowOnboarding];

  return v3;
}

- (CNSharedProfileOnboardingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)a3
{
  v7 = a3;
  v4 = [(CNSharedProfileOnboardingController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNSharedProfileOnboardingController *)self delegate];
    [v6 onboardingControllerDidFinishSetup:self];
  }

  [(CNSharedProfileOnboardingController *)self dismiss:v7];
}

- (void)sender:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(CNSharedProfileOnboardingController *)self baseViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CNSharedProfileOnboardingController_sender_dismissViewController_completionHandler___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 dismissViewControllerAnimated:1 completion:v9];
}

uint64_t __86__CNSharedProfileOnboardingController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBaseViewController:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)sender:(id)a3 dismissViewController:(id)a4
{
  v5 = [(CNSharedProfileOnboardingController *)self baseViewController:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CNSharedProfileOnboardingController_sender_dismissViewController___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)sender:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(CNSharedProfileOnboardingController *)self baseViewController];
  v7 = [v6 presentedViewController];

  v8 = [(CNSharedProfileOnboardingController *)self baseViewController];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 presentedViewController];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__CNSharedProfileOnboardingController_sender_presentViewController___block_invoke;
    v11[3] = &unk_1E74E77C0;
    v11[4] = self;
    v12 = v5;
    [v10 dismissViewControllerAnimated:0 completion:v11];
  }

  else
  {
    [v8 presentViewController:v5 animated:1 completion:0];
  }
}

void __68__CNSharedProfileOnboardingController_sender_presentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) baseViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)onboardingFromFlowManager:(id)a3 didSelectSharingAudience:(unint64_t)a4
{
  [(CNSharedProfileOnboardingController *)self updateNicknameWithAudience:a4];

  [(CNSharedProfileOnboardingController *)self writeToDefaultsCompletedOnboarding:1];
}

- (void)onboardingFromFlowManager:(id)a3 didUpdateSharingState:(BOOL)a4
{
  [(CNSharedProfileOnboardingController *)self updateNicknameWithSharingState:a4];

  [(CNSharedProfileOnboardingController *)self writeToDefaultsCompletedOnboarding:1];
}

- (void)onboardingFromFlowManager:(id)a3 didUpdateWithSharingResult:(id)a4
{
  v5 = a4;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "Onboarding controller did finish with sharing result", v7, 2u);
  }

  [(CNSharedProfileOnboardingController *)self updateNicknameWithSharingResult:v5];
  [(CNSharedProfileOnboardingController *)self writeToDefaultsCompletedOnboarding:1];
  [(CNSharedProfileOnboardingController *)self setSetupFlowManager:0];
}

- (void)updateNicknameWithAudience:(unint64_t)a3
{
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v5 nicknameProvider];
  [v4 setSharingAudience:a3];
}

- (void)updateNicknameWithSharingState:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v5 nicknameProvider];
  [v4 setSharingEnabled:v3];
}

- (void)updateNicknameWithSharingResult:(id)a3
{
  v4 = MEMORY[0x1E69966E8];
  v5 = a3;
  v6 = [v4 currentEnvironment];
  v7 = [v6 nicknameProvider];
  [v7 setPersonalNicknameWithSharingResult:v5];

  v8 = [(CNSharedProfileOnboardingController *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(CNSharedProfileOnboardingController *)self delegate];
    [v9 onboardingControllerDidFinishSetup:self];
  }
}

- (BOOL)didSkipPosterSetup
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 didSkipPosterSetup];

  return v3;
}

- (void)writeToDefaultsCompletedOnboarding:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNSharedProfileOnboardingController *)self stateController];
  [v4 writeToDefaultsCompletedOnboarding:v3];
}

- (BOOL)hasCompletedOnboarding
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 hasCompletedOnboarding];

  return v3;
}

- (int64_t)lastShownOnboardingVersion
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 lastShownOnboardingVersion];

  return v3;
}

- (void)writeToDefaultsLastShownOnboardingVersion
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  [v2 writeToDefaultsLastShownOnboardingVersion];
}

- (id)meOrPrimaryAccountContact
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(CNSharedProfileOnboardingController *)self meContact];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [MEMORY[0x1E6959A48] defaultStore];
    v6 = [v5 aa_primaryAppleAccount];

    v7 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v8 = [v6 _cn_firstName];
    [v7 setGivenName:v8];

    v9 = [v6 _cn_lastName];
    [v7 setFamilyName:v9];

    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, "Failed to fetch current me contact, falling back to contact created from primary account %@", &v12, 0xCu);
    }

    v4 = [v7 freeze];
  }

  return v4;
}

- (id)meContact
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNSharedProfileOnboardingController *)self contactStore];
  v3 = [objc_opt_class() descriptorForRequiredKeys];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = 0;
  v5 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v9];
  v6 = v9;

  if (!v5)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_INFO, "No me contact found, error: %@", buf, 0xCu);
    }
  }

  return v5;
}

- (void)dismiss:(id)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:7];

  v7 = [(CNSharedProfileOnboardingController *)self presentedViewController];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 presentingViewController];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(CNSharedProfileOnboardingController *)self presentedViewController];
    }

    v12 = v11;

    v8 = v12;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__CNSharedProfileOnboardingController_dismiss___block_invoke;
  v13[3] = &unk_1E74E6A88;
  v13[4] = self;
  [v8 dismissViewControllerAnimated:1 completion:v13];
}

void __47__CNSharedProfileOnboardingController_dismiss___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentedViewController:0];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 onboardingControllerDidDismissSettings:*(a1 + 32)];
  }
}

- (void)dismissOnboardingIfNeeded
{
  v2 = [(CNSharedProfileOnboardingController *)self setupFlowManager];
  [v2 dismissOnboardingIfNeeded];
}

- (void)presentSettingsForNicknameContact:(id)a3 meContact:(id)a4 mode:(int64_t)a5 fromViewController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __107__CNSharedProfileOnboardingController_presentSettingsForNicknameContact_meContact_mode_fromViewController___block_invoke;
  v17[3] = &unk_1E74E64D8;
  v17[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 performBlock:v17];
}

void __107__CNSharedProfileOnboardingController_presentSettingsForNicknameContact_meContact_mode_fromViewController___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) contactStore];
  v12 = [v2 sharingSettingsViewControllerForNicknameContact:v4 meContact:v3 mode:v5 contactStore:v6];

  [v12 setDelegate:*(a1 + 32)];
  v7 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v12];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:*(a1 + 32) action:sel_dismiss_];
  v9 = [v12 navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = [MEMORY[0x1E69DC938] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  [v7 setModalPresentationStyle:2 * ((v11 & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  [*(a1 + 32) setPresentedViewController:v12];
  [*(a1 + 56) presentViewController:v7 animated:1 completion:0];
}

- (void)presentSettingsForNicknameContact:(id)a3 mode:(int64_t)a4 fromViewController:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(CNSharedProfileOnboardingController *)self meContact];
  [(CNSharedProfileOnboardingController *)self presentSettingsForNicknameContact:v9 meContact:v10 mode:a4 fromViewController:v8];
}

- (void)presentSettingsForMode:(int64_t)a3 fromViewController:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:7];

  if (v9)
  {
    [(CNSharedProfileOnboardingController *)self presentVisualIdentityEditorFromViewController:v6];
  }

  else
  {
    v10 = [MEMORY[0x1E69966E8] currentEnvironment];
    v11 = [v10 nicknameProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__CNSharedProfileOnboardingController_presentSettingsForMode_fromViewController___block_invoke;
    v12[3] = &unk_1E74E63E8;
    v12[4] = self;
    v14 = a3;
    v13 = v6;
    [v11 fetchPersonalNicknameAsContactWithCompletion:v12];
  }
}

void __81__CNSharedProfileOnboardingController_presentSettingsForMode_fromViewController___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__CNSharedProfileOnboardingController_presentSettingsForMode_fromViewController___block_invoke_2;
  v7[3] = &unk_1E74E63C0;
  v5 = a1[5];
  v7[4] = a1[4];
  v8 = v3;
  v10 = a1[6];
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)startOnboardingOrEditForMode:(int64_t)a3 fromViewController:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69966E8] currentEnvironment];
  v8 = [v7 featureFlags];
  v9 = [v8 isFeatureEnabled:7];

  if (!v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__CNSharedProfileOnboardingController_startOnboardingOrEditForMode_fromViewController___block_invoke;
    v13[3] = &unk_1E74E64B0;
    v13[4] = self;
    v15 = a3;
    v14 = v6;
    [(CNSharedProfileOnboardingController *)self presentOnboardingFlowIfNeededForSettingsMode:a3 fromViewController:v14 completion:v13];

    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E69966E8] currentEnvironment];
  v11 = [v10 featureFlags];
  if (![v11 isFeatureEnabled:26])
  {

    goto LABEL_7;
  }

  v12 = [(CNSharedProfileOnboardingController *)self multiplePhoneNumbersTiedToAppleID];

  if (!v12)
  {
LABEL_7:
    [(CNSharedProfileOnboardingController *)self presentVisualIdentityEditorFromViewController:v6];
    goto LABEL_8;
  }

  [(CNSharedProfileOnboardingController *)self startVisualIdentityOnboardingForMultipleDevicesFromViewController:v6];
LABEL_8:
}

uint64_t __87__CNSharedProfileOnboardingController_startOnboardingOrEditForMode_fromViewController___block_invoke(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) presentSettingsForNicknameContact:a3 meContact:a4 mode:*(result + 48) fromViewController:*(result + 40)];
  }

  return result;
}

- (void)startVisualIdentityOnboardingForMultipleDevicesFromViewController:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105__CNSharedProfileOnboardingController_startVisualIdentityOnboardingForMultipleDevicesFromViewController___block_invoke;
  v12[3] = &unk_1E74E6460;
  v12[4] = self;
  [v5 setOnCancel:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__CNSharedProfileOnboardingController_startVisualIdentityOnboardingForMultipleDevicesFromViewController___block_invoke_81;
  v10[3] = &unk_1E74E6488;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  [v5 setOnContinue:v10];
  [v7 setNavigationBarHidden:1 animated:0];
  v8 = [MEMORY[0x1E69DC938] currentDevice];
  v9 = [v8 userInterfaceIdiom];

  [v7 setModalPresentationStyle:2 * ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  [(CNSharedProfileOnboardingController *)self setPresentedViewController:v5];
  [v4 presentViewController:v7 animated:1 completion:0];
}

void __105__CNSharedProfileOnboardingController_startVisualIdentityOnboardingForMultipleDevicesFromViewController___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v3, OS_LOG_TYPE_INFO, "Detected that multiple numbers/devices are associated with Apple ID, user chose to cancel", v4, 2u);
  }

  [v2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t __105__CNSharedProfileOnboardingController_startVisualIdentityOnboardingForMultipleDevicesFromViewController___block_invoke_81(uint64_t a1)
{
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_INFO, "Detected that multiple numbers/devices are associated with Apple ID, user chose to continue", v4, 2u);
  }

  return [*(a1 + 32) presentVisualIdentityEditorFromViewController:*(a1 + 40)];
}

- (void)presentOnboardingFlowIfNeededForSettingsMode:(int64_t)a3 fromViewController:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(CNSharedProfileOnboardingController *)self accountCanCreateSNaPWithShouldShowErrorAlert:1 fromViewController:v8])
  {
    v10 = [MEMORY[0x1E69966E8] currentEnvironment];
    v11 = [v10 nicknameProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForSettingsMode_fromViewController_completion___block_invoke;
    v12[3] = &unk_1E74E6438;
    v12[4] = self;
    v15 = a3;
    v13 = v8;
    v14 = v9;
    [v11 fetchPersonalNicknameAsContactWithCompletion:v12];
  }
}

void __114__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForSettingsMode_fromViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __114__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForSettingsMode_fromViewController_completion___block_invoke_2;
  v7[3] = &unk_1E74E6410;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v11 = *(a1 + 56);
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  [v4 performBlock:v7];
}

void __114__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForSettingsMode_fromViewController_completion___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) meContact];
  if ([*(a1 + 32) shouldShowOnboardingForSettingsWithNicknameContact:*(a1 + 40) meContact:?])
  {
    [*(a1 + 32) presentOnboardingFlowForNicknameContact:*(a1 + 40) mode:*(a1 + 64) fromViewController:*(a1 + 48)];
    v2 = [*(a1 + 32) stateController];
    [v2 writeToDefaultsLastShownSettingsOnboardingVersion];
  }

  (*(*(a1 + 56) + 16))();
}

- (BOOL)shouldShowOnboardingForSettingsWithNicknameContact:(id)a3 meContact:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNSharedProfileOnboardingController *)self canShowOnboardingAllowingMultiplePhoneNumbers:1];
  v9 = [(CNSharedProfileOnboardingController *)self shouldShowOnboarding];
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v31 = v8;
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEFAULT, "Should show onboarding: canShowOnboarding %d, newOnboardingVersionAvailable %d", buf, 0xEu);
  }

  if (!v9 && v8)
  {
    v11 = [(CNSharedProfileOnboardingController *)self stateController];
    v12 = [v11 lastShowOnboardingVersionInSettings];
    v13 = [(CNSharedProfileOnboardingController *)self stateController];
    v14 = [v13 currentOnboardingVersion];

    v15 = [objc_opt_class() log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = v12 >= v14;
      _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "Should show onboarding: hasShownOnboardingInSettings %d", buf, 8u);
    }

    if (v12 >= v14)
    {
      goto LABEL_7;
    }

    v16 = [(CNSharedProfileOnboardingController *)self hasCompletedOnboarding];
    v29 = [(CNSharedProfileOnboardingController *)self didSkipPosterSetup];
    v17 = [(CNSharedProfileOnboardingController *)self stateController];
    v18 = [v17 deviceSupportsPosters];

    v19 = *MEMORY[0x1E6996540];
    v20 = [v7 wallpaper];
    v21 = [v20 posterArchiveData];
    v22 = (*(v19 + 16))(v19, v21);

    v23 = [v6 wallpaper];
    v24 = [v23 posterArchiveData];
    v25 = (*(v19 + 16))(v19, v24);

    v26 = [objc_opt_class() log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v31 = !v16;
      v32 = 1024;
      v33 = v6 == 0;
      v34 = 1024;
      v35 = v22;
      v36 = 1024;
      v37 = v25;
      v38 = 1024;
      v39 = v29;
      _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEFAULT, "hasNeverCompletedOnboarding %d, hasNoNickname %d, hasNoMeContactPoster %d, hasNoNicknamePoster %d, userSkippedPosterSetup %d", buf, 0x20u);
    }

    if (v6)
    {
      v27 = 1;
    }

    else
    {
      v27 = v16;
    }

    if (v18)
    {
      if (!v27 || !v29 && (v22 & v25 & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    else if (!v27)
    {
LABEL_18:
      LOBYTE(v8) = 1;
      goto LABEL_19;
    }

LABEL_7:
    LOBYTE(v8) = 0;
  }

LABEL_19:

  return v8;
}

- (void)presentOnboardingFlowForNicknameContact:(id)a3 mode:(int64_t)a4 fromViewController:(id)a5
{
  v8 = a5;
  v9 = a3;
  v15 = [(CNSharedProfileOnboardingController *)self meOrPrimaryAccountContact];
  [(CNSharedProfileOnboardingController *)self setBaseViewController:v8];

  v10 = [CNSNaPSetupFlowManager alloc];
  v11 = [(CNSharedProfileOnboardingController *)self contactStore];
  v12 = [(CNSNaPSetupFlowManager *)v10 initWithPresenterDelegate:self contactStore:v11 mode:a4];

  [(CNSharedProfileOnboardingController *)self setSetupFlowManager:v12];
  v13 = [(CNSharedProfileOnboardingController *)self setupFlowManager];
  [v13 setDelegate:self];

  v14 = [(CNSharedProfileOnboardingController *)self setupFlowManager];
  [v14 startOnboardingFlowWithNicknameContact:v9 meContact:v15];

  [(CNSharedProfileOnboardingController *)self writeToDefaultsLastShownOnboardingVersion];
}

- (void)presentOnboardingFlowIfNeededForMode:(int64_t)a3 fromViewController:(id)a4
{
  v6 = a4;
  if ([(CNSharedProfileOnboardingController *)self shouldShowOnboarding])
  {
    if ([(CNSharedProfileOnboardingController *)self canShowOnboardingAllowingMultiplePhoneNumbers:0])
    {
      if ([(CNSharedProfileOnboardingController *)self isPhotosReadyForOnboarding])
      {
        v7 = [MEMORY[0x1E69966E8] currentEnvironment];
        v8 = [v7 featureFlags];
        v9 = [v8 isFeatureEnabled:7];

        if ((v9 & 1) == 0)
        {
          v10 = [MEMORY[0x1E69966E8] currentEnvironment];
          v11 = [v10 nicknameProvider];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __95__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForMode_fromViewController___block_invoke;
          v12[3] = &unk_1E74E63E8;
          v12[4] = self;
          v14 = a3;
          v13 = v6;
          [v11 fetchPersonalNicknameAsContactWithCompletion:v12];
        }
      }
    }
  }
}

void __95__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForMode_fromViewController___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForMode_fromViewController___block_invoke_2;
  v7[3] = &unk_1E74E63C0;
  v5 = a1[5];
  v7[4] = a1[4];
  v8 = v3;
  v10 = a1[6];
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)presentVisualIdentityEditorFromViewController:(id)a3
{
  v4 = a3;
  v9 = [(CNSharedProfileOnboardingController *)self meOrPrimaryAccountContact];
  v5 = [[CNUIVisualIdentityEditorViewController alloc] initWithContact:v9 isMeContact:1 saveChangesToContactStore:1];
  [(CNUIVisualIdentityEditorViewController *)v5 setDelegate:self];
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = -2;
  }

  else
  {
    v8 = 5;
  }

  [(CNUIVisualIdentityEditorViewController *)v5 setModalPresentationStyle:v8];
  [(CNSharedProfileOnboardingController *)self setPresentedViewController:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 pushViewController:v5 animated:1];
  }

  else
  {
    [v4 presentViewController:v5 animated:1 completion:0];
  }
}

- (void)showMultiplePhoneNumbersAlertForNicknamesFromViewController:(id)a3
{
  v3 = MEMORY[0x1E69DC650];
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"SHARING_NICKNAME_FEATURE_NOT_AVAILABLE_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SHARING_NICKNAME_MULTIPLE_PHONE_NUMBERS_MESSAGE_LEGACY" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:0];
  [v13 addAction:v12];

  [v4 presentViewController:v13 animated:1 completion:0];
}

- (void)showiCloudNotSignedInAlertForNicknamesFromViewController:(id)a3
{
  v3 = MEMORY[0x1E69DC650];
  v4 = a3;
  v5 = CNContactsUIBundle();
  v6 = [v5 localizedStringForKey:@"SHARING_NICKNAME_FEATURE_NOT_AVAILABLE_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SHARING_NICKNAME_ICLOUD_NOT_SIGNED_IN_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
  v13 = [v3 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = CNContactsUIBundle();
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:0];
  [v13 addAction:v12];

  [v4 presentViewController:v13 animated:1 completion:0];
}

- (BOOL)accountCanCreateSNaPWithShouldShowErrorAlert:(BOOL)a3 fromViewController:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CNSharedProfileOnboardingController *)self stateController];
  v8 = [v7 iCloudSignedInToUseNicknames];

  if ((v8 & 1) == 0)
  {
    if (v4)
    {
      [(CNSharedProfileOnboardingController *)self showiCloudNotSignedInAlertForNicknamesFromViewController:v6];
    }

    v11 = [objc_opt_class() log];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v12 = "Cannot create SNaP on account because iCloud is not signed in";
    v13 = buf;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E69966E8] currentEnvironment];
  v10 = [v9 featureFlags];
  if ([v10 isFeatureEnabled:26])
  {

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  v15 = [(CNSharedProfileOnboardingController *)self multiplePhoneNumbersTiedToAppleID];

  if (!v15)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    [(CNSharedProfileOnboardingController *)self showMultiplePhoneNumbersAlertForNicknamesFromViewController:v6];
  }

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 0;
    v12 = "Cannot create SNaP on account because multiple numbers are associated with Apple ID";
    v13 = &v17;
LABEL_8:
    _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
  }

LABEL_9:

  v14 = 0;
LABEL_16:

  return v14;
}

- (BOOL)accountCanCreateSNaP
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 accountCanCreateSNaP];

  return v3;
}

- (BOOL)multiplePhoneNumbersTiedToAppleID
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 multiplePhoneNumbersTiedToAppleID];

  return v3;
}

- (BOOL)alwaysShowSNaPOnboarding
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 alwaysShowSNaPOnboarding];

  return v3;
}

- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNSharedProfileOnboardingController *)self stateController];
  LOBYTE(v3) = [v4 canShowOnboardingAllowingMultiplePhoneNumbers:v3];

  return v3;
}

- (BOOL)isPhotosReadyForOnboarding
{
  v2 = [(CNSharedProfileOnboardingController *)self stateController];
  v3 = [v2 isPhotosReadyForOnboarding];

  return v3;
}

- (CNSharedProfileOnboardingController)initWithContactStore:(id)a3 stateController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNSharedProfileOnboardingController;
  v9 = [(CNSharedProfileOnboardingController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v10->_stateController, a4);
    v11 = v10;
  }

  return v10;
}

- (CNSharedProfileOnboardingController)initWithContactStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNSharedProfileOnboardingStateController);
  v6 = [(CNSharedProfileOnboardingController *)self initWithContactStore:v4 stateController:v5];

  return v6;
}

+ (id)sharingSettingsViewControllerForNicknameContact:(id)a3 meContact:(id)a4 mode:(int64_t)a5 contactStore:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = a6;
  v15 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:v13];
  v16 = v9;
  v17 = v16;
  if (!v9)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695CF18]);
    if ([v11 isKeyAvailable:*MEMORY[0x1E695C240]])
    {
      v18 = [v11 givenName];
      [v17 setGivenName:v18];
    }

    else
    {
      [v17 setGivenName:&stru_1F0CE7398];
    }

    if ([v11 isKeyAvailable:*MEMORY[0x1E695C230]])
    {
      v19 = [v11 familyName];
      [v17 setFamilyName:v19];
    }

    else
    {
      [v17 setFamilyName:&stru_1F0CE7398];
    }
  }

  v31 = v17;
  v32 = v13;
  v20 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:v17];
  v21 = a5;
  v22 = [MEMORY[0x1E69966E8] currentEnvironment];
  v23 = [v22 nicknameProvider];
  v24 = [v23 isNicknameSharingEnabled];

  v25 = [MEMORY[0x1E69966E8] currentEnvironment];
  v26 = [v25 nicknameProvider];
  v27 = [v26 sharingAudience];

  LOBYTE(v30) = 1;
  v28 = [[CNMeCardSharingSettingsViewController alloc] initWithContactStore:v14 contact:v11 avatarProvider:v20 nameProvider:v15 sharingEnabled:v24 selectedSharingAudience:v27 showsWallpaperSuggestionsGalleryPicker:v30 headerMode:v21];

  return v28;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_4 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_4, &__block_literal_global_47_60461);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_4;

  return v3;
}

void __64__CNSharedProfileOnboardingController_descriptorForRequiredKeys__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = +[CNMeCardSharingSettingsViewController descriptorForRequiredKeys];
  v1 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:{0, v0}];
  v8[1] = v1;
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForNameOrder];
  v8[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v4 = MEMORY[0x1E695CD58];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharedProfileOnboardingController descriptorForRequiredKeys]_block_invoke"];
  v6 = [v4 descriptorWithKeyDescriptors:v3 description:v5];

  v7 = descriptorForRequiredKeys_cn_once_object_4;
  descriptorForRequiredKeys_cn_once_object_4 = v6;
}

+ (id)log
{
  if (log_cn_once_token_3 != -1)
  {
    dispatch_once(&log_cn_once_token_3, &__block_literal_global_60466);
  }

  v3 = log_cn_once_object_3;

  return v3;
}

uint64_t __42__CNSharedProfileOnboardingController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNSharedProfileOnboardingController");
  v1 = log_cn_once_object_3;
  log_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end