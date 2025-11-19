@interface _SFFormAutoFillController
+ (id)_filterAndSortCredentialIdentities:(id)a3 pageURL:(id)a4 exactMatchesOnly:(BOOL)a5;
+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)a3 pageURL:(id)a4 webFrameIdentifier:(id)a5 completion:(id)a6;
+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)a3 webFrameIdentifier:(id)a4 completion:(id)a5;
- (BOOL)_presentStreamlinedStrongPasswordInputViewIfNeededWithInputSession:(id)a3 formType:(unint64_t)a4;
- (BOOL)_presentStrongPasswordIntroductionIfNeededWithAutoFillInputSession:(id)a3;
- (BOOL)_showingAutoFillInputView;
- (BOOL)elementIsBeingFocusedForStreamlinedLogin:(id)a3;
- (BOOL)shouldShowPasswordManagementAppOnboardingViews;
- (NSUUID)tabIDForAutoFill;
- (SFAppAutoFillOneTimeCodeProvider)oneTimeCodeProvider;
- (WBSSavedAccountContext)savedAccountContext;
- (WBUFormAutoFillWebView)webView;
- (_SFAuthenticationContext)authenticationContext;
- (_SFFormAutoFillController)initWithWebView:(id)a3 delegate:(id)a4;
- (_SFFormAutoFillTestController)testController;
- (id)_beginAutomaticPasswordInteractionWithInputSession:(id)a3 generatedPassword:(id)a4 ignorePreviousDecision:(BOOL)a5;
- (id)_beginAutomaticPasswordInteractionWithPasswordFieldMetadata:(id)a3 formMetadata:(id)a4 frame:(id)a5 inputSession:(id)a6 generatedPassword:(id)a7 ignorePreviousDecision:(BOOL)a8;
- (id)_customInputViewFromAutoFillInputSession;
- (id)_preFillDisabledHosts;
- (id)_websiteForAuthenticationPrompt;
- (id)alphanumericStrongPassword;
- (id)authenticationMessageForContext:(id)a3;
- (id)automaticPasswordForPasswordField:(id)a3 inForm:(id)a4 isFrame:(id)a5;
- (id)beginAutomaticPasswordInteractionWithInputSession:(id)a3;
- (id)passcodePromptForContext:(id)a3;
- (id)placeholderImageForStrongPasswordIntroductionViewController:(id)a3;
- (id)strongPasswordIntroductionViewController:(id)a3 automaticStrongPasswordWithFormat:(unint64_t)a4;
- (void)_addUniqueIDsOfAutoFilledForm:(id)a3;
- (void)_addValuesAutoFilledForCurrentPage:(id)a3;
- (void)_authenticateForAutoFillForHighLevelDomain:(id)a3 withCompletion:(id)a4;
- (void)_autoFillDidFinishWithUpdatedFormMetadata:(id)a3 inFrame:(id)a4 shouldSubmit:(BOOL)a5;
- (void)_clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5;
- (void)_collectDiagnosticsForAutoFillIncludingPageContents:(BOOL)a3 completionHandler:(id)a4;
- (void)_createFormTelemetryDataMonitorIfNeeded;
- (void)_customInputViewFromAutoFillInputSession;
- (void)_didFillOneTimeCode:(id)a3 shouldSubmit:(BOOL)a4 shouldConsumeCode:(BOOL)a5;
- (void)_didFocusSensitiveFormField:(id)a3;
- (void)_dismissAutoFillInternalFeedbackNoticeImmediately:(BOOL)a3;
- (void)_dismissKeyboardAndSimulateCarriageReturnKeyEvents:(BOOL)a3;
- (void)_ensureCurrentStrongPasswordExists;
- (void)_fieldFocused:(id)a3 inForm:(id)a4 inFrame:(id)a5 inputSession:(id)a6;
- (void)_fieldFocusedWithInputSession:(id)a3;
- (void)_hideInputAssistantItemsIfNecessary;
- (void)_metadataProviderForFramesHandlesToFormsDictionary:(id)a3 completionHandler:(id)a4;
- (void)_passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession:(id)a3 frameHandle:(id)a4 formMetadata:(id)a5 externalCredentialIdentitiesByURL:(id)a6;
- (void)_prefillTimerFired:(id)a3;
- (void)_presentAutoFillInternalFeedbackActivityNotificationIfNeeded;
- (void)_removeAutomaticPasswordButtonInitiatedByUser:(BOOL)a3 removeVisualTreatmentOnly:(BOOL)a4;
- (void)_removeUniqueIDsOfAutoFilledForm:(id)a3;
- (void)_restoreInputAssistantItemsIfNecessary;
- (void)_showICloudKeychainViewInCurrentInputView;
- (void)_updateFormTelemetryDataMonitorWithFormMetadata:(id)a3 textFieldMetadata:(id)a4 textFieldValueLength:(unint64_t)a5;
- (void)annotateForm:(int64_t)a3 inFrame:(id)a4 withValues:(id)a5;
- (void)authenticateIfNeededForAutoFillAuthenticationType:(int64_t)a3 user:(id)a4 shouldForceAuthentication:(BOOL)a5 withCompletion:(id)a6;
- (void)autoFillForm:(int64_t)a3 inFrame:(id)a4 withGeneratedPassword:(id)a5;
- (void)autoFillFormInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5;
- (void)autoFilledField:(id)a3 inForm:(id)a4;
- (void)automaticPasswordSheetDismissed;
- (void)beginAutomaticPasswordInteractionWithInputSession:(id)a3 generatedPassword:(id)a4;
- (void)clearAutoFilledCreditCardFieldsWithCompletionHandler:(id)a3;
- (void)collectAllFormsMetadataWithCompletionHandler:(id)a3;
- (void)copyCurrentStrongPassword;
- (void)dealloc;
- (void)didCollectFormMetadataForPageLevelAutoFill:(id)a3 atURL:(id)a4;
- (void)didCollectFormMetadataForPreFilling:(id)a3 atURL:(id)a4;
- (void)didCollectURLsForPreFilling:(id)a3 atURL:(id)a4 inFrame:(id)a5;
- (void)didCompleteWithSavedAccount:(id)a3;
- (void)didFillGeneratedPasswordInForm:(id)a3 inFrame:(id)a4;
- (void)didPerformPageLevelAutoFill:(BOOL)a3;
- (void)didRemoveAutomaticStrongPasswordInForm:(id)a3 inputSessionUserObject:(id)a4 inFrame:(id)a5;
- (void)didUpdateUnsubmittedForm:(id)a3 inFrame:(id)a4;
- (void)fetchIconForURLWithCompletionHandler:(id)a3;
- (void)fetchMetadataForTextField:(id)a3 inFrame:(id)a4 withCompletion:(id)a5;
- (void)fieldFocusedWithInputSession:(id)a3;
- (void)fieldWillFocusWithInputSession:(id)a3;
- (void)fillCreditCardData:(id)a3 inFrame:(id)a4 textFieldMetadata:(id)a5 formMetadata:(id)a6;
- (void)fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:(BOOL)a3 completionHandler:(id)a4;
- (void)generateAndFillStrongPassword;
- (void)handleDidSaveAccountWithGeneratedPasswordNotification:(id)a3;
- (void)handleDidUpdatePasswordForPreviouslySavedAccount:(id)a3;
- (void)hideInputAccessoryView;
- (void)insertTextSuggestion:(id)a3;
- (void)invalidate;
- (void)makePasswordFields:(id)a3 viewable:(BOOL)a4;
- (void)offerToSaveUnsubmittedFormDataIfNeededInWebView:(id)a3 fromSameDocumentNavigationOfType:(int64_t)a4 completionHandler:(id)a5;
- (void)performPageLevelAutoFill;
- (void)prefillFormsSoonIfNeeded;
- (void)reloadFirstResponderInputViews;
- (void)replaceCurrentPasswordWithPassword:(id)a3;
- (void)reportAutoFillOfferedType:(unint64_t)a3 forTextFieldWithID:(id)a4 forFormMetadata:(id)a5;
- (void)setUpFormTelemetryDataMonitorWithWebpageLocale:(id)a3;
- (void)showSpinnerInFormSoon:(id)a3 frame:(id)a4;
- (void)stopShowingSpinnerInFormSoon:(double)a3 textFieldMetadata:(id)a4 frame:(id)a5;
- (void)strongPasswordIntroductionViewController:(id)a3 shouldPerformAction:(unint64_t)a4 willShowAdditionalView:(BOOL)a5;
- (void)suppressSoftwareKeyboardOnWebView:(BOOL)a3;
- (void)textDidChangeInTextField:(id)a3 inForm:(id)a4 inFrame:(id)a5;
- (void)userDidSelectUseKeyboard;
- (void)willNavigateFrame:(id)a3 withUnsubmittedForm:(id)a4 completionHandler:(id)a5;
- (void)willSubmitForm:(id)a3 inFrame:(id)a4 submissionHandler:(id)a5;
- (void)willSubmitFormValues:(id)a3 userObject:(id)a4 submissionHandler:(id)a5;
@end

@implementation _SFFormAutoFillController

- (_SFFormAutoFillController)initWithWebView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = _SFFormAutoFillController;
  v8 = [(_SFFormAutoFillController *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v10 = dispatch_queue_create("com.apple.mobilesafari.FormTelemetryDataMonitorQueue", 0);
    formTelemetryDataMonitorQueue = v9->_formTelemetryDataMonitorQueue;
    v9->_formTelemetryDataMonitorQueue = v10;

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __54___SFFormAutoFillController_initWithWebView_delegate___block_invoke;
    v28 = &unk_1E84910E8;
    v12 = v9;
    v29 = v12;
    v13 = v6;
    v30 = v13;
    v14 = _Block_copy(&v25);
    if ([MEMORY[0x1E69C8880] isAutoFillDrivenByUIProcess])
    {
      v15 = [MEMORY[0x1E69C9768] sharedController];
      v16 = [[_SFInjectedJavaScriptFormAutoFiller alloc] initWithWebView:v13 formAutoFillController:v12 injectionController:v15];
      autoFiller = v12->_autoFiller;
      v12->_autoFiller = v16;
    }

    else
    {
      v18 = v14[2](v14);
      v15 = v12->_autoFiller;
      v12->_autoFiller = v18;
    }

    v19 = [MEMORY[0x1E69C8DE0] sharedManager];
    [v19 addObserver:v12];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = +[_SFFormDataController sharedController];
    [v20 addObserver:v12 selector:sel_handleDidSaveAccountWithGeneratedPasswordNotification_ name:*MEMORY[0x1E69E30C8] object:v21];

    v22 = +[_SFFormDataController sharedController];
    [v20 addObserver:v12 selector:sel_handleDidUpdatePasswordForPreviouslySavedAccount_ name:*MEMORY[0x1E69E30D0] object:v22];

    v23 = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(_SFFormAutoFillController *)self invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[_SFFormDataController sharedController];
  [v3 removeObserver:self name:*MEMORY[0x1E69E30C8] object:v4];

  v5 = +[_SFFormDataController sharedController];
  [v3 removeObserver:self name:*MEMORY[0x1E69E30D0] object:v5];

  v6.receiver = self;
  v6.super_class = _SFFormAutoFillController;
  [(_SFFormAutoFillController *)&v6 dealloc];
}

- (void)invalidate
{
  if (self->_remoteObjectInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v3 = [WeakRetained _remoteObjectRegistry];
    [v3 unregisterExportedObject:self interface:self->_remoteObjectInterface];

    remoteObjectInterface = self->_remoteObjectInterface;
    self->_remoteObjectInterface = 0;
  }

  [(SFFormAutocompleteState *)self->_state invalidate];
  state = self->_state;
  self->_state = 0;

  [(NSTimer *)self->_prefillTimer invalidate];
  prefillTimer = self->_prefillTimer;
  self->_prefillTimer = 0;

  objc_storeWeak(&self->_webView, 0);
  v8 = [MEMORY[0x1E69C8DE0] sharedManager];
  [v8 removeObserver:self];
}

- (void)_prefillTimerFired:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];

  [(SFFormAutoFiller *)self->_autoFiller collectURLsForPrefillingAtURL:v5];
}

- (void)prefillFormsSoonIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained formAutoFillControllerCanPrefillForm:self];

  if (v4)
  {
    [(NSTimer *)self->_prefillTimer invalidate];
    v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__prefillTimerFired_ selector:0 userInfo:0 repeats:0.25];
    prefillTimer = self->_prefillTimer;
    self->_prefillTimer = v5;
  }
}

- (void)offerToSaveUnsubmittedFormDataIfNeededInWebView:(id)a3 fromSameDocumentNavigationOfType:(int64_t)a4 completionHandler:(id)a5
{
  v15 = a3;
  v8 = a5;
  v9 = v8;
  if (a4)
  {
    v10 = +[_SFFormDataController sharedController];
    v11 = [v10 autoFillQuirksManager];

    v12 = [v15 _committedURL];
    v13 = [v12 host];
    v14 = [v11 isDomainKnownToDoSameDocumentNavigationInTextEditingCallback:v13];

    if (v14)
    {
      v9[2](v9);
    }

    else
    {
      [(_SFFormAutoFillController *)self offerToSaveUnsubmittedFormDataIfNeededWithCompletionHandler:v9];
    }
  }

  else
  {
    v8[2](v8);
  }
}

- (void)insertTextSuggestion:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFFormAutocompleteState *)self->_state showAllPasswordsButtonTapped];
  }

  else if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFFormAutoFillController *)self autoFillTextSuggestion:v4];
    }
  }
}

- (void)_fieldFocused:(id)a3 inForm:(id)a4 inFrame:(id)a5 inputSession:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(SFFormAutocompleteState *)self->_state invalidate];
  v13 = [[SFFormAutocompleteState alloc] initWithFrame:v11 form:v10 textField:v17 inputSession:v12 autoFillController:self];
  state = self->_state;
  self->_state = v13;

  v15 = [v12 formInputSession];
  if ([(SFFormAutocompleteState *)self->_state action]!= 7)
  {
    [(SFFormAutocompleteState *)self->_state updateAutoFillButton];
  }

  if ([MEMORY[0x1E69E30A8] textFieldLooksLikeCreditCardNumericFormField:v17])
  {
    [v15 setForceSecureTextEntry:1];
  }

  else if (![v17 isSecureTextField])
  {
    goto LABEL_7;
  }

  [(_SFFormAutoFillController *)self _didFocusSensitiveFormField:v17];
LABEL_7:
  if ([v17 looksLikeOneTimeCodeField])
  {
    v16 = [(_SFFormAutoFillController *)self oneTimeCodeProvider];
    [v16 didFocusOneTimeCodeField];
  }
}

- (void)fetchMetadataForTextField:(id)a3 inFrame:(id)a4 withCompletion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  autoFiller = self->_autoFiller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
  [(SFFormAutoFiller *)autoFiller getMetadataForTextField:v13 inFrame:v8 atURL:v12 completionHandler:v9];
}

- (void)autoFillFormInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9
{
  v11 = a6;
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = MEMORY[0x1E695DFD8];
  v20 = [v16 allValues];
  v21 = [v19 setWithArray:v20];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v21];

  v22 = [(SFFormAutocompleteState *)self->_state action];
  autoFiller = self->_autoFiller;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __137___SFFormAutoFillController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm___block_invoke;
  v28[3] = &unk_1E8491138;
  v28[4] = self;
  v24 = v15;
  v29 = v24;
  LOBYTE(v27) = a9;
  [(SFFormAutoFiller *)autoFiller autoFillFormAsynchronouslyInFrame:v24 withValues:v16 setAutoFilled:v12 focusFieldAfterFilling:v11 fieldToFocus:v17 fieldsToObscure:v18 submitForm:v27 completionHandler:v28];
  if (v22 == 2 || v22 == 8)
  {
    lastFilledCreditCardData = self->_lastFilledCreditCardData;
    self->_lastFilledCreditCardData = 0;

    lastFilledCreditCardDataTypes = self->_lastFilledCreditCardDataTypes;
    self->_lastFilledCreditCardDataTypes = 0;
  }
}

- (void)autoFillForm:(int64_t)a3 inFrame:(id)a4 withGeneratedPassword:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v10];

  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = +[_SFFormDataController sharedController];
  v13 = [v12 generatedPassword];

  if (v13)
  {
    v14 = [MEMORY[0x1E69C8898] sharedStore];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke;
    v24[3] = &unk_1E8491160;
    v25 = v11;
    [v14 updateGeneratedPassword:v13 withPassword:v9 completionHandler:v24];

    WeakRetained = v25;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v16 = [v8 webui_URL];
    v21 = a3;
    v17 = [MEMORY[0x1E69C8898] sharedStore];
    v18 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:v16];
    v19 = [WeakRetained webui_privateBrowsingEnabled];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke_3;
    v22[3] = &unk_1E8491160;
    v23 = v11;
    [v17 addGeneratedPassword:v9 forProtectionSpace:v18 inPrivateBrowsingSession:v19 completionHandler:v22];

    a3 = v21;
  }

  v20 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v11, v20);
  self->_didFillStrongPasswordFromStreamlinedAutoFillView = 1;
  [(SFFormAutoFiller *)self->_autoFiller autoFillForm:a3 inFrame:v8 withGeneratedPassword:v9];
}

- (void)annotateForm:(int64_t)a3 inFrame:(id)a4 withValues:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695DFD8];
  v10 = [v8 allValues];
  v11 = [v9 setWithArray:v10];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v11];

  [(SFFormAutoFiller *)self->_autoFiller annotateForm:a3 inFrame:v12 withValues:v8];
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v10];

  autoFiller = self->_autoFiller;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85___SFFormAutoFillController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit___block_invoke;
  v12[3] = &unk_1E84911B0;
  v12[4] = self;
  [(SFFormAutoFiller *)autoFiller autoFillOneTimeCodeFieldsInFrame:v8 withValue:v9 shouldSubmit:v5 completionHandler:v12];
}

- (void)_clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  self->_isCurrentlyClearing = 1;
  autoFiller = self->_autoFiller;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101___SFFormAutoFillController__clearFieldsAndSetFormControlsToNotAutoFilled_inFrame_completionHandler___block_invoke;
  v11[3] = &unk_1E84911D8;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(SFFormAutoFiller *)autoFiller clearFieldsAndSetFormControlsToNotAutoFilled:a3 inFrame:a4 completionHandler:v11];
}

- (void)willSubmitForm:(id)a3 inFrame:(id)a4 submissionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[_SFFormDataController sharedController];
  [v10 setLastFilledCreditCardData:self->_lastFilledCreditCardData];
  [v10 setPreviouslyFilledVirtualCardNumbers:self->_previouslyFilledVirtualCardNumbers];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v12 = [(_SFFormAutoFillController *)self savedAccountContext];
  v13 = [v10 webView:WeakRetained frame:v8 willNavigateFromForm:v14 inContext:v12 bySubmitting:1 submissionHandler:v9];

  if (v13)
  {
    v9[2](v9);
  }

  [v10 setLastFilledCreditCardData:0];
  [(_SFFormAutoFillController *)self _removeUniqueIDsOfAutoFilledForm:v14];
  [(_SFFormAutoFillController *)self sendEventsForAutoFillTelemetry];
  [(_SFFormAutoFillController *)self _dismissAutoFillInternalFeedbackNoticeImmediately:0];
}

- (WBUFormAutoFillWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (void)suppressSoftwareKeyboardOnWebView:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WeakRetained _setSuppressSoftwareKeyboard:v3];
}

- (void)fieldWillFocusWithInputSession:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_isCurrentlyClearing)
  {
    v5 = [(SFFormAutocompleteState *)self->_state inputSession];
    [v5 updateWithAdditionalInputSession:v4];
  }

  else
  {
    if ([(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords isForStreamlinedLogin])
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
        v8 = [(_SFFormAutoFillInputSession *)inputSessionForAutomaticPasswords focusedControlMetadata];
        v9 = [v8 uniqueID];
        *buf = 134218242;
        v26 = inputSessionForAutomaticPasswords;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "%p Field %@ will focus as part of existing streamlined login input session", buf, 0x16u);
      }

      [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords updateWithAdditionalInputSession:v4];
      v10 = self->_inputSessionForAutomaticPasswords;

      v4 = v10;
    }

    [(_SFFormAutoFillController *)self _restoreInputAssistantItemsIfNecessary];
    v11 = self->_externalCredentialIdentitiesForStreamlinedAutoFill;
    externalCredentialIdentitiesForStreamlinedAutoFill = self->_externalCredentialIdentitiesForStreamlinedAutoFill;
    self->_externalCredentialIdentitiesForStreamlinedAutoFill = 0;

    v13 = [(_SFFormAutoFillInputSession *)v4 frameHandle];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 webui_URL];
      v16 = [v15 safari_isEligibleToShowNotSecureWarning];

      v17 = [(_SFFormAutoFillInputSession *)v4 formMetadata];
      if (v17)
      {
        v18 = [(_SFFormAutoFillInputSession *)v4 focusedControlMetadata];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __60___SFFormAutoFillController_fieldWillFocusWithInputSession___block_invoke;
        aBlock[3] = &unk_1E8491200;
        aBlock[4] = self;
        v24 = v16;
        v21 = v14;
        v22 = v4;
        v23 = v11;
        v19 = _Block_copy(aBlock);
        v19[2](v19, v17, v18);
      }
    }
  }
}

- (void)_passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession:(id)a3 frameHandle:(id)a4 formMetadata:(id)a5 externalCredentialIdentitiesByURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 type];
  if (![(_SFFormAutoFillController *)self _presentStrongPasswordIntroductionIfNeededWithAutoFillInputSession:v10]&& ![(_SFFormAutoFillController *)self _presentStreamlinedStrongPasswordInputViewIfNeededWithInputSession:v10 formType:v14])
  {
    v15 = [v10 focusedElementInfo];
    if ([(_SFFormAutoFillController *)self elementIsBeingFocusedForStreamlinedLogin:v15])
    {
    }

    else
    {
      attemptedOfferingStreamlinedLogin = self->_attemptedOfferingStreamlinedLogin;

      if (attemptedOfferingStreamlinedLogin)
      {
        goto LABEL_9;
      }
    }

    if (v14 == 3)
    {
      v17 = +[_SFFormDataController sharedController];
      v18 = [(_SFFormAutoFillController *)self tabIDForAutoFill];
      v19 = [v11 webui_URL];
      v20 = [v17 canShowSavedAccountHistoryItemInTabWithID:v18 currentURL:v19];

      if ((v20 & 1) == 0)
      {
        self->_attemptedOfferingStreamlinedLogin = 1;
        objc_initWeak(&location, self);
        WeakRetained = objc_loadWeakRetained(&self->_webView);
        [WeakRetained _setSuppressSoftwareKeyboard:1];

        v22 = dispatch_time(0, 3000000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __160___SFFormAutoFillController__passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession_frameHandle_formMetadata_externalCredentialIdentitiesByURL___block_invoke;
        block[3] = &unk_1E84905C0;
        objc_copyWeak(&v34, &location);
        dispatch_after(v22, MEMORY[0x1E69E96A0], block);
        v23 = [v11 webui_URL];
        v24 = [v13 objectForKeyedSubscript:v23];

        state = self->_state;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __160___SFFormAutoFillController__passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession_frameHandle_formMetadata_externalCredentialIdentitiesByURL___block_invoke_2;
        v27[3] = &unk_1E8491228;
        v28 = v11;
        v29 = v12;
        v30 = v24;
        v31 = self;
        v32 = v10;
        v26 = v24;
        [(SFFormAutocompleteState *)state getTextSuggestionForStreamlinedAutoFillWithCredentialIdentity:v26 completion:v27];

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_9:
}

- (NSUUID)tabIDForAutoFill
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained tabIDForAutoFill];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_presentStreamlinedStrongPasswordInputViewIfNeededWithInputSession:(id)a3 formType:(unint64_t)a4
{
  v6 = a3;
  if ([MEMORY[0x1E69C8880] isAutomaticStrongPasswordsEnabled] & 1) == 0 || self->_didCloseStrongPasswordIntroductionView || (objc_msgSend(MEMORY[0x1E69BC7D8], "hasThirdPartyPasswordManagerEnabledAndPasswordsAppDisabledForAutoFill") & 1) != 0 || !objc_msgSend(MEMORY[0x1E69C8880], "isPasswordsAppInstalled") || ((objc_msgSend(MEMORY[0x1E69C8DB8], "sharedFeatureManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "shouldAutoFillPasswordsFromKeychain"), v7, (a4 & 0xFFFFFFFFFFFFFFFELL) == 4) ? (v9 = v8) : (v9 = 0), (v9 & 1) == 0 || (-[SFFormAutocompleteState textFieldMetadata](self->_state, "textFieldMetadata"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "uniqueID"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "formMetadata"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "oldPasswordElementUniqueID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v12, v11, v10, (v14) || self->_didFillStrongPasswordFromStreamlinedAutoFillView))
  {
    v15 = 0;
  }

  else
  {
    v17 = [v6 frameHandle];
    v18 = [v17 webui_URL];

    v19 = +[_SFFormDataController sharedController];
    v20 = [v19 autoFillQuirksManager];
    v21 = [v20 passwordGenerationManager];

    v42 = [v21 defaultRequirementsForURL:v18];
    v22 = [v21 passwordGenerationIsDisallowedByRequirements:v42];
    if ((v22 & 1) == 0)
    {
      v40 = v21;
      v41 = v18;
      v23 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v23, OS_LOG_TYPE_DEFAULT, "Presenting streamlined strong password view in custom input view", buf, 2u);
      }

      v24 = +[_SFFormDataController sharedController];
      v25 = [v6 formMetadata];
      v26 = [v6 frameHandle];
      v27 = [v26 webui_URL];
      v28 = [(_SFFormAutoFillController *)self savedAccountContext];
      v29 = [v24 extractUserNameFromForm:v25 atURL:v27 inContext:v28];
      v30 = v29;
      v31 = &stru_1F4FE9E38;
      if (v29)
      {
        v31 = v29;
      }

      v32 = v31;

      v33 = v32;
      v34 = [objc_alloc(MEMORY[0x1E69BC7E8]) initForSafariWithURL:v41 userName:v32];
      v21 = v40;
      v35 = [[_SFAutoFillInputView alloc] initWithStreamlinedStrongPasswordViewController:v34];
      autoFillInputView = self->_autoFillInputView;
      self->_autoFillInputView = v35;

      [(_SFAutoFillInputView *)self->_autoFillInputView setDelegate:self];
      v37 = self->_autoFillInputView;
      v38 = [v6 formInputSession];
      [v38 setCustomInputView:v37];

      v39 = [v6 formInputSession];
      [v39 setAccessoryViewShouldNotShow:1];

      [(_SFFormAutoFillController *)self _hideInputAssistantItemsIfNecessary];
      v18 = v41;
    }

    v15 = v22 ^ 1;
  }

  return v15;
}

- (BOOL)_presentStrongPasswordIntroductionIfNeededWithAutoFillInputSession:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 formMetadata];
  v6 = [v5 type];

  if (v6 >= 4 && (v6 - 4 >= 2 || [MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction]))
  {
    v8 = +[_SFFormDataController sharedController];
    v9 = [v8 autoFillQuirksManager];
    v10 = [v9 passwordGenerationManager];

    v11 = [v4 frameHandle];
    v12 = [v11 webui_URL];
    v13 = [v10 defaultRequirementsForURL:v12];

    v14 = [v10 passwordGenerationIsDisallowedByRequirements:v13];
    if ((v14 & 1) == 0)
    {
      if (!self->_strongPasswordIntroductionViewController)
      {
        v15 = [objc_alloc(MEMORY[0x1E69BC7D8]) initWithMode:0];
        strongPasswordIntroductionViewController = self->_strongPasswordIntroductionViewController;
        self->_strongPasswordIntroductionViewController = v15;

        [(PMSafariAutoFillStrongPasswordIntroductionViewController *)self->_strongPasswordIntroductionViewController setDelegate:self];
      }

      v17 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v25[0] = 67109120;
        v25[1] = 0;
        _os_log_impl(&dword_1D4644000, v17, OS_LOG_TYPE_DEFAULT, "Presenting strong password introduction in custom input view; mode=%d", v25, 8u);
      }

      autoFillInputView = self->_autoFillInputView;
      if (autoFillInputView)
      {
        [(_SFAutoFillInputView *)autoFillInputView replaceContentsOfViewWithStrongPasswordIntroductionViewController:self->_strongPasswordIntroductionViewController];
      }

      else
      {
        v19 = [[_SFAutoFillInputView alloc] initWithIntroductionViewController:self->_strongPasswordIntroductionViewController];
        v20 = self->_autoFillInputView;
        self->_autoFillInputView = v19;
      }

      v21 = self->_autoFillInputView;
      v22 = [v4 formInputSession];
      [v22 setCustomInputView:v21];

      v23 = [v4 formInputSession];
      [v23 setAccessoryViewShouldNotShow:1];

      [(_SFFormAutoFillController *)self _hideInputAssistantItemsIfNecessary];
    }

    v7 = v14 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)reloadFirstResponderInputViews
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v3 = [WeakRetained firstResponder];

  [v3 reloadInputViews];
}

- (void)hideInputAccessoryView
{
  v3 = [(SFFormAutocompleteState *)self->_state inputSession];
  v4 = [v3 formInputSession];
  [v4 setAccessoryViewShouldNotShow:1];

  [(_SFFormAutoFillController *)self _hideInputAssistantItemsIfNecessary];
}

- (void)_hideInputAssistantItemsIfNecessary
{
  if (!self->_preservedLeadingBarButtonGroups && !self->_preservedTrailingBarButtonGroups)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v9 = [WeakRetained firstResponder];

    v4 = [v9 inputAssistantItem];
    v5 = [v4 leadingBarButtonGroups];
    preservedLeadingBarButtonGroups = self->_preservedLeadingBarButtonGroups;
    self->_preservedLeadingBarButtonGroups = v5;

    v7 = [v4 trailingBarButtonGroups];
    preservedTrailingBarButtonGroups = self->_preservedTrailingBarButtonGroups;
    self->_preservedTrailingBarButtonGroups = v7;

    [v4 setLeadingBarButtonGroups:MEMORY[0x1E695E0F0]];
    [v4 setTrailingBarButtonGroups:MEMORY[0x1E695E0F0]];
  }
}

- (void)_restoreInputAssistantItemsIfNecessary
{
  if (self->_preservedLeadingBarButtonGroups || self->_preservedTrailingBarButtonGroups)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v7 = [WeakRetained firstResponder];

    v4 = [v7 inputAssistantItem];
    [v4 setLeadingBarButtonGroups:self->_preservedLeadingBarButtonGroups];
    [v4 setTrailingBarButtonGroups:self->_preservedTrailingBarButtonGroups];
    preservedLeadingBarButtonGroups = self->_preservedLeadingBarButtonGroups;
    self->_preservedLeadingBarButtonGroups = 0;

    preservedTrailingBarButtonGroups = self->_preservedTrailingBarButtonGroups;
    self->_preservedTrailingBarButtonGroups = 0;

    [v7 reloadInputViews];
  }
}

- (void)fieldFocusedWithInputSession:(id)a3
{
  v5 = a3;
  v4 = [[_SFFormAutoFillInputSession alloc] initWithFormInputSession:v5];
  [(_SFFormAutoFillController *)self _fieldFocusedWithInputSession:v4];
}

- (void)_fieldFocusedWithInputSession:(id)a3
{
  v4 = a3;
  [(_SFFormAutoFillController *)self fieldWillFocusWithInputSession:?];
  [(_SFFormAutoFillController *)self fieldDidFocus];
}

- (void)willSubmitFormValues:(id)a3 userObject:(id)a4 submissionHandler:(id)a5
{
  v14 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v14;
    v9 = [v8 objectForKey:@"frame"];
    v10 = [SFFormAutoFillFrameHandle frameHandleFromSerializedData:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x1E69C8F38];
      v12 = [v8 objectForKeyedSubscript:@"form"];
      v13 = [v11 formMetadataFromSerializedData:v12];

      if (v13)
      {
        [(_SFFormAutoFillController *)self willSubmitForm:v13 inFrame:v10 submissionHandler:v7];
      }

      else
      {
        v7[2](v7);
      }
    }

    else
    {
      v7[2](v7);
    }
  }

  else
  {
    v7[2](v7);
  }
}

+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)a3 webFrameIdentifier:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [MEMORY[0x1E69C8DE0] sharedManager];
    v11 = [v10 getEnabledExtensionsSynchronously];
    v12 = [v11 count];

    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C8818]);
      v14 = [MEMORY[0x1E696AAE8] mainBundle];
      v15 = [v14 bundleIdentifier];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke;
      v16[3] = &unk_1E8491278;
      v17 = v7;
      v18 = v9;
      [v13 getPasskeyAssertionRequestParametersForApplicationIdentifier:v15 completionHandler:v16];
    }

    else
    {
      (*(v9 + 2))(v9, MEMORY[0x1E695E0F0]);
    }
  }
}

+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)a3 pageURL:(id)a4 webFrameIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __116___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_pageURL_webFrameIdentifier_completion___block_invoke;
    v15[3] = &unk_1E84912A0;
    v17 = v13;
    v18 = a1;
    v16 = v11;
    [a1 _getExternalLoginCredentialSuggestionsForDomains:v10 webFrameIdentifier:v12 completion:v15];
  }
}

+ (id)_filterAndSortCredentialIdentities:(id)a3 pageURL:(id)a4 exactMatchesOnly:(BOOL)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v6 = [a4 host];
  v7 = [v6 lowercaseString];

  if (v7)
  {
    v27 = [v7 safari_highLevelDomainFromHost];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", v7];
    v29 = [v8 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

    v31 = [MEMORY[0x1E695DF70] array];
    v30 = [MEMORY[0x1E695DF70] array];
    v28 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v26;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          v14 = [v13 site];
          if (([v14 isEqualToString:v7] & 1) != 0 || objc_msgSend(v13, "type") == 2)
          {
            [v31 addObject:v13];
          }

          else
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", v14];
            v16 = [v15 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

            v17 = [v16 isEqualToString:v29];
            v18 = v30;
            if ((v17 & 1) != 0 || ([v14 safari_highLevelDomainFromHost], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v27, "isEqualToString:", v19), v19, v18 = v28, v20))
            {
              [v18 addObject:v13];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    [v31 sortUsingComparator:&__block_literal_global_14];
    [v30 sortUsingComparator:&__block_literal_global_14];
    [v28 sortUsingComparator:&__block_literal_global_14];
    if ([v30 count])
    {
      if ([v31 count])
      {
        v21 = [v30 arrayByAddingObjectsFromArray:v28];
        v22 = [v21 mutableCopy];

        v28 = v22;
      }

      else
      {
        v21 = v31;
        v31 = v30;
      }
    }

    if (a5)
    {
      v23 = 0;
    }

    else
    {
      [v31 arrayByAddingObjectsFromArray:v28];
      v31 = v23 = v31;
    }
  }

  else
  {
    v31 = MEMORY[0x1E695E0F0];
  }

  return v31;
}

- (BOOL)shouldShowPasswordManagementAppOnboardingViews
{
  if (self->_didCloseStrongPasswordIntroductionView)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction];
  }
}

- (void)didCollectURLsForPreFilling:(id)a3 atURL:(id)a4 inFrame:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];

  if ([v9 isEqual:v12])
  {
    v13 = [(_SFFormAutoFillController *)self testController];
    if ([v13 autoFillControllerShouldCollectFormMetadataForTesting:self])
    {
      [(SFFormAutoFiller *)self->_autoFiller collectFormMetadataForTestingAtURL:v12];
    }

    else
    {
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v43 = 0;
      objc_initWeak(&location, self);
      v21 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_206];
      v14 = objc_opt_class();
      v15 = [v10 webFrameIdentifier];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_2;
      v36[3] = &unk_1E8491330;
      objc_copyWeak(&v40, &location);
      v16 = v8;
      v37 = v16;
      v17 = v9;
      v38 = v17;
      v39 = v42;
      [v14 _getExternalLoginCredentialSuggestionsForDomains:v21 webFrameIdentifier:v15 completion:v36];

      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = __Block_byref_object_copy__0;
      v34[4] = __Block_byref_object_dispose__0;
      v35 = [v16 objectEnumerator];
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__208;
      v32 = __Block_byref_object_dispose__209;
      v33 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_210;
      aBlock[3] = &unk_1E84913D0;
      v26 = v42;
      v27 = &v28;
      v25 = v34;
      aBlock[4] = self;
      v23 = v17;
      v24 = v10;
      v18 = _Block_copy(aBlock);
      v19 = _Block_copy(v18);
      v20 = v29[5];
      v29[5] = v19;

      (*(v29[5] + 16))();
      _Block_object_dispose(&v28, 8);

      _Block_object_dispose(v34, 8);
      objc_destroyWeak(&v40);

      objc_destroyWeak(&location);
      _Block_object_dispose(v42, 8);
    }
  }
}

- (_SFAuthenticationContext)authenticationContext
{
  v2 = +[_SFFormDataController sharedController];
  v3 = [v2 autoFillAuthenticationContext];

  return v3;
}

- (void)_authenticateForAutoFillForHighLevelDomain:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  v6 = [(_SFFormAutoFillController *)self authenticationContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87___SFFormAutoFillController__authenticateForAutoFillForHighLevelDomain_withCompletion___block_invoke;
  v8[3] = &unk_1E84913F8;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [v6 authenticateForClient:self userInitiated:1 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)authenticateIfNeededForAutoFillAuthenticationType:(int64_t)a3 user:(id)a4 shouldForceAuthentication:(BOOL)a5 withCompletion:(id)a6
{
  v21 = a4;
  v10 = a6;
  self->_authenticationType = a3;
  if (a3 == 6)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = +[_SFManagedFeatureObserver sharedObserver];
    v11 = [v12 authenticationRequiredToAutoFill];

    if (a5)
    {
      goto LABEL_8;
    }
  }

  if (a3 != 4 && (v11 & 1) == 0)
  {
    v10[2](v10, 1, 0);
    goto LABEL_19;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((a3 == 5 || !a3) && v21 && (objc_opt_respondsToSelector() & 1) != 0 && (+[_SFFormDataController sharedController](_SFFormDataController, "sharedController"), v14 = objc_claimAutoreleasedReturnValue(), [WeakRetained tabIDForAutoFill], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "formAutoFillControllerURLForFormAutoFill:", self), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "canApplyAutoFillGracePeriodForUsername:inTabWithID:currentURL:", v21, v15, v16), v16, v15, v14, v17))
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v18 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
    v19 = [v18 host];
    v20 = [v19 safari_highLevelDomainFromHost];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained formAutoFillControllerGetAuthenticationForAutoFill:self completion:v10];
    }

    else
    {
      [(_SFFormAutoFillController *)self _authenticateForAutoFillForHighLevelDomain:v20 withCompletion:v10];
    }
  }

LABEL_19:
}

- (SFAppAutoFillOneTimeCodeProvider)oneTimeCodeProvider
{
  v2 = +[_SFFormDataController sharedController];
  v3 = [v2 oneTimeCodeProvider];

  return v3;
}

- (WBSSavedAccountContext)savedAccountContext
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained currentSavedAccountContextForFormAutoFillController:self];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E69C8A20] defaultContext];
    }

    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E69C8A20] defaultContext];
  }

  return v7;
}

- (id)_websiteForAuthenticationPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
  v5 = [v4 host];

  v6 = [v5 safari_highLevelDomainFromHost];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v8;
}

- (id)_preFillDisabledHosts
{
  v2 = [_SFFormAutoFillController _preFillDisabledHosts]::disabledHosts;
  if (![_SFFormAutoFillController _preFillDisabledHosts]::disabledHosts)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObjects:{@"idmsa.apple.com", @"idmsac.apple.com", @"idmsac.corp.apple.com", @"idmsauth.corp.apple.com", 0}];
    v4 = [_SFFormAutoFillController _preFillDisabledHosts]::disabledHosts;
    [_SFFormAutoFillController _preFillDisabledHosts]::disabledHosts = v3;

    v2 = [_SFFormAutoFillController _preFillDisabledHosts]::disabledHosts;
  }

  return v2;
}

- (id)authenticationMessageForContext:(id)a3
{
  v4 = a3;
  authenticationType = self->_authenticationType;
  if (authenticationType == 5)
  {
    v8 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingTimeBasedOneTimeCode];
  }

  else if (authenticationType == 1)
  {
    v8 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingSavedPasskey];
  }

  else if (authenticationType)
  {
    v8 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingCreditCard];
  }

  else
  {
    if ([(_SFFormAutoFillController *)self _showingAutoFillInputView])
    {
      v6 = [(_SFFormAutoFillController *)self _websiteForAuthenticationPrompt];
      v7 = [SFAutoFillAuthenticationUtilities customAuthenticationTitleForLoggingInWithSavedAccountOnWebsite:v6];

      goto LABEL_11;
    }

    v8 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingSavedPassword];
  }

  v7 = v8;
LABEL_11:

  return v7;
}

- (id)passcodePromptForContext:(id)a3
{
  v4 = a3;
  authenticationType = self->_authenticationType;
  if (authenticationType == 5)
  {
    v8 = +[SFAutoFillAuthenticationUtilities passcodePromptForFillingTimeBasedOneTimeCode];
  }

  else if (authenticationType == 1)
  {
    v8 = +[SFAutoFillAuthenticationUtilities passcodePromptForUsingPasskey];
  }

  else if (authenticationType)
  {
    v8 = +[SFAutoFillAuthenticationUtilities passcodePromptForFillingCreditCard];
  }

  else
  {
    if ([(_SFFormAutoFillController *)self _showingAutoFillInputView])
    {
      v6 = [(_SFFormAutoFillController *)self _websiteForAuthenticationPrompt];
      v7 = [SFAutoFillAuthenticationUtilities passcodePromptForLoggingInWithSavedAccountOnWebsite:v6];

      goto LABEL_11;
    }

    v8 = +[SFAutoFillAuthenticationUtilities passcodePromptForFillingSavedAccount];
  }

  v7 = v8;
LABEL_11:

  return v7;
}

- (BOOL)_showingAutoFillInputView
{
  if (!self->_autoFillInputView)
  {
    return 0;
  }

  if (!self->_strongPasswordIntroductionViewController)
  {
    goto LABEL_5;
  }

  v3 = [(SFFormAutocompleteState *)self->_state inputSession];
  v4 = [v3 formInputSession];
  v5 = [v4 customInputView];
  autoFillInputView = self->_autoFillInputView;

  if (v5 == autoFillInputView)
  {
    return 1;
  }

  if (!self->_autoFillInputView)
  {
    return 0;
  }

LABEL_5:
  v7 = [(SFFormAutocompleteState *)self->_state inputSession];
  v8 = [v7 formInputSession];
  v9 = [v8 customInputView];
  v10 = v9 == self->_autoFillInputView;

  return v10;
}

- (void)_metadataProviderForFramesHandlesToFormsDictionary:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [[SFFormsMetadataProvider alloc] initWithFrameHandleToFormsDictionary:v7];
  v5[2](v5, v6);
}

- (void)didCollectFormMetadataForPreFilling:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFFormAutoFillController *)self testController];
  if ([v8 autoFillControllerShouldCollectFormMetadataForTesting:self])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71___SFFormAutoFillController_didCollectFormMetadataForPreFilling_atURL___block_invoke;
    v18[3] = &unk_1E8491420;
    v19 = v8;
    v20 = self;
    v21 = v7;
    [(_SFFormAutoFillController *)self _metadataProviderForFramesHandlesToFormsDictionary:v6 completionHandler:v18];

    WeakRetained = v19;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
    v11 = [v7 isEqual:v10];

    if (v11 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v12 = +[_SFFormDataController sharedController];
      v13 = [v12 autoFillQuirksManager];
      v14 = [v13 isStreamlinedLoginDisallowedOnURL:v7];

      if ((v14 & 1) == 0 && [v12 shouldAllowPasswordAutoFillOnURL:v7 allowExternalCredentials:1] && (objc_msgSend(WeakRetained, "formAutoFillControllerShouldDisableStreamlinedLogin:", self) & 1) == 0)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __71___SFFormAutoFillController_didCollectFormMetadataForPreFilling_atURL___block_invoke_2;
        v15[3] = &unk_1E8491448;
        v16 = v12;
        v17 = self;
        [(_SFFormAutoFillController *)self _metadataProviderForFramesHandlesToFormsDictionary:v6 completionHandler:v15];
      }
    }
  }
}

- (void)didCollectFormMetadataForPageLevelAutoFill:(id)a3 atURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78___SFFormAutoFillController_didCollectFormMetadataForPageLevelAutoFill_atURL___block_invoke;
    v11[3] = &unk_1E8491470;
    v11[4] = self;
    [(_SFFormAutoFillController *)self _metadataProviderForFramesHandlesToFormsDictionary:v6 completionHandler:v11];
  }
}

- (void)textDidChangeInTextField:(id)a3 inForm:(id)a4 inFrame:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 value];
  [v11 length];

  v14 = MEMORY[0x1E69E9820];
  v12 = v9;
  v13 = v8;
  WBSDispatchAsyncAndReleaseOnMainQueue();
  if (-[NSMutableIndexSet containsIndex:](self->_uniqueIDsOfFormsThatWereAutoFilled, "containsIndex:", [v12 uniqueID]))
  {
    [(_SFFormAutoFillController *)self _presentAutoFillInternalFeedbackActivityNotificationIfNeeded];
  }

  [(_SFFormAutoFillController *)self didUpdateUnsubmittedForm:v12 inFrame:v10];
  [(SFFormAutocompleteState *)self->_state textDidChangeInFrame:v10 form:v12 textField:v13];
}

- (void)didFillGeneratedPasswordInForm:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = v6;
  WBSDispatchAsyncAndReleaseOnMainQueue();
  [(_SFFormAutoFillController *)self didUpdateUnsubmittedForm:v12 inFrame:v7, v11, 3221225472, __68___SFFormAutoFillController_didFillGeneratedPasswordInForm_inFrame___block_invoke, &unk_1E848F9B0, self];
  v8 = +[_SFFormDataController sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v10 = [(_SFFormAutoFillController *)self savedAccountContext];
  [v8 didFillFormWithGeneratedPassword:v12 inWebView:WeakRetained frame:v7 context:v10];
}

- (void)willNavigateFrame:(id)a3 withUnsubmittedForm:(id)a4 completionHandler:(id)a5
{
  v28 = a3;
  v8 = a4;
  v9 = a5;
  self->_attemptedOfferingStreamlinedLogin = 0;
  v10 = +[_SFFormDataController sharedController];
  [v10 setLastFilledCreditCardData:self->_lastFilledCreditCardData];
  [v10 setPreviouslyFilledVirtualCardNumbers:self->_previouslyFilledVirtualCardNumbers];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v12 = [(_SFFormAutoFillController *)self savedAccountContext];
  v13 = [v10 webView:WeakRetained frame:v28 willNavigateFromForm:v8 inContext:v12 bySubmitting:0 submissionHandler:v9];

  if (v13)
  {
    v9[2](v9);
  }

  *&self->_didFillStrongPasswordFromStreamlinedAutoFillView = 0;
  self->_shouldSuggestToCustomizeStrongPassword = 0;
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v14 = +[_SFFormDataController sharedController];
    v15 = [v14 generatedPassword];

    if (v15)
    {
      v16 = +[_SFFormDataController sharedController];
      [v16 setGeneratedPassword:0];
    }
  }

  [(_SFFormAutoFillController *)self _removeUniqueIDsOfAutoFilledForm:v8];
  [(_SFFormAutoFillController *)self sendEventsForAutoFillTelemetry];
  valuesAutoFilledForCurrentPage = self->_valuesAutoFilledForCurrentPage;
  self->_valuesAutoFilledForCurrentPage = 0;

  self->_hasPresentedAutoFillInternalFeedbackNoticeForCurrentPage = 0;
  [(_SFFormAutoFillController *)self _dismissAutoFillInternalFeedbackNoticeImmediately:1];
  unsubmittedForm = self->_unsubmittedForm;
  self->_unsubmittedForm = 0;

  unsubmittedFormFrame = self->_unsubmittedFormFrame;
  self->_unsubmittedFormFrame = 0;

  self->_waitingForCreditCardDataFromWallet = 0;
  lastFilledCreditCardData = self->_lastFilledCreditCardData;
  self->_lastFilledCreditCardData = 0;

  [v10 setLastFilledCreditCardData:0];
  lastFilledContact = self->_lastFilledContact;
  self->_lastFilledContact = 0;

  frameHandleForAutomaticPasswords = self->_frameHandleForAutomaticPasswords;
  self->_frameHandleForAutomaticPasswords = 0;

  formMetadataForAutomaticPasswords = self->_formMetadataForAutomaticPasswords;
  self->_formMetadataForAutomaticPasswords = 0;

  passwordFieldMetadataForAutomaticPasswords = self->_passwordFieldMetadataForAutomaticPasswords;
  self->_passwordFieldMetadataForAutomaticPasswords = 0;

  uniqueIDsOfFocusedAndRelatedControls = self->_uniqueIDsOfFocusedAndRelatedControls;
  self->_uniqueIDsOfFocusedAndRelatedControls = 0;

  uniqueIDOfFocusedPasswordElementWithAutomaticPassword = self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
  self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword = 0;

  self->_didCloseStrongPasswordIntroductionView = 0;
  self->_didFillStrongPasswordFromStreamlinedAutoFillView = 0;
  uniqueIDsOfControlsFilledWithStrongPassword = self->_uniqueIDsOfControlsFilledWithStrongPassword;
  self->_uniqueIDsOfControlsFilledWithStrongPassword = 0;
}

- (void)didUpdateUnsubmittedForm:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  unsubmittedForm = self->_unsubmittedForm;
  self->_unsubmittedForm = v6;
  v10 = v6;

  unsubmittedFormFrame = self->_unsubmittedFormFrame;
  self->_unsubmittedFormFrame = v7;
}

- (void)_updateFormTelemetryDataMonitorWithFormMetadata:(id)a3 textFieldMetadata:(id)a4 textFieldValueLength:(unint64_t)a5
{
  v9 = a3;
  v8 = a4;
  [(_SFFormAutoFillController *)self _createFormTelemetryDataMonitorIfNeeded];
  [(WBSFormTelemetryDataMonitor *)self->_formTelemetryDataMonitor updateFormTelemetryWithFormMetadata:v9 textFieldMetadata:v8 textFieldValueLength:a5];
}

- (void)reportAutoFillOfferedType:(unint64_t)a3 forTextFieldWithID:(id)a4 forFormMetadata:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  WBSDispatchAsyncAndReleaseOnMainQueue();
}

- (void)_createFormTelemetryDataMonitorIfNeeded
{
  if (!self->_formTelemetryDataMonitor)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C8F48]) initWithWebpageLocale:self->_cachedWebpageLocale];
    formTelemetryDataMonitor = self->_formTelemetryDataMonitor;
    self->_formTelemetryDataMonitor = v4;
  }
}

- (void)setUpFormTelemetryDataMonitorWithWebpageLocale:(id)a3
{
  v4 = a3;
  v3 = v4;
  WBSDispatchAsyncAndReleaseOnMainQueue();
}

- (void)_addUniqueIDsOfAutoFilledForm:(id)a3
{
  v8 = a3;
  v4 = [v8 uniqueID];
  uniqueIDsOfFormsThatWereAutoFilled = self->_uniqueIDsOfFormsThatWereAutoFilled;
  if (uniqueIDsOfFormsThatWereAutoFilled)
  {
    [(NSMutableIndexSet *)uniqueIDsOfFormsThatWereAutoFilled addIndex:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD50] indexSetWithIndex:v4];
    v7 = self->_uniqueIDsOfFormsThatWereAutoFilled;
    self->_uniqueIDsOfFormsThatWereAutoFilled = v6;
  }
}

- (void)_removeUniqueIDsOfAutoFilledForm:(id)a3
{
  v4 = a3;
  -[NSMutableIndexSet removeIndex:](self->_uniqueIDsOfFormsThatWereAutoFilled, "removeIndex:", [v4 uniqueID]);
}

- (void)autoFilledField:(id)a3 inForm:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 value];
  [v7 length];

  v8 = v6;
  v9 = v5;
  WBSDispatchAsyncAndReleaseOnMainQueue();
}

- (void)_autoFillDidFinishWithUpdatedFormMetadata:(id)a3 inFrame:(id)a4 shouldSubmit:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(_SFFormAutoFillController *)self _addUniqueIDsOfAutoFilledForm:v8];
  stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill;
  if (stateForPageLevelAutoFill)
  {
    if (!v5 && (v11 = -[SFFormAutocompleteState action](stateForPageLevelAutoFill, "action"), stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill, v11) && (-[SFFormAutocompleteState multiRoundAutoFillManager](stateForPageLevelAutoFill, "multiRoundAutoFillManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 shouldAttemptFollowUpAutoFillInFormWithMetadata:v8 requestType:0], v12, stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill, v13))
    {
      v14 = [(SFFormAutocompleteState *)stateForPageLevelAutoFill multiRoundAutoFillManager];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __92___SFFormAutoFillController__autoFillDidFinishWithUpdatedFormMetadata_inFrame_shouldSubmit___block_invoke;
      v19[3] = &unk_1E8490658;
      v19[4] = self;
      [v14 dispatchFollowUpAutoFillOfFormWithMetdata:v8 autoFillBlock:v19];
    }

    else
    {
      [(SFFormAutocompleteState *)stateForPageLevelAutoFill invalidate];
      v15 = self->_stateForPageLevelAutoFill;
      self->_stateForPageLevelAutoFill = 0;
    }
  }

  if ([v8 type] == 4)
  {
    v16 = +[_SFFormDataController sharedController];
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    v18 = [(_SFFormAutoFillController *)self savedAccountContext];
    [v16 textDidChangeInForm:v8 inWebView:WeakRetained frame:v9 context:v18];
  }

  else if ([v8 type] == 3 || objc_msgSend(v8, "type") == 5 || -[SFFormAutocompleteState currentControlCanInitiateFillingForRelatedCreditCardFields](self->_state, "currentControlCanInitiateFillingForRelatedCreditCardFields"))
  {
    [(SFFormAutocompleteState *)self->_state updateCachedFormMetadataAfterFilling:v8];
    [(SFFormAutocompleteState *)self->_state updateSuggestions];
    if ([(SFFormAutocompleteState *)self->_state action]!= 3 && [(SFFormAutocompleteState *)self->_state action]!= 6 && [(SFFormAutocompleteState *)self->_state action]!= 4 && [(SFFormAutocompleteState *)self->_state action]!= 5)
    {
      [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:v5];
    }
  }
}

- (void)_didFillOneTimeCode:(id)a3 shouldSubmit:(BOOL)a4 shouldConsumeCode:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  [SFFormAutocompleteState didFillOneTimeCode:"didFillOneTimeCode:shouldConsumeCode:" shouldConsumeCode:?];
  [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:v5];
}

- (void)didCompleteWithSavedAccount:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_webView);
    v6 = +[_SFFormDataController sharedController];
    v7 = [v11 user];
    v8 = [WeakRetained tabIDForAutoFill];
    v9 = [v5 URL];
    v10 = [v5 webui_privateBrowsingEnabled];
    [v6 didFillPasswordForUsername:v7 fromProviderWithBundleIdentifier:*MEMORY[0x1E69C8CC0] inTabWithID:v8 currentURL:v9 isPrivate:v10 formMetadata:self->_unsubmittedForm requester:0];
  }
}

- (void)_dismissKeyboardAndSimulateCarriageReturnKeyEvents:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  LOBYTE(v3) = [WeakRetained _sf_endEditingAndSimulateCarriageReturnKeyEvents:v3];

  if ((v3 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_SFFormAutoFillController _dismissKeyboardAndSimulateCarriageReturnKeyEvents:v5];
    }
  }
}

- (void)didRemoveAutomaticStrongPasswordInForm:(id)a3 inputSessionUserObject:(id)a4 inFrame:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = MEMORY[0x1E69E9820];
  v11 = v8;
  WBSDispatchAsyncAndReleaseOnMainQueue();
  [(_SFFormAutoFillController *)self didUpdateUnsubmittedForm:v11 inFrame:v10, v18, 3221225472, __99___SFFormAutoFillController_didRemoveAutomaticStrongPasswordInForm_inputSessionUserObject_inFrame___block_invoke, &unk_1E848F9B0, self];
  v12 = self->_inputSessionForAutomaticPasswords;
  inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
  self->_inputSessionForAutomaticPasswords = 0;

  v14 = +[_SFFormDataController sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v16 = [(_SFFormAutoFillController *)self savedAccountContext];
  [v14 textDidChangeInForm:v11 inWebView:WeakRetained frame:v10 context:v16];

  if (v9 && v12)
  {
    v17 = [(_SFFormAutoFillInputSession *)v12 autoFillInputSessionByReplacingInputSessionUserObject:v9];

    v12 = v17;
    [(_SFFormAutoFillController *)self _fieldFocusedWithInputSession:v17];
  }
}

- (void)_removeAutomaticPasswordButtonInitiatedByUser:(BOOL)a3 removeVisualTreatmentOnly:(BOOL)a4
{
  if (self->_frameHandleForAutomaticPasswords)
  {
    autoFiller = self->_autoFiller;
    if (a4)
    {
      [SFFormAutoFiller removeAutomaticPasswordVisualTreatmentInFrame:"removeAutomaticPasswordVisualTreatmentInFrame:passwordControlUniqueIDs:" passwordControlUniqueIDs:?];
    }

    else
    {
      [SFFormAutoFiller removeAutomaticPasswordElementsInFrame:"removeAutomaticPasswordElementsInFrame:focusedPasswordControlUniqueID:passwordControlUniqueIDs:" focusedPasswordControlUniqueID:? passwordControlUniqueIDs:?];
    }

    frameHandleForAutomaticPasswords = self->_frameHandleForAutomaticPasswords;
    self->_frameHandleForAutomaticPasswords = 0;

    uniqueIDsOfPasswordElementsForAutomaticPasswords = self->_uniqueIDsOfPasswordElementsForAutomaticPasswords;
    self->_uniqueIDsOfPasswordElementsForAutomaticPasswords = 0;

    uniqueIDOfFocusedPasswordElementWithAutomaticPassword = self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
    self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword = 0;

    if (!a3)
    {
      inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
      self->_inputSessionForAutomaticPasswords = 0;
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"_SFAutomaticPasswordDismissedByUser" object:self];
  }
}

- (void)automaticPasswordSheetDismissed
{
  if ([(NSString *)self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword length]&& self->_frameHandleForAutomaticPasswords)
  {
    autoFiller = self->_autoFiller;

    [SFFormAutoFiller automaticPasswordSheetDimissedInFrame:"automaticPasswordSheetDimissedInFrame:focusedPasswordControlUniqueID:" focusedPasswordControlUniqueID:?];
  }
}

- (id)automaticPasswordForPasswordField:(id)a3 inForm:(id)a4 isFrame:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 maxLength];
  v10 = [v7 passwordRequirements];
  v11 = +[_SFFormDataController sharedController];
  v12 = [v8 webui_URL];
  v13 = [v11 autoGeneratedPasswordForURL:v12 respectingPasswordRequirements:v10 maxLength:v9];

  return v13;
}

- (id)alphanumericStrongPassword
{
  alphanumericStrongPassword = self->_alphanumericStrongPassword;
  if (alphanumericStrongPassword)
  {
    v4 = [(NSString *)alphanumericStrongPassword copy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69C8970]) initWithPasswordRequirementsByDomain:0];
    v6 = [v5 generated15CharacterAlphanumericPassword];
    v7 = self->_alphanumericStrongPassword;
    self->_alphanumericStrongPassword = v6;

    v4 = self->_alphanumericStrongPassword;
  }

  return v4;
}

- (void)replaceCurrentPasswordWithPassword:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
    [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v5];
  }

  if (([(NSString *)self->_currentStrongPassword isEqual:v4]& 1) == 0)
  {
    autoFiller = self->_autoFiller;
    v7 = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords frameHandle];
    [(SFFormAutoFiller *)autoFiller removeAutomaticPasswordVisualTreatmentInFrame:v7 passwordControlUniqueIDs:self->_uniqueIDsOfFocusedAndRelatedControls];

    v8 = self->_autoFiller;
    v9 = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords frameHandle];
    v10 = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords formMetadata];
    v11 = [v10 uniqueID];
    uniqueIDOfFocusedPasswordElementWithAutomaticPassword = self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
    uniqueIDsOfFocusedAndRelatedControls = self->_uniqueIDsOfFocusedAndRelatedControls;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke;
    v33[3] = &unk_1E84904D0;
    v33[4] = self;
    [(SFFormAutoFiller *)v8 substitutePasswordElementsWithAutomaticPasswordElementsInFrame:v9 formID:v11 focusedPasswordControlUniqueID:uniqueIDOfFocusedPasswordElementWithAutomaticPassword passwordControlUniqueIDs:uniqueIDsOfFocusedAndRelatedControls automaticPassword:v4 blurAfterSubstitution:0 completionHandler:v33];

    v14 = +[_SFFormDataController sharedController];
    v15 = [v14 generatedPassword];

    if (v15)
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__0;
      v31 = __Block_byref_object_dispose__0;
      v32 = 0;
      v17 = [MEMORY[0x1E69C8898] sharedStore];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke_3;
      v24[3] = &unk_1E84914C0;
      v26 = &v27;
      v18 = v16;
      v25 = v18;
      [v17 updateGeneratedPassword:v15 withPassword:v4 completionHandler:v24];

      v19 = dispatch_time(0, 1000000000);
      dispatch_group_wait(v18, v19);
      v20 = v28[5];
      v21 = +[_SFFormDataController sharedController];
      [v21 setGeneratedPassword:v20];

      _Block_object_dispose(&v27, 8);
    }

    v22 = [v4 copy];
    currentStrongPassword = self->_currentStrongPassword;
    self->_currentStrongPassword = v22;
  }
}

- (void)makePasswordFields:(id)a3 viewable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_frameHandleForAutomaticPasswords)
  {
    if (![(NSArray *)v6 count])
    {
      v8 = self->_uniqueIDsOfFocusedAndRelatedControls;

      v7 = v8;
    }

    if ([(NSArray *)v7 count])
    {
      if (v4)
      {
        if (self->_didFillStrongPasswordFromStreamlinedAutoFillView)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __57___SFFormAutoFillController_makePasswordFields_viewable___block_invoke;
          v16[3] = &unk_1E84914E8;
          v16[4] = self;
          v9 = [(NSArray *)v7 safari_filterObjectsUsingBlock:v16];
        }

        else
        {
          v9 = MEMORY[0x1E695E0F0];
        }

        if (![(NSArray *)v9 count])
        {
          v14 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 0;
            _os_log_impl(&dword_1D4644000, v14, OS_LOG_TYPE_DEFAULT, "No password fields to make viewable", &v15, 2u);
          }

          goto LABEL_17;
        }
      }

      else
      {
        v9 = v7;
      }

      [(SFFormAutoFiller *)self->_autoFiller setStrongPasswordElementViewableIfAppropriate:v4 frame:self->_frameHandleForAutomaticPasswords passwordControlUniqueIDs:v9];
      if (([MEMORY[0x1E69C8880] isPasswordsAppInstalled] & 1) == 0)
      {
        v10 = +[_SFFormDataController sharedController];
        v11 = [v10 generatedPassword];

        if (v11)
        {
          v12 = [MEMORY[0x1E69C8898] sharedStore];
          [v12 removeGeneratedPassword:v11 completionHandler:0];

          v13 = +[_SFFormDataController sharedController];
          [v13 setGeneratedPassword:0];
        }
      }

      if (([MEMORY[0x1E69C8880] isPasswordsAppInstalled] & 1) == 0)
      {
        [(_SFFormAutoFillController *)self _removeAutomaticPasswordButtonInitiatedByUser:0 removeVisualTreatmentOnly:1];
      }

LABEL_17:
    }
  }
}

- (void)copyCurrentStrongPassword
{
  v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v3 setString:self->_currentStrongPassword];
}

- (void)beginAutomaticPasswordInteractionWithInputSession:(id)a3 generatedPassword:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained formAutoFillControllerUserChoseToUseGeneratedPassword:self];
  }

  lastFilledCreditCardData = self->_lastFilledCreditCardData;
  self->_lastFilledCreditCardData = 0;

  lastFilledCreditCardDataTypes = self->_lastFilledCreditCardDataTypes;
  self->_lastFilledCreditCardDataTypes = 0;

  v10 = [(_SFFormAutoFillController *)self _beginAutomaticPasswordInteractionWithInputSession:v11 generatedPassword:v6 ignorePreviousDecision:1];
}

- (id)beginAutomaticPasswordInteractionWithInputSession:(id)a3
{
  v3 = [(_SFFormAutoFillController *)self _beginAutomaticPasswordInteractionWithInputSession:a3 generatedPassword:0 ignorePreviousDecision:0];

  return v3;
}

- (id)_beginAutomaticPasswordInteractionWithInputSession:(id)a3 generatedPassword:(id)a4 ignorePreviousDecision:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords isForStreamlinedLogin])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
      v12 = [(_SFFormAutoFillInputSession *)inputSessionForAutomaticPasswords focusedControlMetadata];
      v13 = [v12 uniqueID];
      v27 = 134218242;
      v28 = inputSessionForAutomaticPasswords;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEFAULT, "%p Beginning Automatic Strong Password interaction for Streamlined Login input session in control %@", &v27, 0x16u);
    }

    [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords updateWithAdditionalInputSession:v8];
    v14 = self->_inputSessionForAutomaticPasswords;

    v8 = v14;
  }

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled] && (!objc_msgSend(MEMORY[0x1E69C8880], "isAutomaticStrongPasswordsEnabled") || self->_didCloseStrongPasswordIntroductionView) || objc_msgSend(MEMORY[0x1E69C8880], "hasInternalContent") && (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLForKey:", @"SFDebugEnableAutomaticStrongPasswords"), v15, (v16 & 1) != 0) || (-[_SFFormAutoFillInputSession focusedElementInfo](v8, "focusedElementInfo"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "type") == 3, v17, !v18))
  {
    v25 = 0;
  }

  else
  {
    v19 = [(_SFFormAutoFillInputSession *)v8 frameHandle];
    if (v19)
    {
      v20 = [(_SFFormAutoFillInputSession *)v8 formMetadata];
      if (v20)
      {
        v21 = [(_SFFormAutoFillInputSession *)v8 focusedControlMetadata];
        if ([v21 isSecureTextField])
        {
          v22 = +[_SFFormDataController sharedController];
          v23 = [v22 isPasswordFieldForUserCredentialsWithMetadata:v21 formMetadata:v20];

          if (v23)
          {
            v24 = v21;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = [(_SFFormAutoFillController *)self _beginAutomaticPasswordInteractionWithPasswordFieldMetadata:v24 formMetadata:v20 frame:v19 inputSession:v8 generatedPassword:v9 ignorePreviousDecision:v5];
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (id)_beginAutomaticPasswordInteractionWithPasswordFieldMetadata:(id)a3 formMetadata:(id)a4 frame:(id)a5 inputSession:(id)a6 generatedPassword:(id)a7 ignorePreviousDecision:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    v41 = v18;
    v19 = +[_SFFormDataController sharedController];
    v50[0] = 0;
    if ([v19 textFieldIsEligibleForAutomaticStrongPassword:v14 form:v15 ignorePreviousDecision:v8 textFieldCurrentlyContainsStrongPassword:v50])
    {
      v40 = [v14 uniqueID];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __162___SFFormAutoFillController__beginAutomaticPasswordInteractionWithPasswordFieldMetadata_formMetadata_frame_inputSession_generatedPassword_ignorePreviousDecision___block_invoke;
      aBlock[3] = &unk_1E8491510;
      aBlock[4] = self;
      v38 = _Block_copy(aBlock);
      v37 = [v15 uniqueIDsOfPasswordControlAndRelatedControls];
      v38[2](v38, v16, v15, v14, v37, v40);
      if (v50[0] == 1)
      {
        v39 = [v17 focusedElementInfo];
        v20 = [v39 value];
        v21 = v38;
      }

      else
      {
        v39 = [v16 webui_URL];
        v22 = [v19 autoFillQuirksManager];
        v23 = [v22 passwordGenerationManager];

        v36 = v23;
        v35 = [v23 defaultRequirementsForURL:v39];
        if ([v23 passwordGenerationIsDisallowedByRequirements:v35])
        {
          v20 = 0;
          v21 = v38;
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_webView);
          if ([v19 shouldAutoGeneratePasswordsForURL:v39 inWebView:?])
          {
            v33 = objc_loadWeakRetained(&self->_delegate);
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v33 formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:self])
            {
              v20 = 0;
            }

            else
            {
              v24 = [(_SFFormAutoFillController *)self automaticPasswordForPasswordField:v14 inForm:v15 isFrame:v16];
              v25 = v41;
              v32 = v24;
              if (!v41)
              {
                v25 = v24;
              }

              v20 = v25;
              if (v20)
              {
                v26 = [MEMORY[0x1E695DFD8] setWithObject:v20];
                [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v26];

                v27 = [v32 copy];
                defaultStrongPassword = self->_defaultStrongPassword;
                self->_defaultStrongPassword = v27;

                v38[2](v38, v16, v15, v14, v37, v40);
                if (([MEMORY[0x1E69C8880] isPasswordsAppInstalled] & 1) == 0)
                {
                  v29 = [v20 copy];
                  currentStrongPassword = self->_currentStrongPassword;
                  self->_currentStrongPassword = v29;

                  v42[0] = MEMORY[0x1E69E9820];
                  v42[1] = 3221225472;
                  v42[2] = __162___SFFormAutoFillController__beginAutomaticPasswordInteractionWithPasswordFieldMetadata_formMetadata_frame_inputSession_generatedPassword_ignorePreviousDecision___block_invoke_2;
                  v42[3] = &unk_1E8491538;
                  v48 = v38;
                  v43 = v16;
                  v44 = v15;
                  v45 = v14;
                  v46 = v37;
                  v47 = v40;
                  [(_SFFormAutoFillController *)self fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:v8 completionHandler:v42];
                }
              }
            }
          }

          else
          {
            v20 = 0;
          }

          v21 = v38;
        }
      }
    }

    else
    {
      v20 = 0;
    }

    v18 = v41;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v7 = [(SFFormAutocompleteState *)self->_state frame];
    v8 = [(SFFormAutocompleteState *)self->_state formMetadata];
    v9 = [(SFFormAutocompleteState *)self->_state textFieldMetadata];
  }

  else
  {
    v7 = self->_frameHandleForAutomaticPasswords;
    v8 = self->_formMetadataForAutomaticPasswords;
    v9 = self->_passwordFieldMetadataForAutomaticPasswords;
  }

  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v12 = [(SFFormAutoFillFrameHandle *)v7 webui_URL];
  if (!self->_defaultStrongPassword)
  {
    v13 = [(_SFFormAutoFillController *)self automaticPasswordForPasswordField:v10 inForm:v8 isFrame:v7];
    defaultStrongPassword = self->_defaultStrongPassword;
    self->_defaultStrongPassword = v13;
  }

  if (self->_currentStrongPassword || (objc_storeStrong(&self->_currentStrongPassword, self->_defaultStrongPassword), self->_currentStrongPassword))
  {
    v32 = v10;
    v33 = v6;
    v34 = v7;
    v35 = v8;
    v30 = v12;
    v31 = +[_SFFormDataController sharedController];
    v15 = v4;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__0;
    v48[4] = __Block_byref_object_dispose__0;
    v49 = 0;
    v29 = dispatch_group_create();
    dispatch_group_enter(v29);
    v16 = [MEMORY[0x1E69C8898] sharedStore];
    currentStrongPassword = self->_currentStrongPassword;
    v18 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:v12];
    v19 = [WeakRetained webui_privateBrowsingEnabled];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke;
    v45[3] = &unk_1E8491560;
    v20 = v29;
    v46 = v20;
    v28 = v31;
    v47 = v28;
    [v16 addGeneratedPassword:currentStrongPassword forProtectionSpace:v18 inPrivateBrowsingSession:v19 completionHandler:v45];

    dispatch_group_enter(v20);
    autoFiller = self->_autoFiller;
    v22 = [(WBSFormMetadata *)v35 uniqueID];
    uniqueIDOfFocusedPasswordElementWithAutomaticPassword = self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
    uniqueIDsOfFocusedAndRelatedControls = self->_uniqueIDsOfFocusedAndRelatedControls;
    v25 = self->_currentStrongPassword;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke_3;
    v42[3] = &unk_1E8491588;
    v44 = v48;
    v42[4] = self;
    v26 = v20;
    v43 = v26;
    v7 = v34;
    [(SFFormAutoFiller *)autoFiller substitutePasswordElementsWithAutomaticPasswordElementsInFrame:v34 formID:v22 focusedPasswordControlUniqueID:uniqueIDOfFocusedPasswordElementWithAutomaticPassword passwordControlUniqueIDs:uniqueIDsOfFocusedAndRelatedControls automaticPassword:v25 blurAfterSubstitution:v15 completionHandler:v42];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke_4;
    block[3] = &unk_1E84915B0;
    v37 = v34;
    v38 = self;
    v41 = v48;
    v8 = v35;
    v39 = v35;
    v6 = v33;
    v40 = v33;
    dispatch_group_notify(v26, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v48, 8);
    v10 = v32;
    v12 = v30;
  }

  else
  {
    v27 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [_SFFormAutoFillController fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:v27 completionHandler:?];
    }
  }
}

- (void)collectAllFormsMetadataWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  autoFiller = self->_autoFiller;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___SFFormAutoFillController_collectAllFormsMetadataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8491600;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  [(SFFormAutoFiller *)autoFiller collectAllFormsMetadataWithRequestType:0 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)fillCreditCardData:(id)a3 inFrame:(id)a4 textFieldMetadata:(id)a5 formMetadata:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = v10;
  v14 = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
  v15 = [(_SFFormAutoFillController *)self authenticationContext];
  v16 = [v15 externalizedContext];

  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*MEMORY[0x1E69C93B8]];
  [(_SFFormAutoFillController *)self showSpinnerInFormSoon:v12 frame:v11];
  self->_waitingForCreditCardDataFromWallet = 1;
  objc_initWeak(&location, self);
  v23 = [v11 webui_URL];
  v18 = [v23 host];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke;
  v25[3] = &unk_1E84916F0;
  objc_copyWeak(&v30, &location);
  v19 = v17;
  v26 = v19;
  v20 = v14;
  v27 = v20;
  v21 = v11;
  v28 = v21;
  v22 = v13;
  v29 = v22;
  [v20 getCreditCardDataToFill:v24 host:v18 externalizedContext:v16 completionHandler:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)showSpinnerInFormSoon:(id)a3 frame:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69C8F20];
  v9 = *MEMORY[0x1E69C93B8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___SFFormAutoFillController_showSpinnerInFormSoon_frame___block_invoke;
  v14[3] = &unk_1E8491718;
  objc_copyWeak(&v17, &location);
  v15 = v6;
  v16 = v7;
  v10 = v7;
  v11 = v6;
  v12 = [v8 scheduledTimerWithInterval:0 repeats:v14 handler:v9];
  timerToShowSpinnerInForm = self->_timerToShowSpinnerInForm;
  self->_timerToShowSpinnerInForm = v12;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)stopShowingSpinnerInFormSoon:(double)a3 textFieldMetadata:(id)a4 frame:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69C8F20];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___SFFormAutoFillController_stopShowingSpinnerInFormSoon_textFieldMetadata_frame___block_invoke;
  v15[3] = &unk_1E8491718;
  objc_copyWeak(&v18, &location);
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 scheduledTimerWithInterval:0 repeats:v15 handler:a3];
  timerToStopShowingSpinnerInForm = self->_timerToStopShowingSpinnerInForm;
  self->_timerToStopShowingSpinnerInForm = v13;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)clearAutoFilledCreditCardFieldsWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69C9760];
  v6 = [(NSDictionary *)self->_lastFilledCreditCardDataTypes allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82___SFFormAutoFillController_clearAutoFilledCreditCardFieldsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8491768;
  objc_copyWeak(&v8, &location);
  [v5 asynchronouslyEnumerateFramesOnQueue:MEMORY[0x1E69E96A0] withControlHandles:v6 block:v7 completionHandler:v4];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (BOOL)elementIsBeingFocusedForStreamlinedLogin:(id)a3
{
  v3 = [a3 userObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safari_BOOLForKey:@"focusingForStreamlinedLogin"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performPageLevelAutoFill
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];

  [(SFFormAutoFiller *)self->_autoFiller collectFormMetadataForPageLevelAutoFillAtURL:v4];
}

- (void)didPerformPageLevelAutoFill:(BOOL)a3
{
  if (!a3 || ([(SFFormAutocompleteState *)self->_stateForPageLevelAutoFill multiRoundAutoFillManager], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(SFFormAutocompleteState *)self->_stateForPageLevelAutoFill invalidate];
    stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill;
    self->_stateForPageLevelAutoFill = 0;
  }
}

- (void)_collectDiagnosticsForAutoFillIncludingPageContents:(BOOL)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69C8E98]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];

  [v6 setUrl:v8];
  [v6 setSensitiveValuesForRedaction:self->_valuesAutoFilledForCurrentPage];
  autoFiller = self->_autoFiller;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99___SFFormAutoFillController__collectDiagnosticsForAutoFillIncludingPageContents_completionHandler___block_invoke;
  v12[3] = &unk_1E8491790;
  v10 = v6;
  v13 = v10;
  v11 = v5;
  v14 = v11;
  [(SFFormAutoFiller *)autoFiller collectAllFormsMetadataWithRequestType:4 completionHandler:v12];
}

- (void)_presentAutoFillInternalFeedbackActivityNotificationIfNeeded
{
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained resetPendingAutoFillInternalFeedbackToastDismissalTimer];
    }

    if (!self->_hasPresentedAutoFillInternalFeedbackNoticeForCurrentPage)
    {
      self->_hasPresentedAutoFillInternalFeedbackNoticeForCurrentPage = 1;
      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(&location, self);
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __89___SFFormAutoFillController__presentAutoFillInternalFeedbackActivityNotificationIfNeeded__block_invoke;
        v4[3] = &unk_1E84917B8;
        objc_copyWeak(&v6, &location);
        v5 = WeakRetained;
        [(_SFFormAutoFillController *)self _collectDiagnosticsForAutoFillIncludingPageContents:0 completionHandler:v4];

        objc_destroyWeak(&v6);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)_dismissAutoFillInternalFeedbackNoticeImmediately:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained dismissAutoFillInternalFeedbackActivityForFormAutoFillController:self immediately:v3];
    }
  }
}

- (void)_addValuesAutoFilledForCurrentPage:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v9 = [v4 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_278];

    valuesAutoFilledForCurrentPage = self->_valuesAutoFilledForCurrentPage;
    if (valuesAutoFilledForCurrentPage)
    {
      [(NSMutableSet *)valuesAutoFilledForCurrentPage unionSet:?];
    }

    else
    {
      v7 = [v9 mutableCopy];
      v8 = self->_valuesAutoFilledForCurrentPage;
      self->_valuesAutoFilledForCurrentPage = v7;
    }

    v6 = v9;
  }

  else
  {
    v6 = v4;
  }
}

- (void)_didFocusSensitiveFormField:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained formAutoFillControllerDidFocusSensitiveFormField:self];
  }

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v4 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    v5 = [v4 shouldAutoFillPasswordsFromKeychain];

    if (v5)
    {
      [(_SFFormAutoFillController *)self makePasswordFields:self->_uniqueIDsOfFocusedAndRelatedControls viewable:1];
    }
  }
}

- (id)_customInputViewFromAutoFillInputSession
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords formInputSession];
  v3 = [v2 customInputView];

  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        [(_SFFormAutoFillController *)v6 _customInputViewFromAutoFillInputSession];
      }

      v3 = 0;
    }
  }

  return v3;
}

- (void)_ensureCurrentStrongPasswordExists
{
  v3 = [(_SFFormAutoFillController *)self automaticPasswordForPasswordField:self->_passwordFieldMetadataForAutomaticPasswords inForm:self->_formMetadataForAutomaticPasswords isFrame:self->_frameHandleForAutomaticPasswords];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 copy];
    currentStrongPassword = self->_currentStrongPassword;
    self->_currentStrongPassword = v4;

    v3 = v6;
  }
}

- (void)generateAndFillStrongPassword
{
  if (!self->_currentStrongPassword)
  {
    [(_SFFormAutoFillController *)self _ensureCurrentStrongPasswordExists];
    v3 = [MEMORY[0x1E695DFD8] setWithObject:self->_currentStrongPassword];
    [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v3];
  }

  [(_SFFormAutoFillController *)self fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:1 completionHandler:&__block_literal_global_283];
  self->_didFillStrongPasswordFromStreamlinedAutoFillView = 1;
}

- (void)userDidSelectUseKeyboard
{
  v3 = [(SFFormAutocompleteState *)self->_state inputSession];
  v4 = [v3 formInputSession];
  [v4 setCustomInputView:0];

  v5 = [(SFFormAutocompleteState *)self->_state inputSession];
  v6 = [v5 formInputSession];
  [v6 setAccessoryViewShouldNotShow:0];

  [(_SFFormAutoFillController *)self _restoreInputAssistantItemsIfNecessary];
}

- (void)_showICloudKeychainViewInCurrentInputView
{
  v3 = [(_SFFormAutoFillController *)self _customInputViewFromAutoFillInputSession];
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Transitioning to iCloud Keychain view", v6, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x1E69BC7D8]) initWithMode:3];
    [v5 setDelegate:self];
    [v3 replaceContentsOfViewWithStrongPasswordIntroductionViewController:v5];
    objc_storeStrong(&self->_strongPasswordIntroductionViewController, v5);
    [(_SFFormAutoFillController *)self hideInputAccessoryView];
  }
}

- (void)fetchIconForURLWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69C9898]);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v7 = [WeakRetained URL];
  v8 = [v5 initWithTitle:&stru_1F4FE9E38 url:v7 minimumIconSize:48.0 maximumIconSize:{48.0, 64.0, 64.0}];

  v9 = [MEMORY[0x1E69B1C68] sharedSiteMetadataManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___SFFormAutoFillController_fetchIconForURLWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E8491800;
  v10 = v4;
  v13 = v10;
  v11 = [v9 registerRequest:v8 priority:2 responseHandler:v12];
}

- (void)strongPasswordIntroductionViewController:(id)a3 shouldPerformAction:(unint64_t)a4 willShowAdditionalView:(BOOL)a5
{
  v8 = a3;
  v7 = [v8 mode];
  if (a4 != 1 || v7)
  {
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:0];
    }
  }

  else
  {
    self->_didCloseStrongPasswordIntroductionView = 1;
    [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:0];
  }
}

- (id)placeholderImageForStrongPasswordIntroductionViewController:(id)a3
{
  v3 = MEMORY[0x1E69B1C70];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v5 = [WeakRetained URL];
  v6 = [MEMORY[0x1E69DC888] systemGrayColor];
  v7 = [v3 generateFavoritesIconForTitle:&stru_1F4FE9E38 url:v5 backgroundColor:v6 shouldRemoveGrammaticalArticles:1 fontWeight:0 fontDesign:1 fontSize:56.0];

  return v7;
}

- (id)strongPasswordIntroductionViewController:(id)a3 automaticStrongPasswordWithFormat:(unint64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    v8 = [(_SFFormAutoFillController *)self alphanumericStrongPassword];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v8 = [(_SFFormAutoFillController *)self defaultStrongPassword];
  }

  v4 = v8;
LABEL_6:

  return v4;
}

- (void)handleDidSaveAccountWithGeneratedPasswordNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_didFillStrongPasswordFromStreamlinedAutoFillView && !self->_didPostAccountSavedNotificationForAccountSavedWithFilledStrongPassword)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69E30D8]];

    if (v7)
    {
      objc_storeStrong(&self->_recentlySavedAccountFromStreamlinedAutoFill, v7);
      if ([MEMORY[0x1E69BC7D8] shouldShowViewsInMode:3])
      {
        [(_SFFormAutoFillController *)self _showICloudKeychainViewInCurrentInputView];
      }

      else
      {
        v9 = [MEMORY[0x1E69C89C0] sharedNotificationManager];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __83___SFFormAutoFillController_handleDidSaveAccountWithGeneratedPasswordNotification___block_invoke;
        v10[3] = &unk_1E8491850;
        v10[4] = self;
        v11 = v7;
        [v9 requestStatusWithCompletionHandler:v10];
      }
    }

    else
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "No account saved; dismissing keyboard", buf, 2u);
      }

      [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:0];
    }
  }
}

- (void)handleDidUpdatePasswordForPreviouslySavedAccount:(id)a3
{
  v4 = a3;
  if (__PAIR64__(self->_didPostAccountSavedNotificationForAccountSavedWithFilledStrongPassword, self->_didFillStrongPasswordFromStreamlinedAutoFillView) == 0x100000001)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling password updated notification", v9, 2u);
    }

    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69E30D8]];

    objc_storeStrong(&self->_recentlySavedAccountFromStreamlinedAutoFill, v7);
    v8 = [MEMORY[0x1E69C89C0] sharedNotificationManager];
    [v8 schedulePasswordUpdatedNotificationForSavedAccount:v7 completionHandler:&__block_literal_global_295];
  }
}

- (_SFFormAutoFillTestController)testController
{
  WeakRetained = objc_loadWeakRetained(&self->_testController);

  return WeakRetained;
}

- (void)_customInputViewFromAutoFillInputSession
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "Found unexpected input view of type %@", buf, 0xCu);
}

@end