@interface SFFormAutocompleteState
+ (BOOL)_shouldSaveCredentialsInProtectionSpace:(id)space savedAccountContext:(id)context;
+ (void)_getMatchesFromFormProtectionSpace:(id)space matchesFromOtherProtectionSpaces:(id)spaces withFormURL:(id)l credentialMatches:(id)matches lastGeneratedPassword:(id)password currentUser:(id)user currentPassword:(id)currentPassword forUserNamesOnly:(BOOL)self0;
- (BOOL)_canAutoFillCreditCardData;
- (BOOL)_didGatherESimInformation;
- (BOOL)_hasMatchWithUser:(id)user password:(id)password;
- (BOOL)_passwordGenerationAssistanceAutoFillButtonEnabled;
- (BOOL)_shouldAllowExternalPasswordAutoFillOnURL:(id)l;
- (BOOL)_shouldAllowGeneratedPassword;
- (BOOL)_shouldOfferCreditCardDataAfterUserHasFilledCreditCardData:(id)data;
- (BOOL)_shouldShowPasswordOptions;
- (BOOL)_shouldUsePasswordGenerationAssistanceForTextField;
- (BOOL)_suggestUsernamesForRegistrationIfPossible:(unint64_t)possible;
- (BOOL)_textFieldIsEmptyPasswordField;
- (BOOL)currentControlCanInitiateFillingForRelatedCreditCardFields;
- (SFFormAutocompleteState)initWithFrame:(id)frame form:(id)form textField:(id)field inputSession:(id)session autoFillController:(id)controller;
- (id)_actionForPresentingPasswordManagerExtension:(id)extension completionHandler:(id)handler;
- (id)_addHideMyEmailSuggestionsIfNecessary:(id)necessary hideMyEmailRecord:(id)record;
- (id)_cachedPotentialCredentialMatches;
- (id)_createCreditCardHeaderViewControllerForEscapeHatchAlertControllerForCard:(id)card;
- (id)_hideMyEmailCreationSuggestion;
- (id)_hideMyEmailSuggestionForRecord:(id)record;
- (id)_imageViewWithCardArtForEscapeHatchAlertControllerForCard:(id)card;
- (id)_messageForPageLevelAutoFillNotAvailableAlertForResult:(int64_t)result;
- (id)_sortedSingleCreditCardDataArray:(id)array;
- (id)_suggestionsForAutoFillDisplayData:(id)data;
- (id)_textSuggestionForCredentialDisplayData:(id)data submitForm:(BOOL)form;
- (id)_textSuggestionForExternalCredentialIdentity:(id)identity submitForm:(BOOL)form;
- (id)_titleForPageLevelAutoFillNotAvailableAlertForResult:(int64_t)result;
- (id)_viewControllerToPresentFrom;
- (id)externalCredentialIdentities;
- (int64_t)_actionForLoginForm;
- (int64_t)_passwordGenerationAssistanceAction;
- (int64_t)action;
- (void)_addActionForAlertController:(id)controller title:(id)title detail:(id)detail handler:(id)handler;
- (void)_addPasswordsAutoFillSuggestionToSuggestions:(id)suggestions forPurpose:(int64_t)purpose;
- (void)_autoFillDisplayData:(id)data setAutoFilled:(BOOL)filled;
- (void)_autoFillFormWithUsername:(id)username;
- (void)_autoFillHideMyEmailRecord:(id)record;
- (void)_autoFillSingleCreditCardData:(int64_t)data;
- (void)_autoFillWithSet:(id)set;
- (void)_autofillESimData:(int64_t)data;
- (void)_buildAndPresentTextInsertionAutoFill;
- (void)_clearAutoFilledCreditCardFieldsAndShowAllCreditCards;
- (void)_clearCachedCredentials;
- (void)_completePasskeyAssertionWithCredential:(id)credential completionHandler:(id)handler;
- (void)_didGatherESimInformation;
- (void)_fetchPotentialCredentialMatchesWithCompletion:(id)completion;
- (void)_fillASOneTimeCodeCredential:(id)credential setAutoFilled:(BOOL)filled submitForm:(BOOL)form;
- (void)_fillASPasswordCredential:(id)credential needsAuthentication:(BOOL)authentication setAutoFilled:(BOOL)filled submitForm:(BOOL)form;
- (void)_fillCredential:(id)credential setAutoFilled:(BOOL)filled setAsDefaultCredential:(BOOL)defaultCredential focusFieldAfterFilling:(BOOL)filling submitForm:(BOOL)form;
- (void)_fillCredentialAfterAuthenticationIfNeeded:(id)needed setAsDefaultCredential:(BOOL)credential submitForm:(BOOL)form;
- (void)_fillCredentialIdentity:(id)identity submitForm:(BOOL)form;
- (void)_fillCreditCardData:(id)data;
- (void)_fillCreditCardDataAfterAuthenticationIfNeeded:(id)needed;
- (void)_fillOneTimeCodeAfterAuthenticationIfNeeded:(id)needed inFrame:(id)frame shouldSubmit:(BOOL)submit;
- (void)_fillSavedAccount:(id)account setAutoFilled:(BOOL)filled setAsDefaultCredential:(BOOL)credential focusFieldAfterFilling:(BOOL)filling submitForm:(BOOL)form;
- (void)_fillSavedAccountMatchAfterAuthenticationIfNeeded:(id)needed setAsDefaultCredential:(BOOL)credential submitForm:(BOOL)form;
- (void)_fillSingleCreditCardDataValue:(id)value creditCardDataType:(int64_t)type;
- (void)_fillTextIntoCurrentField:(id)field;
- (void)_finishPageLevelAutoFillWithResult:(int64_t)result;
- (void)_gatherAndShowAddressBookAutoFillSuggestions;
- (void)_gatherFormValues;
- (void)_gatherFormValuesWithCompletionHandler:(id)handler;
- (void)_generateAndSuggestPasswordWithCompletionHandler:(id)handler;
- (void)_getLoginFormUser:(id *)user password:(id *)password userIsAutoFilled:(BOOL *)filled passwordIsAutoFilled:(BOOL *)autoFilled;
- (void)_getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames:(BOOL)usernames withCompletion:(id)completion;
- (void)_getShouldOfferForgetPassword:(BOOL *)password savePassword:(BOOL *)savePassword;
- (void)_offerToAutoFillContact;
- (void)_offerToAutoFillFromPotentialCredentialMatches;
- (void)_offerToForgetSavedAccount:(id)account completionHandler:(id)handler;
- (void)_performAutoFill;
- (void)_performPageLevelContactAutoFill;
- (void)_performPageLevelCredentialAutoFill;
- (void)_presentContactsAccessSettingsAlert;
- (void)_presentCredentialListForExtension:(id)extension completionHandler:(id)handler;
- (void)_presentFirstPartyTextInsertionAutoFillAfterAuthentication;
- (void)_presentLowBalanceAppleCashAlertForCard:(id)card;
- (void)_presentOtherPasswordsView;
- (void)_presentTextInsertionViewControllerForCredentialProviderExtension:(id)extension;
- (void)_presentViewController:(id)controller presentingViewController:(id)viewController animated:(BOOL)animated completion:(id)completion;
- (void)_provisionHideMyEmailRecord;
- (void)_setShowingKeyboardInputView:(BOOL)view;
- (void)_setUpMultiRoundAutoFillManagerIfNecessary;
- (void)_setUserAndPasswordFieldsAutoFilled:(BOOL)filled clearPasswordField:(BOOL)field;
- (void)_showCreditCardDataSuggestionsAfterUserHasFilledCreditCardData;
- (void)_showOtherContactOptions;
- (void)_showPageLevelAutoFillNotAvailableAlertForResult:(int64_t)result;
- (void)_startHideMyEmailRecordUpdate;
- (void)_suggestLoginCredentialsShowingQuickTypeKey:(BOOL)key;
- (void)_suggestPasswordForNewAccountOrChangePasswordForm;
- (void)_switchToCustomInputViewWithMatches:(id)matches contact:(id)contact;
- (void)_textDidChangeInForm:(id)form textField:(id)field;
- (void)_updateAutoFillActionToCaptureCreditCardAndFill;
- (void)_updateCreditCardAutoFillAction;
- (void)_updateSuggestions:(unint64_t)suggestions;
- (void)accountPickerViewController:(id)controller fillPasswordForSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillUsernameForSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillVerificationCode:(id)code;
- (void)accountPickerViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account;
- (void)autoFill;
- (void)autoFillTextSuggestion:(id)suggestion;
- (void)captureCreditCardDataWithCameraAndFill;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithOneTimeCodeCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithOneTimeCodeCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithText:(id)text completion:(id)completion;
- (void)creditCardCaptureViewController:(id)controller didCaptureCreditCard:(id)card;
- (void)creditCardCaptureViewControllerDidCancel:(id)cancel;
- (void)dealloc;
- (void)didFillOneTimeCode:(id)code shouldConsumeCode:(BOOL)consumeCode;
- (void)dismissCustomAutoFill;
- (void)getTextSuggestionForStreamlinedAutoFillWithCredentialIdentity:(id)identity completion:(id)completion;
- (void)invalidate;
- (void)newAutoFillablePasskeysAvailable:(id)available;
- (void)oneTimeCodeProviderReceivedCode:(id)code;
- (void)performAutoFillWithMatchSelections:(id)selections doNotFill:(id)fill contact:(id)contact;
- (void)performPageLevelAutoFill;
- (void)presentCustomizeStrongPasswordAlert;
- (void)presentUIForPasswordCredentialAuthenticationViewController:(id)controller;
- (void)presentUnavailableVirtualCardAlert;
- (void)showAllPasswordsButtonTapped;
- (void)textDidChangeInFrame:(id)frame form:(id)form textField:(id)field;
- (void)updateAutoFillButton;
- (void)updateSuggestions;
@end

@implementation SFFormAutocompleteState

- (SFFormAutocompleteState)initWithFrame:(id)frame form:(id)form textField:(id)field inputSession:(id)session autoFillController:(id)controller
{
  frameCopy = frame;
  formCopy = form;
  fieldCopy = field;
  sessionCopy = session;
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = SFFormAutocompleteState;
  v18 = [(SFFormAutocompleteState *)&v34 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_autoFillController, controllerCopy);
    v20 = +[_SFFormDataController sharedController];
    objc_storeWeak(&v19->_dataController, v20);

    objc_storeStrong(&v19->_formMetadata, form);
    v19->_formType = [formCopy type];
    objc_storeStrong(&v19->_frame, frame);
    objc_storeStrong(&v19->_inputSession, session);
    v21 = [fieldCopy copy];
    textFieldMetadata = v19->_textFieldMetadata;
    v19->_textFieldMetadata = v21;

    oneTimeCodeProvider = [controllerCopy oneTimeCodeProvider];
    [oneTimeCodeProvider addObserver:v19];

    if ([MEMORY[0x1E69E30A8] shouldDisplayHideMyEmailForControl:v19->_textFieldMetadata])
    {
      [(SFFormAutocompleteState *)v19 _startHideMyEmailRecordUpdate];
    }

    v24 = [[SFCreditCardFillingViewController alloc] initWithFormAutocompleteState:v19];
    creditCardViewController = v19->_creditCardViewController;
    v19->_creditCardViewController = v24;

    v26 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v19->_authenticationServicesAgentProxy;
    v19->_authenticationServicesAgentProxy = v26;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel_newAutoFillablePasskeysAvailable_ name:*MEMORY[0x1E69C8D58] object:0];

    if ([MEMORY[0x1E696AAE8] safari_isSafariViewServiceBundle])
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v19 selector:sel__autoFillPasswordsInvokedFromSystemAutoFillMenu_ name:@"AutoFillPasswordsInvokedFromSystemAutoFillMenu" object:0];
    }

    v30 = objc_alloc_init(MEMORY[0x1E695A970]);
    conditionalRegistrationRequester = v19->_conditionalRegistrationRequester;
    v19->_conditionalRegistrationRequester = v30;

    v32 = v19;
  }

  return v19;
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  if ([WeakRetained waitingForCreditCardDataFromWallet])
  {
    [WeakRetained setAutoFillSpinnerVisibility:0 textFieldMetadata:self->_textFieldMetadata frame:self->_frame];
  }

  self->_action = 0;
  cachedCredentialMatches = self->_cachedCredentialMatches;
  self->_cachedCredentialMatches = 0;

  self->_fetchingLoginCredentialSuggestions = 0;
  formMetadata = self->_formMetadata;
  self->_formMetadata = 0;

  formValues = self->_formValues;
  self->_formType = 0;
  self->_formValues = 0;

  frame = self->_frame;
  self->_frame = 0;

  self->_invalidated = 1;
  multiRoundAutoFillManager = self->_multiRoundAutoFillManager;
  self->_multiRoundAutoFillManager = 0;

  cachedRelatedCredentialMatches = self->_cachedRelatedCredentialMatches;
  self->_cachedRelatedCredentialMatches = 0;

  textFieldMetadata = self->_textFieldMetadata;
  self->_textFieldMetadata = 0;

  self->_performingPageLevelAutoFill = 0;
  oneTimeCodeProvider = [WeakRetained oneTimeCodeProvider];
  [oneTimeCodeProvider removeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"AutoFillPasswordsInvokedFromSystemAutoFillMenu" object:0];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFFormAutocompleteState;
  [(SFFormAutocompleteState *)&v2 dealloc];
}

- (void)updateSuggestions
{
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  safari_isEligibleToShowNotSecureWarning = [webui_URL safari_isEligibleToShowNotSecureWarning];

  if ((safari_isEligibleToShowNotSecureWarning & 1) == 0)
  {

    [(SFFormAutocompleteState *)self _updateSuggestions:255];
  }
}

- (void)_updateSuggestions:(unint64_t)suggestions
{
  v63[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v6 = objc_loadWeakRetained(&self->_dataController);
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x3032000000;
  v61[3] = __Block_byref_object_copy__3;
  v61[4] = __Block_byref_object_dispose__3;
  v62 = 0;
  webView = [WeakRetained webView];
  if (objc_opt_respondsToSelector())
  {
    [webView webui_setInputDashboardViewController:0];
  }

  v34 = v6;
  suggestionsCopy = suggestions;
  formInputSession = [(_SFFormAutoFillInputSession *)self->_inputSession formInputSession];
  mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  shouldAutoFillPasswords = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswords];

  group = dispatch_group_create();
  mEMORY[0x1E69C8DB8]2 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8]2 shouldAutoFillPasswordsFromKeychain];

  oneTimeCodeProvider = [WeakRetained oneTimeCodeProvider];
  ancestorFrameURLs = [(WBSFormControlMetadata *)self->_textFieldMetadata ancestorFrameURLs];
  oneTimeCodeFieldClassification = [(WBSFormControlMetadata *)self->_textFieldMetadata oneTimeCodeFieldClassification];
  savedAccountContext = [WeakRetained savedAccountContext];
  v15 = [oneTimeCodeProvider currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:ancestorFrameURLs fieldClassification:oneTimeCodeFieldClassification inContext:savedAccountContext];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __46__SFFormAutocompleteState__updateSuggestions___block_invoke;
  v59[3] = &__block_descriptor_33_e31_B16__0__SFAutoFillOneTimeCode_8l;
  v60 = shouldAutoFillPasswordsFromKeychain;
  v36 = [v15 safari_filterObjectsUsingBlock:v59];

  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = [v36 count] != 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__3;
  v55[4] = __Block_byref_object_dispose__3;
  v56 = 0;
  ancestorFrameURLs2 = [(WBSFormControlMetadata *)self->_textFieldMetadata ancestorFrameURLs];
  lastObject = [ancestorFrameURLs2 lastObject];

  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  LODWORD(oneTimeCodeProvider) = [mEMORY[0x1E69C8DE0] atLeastOneEnabledExtensionSupportsOneTimeCodes];

  if (oneTimeCodeProvider)
  {
    v19 = objc_alloc_init(MEMORY[0x1E69C8DD8]);
    host = [lastObject host];
    v21 = [host length];

    if (v21)
    {
      dispatch_group_enter(group);
      host2 = [lastObject host];
      v63[0] = host2;
      host3 = [lastObject host];
      safari_highLevelDomainForPasswordManager = [host3 safari_highLevelDomainForPasswordManager];
      v63[1] = safari_highLevelDomainForPasswordManager;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __46__SFFormAutocompleteState__updateSuggestions___block_invoke_2;
      v50[3] = &unk_1E8492C80;
      v51 = v19;
      v53 = v55;
      v54 = v57;
      v52 = group;
      [v51 fetchOneTimeCodeCredentialIdentitiesMatchingDomains:v25 completion:v50];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFFormAutocompleteState__updateSuggestions___block_invoke_3;
  block[3] = &unk_1E8492CA8;
  block[4] = self;
  v39 = v36;
  v40 = lastObject;
  v41 = WeakRetained;
  v42 = formInputSession;
  v43 = webView;
  v44 = v34;
  v45 = v57;
  v49 = shouldAutoFillPasswords;
  v46 = v55;
  v47 = v61;
  v48 = suggestionsCopy;
  v26 = v34;
  v27 = webView;
  v28 = formInputSession;
  v29 = WeakRetained;
  v30 = lastObject;
  v31 = v36;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);

  _Block_object_dispose(v61, 8);
}

uint64_t __46__SFFormAutocompleteState__updateSuggestions___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 source] == 3)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void __46__SFFormAutocompleteState__updateSuggestions___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = *(*(a1 + 56) + 8);
  if (*(v4 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = [*(*(*(a1 + 48) + 8) + 40) count] != 0;
    v4 = *(*(a1 + 56) + 8);
  }

  *(v4 + 24) = v5;
  dispatch_group_leave(*(a1 + 40));
}

void __46__SFFormAutocompleteState__updateSuggestions___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v68 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 88) + 8) + 24) == 1 && [MEMORY[0x1E69C8F30] shouldDisplayOneTimeCodeForControl:*(*(a1 + 32) + 240) inForm:*(*(a1 + 32) + 232)])
  {
    WeakRetained = [MEMORY[0x1E695DF70] array];
    v3 = [*(v1 + 40) count];
    v4 = [*(*(*(v1 + 96) + 8) + 40) count] + v3;
    IsPad = _SFDeviceIsPad();
    v6 = 1;
    if (IsPad)
    {
      v6 = 2;
    }

    if (v6 < v4)
    {
      if (_SFDeviceIsPad())
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = *(*(*(v1 + 96) + 8) + 40);
    v7 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = v1;
      v10 = 0;
      v11 = *v64;
LABEL_11:
      v12 = 0;
      while (1)
      {
        v13 = v10;
        if (*v64 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v63 + 1) + 8 * v12);
        v15 = [_SFTextSuggestion textSuggestionWithCredentialIdentity:v14 submitForm:1];
        v16 = [MEMORY[0x1E69C8E18] titleForCredentialIdentity:v14 formURL:*(v9 + 48)];
        [v15 setHeaderText:v16];

        v17 = [v14 user];
        [v15 setDisplayText:v17];

        [WeakRetained addObject:v15];
        v10 = v13 + 1;

        if (v13 + 1 >= v4)
        {
          break;
        }

        if (v8 == ++v12)
        {
          v8 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (v8)
          {
            goto LABEL_11;
          }

          v10 = v13 + 1;
          break;
        }
      }

      v1 = v9;
    }

    else
    {
      v10 = 0;
    }

    if ([*(v1 + 40) count])
    {
      v37 = v4 - v10;
      if (v4 != v10)
      {
        v38 = 0;
        do
        {
          v39 = [*(v1 + 40) objectAtIndexedSubscript:v38];
          v40 = [_SFTextSuggestion textSuggestionWithOneTimeCode:v39];
          v41 = [v39 localizedTitleForContext:0];
          [v40 setHeaderText:v41];

          v42 = [v39 localizedSubtitleForContext:0];
          [v40 setDisplayText:v42];

          [WeakRetained addObject:v40];
          ++v38;
        }

        while (v37 != v38);
      }
    }

    [*(v1 + 32) _addPasswordsAutoFillSuggestionToSuggestions:WeakRetained forPurpose:1];
    if ([WeakRetained count])
    {
      v43 = *(v1 + 56);
      v44 = [*(*(v1 + 32) + 240) uniqueID];
      [v43 reportAutoFillOfferedType:2 forTextFieldWithID:v44 forFormMetadata:*(*(v1 + 32) + 232)];
    }

    [*(v1 + 64) setSuggestions:WeakRetained];
    v45 = WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      __46__SFFormAutocompleteState__updateSuggestions___block_invoke_3_cold_2();
    }

    goto LABEL_78;
  }

  if ([*(v1 + 40) count])
  {
    v18 = *(*(v1 + 32) + 240);
    v19 = WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v20, OS_LOG_TYPE_INFO, "Did not suggested verification code autofill because current text field is not verification code friendly", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __46__SFFormAutocompleteState__updateSuggestions___block_invoke_3_cold_1(v20);
    }
  }

  v21 = [*(v1 + 32) _shouldShowPasswordOptions];
  v22 = *(v1 + 32);
  if (v21)
  {
    if ([v22 action] == 7)
    {
      if ([MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction])
      {
        v23 = [*(v1 + 72) firstResponder];
        [v23 reloadInputViews];
      }

      WeakRetained = [MEMORY[0x1E695DF70] array];
      v24 = [*(v1 + 56) automaticPasswordForPasswordField:*(*(v1 + 32) + 240) inForm:*(*(v1 + 32) + 232) isFrame:*(*(v1 + 32) + 224)];
      if (!v24)
      {
        goto LABEL_73;
      }

      v25 = [_SFTextSuggestion textSuggestionWithGeneratedPassword:v24];
      if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
      {
        if ([*(v1 + 56) shouldSuggestToCustomizeStrongPassword])
        {
          v26 = +[_SFTextSuggestion textSuggestionToCustomizeGeneratedPassword];

          v25 = v26;
        }

        v52 = _WBSLocalizedString();
        [v25 setDisplayText:v52];
      }

      v53 = [v25 displayText];

      if (!v53)
      {
        v54 = _WBSLocalizedString();
        [v25 setHeaderText:v54];

        [v25 setDisplayText:v24];
      }

      [WeakRetained addObject:v25];
      v55 = [MEMORY[0x1E69C8880] isPasswordsAppInstalled];

      if ((v55 & 1) == 0)
      {
LABEL_73:
        [*(v1 + 32) _addPasswordsAutoFillSuggestionToSuggestions:WeakRetained forPurpose:0];
      }

      if ([WeakRetained count])
      {
        v56 = *(v1 + 56);
        v57 = [*(*(v1 + 32) + 240) uniqueID];
        [v56 reportAutoFillOfferedType:1 forTextFieldWithID:v57 forFormMetadata:*(*(v1 + 32) + 232)];
      }

      v58 = [*(*(v1 + 32) + 64) formInputSession];
      [v58 setSuggestions:WeakRetained];

      goto LABEL_77;
    }

    if ([*(v1 + 32) action] == 8 && objc_msgSend(MEMORY[0x1E69BC7D8], "shouldShowLoginIntroduction"))
    {
      v27 = [*(v1 + 72) firstResponder];
      v28 = v27;
      if (v27)
      {
        [v27 reloadInputViews];
      }
    }

    WeakRetained = objc_loadWeakRetained((*(v1 + 32) + 16));
    v29 = +[_SFFormDataController sharedController];
    v30 = [WeakRetained tabIDForAutoFill];
    v31 = [*(*(v1 + 32) + 224) webui_URL];
    v32 = [v29 canShowSavedAccountHistoryItemInTabWithID:v30 currentURL:v31];

    if (v32)
    {
      v24 = [*(v1 + 80) lastFilledSavedAccount];
      v33 = [v24 historyItems];
      if ([v33 count])
      {
        v34 = +[_SFTextSuggestion textSuggestionToOpenPasswordsPocketWithHistorySection];
        v35 = *(v1 + 32);
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __46__SFFormAutocompleteState__updateSuggestions___block_invoke_51;
        v60[3] = &unk_1E8491FF0;
        v60[4] = v35;
        v61 = v34;
        v36 = v34;
        [v35 _getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames:0 withCompletion:v60];

LABEL_77:
LABEL_78:

        return;
      }
    }

    if (*(v1 + 120) == 1)
    {
      [*(v1 + 32) _suggestLoginCredentialsShowingQuickTypeKey:1];
    }

    goto LABEL_78;
  }

  if ([v22 _shouldOfferCreditCardDataAfterUserHasFilledCreditCardData:v22[30]])
  {
    [*(v1 + 32) _showCreditCardDataSuggestionsAfterUserHasFilledCreditCardData];
  }

  else if ([*(v1 + 56) waitingForCreditCardDataFromWallet])
  {
    [*(v1 + 56) setAutoFillSpinnerVisibility:1 textFieldMetadata:*(*(v1 + 32) + 240) frame:*(*(v1 + 32) + 224)];
  }

  else if ([*(v1 + 32) currentControlCanInitiateFillingForRelatedCreditCardFields] && objc_msgSend(*(v1 + 32), "_canAutoFillCreditCardData"))
  {
    v46 = [*(*(v1 + 32) + 240) value];
    v47 = [v46 safari_stringByTrimmingWhitespace];
    v48 = *(*(v1 + 104) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;

    if (![*(*(*(v1 + 104) + 8) + 40) length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(v1 + 72) webui_setInputDashboardViewController:*(*(v1 + 32) + 176)];
    }

    v50 = *(v1 + 56);
    v51 = [*(*(v1 + 32) + 240) uniqueID];
    [v50 reportAutoFillOfferedType:3 forTextFieldWithID:v51 forFormMetadata:*(*(v1 + 32) + 232)];
  }

  else if (((*(v1 + 112) & 1) == 0 || ([*(v1 + 32) _suggestUsernamesForRegistrationIfPossible:?] & 1) == 0) && (!objc_msgSend(*(v1 + 56), "shouldAutofillESimInformation") || (objc_msgSend(*(v1 + 32), "_didGatherESimInformation") & 1) == 0) && objc_msgSend(*(v1 + 80), "shouldAutoFillFromAddressBook"))
  {
    [*(v1 + 32) _gatherAndShowAddressBookAutoFillSuggestions];
  }
}

void __46__SFFormAutocompleteState__updateSuggestions___block_invoke_51(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 224) webui_URL];
  v3 = [v2 safari_userVisibleHostOrExtensionDisplayName];

  v4 = MEMORY[0x1E696AEC0];
  v5 = _WBSLocalizedString();
  v6 = [v4 stringWithFormat:v5, v3];
  [*(a1 + 40) setDisplayText:v6];

  v9[0] = *(a1 + 40);
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8 = [*(*(a1 + 32) + 64) formInputSession];
  [v8 setSuggestions:v7];
}

- (BOOL)_didGatherESimInformation
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  classification = [(WBSFormControlMetadata *)self->_textFieldMetadata classification];
  if (WBSIsEqual())
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v18 = 0;
    v7 = [v3 retrieveDeviceIdentifier:1 clientBundleIdentifier:bundleIdentifier error:&v18];
    v8 = v18;

    v9 = [_SFTextSuggestion textSuggestionWithESimDataType:0];
    _SFDeviceIsPad();
  }

  else
  {
    if (!WBSIsEqual())
    {
      goto LABEL_11;
    }

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v17 = 0;
    v7 = [v3 retrieveDeviceIdentifier:2 clientBundleIdentifier:bundleIdentifier2 error:&v17];
    v8 = v17;

    v9 = [_SFTextSuggestion textSuggestionWithESimDataType:1];
    _SFDeviceIsPad();
  }

  v12 = _WBSLocalizedString();
  [v9 setHeaderText:v12];

  [v9 setDisplayText:v7];
  v13 = v8 == 0;
  if (v8)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXESim();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SFFormAutocompleteState *)v14 _didGatherESimInformation];
    }

    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v19[0] = v9;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  formInputSession = [(_SFFormAutoFillInputSession *)self->_inputSession formInputSession];
  [formInputSession setSuggestions:v8];

LABEL_10:
LABEL_12:

  return v13;
}

- (void)autoFill
{
  [(SFFormAutocompleteState *)self _setUpMultiRoundAutoFillManagerIfNecessary];

  [(SFFormAutocompleteState *)self _performAutoFill];
}

- (void)_performAutoFill
{
  action = self->_action;
  if (action <= 4)
  {
    if (action == 2)
    {
      self->_action = 1;
      cachedCredentialMatches = self->_cachedCredentialMatches;
      self->_cachedCredentialMatches = 0;

      formMetadata = self->_formMetadata;
      self->_formMetadata = 0;

      formValues = self->_formValues;
      self->_formValues = 0;

      cachedRelatedCredentialMatches = self->_cachedRelatedCredentialMatches;
      self->_cachedRelatedCredentialMatches = 0;

      WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
      uniqueID = [(WBSFormControlMetadata *)self->_textFieldMetadata uniqueID];
      frame = self->_frame;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__SFFormAutocompleteState__performAutoFill__block_invoke;
      v12[3] = &unk_1E8492CF8;
      v12[4] = self;
      [WeakRetained fetchMetadataForTextField:uniqueID inFrame:frame withCompletion:v12];

      return;
    }

    if (action != 4)
    {
      return;
    }

    v4 = 1;
  }

  else
  {
    if (action != 5)
    {
      if (action == 6)
      {

        [(SFFormAutocompleteState *)self captureCreditCardDataWithCameraAndFill];
      }

      else if (action == 7)
      {

        [(SFFormAutocompleteState *)self _suggestPasswordForNewAccountOrChangePasswordForm];
      }

      return;
    }

    v4 = 0;
  }

  [(SFFormAutocompleteState *)self _autoFillSingleCreditCardData:v4];
}

void __43__SFFormAutocompleteState__performAutoFill__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1 + 32) + 232), a2);
  objc_storeStrong((*(a1 + 32) + 240), a3);
  v8 = *(a1 + 32);
  if (v8[29])
  {
    v9 = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
    if ((v9 - 1) < 2)
    {
      [*(a1 + 32) _presentContactsAccessSettingsAlert];
    }

    else if ((v9 - 3) >= 2)
    {
      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695CE18]);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __43__SFFormAutocompleteState__performAutoFill__block_invoke_2;
        v11[3] = &unk_1E8492CD0;
        v11[4] = *(a1 + 32);
        [v10 requestAccessForEntityType:0 completionHandler:v11];
      }
    }

    else
    {
      [*(a1 + 32) _gatherFormValues];
    }
  }

  else
  {
    [v8 updateAutoFillButton];
  }
}

void __43__SFFormAutocompleteState__performAutoFill__block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__SFFormAutocompleteState__performAutoFill__block_invoke_3;
  v2[3] = &unk_1E848FD38;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __43__SFFormAutocompleteState__performAutoFill__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    return [*(a1 + 32) _gatherFormValues];
  }

  *(*(a1 + 32) + 8) = 2;
  return [*(a1 + 32) updateAutoFillButton];
}

- (void)_gatherFormValues
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__SFFormAutocompleteState__gatherFormValues__block_invoke;
  v2[3] = &unk_1E848FA00;
  v2[4] = self;
  [(SFFormAutocompleteState *)self _gatherFormValuesWithCompletionHandler:v2];
}

void *__44__SFFormAutocompleteState__gatherFormValues__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695CE18] authorizationStatusForEntityType:0];
  result = *(a1 + 32);
  if (v2 == 2)
  {
LABEL_4:

    return [result updateAutoFillButton];
  }

  v4 = result[1];
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      return result;
    }

    goto LABEL_4;
  }

  return [result _offerToAutoFillContact];
}

- (void)_presentContactsAccessSettingsAlert
{
  v13 = _WBSLocalizedString();
  v3 = _WBSLocalizedString();
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v3 preferredStyle:1];
  view = [v4 view];
  [view setAccessibilityIdentifier:@"ContactsAccessPrompt"];

  v6 = MEMORY[0x1E69DC648];
  v7 = _WBSLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:0 handler:&__block_literal_global_32];

  [v8 setAccessibilityIdentifier:@"OpenSettingsButton"];
  v9 = MEMORY[0x1E69DC648];
  v10 = _WBSLocalizedString();
  v11 = [v9 actionWithTitle:v10 style:0 handler:0];

  [v11 setAccessibilityIdentifier:@"CancelButton"];
  [v4 addAction:v11];
  [v4 addAction:v8];
  self->_action = 2;
  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  [_viewControllerToPresentFrom presentViewController:v4 animated:1 completion:0];
}

void __62__SFFormAutocompleteState__presentContactsAccessSettingsAlert__block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=Privacy&path=CONTACTS"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:MEMORY[0x1E695E0F8]];
}

- (void)_setUpMultiRoundAutoFillManagerIfNecessary
{
  if (self->_action == 2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C8F78]) initWithDataType:15];
  }

  else
  {
    v3 = 0;
  }

  multiRoundAutoFillManager = self->_multiRoundAutoFillManager;
  self->_multiRoundAutoFillManager = v3;
}

- (int64_t)action
{
  action = self->_action;
  if (!action)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataController);
    if ([(SFFormAutocompleteState *)self _shouldOfferCreditCardDataAfterUserHasFilledCreditCardData:self->_textFieldMetadata])
    {
      if ([WeakRetained isControlASelectElement:self->_textFieldMetadata])
      {
        action = 5;
      }

      else
      {
        action = 4;
      }

LABEL_6:
      self->_action = action;
LABEL_22:

      return action;
    }

    if ([(SFFormAutocompleteState *)self currentControlCanInitiateFillingForRelatedCreditCardFields])
    {
      self->_action = 1;
      if (![(SFFormAutocompleteState *)self _canAutoFillCreditCardData])
      {
        if (+[_SFCreditCardCaptureViewController canCapture])
        {
          action = 6;
        }

        else
        {
          action = 1;
        }

        goto LABEL_6;
      }

      [(SFFormAutocompleteState *)self _updateCreditCardAutoFillAction];
    }

    else
    {
      if ([(SFFormAutocompleteState *)self _shouldUsePasswordGenerationAssistanceForTextField])
      {
        webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
        v6 = objc_loadWeakRetained(&self->_autoFillController);
        webView = [v6 webView];
        v8 = [WeakRetained shouldAutoGeneratePasswordsForURL:webui_URL inWebView:webView];

        if (v8)
        {
          action = [(SFFormAutocompleteState *)self _passwordGenerationAssistanceAction];
          self->_action = action;
          goto LABEL_22;
        }
      }

      self->_action = 1;
      formValues = self->_formValues;
      if ((!formValues || [(NSDictionary *)formValues count]|| [(NSArray *)self->_cachedCredentialMatches count]|| [(NSArray *)self->_cachedRelatedCredentialMatches count]|| [(SFFormAutocompleteState *)self _textFieldIsEmptyPasswordField]) && !self->_gatheringFormValues && self->_formMetadata)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __33__SFFormAutocompleteState_action__block_invoke;
        v11[3] = &unk_1E848FA00;
        v11[4] = self;
        [(SFFormAutocompleteState *)self _gatherFormValuesWithCompletionHandler:v11];
      }
    }

    action = self->_action;
    goto LABEL_22;
  }

  return action;
}

uint64_t __33__SFFormAutocompleteState_action__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) updateAutoFillButton];
  }

  return result;
}

- (int64_t)_actionForLoginForm
{
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  v5 = [WeakRetained shouldAllowPasswordAutoFillOnURL:webui_URL allowExternalCredentials:0];

  if (v5)
  {
    v6 = 8;
  }

  else if ([(SFFormAutocompleteState *)self _shouldAllowExternalPasswordAutoFillOnURL:webui_URL])
  {
    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_textDidChangeInForm:(id)form textField:(id)field
{
  formCopy = form;
  fieldCopy = field;
  if (!self->_hasNotedThatTextDidChangeInPasswordField)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataController);
    v9 = [WeakRetained isPasswordFieldForUserCredentialsWithMetadata:self->_textFieldMetadata formMetadata:self->_formMetadata];

    if (v9)
    {
      self->_hasNotedThatTextDidChangeInPasswordField = 1;
    }
  }

  if (!self->_gatheringFormValues)
  {
    objc_storeStrong(&self->_textFieldMetadata, field);
    objc_storeStrong(&self->_formMetadata, form);
    if (self->_formType == 3)
    {
      action = self->_action;
      _actionForLoginForm = [(SFFormAutocompleteState *)self _actionForLoginForm];
      self->_action = _actionForLoginForm;
      if (_actionForLoginForm != action)
      {
        [(SFFormAutocompleteState *)self updateAutoFillButton];
      }
    }
  }
}

- (void)updateAutoFillButton
{
  action = self->_action;
  if ((action - 4) < 2 || action == 7 || action == 2)
  {
    v5 = _WBSLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  formInputSession = [(_SFFormAutoFillInputSession *)self->_inputSession formInputSession];
  [formInputSession setAccessoryViewCustomButtonTitle:v5];
}

- (BOOL)_textFieldIsEmptyPasswordField
{
  if (![(WBSFormControlMetadata *)self->_textFieldMetadata isSecureTextField])
  {
    return 0;
  }

  value = [(WBSFormControlMetadata *)self->_textFieldMetadata value];
  v4 = [value length] == 0;

  return v4;
}

- (BOOL)_suggestUsernamesForRegistrationIfPossible:(unint64_t)possible
{
  objc_initWeak(&location, self);
  mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

  if (shouldAutoFillPasswordsFromKeychain & 1) != 0 && -[WBSFormMetadata type](self->_formMetadata, "type") == 4 && (-[WBSFormControlMetadata addressBookLabel](self->_textFieldMetadata, "addressBookLabel"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:@"email"], v7, ((v8 | -[WBSFormControlMetadata isLabeledUsernameField](self->_textFieldMetadata, "isLabeledUsernameField"))))
  {
    if (_SFDeviceIsPad())
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    mEMORY[0x1E69C8E28] = [MEMORY[0x1E69C8E28] sharedProvider];
    value = [(WBSFormControlMetadata *)self->_textFieldMetadata value];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__SFFormAutocompleteState__suggestUsernamesForRegistrationIfPossible___block_invoke;
    v14[3] = &unk_1E8492D48;
    objc_copyWeak(v15, &location);
    v15[1] = v9;
    v15[2] = possible;
    [mEMORY[0x1E69C8E28] suggestedUsersOfType:v8 matchingText:value completionHandler:v14];

    objc_destroyWeak(v15);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  objc_destroyWeak(&location);
  return v12;
}

void __70__SFFormAutocompleteState__suggestUsernamesForRegistrationIfPossible___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__SFFormAutocompleteState__suggestUsernamesForRegistrationIfPossible___block_invoke_2;
  v5[3] = &unk_1E8492D20;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __70__SFFormAutocompleteState__suggestUsernamesForRegistrationIfPossible___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_24;
  }

  v4 = [WeakRetained[8] formInputSession];
  v29 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = v4;
    v27 = v3;
    v8 = 0;
    v9 = 0;
    v10 = *v35;
LABEL_4:
    v11 = 0;
    v28 = v8 + v7;
    while (1)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(v5);
      }

      if (v8 == *(a1 + 48))
      {
        break;
      }

      v12 = *(*(&v34 + 1) + 8 * v11);
      ++v8;
      v13 = [v12 value];
      v14 = [_SFTextSuggestion textSuggestionWithUsername:v13];

      v15 = [v12 value];
      [v14 setDisplayText:v15];

      [v29 addObject:v14];
      v9 |= [v12 type] == 2;

      if (v7 == ++v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
        v8 = v28;
        if (v7)
        {
          goto LABEL_4;
        }

        break;
      }
    }

    v4 = v26;
    v3 = v27;
    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = v29;
    v16 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v5);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = _WBSLocalizedString();
          [v20 setHeaderText:v21];
        }

        v17 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v17);
      v4 = v26;
      v3 = v27;
    }
  }

LABEL_20:
  v22 = [v3 _addHideMyEmailSuggestionsIfNecessary:v29 hideMyEmailRecord:{v3[21], v26, v27}];
  v23 = [v22 mutableCopy];

  [v3 _addPasswordsAutoFillSuggestionToSuggestions:v23 forPurpose:0];
  if ([v23 count])
  {
    v24 = objc_loadWeakRetained(v3 + 2);
    v25 = [v3[30] uniqueID];
    [v24 reportAutoFillOfferedType:1 forTextFieldWithID:v25 forFormMetadata:v3[29]];

    [v4 setSuggestions:v23];
  }

  else
  {
    [v3 _updateSuggestions:*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL];
  }

LABEL_24:
}

- (void)_autoFillFormWithUsername:(id)username
{
  v15[1] = *MEMORY[0x1E69E9840];
  textFieldMetadata = self->_textFieldMetadata;
  usernameCopy = username;
  uniqueID = [(WBSFormControlMetadata *)textFieldMetadata uniqueID];
  v7 = MEMORY[0x1E69C8F30];
  v15[0] = uniqueID;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v7 nextFieldAfterControls:v8 inForm:self->_formMetadata];

  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  frame = self->_frame;
  v13 = uniqueID;
  v14 = usernameCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [WeakRetained autoFillFormInFrame:frame withValues:v12 setAutoFilled:1 focusFieldAfterFilling:v9 != 0 fieldToFocus:v9 submitForm:0];
}

- (void)_setShowingKeyboardInputView:(BOOL)view
{
  viewCopy = view;
  if (!self->_emptyInputView && !view)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    emptyInputView = self->_emptyInputView;
    self->_emptyInputView = v5;
  }

  formInputSession = [(_SFFormAutoFillInputSession *)self->_inputSession formInputSession];
  if (viewCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = self->_emptyInputView;
  }

  v9 = formInputSession;
  [formInputSession setCustomInputView:v8];
  [v9 setAccessoryViewShouldNotShow:!viewCopy];
}

- (void)textDidChangeInFrame:(id)frame form:(id)form textField:(id)field
{
  formCopy = form;
  fieldCopy = field;
  if ([frame isEqual:self->_frame])
  {
    uniqueID = [fieldCopy uniqueID];
    uniqueID2 = [(WBSFormControlMetadata *)self->_textFieldMetadata uniqueID];
    v12 = [uniqueID isEqualToString:uniqueID2];

    if (v12)
    {
      objc_storeStrong(&self->_formMetadata, form);
      objc_storeStrong(&self->_textFieldMetadata, field);
      WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
      [(SFFormAutocompleteState *)self _textDidChangeInForm:self->_formMetadata textField:self->_textFieldMetadata];
      if ([fieldCopy isSecureTextField] && objc_msgSend(fieldCopy, "isAutoFilledTextField"))
      {
        v14 = objc_loadWeakRetained(&self->_dataController);
        webView = [WeakRetained webView];
        frame = self->_frame;
        savedAccountContext = [WeakRetained savedAccountContext];
        [v14 textDidChangeInForm:formCopy inWebView:webView frame:frame context:savedAccountContext];
      }

      if (([fieldCopy isSecureTextField] & 1) == 0)
      {
        value = [fieldCopy value];
        v19 = value;
        if (value == self->_prefixForSuggestions || [(NSString *)value isEqualToString:?])
        {
        }

        else
        {
          prefixForSuggestions = self->_prefixForSuggestions;
          self->_prefixForSuggestions = v19;

          [(SFFormAutocompleteState *)self updateSuggestions];
        }
      }
    }
  }
}

- (void)_gatherFormValuesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  self->_gatheringFormValues = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  formMetadata = self->_formMetadata;
  textFieldMetadata = self->_textFieldMetadata;
  multiRoundAutoFillManager = self->_multiRoundAutoFillManager;
  frame = self->_frame;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__SFFormAutocompleteState__gatherFormValuesWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E8492D70;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  v13 = &v14;
  [WeakRetained gatherValuesForForm:formMetadata focusedTextFieldMetadata:textFieldMetadata inFrame:frame multiRoundAutoFillManager:multiRoundAutoFillManager completionHandler:v11];

  *(v15 + 24) = 0;
  _Block_object_dispose(&v14, 8);
}

void __66__SFFormAutocompleteState__gatherFormValuesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  *(*(a1 + 32) + 56) = 0;
  v18 = v5;
  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v7 = v6;
  objc_storeStrong((*(a1 + 32) + 48), v6);

  v8 = *(a1 + 32);
  if (v8[5])
  {
    v9 = [v8 _shouldAllowGeneratedPassword];
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    if (v11 == 3)
    {
      v12 = [v10 _actionForLoginForm];
    }

    else
    {
      v13 = (v9 & (v11 == 4)) == 0;
      v12 = 7;
      if (v13)
      {
        v12 = 8;
      }

      if (v9)
      {
        goto LABEL_11;
      }

      v14 = [*(v10 + 48) count];
      v10 = *(a1 + 32);
      v12 = 2;
      if (v14 || (a3 & 1) != 0)
      {
        goto LABEL_11;
      }

      if ([*(v10 + 240) isSecureTextField] && (WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24)), objc_msgSend(*(*(a1 + 32) + 224), "webui_URL"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(WeakRetained, "shouldAllowPasswordAutoFillOnURL:allowExternalCredentials:", v16, 1), v16, WeakRetained, (v17 & 1) != 0))
      {
        v12 = 8;
      }

      else
      {
        v12 = 1;
      }
    }

    v10 = *(a1 + 32);
LABEL_11:
    *(v10 + 8) = v12;
    (*(*(a1 + 40) + 16))();
  }
}

- (void)autoFillTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  switch([suggestionCopy textSuggestionType])
  {
    case 0:
      oneTimeCode = [suggestionCopy oneTimeCode];
      [(SFFormAutocompleteState *)self _fillOneTimeCodeAfterAuthenticationIfNeeded:oneTimeCode inFrame:self->_frame shouldSubmit:[(WBSFormControlMetadata *)self->_textFieldMetadata oneTimeCodeIsEligibleForAutomaticLogin]];
      goto LABEL_19;
    case 1:
      if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
      {
        uniqueID = [(WBSFormMetadata *)self->_formMetadata uniqueID];
        frame = self->_frame;
        generatedPassword = [suggestionCopy generatedPassword];
        [WeakRetained autoFillForm:uniqueID inFrame:frame withGeneratedPassword:generatedPassword];

        [WeakRetained setShouldSuggestToCustomizeStrongPassword:1];
        mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
        [mEMORY[0x1E69C8810] didSelectNewStrongPassword];

        [(SFFormAutocompleteState *)self updateSuggestions];
      }

      else
      {
        inputSession = self->_inputSession;
        oneTimeCode = [suggestionCopy generatedPassword];
        [WeakRetained beginAutomaticPasswordInteractionWithInputSession:inputSession generatedPassword:oneTimeCode];
LABEL_19:
      }

LABEL_20:

      return;
    case 2:
      [(SFFormAutocompleteState *)self presentCustomizeStrongPasswordAlert];
      goto LABEL_20;
    case 3:
      oneTimeCode = [suggestionCopy username];
      [(SFFormAutocompleteState *)self _autoFillFormWithUsername:oneTimeCode];
      goto LABEL_19;
    case 4:
      oneTimeCode = [suggestionCopy savedAccountMatch];
      -[SFFormAutocompleteState _fillSavedAccountMatchAfterAuthenticationIfNeeded:setAsDefaultCredential:submitForm:](self, "_fillSavedAccountMatchAfterAuthenticationIfNeeded:setAsDefaultCredential:submitForm:", oneTimeCode, 1, [suggestionCopy submitForm]);
      goto LABEL_19;
    case 5:
      oneTimeCode = [suggestionCopy singleDisplayData];
      [(SFFormAutocompleteState *)self _autoFillDisplayData:oneTimeCode setAutoFilled:1];
      goto LABEL_19;
    case 6:
      oneTimeCode = [suggestionCopy credentialIdentity];
      -[SFFormAutocompleteState _fillCredentialIdentity:submitForm:](self, "_fillCredentialIdentity:submitForm:", oneTimeCode, [suggestionCopy submitForm]);
      goto LABEL_19;
    case 7:
      creditCardData = [suggestionCopy creditCardData];
      [(SFFormAutocompleteState *)self _fillCreditCardDataAfterAuthenticationIfNeeded:creditCardData];

      webView = [WeakRetained webView];
      if (objc_opt_respondsToSelector())
      {
        [webView webui_setInputDashboardViewController:0];
      }

      goto LABEL_20;
    case 8:
      oneTimeCode = [suggestionCopy singleCreditCardData];
      value = [oneTimeCode value];
      singleCreditCardData = [suggestionCopy singleCreditCardData];
      -[SFFormAutocompleteState _fillSingleCreditCardDataValue:creditCardDataType:](self, "_fillSingleCreditCardDataValue:creditCardDataType:", value, [singleCreditCardData type]);

      goto LABEL_19;
    case 9:
      oneTimeCode = [suggestionCopy emailRecord];
      [(SFFormAutocompleteState *)self _autoFillHideMyEmailRecord:oneTimeCode];
      goto LABEL_19;
    case 10:
      [(SFFormAutocompleteState *)self _provisionHideMyEmailRecord];
      goto LABEL_20;
    case 11:
      -[SFFormAutocompleteState _autofillESimData:](self, "_autofillESimData:", [suggestionCopy eSimDataType]);
      goto LABEL_20;
    case 12:
      [(SFFormAutocompleteState *)self _presentOtherPasswordsView];
      goto LABEL_20;
    default:
      goto LABEL_20;
  }
}

- (void)_presentOtherPasswordsView
{
  v88 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v4 = objc_loadWeakRetained(&self->_autoFillController);
  webView = [v4 webView];

  v55 = webView;
  webui_presentingViewController = [webView webui_presentingViewController];
  safari_userVisibleString = [webui_URL safari_userVisibleString];
  v7 = [safari_userVisibleString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  host = [webui_URL host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  v10 = +[_SFFormDataController sharedController];
  autoFillQuirksManager = [v10 autoFillQuirksManager];
  associatedDomainsManager = [autoFillQuirksManager associatedDomainsManager];

  v62 = associatedDomainsManager;
  v65 = safari_highLevelDomainFromHost;
  v13 = [associatedDomainsManager domainsWithAssociatedCredentialsForDomain:safari_highLevelDomainFromHost];
  allObjects = [v13 allObjects];

  v15 = MEMORY[0x1E69C8990];
  v57 = webui_URL;
  safari_originalDataAsString = [webui_URL safari_originalDataAsString];
  v78 = 0;
  v79 = 0;
  [v15 getHintStringsForAppID:0 appNames:0 matchedSites:allObjects urlString:safari_originalDataAsString outServiceNameHintStrings:&v79 outDomainHintStrings:&v78];
  v17 = v79;
  v18 = v78;

  v19 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v52 = v19;
    v53 = [allObjects count];
    *buf = 134218498;
    v83 = v53;
    v84 = 2112;
    v85 = v17;
    v86 = 2112;
    v87 = v18;
    _os_log_debug_impl(&dword_1D4644000, v52, OS_LOG_TYPE_DEBUG, "Requested hint strings for number of matchedSites %lu, got service name hint strings: %@ and domain hint strings: %@", buf, 0x20u);
  }

  v61 = allObjects;
  v66 = objc_loadWeakRetained(&self->_autoFillController);
  v20 = objc_alloc_init(SFAccountPickerConfiguration);
  v21 = MEMORY[0x1E696AEC0];
  v22 = _WBSLocalizedString();
  v23 = [v21 stringWithFormat:v22, v7];
  [(SFAccountPickerConfiguration *)v20 setPrompt:v23];

  v24 = MEMORY[0x1E696AEC0];
  v25 = _WBSLocalizedString();
  v63 = v7;
  v26 = [v24 stringWithFormat:v25, v7];
  [(SFAccountPickerConfiguration *)v20 setPromptWhenPasskeysAreAvailable:v26];

  [(SFAccountPickerConfiguration *)v20 setMinimumNumberOfCredentialsToShowLikelyMatchesSection:10];
  passwordElementUniqueID = [(WBSFormMetadata *)self->_formMetadata passwordElementUniqueID];
  -[SFAccountPickerConfiguration setForUserNamesOnly:](v20, "setForUserNamesOnly:", [passwordElementUniqueID length] == 0);

  v60 = v17;
  [(SFAccountPickerConfiguration *)v20 setServiceNameHintStrings:v17];
  v59 = v18;
  [(SFAccountPickerConfiguration *)v20 setDomainHintStrings:v18];
  [(SFAccountPickerConfiguration *)v20 setShouldEnableAddingNewPasswordsIfPossible:1];
  ancestorFrameURLs = [(WBSFormControlMetadata *)self->_textFieldMetadata ancestorFrameURLs];
  v29 = WeakRetained;
  LOBYTE(v25) = [WeakRetained frameIsKnownToAskForCredentialsFromOtherServicesFromAncestorFrameURLs:ancestorFrameURLs];

  if ((v25 & 1) == 0)
  {
    [(SFAccountPickerConfiguration *)v20 setAddPasswordSuggestedDomain:v65];
  }

  mEMORY[0x1E698E018] = [MEMORY[0x1E698E018] sharedManager];
  isDeviceConfiguredToAllowPasskeys = [mEMORY[0x1E698E018] isDeviceConfiguredToAllowPasskeys];

  [(SFAccountPickerConfiguration *)v20 setShouldShowAutoFillPasskeys:isDeviceConfiguredToAllowPasskeys];
  frameHandle = [(_SFFormAutoFillInputSession *)self->_inputSession frameHandle];
  webFrameIdentifier = [frameHandle webFrameIdentifier];
  [(SFAccountPickerConfiguration *)v20 setCurrentWebFrameIdentifierForAutoFillPasskeys:webFrameIdentifier];

  [(SFAccountPickerConfiguration *)v20 setShouldShowPasskeysInAccountPicker:isDeviceConfiguredToAllowPasskeys];
  savedAccountContext = [v66 savedAccountContext];
  [(SFAccountPickerConfiguration *)v20 setSavedAccountContext:savedAccountContext];

  v35 = +[_SFFormDataController sharedController];
  tabIDForAutoFill = [v66 tabIDForAutoFill];
  webui_URL2 = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v38 = [v35 canShowSavedAccountHistoryItemInTabWithID:tabIDForAutoFill currentURL:webui_URL2];

  if (v38)
  {
    lastFilledSavedAccount = [WeakRetained lastFilledSavedAccount];
    [(SFAccountPickerConfiguration *)v20 setSavedAccountForHistorySection:lastFilledSavedAccount];
  }

  v40 = [SFAccountPickerViewController alloc];
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __53__SFFormAutocompleteState__presentOtherPasswordsView__block_invoke;
  v74[3] = &unk_1E8492D98;
  v41 = v57;
  v75 = v41;
  selfCopy = self;
  v42 = v55;
  v77 = v42;
  v43 = [(SFAccountPickerViewController *)v40 initWithConfiguration:v20 completionHandler:v74];
  [(SFAccountPickerViewController *)v43 setModalPresentationStyle:2];
  v44 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v45 = WBSAuthenticationPolicyForPasswordManager();
  v73 = 0;
  LOBYTE(v40) = [v44 canEvaluatePolicy:v45 error:&v73];
  v46 = v73;
  v58 = v46;
  if (v40)
  {
    v80[0] = &unk_1F50231A0;
    v47 = +[SFAutoFillAuthenticationUtilities passcodePromptForViewingSavedAccounts];
    v80[1] = &unk_1F50231B8;
    v81[0] = v47;
    +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForViewingSavedAccounts];
    v48 = v56 = v41;
    v81[1] = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];

    v29 = WeakRetained;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __53__SFFormAutocompleteState__presentOtherPasswordsView__block_invoke_136;
    v67[3] = &unk_1E8492DE8;
    v68 = v43;
    v69 = v44;
    selfCopy2 = self;
    v50 = webui_presentingViewController;
    v71 = webui_presentingViewController;
    v72 = v42;
    v41 = v56;
    [v69 evaluatePolicy:v45 options:v49 reply:v67];
  }

  else
  {
    v50 = webui_presentingViewController;
    if ([v46 code] == -5)
    {
      [(SFFormAutocompleteState *)self _presentViewController:v43 presentingViewController:webui_presentingViewController animated:1 completion:0];
    }

    else
    {
      webui_preventNavigationDuringAutoFillPrompt = [v42 webui_preventNavigationDuringAutoFillPrompt];
    }
  }
}

void __53__SFFormAutocompleteState__presentOtherPasswordsView__block_invoke(id *a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = [a2 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 highLevelDomain];
    v8 = [a1[4] host];
    v9 = [v8 safari_highLevelDomainForPasswordManager];
    v10 = [v7 isEqualToString:v9];

    if (v15)
    {
      v11 = objc_alloc(MEMORY[0x1E695AC48]);
      v12 = [v6 user];
      v13 = [v11 initWithUser:v12 password:v15 persistence:0];

      [a1[5] _fillCredential:v13 setAutoFilled:1 setAsDefaultCredential:v10 focusFieldAfterFilling:0 submitForm:1];
    }

    else
    {
      [a1[5] _fillSavedAccount:v6 setAutoFilled:1 setAsDefaultCredential:v10 focusFieldAfterFilling:0 submitForm:0];
    }
  }

  v14 = [a1[6] webui_preventNavigationDuringAutoFillPrompt];
}

void __53__SFFormAutocompleteState__presentOtherPasswordsView__block_invoke_136(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SFFormAutocompleteState__presentOtherPasswordsView__block_invoke_2;
  block[3] = &unk_1E8492DC0;
  v12 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = *(&v10 + 1);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v14 = v10;
  v13 = v8;
  v15 = *(a1 + 64);
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __53__SFFormAutocompleteState__presentOtherPasswordsView__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [*(a1 + 72) webui_preventNavigationDuringAutoFillPrompt];
  }

  [*(a1 + 40) setAuthenticatedContext:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  return [v4 _presentViewController:v3 presentingViewController:v5 animated:1 completion:0];
}

- (void)_autofillESimData:(int64_t)data
{
  v5 = data == 1;
  v6 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
  v7 = v6;
  if (data)
  {
    v8 = 2 * v5;
  }

  else
  {
    v8 = 1;
  }

  v29 = 0;
  v28 = [v6 retrieveDeviceIdentifier:v8 error:&v29];
  v9 = v29;
  if (v9)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXESim();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SFFormAutocompleteState *)v10 _autofillESimData:v9];
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    controls = [(WBSFormMetadata *)self->_formMetadata controls];
    v12 = [controls count];
    if (v12)
    {
      v13 = v12;
      selfCopy = self;
      v26 = v7;
      v14 = 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v16 = [controls objectAtIndexedSubscript:v14];
        classification = [v16 classification];
        v18 = WBSIsEqual();
        if (!data && (v18 & 1) != 0 || (v19 = WBSIsEqual(), data == 1) && v19)
        {
          uniqueID = [v16 uniqueID];
          [dictionary setObject:v28 forKeyedSubscript:uniqueID];

          if (v14 + 1 < v13)
          {
            v21 = v14 + 1;
          }

          else
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v21;
          }
        }

        ++v14;
      }

      while (v13 != v14);
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        uniqueID2 = 0;
      }

      else
      {
        v23 = [controls objectAtIndexedSubscript:v15];
        uniqueID2 = [v23 uniqueID];
      }

      v9 = 0;
      v7 = v26;
      self = selfCopy;
    }

    else
    {
      uniqueID2 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
    [WeakRetained autoFillFormInFrame:self->_frame withValues:dictionary setAutoFilled:1 focusFieldAfterFilling:uniqueID2 != 0 fieldToFocus:uniqueID2 submitForm:0];
  }
}

- (id)_viewControllerToPresentFrom
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];

  if (webView)
  {
    do
    {
      v4 = webView;
      v5 = [MEMORY[0x1E69DD258] viewControllerForView:webView];
      webView = [webView superview];
    }

    while (webView && !v5);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_presentViewController:(id)controller presentingViewController:(id)viewController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  if ([viewControllerCopy modalPresentationStyle] == 7)
  {
    [viewControllerCopy dismissViewControllerAnimated:0 completion:0];
  }

  [viewControllerCopy presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (BOOL)_shouldShowPasswordOptions
{
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  v5 = [WeakRetained shouldAllowPasswordAutoFillOnURL:webui_URL allowExternalCredentials:0];

  if ((v5 & 1) != 0 || [(SFFormAutocompleteState *)self _shouldAllowExternalPasswordAutoFillOnURL:webui_URL])
  {
    action = [(SFFormAutocompleteState *)self action];
    type = [(WBSFormMetadata *)self->_formMetadata type];
    if (action == 8)
    {
      v8 = 1;
    }

    else
    {
      v9 = type - 3;
      isSecureTextField = [(WBSFormControlMetadata *)self->_textFieldMetadata isSecureTextField];
      if (v9 < 3)
      {
        v8 = isSecureTextField;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_offerToForgetSavedAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_presentingViewController = [webView webui_presentingViewController];

  user = [accountCopy user];
  v11 = [user length];

  [MEMORY[0x1E69E30A8] keychainSyncEnabled];
  v12 = MEMORY[0x1E696AEC0];
  _WBSLocalizedString();
  if (v11)
    v13 = {;
    user2 = [accountCopy user];
    highLevelDomain = [accountCopy highLevelDomain];
    v16 = [v12 stringWithFormat:v13, user2, highLevelDomain];
  }

  else
    v13 = {;
    user2 = [accountCopy highLevelDomain];
    v16 = [v12 stringWithFormat:v13, user2];
  }

  v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v16 message:0 preferredStyle:_SFDeviceAlertStyle()];
  v18 = MEMORY[0x1E69DC648];
  v19 = _WBSLocalizedString();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke;
  v30[3] = &unk_1E8492E10;
  v31 = accountCopy;
  selfCopy = self;
  v20 = handlerCopy;
  v33 = v20;
  v21 = accountCopy;
  v22 = [v18 actionWithTitle:v19 style:2 handler:v30];
  [v17 addAction:v22];

  v23 = MEMORY[0x1E69DC648];
  v24 = _WBSLocalizedString();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke_4;
  v28[3] = &unk_1E8492B10;
  v29 = v20;
  v25 = v20;
  v26 = [v23 actionWithTitle:v24 style:1 handler:v28];
  [v17 addAction:v26];

  [(SFFormAutocompleteState *)self _presentViewController:v17 presentingViewController:webui_presentingViewController animated:1 completion:0];
}

void __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69C8A38] sharedStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8490818;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [v2 removeCredentialTypes:1 forSavedAccount:v3 completionHandler:v5];
}

void __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke_3;
  v2[3] = &unk_1E8490818;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __72__SFFormAutocompleteState__offerToForgetSavedAccount_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setUserAndPasswordFieldsAutoFilled:0 clearPasswordField:1];
  v2 = objc_alloc_init(MEMORY[0x1E69E2100]);
  [v2 schedulePasswordIconsCleanup];
  (*(*(a1 + 40) + 16))();
}

- (void)_getLoginFormUser:(id *)user password:(id *)password userIsAutoFilled:(BOOL *)filled passwordIsAutoFilled:(BOOL *)autoFilled
{
  v32 = *MEMORY[0x1E69E9840];
  *filled = 0;
  *autoFilled = 0;
  userNameElementUniqueID = [(WBSFormMetadata *)self->_formMetadata userNameElementUniqueID];
  passwordElementUniqueID = [(WBSFormMetadata *)self->_formMetadata passwordElementUniqueID];
  if ([userNameElementUniqueID length] || objc_msgSend(passwordElementUniqueID, "length"))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    obj = [(WBSFormMetadata *)self->_formMetadata controls];
    v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          uniqueID = [v14 uniqueID];
          userCopy = user;
          filledCopy = filled;
          if (([uniqueID isEqualToString:userNameElementUniqueID] & 1) != 0 || (userCopy = password, filledCopy = autoFilled, objc_msgSend(uniqueID, "isEqualToString:", passwordElementUniqueID)))
          {
            *userCopy = [v14 value];
            *filledCopy = [v14 isAutoFilledTextField];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }

    if (!*user)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_dataController);
      webui_URL = [(SFFormAutoFillFrameHandle *)selfCopy->_frame webui_URL];
      v20 = objc_loadWeakRetained(&selfCopy->_autoFillController);
      savedAccountContext = [v20 savedAccountContext];
      *user = [WeakRetained lastUsedUsernameWithPasswordForURL:webui_URL inContext:savedAccountContext];

      if (*user)
      {
        *filled = 1;
      }
    }
  }
}

- (void)_fetchPotentialCredentialMatchesWithCompletion:(id)completion
{
  v29[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _cachedPotentialCredentialMatches = [(SFFormAutocompleteState *)self _cachedPotentialCredentialMatches];
  if (_cachedPotentialCredentialMatches)
  {
    completionCopy[2](completionCopy, _cachedPotentialCredentialMatches);
  }

  else
  {
    p_credentialMatchesCompletionHandlers = &self->_credentialMatchesCompletionHandlers;
    credentialMatchesCompletionHandlers = self->_credentialMatchesCompletionHandlers;
    v8 = _Block_copy(completionCopy);
    v9 = [(NSArray *)credentialMatchesCompletionHandlers arrayByAddingObject:v8];
    if (v9)
    {
      objc_storeStrong(&self->_credentialMatchesCompletionHandlers, v9);
    }

    else
    {
      v10 = _Block_copy(completionCopy);
      v29[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v12 = *p_credentialMatchesCompletionHandlers;
      *p_credentialMatchesCompletionHandlers = v11;
    }

    if ([*p_credentialMatchesCompletionHandlers count] <= 1)
    {
      v13 = self->_formMetadata;
      webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
      WeakRetained = objc_loadWeakRetained(&self->_dataController);
      frameHandle = [(_SFFormAutoFillInputSession *)self->_inputSession frameHandle];
      webFrameIdentifier = [frameHandle webFrameIdentifier];

      v18 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __74__SFFormAutocompleteState__fetchPotentialCredentialMatchesWithCompletion___block_invoke;
      block[3] = &unk_1E8492E38;
      v24 = WeakRetained;
      v25 = v13;
      v26 = webui_URL;
      v27 = webFrameIdentifier;
      selfCopy = self;
      v19 = webFrameIdentifier;
      v20 = webui_URL;
      v21 = v13;
      v22 = WeakRetained;
      dispatch_async(v18, block);
    }
  }
}

void __74__SFFormAutocompleteState__fetchPotentialCredentialMatchesWithCompletion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  WeakRetained = objc_loadWeakRetained((a1[8] + 16));
  v7 = [WeakRetained savedAccountContext];
  v8 = [v2 exactFQDNAndOtherSavedAccountMatchesForForm:v3 atURL:v4 webFrameIdentifier:v5 savedAccountContext:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__SFFormAutocompleteState__fetchPotentialCredentialMatchesWithCompletion___block_invoke_2;
  v10[3] = &unk_1E848F548;
  v10[4] = a1[8];
  v11 = v8;
  v9 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __74__SFFormAutocompleteState__fetchPotentialCredentialMatchesWithCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 105) & 1) == 0)
  {
    v2 = [*(a1 + 40) first];
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    *(v3 + 80) = v2;

    v5 = [*(a1 + 40) second];
    v6 = *(a1 + 32);
    v7 = *(v6 + 88);
    *(v6 + 88) = v5;

    v8 = *(*(a1 + 32) + 96);
    v9 = *(a1 + 32);
    v10 = *(v9 + 96);
    *(v9 + 96) = 0;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          v17 = [*(a1 + 32) _cachedPotentialCredentialMatches];
          (*(v16 + 16))(v16, v17);

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (id)_cachedPotentialCredentialMatches
{
  cachedCredentialMatches = self->_cachedCredentialMatches;
  cachedRelatedCredentialMatches = self->_cachedRelatedCredentialMatches;
  if (cachedCredentialMatches)
  {
    v5 = [(NSArray *)cachedCredentialMatches arrayByAddingObjectsFromArray:cachedRelatedCredentialMatches];
  }

  else
  {
    v5 = cachedRelatedCredentialMatches;
  }

  return v5;
}

- (void)_fillSavedAccount:(id)account setAutoFilled:(BOOL)filled setAsDefaultCredential:(BOOL)credential focusFieldAfterFilling:(BOOL)filling submitForm:(BOOL)form
{
  formCopy = form;
  filledCopy = filled;
  fillingCopy = filling;
  credentialCopy = credential;
  v66[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  user = [accountCopy user];
  password = [accountCopy password];
  formType = self->_formType;
  if (formType == 5 || formType == 3)
  {
    v59 = [objc_opt_class() valuesFromUser:user password:password forLoginOrChangePasswordForm:self->_formMetadata];
  }

  else
  {
    uniqueID = [(WBSFormControlMetadata *)self->_textFieldMetadata uniqueID];
    v17 = uniqueID;
    if (uniqueID)
    {
      v18 = &stru_1F4FE9E38;
      if (password)
      {
        v18 = password;
      }

      v65 = uniqueID;
      v66[0] = v18;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    }

    else
    {
      dictionaryRepresentation = [(WBSFormControlMetadata *)self->_textFieldMetadata dictionaryRepresentation];
      v20 = [dictionaryRepresentation mutableCopy];

      [v20 removeObjectForKey:*MEMORY[0x1E69C9318]];
      v21 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SFFormAutocompleteState _fillSavedAccount:setAutoFilled:setAsDefaultCredential:focusFieldAfterFilling:submitForm:];
      }

      v59 = MEMORY[0x1E695E0F8];
    }
  }

  [WeakRetained setLastFilledSavedAccount:accountCopy];
  if (self->_performingPageLevelAutoFill && ![v59 count])
  {
    [(SFFormAutocompleteState *)self _finishPageLevelAutoFillWithResult:5];
  }

  else
  {
    v54 = fillingCopy;
    v22 = objc_loadWeakRetained(&self->_autoFillController);
    v23 = [WeakRetained annotationsFromUsername:user forLoginOrChangePasswordForm:self->_formMetadata];
    if (v23)
    {
      [v22 annotateForm:-[WBSFormMetadata uniqueID](self->_formMetadata inFrame:"uniqueID") withValues:{self->_frame, v23}];
    }

    v53 = v23;
    webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
    user2 = [accountCopy user];
    v26 = [WeakRetained hasAssociatedDomainSavedForURL:webui_URL userName:user2];

    v57 = password;
    v58 = user;
    if (credentialCopy && (v26 & 1) == 0)
    {
      webui_URL2 = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
      v28 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:webui_URL2];
      mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
      protectionSpaces = [accountCopy protectionSpaces];
      protectionSpacesForAdditionalSites = [accountCopy protectionSpacesForAdditionalSites];
      v32 = [protectionSpaces arrayByAddingObjectsFromArray:protectionSpacesForAdditionalSites];

      v52 = v32;
      if ([v32 containsObject:v28])
      {
        host = objc_loadWeakRetained(&self->_dataController);
        savedAccountContext = [v22 savedAccountContext];
        autoFillQuirksManager = [host autoFillQuirksManager];
        [autoFillQuirksManager associatedDomainsManager];
        v51 = WeakRetained;
        v37 = v36 = webui_URL2;
        [mEMORY[0x1E69C8A38] setSavedAccountAsDefault:accountCopy forProtectionSpace:v28 context:savedAccountContext associatedDomainsManager:v37];

        webui_URL2 = v36;
        WeakRetained = v51;
      }

      else
      {
        host = [v28 host];
        savedAccountContext = [host safari_highLevelDomainForPasswordManager];
        autoFillQuirksManager = [accountCopy sharedGroupID];
        v38 = [mEMORY[0x1E69C8A38] saveUser:v58 password:v57 forProtectionSpace:v28 highLevelDomain:savedAccountContext groupID:autoFillQuirksManager];
      }

      password = v57;
      user = v58;
    }

    webui_URL3 = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
    if (formCopy)
    {
      v40 = [WeakRetained shouldSubmitForm:self->_formMetadata withUser:user password:password onURL:webui_URL3];
    }

    else
    {
      v40 = 0;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    allKeys = [v59 allKeys];
    v42 = [allKeys countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v61;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(allKeys);
          }

          [v22 reportAutoFillOfferedType:1 forTextFieldWithID:*(*(&v60 + 1) + 8 * i) forFormMetadata:self->_formMetadata];
        }

        v43 = [allKeys countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v43);
    }

    [v22 autoFillFormInFrame:self->_frame withValues:v59 setAutoFilled:filledCopy focusFieldAfterFilling:v54 fieldToFocus:0 submitForm:v40];
    if (v40)
    {
      [WeakRetained didAutomaticallySubmitFormWhenFillingOnURL:webui_URL3 formMetadata:self->_formMetadata];
    }

    if (self->_performingPageLevelAutoFill)
    {
      [(SFFormAutocompleteState *)self _finishPageLevelAutoFillWithResult:0];
    }

    v46 = +[_SFFormDataController sharedController];
    user3 = [accountCopy user];
    v48 = *MEMORY[0x1E69C8CC0];
    tabIDForAutoFill = [v22 tabIDForAutoFill];
    webView = [v22 webView];
    [v46 didFillPasswordForUsername:user3 fromProviderWithBundleIdentifier:v48 inTabWithID:tabIDForAutoFill currentURL:webui_URL3 isPrivate:objc_msgSend(webView formMetadata:"webui_privateBrowsingEnabled") requester:{self->_formMetadata, 0}];

    password = v57;
    user = v58;
  }
}

- (void)_fillCredential:(id)credential setAutoFilled:(BOOL)filled setAsDefaultCredential:(BOOL)defaultCredential focusFieldAfterFilling:(BOOL)filling submitForm:(BOOL)form
{
  formCopy = form;
  filledCopy = filled;
  fillingCopy = filling;
  defaultCredentialCopy = defaultCredential;
  v52[1] = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  user = [credentialCopy user];
  password = [credentialCopy password];
  formType = self->_formType;
  v15 = formType == 5 || formType == 3;
  v44 = user;
  if (v15)
  {
    v16 = [objc_opt_class() valuesFromUser:user password:password forLoginOrChangePasswordForm:self->_formMetadata];
  }

  else
  {
    v17 = fillingCopy;
    uniqueID = [(WBSFormControlMetadata *)self->_textFieldMetadata uniqueID];
    v19 = uniqueID;
    if (uniqueID)
    {
      v20 = &stru_1F4FE9E38;
      if (password)
      {
        v20 = password;
      }

      v51 = uniqueID;
      v52[0] = v20;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    }

    else
    {
      dictionaryRepresentation = [(WBSFormControlMetadata *)self->_textFieldMetadata dictionaryRepresentation];
      v22 = [dictionaryRepresentation mutableCopy];

      [v22 removeObjectForKey:*MEMORY[0x1E69C9318]];
      v23 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SFFormAutocompleteState _fillSavedAccount:setAutoFilled:setAsDefaultCredential:focusFieldAfterFilling:submitForm:];
      }

      v16 = MEMORY[0x1E695E0F8];
      user = v44;
    }

    fillingCopy = v17;
  }

  if (self->_performingPageLevelAutoFill && ![v16 count])
  {
    [(SFFormAutocompleteState *)self _finishPageLevelAutoFillWithResult:5];
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_autoFillController);
    v25 = [WeakRetained annotationsFromUsername:user forLoginOrChangePasswordForm:self->_formMetadata];
    if (v25)
    {
      [v24 annotateForm:-[WBSFormMetadata uniqueID](self->_formMetadata inFrame:"uniqueID") withValues:{self->_frame, v25}];
    }

    v39 = v25;
    v45 = password;
    if (defaultCredentialCopy)
    {
      [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
      v27 = v26 = user;
      [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:v27];
      v29 = v28 = v16;
      mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
      [mEMORY[0x1E695AC50] safari_setDefaultCredential:credentialCopy forHTMLFormProtectionSpace:v29];

      v16 = v28;
      user = v26;
      password = v45;
      fillingCopy = fillingCopy;
    }

    webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
    v40 = WeakRetained;
    v41 = credentialCopy;
    if (formCopy)
    {
      v32 = [WeakRetained shouldSubmitForm:self->_formMetadata withUser:user password:password onURL:webui_URL];
    }

    else
    {
      v32 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = v16;
    allKeys = [v16 allKeys];
    v35 = [allKeys countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(allKeys);
          }

          [v24 reportAutoFillOfferedType:1 forTextFieldWithID:*(*(&v46 + 1) + 8 * i) forFormMetadata:self->_formMetadata];
        }

        v36 = [allKeys countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v36);
    }

    v16 = v33;
    [v24 autoFillFormInFrame:self->_frame withValues:v33 setAutoFilled:filledCopy focusFieldAfterFilling:fillingCopy fieldToFocus:0 submitForm:v32];
    WeakRetained = v40;
    if (v32)
    {
      [v40 didAutomaticallySubmitFormWhenFillingOnURL:webui_URL formMetadata:self->_formMetadata];
    }

    credentialCopy = v41;
    user = v44;
    if (self->_performingPageLevelAutoFill)
    {
      [(SFFormAutocompleteState *)self _finishPageLevelAutoFillWithResult:0];
    }

    password = v45;
  }
}

+ (void)_getMatchesFromFormProtectionSpace:(id)space matchesFromOtherProtectionSpaces:(id)spaces withFormURL:(id)l credentialMatches:(id)matches lastGeneratedPassword:(id)password currentUser:(id)user currentPassword:(id)currentPassword forUserNamesOnly:(BOOL)self0
{
  v51 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  spacesCopy = spaces;
  matchesCopy = matches;
  passwordCopy = password;
  userCopy = user;
  currentPasswordCopy = currentPassword;
  v33 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:l];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = matchesCopy;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v47;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v46 + 1) + 8 * i);
        user = [v22 user];
        password = [v22 password];
        v25 = password;
        v26 = &stru_1F4FE9E38;
        if (password)
        {
          v26 = password;
        }

        v27 = v26;

        if (([user length] || (objc_msgSend(passwordCopy, "isEqualToString:", v27) & 1) == 0 && !only) && ((objc_msgSend(user, "length") || objc_msgSend(userCopy, "length")) && !objc_msgSend(user, "isEqualToString:", userCopy) || (-[__CFString isEqualToString:](v27, "isEqualToString:", currentPasswordCopy) & 1) == 0))
        {
          v28 = [v39 objectForKeyedSubscript:user];
          if (!v28)
          {
            v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v39 setObject:v28 forKeyedSubscript:user];
          }

          v29 = [v28 objectForKeyedSubscript:v27];
          if (!v29)
          {
            v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v28 setObject:v29 forKeyedSubscript:v27];
          }

          [v29 addObject:v22];
          ++v19;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke;
  v40[3] = &unk_1E8492ED0;
  onlyCopy = only;
  v41 = v33;
  v42 = spaceCopy;
  v43 = spacesCopy;
  v44 = v19;
  v30 = spacesCopy;
  v31 = spaceCopy;
  v32 = v33;
  [v39 enumerateKeysAndObjectsUsingBlock:v40];
  [v31 sortUsingComparator:&__block_literal_global_193];
  [v30 sortUsingComparator:&__block_literal_global_195];
}

void __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AB50];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke_2;
  v20[3] = &unk_1E8492E80;
  v9 = v8;
  v21 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v20];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke_4;
  v12[3] = &unk_1E8492EA8;
  v13 = *(a1 + 32);
  v14 = v9;
  v19 = *(a1 + 64);
  v18 = *(a1 + 56);
  v15 = v5;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
}

void __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_169];
  v6 = [v4 setWithArray:v5];

  [*(a1 + 32) unionSet:v6];
}

void __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke_4(id *a1, uint64_t a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 protectionSpace];
        if ([v10 isEqual:a1[4]])
        {

LABEL_13:
          v12 = 1;
          goto LABEL_14;
        }

        v11 = [v9 autoFillPasskey];

        if (v11)
        {
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
      v12 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  v13 = [v4 firstObject];
  v14 = v13;
  if (v12)
  {
    v15 = a1[4];
  }

  else
  {
    v15 = [v13 protectionSpace];
  }

  v16 = v15;
  v17 = [v15 host];
  if ([a1[5] countForObject:v17] >= 2)
  {
    v18 = [v16 safari_addressString];
    v19 = [v18 safari_simplifiedUserVisibleURLString];

    v17 = v19;
  }

  v20 = [MEMORY[0x1E69C8DE0] sharedManager];
  v21 = [v20 enabledExtensions];
  v22 = [v21 count];

  if (v22 == 1)
  {
    v23 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    [v23 shouldAutoFillPasswordsFromKeychain];
  }

  v24 = [v14 autoFillPasskey];

  if (!v24)
  {
    if (v12)
    {
      v26 = [v14 customTitle];
      v27 = [v26 length];

      if (!v27)
      {
        v25 = _WBSLocalizedString();
        goto LABEL_32;
      }

LABEL_28:
      v25 = [v14 customTitle];
      goto LABEL_32;
    }

    if ([v4 count] == 1)
    {
      v28 = [v14 customTitle];
      v29 = [v28 length];

      if (v29)
      {
        goto LABEL_28;
      }

      v34 = MEMORY[0x1E696AEC0];
      v31 = _WBSLocalizedString();
      v33 = [v34 stringWithFormat:v31, v17];
    }

    else
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = _WBSLocalizedString();
      v32 = [v4 count];
      v33 = [v30 localizedStringWithFormat:v31, v17, v32, v39];
    }

    v35 = v33;

    goto LABEL_33;
  }

  v25 = detailStringForPasskey(v14);
LABEL_32:
  v35 = v25;
LABEL_33:
  if ([a1[6] length])
  {
    v36 = 0;
  }

  else
  {
    v36 = [v16 safari_creationDateOfCredentialWithUser:&stru_1F4FE9E38];
  }

  v37 = [[SFCredentialDisplayData alloc] initWithMatch:v14 detail:v35 creationDate:v36];
  v38 = 8;
  if (v12)
  {
    v38 = 7;
  }

  [a1[v38] addObject:v37];
}

uint64_t __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 match];
  v6 = [v4 match];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __192__SFFormAutocompleteState__getMatchesFromFormProtectionSpace_matchesFromOtherProtectionSpaces_withFormURL_credentialMatches_lastGeneratedPassword_currentUser_currentPassword_forUserNamesOnly___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 match];
  v6 = [v4 match];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_offerToAutoFillFromPotentialCredentialMatches
{
  v74 = *MEMORY[0x1E69E9840];
  v72 = 0;
  v71 = 0;
  v70 = 0;
  [(SFFormAutocompleteState *)self _getLoginFormUser:&v71 password:&v70 userIsAutoFilled:&v72 + 1 passwordIsAutoFilled:&v72];
  v37 = v71;
  v39 = v70;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__196;
  v68 = __Block_byref_object_dispose__197;
  v69 = 0;
  _cachedPotentialCredentialMatches = [(SFFormAutocompleteState *)self _cachedPotentialCredentialMatches];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];

  webui_lastGeneratedPasswordForCurrentBackForwardItem = [webView webui_lastGeneratedPasswordForCurrentBackForwardItem];
  webui_presentingViewController = [webView webui_presentingViewController];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  passwordElementUniqueID = [(WBSFormMetadata *)self->_formMetadata passwordElementUniqueID];
  v4 = [passwordElementUniqueID length];

  mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  LODWORD(passwordElementUniqueID) = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

  if (passwordElementUniqueID)
  {
    LOBYTE(v34) = v4 == 0;
    [SFFormAutocompleteState _getMatchesFromFormProtectionSpace:array matchesFromOtherProtectionSpaces:array2 withFormURL:webui_URL credentialMatches:_cachedPotentialCredentialMatches lastGeneratedPassword:webui_lastGeneratedPasswordForCurrentBackForwardItem currentUser:v37 currentPassword:v39 forUserNamesOnly:v34];
  }

  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  enabledExtensions = [mEMORY[0x1E69C8DE0] enabledExtensions];

  externalCredentialIdentities = [(SFFormAutocompleteState *)self externalCredentialIdentities];
  v8 = _SFDeviceAlertStyle();
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke;
  v63[3] = &unk_1E8492F18;
  v63[4] = self;
  v63[5] = &v64;
  v44 = [SFFormAutoFillMultipleLoginsAlertController alertControllerWithMatchesFromFormProtectionSpace:array matchesFromOtherProtectionSpaces:array2 externalCredentials:externalCredentialIdentities preferredStyle:v8 formURL:webui_URL completionHandler:v63];

  if (v44)
  {
    v35 = _WBSLocalizedString();
    array3 = [MEMORY[0x1E695DF70] array];
    if ([enabledExtensions count])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v10 = enabledExtensions;
      v11 = [v10 countByEnumeratingWithState:&v59 objects:v73 count:16];
      if (v11)
      {
        v12 = *v60;
        do
        {
          v13 = 0;
          do
          {
            if (*v60 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v59 + 1) + 8 * v13);
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_2;
            v58[3] = &unk_1E848F710;
            v58[4] = &v64;
            v15 = [(SFFormAutocompleteState *)self _actionForPresentingPasswordManagerExtension:v14 completionHandler:v58];
            [array3 addObject:v15];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v11);
      }

      v16 = _WBSLocalizedString();

      v17 = v16;
    }

    else
    {
      v17 = v35;
    }

    v53 = MEMORY[0x1E69E9820];
    v54 = 3221225472;
    v55 = __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_3;
    v56 = &unk_1E848FBF8;
    selfCopy = self;
    v18 = v17;
    v19 = [MEMORY[0x1E69DC648] actionWithTitle:? style:? handler:?];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_4;
    aBlock[3] = &unk_1E848F570;
    v20 = array3;
    v49 = v20;
    v21 = v44;
    v50 = v21;
    selfCopy2 = self;
    v22 = v19;
    v52 = v22;
    v23 = _Block_copy(aBlock);
    externalCredentialIdentities2 = [(SFFormAutocompleteState *)self externalCredentialIdentities];
    v25 = [externalCredentialIdentities2 count];

    v26 = [enabledExtensions count];
    mEMORY[0x1E69C8DB8]2 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8]2 shouldAutoFillPasswordsFromKeychain];

    if (v26 + shouldAutoFillPasswordsFromKeychain < 2 && v25 < 2)
    {
      webui_preventNavigationDuringAutoFillPrompt = [webView webui_preventNavigationDuringAutoFillPrompt];
      v30 = v65[5];
      v65[5] = webui_preventNavigationDuringAutoFillPrompt;

      if ([enabledExtensions count])
      {
        firstObject = [enabledExtensions firstObject];
        [(SFFormAutocompleteState *)self _presentCredentialListForExtension:firstObject completionHandler:v65[5]];
      }

      else
      {
        [(SFFormAutocompleteState *)self _presentOtherPasswordsView];
      }
    }

    else
    {
      v23[2](v23);
      webui_preventNavigationDuringAutoFillPrompt2 = [webView webui_preventNavigationDuringAutoFillPrompt];
      v33 = v65[5];
      v65[5] = webui_preventNavigationDuringAutoFillPrompt2;

      [(SFFormAutocompleteState *)self _presentViewController:v21 presentingViewController:webui_presentingViewController animated:1 completion:0];
    }
  }

  _Block_object_dispose(&v64, 8);
}

void __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _fillSavedAccountMatchAfterAuthenticationIfNeeded:v3 setAsDefaultCredential:1 submitForm:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _fillCredentialIdentity:v3 submitForm:0];
    }

    else if (v3)
    {
      __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_cold_1();
    }
  }

  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
}

uint64_t __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addAction:{*(*(&v9 + 1) + 8 * v6++), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 24));
  v8 = [WeakRetained shouldAutoFillPasswords];

  if (v8)
  {
    [*(a1 + 40) addAction:*(a1 + 56)];
  }
}

- (void)_addActionForAlertController:(id)controller title:(id)title detail:(id)detail handler:(id)handler
{
  controllerCopy = controller;
  v10 = [SFMultipleLineAlertAction actionWithTitle:title detail:detail handler:handler];
  [controllerCopy addAction:v10];
}

- (void)_buildAndPresentTextInsertionAutoFill
{
  v75 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_presentingViewController = [webView webui_presentingViewController];

  oneTimeCodeProvider = [WeakRetained oneTimeCodeProvider];
  ancestorFrameURLs = [(WBSFormControlMetadata *)self->_textFieldMetadata ancestorFrameURLs];
  oneTimeCodeFieldClassification = [(WBSFormControlMetadata *)self->_textFieldMetadata oneTimeCodeFieldClassification];
  savedAccountContext = [WeakRetained savedAccountContext];
  v46 = [oneTimeCodeProvider currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:ancestorFrameURLs fieldClassification:oneTimeCodeFieldClassification inContext:savedAccountContext];

  v47 = [v46 safari_filterObjectsUsingBlock:&__block_literal_global_226];
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  getEnabledExtensionsSynchronously = [mEMORY[0x1E69C8DE0] getEnabledExtensionsSynchronously];
  v48 = [getEnabledExtensionsSynchronously safari_filterObjectsUsingBlock:&__block_literal_global_229];

  mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

  v11 = [v47 count];
  v12 = v11 + shouldAutoFillPasswordsFromKeychain + [v48 count];
  if (v12)
  {
    if (v12 == 1)
    {
      firstObject = [v48 firstObject];
      if (firstObject)
      {
        [(SFFormAutocompleteState *)self _presentTextInsertionViewControllerForCredentialProviderExtension:firstObject];
LABEL_7:

        goto LABEL_32;
      }

      if (shouldAutoFillPasswordsFromKeychain)
      {
        [(SFFormAutocompleteState *)self _presentFirstPartyTextInsertionAutoFillAfterAuthentication];
        goto LABEL_7;
      }
    }

    v44 = shouldAutoFillPasswordsFromKeychain;
    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:1];
    array = [MEMORY[0x1E695DF70] array];
    objc_initWeak(&location, self);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v15 = v47;
    v16 = [v15 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v16)
    {
      v17 = *v68;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v67 + 1) + 8 * i);
          v20 = [v19 localizedSubtitleForContext:0];
          v21 = [v19 localizedTitleForContext:0];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_3;
          v65[3] = &unk_1E848FCE8;
          objc_copyWeak(&v66, &location);
          v65[4] = v19;
          [(SFFormAutocompleteState *)self _addActionForAlertController:v14 title:v20 detail:v21 handler:v65];

          objc_destroyWeak(&v66);
        }

        v16 = [v15 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v16);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v22 = v48;
    v23 = [v22 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v23)
    {
      v24 = *v62;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v61 + 1) + 8 * j);
          mEMORY[0x1E69C8DE0]2 = [MEMORY[0x1E69C8DE0] sharedManager];
          v28 = [mEMORY[0x1E69C8DE0]2 displayNameForExtension:v26];

          v29 = MEMORY[0x1E696AEC0];
          v30 = _WBSLocalizedString();
          v31 = [v29 stringWithFormat:v30, v28];

          v32 = MEMORY[0x1E69DC648];
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_4;
          v59[3] = &unk_1E848FCE8;
          objc_copyWeak(&v60, &location);
          v59[4] = v26;
          v33 = [v32 _actionWithTitle:v31 image:0 style:0 handler:v59 shouldDismissHandler:&__block_literal_global_238];
          [array addObject:v33];

          objc_destroyWeak(&v60);
        }

        v23 = [v22 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v23);
    }

    if (v44)
    {
      v34 = _WBSLocalizedString();
      v35 = MEMORY[0x1E69DC648];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_6;
      v57[3] = &unk_1E848FFD0;
      objc_copyWeak(&v58, &location);
      v36 = [v35 _actionWithTitle:v34 image:0 style:0 handler:v57 shouldDismissHandler:&__block_literal_global_240];
      [array addObject:v36];

      objc_destroyWeak(&v58);
    }

    [array sortUsingComparator:&__block_literal_global_243];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v37 = array;
    v38 = [v37 countByEnumeratingWithState:&v53 objects:v72 count:16];
    if (v38)
    {
      v39 = *v54;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v54 != v39)
          {
            objc_enumerationMutation(v37);
          }

          [v14 addAction:*(*(&v53 + 1) + 8 * k)];
        }

        v38 = [v37 countByEnumeratingWithState:&v53 objects:v72 count:16];
      }

      while (v38);
    }

    v41 = MEMORY[0x1E69DC648];
    v42 = _WBSLocalizedString();
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_9;
    v52[3] = &unk_1E848FBF8;
    v52[4] = self;
    v43 = [v41 actionWithTitle:v42 style:1 handler:v52];
    [v14 addAction:v43];

    [(SFFormAutocompleteState *)self _presentViewController:v14 presentingViewController:webui_presentingViewController animated:1 completion:0];
    objc_destroyWeak(&location);
  }

LABEL_32:
}

uint64_t __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C8DE0];
  v3 = a2;
  v4 = [v2 sharedManager];
  v5 = [v4 extensionSupportsTextInsertion:v3];

  return v5;
}

void __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _fillOneTimeCodeAfterAuthenticationIfNeeded:*(a1 + 32) inFrame:WeakRetained[28] shouldSubmit:{objc_msgSend(WeakRetained[30], "oneTimeCodeIsEligibleForAutomaticLogin")}];
    WeakRetained = v3;
  }
}

void __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentTextInsertionViewControllerForCredentialProviderExtension:*(a1 + 32)];
}

void __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentFirstPartyTextInsertionAutoFillAfterAuthentication];
}

uint64_t __64__SFFormAutocompleteState__buildAndPresentTextInsertionAutoFill__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)_presentFirstPartyTextInsertionAutoFillAfterAuthentication
{
  v42[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_presentingViewController = [webView webui_presentingViewController];

  v6 = objc_alloc_init(SFAccountPickerConfiguration);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  safari_userVisibleString = [webui_URL safari_userVisibleString];
  v9 = [safari_userVisibleString safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v10 stringWithFormat:v11, v9];
  [(SFAccountPickerConfiguration *)v6 setPrompt:v12];

  [(SFAccountPickerConfiguration *)v6 setMinimumNumberOfCredentialsToShowLikelyMatchesSection:10];
  ancestorFrameURLs = [(WBSFormControlMetadata *)self->_textFieldMetadata ancestorFrameURLs];
  lastObject = [ancestorFrameURLs lastObject];

  host = [lastObject host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  v32 = safari_highLevelDomainFromHost;
  if (safari_highLevelDomainFromHost)
  {
    v42[0] = safari_highLevelDomainFromHost;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    [(SFAccountPickerConfiguration *)v6 setDomainHintStrings:v17];
  }

  else
  {
    [(SFAccountPickerConfiguration *)v6 setDomainHintStrings:0];
  }

  [(SFAccountPickerConfiguration *)v6 setShouldEnableAddingNewPasswordsIfPossible:1];
  savedAccountContext = [WeakRetained savedAccountContext];
  [(SFAccountPickerConfiguration *)v6 setSavedAccountContext:savedAccountContext];

  [(SFAccountPickerConfiguration *)v6 setIsForFillingIndividualAccountFields:1];
  [(SFAccountPickerConfiguration *)v6 setShouldShowReceivedVerificationCodes:1];
  v33 = lastObject;
  [(SFAccountPickerConfiguration *)v6 setWebsiteURLForReceivedVerificationCodes:lastObject];
  v19 = [[SFAccountPickerViewController alloc] initWithConfiguration:v6 completionHandler:&__block_literal_global_245];
  [(SFAccountPickerViewController *)v19 setSystemAutoFillDelegate:self];
  [(SFAccountPickerViewController *)v19 setModalPresentationStyle:2];
  v20 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v21 = WBSAuthenticationPolicyForPasswordManager();
  v39 = 0;
  v22 = [v20 canEvaluatePolicy:v21 error:&v39];
  v23 = v39;
  v24 = v23;
  if (v22)
  {
    v40[0] = &unk_1F50231A0;
    +[SFAutoFillAuthenticationUtilities passcodePromptForViewingSavedAccounts];
    v25 = v31 = WeakRetained;
    v41[0] = v25;
    v40[1] = &unk_1F50231B8;
    +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForViewingSavedAccounts];
    selfCopy = self;
    v26 = v9;
    v28 = v27 = webui_presentingViewController;
    v41[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

    webui_presentingViewController = v27;
    v9 = v26;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __85__SFFormAutocompleteState__presentFirstPartyTextInsertionAutoFillAfterAuthentication__block_invoke_2;
    v34[3] = &unk_1E8492F80;
    v35 = v19;
    v36 = v20;
    v37 = selfCopy;
    v38 = webui_presentingViewController;
    WeakRetained = v31;
    [v36 evaluatePolicy:v21 options:v29 reply:v34];
  }

  else if ([v23 code] == -5)
  {
    [(SFFormAutocompleteState *)self _presentViewController:v19 presentingViewController:webui_presentingViewController animated:1 completion:0];
  }
}

void __85__SFFormAutocompleteState__presentFirstPartyTextInsertionAutoFillAfterAuthentication__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v14 = v3;
    v15 = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__SFFormAutocompleteState__presentFirstPartyTextInsertionAutoFillAfterAuthentication__block_invoke_3;
    block[3] = &unk_1E848F570;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 48);
    v8 = *(&v10 + 1);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    v12 = v9;
    v13 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __85__SFFormAutocompleteState__presentFirstPartyTextInsertionAutoFillAfterAuthentication__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAuthenticatedContext:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v3 _presentViewController:v2 presentingViewController:v4 animated:1 completion:0];
}

- (void)_presentTextInsertionViewControllerForCredentialProviderExtension:(id)extension
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695A920];
  extensionCopy = extension;
  v6 = [v4 alloc];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  safari_originalDataAsString = [webui_URL safari_originalDataAsString];
  v9 = [v6 initWithIdentifier:safari_originalDataAsString type:1];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  v11 = [objc_alloc(MEMORY[0x1E695A980]) initForTextSelectingWithExtension:extensionCopy serviceIdentifiers:v10];
  [v11 setDelegate:self];
  [v11 setDismissOnBackground:1];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_presentingViewController = [webView webui_presentingViewController];

  [(SFFormAutocompleteState *)self _presentViewController:v11 presentingViewController:webui_presentingViewController animated:1 completion:0];
}

- (void)_fillTextIntoCurrentField:(id)field
{
  v15[1] = *MEMORY[0x1E69E9840];
  textFieldMetadata = self->_textFieldMetadata;
  fieldCopy = field;
  uniqueID = [(WBSFormControlMetadata *)textFieldMetadata uniqueID];
  v7 = MEMORY[0x1E69C8F30];
  v15[0] = uniqueID;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [v7 nextFieldAfterControls:v8 inForm:self->_formMetadata];

  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  frame = self->_frame;
  v13 = uniqueID;
  v14 = fieldCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [WeakRetained autoFillFormInFrame:frame withValues:v12 setAutoFilled:1 focusFieldAfterFilling:v9 != 0 fieldToFocus:v9 submitForm:0];
}

- (void)accountPickerViewController:(id)controller fillUsernameForSavedAccount:(id)account
{
  controllerCopy = controller;
  user = [account user];
  [(SFFormAutocompleteState *)self _fillTextIntoCurrentField:user];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)accountPickerViewController:(id)controller fillPasswordForSavedAccount:(id)account
{
  controllerCopy = controller;
  password = [account password];
  [(SFFormAutocompleteState *)self _fillTextIntoCurrentField:password];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)accountPickerViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account
{
  controllerCopy = controller;
  currentOneTimeCode = [account currentOneTimeCode];
  [(SFFormAutocompleteState *)self _fillTextIntoCurrentField:currentOneTimeCode];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)accountPickerViewController:(id)controller fillVerificationCode:(id)code
{
  controllerCopy = controller;
  code = [code code];
  [(SFFormAutocompleteState *)self _fillTextIntoCurrentField:code];

  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_fillSavedAccountMatchAfterAuthenticationIfNeeded:(id)needed setAsDefaultCredential:(BOOL)credential submitForm:(BOOL)form
{
  neededCopy = needed;
  autoFillPasskey = [neededCopy autoFillPasskey];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  user = [neededCopy user];
  shouldRequireUserVerification = [autoFillPasskey shouldRequireUserVerification];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __111__SFFormAutocompleteState__fillSavedAccountMatchAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke;
  v15[3] = &unk_1E8492FA8;
  v15[4] = self;
  v16 = autoFillPasskey;
  v17 = neededCopy;
  credentialCopy = credential;
  formCopy = form;
  v13 = neededCopy;
  v14 = autoFillPasskey;
  [WeakRetained authenticateIfNeededForAutoFillAuthenticationType:autoFillPasskey != 0 user:user shouldForceAuthentication:shouldRequireUserVerification withCompletion:v15];
}

void __111__SFFormAutocompleteState__fillSavedAccountMatchAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v7 = WeakRetained;
    if (*(a1 + 40))
    {
      v8 = [WeakRetained savedAccountContext];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(v9 + 184);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __111__SFFormAutocompleteState__fillSavedAccountMatchAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke_2;
      v12[3] = &unk_1E848F810;
      v13 = v7;
      [v11 userSelectedAutoFillPasskey:v10 authenticatedLAContext:v5 savedAccountContext:v8 completionHandler:v12];
    }

    else
    {
      v8 = [*(a1 + 48) savedAccount];
      [*(a1 + 32) _fillSavedAccount:v8 setAutoFilled:1 setAsDefaultCredential:*(a1 + 56) focusFieldAfterFilling:*(a1 + 57) submitForm:*(a1 + 57)];
      [v7 didCompleteWithSavedAccount:v8];
    }
  }
}

void __111__SFFormAutocompleteState__fillSavedAccountMatchAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__SFFormAutocompleteState__fillSavedAccountMatchAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke_3;
  block[3] = &unk_1E848F810;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_fillCredentialAfterAuthenticationIfNeeded:(id)needed setAsDefaultCredential:(BOOL)credential submitForm:(BOOL)form
{
  neededCopy = needed;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  user = [neededCopy user];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __104__SFFormAutocompleteState__fillCredentialAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke;
  v12[3] = &unk_1E8492FD0;
  v12[4] = self;
  v13 = neededCopy;
  credentialCopy = credential;
  formCopy = form;
  v11 = neededCopy;
  [WeakRetained authenticateIfNeededForAutoFillAuthenticationType:0 user:user shouldForceAuthentication:0 withCompletion:v12];
}

uint64_t __104__SFFormAutocompleteState__fillCredentialAfterAuthenticationIfNeeded_setAsDefaultCredential_submitForm___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _fillCredential:*(result + 40) setAutoFilled:1 setAsDefaultCredential:*(result + 48) focusFieldAfterFilling:*(result + 49) submitForm:*(result + 49)];
  }

  return result;
}

- (void)_fillOneTimeCodeAfterAuthenticationIfNeeded:(id)needed inFrame:(id)frame shouldSubmit:(BOOL)submit
{
  neededCopy = needed;
  frameCopy = frame;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__SFFormAutocompleteState__fillOneTimeCodeAfterAuthenticationIfNeeded_inFrame_shouldSubmit___block_invoke;
  aBlock[3] = &unk_1E8492FF8;
  objc_copyWeak(&v21, &location);
  v10 = frameCopy;
  v19 = v10;
  v11 = neededCopy;
  v20 = v11;
  submitCopy = submit;
  v12 = _Block_copy(aBlock);
  requiresAuthentication = [v11 requiresAuthentication];
  source = [v11 source];
  if (source >= 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_1D47DD948[source];
  }

  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  user = [v11 user];
  [WeakRetained authenticateIfNeededForAutoFillAuthenticationType:v15 user:user shouldForceAuthentication:requiresAuthentication withCompletion:v12];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __92__SFFormAutocompleteState__fillOneTimeCodeAfterAuthenticationIfNeeded_inFrame_shouldSubmit___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v4 = objc_loadWeakRetained(WeakRetained + 2);
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) code];
      [v4 autoFillOneTimeCodeFieldsInFrame:v5 withValue:v6 shouldSubmit:*(a1 + 56)];

      objc_storeStrong(v7 + 26, *(a1 + 40));
      [v7 updateSuggestions];

      WeakRetained = v7;
    }
  }
}

- (void)_suggestLoginCredentialsShowingQuickTypeKey:(BOOL)key
{
  keyCopy = key;
  v48[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  if (!self->_fetchingLoginCredentialSuggestions)
  {
    self->_fetchingLoginCredentialSuggestions = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke;
    aBlock[3] = &unk_1E8493020;
    objc_copyWeak(&v45, &location);
    v46 = keyCopy;
    v18 = _Block_copy(aBlock);
    if (keyCopy)
    {
      self->_quickTypeBarTrailingButtonPurpose = 0;
      autofillExtrasSuggestion = [MEMORY[0x1E69DC6D8] autofillExtrasSuggestion];
      v48[0] = autofillExtrasSuggestion;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
      formInputSession = [(_SFFormAutoFillInputSession *)self->_inputSession formInputSession];
      [formInputSession setSuggestions:v6];
    }

    v8 = dispatch_group_create();
    webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__3;
    v42 = __Block_byref_object_dispose__3;
    v43 = 0;
    array = [MEMORY[0x1E695DF70] array];
    host = [webui_URL host];
    safari_domainFromHost = [host safari_domainFromHost];
    safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
    if (safari_domainFromHost)
    {
      [array addObject:safari_domainFromHost];
    }

    if (safari_highLevelDomainFromHost)
    {
      [array addObject:safari_highLevelDomainFromHost];
    }

    v14 = [array count];
    if (v14)
    {
      dispatch_group_enter(v8);
      v15 = dispatch_get_global_queue(33, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_2;
      block[3] = &unk_1E8493070;
      v33 = array;
      v34 = webui_URL;
      selfCopy = self;
      v37 = &v38;
      v36 = v8;
      dispatch_async(v15, block);
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__3;
    v30 = __Block_byref_object_dispose__3;
    v31 = 0;
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

    if (shouldAutoFillPasswordsFromKeychain)
    {
      dispatch_group_enter(v8);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_4;
      v23[3] = &unk_1E8493048;
      v25 = &v26;
      v24 = v8;
      [(SFFormAutocompleteState *)self _getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames:1 withCompletion:v23];
    }

    else if (!v14)
    {
      v18[2](v18, v27[5], v39[5]);
      goto LABEL_14;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_5;
    v19[3] = &unk_1E8493098;
    v20 = v18;
    v21 = &v26;
    v22 = &v38;
    dispatch_group_notify(v8, MEMORY[0x1E69E96A0], v19);

LABEL_14:
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v38, 8);
    objc_destroyWeak(&v45);
  }

  objc_destroyWeak(&location);
}

void __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[104] = 0;
    if ((WeakRetained[105] & 1) == 0)
    {
      obj = a3;
      v45 = a1;
      v9 = [MEMORY[0x1E695DF70] array];
      v49 = [MEMORY[0x1E695DF70] array];
      v10 = *(v8 + 9);
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v12 = objc_loadWeakRetained(v8 + 3);
        v13 = objc_opt_class();
        v14 = [*(v8 + 29) userNameElementUniqueID];
        v11 = [v13 valueOfControlWithUniqueID:v14 inForm:*(v8 + 29)];
      }

      v53 = v11;
      v54 = [v11 length];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v46 = v6;
      v15 = v6;
      v16 = [v15 countByEnumeratingWithState:&v59 objects:v64 count:16];
      v50 = v8;
      if (v16)
      {
        v17 = v16;
        v18 = *v60;
LABEL_8:
        v19 = 0;
        while (1)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v59 + 1) + 8 * v19);
          if ([v9 count])
          {
            break;
          }

          v21 = [v20 user];
          v22 = v21;
          if (v54 && ![v21 safari_hasCaseInsensitivePrefix:v53])
          {
            v24 = [v53 componentsSeparatedByString:@"@"];
            v23 = [v24 firstObject];

            v8 = v50;
            if ([v22 safari_hasCaseInsensitivePrefix:v23])
            {
              v25 = [v50 _textSuggestionForExternalCredentialIdentity:v20 submitForm:0];
              [v49 addObject:v25];
            }
          }

          else
          {
            v23 = [v8 _textSuggestionForExternalCredentialIdentity:v20 submitForm:0];
            [v9 addObject:v23];
          }

          if (v17 == ++v19)
          {
            v26 = [v15 countByEnumeratingWithState:&v59 objects:v64 count:16];
            v17 = v26;
            if (v26)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      objc_storeStrong(v8 + 17, obj);
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v47 = v5;
      v27 = v5;
      v28 = v53;
      obja = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (obja)
      {
        v29 = *v56;
        v48 = *v56;
LABEL_23:
        v30 = 0;
        while (1)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v55 + 1) + 8 * v30);
          if ([v9 count])
          {
            break;
          }

          v32 = [v31 match];
          v33 = [v32 user];

          if (v54 && ![v33 safari_hasCaseInsensitivePrefix:v28])
          {
            v35 = v27;
            v36 = [v28 componentsSeparatedByString:@"@"];
            v34 = [v36 firstObject];

            v37 = [v33 safari_hasCaseInsensitivePrefix:v34];
            v38 = [v31 match];
            v39 = [v38 autoFillPasskey];
            v40 = [v39 requestUsedNonEmptyAllowList];

            if ((v37 & 1) != 0 || v40)
            {
              v8 = v50;
              v41 = [v50 _textSuggestionForCredentialDisplayData:v31 submitForm:0];
              [v49 addObject:v41];
            }

            else
            {
              v8 = v50;
            }

            v28 = v53;
            v27 = v35;
            v29 = v48;
          }

          else
          {
            v34 = [v8 _textSuggestionForCredentialDisplayData:v31 submitForm:0];
            [v9 addObject:v34];
          }

          if (obja == ++v30)
          {
            obja = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (obja)
            {
              goto LABEL_23;
            }

            break;
          }
        }
      }

      [v9 addObjectsFromArray:v49];
      if (*(v45 + 40) == 1)
      {
        [v8 _addPasswordsAutoFillSuggestionToSuggestions:v9 forPurpose:0];
      }

      v42 = [*(v8 + 8) formInputSession];
      v43 = objc_loadWeakRetained(v8 + 2);
      v44 = [*(v8 + 30) uniqueID];
      [v43 reportAutoFillOfferedType:1 forTextFieldWithID:v44 forFormMetadata:*(v8 + 29)];

      [v42 setSuggestions:v9];
      v6 = v46;
      v5 = v47;
    }
  }
}

void __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 48) + 64) frameHandle];
  v5 = [v4 webFrameIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_3;
  v8[3] = &unk_1E8493048;
  v7 = *(a1 + 56);
  v6 = v7;
  v9 = v7;
  [_SFFormAutoFillController _getExternalLoginCredentialSuggestionsForDomains:v2 pageURL:v3 webFrameIdentifier:v5 completion:v8];
}

void __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __71__SFFormAutocompleteState__suggestLoginCredentialsShowingQuickTypeKey___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_addPasswordsAutoFillSuggestionToSuggestions:(id)suggestions forPurpose:(int64_t)purpose
{
  self->_quickTypeBarTrailingButtonPurpose = purpose;
  v4 = MEMORY[0x1E69DC6D8];
  suggestionsCopy = suggestions;
  autofillExtrasSuggestion = [v4 autofillExtrasSuggestion];
  [suggestionsCopy addObject:autofillExtrasSuggestion];
}

- (void)_getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames:(BOOL)usernames withCompletion:(id)completion
{
  completionCopy = completion;
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v29 = 0;
  v27 = 0;
  v28 = 0;
  [(SFFormAutocompleteState *)self _getLoginFormUser:&v28 password:&v27 userIsAutoFilled:&v29 + 1 passwordIsAutoFilled:&v29];
  v10 = v28;
  v11 = v27;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__SFFormAutocompleteState__getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames_withCompletion___block_invoke;
  v18[3] = &unk_1E84930E0;
  usernamesCopy = usernames;
  v19 = array;
  v20 = array2;
  v21 = webui_URL;
  selfCopy = self;
  v23 = v10;
  v24 = v11;
  v25 = completionCopy;
  v12 = completionCopy;
  v13 = v11;
  v14 = v10;
  v15 = webui_URL;
  v16 = array2;
  v17 = array;
  [(SFFormAutocompleteState *)self _fetchPotentialCredentialMatchesWithCompletion:v18];
}

void __112__SFFormAutocompleteState__getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = v3;
  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = [v3 safari_filterObjectsUsingBlock:&__block_literal_global_257];

    v17 = v4;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 16));
  v9 = [WeakRetained webView];
  v10 = [v9 webui_lastGeneratedPasswordForCurrentBackForwardItem];
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = [*(*(a1 + 56) + 232) passwordElementUniqueID];
  LOBYTE(v16) = [v13 length] == 0;
  [SFFormAutocompleteState _getMatchesFromFormProtectionSpace:v5 matchesFromOtherProtectionSpaces:v6 withFormURL:v7 credentialMatches:v17 lastGeneratedPassword:v10 currentUser:v12 currentPassword:v11 forUserNamesOnly:v16];

  v14 = *(a1 + 80);
  v15 = [*(a1 + 32) arrayByAddingObjectsFromArray:*(a1 + 40)];
  (*(v14 + 16))(v14, v15);
}

BOOL __112__SFFormAutocompleteState__getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 user];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_textSuggestionForCredentialDisplayData:(id)data submitForm:(BOOL)form
{
  formCopy = form;
  dataCopy = data;
  match = [dataCopy match];
  v7 = [_SFTextSuggestion textSuggestionWithSavedAccountMatch:match submitForm:formCopy];

  match2 = [dataCopy match];
  user = [match2 user];
  creationDate = [dataCopy creationDate];
  v11 = [SFCredentialDisplayData descriptionForPasswordWithUser:user creationDate:creationDate];
  [v7 setDisplayText:v11];

  detail = [dataCopy detail];

  [v7 setHeaderText:detail];

  return v7;
}

- (void)showAllPasswordsButtonTapped
{
  quickTypeBarTrailingButtonPurpose = self->_quickTypeBarTrailingButtonPurpose;
  if (quickTypeBarTrailingButtonPurpose == 1)
  {
    [(SFFormAutocompleteState *)self _offerToAutoFillFromAvailableOneTimeCodes];
  }

  else if (!quickTypeBarTrailingButtonPurpose)
  {
    [(SFFormAutocompleteState *)self _offerToAutoFillFromPotentialCredentialMatches];
  }
}

- (BOOL)_hasMatchWithUser:(id)user password:(id)password
{
  v24 = *MEMORY[0x1E69E9840];
  userCopy = user;
  passwordCopy = password;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(SFFormAutocompleteState *)self _cachedPotentialCredentialMatches];
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = userCopy;
        v12 = passwordCopy;
        user = [v10 user];
        if (([v11 length] || objc_msgSend(user, "length")) && !objc_msgSend(user, "isEqualToString:", v11))
        {
        }

        else
        {
          password = [v10 password];
          v15 = [password isEqualToString:v12];

          if (v15)
          {
            LOBYTE(v7) = 1;
            goto LABEL_14;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

LABEL_14:

  return v7;
}

- (void)_getShouldOfferForgetPassword:(BOOL *)password savePassword:(BOOL *)savePassword
{
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v9 = [WeakRetained shouldAllowPasswordAutoFillOnURL:webui_URL allowExternalCredentials:0];

  if (v9)
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    [(SFFormAutocompleteState *)self _getLoginFormUser:&v17 password:&v16 userIsAutoFilled:&v18 + 1 passwordIsAutoFilled:&v18];
    v10 = v17;
    v11 = v16;
    if (!self->_hasDeterminedIfURLIsAllowedByWhiteList)
    {
      webui_URL2 = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
      self->_URLIsAllowedByWhiteList = [WeakRetained whiteListAllowsURL:webui_URL2];

      self->_hasDeterminedIfURLIsAllowedByWhiteList = 1;
    }

    v13 = v18 == 1 && ((v18 & 0x100) != 0 || ![v10 length]) && -[SFFormAutocompleteState _hasMatchWithUser:password:](self, "_hasMatchWithUser:password:", v10, v11);
    *password = v13;
    if (self->_URLIsAllowedByWhiteList && ((v18 & 0x100) == 0 && v10 || (v18 & 1) == 0) && [v11 length])
    {
      uniqueID = [(WBSFormControlMetadata *)self->_textFieldMetadata uniqueID];
      passwordElementUniqueID = [(WBSFormMetadata *)self->_formMetadata passwordElementUniqueID];
      *savePassword = [uniqueID isEqualToString:passwordElementUniqueID];
    }

    else
    {
      *savePassword = 0;
    }
  }

  else
  {
    *password = 0;
    *savePassword = 0;
  }
}

- (void)_setUserAndPasswordFieldsAutoFilled:(BOOL)filled clearPasswordField:(BOOL)field
{
  fieldCopy = field;
  filledCopy = filled;
  array = [MEMORY[0x1E695DF70] array];
  passwordElementUniqueID = [(WBSFormMetadata *)self->_formMetadata passwordElementUniqueID];
  if ([passwordElementUniqueID length])
  {
    [array addObject:passwordElementUniqueID];
  }

  userNameElementUniqueID = [(WBSFormMetadata *)self->_formMetadata userNameElementUniqueID];
  if ([userNameElementUniqueID length])
  {
    [array addObject:userNameElementUniqueID];
  }

  if ([array count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
    v10 = WeakRetained;
    if (fieldCopy)
    {
      v11 = passwordElementUniqueID;
    }

    else
    {
      v11 = 0;
    }

    [WeakRetained setFormControls:array areAutoFilled:filledCopy andClearField:v11 inFrame:self->_frame];
  }
}

- (BOOL)_shouldUsePasswordGenerationAssistanceForTextField
{
  if (self->_formMetadata && (v3 = -[WBSFormControlMetadata maxLength](self->_textFieldMetadata, "maxLength"), v3 >= [MEMORY[0x1E69C8970] minimumPasswordLength]))
  {
    classification = [(WBSFormControlMetadata *)self->_textFieldMetadata classification];
    v4 = [classification isEqualToString:*MEMORY[0x1E69C9150]];

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataController);
      autoFillQuirksManager = [WeakRetained autoFillQuirksManager];
      passwordGenerationManager = [autoFillQuirksManager passwordGenerationManager];

      webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
      v11 = [passwordGenerationManager defaultRequirementsForURL:webui_URL];

      if ([passwordGenerationManager passwordGenerationIsDisallowedByRequirements:v11])
      {
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        LOBYTE(v4) = [standardUserDefaults BOOLForKey:@"WBUDebugOverridePasswordGenerationIsDisallowedByRequirements"];
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)_shouldSaveCredentialsInProtectionSpace:(id)space savedAccountContext:(id)context
{
  spaceCopy = space;
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v7 = MEMORY[0x1E69C8A30];
  safari_URL = [spaceCopy safari_URL];
  v9 = [v7 criteriaForExactFQDNPasswordMatchesOfURL:safari_URL];

  [v9 setOptions:{objc_msgSend(v9, "options") | 4}];
  [v9 setContext:contextCopy];
  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__SFFormAutocompleteState__shouldSaveCredentialsInProtectionSpace_savedAccountContext___block_invoke;
  v12[3] = &unk_1E8493108;
  v12[4] = &v13;
  [mEMORY[0x1E69C8A38] getSavedAccountsMatchingCriteria:v9 withSynchronousCompletionHandler:v12];

  LOBYTE(mEMORY[0x1E69C8A38]) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return mEMORY[0x1E69C8A38];
}

void __87__SFFormAutocompleteState__shouldSaveCredentialsInProtectionSpace_savedAccountContext___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 exactMatches];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) user];
        v9 = [MEMORY[0x1E69C8F30] dontSaveMarker];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          *(*(*(a1 + 32) + 8) + 24) = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)_passwordGenerationAssistanceAutoFillButtonEnabled
{
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v5 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:webui_URL];
  v6 = objc_opt_class();
  savedAccountContext = [WeakRetained savedAccountContext];
  LODWORD(v6) = [v6 _shouldSaveCredentialsInProtectionSpace:v5 savedAccountContext:savedAccountContext];

  if (v6 && (v8 = objc_opt_class(), v9 = objc_loadWeakRetained(&self->_dataController), [v9 autoFillQuirksManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "passwordGenerationManager"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "protectionSpaceForGeneratedPasswordsInProtectionSpace:", v5), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "savedAccountContext"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = objc_msgSend(v8, "_shouldSaveCredentialsInProtectionSpace:savedAccountContext:", v12, v13), v13, v12, v11, v10, v9, v8))
  {
    v14 = [(WBSFormMetadata *)self->_formMetadata usesRelAsync]^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (int64_t)_passwordGenerationAssistanceAction
{
  if ([(SFFormAutocompleteState *)self _passwordGenerationAssistanceAutoFillButtonEnabled])
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

- (void)_generateAndSuggestPasswordWithCompletionHandler:(id)handler
{
  v30[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];

  maxLength = [(WBSFormControlMetadata *)self->_textFieldMetadata maxLength];
  passwordRequirements = [(WBSFormMetadata *)self->_formMetadata passwordRequirements];
  v7 = objc_loadWeakRetained(&self->_dataController);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v9 = [v7 autoGeneratedPasswordForURL:webui_URL respectingPasswordRequirements:passwordRequirements maxLength:maxLength];

  v10 = MEMORY[0x1E696AEC0];
  if (_SFDeviceIsPad())
  {
    v11 = @"%@\n%@";
  }

  else
  {
    v11 = @"%@\n\n%@";
  }

  v12 = _WBSLocalizedString();
  v13 = [v10 stringWithFormat:v11, v12, v9];

  v14 = MEMORY[0x1E696AEC0];
  if (_SFDeviceIsPad())
  {
    v15 = @"\n%@";
  }

  else
  {
    v15 = @"%@";
  }

  v16 = _WBSLocalizedString();
  v17 = [v14 stringWithFormat:v15, v16];

  v18 = _WBSLocalizedString();
  v19 = _WBSLocalizedString();
  v20 = MEMORY[0x1E69E30A0];
  v30[0] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __76__SFFormAutocompleteState__generateAndSuggestPasswordWithCompletionHandler___block_invoke;
  v27[3] = &unk_1E8493130;
  v28 = v9;
  v29 = handlerCopy;
  v22 = v9;
  v23 = handlerCopy;
  LOBYTE(v24) = 1;
  [v20 showAutoFillPromptInWebView:webView title:v13 message:v17 cancelButtonTitle:v18 otherButtonTitles:v21 cancelWhenAppEntersBackground:1 makeFirstButtonSuggestedAction:v24 headerViewController:0 completionHandler:v27];
}

void __76__SFFormAutocompleteState__generateAndSuggestPasswordWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = a2 == 0;
  (*(v4 + 16))(v4, v5);
  v7 = [MEMORY[0x1E69C8810] sharedLogger];
  [v7 didShowPasswordGenerationPromptWithPasswordAccepted:v6];
}

- (void)_suggestPasswordForNewAccountOrChangePasswordForm
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76__SFFormAutocompleteState__suggestPasswordForNewAccountOrChangePasswordForm__block_invoke;
  v2[3] = &unk_1E8493158;
  v2[4] = self;
  [(SFFormAutocompleteState *)self _generateAndSuggestPasswordWithCompletionHandler:v2];
}

void __76__SFFormAutocompleteState__suggestPasswordForNewAccountOrChangePasswordForm__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 length])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained autoFillForm:objc_msgSend(*(*(a1 + 32) + 232) inFrame:"uniqueID") withGeneratedPassword:{*(*(a1 + 32) + 224), v4}];
  }
}

- (BOOL)_shouldAllowGeneratedPassword
{
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  if (-[SFFormAutocompleteState _textFieldIsEmptyPasswordField](self, "_textFieldIsEmptyPasswordField") && (v5 = objc_loadWeakRetained(&self->_autoFillController), [v5 webView], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(WeakRetained, "shouldAutoGeneratePasswordsForURL:inWebView:", webui_URL, v6), v6, v5, v7))
  {
    autoFillQuirksManager = [WeakRetained autoFillQuirksManager];
    passwordGenerationManager = [autoFillQuirksManager passwordGenerationManager];

    v10 = [passwordGenerationManager defaultRequirementsForURL:webui_URL];
    v11 = [passwordGenerationManager manualPasswordGenerationIsDisallowedByRequirements:v10] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)currentControlCanInitiateFillingForRelatedCreditCardFields
{
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  v4 = [WeakRetained mayFillCreditCardDataInFrame:self->_frame];

  if (!v4)
  {
    return 0;
  }

  classification = [(WBSFormControlMetadata *)self->_textFieldMetadata classification];
  if (WBSIsEqual() & 1) != 0 || (WBSIsEqual())
  {
    v6 = 1;
  }

  else
  {
    v6 = WBSIsEqual();
  }

  return v6;
}

- (BOOL)_shouldOfferCreditCardDataAfterUserHasFilledCreditCardData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  lastFilledCreditCardData = [WeakRetained lastFilledCreditCardData];

  if (lastFilledCreditCardData)
  {
    v7 = objc_loadWeakRetained(&self->_dataController);
    if ([v7 shouldAutoFillFromCreditCardData] && objc_msgSend(v7, "mayFillCreditCardDataInFrame:", self->_frame))
    {
      if ([MEMORY[0x1E69E30A8] isFieldUnidentified:dataCopy])
      {
        v8 = 1;
      }

      else
      {
        v8 = [MEMORY[0x1E69E30A8] textFieldLooksLikeCreditCardFormField:self->_textFieldMetadata];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_sortedSingleCreditCardDataArray:(id)array
{
  arrayCopy = array;
  v5 = MEMORY[0x1E695DFD8];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  lastFilledCreditCardDataTypes = [WeakRetained lastFilledCreditCardDataTypes];
  allValues = [lastFilledCreditCardDataTypes allValues];
  v9 = [v5 setWithArray:allValues];

  if (v9)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__SFFormAutocompleteState__sortedSingleCreditCardDataArray___block_invoke;
    v16[3] = &unk_1E8493180;
    v17 = v9;
    v18 = array2;
    v19 = array;
    v12 = array;
    v13 = array2;
    [arrayCopy enumerateObjectsUsingBlock:v16];
    v14 = [v12 arrayByAddingObjectsFromArray:v13];
  }

  else
  {
    v14 = arrayCopy;
  }

  return v14;
}

void __60__SFFormAutocompleteState__sortedSingleCreditCardDataArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E696AD98];
  v7 = a2;
  v5 = [v4 numberWithInteger:{objc_msgSend(v7, "type")}];
  LODWORD(v3) = [v3 containsObject:v5];

  v6 = 48;
  if (v3)
  {
    v6 = 40;
  }

  [*(a1 + v6) addObject:v7];
}

- (void)_showCreditCardDataSuggestionsAfterUserHasFilledCreditCardData
{
  v54 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  lastFilledCreditCardData = [WeakRetained lastFilledCreditCardData];
  cardNumber = [lastFilledCreditCardData cardNumber];
  if ([cardNumber length])
  {
    displayableCardNumberOrSuffix = [lastFilledCreditCardData displayableCardNumberOrSuffix];
    v7 = WBSDisplayTextForCreditCardNumber();

    v8 = [SFSingleCreditCardData alloc];
    v9 = _WBSLocalizedString();
    v10 = [(SFSingleCreditCardData *)v8 initWithHeaderText:v9 displayText:v7 type:0 value:cardNumber];
    [array addObject:v10];
  }

  cardSecurityCode = [lastFilledCreditCardData cardSecurityCode];
  if ([cardSecurityCode length])
  {
    v12 = [SFSingleCreditCardData alloc];
    v13 = _WBSLocalizedString();
    v14 = [&stru_1F4FE9E38 stringByPaddingToLength:objc_msgSend(cardSecurityCode withString:"length") startingAtIndex:{@"•", 0}];
    v15 = [(SFSingleCreditCardData *)v12 initWithHeaderText:v13 displayText:v14 type:1 value:cardSecurityCode];
    [array addObject:v15];
  }

  v43 = cardSecurityCode;
  expirationDate = [lastFilledCreditCardData expirationDate];
  if (expirationDate)
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v17 setDateFormat:@"MM/yy"];
    v18 = [SFSingleCreditCardData alloc];
    v19 = _WBSLocalizedString();
    v20 = [v17 stringFromDate:expirationDate];
    v21 = [(SFSingleCreditCardData *)v18 initWithHeaderText:v19 displayText:v20 type:2 value:expirationDate];
    [array addObject:v21];
  }

  cardholderName = [lastFilledCreditCardData cardholderName];
  if ([cardholderName length])
  {
    v23 = [SFSingleCreditCardData alloc];
    v24 = _WBSLocalizedString();
    v25 = [(SFSingleCreditCardData *)v23 initWithHeaderText:v24 displayText:cardholderName type:3 value:cardholderName];
    [array addObject:v25];
  }

  if ([cardNumber length])
  {
    WBSCreditCardTypeFromNumber();
    v26 = WBSCreditCardTypeLocalizedName();
    if ([v26 length])
    {
      v27 = [SFSingleCreditCardData alloc];
      v28 = _WBSLocalizedString();
      v29 = [(SFSingleCreditCardData *)v27 initWithHeaderText:v28 displayText:v26 type:4 value:cardNumber];
      [array addObject:v29];
    }
  }

  v44 = cardNumber;
  v45 = lastFilledCreditCardData;
  v47 = array;
  v30 = [(SFFormAutocompleteState *)selfCopy _sortedSingleCreditCardDataArray:array];
  array2 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
LABEL_15:
    v36 = 0;
    while (1)
    {
      if (*v50 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v49 + 1) + 8 * v36);
      if ([array2 count] > 1)
      {
        break;
      }

      v38 = [_SFTextSuggestion textSuggestionWithSingleCreditCardDataValue:v37];
      displayText = [v37 displayText];
      [v38 setDisplayText:displayText];

      headerText = [v37 headerText];
      [v38 setHeaderText:headerText];

      [array2 addObject:v38];
      if (v34 == ++v36)
      {
        v34 = [v32 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v34)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  if ([array2 count])
  {
    uniqueID = [(WBSFormControlMetadata *)selfCopy->_textFieldMetadata uniqueID];
    [WeakRetained reportAutoFillOfferedType:3 forTextFieldWithID:uniqueID forFormMetadata:selfCopy->_formMetadata];
  }

  formInputSession = [(_SFFormAutoFillInputSession *)selfCopy->_inputSession formInputSession];
  [formInputSession setSuggestions:array2];
}

- (void)_fillCreditCardDataAfterAuthenticationIfNeeded:(id)needed
{
  neededCopy = needed;
  previouslySelectedVirtualCardWhereUserRequestedToIncreaseBalance = self->_previouslySelectedVirtualCardWhereUserRequestedToIncreaseBalance;
  self->_previouslySelectedVirtualCardWhereUserRequestedToIncreaseBalance = 0;

  if ([neededCopy isCardBalanceZeroOrNegative])
  {
    [(SFFormAutocompleteState *)self _presentLowBalanceAppleCashAlertForCard:neededCopy];
  }

  else
  {
    if ([neededCopy isVirtualCard])
    {
      mEMORY[0x1E69E3090] = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
      if ([mEMORY[0x1E69E3090] authenticationRequiredForVirtualCard:neededCopy])
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }
    }

    else
    {
      v7 = 2;
    }

    WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __74__SFFormAutocompleteState__fillCreditCardDataAfterAuthenticationIfNeeded___block_invoke;
    v9[3] = &unk_1E84931A8;
    v9[4] = self;
    v10 = neededCopy;
    [WeakRetained authenticateIfNeededForAutoFillAuthenticationType:v7 user:0 shouldForceAuthentication:0 withCompletion:v9];
  }
}

uint64_t __74__SFFormAutocompleteState__fillCreditCardDataAfterAuthenticationIfNeeded___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _fillCreditCardData:*(result + 40)];
  }

  return result;
}

- (void)_fillSingleCreditCardDataValue:(id)value creditCardDataType:(int64_t)type
{
  v45 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v8 = 0x1E69C9000uLL;
  v37 = valueCopy;
  v9 = [objc_alloc(MEMORY[0x1E69C9070]) initWithValue:valueCopy type:type];
  lastFilledCreditCardData = [WeakRetained lastFilledCreditCardData];
  [v9 setIsVirtualCard:{objc_msgSend(lastFilledCreditCardData, "isVirtualCard")}];

  v11 = objc_loadWeakRetained(&self->_dataController);
  v42 = 0;
  v43 = 0;
  [v11 getFormFieldValues:&v43 andFieldToFocus:&v42 withSingleCreditCardData:v9 inField:self->_textFieldMetadata inForm:self->_formMetadata];
  v12 = v43;
  v36 = v42;

  mEMORY[0x1E69E3090] = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
  v35 = [mEMORY[0x1E69E3090] fieldsToObscureWhenFillingSingleCreditCardData:v9 formFieldValues:v12];

  v14 = objc_alloc(MEMORY[0x1E69C9760]);
  frameHandle = [(SFFormAutoFillFrameHandle *)self->_frame frameHandle];
  v16 = [v14 initWithFrameHandle:frameHandle formMetadata:self->_formMetadata controlMetadata:self->_textFieldMetadata];

  lastFilledCreditCardDataTypes = [WeakRetained lastFilledCreditCardDataTypes];
  v18 = [lastFilledCreditCardDataTypes objectForKeyedSubscript:v16];
  v34 = v16;
  if (v18)
  {
    [WeakRetained lastFilledCreditCardDataTypes];
    v19 = v9;
    v21 = v20 = type;
    v22 = [v21 objectForKeyedSubscript:v16];
    integerValue = [v22 integerValue];

    type = v20;
    v9 = v19;
    v8 = 0x1E69C9000;
  }

  else
  {
    integerValue = 5;
  }

  v24 = [MEMORY[0x1E69C8F48] formFieldTypeForFormControlMetadata:self->_textFieldMetadata formMetadata:self->_formMetadata];
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  v26 = [*(v8 + 112) stringForSingleCreditCardDataType:type];
  v27 = [*(v8 + 112) stringForSingleCreditCardDataType:integerValue];
  [mEMORY[0x1E69C8810] didUseCreditCardAutoFillEscapeHatchFillingNewType:v26 forPreviousType:v27 fieldType:v24];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allKeys = [v12 allKeys];
  v29 = [allKeys countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v39;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(allKeys);
        }

        [WeakRetained reportAutoFillOfferedType:3 forTextFieldWithID:*(*(&v38 + 1) + 8 * i) forFormMetadata:self->_formMetadata];
      }

      v30 = [allKeys countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v30);
  }

  LOBYTE(v33) = 0;
  [WeakRetained autoFillFormInFrame:self->_frame withValues:v12 setAutoFilled:1 focusFieldAfterFilling:0 fieldToFocus:v36 fieldsToObscure:v35 submitForm:v33];
}

- (BOOL)_canAutoFillCreditCardData
{
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  if ([WeakRetained shouldAutoFillFromCreditCardData])
  {
    v4 = self->_formMetadata != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateAutoFillActionToCaptureCreditCardAndFill
{
  if (+[_SFCreditCardCaptureViewController canCapture])
  {
    self->_action = 6;

    [(SFFormAutocompleteState *)self updateAutoFillButton];
  }
}

- (void)_updateCreditCardAutoFillAction
{
  selfCopy = self;
  objc_initWeak(&location, self);
  mEMORY[0x1E69E3090] = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
  classification = [(WBSFormControlMetadata *)selfCopy->_textFieldMetadata classification];
  LOBYTE(selfCopy) = WBSIsEqual();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__SFFormAutocompleteState__updateCreditCardAutoFillAction__block_invoke;
  v6[3] = &unk_1E84931F8;
  objc_copyWeak(&v8, &location);
  v5 = mEMORY[0x1E69E3090];
  v7 = v5;
  v9 = selfCopy;
  [v5 getCreditCardDataWithCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__SFFormAutocompleteState__updateCreditCardAutoFillAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFFormAutocompleteState__updateCreditCardAutoFillAction__block_invoke_2;
  v5[3] = &unk_1E84931D0;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
}

void __58__SFFormAutocompleteState__updateCreditCardAutoFillAction__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          v12 = 0;
          [_SFFormDataController getFormFieldValues:&v12 andFieldToFocus:0 andCreditCardDataTypesThatWillBeFilled:0 forCreditCardForm:WeakRetained[29] fromCreditCardData:v8];
          v9 = v12;
          if ([v9 count] && (objc_msgSend(v8, "shouldHide") & 1) == 0)
          {
            v10 = [v8 cardSecurityCode];
            if ([v10 length])
            {

LABEL_19:
              WeakRetained[1] = 3;
              [WeakRetained updateAutoFillButton];

              goto LABEL_20;
            }

            if ([v8 isVirtualCard])
            {
              v11 = [*(a1 + 40) authenticationRequiredForVirtualCard:v8];
            }

            else
            {
              v11 = 0;
            }

            if (*(a1 + 56) != 1 || v11)
            {
              goto LABEL_19;
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [WeakRetained _updateAutoFillActionToCaptureCreditCardAndFill];
  }

LABEL_20:
}

- (void)_fillCreditCardData:(id)data
{
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  [WeakRetained fillCreditCardData:dataCopy inFrame:self->_frame textFieldMetadata:self->_textFieldMetadata formMetadata:self->_formMetadata];
}

- (void)_presentLowBalanceAppleCashAlertForCard:(id)card
{
  cardCopy = card;
  v5 = _WBSLocalizedString();
  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  balance = [cardCopy balance];
  formattedStringValue = [balance formattedStringValue];
  v10 = [v6 localizedStringWithFormat:v7, formattedStringValue];

  v11 = _WBSLocalizedString();
  v12 = _WBSLocalizedString();
  v13 = MEMORY[0x1E69E30A0];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__SFFormAutocompleteState__presentLowBalanceAppleCashAlertForCard___block_invoke;
  v17[3] = &unk_1E8493220;
  v17[4] = self;
  v18 = cardCopy;
  v16 = cardCopy;
  [v13 showAutoFillPromptForAppleCashLowBalanceInWebView:webView title:v5 message:v10 chooseDifferentCardButtonTitle:v11 addMoneyButtonTitle:v12 completionHandler:v17];
}

void __67__SFFormAutocompleteState__presentLowBalanceAppleCashAlertForCard___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v5 = PKPeerPaymentGetTopUpSensitiveURL();
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v4 openSensitiveURL:v5 withOptions:0];

    objc_storeStrong((*(a1 + 32) + 248), *(a1 + 40));
  }
}

- (void)presentUnavailableVirtualCardAlert
{
  mEMORY[0x1E69E3090] = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
  titleForUnavailableVirtualCardAlert = [mEMORY[0x1E69E3090] titleForUnavailableVirtualCardAlert];
  messageForUnavailableVirtualCardAlert = [mEMORY[0x1E69E3090] messageForUnavailableVirtualCardAlert];
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:titleForUnavailableVirtualCardAlert message:messageForUnavailableVirtualCardAlert preferredStyle:1];
  v6 = MEMORY[0x1E69DC648];
  v7 = _WBSLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v5 addAction:v8];

  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  [(SFFormAutocompleteState *)self _presentViewController:v5 presentingViewController:_viewControllerToPresentFrom animated:1 completion:0];
}

- (void)presentCustomizeStrongPasswordAlert
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  host = [webui_URL host];
  safari_domainFromHost = [host safari_domainFromHost];

  v6 = MEMORY[0x1E696AEC0];
  v7 = _WBSLocalizedString();
  v24 = [v6 stringWithFormat:v7, safari_domainFromHost];

  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v24 message:0 preferredStyle:0];
  v9 = MEMORY[0x1E69DC648];
  v10 = _WBSLocalizedString();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __62__SFFormAutocompleteState_presentCustomizeStrongPasswordAlert__block_invoke;
  v29[3] = &unk_1E848F780;
  v11 = WeakRetained;
  v30 = v11;
  selfCopy = self;
  v12 = [v9 actionWithTitle:v10 style:0 handler:v29];

  v13 = MEMORY[0x1E69DC648];
  v14 = _WBSLocalizedString();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62__SFFormAutocompleteState_presentCustomizeStrongPasswordAlert__block_invoke_2;
  v26[3] = &unk_1E848F780;
  v27 = v11;
  selfCopy2 = self;
  v23 = v11;
  v15 = [v13 actionWithTitle:v14 style:0 handler:v26];

  v16 = MEMORY[0x1E69DC648];
  v17 = _WBSLocalizedString();
  v18 = [v16 actionWithTitle:v17 style:0 handler:&__block_literal_global_364];

  v19 = MEMORY[0x1E69DC648];
  v20 = _WBSLocalizedString();
  v21 = [v19 actionWithTitle:v20 style:1 handler:0];

  [v8 addAction:v12];
  [v8 addAction:v15];
  [v8 addAction:v18];
  [v8 addAction:v21];
  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  [_viewControllerToPresentFrom presentViewController:v8 animated:1 completion:0];
}

void __62__SFFormAutocompleteState_presentCustomizeStrongPasswordAlert__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) automaticPasswordForPasswordField:*(*(a1 + 40) + 240) inForm:*(*(a1 + 40) + 232) isFrame:*(*(a1 + 40) + 224)];
  [*(a1 + 32) autoFillForm:objc_msgSend(*(*(a1 + 40) + 232) inFrame:"uniqueID") withGeneratedPassword:{*(*(a1 + 40) + 224), v5}];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 232) uniqueIDsOfPasswordControlAndRelatedControls];
  [v2 makePasswordFields:v3 viewable:1];

  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 didSelectNewStrongPassword];
}

void __62__SFFormAutocompleteState_presentCustomizeStrongPasswordAlert__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) alphanumericStrongPassword];
  [*(a1 + 32) autoFillForm:objc_msgSend(*(*(a1 + 40) + 232) inFrame:"uniqueID") withGeneratedPassword:{*(*(a1 + 40) + 224), v5}];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 232) uniqueIDsOfPasswordControlAndRelatedControls];
  [v2 makePasswordFields:v3 viewable:1];

  v4 = [MEMORY[0x1E69C8810] sharedLogger];
  [v4 didChooseStrongPasswordWithoutSpecialCharacters];
}

void __62__SFFormAutocompleteState_presentCustomizeStrongPasswordAlert__block_invoke_3()
{
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v0 = [MEMORY[0x1E69C8E08] passwordManagerURL];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)captureCreditCardDataWithCameraAndFill
{
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_preventNavigationDuringAutoFillPrompt = [webView webui_preventNavigationDuringAutoFillPrompt];
  v6 = webView;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      v9 = [MEMORY[0x1E69DD258] viewControllerForView:v8];
      superview = [v8 superview];

      if (!superview)
      {
        break;
      }

      v8 = superview;
    }

    while (!v9);
  }

  else
  {
    v9 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__SFFormAutocompleteState_captureCreditCardDataWithCameraAndFill__block_invoke;
  v19[3] = &unk_1E8493270;
  v11 = v9;
  v20 = v11;
  v12 = webui_preventNavigationDuringAutoFillPrompt;
  v21 = v12;
  objc_copyWeak(&v22, &location);
  v13 = [v19 copy];
  creditCardCaptureCompletionHandler = self->_creditCardCaptureCompletionHandler;
  self->_creditCardCaptureCompletionHandler = v13;

  v15 = objc_alloc_init(_SFCreditCardCaptureViewController);
  [(_SFCreditCardCaptureViewController *)v15 setDelegate:self];
  [WeakRetained suppressSoftwareKeyboardOnWebView:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__SFFormAutocompleteState_captureCreditCardDataWithCameraAndFill__block_invoke_3;
  v17[3] = &unk_1E848F810;
  v16 = WeakRetained;
  v18 = v16;
  [(SFFormAutocompleteState *)self _presentViewController:v15 presentingViewController:v11 animated:1 completion:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __65__SFFormAutocompleteState_captureCreditCardDataWithCameraAndFill__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__SFFormAutocompleteState_captureCreditCardDataWithCameraAndFill__block_invoke_2;
  v6[3] = &unk_1E8493248;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  v7 = v5;
  objc_copyWeak(&v9, (a1 + 48));
  [v4 dismissViewControllerAnimated:1 completion:v6];
  objc_destroyWeak(&v9);
}

void __65__SFFormAutocompleteState_captureCreditCardDataWithCameraAndFill__block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) cardNumber];
  v3 = [v2 length];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _fillCreditCardData:*(a1 + 32)];
  }
}

- (void)_autoFillSingleCreditCardData:(int64_t)data
{
  objc_initWeak(location, self);
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  array = [MEMORY[0x1E695DF70] array];
  lastFilledCreditCardData = [WeakRetained lastFilledCreditCardData];
  cardNumber = [lastFilledCreditCardData cardNumber];
  v9 = cardNumber;
  if (data && [cardNumber length])
  {
    v10 = WeakRetained;
    v11 = _WBSLocalizedString();
    v12 = [[SFSingleCreditCardData alloc] initWithHeaderText:0 displayText:v11 type:0 value:v9];
    [array addObject:v12];

    WeakRetained = v10;
  }

  cardSecurityCode = [lastFilledCreditCardData cardSecurityCode];
  v14 = cardSecurityCode;
  if (data && [cardSecurityCode length])
  {
    v15 = v14;
    v16 = _WBSLocalizedString();
    v17 = [[SFSingleCreditCardData alloc] initWithHeaderText:0 displayText:v16 type:1 value:v14];
    [array addObject:v17];

    v14 = v15;
  }

  expirationDate = [lastFilledCreditCardData expirationDate];
  if (expirationDate)
  {
    v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v18 setDateFormat:@"MM/yy"];
    v19 = _WBSLocalizedString();
    v20 = [[SFSingleCreditCardData alloc] initWithHeaderText:0 displayText:v19 type:2 value:expirationDate];
    [array addObject:v20];
  }

  cardholderName = [lastFilledCreditCardData cardholderName];
  v22 = cardholderName;
  if (data && [cardholderName length])
  {
    v23 = _WBSLocalizedString();
    v24 = [[SFSingleCreditCardData alloc] initWithHeaderText:0 displayText:v23 type:3 value:v22];
    [array addObject:v24];
  }

  if ([v9 length])
  {
    WBSCreditCardTypeFromNumber();
    v25 = WBSCreditCardTypeLocalizedName();
    if ([v25 length])
    {
      v26 = _WBSLocalizedString();
      v27 = [[SFSingleCreditCardData alloc] initWithHeaderText:0 displayText:v26 type:4 value:v9];
      [array addObject:v27];
    }
  }

  if ([array count] == 1)
  {
    firstObject = [array firstObject];
    value = [firstObject value];
    -[SFFormAutocompleteState _fillSingleCreditCardDataValue:creditCardDataType:](self, "_fillSingleCreditCardDataValue:creditCardDataType:", value, [firstObject type]);
  }

  else
  {
    v30 = [(SFFormAutocompleteState *)self _sortedSingleCreditCardDataArray:array];
    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke;
    v41[3] = &unk_1E8493298;
    v32 = v31;
    v42 = v32;
    [v30 enumerateObjectsUsingBlock:v41];
    mEMORY[0x1E69E3090] = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke_2;
    v35[3] = &unk_1E8493310;
    v35[4] = self;
    v36 = lastFilledCreditCardData;
    value = v32;
    v37 = value;
    v38 = WeakRetained;
    objc_copyWeak(&v40, location);
    firstObject = v30;
    v39 = firstObject;
    [mEMORY[0x1E69E3090] getCreditCardDataWithCompletionHandler:v35];

    objc_destroyWeak(&v40);
  }

  objc_destroyWeak(location);
}

void __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 displayText];
  [v2 addObject:v3];
}

void __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke_3;
  block[3] = &unk_1E84932E8;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  objc_copyWeak(&v12, (a1 + 72));
  v11 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _createCreditCardHeaderViewControllerForEscapeHatchAlertControllerForCard:*(a1 + 40)];
  if ([*(a1 + 48) count] >= 2)
  {
    v3 = *(a1 + 56);
    v4 = _WBSLocalizedString();
    [v3 addObject:v4];
  }

  v5 = _WBSLocalizedString();
  v6 = MEMORY[0x1E69E30A0];
  v7 = [*(a1 + 64) webView];
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke_4;
  v10[3] = &unk_1E84932C0;
  objc_copyWeak(&v12, (a1 + 80));
  v11 = *(a1 + 72);
  LOBYTE(v9) = 0;
  [v6 showAutoFillPromptInWebView:v7 title:0 message:0 cancelButtonTitle:v5 otherButtonTitles:v8 cancelWhenAppEntersBackground:0 makeFirstButtonSuggestedAction:v9 headerViewController:v2 completionHandler:v10];

  objc_destroyWeak(&v12);
}

void __57__SFFormAutocompleteState__autoFillSingleCreditCardData___block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 != -1 && WeakRetained)
  {
    v7 = WeakRetained;
    if ([*(a1 + 32) count] == a2)
    {
      [v7 _clearAutoFilledCreditCardFieldsAndShowAllCreditCards];
    }

    else
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
      v6 = [v5 value];
      [v7 _fillSingleCreditCardDataValue:v6 creditCardDataType:{objc_msgSend(v5, "type")}];
    }

    WeakRetained = v7;
  }
}

- (void)_clearAutoFilledCreditCardFieldsAndShowAllCreditCards
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__SFFormAutocompleteState__clearAutoFilledCreditCardFieldsAndShowAllCreditCards__block_invoke;
  v5[3] = &unk_1E848F548;
  v6 = WeakRetained;
  selfCopy = self;
  v4 = WeakRetained;
  [v4 clearAutoFilledCreditCardFieldsWithCompletionHandler:v5];
}

void __80__SFFormAutocompleteState__clearAutoFilledCreditCardFieldsAndShowAllCreditCards__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 240) uniqueID];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v5 + 224);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__SFFormAutocompleteState__clearAutoFilledCreditCardFieldsAndShowAllCreditCards__block_invoke_2;
  v7[3] = &unk_1E8493338;
  v7[4] = v5;
  v8 = v4;
  [v2 fetchMetadataForTextField:v3 inFrame:v6 withCompletion:v7];
}

void __80__SFFormAutocompleteState__clearAutoFilledCreditCardFieldsAndShowAllCreditCards__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 232);
  *(v7 + 232) = v5;
  v12 = v5;

  v9 = *(a1 + 32);
  v10 = *(v9 + 240);
  *(v9 + 240) = v6;
  v11 = v6;

  [*(a1 + 40) setLastFilledCreditCardData:0];
  [*(a1 + 40) setLastFilledCreditCardDataTypes:0];
  *(*(a1 + 32) + 8) = 3;
  [*(a1 + 32) updateAutoFillButton];
  [*(a1 + 32) updateSuggestions];
}

- (id)_createCreditCardHeaderViewControllerForEscapeHatchAlertControllerForCard:(id)card
{
  v46[7] = *MEMORY[0x1E69E9840];
  cardCopy = card;
  v5 = [(SFFormAutocompleteState *)self _imageViewWithCardArtForEscapeHatchAlertControllerForCard:cardCopy];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  cardName = [cardCopy cardName];
  v45 = cardCopy;
  if ([cardName length])
  {
    [cardCopy cardName];
  }

  else
  {
    _WBSLocalizedString();
  }
  v8 = ;
  [v6 setText:v8];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v6 setTextColor:labelColor];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  [v6 setFont:v10];

  [v6 setNumberOfLines:2];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (!IsAccessibilityCategory)
  {
    [v11 addArrangedSubview:v5];
  }

  [v11 addArrangedSubview:v6];
  [v11 setAxis:0];
  [v11 setSpacing:10.0];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = v5;
  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v15 addSubview:v11];
  v33 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v11 centerXAnchor];
  centerXAnchor2 = [v15 centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  LODWORD(v16) = 1144750080;
  v40 = [v41 sf_withPriority:v16];
  v46[0] = v40;
  centerYAnchor = [v11 centerYAnchor];
  centerYAnchor2 = [v15 centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v46[1] = v37;
  heightAnchor = [v15 heightAnchor];
  v34 = [heightAnchor constraintGreaterThanOrEqualToConstant:66.0];
  v46[2] = v34;
  heightAnchor2 = [v15 heightAnchor];
  heightAnchor3 = [v11 heightAnchor];
  v30 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3];
  v46[3] = v30;
  heightAnchor4 = [v15 heightAnchor];
  v28 = [heightAnchor4 constraintEqualToConstant:0.0];
  LODWORD(v17) = 1132003328;
  [v28 sf_withPriority:v17];
  v18 = v36 = v6;
  v46[4] = v18;
  leadingAnchor = [v11 leadingAnchor];
  leadingAnchor2 = [v15 leadingAnchor];
  v21 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v46[5] = v21;
  trailingAnchor = [v15 trailingAnchor];
  trailingAnchor2 = [v11 trailingAnchor];
  v24 = [trailingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v46[6] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
  [v33 activateConstraints:v25];

  v26 = objc_alloc_init(MEMORY[0x1E69B1AB0]);
  [v26 setView:v15];

  return v26;
}

- (id)_imageViewWithCardArtForEscapeHatchAlertControllerForCard:(id)card
{
  cardCopy = card;
  if ([MEMORY[0x1E69C8880] isKeychainCardsInWalletEnabled])
  {
    isVirtualCard = [cardCopy isVirtualCard];
    v5 = isVirtualCard;
    v6 = 40.0;
    if (!isVirtualCard)
    {
      v6 = 26.0;
    }

    cardNumber = [cardCopy cardArtworkWithSize:v6];
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:cardNumber];
    v9 = v8;
    if ((v5 & 1) == 0)
    {
      layer = [v8 layer];
      [layer setCornerRadius:4.0];

      layer2 = [v9 layer];
      [layer2 setMasksToBounds:1];
    }

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v13 = SFCreditCardIconForType();
    v9 = [v12 initWithImage:v13];

    if ([cardCopy isVirtualCard])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __85__SFFormAutocompleteState__imageViewWithCardArtForEscapeHatchAlertControllerForCard___block_invoke;
      v18[3] = &unk_1E8491B58;
      v9 = v9;
      v19 = v9;
      [cardCopy virtualCardArtworkWithSize:v18 completionHandler:{40.0, 26.0}];

      goto LABEL_11;
    }

    cardNumber = [cardCopy cardNumber];
    WBSCreditCardTypeFromNumber();
    v14 = SFCreditCardIconForType();
    [v9 setImage:v14];
  }

LABEL_11:
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setContentMode:1];
  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v16];

  return v9;
}

- (void)performPageLevelAutoFill
{
  self->_performingPageLevelAutoFill = 1;
  controls = [(WBSFormMetadata *)self->_formMetadata controls];
  v4 = [controls count];

  if (!v4)
  {
    selfCopy2 = self;
    v6 = 4;
LABEL_22:

    [(SFFormAutocompleteState *)selfCopy2 _finishPageLevelAutoFillWithResult:v6];
    return;
  }

  formType = self->_formType;
  v6 = 3;
  if (formType > 3)
  {
    if ((formType - 4) >= 2)
    {
LABEL_21:
      selfCopy2 = self;
      goto LABEL_22;
    }
  }

  else if (formType != 1)
  {
    if (formType == 2)
    {
      v6 = 2;
    }

    else if (formType == 3)
    {
      self->_action = 8;
      mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
      shouldAutoFillPasswords = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswords];

      if (shouldAutoFillPasswords)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataController);
        webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
        v11 = [WeakRetained shouldAllowPasswordAutoFillOnURL:webui_URL allowExternalCredentials:0];

        if (v11)
        {

          [(SFFormAutocompleteState *)self _performPageLevelCredentialAutoFill];
          return;
        }

        v6 = 5;
      }

      else
      {
        v6 = 1;
      }
    }

    goto LABEL_21;
  }

  self->_action = 2;
  if (!self->_multiRoundAutoFillManager)
  {
    [(SFFormAutocompleteState *)self _setUpMultiRoundAutoFillManagerIfNecessary];
  }

  [(SFFormAutocompleteState *)self _performPageLevelContactAutoFill];
}

- (void)_performPageLevelCredentialAutoFill
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__SFFormAutocompleteState__performPageLevelCredentialAutoFill__block_invoke;
  v2[3] = &unk_1E848F758;
  v2[4] = self;
  [(SFFormAutocompleteState *)self _fetchPotentialCredentialMatchesWithCompletion:v2];
}

void __62__SFFormAutocompleteState__performPageLevelCredentialAutoFill__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 count];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v6 firstObject];
    [v4 _fillSavedAccountMatchAfterAuthenticationIfNeeded:v5 setAsDefaultCredential:0 submitForm:1];
  }

  else
  {
    [v4 _finishPageLevelAutoFillWithResult:5];
  }
}

- (void)_performPageLevelContactAutoFill
{
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  if ([WeakRetained shouldAutoFillFromAddressBook])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __59__SFFormAutocompleteState__performPageLevelContactAutoFill__block_invoke;
    v4[3] = &unk_1E848F810;
    v4[4] = self;
    [WeakRetained performWhenReady:v4];
  }
}

void __59__SFFormAutocompleteState__performPageLevelContactAutoFill__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v4 = [WeakRetained lastFilledContact];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 me];
  }

  v7 = v6;

  v8 = *(a1 + 32);
  v9 = *(v8 + 232);
  v10 = [*(v8 + 224) webui_URL];
  v11 = [v10 host];
  v12 = [v11 safari_domainFromHost];
  LOBYTE(v24) = 1;
  v13 = [v3 valuesForStandardForm:v9 inDomain:v12 autoFillDataType:2 matches:0 preferredLabel:0 multiRoundAutoFillManager:*(*(a1 + 32) + 216) contact:v7 allowingIdentifiedAddressBookLabelToOverridePreferredIdentifier:v24];

  v14 = [v13 count];
  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = v15[27];
    v17 = [objc_opt_class() controlsConsideredByAutoFillInForm:*(*(a1 + 32) + 232)];
    [v16 addControlUniqueIDsIgnoredByFollowUpAutoFill:v17];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = [v13 allKeys];
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [WeakRetained reportAutoFillOfferedType:4 forTextFieldWithID:*(*(&v25 + 1) + 8 * i) forFormMetadata:*(*(a1 + 32) + 232)];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    [WeakRetained autoFillFormInFrame:*(*(a1 + 32) + 224) withValues:v13 setAutoFilled:1 focusFieldAfterFilling:0 fieldToFocus:0 submitForm:0];
    v15 = *(a1 + 32);
    v23 = 0;
  }

  else
  {
    v23 = 5;
  }

  [v15 _finishPageLevelAutoFillWithResult:v23];
}

- (void)_finishPageLevelAutoFillWithResult:(int64_t)result
{
  if (result)
  {
    if (![(WBSMultiRoundAutoFillManager *)self->_multiRoundAutoFillManager currentAutoFillAttemptTrigger])
    {
      [(SFFormAutocompleteState *)self _showPageLevelAutoFillNotAvailableAlertForResult:result];
    }

    [(SFFormAutocompleteState *)self invalidate];
  }

  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  [WeakRetained didPerformPageLevelAutoFill:result == 0];
}

- (void)_showPageLevelAutoFillNotAvailableAlertForResult:(int64_t)result
{
  v11 = [(SFFormAutocompleteState *)self _titleForPageLevelAutoFillNotAvailableAlertForResult:?];
  v5 = [(SFFormAutocompleteState *)self _messageForPageLevelAutoFillNotAvailableAlertForResult:result];
  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:v5 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = _WBSLocalizedString();
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  [(SFFormAutocompleteState *)self _presentViewController:v6 presentingViewController:_viewControllerToPresentFrom animated:1 completion:0];
}

- (id)_titleForPageLevelAutoFillNotAvailableAlertForResult:(int64_t)result
{
  v4 = 0;
  if (result <= 5 && (((1 << result) & 0x36) != 0 || result == 3))
  {
    v4 = _WBSLocalizedString();
  }

  return v4;
}

- (id)_messageForPageLevelAutoFillNotAvailableAlertForResult:(int64_t)result
{
  v4 = 0;
  if (result <= 5 && (((1 << result) & 0x36) != 0 || result == 3))
  {
    v4 = _WBSLocalizedString();
  }

  return v4;
}

- (void)creditCardCaptureViewControllerDidCancel:(id)cancel
{
  v5 = _Block_copy(self->_creditCardCaptureCompletionHandler);
  creditCardCaptureCompletionHandler = self->_creditCardCaptureCompletionHandler;
  self->_creditCardCaptureCompletionHandler = 0;

  v5[2](v5, 0);
}

- (void)creditCardCaptureViewController:(id)controller didCaptureCreditCard:(id)card
{
  creditCardCaptureCompletionHandler = self->_creditCardCaptureCompletionHandler;
  cardCopy = card;
  v8 = _Block_copy(creditCardCaptureCompletionHandler);
  v7 = self->_creditCardCaptureCompletionHandler;
  self->_creditCardCaptureCompletionHandler = 0;

  v8[2](v8, cardCopy);
}

- (void)_gatherAndShowAddressBookAutoFillSuggestions
{
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  textFieldMetadata = self->_textFieldMetadata;
  prefixForSuggestions = self->_prefixForSuggestions;
  v6 = objc_loadWeakRetained(&self->_autoFillController);
  lastFilledContact = [v6 lastFilledContact];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SFFormAutocompleteState__gatherAndShowAddressBookAutoFillSuggestions__block_invoke;
  v8[3] = &unk_1E848F758;
  v8[4] = self;
  [WeakRetained gatherAutoFillDisplayDataWithTextField:textFieldMetadata displayedInQuickType:1 prefix:prefixForSuggestions contact:lastFilledContact completionHandler:v8];
}

void __71__SFFormAutocompleteState__gatherAndShowAddressBookAutoFillSuggestions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _suggestionsForAutoFillDisplayData:a2];
  v8 = [*(a1 + 32) _addHideMyEmailSuggestionsIfNecessary:v3 hideMyEmailRecord:*(*(a1 + 32) + 168)];

  v4 = [*(*(a1 + 32) + 64) formInputSession];
  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v6 = [*(*(a1 + 32) + 240) uniqueID];
    [WeakRetained reportAutoFillOfferedType:4 forTextFieldWithID:v6 forFormMetadata:*(*(a1 + 32) + 232)];

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  [v4 setSuggestions:v7];
}

- (id)_suggestionsForAutoFillDisplayData:(id)data
{
  v3 = [data safari_mapAndFilterObjectsWithOptions:0 usingBlock:&__block_literal_global_405];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id __62__SFFormAutocompleteState__suggestionsForAutoFillDisplayData___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (a3 < 2)
  {
    v7 = [_SFTextSuggestion textSuggestionWithSingleDisplayData:v6];
    v8 = [v6 valueString];
    [v7 setDisplayText:v8];

    v9 = [v6 fillMatches];
    v10 = [v9 firstObject];

    v11 = [v10 identifier];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v6 label];
      if ([v13 length])
      {
        v14 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v13];
        [v7 setHeaderText:v14];
      }

      else
      {
        v15 = MEMORY[0x1E69E30A8];
        v14 = [v10 property];
        v16 = [v15 localizedLowercaseContactProperty:v14];
        [v7 setHeaderText:v16];
      }
    }
  }

  else
  {
    v7 = 0;
    *a4 = 1;
  }

  return v7;
}

- (void)_startHideMyEmailRecordUpdate
{
  objc_initWeak(&location, self);
  mEMORY[0x1E69C97D0] = [MEMORY[0x1E69C97D0] sharedManager];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SFFormAutocompleteState__startHideMyEmailRecordUpdate__block_invoke;
  v5[3] = &unk_1E8493380;
  objc_copyWeak(&v6, &location);
  [mEMORY[0x1E69C97D0] getRecordForURL:webui_URL completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__SFFormAutocompleteState__startHideMyEmailRecordUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SFFormAutocompleteState__startHideMyEmailRecordUpdate__block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __56__SFFormAutocompleteState__startHideMyEmailRecordUpdate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 21, *(a1 + 32));
    [v3 updateSuggestions];
    WeakRetained = v3;
  }
}

- (void)_autoFillHideMyEmailRecord:(id)record
{
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  v6 = [WeakRetained valuesForFormWithMetadata:self->_formMetadata hideMyEmailRecord:recordCopy];

  v7 = objc_loadWeakRetained(&self->_autoFillController);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [v6 allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        [v7 reportAutoFillOfferedType:4 forTextFieldWithID:*(*(&v16 + 1) + 8 * v12++) forFormMetadata:self->_formMetadata];
      }

      while (v10 != v12);
      v10 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = MEMORY[0x1E69C8F30];
  allKeys2 = [v6 allKeys];
  v15 = [v13 nextFieldAfterControls:allKeys2 inForm:self->_formMetadata];

  [v7 autoFillFormInFrame:self->_frame withValues:v6 setAutoFilled:1 focusFieldAfterFilling:v15 != 0 fieldToFocus:v15 submitForm:0];
}

- (void)_provisionHideMyEmailRecord
{
  objc_initWeak(&location, self);
  mEMORY[0x1E69C97D0] = [MEMORY[0x1E69C97D0] sharedManager];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFFormAutocompleteState__provisionHideMyEmailRecord__block_invoke;
  v5[3] = &unk_1E8493380;
  objc_copyWeak(&v6, &location);
  [mEMORY[0x1E69C97D0] provisionRecordForURL:webui_URL completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __54__SFFormAutocompleteState__provisionHideMyEmailRecord__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFFormAutocompleteState__provisionHideMyEmailRecord__block_invoke_2;
  v5[3] = &unk_1E8490298;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __54__SFFormAutocompleteState__provisionHideMyEmailRecord__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v5 = WeakRetained;
      v4 = [v3 state];
      WeakRetained = v5;
      if (!v4)
      {
        [v5 _autoFillHideMyEmailRecord:*(a1 + 32)];
        WeakRetained = v5;
      }
    }
  }
}

- (id)_addHideMyEmailSuggestionsIfNecessary:(id)necessary hideMyEmailRecord:(id)record
{
  necessaryCopy = necessary;
  recordCopy = record;
  if (recordCopy && ([MEMORY[0x1E69E30A8] shouldDisplayHideMyEmailForControl:self->_textFieldMetadata] & 1) != 0 && (!objc_msgSend(recordCopy, "state") || objc_msgSend(recordCopy, "state") == 1))
  {
    if (!necessaryCopy)
    {
      necessaryCopy = objc_alloc_init(MEMORY[0x1E695DEC8]);
    }

    if ([necessaryCopy count] >= 2)
    {
      v8 = [necessaryCopy subarrayWithRange:{0, 1}];

      necessaryCopy = v8;
    }

    v9 = [necessaryCopy mutableCopy];
    if ([recordCopy state])
    {
      _hideMyEmailCreationSuggestion = [(SFFormAutocompleteState *)self _hideMyEmailCreationSuggestion];
      [v9 addObject:_hideMyEmailCreationSuggestion];
    }

    else
    {
      _hideMyEmailCreationSuggestion = [(SFFormAutocompleteState *)self _hideMyEmailSuggestionForRecord:recordCopy];
      [v9 insertObject:_hideMyEmailCreationSuggestion atIndex:0];
    }
  }

  else
  {
    necessaryCopy = necessaryCopy;
    v9 = necessaryCopy;
  }

  return v9;
}

- (id)_hideMyEmailSuggestionForRecord:(id)record
{
  recordCopy = record;
  v4 = [_SFTextSuggestion textSuggestionWithHideMyEmailRecord:recordCopy];
  v5 = _WBSLocalizedString();
  [v4 setHeaderText:v5];

  privateEmailAddress = [recordCopy privateEmailAddress];

  [v4 setDisplayText:privateEmailAddress];

  return v4;
}

- (id)_hideMyEmailCreationSuggestion
{
  v2 = +[_SFTextSuggestion textSuggestionToProvisionHideMyEmailRecord];
  v3 = _WBSLocalizedString();
  [v2 setDisplayText:v3];

  return v2;
}

- (void)_autoFillWithSet:(id)set
{
  v23 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = MEMORY[0x1E69C8F30];
  controlIDToValueMap = [setCopy controlIDToValueMap];
  allKeys = [controlIDToValueMap allKeys];
  v8 = [v5 nextFieldAfterControls:allKeys inForm:self->_formMetadata];

  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  controlIDToValueMap2 = [setCopy controlIDToValueMap];
  allKeys2 = [controlIDToValueMap2 allKeys];

  v12 = [allKeys2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(allKeys2);
        }

        [WeakRetained reportAutoFillOfferedType:4 forTextFieldWithID:*(*(&v18 + 1) + 8 * v15++) forFormMetadata:self->_formMetadata];
      }

      while (v13 != v15);
      v13 = [allKeys2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  frame = self->_frame;
  controlIDToValueMap3 = [setCopy controlIDToValueMap];
  [WeakRetained autoFillFormInFrame:frame withValues:controlIDToValueMap3 setAutoFilled:1 focusFieldAfterFilling:v8 != 0 fieldToFocus:v8 submitForm:0];
}

- (void)_offerToAutoFillContact
{
  v121 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v77 = objc_loadWeakRetained(&self->_dataController);
  webView = [WeakRetained webView];
  webui_presentingViewController = [webView webui_presentingViewController];

  lastFilledContact = [WeakRetained lastFilledContact];
  v4 = lastFilledContact;
  if (lastFilledContact)
  {
    v78 = lastFilledContact;
  }

  else
  {
    v78 = [v77 me];
  }

  formMetadata = self->_formMetadata;
  v112 = 0;
  v6 = [v77 valuesForContactFormWithMetadata:formMetadata matches:&v112 multiRoundAutoFillManager:self->_multiRoundAutoFillManager existingMatches:0 contact:v78];
  v70 = v112;
  v80 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:_SFDeviceAlertStyle()];
  hideMyEmailRecord = self->_hideMyEmailRecord;
  if (hideMyEmailRecord && ![(WBSHideMyEmailRecord *)hideMyEmailRecord state])
  {
    v8 = MEMORY[0x1E69DC648];
    privateEmailAddress = [(WBSHideMyEmailRecord *)self->_hideMyEmailRecord privateEmailAddress];
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke;
    v111[3] = &unk_1E848FBF8;
    v111[4] = self;
    v10 = [v8 actionWithTitle:privateEmailAddress style:0 handler:v111];
    [v80 addAction:v10];
  }

  v73 = [MEMORY[0x1E69C8F30] specifierForControl:{self->_textFieldMetadata, v70}];
  v11 = MEMORY[0x1E69C8F30];
  property = [v73 property];
  if ([v11 isNameProperty:property])
  {
  }

  else
  {
    component = [v73 component];
    v14 = [component isEqualToString:*MEMORY[0x1E69E30C0]];

    if (!v14)
    {
      textFieldMetadata = self->_textFieldMetadata;
      lastFilledContact2 = [WeakRetained lastFilledContact];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_4;
      v95[3] = &unk_1E8491FF0;
      v96 = v80;
      selfCopy = self;
      [v77 gatherAutoFillDisplayDataWithTextField:textFieldMetadata displayedInQuickType:0 prefix:0 contact:lastFilledContact2 completionHandler:v95];

      v52 = v96;
      goto LABEL_51;
    }
  }

  v15 = [MEMORY[0x1E695CD80] stringFromContact:v78 style:0];
  [v80 setTitle:v15];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v16 = [v77 recentlyUsedAutoFillSetsForContact:v78];
  v17 = [v16 countByEnumeratingWithState:&v107 objects:v119 count:16];
  obj = v16;
  if (!v17)
  {
    v86 = 0;
    goto LABEL_40;
  }

  v79 = v17;
  v86 = 0;
  v76 = *v108;
  v87 = *MEMORY[0x1E695CB60];
  v18 = *MEMORY[0x1E695CBD8];
  do
  {
    v85 = 0;
    v82 = v86;
    do
    {
      if (*v108 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v81 = *(*(&v107 + 1) + 8 * v85);
      fillMatches = [v81 fillMatches];
      if (![fillMatches count])
      {
        goto LABEL_29;
      }

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v19 = fillMatches;
      v20 = [v19 countByEnumeratingWithState:&v114 objects:v120 count:16];
      if (!v20)
      {

LABEL_29:
        v86 = 0;
        goto LABEL_30;
      }

      v21 = 0;
      v22 = *v115;
      v23 = 1;
      v24 = 1;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v115 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v114 + 1) + 8 * i);
          label = [v26 label];
          v28 = label == 0;

          if (!v28)
          {
            label2 = [v26 label];
            v30 = [label2 isEqualToString:v87];

            label3 = [v26 label];
            v32 = [label3 isEqualToString:v18];

            v23 &= v30;
            v24 &= v32;
            v21 = 1;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v114 objects:v120 count:16];
      }

      while (v20);

      if ((v21 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v23)
      {
        v33 = v87;
      }

      else
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_29;
        }

        v33 = v18;
      }

      v86 = v33;
LABEL_30:

      v34 = [v77 contactAutoFillSetForRecentlyUsedAutoFillSet:v81 contact:v78 form:self->_formMetadata];
      fillDisplayProperties = [v34 fillDisplayProperties];
      if ([fillDisplayProperties count])
      {
        v36 = _WBSLocalizedString();
        v37 = _WBSLocalizedString();
        v38 = [fillDisplayProperties componentsJoinedByString:v37];
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_2;
        v104[3] = &unk_1E848FCE8;
        objc_copyWeak(&v106, &location);
        v105 = v34;
        [(SFFormAutocompleteState *)self _addActionForAlertController:v80 title:v36 detail:v38 handler:v104];

        objc_destroyWeak(&v106);
      }

      v82 = v86;
      ++v85;
    }

    while (v85 != v79);
    v39 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
    v79 = v39;
  }

  while (v39);
LABEL_40:

  [v77 orderedHomeAndWorkSetsForContact:v78 form:self->_formMetadata];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v88 = v101 = 0u;
  v40 = [v88 countByEnumeratingWithState:&v100 objects:v118 count:16];
  if (v40)
  {
    v41 = *v101;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v101 != v41)
        {
          objc_enumerationMutation(v88);
        }

        v43 = *(*(&v100 + 1) + 8 * j);
        label4 = [v43 label];
        v45 = [v86 isEqualToString:label4];

        if ((v45 & 1) == 0)
        {
          v46 = MEMORY[0x1E695CEE0];
          label5 = [v43 label];
          v48 = [v46 localizedStringForLabel:label5];
          fillDisplayProperties2 = [v43 fillDisplayProperties];
          v50 = _WBSLocalizedString();
          v51 = [fillDisplayProperties2 componentsJoinedByString:v50];
          v98[0] = MEMORY[0x1E69E9820];
          v98[1] = 3221225472;
          v98[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_3;
          v98[3] = &unk_1E848FCE8;
          objc_copyWeak(&v99, &location);
          v98[4] = v43;
          [(SFFormAutocompleteState *)self _addActionForAlertController:v80 title:v48 detail:v51 handler:v98];

          objc_destroyWeak(&v99);
        }
      }

      v40 = [v88 countByEnumeratingWithState:&v100 objects:v118 count:16];
    }

    while (v40);
  }

  v52 = v86;
LABEL_51:

  v55 = self->_hideMyEmailRecord;
  if (v55 && [(WBSHideMyEmailRecord *)v55 state]== 1)
  {
    v56 = MEMORY[0x1E69DC648];
    v57 = _WBSLocalizedString();
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_7;
    v94[3] = &unk_1E848FBF8;
    v94[4] = self;
    v58 = [v56 actionWithTitle:v57 style:0 handler:v94];
    [v80 addAction:v58];
  }

  v59 = MEMORY[0x1E69DC648];
  v60 = _WBSLocalizedString();
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_8;
  v91[3] = &unk_1E848FE00;
  v91[4] = self;
  v61 = v71;
  v92 = v61;
  v62 = v78;
  v93 = v62;
  v63 = [v59 actionWithTitle:v60 style:0 handler:v91];
  [v80 addAction:v63];

  v64 = MEMORY[0x1E69DC648];
  v65 = _WBSLocalizedString();
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_9;
  v90[3] = &unk_1E848FBF8;
  v90[4] = self;
  v66 = [v64 actionWithTitle:v65 style:0 handler:v90];
  [v80 addAction:v66];

  v67 = MEMORY[0x1E69DC648];
  v68 = _WBSLocalizedString();
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_10;
  v89[3] = &unk_1E848FBF8;
  v89[4] = self;
  v69 = [v67 actionWithTitle:v68 style:1 handler:v89];
  [v80 addAction:v69];

  if (v80)
  {
    [(SFFormAutocompleteState *)self _setShowingKeyboardInputView:0];
    [(SFFormAutocompleteState *)self _presentViewController:v80 presentingViewController:webui_presentingViewController animated:1 completion:0];
  }

  objc_destroyWeak(&location);
}

void __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _autoFillWithSet:*(a1 + 32)];
}

void __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _autoFillWithSet:*(a1 + 32)];
}

void __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_4(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_5;
  v6[3] = &unk_1E84933A8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E69DC648];
  v6 = [v3 valueString];
  v7 = [v3 label];
  v8 = v6;
  if ([v7 length])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = _WBSLocalizedString();
    v11 = [MEMORY[0x1E695CEE0] localizedStringForLabel:v7];
    v12 = [v9 stringWithFormat:v10, v8, v11];
  }

  else
  {
    v12 = v8;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__SFFormAutocompleteState__offerToAutoFillContact__block_invoke_6;
  v15[3] = &unk_1E848F780;
  v15[4] = *(a1 + 40);
  v16 = v3;
  v13 = v3;
  v14 = [v5 actionWithTitle:v12 style:0 handler:v15];
  [v4 addAction:v14];
}

- (void)_autoFillDisplayData:(id)data setAutoFilled:(BOOL)filled
{
  filledCopy = filled;
  v40[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  fillMatches = [dataCopy fillMatches];
  v9 = objc_alloc(MEMORY[0x1E69C9030]);
  label = [dataCopy label];
  if ([label length])
  {
    label2 = [dataCopy label];
    v12 = [v9 initWithFillMatches:fillMatches skipMatches:MEMORY[0x1E695E0F0] label:label2];
  }

  else
  {
    label2 = [fillMatches firstObject];
    property = [label2 property];
    v12 = [v9 initWithFillMatches:fillMatches skipMatches:MEMORY[0x1E695E0F0] label:property];
  }

  v14 = [fillMatches count] < 2;
  formMetadata = self->_formMetadata;
  v16 = [WeakRetained me];
  v17 = [WeakRetained valuesForContactFormWithMetadata:formMetadata matches:0 multiRoundAutoFillManager:0 existingMatches:v12 shouldUseExistingMatchesToFillFocusedField:v14 contact:v16];

  v33 = WeakRetained;
  v32 = filledCopy;
  v31 = v12;
  if (![v17 count] && objc_msgSend(fillMatches, "count") == 1 && (-[WBSFormMetadata containsActiveElement](self->_formMetadata, "containsActiveElement") & 1) == 0)
  {
    uniqueID = [(WBSFormControlMetadata *)self->_textFieldMetadata uniqueID];
    firstObject = [fillMatches firstObject];
    stringValue = [firstObject stringValue];

    if (uniqueID && stringValue)
    {
      v39 = uniqueID;
      v40[0] = stringValue;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];

      v17 = v21;
    }
  }

  v22 = MEMORY[0x1E69C8F30];
  allKeys = [v17 allKeys];
  v24 = [v22 nextFieldAfterControls:allKeys inForm:self->_formMetadata];

  v25 = objc_loadWeakRetained(&self->_autoFillController);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  allKeys2 = [v17 allKeys];
  v27 = [allKeys2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      v30 = 0;
      do
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(allKeys2);
        }

        [v25 reportAutoFillOfferedType:4 forTextFieldWithID:*(*(&v34 + 1) + 8 * v30++) forFormMetadata:self->_formMetadata];
      }

      while (v28 != v30);
      v28 = [allKeys2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v28);
  }

  [v25 autoFillFormInFrame:self->_frame withValues:v17 setAutoFilled:v32 focusFieldAfterFilling:v24 != 0 fieldToFocus:v24 submitForm:0];
}

- (void)_switchToCustomInputViewWithMatches:(id)matches contact:(id)contact
{
  matchesCopy = matches;
  contactCopy = contact;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_preventNavigationDuringAutoFillPrompt = [webView webui_preventNavigationDuringAutoFillPrompt];

  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __71__SFFormAutocompleteState__switchToCustomInputViewWithMatches_contact___block_invoke;
  v22 = &unk_1E84933F8;
  v12 = _viewControllerToPresentFrom;
  v23 = v12;
  objc_copyWeak(&v25, &location);
  v13 = webui_preventNavigationDuringAutoFillPrompt;
  v24 = v13;
  v14 = _Block_copy(&v19);
  customAutoFillContactCompletionHandler = self->_customAutoFillContactCompletionHandler;
  self->_customAutoFillContactCompletionHandler = v14;

  v16 = [SFContactAutoFillViewController alloc];
  v17 = [(SFContactAutoFillViewController *)v16 initWithMatches:matchesCopy contact:contactCopy, v19, v20, v21, v22];
  v18 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v17];
  [v18 setModalPresentationStyle:2];
  [(SFContactAutoFillViewController *)v17 setAutoFiller:self];
  [(SFFormAutocompleteState *)self _setShowingKeyboardInputView:0];
  [(SFFormAutocompleteState *)self _presentViewController:v18 presentingViewController:v12 animated:1 completion:0];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __71__SFFormAutocompleteState__switchToCustomInputViewWithMatches_contact___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__SFFormAutocompleteState__switchToCustomInputViewWithMatches_contact___block_invoke_2;
  v3[3] = &unk_1E84933D0;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 dismissViewControllerAnimated:1 completion:v3];

  objc_destroyWeak(&v5);
}

uint64_t __71__SFFormAutocompleteState__switchToCustomInputViewWithMatches_contact___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setShowingKeyboardInputView:1];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_showOtherContactOptions
{
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  webView = [WeakRetained webView];
  webui_preventNavigationDuringAutoFillPrompt = [webView webui_preventNavigationDuringAutoFillPrompt];

  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SFFormAutocompleteState__showOtherContactOptions__block_invoke;
  aBlock[3] = &unk_1E8493448;
  v7 = _viewControllerToPresentFrom;
  v15 = v7;
  objc_copyWeak(&v17, &location);
  v8 = webui_preventNavigationDuringAutoFillPrompt;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  displayOtherContactsCompletionHandler = self->_displayOtherContactsCompletionHandler;
  self->_displayOtherContactsCompletionHandler = v9;

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v11 = getCNContactPickerViewControllerClass_softClass;
  v23 = getCNContactPickerViewControllerClass_softClass;
  if (!getCNContactPickerViewControllerClass_softClass)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getCNContactPickerViewControllerClass_block_invoke;
    v19[3] = &unk_1E848F710;
    v19[4] = &v20;
    __getCNContactPickerViewControllerClass_block_invoke(v19);
    v11 = v21[3];
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);
  v13 = objc_alloc_init(v11);
  [v13 setDelegate:self];
  [v13 setModalPresentationStyle:2];
  [(SFFormAutocompleteState *)self _setShowingKeyboardInputView:0];
  [v7 presentViewController:v13 animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __51__SFFormAutocompleteState__showOtherContactOptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__SFFormAutocompleteState__showOtherContactOptions__block_invoke_2;
  v10[3] = &unk_1E8493420;
  objc_copyWeak(&v14, (a1 + 48));
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  v13 = *(a1 + 40);
  [v7 dismissViewControllerAnimated:1 completion:v10];

  objc_destroyWeak(&v14);
}

void __51__SFFormAutocompleteState__showOtherContactOptions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32) && *(a1 + 40))
    {
      [WeakRetained _switchToCustomInputViewWithMatches:? contact:?];
    }

    else
    {
      [WeakRetained _setShowingKeyboardInputView:1];
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)didFillOneTimeCode:(id)code shouldConsumeCode:(BOOL)consumeCode
{
  consumeCodeCopy = consumeCode;
  oneTimeCodeBeingFilled = self->_oneTimeCodeBeingFilled;
  codeCopy = code;
  code = [(SFAutoFillOneTimeCode *)oneTimeCodeBeingFilled code];
  v9 = [codeCopy isEqualToString:code];

  if (v9)
  {
    if (consumeCodeCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
      oneTimeCodeProvider = [WeakRetained oneTimeCodeProvider];
      [oneTimeCodeProvider consumeOneTimeCode:self->_oneTimeCodeBeingFilled];
    }

    v12 = self->_oneTimeCodeBeingFilled;
    self->_oneTimeCodeBeingFilled = 0;
  }
}

- (void)dismissCustomAutoFill
{
  customAutoFillContactCompletionHandler = self->_customAutoFillContactCompletionHandler;
  if (customAutoFillContactCompletionHandler)
  {
    v5 = _Block_copy(customAutoFillContactCompletionHandler);
    v4 = self->_customAutoFillContactCompletionHandler;
    self->_customAutoFillContactCompletionHandler = 0;

    v5[2]();
  }
}

- (void)performAutoFillWithMatchSelections:(id)selections doNotFill:(id)fill contact:(id)contact
{
  v66 = *MEMORY[0x1E69E9840];
  selectionsCopy = selections;
  fillCopy = fill;
  contactCopy = contact;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = selectionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v58;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        identifier = [v16 identifier];
        v18 = [identifier length];

        if (v18)
        {
          identifier2 = [v16 identifier];
          property = [v16 property];
          [dictionary setObject:identifier2 forKeyedSubscript:property];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v13);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v21 = fillCopy;
  v22 = [v21 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v54;
    v25 = *MEMORY[0x1E69C9580];
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v54 != v24)
        {
          objc_enumerationMutation(v21);
        }

        property2 = [*(*(&v53 + 1) + 8 * j) property];
        [dictionary setObject:v25 forKeyedSubscript:property2];
      }

      v23 = [v21 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v23);
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __80__SFFormAutocompleteState_performAutoFillWithMatchSelections_doNotFill_contact___block_invoke;
  v51[3] = &unk_1E8493470;
  v51[4] = self;
  v28 = contactCopy;
  v52 = v28;
  [dictionary enumerateKeysAndObjectsUsingBlock:v51];
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v30 = objc_loadWeakRetained(&self->_dataController);
  v43 = [objc_alloc(MEMORY[0x1E69C9030]) initWithFillMatches:v11 skipMatches:v21 label:0];
  v46 = [v30 valuesForContactFormWithMetadata:self->_formMetadata matches:0 multiRoundAutoFillManager:self->_multiRoundAutoFillManager existingMatches:? contact:?];
  if ([MEMORY[0x1E69E30A8] contactIsMe:v28])
  {
    [v30 saveRecentlyUsedAutoFillSetWithMatchesToFill:v11 matchesForDoNotFill:v21];
  }

  v44 = v30;
  v31 = MEMORY[0x1E69C8F30];
  allKeys = [v46 allKeys];
  v42 = [v31 nextFieldAfterControls:allKeys inForm:self->_formMetadata];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  allKeys2 = [v46 allKeys];
  v34 = [allKeys2 countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v48;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(allKeys2);
        }

        [WeakRetained reportAutoFillOfferedType:4 forTextFieldWithID:*(*(&v47 + 1) + 8 * k) forFormMetadata:self->_formMetadata];
      }

      v35 = [allKeys2 countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v35);
  }

  [WeakRetained autoFillFormInFrame:self->_frame withValues:v46 setAutoFilled:1 focusFieldAfterFilling:v42 != 0 fieldToFocus:v42 submitForm:0];
  uniqueID = [(WBSFormMetadata *)self->_formMetadata uniqueID];
  frame = self->_frame;
  v61 = *MEMORY[0x1E69C9310];
  identifier3 = [v28 identifier];
  v62 = identifier3;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  [WeakRetained annotateForm:uniqueID inFrame:frame withValues:v40];

  [WeakRetained setLastFilledContact:v28];
  [(SFFormAutocompleteState *)self dismissCustomAutoFill];
}

void __80__SFFormAutocompleteState_performAutoFillWithMatchSelections_doNotFill_contact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 24));
  [WeakRetained setPreferredIdentifier:v6 forProperty:v7 withContact:*(a1 + 40)];
}

- (void)contactPickerDidCancel:(id)cancel
{
  v5 = _Block_copy(self->_displayOtherContactsCompletionHandler);
  displayOtherContactsCompletionHandler = self->_displayOtherContactsCompletionHandler;
  self->_displayOtherContactsCompletionHandler = 0;

  (*(v5 + 2))(v5, 0, 0);
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  displayOtherContactsCompletionHandler = self->_displayOtherContactsCompletionHandler;
  contactCopy = contact;
  v7 = _Block_copy(displayOtherContactsCompletionHandler);
  v8 = self->_displayOtherContactsCompletionHandler;
  self->_displayOtherContactsCompletionHandler = 0;

  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  formMetadata = self->_formMetadata;
  v13 = 0;
  v11 = [WeakRetained valuesForContactFormWithMetadata:formMetadata matches:&v13 multiRoundAutoFillManager:self->_multiRoundAutoFillManager existingMatches:0 contact:contactCopy];
  v12 = v13;

  v7[2](v7, v12, contactCopy);
}

- (void)getTextSuggestionForStreamlinedAutoFillWithCredentialIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_dataController);
  autoFillQuirksManager = [WeakRetained autoFillQuirksManager];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  if ([autoFillQuirksManager isAutomaticLoginDisallowedOnURL:webui_URL])
  {
    isEligibleForAutomaticLogin = 0;
  }

  else
  {
    isEligibleForAutomaticLogin = [(WBSFormMetadata *)self->_formMetadata isEligibleForAutomaticLogin];
  }

  if (identityCopy)
  {
    v12 = [(SFFormAutocompleteState *)self _textSuggestionForExternalCredentialIdentity:identityCopy submitForm:isEligibleForAutomaticLogin];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

    if (shouldAutoFillPasswordsFromKeychain)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __100__SFFormAutocompleteState_getTextSuggestionForStreamlinedAutoFillWithCredentialIdentity_completion___block_invoke;
      v15[3] = &unk_1E8493498;
      v15[4] = self;
      v16 = completionCopy;
      v17 = isEligibleForAutomaticLogin;
      [(SFFormAutocompleteState *)self _getMatchingKeychainCredentialsIncludingCredentialsWithEmptyUsernames:1 withCompletion:v15];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

void __100__SFFormAutocompleteState_getTextSuggestionForStreamlinedAutoFillWithCredentialIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(a1 + 40);
  v6 = v3;
  if (v3)
  {
    v5 = [*(a1 + 32) _textSuggestionForCredentialDisplayData:v3 submitForm:*(a1 + 48)];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

- (void)oneTimeCodeProviderReceivedCode:(id)code
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFFormAutocompleteState_oneTimeCodeProviderReceivedCode___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__SFFormAutocompleteState_oneTimeCodeProviderReceivedCode___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__SFFormAutocompleteState_oneTimeCodeProviderReceivedCode___block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) updateSuggestions];
}

- (void)newAutoFillablePasskeysAvailable:(id)available
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SFFormAutocompleteState_newAutoFillablePasskeysAvailable___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__SFFormAutocompleteState_newAutoFillablePasskeysAvailable___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Received new passkeys available notification. Refreshing AutoFill state.", buf, 2u);
  }

  [*(a1 + 32) _clearCachedCredentials];
  [*(a1 + 32) updateSuggestions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__SFFormAutocompleteState_newAutoFillablePasskeysAvailable___block_invoke_440;
  aBlock[3] = &unk_1E848F758;
  aBlock[4] = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = *(*(a1 + 32) + 96);
  v6 = _Block_copy(v4);
  v7 = v6;
  if (v5)
  {
    v12[0] = v6;
    v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v1 arrayByAddingObjectsFromArray:*(*(a1 + 32) + 96)];
  }

  else
  {
    v11 = v6;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  }
  v8 = ;
  objc_storeStrong((*(a1 + 32) + 96), v8);
  if (v5)
  {

    v8 = v1;
  }
}

void __60__SFFormAutocompleteState_newAutoFillablePasskeysAvailable___block_invoke_440(uint64_t a1, void *a2)
{
  v11 = [a2 firstObject];
  v3 = [v11 autoFillPasskey];

  if (v3)
  {
    v4 = [SFCredentialDisplayData alloc];
    v5 = detailStringForPasskey(v11);
    v6 = [v11 savedAccount];
    v7 = [v6 creationDate];
    v8 = [(SFCredentialDisplayData *)v4 initWithMatch:v11 detail:v5 creationDate:v7];

    v9 = [*(a1 + 32) _textSuggestionForCredentialDisplayData:v8 submitForm:1];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [WeakRetained updateExistingStreamlinedSuggestionIfNecessary:v9];
  }
}

- (void)_clearCachedCredentials
{
  cachedCredentialMatches = self->_cachedCredentialMatches;
  self->_cachedCredentialMatches = 0;

  cachedRelatedCredentialMatches = self->_cachedRelatedCredentialMatches;
  self->_cachedRelatedCredentialMatches = 0;

  cachedExternalCredentialIdentities = self->_cachedExternalCredentialIdentities;
  self->_cachedExternalCredentialIdentities = 0;
}

- (id)externalCredentialIdentities
{
  if (self->_cachedExternalCredentialIdentities)
  {
    return self->_cachedExternalCredentialIdentities;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_textSuggestionForExternalCredentialIdentity:(id)identity submitForm:(BOOL)form
{
  formCopy = form;
  identityCopy = identity;
  v7 = [_SFTextSuggestion textSuggestionWithCredentialIdentity:identityCopy submitForm:formCopy];
  user = [identityCopy user];
  v9 = [SFCredentialDisplayData descriptionForPasswordWithUser:user creationDate:0];
  [v7 setDisplayText:v9];

  v10 = MEMORY[0x1E69C8E18];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  v12 = [v10 titleForCredentialIdentity:identityCopy formURL:webui_URL];

  [v7 setHeaderText:v12];

  return v7;
}

- (BOOL)_shouldAllowExternalPasswordAutoFillOnURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  if ([mEMORY[0x1E69C8DB8] shouldAutoFillPasswords])
  {
    v5 = MEMORY[0x1E69C8FB0];
    host = [lCopy host];
    if ([v5 mayAutoFillPasswordOnHost:host])
    {
      mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
      getEnabledExtensionsSynchronously = [mEMORY[0x1E69C8DE0] getEnabledExtensionsSynchronously];
      v9 = [getEnabledExtensionsSynchronously count] != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_fillCredentialIdentity:(id)identity submitForm:(BOOL)form
{
  identityCopy = identity;
  owningExtensionState = [identityCopy owningExtensionState];
  providerBundleID = [owningExtensionState providerBundleID];

  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke;
  v11[3] = &unk_1E84934E8;
  formCopy = form;
  v11[4] = self;
  v12 = identityCopy;
  v10 = identityCopy;
  [mEMORY[0x1E69C8DE0] getExtensionWithBundleID:providerBundleID completion:v11];
}

void __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke_2;
  v6[3] = &unk_1E8492B90;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 160) = *(a1 + 56);
  v2 = [*(a1 + 40) type];
  if (v2 != 4)
  {
    if (v2 == 2)
    {
      v9 = *(*(a1 + 32) + 184);
      v10 = MEMORY[0x1E696AAE8];
      v11 = *(a1 + 40);
      v12 = [v10 mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [v11 serviceIdentifier];
      v15 = [v11 credentialID];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke_3;
      v29[3] = &unk_1E84934C0;
      v29[4] = *(a1 + 32);
      v30 = *(a1 + 48);
      [v9 getExternalPasskeyRequestForApplicationIdentifier:v13 relyingPartyIdentifier:v14 credentialID:v15 completionHandler:v29];

      return;
    }

    if (v2 != 1)
    {
      return;
    }

    v3 = objc_alloc(MEMORY[0x1E695A978]);
    v4 = *(a1 + 48);
    v5 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:*(a1 + 40)];
    v6 = [v3 initWithExtension:v4 credentialIdentity:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 144);
    *(v7 + 144) = v6;

    goto LABEL_8;
  }

  v16 = [MEMORY[0x1E69C8DE0] sharedManager];
  v17 = (a1 + 48);
  v18 = [v16 extensionSupportsOneTimeCodes:*(a1 + 48)];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x1E695A978]);
    v20 = *(a1 + 48);
    v21 = objc_alloc(MEMORY[0x1E695A930]);
    v22 = [objc_alloc(MEMORY[0x1E695A928]) _initWithFoundationCredentialIdentity:*(a1 + 40)];
    v23 = [v21 initWithCredentialIdentity:v22];
    v24 = [v19 initWithExtension:v20 oneTimeCodeCredentialRequest:v23];
    v25 = *(a1 + 32);
    v26 = *(v25 + 144);
    *(v25 + 144) = v24;

LABEL_8:
    [*(*(a1 + 32) + 144) setDelegate:?];
    v27 = *(*(a1 + 32) + 144);

    [v27 setDismissOnBackground:1];
    return;
  }

  v28 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke_2_cold_1(v17, v28);
  }
}

uint64_t __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke_3(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = MEMORY[0x1E695A978];
    v4 = a2;
    v5 = [[v3 alloc] initWithExtension:*(v2 + 40) passkeyAssertionRequest:v4];

    v6 = *(v2 + 32);
    v7 = *(v6 + 144);
    *(v6 + 144) = v5;

    [*(*(v2 + 32) + 144) setDelegate:?];
    v8 = *(*(v2 + 32) + 144);

    return [v8 setDismissOnBackground:1];
  }

  return result;
}

- (void)_fillASPasswordCredential:(id)credential needsAuthentication:(BOOL)authentication setAutoFilled:(BOOL)filled submitForm:(BOOL)form
{
  formCopy = form;
  filledCopy = filled;
  authenticationCopy = authentication;
  v10 = MEMORY[0x1E695AC48];
  credentialCopy = credential;
  user = [credentialCopy user];
  password = [credentialCopy password];

  v14 = [v10 safari_credentialWithUser:user password:password persistence:0];

  if (authenticationCopy)
  {
    [(SFFormAutocompleteState *)self _fillCredentialAfterAuthenticationIfNeeded:v14 setAsDefaultCredential:0 submitForm:formCopy];
  }

  else
  {
    [(SFFormAutocompleteState *)self _fillCredential:v14 setAutoFilled:filledCopy setAsDefaultCredential:0 focusFieldAfterFilling:formCopy submitForm:formCopy];
  }
}

- (void)_fillASOneTimeCodeCredential:(id)credential setAutoFilled:(BOOL)filled submitForm:(BOOL)form
{
  formCopy = form;
  credentialCopy = credential;
  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  frame = self->_frame;
  code = [credentialCopy code];

  [WeakRetained autoFillOneTimeCodeFieldsInFrame:frame withValue:code shouldSubmit:formCopy];
  [(SFFormAutocompleteState *)self updateSuggestions];
}

- (id)_actionForPresentingPasswordManagerExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  v9 = [mEMORY[0x1E69C8DE0] displayNameForExtension:extensionCopy];

  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v10 stringWithFormat:v11, v9];

  v13 = MEMORY[0x1E69DC648];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__SFFormAutocompleteState__actionForPresentingPasswordManagerExtension_completionHandler___block_invoke;
  v18[3] = &unk_1E8493510;
  objc_copyWeak(&v21, &location);
  v14 = extensionCopy;
  v19 = v14;
  v15 = handlerCopy;
  v20 = v15;
  v16 = [v13 _actionWithTitle:v12 image:0 style:0 handler:v18 shouldDismissHandler:&__block_literal_global_449];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v16;
}

void __90__SFFormAutocompleteState__actionForPresentingPasswordManagerExtension_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _presentCredentialListForExtension:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)_presentCredentialListForExtension:(id)extension completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    p_externalCredentialListCompletionHandlers = &self->_externalCredentialListCompletionHandlers;
    externalCredentialListCompletionHandlers = self->_externalCredentialListCompletionHandlers;
    v11 = _Block_copy(handlerCopy);
    v12 = [(NSArray *)externalCredentialListCompletionHandlers arrayByAddingObject:v11];
    if (v12)
    {
      objc_storeStrong(&self->_externalCredentialListCompletionHandlers, v12);
    }

    else
    {
      v13 = _Block_copy(v8);
      v31[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v15 = *p_externalCredentialListCompletionHandlers;
      *p_externalCredentialListCompletionHandlers = v14;
    }
  }

  v16 = objc_alloc(MEMORY[0x1E695A920]);
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  safari_originalDataAsString = [webui_URL safari_originalDataAsString];
  v19 = [v16 initWithIdentifier:safari_originalDataAsString type:1];
  v30 = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];

  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__SFFormAutocompleteState__presentCredentialListForExtension_completionHandler___block_invoke;
  v26[3] = &unk_1E8493538;
  v27 = extensionCopy;
  v28 = v20;
  selfCopy = self;
  v24 = v20;
  v25 = extensionCopy;
  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getPasskeyAssertionRequestParametersForApplicationIdentifier:bundleIdentifier completionHandler:v26];
}

void __80__SFFormAutocompleteState__presentCredentialListForExtension_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695A980];
  v4 = a2;
  v6 = [[v3 alloc] initWithExtension:*(a1 + 32) serviceIdentifiers:*(a1 + 40) requestParameters:v4];

  [v6 setDelegate:*(a1 + 48)];
  [v6 setDismissOnBackground:1];
  v5 = [*(a1 + 48) _viewControllerToPresentFrom];
  [v5 presentViewController:v6 animated:1 completion:0];
}

- (void)credentialListViewController:(id)controller didFinishWithCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  v11 = self->_externalCredentialListCompletionHandlers;
  externalCredentialListCompletionHandlers = self->_externalCredentialListCompletionHandlers;
  self->_externalCredentialListCompletionHandlers = 0;

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __91__SFFormAutocompleteState_credentialListViewController_didFinishWithCredential_completion___block_invoke;
  v27[3] = &unk_1E8490818;
  v13 = v11;
  v28 = v13;
  v14 = completionCopy;
  v29 = v14;
  [controllerCopy dismissViewControllerAnimated:1 completion:v27];
  if (credentialCopy)
  {
    [(SFFormAutocompleteState *)self _fillASPasswordCredential:credentialCopy needsAuthentication:0 setAutoFilled:0 submitForm:0];
    WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
    v24 = +[_SFFormDataController sharedController];
    user = [credentialCopy user];
    extension = [controllerCopy extension];
    sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];
    [WeakRetained tabIDForAutoFill];
    v18 = v26 = controllerCopy;
    webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
    [WeakRetained webView];
    v20 = credentialCopy;
    v21 = v14;
    v23 = v22 = v13;
    [v24 didFillPasswordForUsername:user fromProviderWithBundleIdentifier:sf_bundleIdentifierForContainingApp inTabWithID:v18 currentURL:webui_URL isPrivate:objc_msgSend(v23 formMetadata:"webui_privateBrowsingEnabled") requester:{self->_formMetadata, self->_conditionalRegistrationRequester}];

    v13 = v22;
    v14 = v21;
    credentialCopy = v20;

    controllerCopy = v26;
  }
}

uint64_t __91__SFFormAutocompleteState_credentialListViewController_didFinishWithCredential_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

- (void)credentialListViewController:(id)controller didFinishWithOneTimeCodeCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  v11 = self->_externalCredentialListCompletionHandlers;
  externalCredentialListCompletionHandlers = self->_externalCredentialListCompletionHandlers;
  self->_externalCredentialListCompletionHandlers = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__SFFormAutocompleteState_credentialListViewController_didFinishWithOneTimeCodeCredential_completion___block_invoke;
  block[3] = &unk_1E8493560;
  v18 = controllerCopy;
  v19 = v11;
  selfCopy = self;
  v22 = completionCopy;
  v20 = credentialCopy;
  v13 = credentialCopy;
  v14 = completionCopy;
  v15 = v11;
  v16 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __102__SFFormAutocompleteState_credentialListViewController_didFinishWithOneTimeCodeCredential_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __102__SFFormAutocompleteState_credentialListViewController_didFinishWithOneTimeCodeCredential_completion___block_invoke_2;
  v7 = &unk_1E8490818;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  [v2 dismissViewControllerAnimated:1 completion:&v4];
  v3 = *(a1 + 48);
  if (v3)
  {
    [*(a1 + 56) _fillASOneTimeCodeCredential:v3 setAutoFilled:0 submitForm:{0, v4, v5, v6, v7, v8}];
  }
}

uint64_t __102__SFFormAutocompleteState_credentialListViewController_didFinishWithOneTimeCodeCredential_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6) + 16))(*(*(&v8 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

- (void)credentialListViewController:(id)controller didFinishWithText:(id)text completion:(id)completion
{
  textCopy = text;
  [controller dismissViewControllerAnimated:1 completion:completion];
  [(SFFormAutocompleteState *)self _fillTextIntoCurrentField:textCopy];
}

- (void)presentUIForPasswordCredentialAuthenticationViewController:(id)controller
{
  controllerCopy = controller;
  _viewControllerToPresentFrom = [(SFFormAutocompleteState *)self _viewControllerToPresentFrom];
  [_viewControllerToPresentFrom presentViewController:controllerCopy animated:1 completion:0];
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  submitExternalCredential = self->_submitExternalCredential;
  self->_submitExternalCredential = 0;
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;
  completionCopy = completion;

  presentingViewController = [controllerCopy presentingViewController];

  [controllerCopy dismissViewControllerAnimated:1 completion:completionCopy];
  if (credentialCopy)
  {
    [(SFFormAutocompleteState *)self _fillASPasswordCredential:credentialCopy needsAuthentication:presentingViewController == 0 setAutoFilled:1 submitForm:submitExternalCredential];
  }

  WeakRetained = objc_loadWeakRetained(&self->_autoFillController);
  v15 = +[_SFFormDataController sharedController];
  user = [credentialCopy user];
  extension = [controllerCopy extension];
  sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];
  tabIDForAutoFill = [WeakRetained tabIDForAutoFill];
  webui_URL = [(SFFormAutoFillFrameHandle *)self->_frame webui_URL];
  webView = [WeakRetained webView];
  [v15 didFillPasswordForUsername:user fromProviderWithBundleIdentifier:sf_bundleIdentifierForContainingApp inTabWithID:tabIDForAutoFill currentURL:webui_URL isPrivate:objc_msgSend(webView formMetadata:"webui_privateBrowsingEnabled") requester:{self->_formMetadata, self->_conditionalRegistrationRequester}];
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithOneTimeCodeCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  submitExternalCredential = self->_submitExternalCredential;
  self->_submitExternalCredential = 0;
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;
  completionCopy = completion;
  controllerCopy = controller;

  [controllerCopy dismissViewControllerAnimated:1 completion:completionCopy];
  v13 = credentialCopy;
  if (credentialCopy)
  {
    [(SFFormAutocompleteState *)self _fillASOneTimeCodeCredential:credentialCopy setAutoFilled:1 submitForm:submitExternalCredential];
    v13 = credentialCopy;
  }
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion
{
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;
  completionCopy = completion;
  credentialCopy = credential;
  controllerCopy = controller;

  [controllerCopy dismissViewControllerAnimated:1 completion:completionCopy];
  [(SFFormAutocompleteState *)self _completePasskeyAssertionWithCredential:credentialCopy completionHandler:completionCopy];
}

- (void)credentialListViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __107__SFFormAutocompleteState_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke;
  v15 = &unk_1E848F548;
  v16 = controllerCopy;
  selfCopy = self;
  v9 = controllerCopy;
  completionCopy = completion;
  credentialCopy = credential;
  dispatch_async(MEMORY[0x1E69E96A0], &v12);
  [(SFFormAutocompleteState *)self _completePasskeyAssertionWithCredential:credentialCopy completionHandler:completionCopy, v12, v13, v14, v15];
}

uint64_t __107__SFFormAutocompleteState_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __107__SFFormAutocompleteState_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke_2;
  v3[3] = &unk_1E848F810;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __107__SFFormAutocompleteState_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 152);
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  *(v3 + 152) = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_completePasskeyAssertionWithCredential:(id)credential completionHandler:(id)handler
{
  self->_submitExternalCredential = 0;
  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  v6 = MEMORY[0x1E696AAE8];
  handlerCopy = handler;
  credentialCopy = credential;
  mainBundle = [v6 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  relyingParty = [credentialCopy relyingParty];
  authenticatorData = [credentialCopy authenticatorData];
  signature = [credentialCopy signature];
  userHandle = [credentialCopy userHandle];
  credentialID = [credentialCopy credentialID];

  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:bundleIdentifier relyingPartyIdentifier:relyingParty authenticatorData:authenticatorData signature:signature userHandle:userHandle credentialID:credentialID];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__SFFormAutocompleteState__completePasskeyAssertionWithCredential_completionHandler___block_invoke;
  block[3] = &unk_1E848F810;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  handlerCopy[2](handlerCopy);
}

void __85__SFFormAutocompleteState__completePasskeyAssertionWithCredential_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained didCompleteWithPasskey];
}

void __46__SFFormAutocompleteState__updateSuggestions___block_invoke_3_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1D4644000, v0, OS_LOG_TYPE_DEBUG, "Adding verification code suggestions: %{private}@", v1, 0xCu);
}

- (void)_didGatherESimInformation
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Did not retrieve device identifier from CoreTelephony with error %{public}@.", v7, v8, v9, v10, v11);
}

- (void)_autofillESimData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Did not retrieve autofill value from CoreTelephony with error %@.", v7, v8, v9, v10, v11);
}

- (void)_fillSavedAccount:setAutoFilled:setAsDefaultCredential:focusFieldAfterFilling:submitForm:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1D4644000, v0, OS_LOG_TYPE_ERROR, "Tried to fill password but didn't have control unique ID for metadata: %{private}@", v1, 0xCu);
}

void __73__SFFormAutocompleteState__offerToAutoFillFromPotentialCredentialMatches__block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F4FE9E38];
  v1 = MEMORY[0x1E696AEC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariServices/iOS/MobileSafari/SafariServices/SFFormAutocompleteState.m"];
  v3 = [v2 lastPathComponent];
  if ([v0 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v0];
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "!match", "-[SFFormAutocompleteState _offerToAutoFillFromPotentialCredentialMatches]_block_invoke", v3, 1839, v5];
  }

  else
  {
    v4 = [v1 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "!match", "-[SFFormAutocompleteState _offerToAutoFillFromPotentialCredentialMatches]_block_invoke", v3, 1839, &stru_1F4FE9E38];
  }

  v6 = [MEMORY[0x1E696AF00] callStackSymbols];
  NSLog(&stru_1F4FEFD98.isa, v4, v6);

  abort();
}

void __62__SFFormAutocompleteState__fillCredentialIdentity_submitForm___block_invoke_2_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 identifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Fetched one time code credential identities for extension that does not support one time codes: %{public}@", v7, v8, v9, v10, v11);
}

@end