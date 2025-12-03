@interface CNSharedProfileOnboardingController
+ (id)descriptorForRequiredKeys;
+ (id)log;
+ (id)sharingSettingsViewControllerForNicknameContact:(id)contact meContact:(id)meContact mode:(int64_t)mode contactStore:(id)store;
- (BOOL)accountCanCreateSNaP;
- (BOOL)accountCanCreateSNaPWithShouldShowErrorAlert:(BOOL)alert fromViewController:(id)controller;
- (BOOL)alwaysShowSNaPOnboarding;
- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)numbers;
- (BOOL)didSkipPosterSetup;
- (BOOL)hasCompletedOnboarding;
- (BOOL)isPhotosReadyForOnboarding;
- (BOOL)multiplePhoneNumbersTiedToAppleID;
- (BOOL)shouldShowOnboarding;
- (BOOL)shouldShowOnboardingForSettingsWithNicknameContact:(id)contact meContact:(id)meContact;
- (CNSharedProfileOnboardingController)initWithContactStore:(id)store;
- (CNSharedProfileOnboardingController)initWithContactStore:(id)store stateController:(id)controller;
- (CNSharedProfileOnboardingControllerDelegate)delegate;
- (id)meContact;
- (id)meOrPrimaryAccountContact;
- (int64_t)lastShownOnboardingVersion;
- (void)dismiss:(id)dismiss;
- (void)dismissOnboardingIfNeeded;
- (void)onboardingFromFlowManager:(id)manager didSelectSharingAudience:(unint64_t)audience;
- (void)onboardingFromFlowManager:(id)manager didUpdateSharingState:(BOOL)state;
- (void)onboardingFromFlowManager:(id)manager didUpdateWithSharingResult:(id)result;
- (void)presentOnboardingFlowForNicknameContact:(id)contact mode:(int64_t)mode fromViewController:(id)controller;
- (void)presentOnboardingFlowIfNeededForMode:(int64_t)mode fromViewController:(id)controller;
- (void)presentOnboardingFlowIfNeededForSettingsMode:(int64_t)mode fromViewController:(id)controller completion:(id)completion;
- (void)presentSettingsForMode:(int64_t)mode fromViewController:(id)controller;
- (void)presentSettingsForNicknameContact:(id)contact meContact:(id)meContact mode:(int64_t)mode fromViewController:(id)controller;
- (void)presentSettingsForNicknameContact:(id)contact mode:(int64_t)mode fromViewController:(id)controller;
- (void)presentVisualIdentityEditorFromViewController:(id)controller;
- (void)sender:(id)sender dismissViewController:(id)controller;
- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler;
- (void)sender:(id)sender presentViewController:(id)controller;
- (void)showMultiplePhoneNumbersAlertForNicknamesFromViewController:(id)controller;
- (void)showiCloudNotSignedInAlertForNicknamesFromViewController:(id)controller;
- (void)startOnboardingOrEditForMode:(int64_t)mode fromViewController:(id)controller;
- (void)startVisualIdentityOnboardingForMultipleDevicesFromViewController:(id)controller;
- (void)updateNicknameWithAudience:(unint64_t)audience;
- (void)updateNicknameWithSharingResult:(id)result;
- (void)updateNicknameWithSharingState:(BOOL)state;
- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)editing;
- (void)writeToDefaultsCompletedOnboarding:(BOOL)onboarding;
- (void)writeToDefaultsLastShownOnboardingVersion;
@end

@implementation CNSharedProfileOnboardingController

- (BOOL)shouldShowOnboarding
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  shouldShowOnboarding = [stateController shouldShowOnboarding];

  return shouldShowOnboarding;
}

- (CNSharedProfileOnboardingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)visualIdentityEditorViewControllerDidFinishEditing:(id)editing
{
  editingCopy = editing;
  delegate = [(CNSharedProfileOnboardingController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNSharedProfileOnboardingController *)self delegate];
    [delegate2 onboardingControllerDidFinishSetup:self];
  }

  [(CNSharedProfileOnboardingController *)self dismiss:editingCopy];
}

- (void)sender:(id)sender dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  baseViewController = [(CNSharedProfileOnboardingController *)self baseViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__CNSharedProfileOnboardingController_sender_dismissViewController_completionHandler___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [baseViewController dismissViewControllerAnimated:1 completion:v9];
}

uint64_t __86__CNSharedProfileOnboardingController_sender_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBaseViewController:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)sender:(id)sender dismissViewController:(id)controller
{
  v5 = [(CNSharedProfileOnboardingController *)self baseViewController:sender];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__CNSharedProfileOnboardingController_sender_dismissViewController___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:1 completion:v6];
}

- (void)sender:(id)sender presentViewController:(id)controller
{
  controllerCopy = controller;
  baseViewController = [(CNSharedProfileOnboardingController *)self baseViewController];
  presentedViewController = [baseViewController presentedViewController];

  baseViewController2 = [(CNSharedProfileOnboardingController *)self baseViewController];
  v9 = baseViewController2;
  if (presentedViewController)
  {
    presentedViewController2 = [baseViewController2 presentedViewController];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__CNSharedProfileOnboardingController_sender_presentViewController___block_invoke;
    v11[3] = &unk_1E74E77C0;
    v11[4] = self;
    v12 = controllerCopy;
    [presentedViewController2 dismissViewControllerAnimated:0 completion:v11];
  }

  else
  {
    [baseViewController2 presentViewController:controllerCopy animated:1 completion:0];
  }
}

void __68__CNSharedProfileOnboardingController_sender_presentViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) baseViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)onboardingFromFlowManager:(id)manager didSelectSharingAudience:(unint64_t)audience
{
  [(CNSharedProfileOnboardingController *)self updateNicknameWithAudience:audience];

  [(CNSharedProfileOnboardingController *)self writeToDefaultsCompletedOnboarding:1];
}

- (void)onboardingFromFlowManager:(id)manager didUpdateSharingState:(BOOL)state
{
  [(CNSharedProfileOnboardingController *)self updateNicknameWithSharingState:state];

  [(CNSharedProfileOnboardingController *)self writeToDefaultsCompletedOnboarding:1];
}

- (void)onboardingFromFlowManager:(id)manager didUpdateWithSharingResult:(id)result
{
  resultCopy = result;
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "Onboarding controller did finish with sharing result", v7, 2u);
  }

  [(CNSharedProfileOnboardingController *)self updateNicknameWithSharingResult:resultCopy];
  [(CNSharedProfileOnboardingController *)self writeToDefaultsCompletedOnboarding:1];
  [(CNSharedProfileOnboardingController *)self setSetupFlowManager:0];
}

- (void)updateNicknameWithAudience:(unint64_t)audience
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  [nicknameProvider setSharingAudience:audience];
}

- (void)updateNicknameWithSharingState:(BOOL)state
{
  stateCopy = state;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  [nicknameProvider setSharingEnabled:stateCopy];
}

- (void)updateNicknameWithSharingResult:(id)result
{
  v4 = MEMORY[0x1E69966E8];
  resultCopy = result;
  currentEnvironment = [v4 currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  [nicknameProvider setPersonalNicknameWithSharingResult:resultCopy];

  delegate = [(CNSharedProfileOnboardingController *)self delegate];
  LOBYTE(resultCopy) = objc_opt_respondsToSelector();

  if (resultCopy)
  {
    delegate2 = [(CNSharedProfileOnboardingController *)self delegate];
    [delegate2 onboardingControllerDidFinishSetup:self];
  }
}

- (BOOL)didSkipPosterSetup
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  didSkipPosterSetup = [stateController didSkipPosterSetup];

  return didSkipPosterSetup;
}

- (void)writeToDefaultsCompletedOnboarding:(BOOL)onboarding
{
  onboardingCopy = onboarding;
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  [stateController writeToDefaultsCompletedOnboarding:onboardingCopy];
}

- (BOOL)hasCompletedOnboarding
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  hasCompletedOnboarding = [stateController hasCompletedOnboarding];

  return hasCompletedOnboarding;
}

- (int64_t)lastShownOnboardingVersion
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  lastShownOnboardingVersion = [stateController lastShownOnboardingVersion];

  return lastShownOnboardingVersion;
}

- (void)writeToDefaultsLastShownOnboardingVersion
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  [stateController writeToDefaultsLastShownOnboardingVersion];
}

- (id)meOrPrimaryAccountContact
{
  v14 = *MEMORY[0x1E69E9840];
  meContact = [(CNSharedProfileOnboardingController *)self meContact];
  v3 = meContact;
  if (meContact)
  {
    freeze = meContact;
  }

  else
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

    v7 = objc_alloc_init(MEMORY[0x1E695CF18]);
    _cn_firstName = [aa_primaryAppleAccount _cn_firstName];
    [v7 setGivenName:_cn_firstName];

    _cn_lastName = [aa_primaryAppleAccount _cn_lastName];
    [v7 setFamilyName:_cn_lastName];

    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, "Failed to fetch current me contact, falling back to contact created from primary account %@", &v12, 0xCu);
    }

    freeze = [v7 freeze];
  }

  return freeze;
}

- (id)meContact
{
  v12[1] = *MEMORY[0x1E69E9840];
  contactStore = [(CNSharedProfileOnboardingController *)self contactStore];
  descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
  v12[0] = descriptorForRequiredKeys;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9 = 0;
  v5 = [contactStore _crossPlatformUnifiedMeContactWithKeysToFetch:v4 error:&v9];
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

- (void)dismiss:(id)dismiss
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:7];

  presentedViewController = [(CNSharedProfileOnboardingController *)self presentedViewController];
  v8 = presentedViewController;
  if (v6)
  {
    presentingViewController = [presentedViewController presentingViewController];
    v10 = presentingViewController;
    if (presentingViewController)
    {
      presentedViewController2 = presentingViewController;
    }

    else
    {
      presentedViewController2 = [(CNSharedProfileOnboardingController *)self presentedViewController];
    }

    v12 = presentedViewController2;

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
  setupFlowManager = [(CNSharedProfileOnboardingController *)self setupFlowManager];
  [setupFlowManager dismissOnboardingIfNeeded];
}

- (void)presentSettingsForNicknameContact:(id)contact meContact:(id)meContact mode:(int64_t)mode fromViewController:(id)controller
{
  contactCopy = contact;
  meContactCopy = meContact;
  controllerCopy = controller;
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __107__CNSharedProfileOnboardingController_presentSettingsForNicknameContact_meContact_mode_fromViewController___block_invoke;
  v17[3] = &unk_1E74E64D8;
  v17[4] = self;
  v18 = contactCopy;
  v20 = controllerCopy;
  modeCopy = mode;
  v19 = meContactCopy;
  v14 = controllerCopy;
  v15 = meContactCopy;
  v16 = contactCopy;
  [mainThreadScheduler performBlock:v17];
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

- (void)presentSettingsForNicknameContact:(id)contact mode:(int64_t)mode fromViewController:(id)controller
{
  controllerCopy = controller;
  contactCopy = contact;
  meContact = [(CNSharedProfileOnboardingController *)self meContact];
  [(CNSharedProfileOnboardingController *)self presentSettingsForNicknameContact:contactCopy meContact:meContact mode:mode fromViewController:controllerCopy];
}

- (void)presentSettingsForMode:(int64_t)mode fromViewController:(id)controller
{
  controllerCopy = controller;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:7];

  if (v9)
  {
    [(CNSharedProfileOnboardingController *)self presentVisualIdentityEditorFromViewController:controllerCopy];
  }

  else
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment2 nicknameProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__CNSharedProfileOnboardingController_presentSettingsForMode_fromViewController___block_invoke;
    v12[3] = &unk_1E74E63E8;
    v12[4] = self;
    modeCopy = mode;
    v13 = controllerCopy;
    [nicknameProvider fetchPersonalNicknameAsContactWithCompletion:v12];
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

- (void)startOnboardingOrEditForMode:(int64_t)mode fromViewController:(id)controller
{
  controllerCopy = controller;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v9 = [featureFlags isFeatureEnabled:7];

  if (!v9)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__CNSharedProfileOnboardingController_startOnboardingOrEditForMode_fromViewController___block_invoke;
    v13[3] = &unk_1E74E64B0;
    v13[4] = self;
    modeCopy = mode;
    v14 = controllerCopy;
    [(CNSharedProfileOnboardingController *)self presentOnboardingFlowIfNeededForSettingsMode:mode fromViewController:v14 completion:v13];

    goto LABEL_8;
  }

  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags2 = [currentEnvironment2 featureFlags];
  if (![featureFlags2 isFeatureEnabled:26])
  {

    goto LABEL_7;
  }

  multiplePhoneNumbersTiedToAppleID = [(CNSharedProfileOnboardingController *)self multiplePhoneNumbersTiedToAppleID];

  if (!multiplePhoneNumbersTiedToAppleID)
  {
LABEL_7:
    [(CNSharedProfileOnboardingController *)self presentVisualIdentityEditorFromViewController:controllerCopy];
    goto LABEL_8;
  }

  [(CNSharedProfileOnboardingController *)self startVisualIdentityOnboardingForMultipleDevicesFromViewController:controllerCopy];
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

- (void)startVisualIdentityOnboardingForMultipleDevicesFromViewController:(id)controller
{
  controllerCopy = controller;
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [v7 setModalPresentationStyle:2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)];
  [(CNSharedProfileOnboardingController *)self setPresentedViewController:v5];
  [controllerCopy presentViewController:v7 animated:1 completion:0];
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

- (void)presentOnboardingFlowIfNeededForSettingsMode:(int64_t)mode fromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  if ([(CNSharedProfileOnboardingController *)self accountCanCreateSNaPWithShouldShowErrorAlert:1 fromViewController:controllerCopy])
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment nicknameProvider];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __114__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForSettingsMode_fromViewController_completion___block_invoke;
    v12[3] = &unk_1E74E6438;
    v12[4] = self;
    modeCopy = mode;
    v13 = controllerCopy;
    v14 = completionCopy;
    [nicknameProvider fetchPersonalNicknameAsContactWithCompletion:v12];
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

- (BOOL)shouldShowOnboardingForSettingsWithNicknameContact:(id)contact meContact:(id)meContact
{
  v40 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  meContactCopy = meContact;
  v8 = [(CNSharedProfileOnboardingController *)self canShowOnboardingAllowingMultiplePhoneNumbers:1];
  shouldShowOnboarding = [(CNSharedProfileOnboardingController *)self shouldShowOnboarding];
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v31 = v8;
    v32 = 1024;
    v33 = shouldShowOnboarding;
    _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEFAULT, "Should show onboarding: canShowOnboarding %d, newOnboardingVersionAvailable %d", buf, 0xEu);
  }

  if (!shouldShowOnboarding && v8)
  {
    stateController = [(CNSharedProfileOnboardingController *)self stateController];
    lastShowOnboardingVersionInSettings = [stateController lastShowOnboardingVersionInSettings];
    stateController2 = [(CNSharedProfileOnboardingController *)self stateController];
    currentOnboardingVersion = [stateController2 currentOnboardingVersion];

    v15 = [objc_opt_class() log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v31 = lastShowOnboardingVersionInSettings >= currentOnboardingVersion;
      _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "Should show onboarding: hasShownOnboardingInSettings %d", buf, 8u);
    }

    if (lastShowOnboardingVersionInSettings >= currentOnboardingVersion)
    {
      goto LABEL_7;
    }

    hasCompletedOnboarding = [(CNSharedProfileOnboardingController *)self hasCompletedOnboarding];
    didSkipPosterSetup = [(CNSharedProfileOnboardingController *)self didSkipPosterSetup];
    stateController3 = [(CNSharedProfileOnboardingController *)self stateController];
    deviceSupportsPosters = [stateController3 deviceSupportsPosters];

    v19 = *MEMORY[0x1E6996540];
    wallpaper = [meContactCopy wallpaper];
    posterArchiveData = [wallpaper posterArchiveData];
    v22 = (*(v19 + 16))(v19, posterArchiveData);

    wallpaper2 = [contactCopy wallpaper];
    posterArchiveData2 = [wallpaper2 posterArchiveData];
    v25 = (*(v19 + 16))(v19, posterArchiveData2);

    v26 = [objc_opt_class() log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      v31 = !hasCompletedOnboarding;
      v32 = 1024;
      v33 = contactCopy == 0;
      v34 = 1024;
      v35 = v22;
      v36 = 1024;
      v37 = v25;
      v38 = 1024;
      v39 = didSkipPosterSetup;
      _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEFAULT, "hasNeverCompletedOnboarding %d, hasNoNickname %d, hasNoMeContactPoster %d, hasNoNicknamePoster %d, userSkippedPosterSetup %d", buf, 0x20u);
    }

    if (contactCopy)
    {
      v27 = 1;
    }

    else
    {
      v27 = hasCompletedOnboarding;
    }

    if (deviceSupportsPosters)
    {
      if (!v27 || !didSkipPosterSetup && (v22 & v25 & 1) != 0)
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

- (void)presentOnboardingFlowForNicknameContact:(id)contact mode:(int64_t)mode fromViewController:(id)controller
{
  controllerCopy = controller;
  contactCopy = contact;
  meOrPrimaryAccountContact = [(CNSharedProfileOnboardingController *)self meOrPrimaryAccountContact];
  [(CNSharedProfileOnboardingController *)self setBaseViewController:controllerCopy];

  v10 = [CNSNaPSetupFlowManager alloc];
  contactStore = [(CNSharedProfileOnboardingController *)self contactStore];
  v12 = [(CNSNaPSetupFlowManager *)v10 initWithPresenterDelegate:self contactStore:contactStore mode:mode];

  [(CNSharedProfileOnboardingController *)self setSetupFlowManager:v12];
  setupFlowManager = [(CNSharedProfileOnboardingController *)self setupFlowManager];
  [setupFlowManager setDelegate:self];

  setupFlowManager2 = [(CNSharedProfileOnboardingController *)self setupFlowManager];
  [setupFlowManager2 startOnboardingFlowWithNicknameContact:contactCopy meContact:meOrPrimaryAccountContact];

  [(CNSharedProfileOnboardingController *)self writeToDefaultsLastShownOnboardingVersion];
}

- (void)presentOnboardingFlowIfNeededForMode:(int64_t)mode fromViewController:(id)controller
{
  controllerCopy = controller;
  if ([(CNSharedProfileOnboardingController *)self shouldShowOnboarding])
  {
    if ([(CNSharedProfileOnboardingController *)self canShowOnboardingAllowingMultiplePhoneNumbers:0])
    {
      if ([(CNSharedProfileOnboardingController *)self isPhotosReadyForOnboarding])
      {
        currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
        featureFlags = [currentEnvironment featureFlags];
        v9 = [featureFlags isFeatureEnabled:7];

        if ((v9 & 1) == 0)
        {
          currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
          nicknameProvider = [currentEnvironment2 nicknameProvider];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __95__CNSharedProfileOnboardingController_presentOnboardingFlowIfNeededForMode_fromViewController___block_invoke;
          v12[3] = &unk_1E74E63E8;
          v12[4] = self;
          modeCopy = mode;
          v13 = controllerCopy;
          [nicknameProvider fetchPersonalNicknameAsContactWithCompletion:v12];
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

- (void)presentVisualIdentityEditorFromViewController:(id)controller
{
  controllerCopy = controller;
  meOrPrimaryAccountContact = [(CNSharedProfileOnboardingController *)self meOrPrimaryAccountContact];
  v5 = [[CNUIVisualIdentityEditorViewController alloc] initWithContact:meOrPrimaryAccountContact isMeContact:1 saveChangesToContactStore:1];
  [(CNUIVisualIdentityEditorViewController *)v5 setDelegate:self];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    [controllerCopy pushViewController:v5 animated:1];
  }

  else
  {
    [controllerCopy presentViewController:v5 animated:1 completion:0];
  }
}

- (void)showMultiplePhoneNumbersAlertForNicknamesFromViewController:(id)controller
{
  v3 = MEMORY[0x1E69DC650];
  controllerCopy = controller;
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

  [controllerCopy presentViewController:v13 animated:1 completion:0];
}

- (void)showiCloudNotSignedInAlertForNicknamesFromViewController:(id)controller
{
  v3 = MEMORY[0x1E69DC650];
  controllerCopy = controller;
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

  [controllerCopy presentViewController:v13 animated:1 completion:0];
}

- (BOOL)accountCanCreateSNaPWithShouldShowErrorAlert:(BOOL)alert fromViewController:(id)controller
{
  alertCopy = alert;
  controllerCopy = controller;
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  iCloudSignedInToUseNicknames = [stateController iCloudSignedInToUseNicknames];

  if ((iCloudSignedInToUseNicknames & 1) == 0)
  {
    if (alertCopy)
    {
      [(CNSharedProfileOnboardingController *)self showiCloudNotSignedInAlertForNicknamesFromViewController:controllerCopy];
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

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:26])
  {

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  multiplePhoneNumbersTiedToAppleID = [(CNSharedProfileOnboardingController *)self multiplePhoneNumbersTiedToAppleID];

  if (!multiplePhoneNumbersTiedToAppleID)
  {
    goto LABEL_15;
  }

  if (alertCopy)
  {
    [(CNSharedProfileOnboardingController *)self showMultiplePhoneNumbersAlertForNicknamesFromViewController:controllerCopy];
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
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  accountCanCreateSNaP = [stateController accountCanCreateSNaP];

  return accountCanCreateSNaP;
}

- (BOOL)multiplePhoneNumbersTiedToAppleID
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  multiplePhoneNumbersTiedToAppleID = [stateController multiplePhoneNumbersTiedToAppleID];

  return multiplePhoneNumbersTiedToAppleID;
}

- (BOOL)alwaysShowSNaPOnboarding
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  alwaysShowSNaPOnboarding = [stateController alwaysShowSNaPOnboarding];

  return alwaysShowSNaPOnboarding;
}

- (BOOL)canShowOnboardingAllowingMultiplePhoneNumbers:(BOOL)numbers
{
  numbersCopy = numbers;
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  LOBYTE(numbersCopy) = [stateController canShowOnboardingAllowingMultiplePhoneNumbers:numbersCopy];

  return numbersCopy;
}

- (BOOL)isPhotosReadyForOnboarding
{
  stateController = [(CNSharedProfileOnboardingController *)self stateController];
  isPhotosReadyForOnboarding = [stateController isPhotosReadyForOnboarding];

  return isPhotosReadyForOnboarding;
}

- (CNSharedProfileOnboardingController)initWithContactStore:(id)store stateController:(id)controller
{
  storeCopy = store;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = CNSharedProfileOnboardingController;
  v9 = [(CNSharedProfileOnboardingController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_stateController, controller);
    v11 = v10;
  }

  return v10;
}

- (CNSharedProfileOnboardingController)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(CNSharedProfileOnboardingStateController);
  v6 = [(CNSharedProfileOnboardingController *)self initWithContactStore:storeCopy stateController:v5];

  return v6;
}

+ (id)sharingSettingsViewControllerForNicknameContact:(id)contact meContact:(id)meContact mode:(int64_t)mode contactStore:(id)store
{
  contactCopy = contact;
  meContactCopy = meContact;
  v11 = meContactCopy;
  if (contactCopy)
  {
    v12 = contactCopy;
  }

  else
  {
    v12 = meContactCopy;
  }

  v13 = v12;
  storeCopy = store;
  v15 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:v13];
  v16 = contactCopy;
  v17 = v16;
  if (!contactCopy)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695CF18]);
    if ([v11 isKeyAvailable:*MEMORY[0x1E695C240]])
    {
      givenName = [v11 givenName];
      [v17 setGivenName:givenName];
    }

    else
    {
      [v17 setGivenName:&stru_1F0CE7398];
    }

    if ([v11 isKeyAvailable:*MEMORY[0x1E695C230]])
    {
      familyName = [v11 familyName];
      [v17 setFamilyName:familyName];
    }

    else
    {
      [v17 setFamilyName:&stru_1F0CE7398];
    }
  }

  v31 = v17;
  v32 = v13;
  v20 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:v17];
  modeCopy = mode;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider = [currentEnvironment nicknameProvider];
  isNicknameSharingEnabled = [nicknameProvider isNicknameSharingEnabled];

  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  nicknameProvider2 = [currentEnvironment2 nicknameProvider];
  sharingAudience = [nicknameProvider2 sharingAudience];

  LOBYTE(v30) = 1;
  v28 = [[CNMeCardSharingSettingsViewController alloc] initWithContactStore:storeCopy contact:v11 avatarProvider:v20 nameProvider:v15 sharingEnabled:isNicknameSharingEnabled selectedSharingAudience:sharingAudience showsWallpaperSuggestionsGalleryPicker:v30 headerMode:modeCopy];

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