@interface AAUICustodianSetupFlowController
- (AAUICustodianSetupFlowController)initWithAccountManager:(id)manager;
- (AAUICustodianSetupFlowController)initWithAccountManager:(id)manager navigationController:(id)controller;
- (AAUICustodianSetupFlowController)initWithAccountManager:(id)manager navigationController:(id)controller isADPUpsellFlow:(BOOL)flow cdpContext:(id)context;
- (AAUICustodianSetupFlowControllerDelegate)delegate;
- (BOOL)_hasManatee;
- (BOOL)isUpsellInSettings;
- (UIViewController)presentedViewController;
- (id)_setupContactSelectorVCWithViewModel:(id)model andSuggestedContacts:(id)contacts;
- (id)navController;
- (void)_beginAddRecoveryContactAfterSelectFlow:(id)flow;
- (void)_beginAddRecoveryContactAfterSelectFlow:(id)flow ifIsVerified:(BOOL)verified andNoError:(id)error;
- (void)_beginAddRecoveryContactFlow;
- (void)_beginAddRecoveryContactUpsellFlow;
- (void)_cancelCustodianInvite;
- (void)_continueAddRecoveryContactFlow;
- (void)_continueAddRecoveryContactUpsellFlow;
- (void)_dismissCFUIfNeeded;
- (void)_dismissWithCancel;
- (void)_dismissWithError:(id)error;
- (void)_displayAlertForNotReachableContact:(id)contact;
- (void)_displayCustodianAddNotAllowedAlert;
- (void)_displayRatchetGenericErrorAlert;
- (void)_fetchSuggestedContacts;
- (void)_fetchSuggestedContactsForUpsell;
- (void)_hideActivityIndicator;
- (void)_inviteContact:(id)contact;
- (void)_loadRemoteUIPresenterRequest:(id)request;
- (void)_postAdpUpsellCFUCustodianFirstTimeSetupEvent;
- (void)_removeRecoveryKeyAndDismissCFUIfNeeded;
- (void)_sendEscapeOfferSelectedEvent:(id)event;
- (void)_sendTelemetryEventWithEscapeOffers:(id)offers offers:(id)a4;
- (void)_sendTelemetryForEvent:(id)event didSucceed:(BOOL)succeed error:(id)error;
- (void)_showActivityIndicator;
- (void)_showAlertWithTitle:(id)title message:(id)message;
- (void)_showChooseContact;
- (void)_showChooseContactWithCancel;
- (void)_showDataRecoveryServiceEnableUIWithPresenter:(id)presenter modal:(BOOL)modal;
- (void)_showDeviceUpgradeUI;
- (void)_showFirstTimeSetup;
- (void)_showSuggestedContactSelector:(id)selector;
- (void)_startInviteMessageFlow;
- (void)_validateAccountWithCompletion:(id)completion;
- (void)_verifyAndInviteContact:(id)contact;
- (void)_verifyCDPWithCompletion:(id)completion;
- (void)accountContactSelector:(id)selector didSelectContact:(id)contact;
- (void)accountContactSelectorDismiss:(id)dismiss;
- (void)accountContactSelectorShowOtherContacts:(id)contacts;
- (void)chooseContactController:(id)controller didSelectContact:(id)contact;
- (void)dealloc;
- (void)didSelectLocalContactFor:(id)for;
- (void)didTapDismissAddRC;
- (void)didTapPrimaryButton;
- (void)inviteMessageFlowDidFinish:(id)finish;
- (void)inviteMessageFlowWasCancelled:(id)cancelled;
- (void)remoteUIDidDismiss:(id)dismiss;
- (void)start;
- (void)startAddingDataRecoveryService:(id)service;
- (void)startWithoutFirstTimeSetup;
@end

@implementation AAUICustodianSetupFlowController

- (AAUICustodianSetupFlowController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_opt_new();
  v6 = [(AAUICustodianSetupFlowController *)self initWithAccountManager:managerCopy navigationController:v5];

  return v6;
}

- (AAUICustodianSetupFlowController)initWithAccountManager:(id)manager navigationController:(id)controller
{
  controllerCopy = controller;
  managerCopy = manager;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Instantiating AAUICustodianSetupFlowController with nil cdpContext", v11, 2u);
  }

  v9 = [(AAUICustodianSetupFlowController *)self initWithAccountManager:managerCopy navigationController:controllerCopy isADPUpsellFlow:0 cdpContext:0];
  return v9;
}

- (AAUICustodianSetupFlowController)initWithAccountManager:(id)manager navigationController:(id)controller isADPUpsellFlow:(BOOL)flow cdpContext:(id)context
{
  managerCopy = manager;
  controllerCopy = controller;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = AAUICustodianSetupFlowController;
  v14 = [(AAUICustodianSetupFlowController *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_navigationController, controller);
    objc_storeStrong(&v15->_accountManager, manager);
    v16 = objc_opt_new();
    custodianController = v15->_custodianController;
    v15->_custodianController = v16;

    v15->_isADPUpsellFlow = flow;
    objc_storeStrong(&v15->_cdpContext, context);
    v18 = objc_alloc_init(MEMORY[0x1E698DD40]);
    v19 = [[AAUIDTOHelper alloc] initWithDTOController:v18];
    dtoHelper = v15->_dtoHelper;
    v15->_dtoHelper = v19;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    telemetryFlowID = v15->_telemetryFlowID;
    v15->_telemetryFlowID = uUIDString;
  }

  return v15;
}

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Setup flow controller deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AAUICustodianSetupFlowController;
  [(AAUICustodianSetupFlowController *)&v4 dealloc];
}

- (void)start
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Initiating Custodian setup flow...", v4, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _showFirstTimeSetup];
}

- (void)startWithoutFirstTimeSetup
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Skipping first time setup. No need to do DTO check. Showing Add Recovery Contact flow.", v4, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _continueAddRecoveryContactFlow];
}

- (void)startAddingDataRecoveryService:(id)service
{
  serviceCopy = service;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Initating data recovery service enable UI", v6, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _showDataRecoveryServiceEnableUIWithPresenter:serviceCopy modal:[(AAUICustodianSetupFlowController *)self forceInlinePresentation]^ 1];
}

- (void)chooseContactController:(id)controller didSelectContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if ([(AAUICustodianSetupFlowController *)self uiVersion]== 1)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__AAUICustodianSetupFlowController_chooseContactController_didSelectContact___block_invoke;
    v8[3] = &unk_1E820DC48;
    objc_copyWeak(&v10, &location);
    v9 = contactCopy;
    [(AAUICustodianSetupFlowController *)self _validateAccountWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AAUICustodianSetupFlowController *)self _verifyAndInviteContact:contactCopy];
  }
}

void __77__AAUICustodianSetupFlowController_chooseContactController_didSelectContact___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _beginAddRecoveryContactAfterSelectFlow:*(a1 + 32) ifIsVerified:a2 andNoError:v5];
}

- (void)accountContactSelector:(id)selector didSelectContact:(id)contact
{
  selectorCopy = selector;
  contactCopy = contact;
  if ([(AAUICustodianSetupFlowController *)self uiVersion]== 1)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__AAUICustodianSetupFlowController_accountContactSelector_didSelectContact___block_invoke;
    v8[3] = &unk_1E820DC48;
    objc_copyWeak(&v10, &location);
    v9 = contactCopy;
    [(AAUICustodianSetupFlowController *)self _validateAccountWithCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AAUICustodianSetupFlowController *)self _verifyAndInviteContact:contactCopy];
  }
}

void __76__AAUICustodianSetupFlowController_accountContactSelector_didSelectContact___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _beginAddRecoveryContactAfterSelectFlow:*(a1 + 32) ifIsVerified:a2 andNoError:v5];
}

- (void)accountContactSelectorDismiss:(id)dismiss
{
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698DB28] code:-7003 userInfo:0];
  [(AAUICustodianSetupFlowController *)self _dismissWithError:v4];
}

- (void)accountContactSelectorShowOtherContacts:(id)contacts
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AAUICustodianSetupFlowController_accountContactSelectorShowOtherContacts___block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_startInviteMessageFlow
{
  v5 = *MEMORY[0x1E69E9840];
  navController = [self navController];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "Opening invitation flow with navigation controller: %@", v4, 0xCu);
}

- (void)_loadRemoteUIPresenterRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_new();
  [v5 setURL:requestCopy];

  [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setDelegate:self];
  [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter loadRequest:v5];
}

- (void)remoteUIDidDismiss:(id)dismiss
{
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5307 userInfo:0];
  [(AAUICustodianSetupFlowController *)self _dismissWithError:v4];
}

- (void)_sendTelemetryEventWithEscapeOffers:(id)offers offers:(id)a4
{
  offersCopy = offers;
  v6 = a4;
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v8 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v8)
  {
    v9 = MEMORY[0x1E6985DB0];
    aida_alternateDSID = [v8 aida_alternateDSID];
    telemetryFlowID = [(AAUICustodianSetupFlowController *)self telemetryFlowID];
    v12 = [v9 analyticsEventWithName:offersCopy altDSID:aida_alternateDSID flowID:telemetryFlowID];

    aaf_arrayAsCommaSeperatedString = [v6 aaf_arrayAsCommaSeperatedString];
    [v12 setObject:aaf_arrayAsCommaSeperatedString forKeyedSubscript:*MEMORY[0x1E6997818]];

    reporter = [MEMORY[0x1E698B810] reporter];
    [reporter sendEvent:v12];
  }
}

- (void)_sendEscapeOfferSelectedEvent:(id)event
{
  eventCopy = event;
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v5 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v5)
  {
    v6 = MEMORY[0x1E6985DB0];
    v7 = *MEMORY[0x1E698BA68];
    aida_alternateDSID = [v5 aida_alternateDSID];
    telemetryFlowID = [(AAUICustodianSetupFlowController *)self telemetryFlowID];
    v10 = [v6 analyticsEventWithName:v7 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    [v10 setObject:eventCopy forKeyedSubscript:*MEMORY[0x1E6997820]];
    reporter = [MEMORY[0x1E698B810] reporter];
    [reporter sendEvent:v10];
  }
}

- (void)_sendTelemetryForEvent:(id)event didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  eventCopy = event;
  errorCopy = error;
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v10 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v10)
  {
    v11 = MEMORY[0x1E6985DB0];
    aida_alternateDSID = [v10 aida_alternateDSID];
    telemetryFlowID = [(AAUICustodianSetupFlowController *)self telemetryFlowID];
    v14 = [v11 analyticsEventWithName:eventCopy altDSID:aida_alternateDSID flowID:telemetryFlowID];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:succeedCopy];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6985E40]];

    [v14 populateUnderlyingErrorsStartingWithRootError:errorCopy];
    reporter = [MEMORY[0x1E698B810] reporter];
    [reporter sendEvent:v14];
  }
}

- (void)_showFirstTimeSetup
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [[AAUIOBCustodianIntroViewModel alloc] initHidingNotNowButton:self->_isADPUpsellFlow];
  [v3 setIsWalrusEnabled:self->_isWalrusEnabled];
  v4 = *MEMORY[0x1E698BA18];
  v5 = *MEMORY[0x1E698BB28];
  v14[0] = *MEMORY[0x1E698BB18];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(AAUICustodianSetupFlowController *)self _sendTelemetryEventWithEscapeOffers:v4 offers:v6];

  if ([(AAUICustodianSetupFlowController *)self uiVersion]== 1)
  {
    [(AAUICustodianSetupFlowController *)self _beginAddRecoveryContactUpsellFlow];
  }

  else if ([(AAUICustodianSetupFlowController *)self isUpsellInSettings])
  {
    [(AAUICustodianSetupFlowController *)self setUiVersion:1];
    [(AAUICustodianSetupFlowController *)self _beginAddRecoveryContactFlow];
  }

  else
  {
    v7 = [[AAUIOBWelcomeController alloc] initWithViewModel:v3];
    firstTimeSetupVC = self->_firstTimeSetupVC;
    self->_firstTimeSetupVC = v7;

    primaryButton = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC primaryButton];
    [primaryButton addTarget:self action:sel__beginAddRecoveryContactFlow forEvents:64];

    isADPUpsellFlow = self->_isADPUpsellFlow;
    secondaryButton = _AAUILogSystem();
    v12 = os_log_type_enabled(secondaryButton, OS_LOG_TYPE_DEBUG);
    if (isADPUpsellFlow)
    {
      if (v12)
      {
        [AAUICustodianSetupFlowController _showFirstTimeSetup];
      }
    }

    else
    {
      if (v12)
      {
        [AAUICustodianSetupFlowController _showFirstTimeSetup];
      }

      secondaryButton = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC secondaryButton];
      [secondaryButton addTarget:self action:sel__dismissWithCancel forEvents:64];
    }

    navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
    [navigationController pushViewController:self->_firstTimeSetupVC animated:1];

    if (self->_isADPUpsellFlow)
    {
      [(AAUICustodianSetupFlowController *)self _postAdpUpsellCFUCustodianFirstTimeSetupEvent];
    }
  }
}

- (void)_postAdpUpsellCFUCustodianFirstTimeSetupEvent
{
  v3 = MEMORY[0x1E6985DB0];
  altDSID = [(CDPContext *)self->_cdpContext altDSID];
  telemetryFlowID = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v7 = [v3 analyticsEventWithName:@"com.apple.appleaccount.custodianFirstTimeSetup" altDSID:altDSID flowID:telemetryFlowID];

  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v7];
}

- (void)_beginAddRecoveryContactFlow
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v4)
  {
    dtoHelper = self->_dtoHelper;
    aa_altDSID = [v4 aa_altDSID];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__AAUICustodianSetupFlowController__beginAddRecoveryContactFlow__block_invoke;
    v8[3] = &unk_1E820C140;
    v8[4] = self;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:aa_altDSID completion:v8];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAUIRecoveryFactorController startAddingRecoveryContact];
    }
  }
}

void __64__AAUICustodianSetupFlowController__beginAddRecoveryContactFlow__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __64__AAUICustodianSetupFlowController__beginAddRecoveryContactFlow__block_invoke_cold_1();
    }

    v4 = v7;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v5 = __64__AAUICustodianSetupFlowController__beginAddRecoveryContactFlow__block_invoke_80;
  }

  else
  {
    v4 = v6;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v5 = __64__AAUICustodianSetupFlowController__beginAddRecoveryContactFlow__block_invoke_2;
  }

  v4[2] = v5;
  v4[3] = &unk_1E820B8F0;
  v4[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __64__AAUICustodianSetupFlowController__beginAddRecoveryContactFlow__block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39_cold_1();
  }

  return [*(a1 + 32) _displayCustodianAddNotAllowedAlert];
}

- (void)_beginAddRecoveryContactAfterSelectFlow:(id)flow ifIsVerified:(BOOL)verified andNoError:(id)error
{
  verifiedCopy = verified;
  flowCopy = flow;
  errorCopy = error;
  if ([errorCopy ak_isIncompatibleDevicesError])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow_ifIsVerified_andNoError___block_invoke;
    block[3] = &unk_1E820B8F0;
    block[4] = self;
    v10 = MEMORY[0x1E69E96A0];
    v11 = block;
  }

  else
  {
    if ([errorCopy ak_isUserCancelError])
    {
      [(AAUICustodianSetupFlowController *)self _dismissWithError:errorCopy];
      goto LABEL_8;
    }

    if (verifiedCopy)
    {
      [(AAUICustodianSetupFlowController *)self _beginAddRecoveryContactAfterSelectFlow:flowCopy];
      goto LABEL_8;
    }

    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AAUICustodianSetupFlowController _beginAddRecoveryContactAfterSelectFlow:ifIsVerified:andNoError:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow_ifIsVerified_andNoError___block_invoke_82;
    v13[3] = &unk_1E820B8F0;
    v13[4] = self;
    v10 = MEMORY[0x1E69E96A0];
    v11 = v13;
  }

  dispatch_async(v10, v11);
LABEL_8:
}

void __100__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow_ifIsVerified_andNoError___block_invoke_82(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) primaryButton];
  [v1 setEnabled:1];
}

- (void)_beginAddRecoveryContactAfterSelectFlow:(id)flow
{
  flowCopy = flow;
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v6 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v6)
  {
    isFamilyMember = [flowCopy isFamilyMember];
    v8 = kAATrustedContactsRCUpselluserSelectSuggestedContactFamily;
    if (!isFamilyMember)
    {
      v8 = kAATrustedContactsRCUpselluserSelectSuggestedContactDeviceIntelligence;
    }

    [(AAUICustodianSetupFlowController *)self _sendTelemetryForEvent:*v8 didSucceed:1 error:0];
    dtoHelper = self->_dtoHelper;
    aa_altDSID = [v6 aa_altDSID];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke;
    v12[3] = &unk_1E820DC70;
    v12[4] = self;
    v13 = flowCopy;
    [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:aa_altDSID completion:v12];
  }

  else
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AAUIRecoveryFactorController startAddingRecoveryContact];
    }
  }
}

void __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_85;
    v15[3] = &unk_1E820BEB8;
    v12 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
    v13 = v16;
LABEL_10:

    return;
  }

  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_cold_1();
  }

  if (![*(*(a1 + 32) + 96) isDTOGatingEnabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_2;
    block[3] = &unk_1E820BEB8;
    v14 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v18 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v13 = v18;
    goto LABEL_10;
  }

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_cold_2();
  }

  v5 = *(a1 + 32);
  v6 = v5[12];
  v7 = [v5 navigationController];
  v8 = [v6 makeRatchetContextWithPresentationContext:v7 DTOContextType:1];

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 96);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_83;
  v19[3] = &unk_1E820CCC8;
  v19[4] = v10;
  v20 = v9;
  [v11 shouldAllowOpForContext:v8 completion:v19];
}

void __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_83(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_83_cold_1();
  }

  if (a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_84;
    v10[3] = &unk_1E820BEB8;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7114 userInfo:0];
    [v8 _sendTelemetryForEvent:@"com.apple.appleaccount.custodian.ui.setup.skippedSuggestionList" didSucceed:0 error:v9];

    [*(a1 + 32) _dismissWithError:0];
  }
}

uint64_t __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_2(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _verifyAndInviteContact:*(a1 + 40)];
}

uint64_t __76__AAUICustodianSetupFlowController__beginAddRecoveryContactAfterSelectFlow___block_invoke_85(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_39_cold_1();
  }

  return [*(a1 + 32) _verifyAndInviteContact:*(a1 + 40)];
}

- (void)_continueAddRecoveryContactFlow
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AAUICustodianSetupFlowController _continueAddRecoveryContactFlow];
  }

  primaryButton = [(AAUIOBWelcomeController *)self->_firstTimeSetupVC primaryButton];
  [primaryButton setEnabled:0];

  [(AAUICustodianSetupFlowController *)self _showActivityIndicator];
  [(AAUICustodianSetupFlowController *)self _sendEscapeOfferSelectedEvent:*MEMORY[0x1E698BB18]];
  if ([(AAUICustodianSetupFlowController *)self isUpsellInSettings])
  {
    [(AAUICustodianSetupFlowController *)self _fetchSuggestedContactsForUpsell];
  }

  else
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__AAUICustodianSetupFlowController__continueAddRecoveryContactFlow__block_invoke;
    v5[3] = &unk_1E820D308;
    objc_copyWeak(&v6, &location);
    [(AAUICustodianSetupFlowController *)self _validateAccountWithCompletion:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __67__AAUICustodianSetupFlowController__continueAddRecoveryContactFlow__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ([v5 ak_isIncompatibleDevicesError])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _showDeviceUpgradeUI];
  }

  else if ([v5 ak_isUserCancelError])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _dismissWithError:v5];
  }

  else if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _fetchSuggestedContacts];
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AAUICustodianSetupFlowController _beginAddRecoveryContactAfterSelectFlow:ifIsVerified:andNoError:];
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    WeakRetained = v8;
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AAUICustodianSetupFlowController__continueAddRecoveryContactFlow__block_invoke_86;
      block[3] = &unk_1E820B8F0;
      block[4] = v8;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __67__AAUICustodianSetupFlowController__continueAddRecoveryContactFlow__block_invoke_86(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) primaryButton];
  [v1 setEnabled:1];
}

- (void)_displayCustodianAddNotAllowedAlert
{
  makeCustodianAddOpNotAllowedAlert = [(AAUIDTOHelper *)self->_dtoHelper makeCustodianAddOpNotAllowedAlert];
  navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  [navigationController presentViewController:makeCustodianAddOpNotAllowedAlert animated:1 completion:0];
}

- (void)_displayRatchetGenericErrorAlert
{
  makeGenericRatchetFailedAlert = [(AAUIDTOHelper *)self->_dtoHelper makeGenericRatchetFailedAlert];
  navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  [navigationController presentViewController:makeGenericRatchetFailedAlert animated:1 completion:0];
}

- (void)_beginAddRecoveryContactUpsellFlow
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v4)
  {
    if ([(AAUICustodianSetupFlowController *)self _isiMessageEnabled])
    {
      v5 = _AAUILogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [AAUICustodianSetupFlowController _beginAddRecoveryContactUpsellFlow];
      }

      dtoHelper = self->_dtoHelper;
      aa_altDSID = [v4 aa_altDSID];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_87;
      v9[3] = &unk_1E820C140;
      v9[4] = self;
      [(AAUIDTOHelper *)dtoHelper shouldGateUsingRatchetForAltDSID:aa_altDSID completion:v9];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke;
      block[3] = &unk_1E820B8F0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUIRecoveryFactorController startAddingRecoveryContact];
    }
  }
}

uint64_t __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_cold_1();
  }

  return [*(a1 + 32) _dismissWithError:0];
}

void __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_87(uint64_t a1, int a2)
{
  if (!a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_91;
    v13[3] = &unk_1E820B8F0;
    v13[4] = *(a1 + 32);
    v11 = MEMORY[0x1E69E96A0];
    v12 = v13;
LABEL_10:
    dispatch_async(v11, v12);
    return;
  }

  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_87_cold_1();
  }

  if (![*(*(a1 + 32) + 96) isDTOGatingEnabled])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_90;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    v11 = MEMORY[0x1E69E96A0];
    v12 = block;
    goto LABEL_10;
  }

  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_87_cold_2();
  }

  v5 = *(a1 + 32);
  v6 = v5[12];
  v7 = [v5 navigationController];
  v8 = [v6 makeRatchetContextWithPresentationContext:v7 DTOContextType:1 fallbackToNoAuth:1 notInteractive:1];

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_88;
  v15[3] = &unk_1E820C1A8;
  v15[4] = v9;
  [v10 shouldAllowOpForContext:v8 completion:v15];
}

void __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_88(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_88_cold_1();
  }

  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_89;
    block[3] = &unk_1E820B8F0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_88_cold_2();
    }

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7114 userInfo:0];
    [v8 _sendTelemetryForEvent:@"com.apple.appleaccount.custodian.ui.setup.skippedSuggestionList" didSucceed:0 error:v9];

    [*(a1 + 32) _dismissWithError:0];
  }
}

uint64_t __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_89(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_89_cold_1();
  }

  return [*(a1 + 32) _continueAddRecoveryContactUpsellFlow];
}

uint64_t __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_90(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__AAUIRecoveryFactorController_startAddingRecoveryContact__block_invoke_2_cold_1();
  }

  return [*(a1 + 32) _continueAddRecoveryContactUpsellFlow];
}

uint64_t __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_91(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__AAUICustodianSetupFlowController__beginAddRecoveryContactUpsellFlow__block_invoke_91_cold_1();
  }

  return [*(a1 + 32) _dismissWithError:0];
}

- (void)_continueAddRecoveryContactUpsellFlow
{
  _hasManatee = [(AAUICustodianSetupFlowController *)self _hasManatee];
  v4 = _AAUILogSystem();
  v5 = v4;
  if (_hasManatee)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [AAUICustodianSetupFlowController _continueAddRecoveryContactUpsellFlow];
    }

    [(AAUICustodianSetupFlowController *)self _showActivityIndicator];
    [(AAUICustodianSetupFlowController *)self _sendEscapeOfferSelectedEvent:*MEMORY[0x1E698BB18]];
    [(AAUICustodianSetupFlowController *)self _fetchSuggestedContactsForUpsell];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AAUICustodianSetupFlowController _continueAddRecoveryContactUpsellFlow];
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698DB28] code:-7013 userInfo:0];
    [(AAUICustodianSetupFlowController *)self _dismissWithError:v6];
  }
}

- (BOOL)_hasManatee
{
  v2 = objc_alloc(MEMORY[0x1E6997800]);
  v3 = +[AAUICDPHelper cdpContextForPrimaryAccount];
  v4 = [v2 initWithContext:v3];

  LOBYTE(v3) = [v4 isManateeAvailable:0];
  return v3;
}

- (void)_showDataRecoveryServiceEnableUIWithPresenter:(id)presenter modal:(BOOL)modal
{
  modalCopy = modal;
  presenterCopy = presenter;
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v8 = [mEMORY[0x1E698DDF8] urlAtKey:*MEMORY[0x1E698DC60]];

  if (v8)
  {
    [(AAUICustodianSetupFlowController *)self _showActivityIndicator];
    v9 = [[AAUIGrandSlamRemoteUIPresenter alloc] initWithAccountManager:self->_accountManager hookType:2 presenter:presenterCopy];
    remoteUIPresenter = self->_remoteUIPresenter;
    self->_remoteUIPresenter = v9;

    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setModalInPresentation:modalCopy];
    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setShowCancelInModalPresentation:1];
    [(AAUICustodianSetupFlowController *)self _loadRemoteUIPresenterRequest:v8];
  }

  else
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Unable to load data recovery service enable remote UI. We're missing the URL from the URL bag.", v13, 2u);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B778] code:-7000 userInfo:0];
    [(AAUICustodianSetupFlowController *)self _dismissWithError:v12];
  }
}

- (void)_validateAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  accountManager = self->_accountManager;
  if (!accountManager)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAUICustodianSetupFlowController _validateAccountWithCompletion:];
    }

    accountManager = self->_accountManager;
  }

  accounts = [(AIDAAccountManager *)accountManager accounts];
  v8 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  if (v8)
  {
    v9 = MEMORY[0x1E6985DB0];
    v10 = *MEMORY[0x1E698BA38];
    aida_alternateDSID = [v8 aida_alternateDSID];
    telemetryFlowID = [(AAUICustodianSetupFlowController *)self telemetryFlowID];
    v13 = [v9 analyticsEventWithName:v10 altDSID:aida_alternateDSID flowID:telemetryFlowID];

    objc_initWeak(&location, self);
    v14 = objc_opt_new();
    navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
    presentingViewController = [navigationController presentingViewController];
    LODWORD(telemetryFlowID) = [(AAUIDTOHelper *)self->_dtoHelper isDTOGatingEnabled];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__AAUICustodianSetupFlowController__validateAccountWithCompletion___block_invoke;
    v19[3] = &unk_1E820DC98;
    objc_copyWeak(&v22, &location);
    v19[4] = self;
    v17 = v13;
    v20 = v17;
    v21 = completionCopy;
    [v14 aaui_custodianAuthForAccount:v8 presentingViewController:presentingViewController forceInteraction:telemetryFlowID ^ 1 completion:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AAUICustodianSetupFlowController _validateAccountWithCompletion:];
    }

    v17 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4404];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }
}

void __67__AAUICustodianSetupFlowController__validateAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v6 || v7)
  {
    [*(a1 + 32) _hideActivityIndicator];
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __82__AAUIMyCustodianActionHandler__continueDoingDestructiveAction_specifier_account___block_invoke_cold_1();
    }

    [*(a1 + 40) populateUnderlyingErrorsStartingWithRootError:v7];
    [*(a1 + 40) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    v13 = [MEMORY[0x1E698B810] reporter];
    [v13 sendEvent:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Authentication successful, continue setup...", v14, 2u);
    }

    [*(a1 + 40) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    v10 = [MEMORY[0x1E698B810] reporter];
    [v10 sendEvent:*(a1 + 40)];

    objc_storeStrong(WeakRetained + 4, a2);
    v11 = objc_loadWeakRetained((a1 + 56));
    [v11 _verifyCDPWithCompletion:*(a1 + 48)];
  }
}

- (void)_verifyCDPWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[AAUID2DEncryptionFlowContext alloc] initWithType:2];
  v6 = [AAUIManateeStateValidator alloc];
  navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  v8 = [(AAUIManateeStateValidator *)v6 initWithFlowContext:v5 withPresentingViewController:navigationController];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__AAUICustodianSetupFlowController__verifyCDPWithCompletion___block_invoke;
  v11[3] = &unk_1E820C988;
  v12 = v8;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = v8;
  [(AAUIManateeStateValidator *)v10 verifyAndRepairManateeWithCompletion:v11];
}

uint64_t __61__AAUICustodianSetupFlowController__verifyCDPWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showDeviceUpgradeUI
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Show device upgrade UI...", buf, 2u);
  }

  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v5 = [mEMORY[0x1E698DDF8] urlAtKey:*MEMORY[0x1E698DC68]];

  if (v5)
  {
    navController = [(AAUICustodianSetupFlowController *)self navController];
    topViewController = [navController topViewController];
    firstTimeSetupVC = topViewController;
    if (!topViewController)
    {
      firstTimeSetupVC = self->_firstTimeSetupVC;
    }

    v9 = firstTimeSetupVC;

    v10 = [[AAUIGrandSlamRemoteUIPresenter alloc] initWithAccountManager:self->_accountManager presenter:v9];
    remoteUIPresenter = self->_remoteUIPresenter;
    self->_remoteUIPresenter = v10;

    [(AAUIGrandSlamRemoteUIPresenter *)self->_remoteUIPresenter setModalInPresentation:1];
    [(AAUICustodianSetupFlowController *)self _loadRemoteUIPresenterRequest:v5];
  }

  else
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Unable to load device upgrade remote UI. We're missing the URL from the URL bag.", v14, 2u);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B778] code:-7000 userInfo:0];
    [(AAUICustodianSetupFlowController *)self _dismissWithError:v13];
  }
}

- (void)_fetchSuggestedContacts
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Fetching suggested contacts...", buf, 2u);
  }

  v4 = objc_opt_new();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AAUICustodianSetupFlowController__fetchSuggestedContacts__block_invoke;
  v5[3] = &unk_1E820DCC0;
  v5[4] = self;
  [v4 fetchSuggestedCustodiansWithImagesOfSize:v5 andCompletion:50.0];
}

void __59__AAUICustodianSetupFlowController__fetchSuggestedContacts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AAUICustodianSetupFlowController__fetchSuggestedContacts__block_invoke_2;
  v5[3] = &unk_1E820BEB8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __59__AAUICustodianSetupFlowController__fetchSuggestedContacts__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 aaui_hideActivityIndicator];

  v3 = [*(a1 + 40) count];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(a1 + 40);

    [v4 _showSuggestedContactSelector:v5];
  }

  else
  {
    v6 = [v4 uiVersion];
    v7 = *(a1 + 32);
    if (v6 == 1)
    {
      [v7 _dismissWithError:0];
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7116 userInfo:0];
      [v8 _sendTelemetryForEvent:@"com.apple.appleaccount.custodian.ui.setup.skippedSuggestionList" didSucceed:0 error:v9];
    }

    else
    {

      [v7 _showChooseContactWithCancel];
    }
  }
}

- (void)_fetchSuggestedContactsForUpsell
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Fetching suggested contacts for upsell...", buf, 2u);
  }

  v4 = _AAUISignpostLogSystem();
  v5 = _AAUISignpostCreate(v4);
  v7 = v6;

  v8 = _AAUISignpostLogSystem();
  v9 = v8;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "FetchSuggestedContactsUpsell", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v5;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchSuggestedContactsUpsell  enableTelemetry=YES ", buf, 0xCu);
  }

  v11 = objc_opt_new();
  telemetryFlowID = [(AAUICustodianSetupFlowController *)self telemetryFlowID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AAUICustodianSetupFlowController__fetchSuggestedContactsForUpsell__block_invoke;
  v13[3] = &unk_1E820DD10;
  v13[5] = v5;
  v13[6] = v7;
  v13[4] = self;
  [v11 fetchSuggestedCustodiansForUpsellWithImagesOfSize:telemetryFlowID telemetryFlowID:v13 andCompletion:50.0];
}

void __68__AAUICustodianSetupFlowController__fetchSuggestedContactsForUpsell__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__AAUICustodianSetupFlowController__fetchSuggestedContactsForUpsell__block_invoke_2;
  v6[3] = &unk_1E820DCE8;
  v9 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __68__AAUICustodianSetupFlowController__fetchSuggestedContactsForUpsell__block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  Nanoseconds = _AAUISignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v3 = _AAUISignpostLogSystem();
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = [*(a1 + 32) count];
    v17 = 67240192;
    LODWORD(v18) = v6;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v4, OS_SIGNPOST_INTERVAL_END, v5, "FetchSuggestedContactsUpsell", " SuggestedContacts=%{public,signpost.telemetry:number1,name=SuggestedContacts}d ", &v17, 8u);
  }

  v7 = _AAUISignpostLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = Nanoseconds / 1000000000.0;
    v9 = *(a1 + 48);
    v10 = [*(a1 + 32) count];
    v17 = 134218496;
    v18 = v9;
    v19 = 2048;
    v20 = v8;
    v21 = 1026;
    v22 = v10;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchSuggestedContactsUpsell  SuggestedContacts=%{public,signpost.telemetry:number1,name=SuggestedContacts}d ", &v17, 0x1Cu);
  }

  v11 = [*(a1 + 40) navigationController];
  [v11 aaui_hideActivityIndicator];

  v12 = [*(a1 + 32) count];
  v13 = *(a1 + 40);
  if (v12)
  {
    goto LABEL_7;
  }

  if ([v13 uiVersion] == 1 && (objc_msgSend(*(a1 + 40), "isUpsellInSettings") & 1) == 0)
  {
    [*(a1 + 40) _dismissWithError:0];
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-7116 userInfo:0];
    [v15 _sendTelemetryForEvent:@"com.apple.appleaccount.custodian.ui.setup.skippedSuggestionList" didSucceed:0 error:v16];
  }

  else
  {
    v14 = [*(a1 + 40) isUpsellInSettings];
    v13 = *(a1 + 40);
    if (v14)
    {
LABEL_7:
      [v13 _showSuggestedContactSelector:*(a1 + 32)];
      return;
    }

    [v13 _showChooseContactWithCancel];
  }
}

- (void)_showSuggestedContactSelector:(id)selector
{
  selectorCopy = selector;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Showing suggested contacts...", buf, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _sendTelemetryForEvent:@"com.apple.appleaccount.custodian.ui.setup.presentSuggestedContactList" didSucceed:1 error:0];
  v6 = [[AAUIOBContactSelectorViewModel alloc] initWithFlow:0];
  [(AAUIOBContactSelectorViewModel *)v6 setSuggestedContacts:selectorCopy];
  v7 = [(AAUICustodianSetupFlowController *)self _setupContactSelectorVCWithViewModel:v6 andSuggestedContacts:selectorCopy];
  objc_initWeak(buf, self);
  v8 = MEMORY[0x1E69DC628];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __66__AAUICustodianSetupFlowController__showSuggestedContactSelector___block_invoke;
  v16 = &unk_1E820DD38;
  objc_copyWeak(&v18, buf);
  selfCopy = self;
  v9 = [v8 actionWithHandler:&v13];
  if ([(AAUICustodianSetupFlowController *)self uiVersion:v13]== 1 && ![(AAUICustodianSetupFlowController *)self isUpsellInSettings])
  {
    navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
    [navigationController presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    navigationController = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 primaryAction:v9];
    navigationItem = [v7 navigationItem];
    [navigationItem setRightBarButtonItem:navigationController];

    navigationController2 = [(AAUICustodianSetupFlowController *)self navigationController];
    [navigationController2 pushViewController:v7 animated:1];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __66__AAUICustodianSetupFlowController__showSuggestedContactSelector___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B778] code:-7115 userInfo:0];
  [v2 _sendTelemetryForEvent:@"com.apple.appleaccount.custodian.ui.setup.skippedSuggestionList" didSucceed:0 error:v3];

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5307 userInfo:0];
  [WeakRetained _dismissWithError:v4];
}

- (BOOL)isUpsellInSettings
{
  v3 = +[AAUIFeatureFlags isUpdatedRCFlowEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(AAUICustodianSetupFlowController *)self isSettingsFlow];
  }

  return v3;
}

- (id)_setupContactSelectorVCWithViewModel:(id)model andSuggestedContacts:(id)contacts
{
  modelCopy = model;
  contactsCopy = contacts;
  if ([(AAUICustodianSetupFlowController *)self uiVersion]== 1)
  {
    v8 = MEMORY[0x1E69DCAB8];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v8 imageNamed:@"recovery_contact_shield_icon" inBundle:v9];
    [modelCopy setImage:v10];

    [modelCopy setUiVersion:{-[AAUICustodianSetupFlowController uiVersion](self, "uiVersion")}];
    LODWORD(v10) = [(AAUICustodianSetupFlowController *)self isUpsellInSettings];
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
    v12 = v11;
    if (v10)
    {
      v13 = [v11 localizedStringForKey:@"RC_SETTINGS_TITLE" value:&stru_1F447F790 table:@"Localizable"];
      [modelCopy setTitle:v13];

      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
      v15 = [v14 localizedStringForKey:@"RC_SETTINGS_SUBTITLE" value:&stru_1F447F790 table:@"Localizable"];
      [modelCopy setDetailText:v15];

      v16 = [contactsCopy count];
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
      v18 = v17;
      if (v16)
      {
        v19 = [v17 localizedStringForKey:@"RC_UPSELL_PRIMARY_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
        [modelCopy setPrimaryButton:v19];

        v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
        v20 = [v18 localizedStringForKey:@"RC_UPSELL_SECONDARY_BUTTON_SETTINGS" value:&stru_1F447F790 table:@"Localizable"];
        [modelCopy setSecondaryButton:v20];
      }

      else
      {
        v20 = [v17 localizedStringForKey:@"RC_SETTINGS_PRIMARY_BUTTON_NO_SUGGESTIONS" value:&stru_1F447F790 table:@"Localizable"];
        [modelCopy setPrimaryButton:v20];
      }

      rcUpsellNavigationController = [[AAUIAccountRecoveryContactUpsellSelectorVC alloc] initWithSelectorViewModel:modelCopy vcDelegate:self];
    }

    else
    {
      v22 = [v11 localizedStringForKey:@"RC_UPSELL_TITLE" value:&stru_1F447F790 table:@"Localizable"];
      [modelCopy setTitle:v22];

      v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
      v24 = [v23 localizedStringForKey:@"RC_UPSELL_SUBTITLE" value:&stru_1F447F790 table:@"Localizable"];
      [modelCopy setDetailText:v24];

      v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
      v26 = [v25 localizedStringForKey:@"RC_UPSELL_PRIMARY_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
      [modelCopy setPrimaryButton:v26];

      v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccountUI"];
      v28 = [v27 localizedStringForKey:@"RC_UPSELL_SECONDARY_BUTTON" value:&stru_1F447F790 table:@"Localizable"];
      [modelCopy setSecondaryButton:v28];

      v29 = _AAUILogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [AAUICustodianSetupFlowController _setupContactSelectorVCWithViewModel:v29 andSuggestedContacts:?];
      }

      v30 = [[AAUIAccountRecoveryContactUpsellSelectorVC alloc] initWithSelectorViewModel:modelCopy vcDelegate:self];
      v31 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v30];
      [(AAUICustodianSetupFlowController *)self setRcUpsellNavigationController:v31];

      rcUpsellNavigationController = [(AAUICustodianSetupFlowController *)self rcUpsellNavigationController];
    }
  }

  else
  {
    rcUpsellNavigationController = [[AAUIAccountContactSelectorViewController alloc] initWithViewModel:modelCopy];
    [(AAUIOBWelcomeController *)rcUpsellNavigationController setDelegate:self];
  }

  return rcUpsellNavigationController;
}

- (void)_showChooseContact
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Showing choose contacts...", v8, 2u);
  }

  v4 = [[AAUIChooseContactController alloc] initWithAccountManager:self->_accountManager];
  chooseContactController = self->_chooseContactController;
  self->_chooseContactController = v4;

  [(AAUIChooseContactController *)self->_chooseContactController setDelegate:self];
  [(AAUIChooseContactController *)self->_chooseContactController setTelemetryFlowID:self->_telemetryFlowID];
  chooseContactViewController = [(AAUIChooseContactController *)self->_chooseContactController chooseContactViewController];
  navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  [navigationController showViewController:chooseContactViewController sender:0];
}

- (void)_showChooseContactWithCancel
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Showing choose contacts...", &buf, 2u);
  }

  v4 = [[AAUIChooseContactController alloc] initWithAccountManager:self->_accountManager];
  chooseContactController = self->_chooseContactController;
  self->_chooseContactController = v4;

  [(AAUIChooseContactController *)self->_chooseContactController setDelegate:self];
  [(AAUIChooseContactController *)self->_chooseContactController setTelemetryFlowID:self->_telemetryFlowID];
  chooseContactViewController = [(AAUIChooseContactController *)self->_chooseContactController chooseContactViewController];
  objc_initWeak(&buf, self);
  v7 = MEMORY[0x1E69DC628];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__AAUICustodianSetupFlowController__showChooseContactWithCancel__block_invoke;
  v14[3] = &unk_1E820DD60;
  objc_copyWeak(&v15, &buf);
  v8 = [v7 actionWithHandler:v14];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 primaryAction:v8];
  navigationItem = [chooseContactViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v9];

  v11 = *MEMORY[0x1E698BB28];
  v17[0] = *MEMORY[0x1E698BB18];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [(AAUICustodianSetupFlowController *)self _sendTelemetryEventWithEscapeOffers:*MEMORY[0x1E698BA20] offers:v12];

  navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  [navigationController showViewController:chooseContactViewController sender:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&buf);
}

void __64__AAUICustodianSetupFlowController__showChooseContactWithCancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5307 userInfo:0];
  [WeakRetained _dismissWithError:v1];
}

- (void)_verifyAndInviteContact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    handle = [contactCopy handle];
    *buf = 138412290;
    v14 = handle;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Verifying %@ is reachable.", buf, 0xCu);
  }

  [(AAUICustodianSetupFlowController *)self _showActivityIndicator];
  v7 = objc_alloc(MEMORY[0x1E698B908]);
  handle2 = [contactCopy handle];
  v9 = [v7 initWithHandle:handle2];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__AAUICustodianSetupFlowController__verifyAndInviteContact___block_invoke;
  v11[3] = &unk_1E820DC70;
  v11[4] = self;
  v12 = contactCopy;
  v10 = contactCopy;
  [v9 isRegisteredToiMessageWithCompletion:v11];
}

uint64_t __60__AAUICustodianSetupFlowController__verifyAndInviteContact___block_invoke(uint64_t a1, int a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "The contact is reachable-able.", buf, 2u);
    }

    return [*(a1 + 32) _inviteContact:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "The contact with is not iMessage-able.", v7, 2u);
    }

    return [*(a1 + 32) _displayAlertForNotReachableContact:*(a1 + 40)];
  }
}

- (void)_displayAlertForNotReachableContact:(id)contact
{
  contactCopy = contact;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__AAUICustodianSetupFlowController__displayAlertForNotReachableContact___block_invoke;
  v6[3] = &unk_1E820D5C0;
  objc_copyWeak(&v8, &location);
  v6[4] = self;
  v7 = contactCopy;
  v5 = contactCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__AAUICustodianSetupFlowController__displayAlertForNotReachableContact___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CANNOT_ADD_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [*(a1 + 40) displayName];
  v7 = [v3 stringWithFormat:v5, v6];

  v8 = MEMORY[0x1E69DC650];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANNOT_ADD_BODY" value:&stru_1F447F790 table:@"Localizable"];
  v11 = [v8 alertWithTitle:v7 message:v10];

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

  v14 = MEMORY[0x1E69DC648];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__AAUICustodianSetupFlowController__displayAlertForNotReachableContact___block_invoke_2;
  v17[3] = &unk_1E820BFA8;
  v18 = WeakRetained;
  v15 = WeakRetained;
  v16 = [v14 actionWithTitle:v13 style:0 handler:v17];
  [v11 addAction:v16];

  [v15[14] presentViewController:v11 animated:1 completion:0];
}

- (void)_inviteContact:(id)contact
{
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    handle = [contactCopy handle];
    *buf = 138412290;
    v17 = handle;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Inviting %@...", buf, 0xCu);
  }

  v8 = objc_alloc(MEMORY[0x1E698B870]);
  handle2 = [contactCopy handle];
  v10 = [v8 initWithHandle:handle2 authResults:self->_authResults];

  objc_storeStrong(&self->_invitedContact, contact);
  objc_initWeak(buf, self);
  custodianController = self->_custodianController;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AAUICustodianSetupFlowController__inviteContact___block_invoke;
  v13[3] = &unk_1E820DD88;
  v13[4] = self;
  v12 = contactCopy;
  v14 = v12;
  objc_copyWeak(&v15, buf);
  [(AACustodianController *)custodianController setupCustodianshipWithContext:v10 completion:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(buf);
}

void __51__AAUICustodianSetupFlowController__inviteContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = _AAUILogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161;
    block[3] = &unk_1E820BF58;
    block[4] = *(a1 + 32);
    v14 = v7;
    v15 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Custodian setup succeeded. Will display message composer.", buf, 2u);
    }

    objc_storeStrong((*(a1 + 32) + 48), a2);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_166;
    v10[3] = &unk_1E820C290;
    objc_copyWeak(&v11, (a1 + 48));
    dispatch_async(MEMORY[0x1E69E96A0], v10);
    objc_destroyWeak(&v11);
  }
}

void __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161(id *a1)
{
  [*(a1[4] + 14) aaui_hideActivityIndicator];
  v2 = [MEMORY[0x1E698B9B0] setupCustodianErrorTitle];
  v3 = [MEMORY[0x1E698B9B0] setupCustodianErrorMessage];
  v4 = a1 + 5;
  v5 = [a1[5] localizedDescription];
  if (v5)
  {
    v6 = v5;
    v7 = [*v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"ec"];
    v9 = [v8 integerValue];

    if (v9 == -27412)
    {
      v10 = _AAUILogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161_cold_1();
      }

      v11 = [*v4 localizedDescription];

      v12 = [MEMORY[0x1E698B9B0] custodianCountMaxLimitReachedErrorTitle];

      v3 = v11;
      v2 = v12;
      goto LABEL_19;
    }
  }

  v13 = [*v4 domain];
  v14 = *MEMORY[0x1E698B768];
  if ([v13 isEqualToString:*MEMORY[0x1E698B768]])
  {
    v15 = [*v4 code];

    if (v15 == -7020)
    {
      v16 = _AAUILogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161_cold_3();
      }

      v17 = [MEMORY[0x1E698B9B0] selfCannotBeCustodianErrorTitle];

      v18 = [MEMORY[0x1E698B9B0] selfCannotBeCustodianErrorMessage];

LABEL_17:
      v3 = v18;
      v2 = v17;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v19 = [*v4 domain];
  if (![v19 isEqualToString:v14])
  {

    goto LABEL_19;
  }

  v20 = [*v4 code];

  if (v20 == -7014)
  {
    v21 = _AAUILogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161_cold_2();
    }

    v17 = [MEMORY[0x1E698B9B0] cannotAddAnExistingCustodianErrorTitle];

    v22 = MEMORY[0x1E696AEC0];
    v23 = [MEMORY[0x1E698B9B0] cannotAddAnExistingCustodianErrorMessageFormat];
    v24 = [a1[6] handle];
    v18 = [v22 stringWithFormat:v23, v24];

    goto LABEL_17;
  }

LABEL_19:
  [a1[4] _showAlertWithTitle:v2 message:v3];
}

void __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_166(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 aaui_hideActivityIndicator];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _startInviteMessageFlow];
}

- (void)_showAlertWithTitle:(id)title message:(id)message
{
  v9 = [MEMORY[0x1E69DC650] alertWithTitle:title message:message];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v6 style:0 handler:0];
  [v9 addAction:v7];

  navigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  [navigationController presentViewController:v9 animated:1 completion:0];
}

- (void)_cancelCustodianInvite
{
  objc_initWeak(&location, self);
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Custodian invitation was cancelled, revoking custodianship...", buf, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _showActivityIndicator];
  custodianController = self->_custodianController;
  custodianshipID = self->_custodianshipID;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AAUICustodianSetupFlowController__cancelCustodianInvite__block_invoke;
  v6[3] = &unk_1E820D520;
  objc_copyWeak(&v7, &location);
  [(AACustodianController *)custodianController removeCustodian:custodianshipID completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __58__AAUICustodianSetupFlowController__cancelCustodianInvite__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __58__AAUICustodianSetupFlowController__cancelCustodianInvite__block_invoke_cold_1();
    }
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _sendEscapeOfferSelectedEvent:*MEMORY[0x1E698BB28]];

  [WeakRetained _hideActivityIndicator];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AAUICustodianSetupFlowController__cancelCustodianInvite__block_invoke_168;
  block[3] = &unk_1E820B8F0;
  v9 = WeakRetained;
  v7 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__AAUICustodianSetupFlowController__cancelCustodianInvite__block_invoke_168(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)_dismissWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = errorCopy;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing setup flow controller with error=%@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AAUICustodianSetupFlowController__dismissWithError___block_invoke;
  v7[3] = &unk_1E820BEB8;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __54__AAUICustodianSetupFlowController__dismissWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) uiVersion] == 1)
  {
    v2 = [*(a1 + 32) navigationController];
    v3 = [v2 presentedViewController];

    if (v3)
    {
      v4 = [*(a1 + 32) navigationController];
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [*(a1 + 32) delegate];
  v11 = v7;
  if (v6)
  {
    [v7 custodianSetupFlowControllerDidFinish:*(a1 + 32) withError:*(a1 + 40)];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    v9 = *(a1 + 32);
    if (v8)
    {
      v11 = [v9 delegate];
      v10 = [*(a1 + 32) navigationController];
      [v11 custodianSetupFlowControllerDidFinish:v10];
    }

    else
    {
      v11 = [v9 navigationController];
      [v11 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)_dismissWithCancel
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Dismiss with cancel called on setup flow controller", v5, 2u);
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5307 userInfo:0];
  [(AAUICustodianSetupFlowController *)self _dismissWithError:v4];
}

- (void)_dismissCFUIfNeeded
{
  v2 = objc_alloc_init(MEMORY[0x1E698B8C0]);
  v3 = *MEMORY[0x1E698B790];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke;
  v5[3] = &unk_1E820DDB0;
  v6 = v2;
  v4 = v2;
  [v4 pendingFollowUpWithIdentifier:v3 completion:v5];
}

void __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v5)
    {
      __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke_cold_1();
    }

    [*(a1 + 32) dismissFollowUpWithIdentifier:*MEMORY[0x1E698B790] completion:&__block_literal_global_23];
  }

  else
  {
    if (v5)
    {
      __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke_cold_2();
    }
  }
}

void __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke_175(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke_175_cold_1();
    }
  }
}

- (void)_removeRecoveryKeyAndDismissCFUIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    followUpUniqueIdentifier = [v5 followUpUniqueIdentifier];
    v7 = [followUpUniqueIdentifier isEqualToString:@"com.apple.AAFollowUpIdentifier.RecoveryKeyMismatch"];

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 custodianSetupFlowControllerRecoveryContactInviteSent];
    }
  }
}

- (void)_showActivityIndicator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AAUICustodianSetupFlowController__showActivityIndicator__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__AAUICustodianSetupFlowController__showActivityIndicator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 aaui_showActivityIndicator];
}

- (void)_hideActivityIndicator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AAUICustodianSetupFlowController__hideActivityIndicator__block_invoke;
  block[3] = &unk_1E820B8F0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__AAUICustodianSetupFlowController__hideActivityIndicator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 aaui_hideActivityIndicator];
}

- (void)inviteMessageFlowDidFinish:(id)finish
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "iMessage invitation flow finished", v5, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _removeRecoveryKeyAndDismissCFUIfNeeded];
  [(AAUICustodianSetupFlowController *)self _dismissWithError:0];
  [(AAUICustodianSetupFlowController *)self _dismissCFUIfNeeded];
}

- (void)inviteMessageFlowWasCancelled:(id)cancelled
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "iMessage invitation flow cancelled", v5, 2u);
  }

  [(AAUICustodianSetupFlowController *)self _cancelCustodianInvite];
}

- (void)didSelectLocalContactFor:(id)for
{
  v11 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = forCopy;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "adding local contact %@", buf, 0xCu);
  }

  if ([(AAUICustodianSetupFlowController *)self uiVersion]== 1)
  {
    objc_initWeak(buf, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__AAUICustodianSetupFlowController_didSelectLocalContactFor___block_invoke;
    v6[3] = &unk_1E820DC48;
    objc_copyWeak(&v8, buf);
    v7 = forCopy;
    [(AAUICustodianSetupFlowController *)self _validateAccountWithCompletion:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    [(AAUICustodianSetupFlowController *)self _verifyAndInviteContact:forCopy];
  }
}

void __61__AAUICustodianSetupFlowController_didSelectLocalContactFor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _beginAddRecoveryContactAfterSelectFlow:*(a1 + 32) ifIsVerified:a2 andNoError:v5];
}

- (void)didTapDismissAddRC
{
  if ([(AAUICustodianSetupFlowController *)self isUpsellInSettings])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AAUICustodianSetupFlowController_didTapDismissAddRC__block_invoke;
    block[3] = &unk_1E820B8F0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v3 = _AAUILogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "didTapDismissAddRC", v5, 2u);
    }

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69977D8] code:-5307 userInfo:0];
    [(AAUICustodianSetupFlowController *)self _dismissWithError:v4];
  }
}

- (void)didTapPrimaryButton
{
  if ([(AAUICustodianSetupFlowController *)self isUpsellInSettings])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AAUICustodianSetupFlowController_didTapPrimaryButton__block_invoke;
    block[3] = &unk_1E820B8F0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (id)navController
{
  if ([(AAUICustodianSetupFlowController *)self uiVersion]== 1 && ![(AAUICustodianSetupFlowController *)self isUpsellInSettings])
  {
    rcUpsellNavigationController = [(AAUICustodianSetupFlowController *)self rcUpsellNavigationController];
  }

  else
  {
    rcUpsellNavigationController = [(AAUICustodianSetupFlowController *)self navigationController];
  }

  return rcUpsellNavigationController;
}

- (AAUICustodianSetupFlowControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (void)_validateAccountWithCompletion:.cold.2()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_1C5355000, v0, v1, "Failed to get a cloud account from the accounts manager %@", v2, v3, v4, v5, v6);
}

- (void)_setupContactSelectorVCWithViewModel:(uint64_t)a1 andSuggestedContacts:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[AAUICustodianSetupFlowController _setupContactSelectorVCWithViewModel:andSuggestedContacts:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "%s: Creating and returning nav controller with root %@", &v2, 0x16u);
}

void __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_1C5355000, v0, v1, "Max Custodian Limit reached. Showing localized error message in alert from server error: %@", v2, v3, v4, v5, v6);
}

void __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161_cold_2()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_1C5355000, v0, v1, "Can't add existing custodian again %@", v2, v3, v4, v5, v6);
}

void __51__AAUICustodianSetupFlowController__inviteContact___block_invoke_161_cold_3()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_1C5355000, v0, v1, "Can't add self. %@", v2, v3, v4, v5, v6);
}

void __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_1C5355000, v0, OS_LOG_TYPE_DEBUG, "CFU %@ exists. Dismissing...", v1, 0xCu);
}

void __55__AAUICustodianSetupFlowController__dismissCFUIfNeeded__block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_1C5355000, v0, OS_LOG_TYPE_DEBUG, "No previous %@ CFU exists. Nothing to dismiss", v1, 0xCu);
}

@end