@interface _SFFormAutoFillController
+ (id)_filterAndSortCredentialIdentities:(id)identities pageURL:(id)l exactMatchesOnly:(BOOL)only;
+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)domains pageURL:(id)l webFrameIdentifier:(id)identifier completion:(id)completion;
+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)domains webFrameIdentifier:(id)identifier completion:(id)completion;
- (BOOL)_presentStreamlinedStrongPasswordInputViewIfNeededWithInputSession:(id)session formType:(unint64_t)type;
- (BOOL)_presentStrongPasswordIntroductionIfNeededWithAutoFillInputSession:(id)session;
- (BOOL)_showingAutoFillInputView;
- (BOOL)elementIsBeingFocusedForStreamlinedLogin:(id)login;
- (BOOL)shouldShowPasswordManagementAppOnboardingViews;
- (NSUUID)tabIDForAutoFill;
- (SFAppAutoFillOneTimeCodeProvider)oneTimeCodeProvider;
- (WBSSavedAccountContext)savedAccountContext;
- (WBUFormAutoFillWebView)webView;
- (_SFAuthenticationContext)authenticationContext;
- (_SFFormAutoFillController)initWithWebView:(id)view delegate:(id)delegate;
- (_SFFormAutoFillTestController)testController;
- (id)_beginAutomaticPasswordInteractionWithInputSession:(id)session generatedPassword:(id)password ignorePreviousDecision:(BOOL)decision;
- (id)_beginAutomaticPasswordInteractionWithPasswordFieldMetadata:(id)metadata formMetadata:(id)formMetadata frame:(id)frame inputSession:(id)session generatedPassword:(id)password ignorePreviousDecision:(BOOL)decision;
- (id)_customInputViewFromAutoFillInputSession;
- (id)_preFillDisabledHosts;
- (id)_websiteForAuthenticationPrompt;
- (id)alphanumericStrongPassword;
- (id)authenticationMessageForContext:(id)context;
- (id)automaticPasswordForPasswordField:(id)field inForm:(id)form isFrame:(id)frame;
- (id)beginAutomaticPasswordInteractionWithInputSession:(id)session;
- (id)passcodePromptForContext:(id)context;
- (id)placeholderImageForStrongPasswordIntroductionViewController:(id)controller;
- (id)strongPasswordIntroductionViewController:(id)controller automaticStrongPasswordWithFormat:(unint64_t)format;
- (void)_addUniqueIDsOfAutoFilledForm:(id)form;
- (void)_addValuesAutoFilledForCurrentPage:(id)page;
- (void)_authenticateForAutoFillForHighLevelDomain:(id)domain withCompletion:(id)completion;
- (void)_autoFillDidFinishWithUpdatedFormMetadata:(id)metadata inFrame:(id)frame shouldSubmit:(BOOL)submit;
- (void)_clearFieldsAndSetFormControlsToNotAutoFilled:(id)filled inFrame:(id)frame completionHandler:(id)handler;
- (void)_collectDiagnosticsForAutoFillIncludingPageContents:(BOOL)contents completionHandler:(id)handler;
- (void)_createFormTelemetryDataMonitorIfNeeded;
- (void)_customInputViewFromAutoFillInputSession;
- (void)_didFillOneTimeCode:(id)code shouldSubmit:(BOOL)submit shouldConsumeCode:(BOOL)consumeCode;
- (void)_didFocusSensitiveFormField:(id)field;
- (void)_dismissAutoFillInternalFeedbackNoticeImmediately:(BOOL)immediately;
- (void)_dismissKeyboardAndSimulateCarriageReturnKeyEvents:(BOOL)events;
- (void)_ensureCurrentStrongPasswordExists;
- (void)_fieldFocused:(id)focused inForm:(id)form inFrame:(id)frame inputSession:(id)session;
- (void)_fieldFocusedWithInputSession:(id)session;
- (void)_hideInputAssistantItemsIfNecessary;
- (void)_metadataProviderForFramesHandlesToFormsDictionary:(id)dictionary completionHandler:(id)handler;
- (void)_passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession:(id)session frameHandle:(id)handle formMetadata:(id)metadata externalCredentialIdentitiesByURL:(id)l;
- (void)_prefillTimerFired:(id)fired;
- (void)_presentAutoFillInternalFeedbackActivityNotificationIfNeeded;
- (void)_removeAutomaticPasswordButtonInitiatedByUser:(BOOL)user removeVisualTreatmentOnly:(BOOL)only;
- (void)_removeUniqueIDsOfAutoFilledForm:(id)form;
- (void)_restoreInputAssistantItemsIfNecessary;
- (void)_showICloudKeychainViewInCurrentInputView;
- (void)_updateFormTelemetryDataMonitorWithFormMetadata:(id)metadata textFieldMetadata:(id)fieldMetadata textFieldValueLength:(unint64_t)length;
- (void)annotateForm:(int64_t)form inFrame:(id)frame withValues:(id)values;
- (void)authenticateIfNeededForAutoFillAuthenticationType:(int64_t)type user:(id)user shouldForceAuthentication:(BOOL)authentication withCompletion:(id)completion;
- (void)autoFillForm:(int64_t)form inFrame:(id)frame withGeneratedPassword:(id)password;
- (void)autoFillFormInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)frame withValue:(id)value shouldSubmit:(BOOL)submit;
- (void)autoFilledField:(id)field inForm:(id)form;
- (void)automaticPasswordSheetDismissed;
- (void)beginAutomaticPasswordInteractionWithInputSession:(id)session generatedPassword:(id)password;
- (void)clearAutoFilledCreditCardFieldsWithCompletionHandler:(id)handler;
- (void)collectAllFormsMetadataWithCompletionHandler:(id)handler;
- (void)copyCurrentStrongPassword;
- (void)dealloc;
- (void)didCollectFormMetadataForPageLevelAutoFill:(id)fill atURL:(id)l;
- (void)didCollectFormMetadataForPreFilling:(id)filling atURL:(id)l;
- (void)didCollectURLsForPreFilling:(id)filling atURL:(id)l inFrame:(id)frame;
- (void)didCompleteWithSavedAccount:(id)account;
- (void)didFillGeneratedPasswordInForm:(id)form inFrame:(id)frame;
- (void)didPerformPageLevelAutoFill:(BOOL)fill;
- (void)didRemoveAutomaticStrongPasswordInForm:(id)form inputSessionUserObject:(id)object inFrame:(id)frame;
- (void)didUpdateUnsubmittedForm:(id)form inFrame:(id)frame;
- (void)fetchIconForURLWithCompletionHandler:(id)handler;
- (void)fetchMetadataForTextField:(id)field inFrame:(id)frame withCompletion:(id)completion;
- (void)fieldFocusedWithInputSession:(id)session;
- (void)fieldWillFocusWithInputSession:(id)session;
- (void)fillCreditCardData:(id)data inFrame:(id)frame textFieldMetadata:(id)metadata formMetadata:(id)formMetadata;
- (void)fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:(BOOL)substitution completionHandler:(id)handler;
- (void)generateAndFillStrongPassword;
- (void)handleDidSaveAccountWithGeneratedPasswordNotification:(id)notification;
- (void)handleDidUpdatePasswordForPreviouslySavedAccount:(id)account;
- (void)hideInputAccessoryView;
- (void)insertTextSuggestion:(id)suggestion;
- (void)invalidate;
- (void)makePasswordFields:(id)fields viewable:(BOOL)viewable;
- (void)offerToSaveUnsubmittedFormDataIfNeededInWebView:(id)view fromSameDocumentNavigationOfType:(int64_t)type completionHandler:(id)handler;
- (void)performPageLevelAutoFill;
- (void)prefillFormsSoonIfNeeded;
- (void)reloadFirstResponderInputViews;
- (void)replaceCurrentPasswordWithPassword:(id)password;
- (void)reportAutoFillOfferedType:(unint64_t)type forTextFieldWithID:(id)d forFormMetadata:(id)metadata;
- (void)setUpFormTelemetryDataMonitorWithWebpageLocale:(id)locale;
- (void)showSpinnerInFormSoon:(id)soon frame:(id)frame;
- (void)stopShowingSpinnerInFormSoon:(double)soon textFieldMetadata:(id)metadata frame:(id)frame;
- (void)strongPasswordIntroductionViewController:(id)controller shouldPerformAction:(unint64_t)action willShowAdditionalView:(BOOL)view;
- (void)suppressSoftwareKeyboardOnWebView:(BOOL)view;
- (void)textDidChangeInTextField:(id)field inForm:(id)form inFrame:(id)frame;
- (void)userDidSelectUseKeyboard;
- (void)willNavigateFrame:(id)frame withUnsubmittedForm:(id)form completionHandler:(id)handler;
- (void)willSubmitForm:(id)form inFrame:(id)frame submissionHandler:(id)handler;
- (void)willSubmitFormValues:(id)values userObject:(id)object submissionHandler:(id)handler;
@end

@implementation _SFFormAutoFillController

- (_SFFormAutoFillController)initWithWebView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = _SFFormAutoFillController;
  v8 = [(_SFFormAutoFillController *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_webView, viewCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = dispatch_queue_create("com.apple.mobilesafari.FormTelemetryDataMonitorQueue", 0);
    formTelemetryDataMonitorQueue = v9->_formTelemetryDataMonitorQueue;
    v9->_formTelemetryDataMonitorQueue = v10;

    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __54___SFFormAutoFillController_initWithWebView_delegate___block_invoke;
    v28 = &unk_1E84910E8;
    v12 = v9;
    v29 = v12;
    v13 = viewCopy;
    v30 = v13;
    v14 = _Block_copy(&v25);
    if ([MEMORY[0x1E69C8880] isAutoFillDrivenByUIProcess])
    {
      mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
      v16 = [[_SFInjectedJavaScriptFormAutoFiller alloc] initWithWebView:v13 formAutoFillController:v12 injectionController:mEMORY[0x1E69C9768]];
      autoFiller = v12->_autoFiller;
      v12->_autoFiller = v16;
    }

    else
    {
      v18 = v14[2](v14);
      mEMORY[0x1E69C9768] = v12->_autoFiller;
      v12->_autoFiller = v18;
    }

    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    [mEMORY[0x1E69C8DE0] addObserver:v12];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = +[_SFFormDataController sharedController];
    [defaultCenter addObserver:v12 selector:sel_handleDidSaveAccountWithGeneratedPasswordNotification_ name:*MEMORY[0x1E69E30C8] object:v21];

    v22 = +[_SFFormDataController sharedController];
    [defaultCenter addObserver:v12 selector:sel_handleDidUpdatePasswordForPreviouslySavedAccount_ name:*MEMORY[0x1E69E30D0] object:v22];

    v23 = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(_SFFormAutoFillController *)self invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[_SFFormDataController sharedController];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E30C8] object:v4];

  v5 = +[_SFFormDataController sharedController];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E30D0] object:v5];

  v6.receiver = self;
  v6.super_class = _SFFormAutoFillController;
  [(_SFFormAutoFillController *)&v6 dealloc];
}

- (void)invalidate
{
  if (self->_remoteObjectInterface)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    _remoteObjectRegistry = [WeakRetained _remoteObjectRegistry];
    [_remoteObjectRegistry unregisterExportedObject:self interface:self->_remoteObjectInterface];

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
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  [mEMORY[0x1E69C8DE0] removeObserver:self];
}

- (void)_prefillTimerFired:(id)fired
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

- (void)offerToSaveUnsubmittedFormDataIfNeededInWebView:(id)view fromSameDocumentNavigationOfType:(int64_t)type completionHandler:(id)handler
{
  viewCopy = view;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (type)
  {
    v10 = +[_SFFormDataController sharedController];
    autoFillQuirksManager = [v10 autoFillQuirksManager];

    _committedURL = [viewCopy _committedURL];
    host = [_committedURL host];
    v14 = [autoFillQuirksManager isDomainKnownToDoSameDocumentNavigationInTextEditingCallback:host];

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
    handlerCopy[2](handlerCopy);
  }
}

- (void)insertTextSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SFFormAutocompleteState *)self->_state showAllPasswordsButtonTapped];
  }

  else if (suggestionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_SFFormAutoFillController *)self autoFillTextSuggestion:suggestionCopy];
    }
  }
}

- (void)_fieldFocused:(id)focused inForm:(id)form inFrame:(id)frame inputSession:(id)session
{
  focusedCopy = focused;
  formCopy = form;
  frameCopy = frame;
  sessionCopy = session;
  [(SFFormAutocompleteState *)self->_state invalidate];
  v13 = [[SFFormAutocompleteState alloc] initWithFrame:frameCopy form:formCopy textField:focusedCopy inputSession:sessionCopy autoFillController:self];
  state = self->_state;
  self->_state = v13;

  formInputSession = [sessionCopy formInputSession];
  if ([(SFFormAutocompleteState *)self->_state action]!= 7)
  {
    [(SFFormAutocompleteState *)self->_state updateAutoFillButton];
  }

  if ([MEMORY[0x1E69E30A8] textFieldLooksLikeCreditCardNumericFormField:focusedCopy])
  {
    [formInputSession setForceSecureTextEntry:1];
  }

  else if (![focusedCopy isSecureTextField])
  {
    goto LABEL_7;
  }

  [(_SFFormAutoFillController *)self _didFocusSensitiveFormField:focusedCopy];
LABEL_7:
  if ([focusedCopy looksLikeOneTimeCodeField])
  {
    oneTimeCodeProvider = [(_SFFormAutoFillController *)self oneTimeCodeProvider];
    [oneTimeCodeProvider didFocusOneTimeCodeField];
  }
}

- (void)fetchMetadataForTextField:(id)field inFrame:(id)frame withCompletion:(id)completion
{
  fieldCopy = field;
  frameCopy = frame;
  completionCopy = completion;
  autoFiller = self->_autoFiller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
  [(SFFormAutoFiller *)autoFiller getMetadataForTextField:fieldCopy inFrame:frameCopy atURL:v12 completionHandler:completionCopy];
}

- (void)autoFillFormInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form
{
  fillingCopy = filling;
  filledCopy = filled;
  frameCopy = frame;
  valuesCopy = values;
  focusCopy = focus;
  obscureCopy = obscure;
  v19 = MEMORY[0x1E695DFD8];
  allValues = [valuesCopy allValues];
  v21 = [v19 setWithArray:allValues];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v21];

  action = [(SFFormAutocompleteState *)self->_state action];
  autoFiller = self->_autoFiller;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __137___SFFormAutoFillController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm___block_invoke;
  v28[3] = &unk_1E8491138;
  v28[4] = self;
  v24 = frameCopy;
  v29 = v24;
  LOBYTE(v27) = form;
  [(SFFormAutoFiller *)autoFiller autoFillFormAsynchronouslyInFrame:v24 withValues:valuesCopy setAutoFilled:filledCopy focusFieldAfterFilling:fillingCopy fieldToFocus:focusCopy fieldsToObscure:obscureCopy submitForm:v27 completionHandler:v28];
  if (action == 2 || action == 8)
  {
    lastFilledCreditCardData = self->_lastFilledCreditCardData;
    self->_lastFilledCreditCardData = 0;

    lastFilledCreditCardDataTypes = self->_lastFilledCreditCardDataTypes;
    self->_lastFilledCreditCardDataTypes = 0;
  }
}

- (void)autoFillForm:(int64_t)form inFrame:(id)frame withGeneratedPassword:(id)password
{
  frameCopy = frame;
  passwordCopy = password;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:passwordCopy];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v10];

  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = +[_SFFormDataController sharedController];
  generatedPassword = [v12 generatedPassword];

  if (generatedPassword)
  {
    mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke;
    v24[3] = &unk_1E8491160;
    v25 = v11;
    [mEMORY[0x1E69C8898] updateGeneratedPassword:generatedPassword withPassword:passwordCopy completionHandler:v24];

    WeakRetained = v25;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    webui_URL = [frameCopy webui_URL];
    formCopy = form;
    mEMORY[0x1E69C8898]2 = [MEMORY[0x1E69C8898] sharedStore];
    v18 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:webui_URL];
    webui_privateBrowsingEnabled = [WeakRetained webui_privateBrowsingEnabled];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __72___SFFormAutoFillController_autoFillForm_inFrame_withGeneratedPassword___block_invoke_3;
    v22[3] = &unk_1E8491160;
    v23 = v11;
    [mEMORY[0x1E69C8898]2 addGeneratedPassword:passwordCopy forProtectionSpace:v18 inPrivateBrowsingSession:webui_privateBrowsingEnabled completionHandler:v22];

    form = formCopy;
  }

  v20 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v11, v20);
  self->_didFillStrongPasswordFromStreamlinedAutoFillView = 1;
  [(SFFormAutoFiller *)self->_autoFiller autoFillForm:form inFrame:frameCopy withGeneratedPassword:passwordCopy];
}

- (void)annotateForm:(int64_t)form inFrame:(id)frame withValues:(id)values
{
  frameCopy = frame;
  valuesCopy = values;
  v9 = MEMORY[0x1E695DFD8];
  allValues = [valuesCopy allValues];
  v11 = [v9 setWithArray:allValues];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v11];

  [(SFFormAutoFiller *)self->_autoFiller annotateForm:form inFrame:frameCopy withValues:valuesCopy];
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)frame withValue:(id)value shouldSubmit:(BOOL)submit
{
  submitCopy = submit;
  frameCopy = frame;
  valueCopy = value;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:valueCopy];
  [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v10];

  autoFiller = self->_autoFiller;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85___SFFormAutoFillController_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit___block_invoke;
  v12[3] = &unk_1E84911B0;
  v12[4] = self;
  [(SFFormAutoFiller *)autoFiller autoFillOneTimeCodeFieldsInFrame:frameCopy withValue:valueCopy shouldSubmit:submitCopy completionHandler:v12];
}

- (void)_clearFieldsAndSetFormControlsToNotAutoFilled:(id)filled inFrame:(id)frame completionHandler:(id)handler
{
  handlerCopy = handler;
  self->_isCurrentlyClearing = 1;
  autoFiller = self->_autoFiller;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101___SFFormAutoFillController__clearFieldsAndSetFormControlsToNotAutoFilled_inFrame_completionHandler___block_invoke;
  v11[3] = &unk_1E84911D8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(SFFormAutoFiller *)autoFiller clearFieldsAndSetFormControlsToNotAutoFilled:filled inFrame:frame completionHandler:v11];
}

- (void)willSubmitForm:(id)form inFrame:(id)frame submissionHandler:(id)handler
{
  formCopy = form;
  frameCopy = frame;
  handlerCopy = handler;
  v10 = +[_SFFormDataController sharedController];
  [v10 setLastFilledCreditCardData:self->_lastFilledCreditCardData];
  [v10 setPreviouslyFilledVirtualCardNumbers:self->_previouslyFilledVirtualCardNumbers];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  savedAccountContext = [(_SFFormAutoFillController *)self savedAccountContext];
  v13 = [v10 webView:WeakRetained frame:frameCopy willNavigateFromForm:formCopy inContext:savedAccountContext bySubmitting:1 submissionHandler:handlerCopy];

  if (v13)
  {
    handlerCopy[2](handlerCopy);
  }

  [v10 setLastFilledCreditCardData:0];
  [(_SFFormAutoFillController *)self _removeUniqueIDsOfAutoFilledForm:formCopy];
  [(_SFFormAutoFillController *)self sendEventsForAutoFillTelemetry];
  [(_SFFormAutoFillController *)self _dismissAutoFillInternalFeedbackNoticeImmediately:0];
}

- (WBUFormAutoFillWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (void)suppressSoftwareKeyboardOnWebView:(BOOL)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WeakRetained _setSuppressSoftwareKeyboard:viewCopy];
}

- (void)fieldWillFocusWithInputSession:(id)session
{
  v29 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (self->_isCurrentlyClearing)
  {
    inputSession = [(SFFormAutocompleteState *)self->_state inputSession];
    [inputSession updateWithAdditionalInputSession:sessionCopy];
  }

  else
  {
    if ([(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords isForStreamlinedLogin])
    {
      v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
        focusedControlMetadata = [(_SFFormAutoFillInputSession *)inputSessionForAutomaticPasswords focusedControlMetadata];
        uniqueID = [focusedControlMetadata uniqueID];
        *buf = 134218242;
        v26 = inputSessionForAutomaticPasswords;
        v27 = 2112;
        v28 = uniqueID;
        _os_log_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEFAULT, "%p Field %@ will focus as part of existing streamlined login input session", buf, 0x16u);
      }

      [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords updateWithAdditionalInputSession:sessionCopy];
      v10 = self->_inputSessionForAutomaticPasswords;

      sessionCopy = v10;
    }

    [(_SFFormAutoFillController *)self _restoreInputAssistantItemsIfNecessary];
    v11 = self->_externalCredentialIdentitiesForStreamlinedAutoFill;
    externalCredentialIdentitiesForStreamlinedAutoFill = self->_externalCredentialIdentitiesForStreamlinedAutoFill;
    self->_externalCredentialIdentitiesForStreamlinedAutoFill = 0;

    frameHandle = [(_SFFormAutoFillInputSession *)sessionCopy frameHandle];
    v14 = frameHandle;
    if (frameHandle)
    {
      webui_URL = [frameHandle webui_URL];
      safari_isEligibleToShowNotSecureWarning = [webui_URL safari_isEligibleToShowNotSecureWarning];

      formMetadata = [(_SFFormAutoFillInputSession *)sessionCopy formMetadata];
      if (formMetadata)
      {
        focusedControlMetadata2 = [(_SFFormAutoFillInputSession *)sessionCopy focusedControlMetadata];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __60___SFFormAutoFillController_fieldWillFocusWithInputSession___block_invoke;
        aBlock[3] = &unk_1E8491200;
        aBlock[4] = self;
        v24 = safari_isEligibleToShowNotSecureWarning;
        v21 = v14;
        v22 = sessionCopy;
        v23 = v11;
        v19 = _Block_copy(aBlock);
        v19[2](v19, formMetadata, focusedControlMetadata2);
      }
    }
  }
}

- (void)_passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession:(id)session frameHandle:(id)handle formMetadata:(id)metadata externalCredentialIdentitiesByURL:(id)l
{
  sessionCopy = session;
  handleCopy = handle;
  metadataCopy = metadata;
  lCopy = l;
  type = [metadataCopy type];
  if (![(_SFFormAutoFillController *)self _presentStrongPasswordIntroductionIfNeededWithAutoFillInputSession:sessionCopy]&& ![(_SFFormAutoFillController *)self _presentStreamlinedStrongPasswordInputViewIfNeededWithInputSession:sessionCopy formType:type])
  {
    focusedElementInfo = [sessionCopy focusedElementInfo];
    if ([(_SFFormAutoFillController *)self elementIsBeingFocusedForStreamlinedLogin:focusedElementInfo])
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

    if (type == 3)
    {
      v17 = +[_SFFormDataController sharedController];
      tabIDForAutoFill = [(_SFFormAutoFillController *)self tabIDForAutoFill];
      webui_URL = [handleCopy webui_URL];
      v20 = [v17 canShowSavedAccountHistoryItemInTabWithID:tabIDForAutoFill currentURL:webui_URL];

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
        webui_URL2 = [handleCopy webui_URL];
        v24 = [lCopy objectForKeyedSubscript:webui_URL2];

        state = self->_state;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __160___SFFormAutoFillController__passwordOrUsernameFieldWillFocusForStreamlinedAutoFillWithInputSession_frameHandle_formMetadata_externalCredentialIdentitiesByURL___block_invoke_2;
        v27[3] = &unk_1E8491228;
        v28 = handleCopy;
        v29 = metadataCopy;
        v30 = v24;
        selfCopy = self;
        v32 = sessionCopy;
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
    tabIDForAutoFill = [WeakRetained tabIDForAutoFill];
  }

  else
  {
    tabIDForAutoFill = 0;
  }

  return tabIDForAutoFill;
}

- (BOOL)_presentStreamlinedStrongPasswordInputViewIfNeededWithInputSession:(id)session formType:(unint64_t)type
{
  sessionCopy = session;
  if ([MEMORY[0x1E69C8880] isAutomaticStrongPasswordsEnabled] & 1) == 0 || self->_didCloseStrongPasswordIntroductionView || (objc_msgSend(MEMORY[0x1E69BC7D8], "hasThirdPartyPasswordManagerEnabledAndPasswordsAppDisabledForAutoFill") & 1) != 0 || !objc_msgSend(MEMORY[0x1E69C8880], "isPasswordsAppInstalled") || ((objc_msgSend(MEMORY[0x1E69C8DB8], "sharedFeatureManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "shouldAutoFillPasswordsFromKeychain"), v7, (type & 0xFFFFFFFFFFFFFFFELL) == 4) ? (v9 = v8) : (v9 = 0), (v9 & 1) == 0 || (-[SFFormAutocompleteState textFieldMetadata](self->_state, "textFieldMetadata"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "uniqueID"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(sessionCopy, "formMetadata"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "oldPasswordElementUniqueID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v12, v11, v10, (v14) || self->_didFillStrongPasswordFromStreamlinedAutoFillView))
  {
    v15 = 0;
  }

  else
  {
    frameHandle = [sessionCopy frameHandle];
    webui_URL = [frameHandle webui_URL];

    v19 = +[_SFFormDataController sharedController];
    autoFillQuirksManager = [v19 autoFillQuirksManager];
    passwordGenerationManager = [autoFillQuirksManager passwordGenerationManager];

    v42 = [passwordGenerationManager defaultRequirementsForURL:webui_URL];
    v22 = [passwordGenerationManager passwordGenerationIsDisallowedByRequirements:v42];
    if ((v22 & 1) == 0)
    {
      v40 = passwordGenerationManager;
      v41 = webui_URL;
      v23 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v23, OS_LOG_TYPE_DEFAULT, "Presenting streamlined strong password view in custom input view", buf, 2u);
      }

      v24 = +[_SFFormDataController sharedController];
      formMetadata = [sessionCopy formMetadata];
      frameHandle2 = [sessionCopy frameHandle];
      webui_URL2 = [frameHandle2 webui_URL];
      savedAccountContext = [(_SFFormAutoFillController *)self savedAccountContext];
      v29 = [v24 extractUserNameFromForm:formMetadata atURL:webui_URL2 inContext:savedAccountContext];
      v30 = v29;
      v31 = &stru_1F4FE9E38;
      if (v29)
      {
        v31 = v29;
      }

      v32 = v31;

      v33 = v32;
      v34 = [objc_alloc(MEMORY[0x1E69BC7E8]) initForSafariWithURL:v41 userName:v32];
      passwordGenerationManager = v40;
      v35 = [[_SFAutoFillInputView alloc] initWithStreamlinedStrongPasswordViewController:v34];
      autoFillInputView = self->_autoFillInputView;
      self->_autoFillInputView = v35;

      [(_SFAutoFillInputView *)self->_autoFillInputView setDelegate:self];
      v37 = self->_autoFillInputView;
      formInputSession = [sessionCopy formInputSession];
      [formInputSession setCustomInputView:v37];

      formInputSession2 = [sessionCopy formInputSession];
      [formInputSession2 setAccessoryViewShouldNotShow:1];

      [(_SFFormAutoFillController *)self _hideInputAssistantItemsIfNecessary];
      webui_URL = v41;
    }

    v15 = v22 ^ 1;
  }

  return v15;
}

- (BOOL)_presentStrongPasswordIntroductionIfNeededWithAutoFillInputSession:(id)session
{
  v26 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  formMetadata = [sessionCopy formMetadata];
  type = [formMetadata type];

  if (type >= 4 && (type - 4 >= 2 || [MEMORY[0x1E69BC7D8] shouldShowLoginIntroduction]))
  {
    v8 = +[_SFFormDataController sharedController];
    autoFillQuirksManager = [v8 autoFillQuirksManager];
    passwordGenerationManager = [autoFillQuirksManager passwordGenerationManager];

    frameHandle = [sessionCopy frameHandle];
    webui_URL = [frameHandle webui_URL];
    v13 = [passwordGenerationManager defaultRequirementsForURL:webui_URL];

    v14 = [passwordGenerationManager passwordGenerationIsDisallowedByRequirements:v13];
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
      formInputSession = [sessionCopy formInputSession];
      [formInputSession setCustomInputView:v21];

      formInputSession2 = [sessionCopy formInputSession];
      [formInputSession2 setAccessoryViewShouldNotShow:1];

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
  firstResponder = [WeakRetained firstResponder];

  [firstResponder reloadInputViews];
}

- (void)hideInputAccessoryView
{
  inputSession = [(SFFormAutocompleteState *)self->_state inputSession];
  formInputSession = [inputSession formInputSession];
  [formInputSession setAccessoryViewShouldNotShow:1];

  [(_SFFormAutoFillController *)self _hideInputAssistantItemsIfNecessary];
}

- (void)_hideInputAssistantItemsIfNecessary
{
  if (!self->_preservedLeadingBarButtonGroups && !self->_preservedTrailingBarButtonGroups)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    firstResponder = [WeakRetained firstResponder];

    inputAssistantItem = [firstResponder inputAssistantItem];
    leadingBarButtonGroups = [inputAssistantItem leadingBarButtonGroups];
    preservedLeadingBarButtonGroups = self->_preservedLeadingBarButtonGroups;
    self->_preservedLeadingBarButtonGroups = leadingBarButtonGroups;

    trailingBarButtonGroups = [inputAssistantItem trailingBarButtonGroups];
    preservedTrailingBarButtonGroups = self->_preservedTrailingBarButtonGroups;
    self->_preservedTrailingBarButtonGroups = trailingBarButtonGroups;

    [inputAssistantItem setLeadingBarButtonGroups:MEMORY[0x1E695E0F0]];
    [inputAssistantItem setTrailingBarButtonGroups:MEMORY[0x1E695E0F0]];
  }
}

- (void)_restoreInputAssistantItemsIfNecessary
{
  if (self->_preservedLeadingBarButtonGroups || self->_preservedTrailingBarButtonGroups)
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    firstResponder = [WeakRetained firstResponder];

    inputAssistantItem = [firstResponder inputAssistantItem];
    [inputAssistantItem setLeadingBarButtonGroups:self->_preservedLeadingBarButtonGroups];
    [inputAssistantItem setTrailingBarButtonGroups:self->_preservedTrailingBarButtonGroups];
    preservedLeadingBarButtonGroups = self->_preservedLeadingBarButtonGroups;
    self->_preservedLeadingBarButtonGroups = 0;

    preservedTrailingBarButtonGroups = self->_preservedTrailingBarButtonGroups;
    self->_preservedTrailingBarButtonGroups = 0;

    [firstResponder reloadInputViews];
  }
}

- (void)fieldFocusedWithInputSession:(id)session
{
  sessionCopy = session;
  v4 = [[_SFFormAutoFillInputSession alloc] initWithFormInputSession:sessionCopy];
  [(_SFFormAutoFillController *)self _fieldFocusedWithInputSession:v4];
}

- (void)_fieldFocusedWithInputSession:(id)session
{
  sessionCopy = session;
  [(_SFFormAutoFillController *)self fieldWillFocusWithInputSession:?];
  [(_SFFormAutoFillController *)self fieldDidFocus];
}

- (void)willSubmitFormValues:(id)values userObject:(id)object submissionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
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
        [(_SFFormAutoFillController *)self willSubmitForm:v13 inFrame:v10 submissionHandler:handlerCopy];
      }

      else
      {
        handlerCopy[2](handlerCopy);
      }
    }

    else
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)domains webFrameIdentifier:(id)identifier completion:(id)completion
{
  domainsCopy = domains;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    getEnabledExtensionsSynchronously = [mEMORY[0x1E69C8DE0] getEnabledExtensionsSynchronously];
    v12 = [getEnabledExtensionsSynchronously count];

    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69C8818]);
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __108___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_webFrameIdentifier_completion___block_invoke;
      v16[3] = &unk_1E8491278;
      v17 = domainsCopy;
      v18 = completionCopy;
      [v13 getPasskeyAssertionRequestParametersForApplicationIdentifier:bundleIdentifier completionHandler:v16];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0]);
    }
  }
}

+ (void)_getExternalLoginCredentialSuggestionsForDomains:(id)domains pageURL:(id)l webFrameIdentifier:(id)identifier completion:(id)completion
{
  domainsCopy = domains;
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = completionCopy;
  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __116___SFFormAutoFillController__getExternalLoginCredentialSuggestionsForDomains_pageURL_webFrameIdentifier_completion___block_invoke;
    v15[3] = &unk_1E84912A0;
    v17 = completionCopy;
    selfCopy = self;
    v16 = lCopy;
    [self _getExternalLoginCredentialSuggestionsForDomains:domainsCopy webFrameIdentifier:identifierCopy completion:v15];
  }
}

+ (id)_filterAndSortCredentialIdentities:(id)identities pageURL:(id)l exactMatchesOnly:(BOOL)only
{
  v37 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  host = [l host];
  lowercaseString = [host lowercaseString];

  if (lowercaseString)
  {
    safari_highLevelDomainFromHost = [lowercaseString safari_highLevelDomainFromHost];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", lowercaseString];
    v29 = [v8 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = identitiesCopy;
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
          site = [v13 site];
          if (([site isEqualToString:lowercaseString] & 1) != 0 || objc_msgSend(v13, "type") == 2)
          {
            [array addObject:v13];
          }

          else
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@", site];
            v16 = [v15 safari_simplifiedUserVisibleURLStringWithSimplifications:330 forDisplayOnly:0 simplifiedStringOffset:0];

            v17 = [v16 isEqualToString:v29];
            v18 = array2;
            if ((v17 & 1) != 0 || ([site safari_highLevelDomainFromHost], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(safari_highLevelDomainFromHost, "isEqualToString:", v19), v19, v18 = array3, v20))
            {
              [v18 addObject:v13];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    [array sortUsingComparator:&__block_literal_global_14];
    [array2 sortUsingComparator:&__block_literal_global_14];
    [array3 sortUsingComparator:&__block_literal_global_14];
    if ([array2 count])
    {
      if ([array count])
      {
        v21 = [array2 arrayByAddingObjectsFromArray:array3];
        v22 = [v21 mutableCopy];

        array3 = v22;
      }

      else
      {
        v21 = array;
        array = array2;
      }
    }

    if (only)
    {
      v23 = 0;
    }

    else
    {
      [array arrayByAddingObjectsFromArray:array3];
      array = v23 = array;
    }
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
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

- (void)didCollectURLsForPreFilling:(id)filling atURL:(id)l inFrame:(id)frame
{
  fillingCopy = filling;
  lCopy = l;
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];

  if ([lCopy isEqual:v12])
  {
    testController = [(_SFFormAutoFillController *)self testController];
    if ([testController autoFillControllerShouldCollectFormMetadataForTesting:self])
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
      v21 = [fillingCopy safari_mapObjectsUsingBlock:&__block_literal_global_206];
      v14 = objc_opt_class();
      webFrameIdentifier = [frameCopy webFrameIdentifier];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __71___SFFormAutoFillController_didCollectURLsForPreFilling_atURL_inFrame___block_invoke_2;
      v36[3] = &unk_1E8491330;
      objc_copyWeak(&v40, &location);
      v16 = fillingCopy;
      v37 = v16;
      v17 = lCopy;
      v38 = v17;
      v39 = v42;
      [v14 _getExternalLoginCredentialSuggestionsForDomains:v21 webFrameIdentifier:webFrameIdentifier completion:v36];

      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x3032000000;
      v34[3] = __Block_byref_object_copy__0;
      v34[4] = __Block_byref_object_dispose__0;
      objectEnumerator = [v16 objectEnumerator];
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
      v24 = frameCopy;
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
  autoFillAuthenticationContext = [v2 autoFillAuthenticationContext];

  return autoFillAuthenticationContext;
}

- (void)_authenticateForAutoFillForHighLevelDomain:(id)domain withCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  authenticationContext = [(_SFFormAutoFillController *)self authenticationContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87___SFFormAutoFillController__authenticateForAutoFillForHighLevelDomain_withCompletion___block_invoke;
  v8[3] = &unk_1E84913F8;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [authenticationContext authenticateForClient:self userInitiated:1 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)authenticateIfNeededForAutoFillAuthenticationType:(int64_t)type user:(id)user shouldForceAuthentication:(BOOL)authentication withCompletion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  self->_authenticationType = type;
  if (type == 6)
  {
    authenticationRequiredToAutoFill = 0;
    if (authentication)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = +[_SFManagedFeatureObserver sharedObserver];
    authenticationRequiredToAutoFill = [v12 authenticationRequiredToAutoFill];

    if (authentication)
    {
      goto LABEL_8;
    }
  }

  if (type != 4 && (authenticationRequiredToAutoFill & 1) == 0)
  {
    completionCopy[2](completionCopy, 1, 0);
    goto LABEL_19;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((type == 5 || !type) && userCopy && (objc_opt_respondsToSelector() & 1) != 0 && (+[_SFFormDataController sharedController](_SFFormDataController, "sharedController"), v14 = objc_claimAutoreleasedReturnValue(), [WeakRetained tabIDForAutoFill], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(WeakRetained, "formAutoFillControllerURLForFormAutoFill:", self), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "canApplyAutoFillGracePeriodForUsername:inTabWithID:currentURL:", userCopy, v15, v16), v16, v15, v14, v17))
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v18 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
    host = [v18 host];
    safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained formAutoFillControllerGetAuthenticationForAutoFill:self completion:completionCopy];
    }

    else
    {
      [(_SFFormAutoFillController *)self _authenticateForAutoFillForHighLevelDomain:safari_highLevelDomainFromHost withCompletion:completionCopy];
    }
  }

LABEL_19:
}

- (SFAppAutoFillOneTimeCodeProvider)oneTimeCodeProvider
{
  v2 = +[_SFFormDataController sharedController];
  oneTimeCodeProvider = [v2 oneTimeCodeProvider];

  return oneTimeCodeProvider;
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
      defaultContext = v4;
    }

    else
    {
      defaultContext = [MEMORY[0x1E69C8A20] defaultContext];
    }

    defaultContext2 = defaultContext;
  }

  else
  {
    defaultContext2 = [MEMORY[0x1E69C8A20] defaultContext];
  }

  return defaultContext2;
}

- (id)_websiteForAuthenticationPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
  host = [v4 host];

  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  v7 = safari_highLevelDomainFromHost;
  if (safari_highLevelDomainFromHost)
  {
    v8 = safari_highLevelDomainFromHost;
  }

  else
  {
    v8 = host;
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

- (id)authenticationMessageForContext:(id)context
{
  contextCopy = context;
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
      _websiteForAuthenticationPrompt = [(_SFFormAutoFillController *)self _websiteForAuthenticationPrompt];
      v7 = [SFAutoFillAuthenticationUtilities customAuthenticationTitleForLoggingInWithSavedAccountOnWebsite:_websiteForAuthenticationPrompt];

      goto LABEL_11;
    }

    v8 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingSavedPassword];
  }

  v7 = v8;
LABEL_11:

  return v7;
}

- (id)passcodePromptForContext:(id)context
{
  contextCopy = context;
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
      _websiteForAuthenticationPrompt = [(_SFFormAutoFillController *)self _websiteForAuthenticationPrompt];
      v7 = [SFAutoFillAuthenticationUtilities passcodePromptForLoggingInWithSavedAccountOnWebsite:_websiteForAuthenticationPrompt];

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

  inputSession = [(SFFormAutocompleteState *)self->_state inputSession];
  formInputSession = [inputSession formInputSession];
  customInputView = [formInputSession customInputView];
  autoFillInputView = self->_autoFillInputView;

  if (customInputView == autoFillInputView)
  {
    return 1;
  }

  if (!self->_autoFillInputView)
  {
    return 0;
  }

LABEL_5:
  inputSession2 = [(SFFormAutocompleteState *)self->_state inputSession];
  formInputSession2 = [inputSession2 formInputSession];
  customInputView2 = [formInputSession2 customInputView];
  v10 = customInputView2 == self->_autoFillInputView;

  return v10;
}

- (void)_metadataProviderForFramesHandlesToFormsDictionary:(id)dictionary completionHandler:(id)handler
{
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  v6 = [[SFFormsMetadataProvider alloc] initWithFrameHandleToFormsDictionary:dictionaryCopy];
  handlerCopy[2](handlerCopy, v6);
}

- (void)didCollectFormMetadataForPreFilling:(id)filling atURL:(id)l
{
  fillingCopy = filling;
  lCopy = l;
  testController = [(_SFFormAutoFillController *)self testController];
  if ([testController autoFillControllerShouldCollectFormMetadataForTesting:self])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __71___SFFormAutoFillController_didCollectFormMetadataForPreFilling_atURL___block_invoke;
    v18[3] = &unk_1E8491420;
    v19 = testController;
    selfCopy = self;
    v21 = lCopy;
    [(_SFFormAutoFillController *)self _metadataProviderForFramesHandlesToFormsDictionary:fillingCopy completionHandler:v18];

    WeakRetained = v19;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
    v11 = [lCopy isEqual:v10];

    if (v11 & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v12 = +[_SFFormDataController sharedController];
      autoFillQuirksManager = [v12 autoFillQuirksManager];
      v14 = [autoFillQuirksManager isStreamlinedLoginDisallowedOnURL:lCopy];

      if ((v14 & 1) == 0 && [v12 shouldAllowPasswordAutoFillOnURL:lCopy allowExternalCredentials:1] && (objc_msgSend(WeakRetained, "formAutoFillControllerShouldDisableStreamlinedLogin:", self) & 1) == 0)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __71___SFFormAutoFillController_didCollectFormMetadataForPreFilling_atURL___block_invoke_2;
        v15[3] = &unk_1E8491448;
        v16 = v12;
        selfCopy2 = self;
        [(_SFFormAutoFillController *)self _metadataProviderForFramesHandlesToFormsDictionary:fillingCopy completionHandler:v15];
      }
    }
  }
}

- (void)didCollectFormMetadataForPageLevelAutoFill:(id)fill atURL:(id)l
{
  fillCopy = fill;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained formAutoFillControllerURLForFormAutoFill:self];
  v10 = [lCopy isEqual:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78___SFFormAutoFillController_didCollectFormMetadataForPageLevelAutoFill_atURL___block_invoke;
    v11[3] = &unk_1E8491470;
    v11[4] = self;
    [(_SFFormAutoFillController *)self _metadataProviderForFramesHandlesToFormsDictionary:fillCopy completionHandler:v11];
  }
}

- (void)textDidChangeInTextField:(id)field inForm:(id)form inFrame:(id)frame
{
  fieldCopy = field;
  formCopy = form;
  frameCopy = frame;
  value = [fieldCopy value];
  [value length];

  v14 = MEMORY[0x1E69E9820];
  v12 = formCopy;
  v13 = fieldCopy;
  WBSDispatchAsyncAndReleaseOnMainQueue();
  if (-[NSMutableIndexSet containsIndex:](self->_uniqueIDsOfFormsThatWereAutoFilled, "containsIndex:", [v12 uniqueID]))
  {
    [(_SFFormAutoFillController *)self _presentAutoFillInternalFeedbackActivityNotificationIfNeeded];
  }

  [(_SFFormAutoFillController *)self didUpdateUnsubmittedForm:v12 inFrame:frameCopy];
  [(SFFormAutocompleteState *)self->_state textDidChangeInFrame:frameCopy form:v12 textField:v13];
}

- (void)didFillGeneratedPasswordInForm:(id)form inFrame:(id)frame
{
  formCopy = form;
  frameCopy = frame;
  v11 = MEMORY[0x1E69E9820];
  v12 = formCopy;
  WBSDispatchAsyncAndReleaseOnMainQueue();
  [(_SFFormAutoFillController *)self didUpdateUnsubmittedForm:v12 inFrame:frameCopy, v11, 3221225472, __68___SFFormAutoFillController_didFillGeneratedPasswordInForm_inFrame___block_invoke, &unk_1E848F9B0, self];
  v8 = +[_SFFormDataController sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  savedAccountContext = [(_SFFormAutoFillController *)self savedAccountContext];
  [v8 didFillFormWithGeneratedPassword:v12 inWebView:WeakRetained frame:frameCopy context:savedAccountContext];
}

- (void)willNavigateFrame:(id)frame withUnsubmittedForm:(id)form completionHandler:(id)handler
{
  frameCopy = frame;
  formCopy = form;
  handlerCopy = handler;
  self->_attemptedOfferingStreamlinedLogin = 0;
  v10 = +[_SFFormDataController sharedController];
  [v10 setLastFilledCreditCardData:self->_lastFilledCreditCardData];
  [v10 setPreviouslyFilledVirtualCardNumbers:self->_previouslyFilledVirtualCardNumbers];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  savedAccountContext = [(_SFFormAutoFillController *)self savedAccountContext];
  v13 = [v10 webView:WeakRetained frame:frameCopy willNavigateFromForm:formCopy inContext:savedAccountContext bySubmitting:0 submissionHandler:handlerCopy];

  if (v13)
  {
    handlerCopy[2](handlerCopy);
  }

  *&self->_didFillStrongPasswordFromStreamlinedAutoFillView = 0;
  self->_shouldSuggestToCustomizeStrongPassword = 0;
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    v14 = +[_SFFormDataController sharedController];
    generatedPassword = [v14 generatedPassword];

    if (generatedPassword)
    {
      v16 = +[_SFFormDataController sharedController];
      [v16 setGeneratedPassword:0];
    }
  }

  [(_SFFormAutoFillController *)self _removeUniqueIDsOfAutoFilledForm:formCopy];
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

- (void)didUpdateUnsubmittedForm:(id)form inFrame:(id)frame
{
  formCopy = form;
  frameCopy = frame;
  unsubmittedForm = self->_unsubmittedForm;
  self->_unsubmittedForm = formCopy;
  v10 = formCopy;

  unsubmittedFormFrame = self->_unsubmittedFormFrame;
  self->_unsubmittedFormFrame = frameCopy;
}

- (void)_updateFormTelemetryDataMonitorWithFormMetadata:(id)metadata textFieldMetadata:(id)fieldMetadata textFieldValueLength:(unint64_t)length
{
  metadataCopy = metadata;
  fieldMetadataCopy = fieldMetadata;
  [(_SFFormAutoFillController *)self _createFormTelemetryDataMonitorIfNeeded];
  [(WBSFormTelemetryDataMonitor *)self->_formTelemetryDataMonitor updateFormTelemetryWithFormMetadata:metadataCopy textFieldMetadata:fieldMetadataCopy textFieldValueLength:length];
}

- (void)reportAutoFillOfferedType:(unint64_t)type forTextFieldWithID:(id)d forFormMetadata:(id)metadata
{
  dCopy = d;
  metadataCopy = metadata;
  v7 = metadataCopy;
  v8 = dCopy;
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

- (void)setUpFormTelemetryDataMonitorWithWebpageLocale:(id)locale
{
  localeCopy = locale;
  v3 = localeCopy;
  WBSDispatchAsyncAndReleaseOnMainQueue();
}

- (void)_addUniqueIDsOfAutoFilledForm:(id)form
{
  formCopy = form;
  uniqueID = [formCopy uniqueID];
  uniqueIDsOfFormsThatWereAutoFilled = self->_uniqueIDsOfFormsThatWereAutoFilled;
  if (uniqueIDsOfFormsThatWereAutoFilled)
  {
    [(NSMutableIndexSet *)uniqueIDsOfFormsThatWereAutoFilled addIndex:uniqueID];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD50] indexSetWithIndex:uniqueID];
    v7 = self->_uniqueIDsOfFormsThatWereAutoFilled;
    self->_uniqueIDsOfFormsThatWereAutoFilled = v6;
  }
}

- (void)_removeUniqueIDsOfAutoFilledForm:(id)form
{
  formCopy = form;
  -[NSMutableIndexSet removeIndex:](self->_uniqueIDsOfFormsThatWereAutoFilled, "removeIndex:", [formCopy uniqueID]);
}

- (void)autoFilledField:(id)field inForm:(id)form
{
  fieldCopy = field;
  formCopy = form;
  value = [fieldCopy value];
  [value length];

  v8 = formCopy;
  v9 = fieldCopy;
  WBSDispatchAsyncAndReleaseOnMainQueue();
}

- (void)_autoFillDidFinishWithUpdatedFormMetadata:(id)metadata inFrame:(id)frame shouldSubmit:(BOOL)submit
{
  submitCopy = submit;
  metadataCopy = metadata;
  frameCopy = frame;
  [(_SFFormAutoFillController *)self _addUniqueIDsOfAutoFilledForm:metadataCopy];
  stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill;
  if (stateForPageLevelAutoFill)
  {
    if (!submitCopy && (v11 = -[SFFormAutocompleteState action](stateForPageLevelAutoFill, "action"), stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill, v11) && (-[SFFormAutocompleteState multiRoundAutoFillManager](stateForPageLevelAutoFill, "multiRoundAutoFillManager"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 shouldAttemptFollowUpAutoFillInFormWithMetadata:metadataCopy requestType:0], v12, stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill, v13))
    {
      multiRoundAutoFillManager = [(SFFormAutocompleteState *)stateForPageLevelAutoFill multiRoundAutoFillManager];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __92___SFFormAutoFillController__autoFillDidFinishWithUpdatedFormMetadata_inFrame_shouldSubmit___block_invoke;
      v19[3] = &unk_1E8490658;
      v19[4] = self;
      [multiRoundAutoFillManager dispatchFollowUpAutoFillOfFormWithMetdata:metadataCopy autoFillBlock:v19];
    }

    else
    {
      [(SFFormAutocompleteState *)stateForPageLevelAutoFill invalidate];
      v15 = self->_stateForPageLevelAutoFill;
      self->_stateForPageLevelAutoFill = 0;
    }
  }

  if ([metadataCopy type] == 4)
  {
    v16 = +[_SFFormDataController sharedController];
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    savedAccountContext = [(_SFFormAutoFillController *)self savedAccountContext];
    [v16 textDidChangeInForm:metadataCopy inWebView:WeakRetained frame:frameCopy context:savedAccountContext];
  }

  else if ([metadataCopy type] == 3 || objc_msgSend(metadataCopy, "type") == 5 || -[SFFormAutocompleteState currentControlCanInitiateFillingForRelatedCreditCardFields](self->_state, "currentControlCanInitiateFillingForRelatedCreditCardFields"))
  {
    [(SFFormAutocompleteState *)self->_state updateCachedFormMetadataAfterFilling:metadataCopy];
    [(SFFormAutocompleteState *)self->_state updateSuggestions];
    if ([(SFFormAutocompleteState *)self->_state action]!= 3 && [(SFFormAutocompleteState *)self->_state action]!= 6 && [(SFFormAutocompleteState *)self->_state action]!= 4 && [(SFFormAutocompleteState *)self->_state action]!= 5)
    {
      [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:submitCopy];
    }
  }
}

- (void)_didFillOneTimeCode:(id)code shouldSubmit:(BOOL)submit shouldConsumeCode:(BOOL)consumeCode
{
  submitCopy = submit;
  codeCopy = code;
  [SFFormAutocompleteState didFillOneTimeCode:"didFillOneTimeCode:shouldConsumeCode:" shouldConsumeCode:?];
  [(_SFFormAutoFillController *)self _dismissKeyboardAndSimulateCarriageReturnKeyEvents:submitCopy];
}

- (void)didCompleteWithSavedAccount:(id)account
{
  accountCopy = account;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_loadWeakRetained(&self->_webView);
    v6 = +[_SFFormDataController sharedController];
    user = [accountCopy user];
    tabIDForAutoFill = [WeakRetained tabIDForAutoFill];
    v9 = [v5 URL];
    webui_privateBrowsingEnabled = [v5 webui_privateBrowsingEnabled];
    [v6 didFillPasswordForUsername:user fromProviderWithBundleIdentifier:*MEMORY[0x1E69C8CC0] inTabWithID:tabIDForAutoFill currentURL:v9 isPrivate:webui_privateBrowsingEnabled formMetadata:self->_unsubmittedForm requester:0];
  }
}

- (void)_dismissKeyboardAndSimulateCarriageReturnKeyEvents:(BOOL)events
{
  eventsCopy = events;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  LOBYTE(eventsCopy) = [WeakRetained _sf_endEditingAndSimulateCarriageReturnKeyEvents:eventsCopy];

  if ((eventsCopy & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_SFFormAutoFillController _dismissKeyboardAndSimulateCarriageReturnKeyEvents:v5];
    }
  }
}

- (void)didRemoveAutomaticStrongPasswordInForm:(id)form inputSessionUserObject:(id)object inFrame:(id)frame
{
  formCopy = form;
  objectCopy = object;
  frameCopy = frame;
  v18 = MEMORY[0x1E69E9820];
  v11 = formCopy;
  WBSDispatchAsyncAndReleaseOnMainQueue();
  [(_SFFormAutoFillController *)self didUpdateUnsubmittedForm:v11 inFrame:frameCopy, v18, 3221225472, __99___SFFormAutoFillController_didRemoveAutomaticStrongPasswordInForm_inputSessionUserObject_inFrame___block_invoke, &unk_1E848F9B0, self];
  v12 = self->_inputSessionForAutomaticPasswords;
  inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
  self->_inputSessionForAutomaticPasswords = 0;

  v14 = +[_SFFormDataController sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  savedAccountContext = [(_SFFormAutoFillController *)self savedAccountContext];
  [v14 textDidChangeInForm:v11 inWebView:WeakRetained frame:frameCopy context:savedAccountContext];

  if (objectCopy && v12)
  {
    v17 = [(_SFFormAutoFillInputSession *)v12 autoFillInputSessionByReplacingInputSessionUserObject:objectCopy];

    v12 = v17;
    [(_SFFormAutoFillController *)self _fieldFocusedWithInputSession:v17];
  }
}

- (void)_removeAutomaticPasswordButtonInitiatedByUser:(BOOL)user removeVisualTreatmentOnly:(BOOL)only
{
  if (self->_frameHandleForAutomaticPasswords)
  {
    autoFiller = self->_autoFiller;
    if (only)
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

    if (!user)
    {
      inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
      self->_inputSessionForAutomaticPasswords = 0;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_SFAutomaticPasswordDismissedByUser" object:self];
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

- (id)automaticPasswordForPasswordField:(id)field inForm:(id)form isFrame:(id)frame
{
  formCopy = form;
  frameCopy = frame;
  maxLength = [field maxLength];
  passwordRequirements = [formCopy passwordRequirements];
  v11 = +[_SFFormDataController sharedController];
  webui_URL = [frameCopy webui_URL];
  v13 = [v11 autoGeneratedPasswordForURL:webui_URL respectingPasswordRequirements:passwordRequirements maxLength:maxLength];

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
    generated15CharacterAlphanumericPassword = [v5 generated15CharacterAlphanumericPassword];
    v7 = self->_alphanumericStrongPassword;
    self->_alphanumericStrongPassword = generated15CharacterAlphanumericPassword;

    v4 = self->_alphanumericStrongPassword;
  }

  return v4;
}

- (void)replaceCurrentPasswordWithPassword:(id)password
{
  passwordCopy = password;
  if (passwordCopy)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObject:passwordCopy];
    [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v5];
  }

  if (([(NSString *)self->_currentStrongPassword isEqual:passwordCopy]& 1) == 0)
  {
    autoFiller = self->_autoFiller;
    frameHandle = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords frameHandle];
    [(SFFormAutoFiller *)autoFiller removeAutomaticPasswordVisualTreatmentInFrame:frameHandle passwordControlUniqueIDs:self->_uniqueIDsOfFocusedAndRelatedControls];

    v8 = self->_autoFiller;
    frameHandle2 = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords frameHandle];
    formMetadata = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords formMetadata];
    uniqueID = [formMetadata uniqueID];
    uniqueIDOfFocusedPasswordElementWithAutomaticPassword = self->_uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
    uniqueIDsOfFocusedAndRelatedControls = self->_uniqueIDsOfFocusedAndRelatedControls;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke;
    v33[3] = &unk_1E84904D0;
    v33[4] = self;
    [(SFFormAutoFiller *)v8 substitutePasswordElementsWithAutomaticPasswordElementsInFrame:frameHandle2 formID:uniqueID focusedPasswordControlUniqueID:uniqueIDOfFocusedPasswordElementWithAutomaticPassword passwordControlUniqueIDs:uniqueIDsOfFocusedAndRelatedControls automaticPassword:passwordCopy blurAfterSubstitution:0 completionHandler:v33];

    v14 = +[_SFFormDataController sharedController];
    generatedPassword = [v14 generatedPassword];

    if (generatedPassword)
    {
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__0;
      v31 = __Block_byref_object_dispose__0;
      v32 = 0;
      mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __64___SFFormAutoFillController_replaceCurrentPasswordWithPassword___block_invoke_3;
      v24[3] = &unk_1E84914C0;
      v26 = &v27;
      v18 = v16;
      v25 = v18;
      [mEMORY[0x1E69C8898] updateGeneratedPassword:generatedPassword withPassword:passwordCopy completionHandler:v24];

      v19 = dispatch_time(0, 1000000000);
      dispatch_group_wait(v18, v19);
      v20 = v28[5];
      v21 = +[_SFFormDataController sharedController];
      [v21 setGeneratedPassword:v20];

      _Block_object_dispose(&v27, 8);
    }

    v22 = [passwordCopy copy];
    currentStrongPassword = self->_currentStrongPassword;
    self->_currentStrongPassword = v22;
  }
}

- (void)makePasswordFields:(id)fields viewable:(BOOL)viewable
{
  viewableCopy = viewable;
  fieldsCopy = fields;
  v7 = fieldsCopy;
  if (self->_frameHandleForAutomaticPasswords)
  {
    if (![(NSArray *)fieldsCopy count])
    {
      v8 = self->_uniqueIDsOfFocusedAndRelatedControls;

      v7 = v8;
    }

    if ([(NSArray *)v7 count])
    {
      if (viewableCopy)
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

      [(SFFormAutoFiller *)self->_autoFiller setStrongPasswordElementViewableIfAppropriate:viewableCopy frame:self->_frameHandleForAutomaticPasswords passwordControlUniqueIDs:v9];
      if (([MEMORY[0x1E69C8880] isPasswordsAppInstalled] & 1) == 0)
      {
        v10 = +[_SFFormDataController sharedController];
        generatedPassword = [v10 generatedPassword];

        if (generatedPassword)
        {
          mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
          [mEMORY[0x1E69C8898] removeGeneratedPassword:generatedPassword completionHandler:0];

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
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setString:self->_currentStrongPassword];
}

- (void)beginAutomaticPasswordInteractionWithInputSession:(id)session generatedPassword:(id)password
{
  sessionCopy = session;
  passwordCopy = password;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained formAutoFillControllerUserChoseToUseGeneratedPassword:self];
  }

  lastFilledCreditCardData = self->_lastFilledCreditCardData;
  self->_lastFilledCreditCardData = 0;

  lastFilledCreditCardDataTypes = self->_lastFilledCreditCardDataTypes;
  self->_lastFilledCreditCardDataTypes = 0;

  v10 = [(_SFFormAutoFillController *)self _beginAutomaticPasswordInteractionWithInputSession:sessionCopy generatedPassword:passwordCopy ignorePreviousDecision:1];
}

- (id)beginAutomaticPasswordInteractionWithInputSession:(id)session
{
  v3 = [(_SFFormAutoFillController *)self _beginAutomaticPasswordInteractionWithInputSession:session generatedPassword:0 ignorePreviousDecision:0];

  return v3;
}

- (id)_beginAutomaticPasswordInteractionWithInputSession:(id)session generatedPassword:(id)password ignorePreviousDecision:(BOOL)decision
{
  decisionCopy = decision;
  v31 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  passwordCopy = password;
  if ([(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords isForStreamlinedLogin])
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      inputSessionForAutomaticPasswords = self->_inputSessionForAutomaticPasswords;
      focusedControlMetadata = [(_SFFormAutoFillInputSession *)inputSessionForAutomaticPasswords focusedControlMetadata];
      uniqueID = [focusedControlMetadata uniqueID];
      v27 = 134218242;
      v28 = inputSessionForAutomaticPasswords;
      v29 = 2112;
      v30 = uniqueID;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEFAULT, "%p Beginning Automatic Strong Password interaction for Streamlined Login input session in control %@", &v27, 0x16u);
    }

    [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords updateWithAdditionalInputSession:sessionCopy];
    v14 = self->_inputSessionForAutomaticPasswords;

    sessionCopy = v14;
  }

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled] && (!objc_msgSend(MEMORY[0x1E69C8880], "isAutomaticStrongPasswordsEnabled") || self->_didCloseStrongPasswordIntroductionView) || objc_msgSend(MEMORY[0x1E69C8880], "hasInternalContent") && (objc_msgSend(MEMORY[0x1E695E000], "safari_browserDefaults"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLForKey:", @"SFDebugEnableAutomaticStrongPasswords"), v15, (v16 & 1) != 0) || (-[_SFFormAutoFillInputSession focusedElementInfo](sessionCopy, "focusedElementInfo"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "type") == 3, v17, !v18))
  {
    v25 = 0;
  }

  else
  {
    frameHandle = [(_SFFormAutoFillInputSession *)sessionCopy frameHandle];
    if (frameHandle)
    {
      formMetadata = [(_SFFormAutoFillInputSession *)sessionCopy formMetadata];
      if (formMetadata)
      {
        focusedControlMetadata2 = [(_SFFormAutoFillInputSession *)sessionCopy focusedControlMetadata];
        if ([focusedControlMetadata2 isSecureTextField])
        {
          v22 = +[_SFFormDataController sharedController];
          v23 = [v22 isPasswordFieldForUserCredentialsWithMetadata:focusedControlMetadata2 formMetadata:formMetadata];

          if (v23)
          {
            v24 = focusedControlMetadata2;
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

        v25 = [(_SFFormAutoFillController *)self _beginAutomaticPasswordInteractionWithPasswordFieldMetadata:v24 formMetadata:formMetadata frame:frameHandle inputSession:sessionCopy generatedPassword:passwordCopy ignorePreviousDecision:decisionCopy];
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

- (id)_beginAutomaticPasswordInteractionWithPasswordFieldMetadata:(id)metadata formMetadata:(id)formMetadata frame:(id)frame inputSession:(id)session generatedPassword:(id)password ignorePreviousDecision:(BOOL)decision
{
  decisionCopy = decision;
  metadataCopy = metadata;
  formMetadataCopy = formMetadata;
  frameCopy = frame;
  sessionCopy = session;
  passwordCopy = password;
  if (metadataCopy)
  {
    v41 = passwordCopy;
    v19 = +[_SFFormDataController sharedController];
    v50[0] = 0;
    if ([v19 textFieldIsEligibleForAutomaticStrongPassword:metadataCopy form:formMetadataCopy ignorePreviousDecision:decisionCopy textFieldCurrentlyContainsStrongPassword:v50])
    {
      uniqueID = [metadataCopy uniqueID];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __162___SFFormAutoFillController__beginAutomaticPasswordInteractionWithPasswordFieldMetadata_formMetadata_frame_inputSession_generatedPassword_ignorePreviousDecision___block_invoke;
      aBlock[3] = &unk_1E8491510;
      aBlock[4] = self;
      v38 = _Block_copy(aBlock);
      uniqueIDsOfPasswordControlAndRelatedControls = [formMetadataCopy uniqueIDsOfPasswordControlAndRelatedControls];
      v38[2](v38, frameCopy, formMetadataCopy, metadataCopy, uniqueIDsOfPasswordControlAndRelatedControls, uniqueID);
      if (v50[0] == 1)
      {
        focusedElementInfo = [sessionCopy focusedElementInfo];
        value = [focusedElementInfo value];
        v21 = v38;
      }

      else
      {
        focusedElementInfo = [frameCopy webui_URL];
        autoFillQuirksManager = [v19 autoFillQuirksManager];
        passwordGenerationManager = [autoFillQuirksManager passwordGenerationManager];

        v36 = passwordGenerationManager;
        v35 = [passwordGenerationManager defaultRequirementsForURL:focusedElementInfo];
        if ([passwordGenerationManager passwordGenerationIsDisallowedByRequirements:v35])
        {
          value = 0;
          v21 = v38;
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(&self->_webView);
          if ([v19 shouldAutoGeneratePasswordsForURL:focusedElementInfo inWebView:?])
          {
            v33 = objc_loadWeakRetained(&self->_delegate);
            if (objc_opt_respondsToSelector() & 1) != 0 && ([v33 formAutoFillControllerDidUserDeclineAutomaticStrongPasswordForCurrentDomain:self])
            {
              value = 0;
            }

            else
            {
              v24 = [(_SFFormAutoFillController *)self automaticPasswordForPasswordField:metadataCopy inForm:formMetadataCopy isFrame:frameCopy];
              v25 = v41;
              v32 = v24;
              if (!v41)
              {
                v25 = v24;
              }

              value = v25;
              if (value)
              {
                v26 = [MEMORY[0x1E695DFD8] setWithObject:value];
                [(_SFFormAutoFillController *)self _addValuesAutoFilledForCurrentPage:v26];

                v27 = [v32 copy];
                defaultStrongPassword = self->_defaultStrongPassword;
                self->_defaultStrongPassword = v27;

                v38[2](v38, frameCopy, formMetadataCopy, metadataCopy, uniqueIDsOfPasswordControlAndRelatedControls, uniqueID);
                if (([MEMORY[0x1E69C8880] isPasswordsAppInstalled] & 1) == 0)
                {
                  v29 = [value copy];
                  currentStrongPassword = self->_currentStrongPassword;
                  self->_currentStrongPassword = v29;

                  v42[0] = MEMORY[0x1E69E9820];
                  v42[1] = 3221225472;
                  v42[2] = __162___SFFormAutoFillController__beginAutomaticPasswordInteractionWithPasswordFieldMetadata_formMetadata_frame_inputSession_generatedPassword_ignorePreviousDecision___block_invoke_2;
                  v42[3] = &unk_1E8491538;
                  v48 = v38;
                  v43 = frameCopy;
                  v44 = formMetadataCopy;
                  v45 = metadataCopy;
                  v46 = uniqueIDsOfPasswordControlAndRelatedControls;
                  v47 = uniqueID;
                  [(_SFFormAutoFillController *)self fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:decisionCopy completionHandler:v42];
                }
              }
            }
          }

          else
          {
            value = 0;
          }

          v21 = v38;
        }
      }
    }

    else
    {
      value = 0;
    }

    passwordCopy = v41;
  }

  else
  {
    value = 0;
  }

  return value;
}

- (void)fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution:(BOOL)substitution completionHandler:(id)handler
{
  substitutionCopy = substitution;
  handlerCopy = handler;
  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    frame = [(SFFormAutocompleteState *)self->_state frame];
    formMetadata = [(SFFormAutocompleteState *)self->_state formMetadata];
    textFieldMetadata = [(SFFormAutocompleteState *)self->_state textFieldMetadata];
  }

  else
  {
    frame = self->_frameHandleForAutomaticPasswords;
    formMetadata = self->_formMetadataForAutomaticPasswords;
    textFieldMetadata = self->_passwordFieldMetadataForAutomaticPasswords;
  }

  v10 = textFieldMetadata;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  webui_URL = [(SFFormAutoFillFrameHandle *)frame webui_URL];
  if (!self->_defaultStrongPassword)
  {
    v13 = [(_SFFormAutoFillController *)self automaticPasswordForPasswordField:v10 inForm:formMetadata isFrame:frame];
    defaultStrongPassword = self->_defaultStrongPassword;
    self->_defaultStrongPassword = v13;
  }

  if (self->_currentStrongPassword || (objc_storeStrong(&self->_currentStrongPassword, self->_defaultStrongPassword), self->_currentStrongPassword))
  {
    v32 = v10;
    v33 = handlerCopy;
    v34 = frame;
    v35 = formMetadata;
    v30 = webui_URL;
    v31 = +[_SFFormDataController sharedController];
    v15 = substitutionCopy;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__0;
    v48[4] = __Block_byref_object_dispose__0;
    v49 = 0;
    v29 = dispatch_group_create();
    dispatch_group_enter(v29);
    mEMORY[0x1E69C8898] = [MEMORY[0x1E69C8898] sharedStore];
    currentStrongPassword = self->_currentStrongPassword;
    v18 = [MEMORY[0x1E695AC58] safari_HTMLFormProtectionSpaceForURL:webui_URL];
    webui_privateBrowsingEnabled = [WeakRetained webui_privateBrowsingEnabled];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke;
    v45[3] = &unk_1E8491560;
    v20 = v29;
    v46 = v20;
    v28 = v31;
    v47 = v28;
    [mEMORY[0x1E69C8898] addGeneratedPassword:currentStrongPassword forProtectionSpace:v18 inPrivateBrowsingSession:webui_privateBrowsingEnabled completionHandler:v45];

    dispatch_group_enter(v20);
    autoFiller = self->_autoFiller;
    uniqueID = [(WBSFormMetadata *)v35 uniqueID];
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
    frame = v34;
    [(SFFormAutoFiller *)autoFiller substitutePasswordElementsWithAutomaticPasswordElementsInFrame:v34 formID:uniqueID focusedPasswordControlUniqueID:uniqueIDOfFocusedPasswordElementWithAutomaticPassword passwordControlUniqueIDs:uniqueIDsOfFocusedAndRelatedControls automaticPassword:v25 blurAfterSubstitution:v15 completionHandler:v42];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121___SFFormAutoFillController_fillCurrentAutomaticStrongPasswordInCurrentFrameBlurringAfterSubstitution_completionHandler___block_invoke_4;
    block[3] = &unk_1E84915B0;
    v37 = v34;
    selfCopy = self;
    v41 = v48;
    formMetadata = v35;
    v39 = v35;
    handlerCopy = v33;
    v40 = v33;
    dispatch_group_notify(v26, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v48, 8);
    v10 = v32;
    webui_URL = v30;
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

- (void)collectAllFormsMetadataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  autoFiller = self->_autoFiller;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___SFFormAutoFillController_collectAllFormsMetadataWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8491600;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(SFFormAutoFiller *)autoFiller collectAllFormsMetadataWithRequestType:0 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)fillCreditCardData:(id)data inFrame:(id)frame textFieldMetadata:(id)metadata formMetadata:(id)formMetadata
{
  dataCopy = data;
  frameCopy = frame;
  metadataCopy = metadata;
  formMetadataCopy = formMetadata;
  v24 = dataCopy;
  mEMORY[0x1E69E3090] = [MEMORY[0x1E69E3090] sharedCreditCardDataController];
  authenticationContext = [(_SFFormAutoFillController *)self authenticationContext];
  externalizedContext = [authenticationContext externalizedContext];

  v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*MEMORY[0x1E69C93B8]];
  [(_SFFormAutoFillController *)self showSpinnerInFormSoon:metadataCopy frame:frameCopy];
  self->_waitingForCreditCardDataFromWallet = 1;
  objc_initWeak(&location, self);
  webui_URL = [frameCopy webui_URL];
  host = [webui_URL host];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __87___SFFormAutoFillController_fillCreditCardData_inFrame_textFieldMetadata_formMetadata___block_invoke;
  v25[3] = &unk_1E84916F0;
  objc_copyWeak(&v30, &location);
  v19 = v17;
  v26 = v19;
  v20 = mEMORY[0x1E69E3090];
  v27 = v20;
  v21 = frameCopy;
  v28 = v21;
  v22 = formMetadataCopy;
  v29 = v22;
  [v20 getCreditCardDataToFill:v24 host:host externalizedContext:externalizedContext completionHandler:v25];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)showSpinnerInFormSoon:(id)soon frame:(id)frame
{
  soonCopy = soon;
  frameCopy = frame;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69C8F20];
  v9 = *MEMORY[0x1E69C93B8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___SFFormAutoFillController_showSpinnerInFormSoon_frame___block_invoke;
  v14[3] = &unk_1E8491718;
  objc_copyWeak(&v17, &location);
  v15 = soonCopy;
  v16 = frameCopy;
  v10 = frameCopy;
  v11 = soonCopy;
  v12 = [v8 scheduledTimerWithInterval:0 repeats:v14 handler:v9];
  timerToShowSpinnerInForm = self->_timerToShowSpinnerInForm;
  self->_timerToShowSpinnerInForm = v12;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)stopShowingSpinnerInFormSoon:(double)soon textFieldMetadata:(id)metadata frame:(id)frame
{
  metadataCopy = metadata;
  frameCopy = frame;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69C8F20];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___SFFormAutoFillController_stopShowingSpinnerInFormSoon_textFieldMetadata_frame___block_invoke;
  v15[3] = &unk_1E8491718;
  objc_copyWeak(&v18, &location);
  v16 = metadataCopy;
  v17 = frameCopy;
  v11 = frameCopy;
  v12 = metadataCopy;
  v13 = [v10 scheduledTimerWithInterval:0 repeats:v15 handler:soon];
  timerToStopShowingSpinnerInForm = self->_timerToStopShowingSpinnerInForm;
  self->_timerToStopShowingSpinnerInForm = v13;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)clearAutoFilledCreditCardFieldsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69C9760];
  allKeys = [(NSDictionary *)self->_lastFilledCreditCardDataTypes allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82___SFFormAutoFillController_clearAutoFilledCreditCardFieldsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8491768;
  objc_copyWeak(&v8, &location);
  [v5 asynchronouslyEnumerateFramesOnQueue:MEMORY[0x1E69E96A0] withControlHandles:allKeys block:v7 completionHandler:handlerCopy];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (BOOL)elementIsBeingFocusedForStreamlinedLogin:(id)login
{
  userObject = [login userObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [userObject safari_BOOLForKey:@"focusingForStreamlinedLogin"];
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

- (void)didPerformPageLevelAutoFill:(BOOL)fill
{
  if (!fill || ([(SFFormAutocompleteState *)self->_stateForPageLevelAutoFill multiRoundAutoFillManager], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(SFFormAutocompleteState *)self->_stateForPageLevelAutoFill invalidate];
    stateForPageLevelAutoFill = self->_stateForPageLevelAutoFill;
    self->_stateForPageLevelAutoFill = 0;
  }
}

- (void)_collectDiagnosticsForAutoFillIncludingPageContents:(BOOL)contents completionHandler:(id)handler
{
  handlerCopy = handler;
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
  v11 = handlerCopy;
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

- (void)_dismissAutoFillInternalFeedbackNoticeImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained dismissAutoFillInternalFeedbackActivityForFormAutoFillController:self immediately:immediatelyCopy];
    }
  }
}

- (void)_addValuesAutoFilledForCurrentPage:(id)page
{
  pageCopy = page;
  if ([MEMORY[0x1E69C8880] isInternalInstall])
  {
    v9 = [pageCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_278];

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
    v6 = pageCopy;
  }
}

- (void)_didFocusSensitiveFormField:(id)field
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained formAutoFillControllerDidFocusSensitiveFormField:self];
  }

  if ([MEMORY[0x1E69C8880] isPasswordsAppInstalled])
  {
    mEMORY[0x1E69C8DB8] = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
    shouldAutoFillPasswordsFromKeychain = [mEMORY[0x1E69C8DB8] shouldAutoFillPasswordsFromKeychain];

    if (shouldAutoFillPasswordsFromKeychain)
    {
      [(_SFFormAutoFillController *)self makePasswordFields:self->_uniqueIDsOfFocusedAndRelatedControls viewable:1];
    }
  }
}

- (id)_customInputViewFromAutoFillInputSession
{
  v9 = *MEMORY[0x1E69E9840];
  formInputSession = [(_SFFormAutoFillInputSession *)self->_inputSessionForAutomaticPasswords formInputSession];
  customInputView = [formInputSession customInputView];

  if (customInputView)
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

      customInputView = 0;
    }
  }

  return customInputView;
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
  inputSession = [(SFFormAutocompleteState *)self->_state inputSession];
  formInputSession = [inputSession formInputSession];
  [formInputSession setCustomInputView:0];

  inputSession2 = [(SFFormAutocompleteState *)self->_state inputSession];
  formInputSession2 = [inputSession2 formInputSession];
  [formInputSession2 setAccessoryViewShouldNotShow:0];

  [(_SFFormAutoFillController *)self _restoreInputAssistantItemsIfNecessary];
}

- (void)_showICloudKeychainViewInCurrentInputView
{
  _customInputViewFromAutoFillInputSession = [(_SFFormAutoFillController *)self _customInputViewFromAutoFillInputSession];
  if (_customInputViewFromAutoFillInputSession)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Transitioning to iCloud Keychain view", v6, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x1E69BC7D8]) initWithMode:3];
    [v5 setDelegate:self];
    [_customInputViewFromAutoFillInputSession replaceContentsOfViewWithStrongPasswordIntroductionViewController:v5];
    objc_storeStrong(&self->_strongPasswordIntroductionViewController, v5);
    [(_SFFormAutoFillController *)self hideInputAccessoryView];
  }
}

- (void)fetchIconForURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc(MEMORY[0x1E69C9898]);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v7 = [WeakRetained URL];
  v8 = [v5 initWithTitle:&stru_1F4FE9E38 url:v7 minimumIconSize:48.0 maximumIconSize:{48.0, 64.0, 64.0}];

  mEMORY[0x1E69B1C68] = [MEMORY[0x1E69B1C68] sharedSiteMetadataManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___SFFormAutoFillController_fetchIconForURLWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E8491800;
  v10 = handlerCopy;
  v13 = v10;
  v11 = [mEMORY[0x1E69B1C68] registerRequest:v8 priority:2 responseHandler:v12];
}

- (void)strongPasswordIntroductionViewController:(id)controller shouldPerformAction:(unint64_t)action willShowAdditionalView:(BOOL)view
{
  controllerCopy = controller;
  mode = [controllerCopy mode];
  if (action != 1 || mode)
  {
    if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
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

- (id)placeholderImageForStrongPasswordIntroductionViewController:(id)controller
{
  v3 = MEMORY[0x1E69B1C70];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v5 = [WeakRetained URL];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  v7 = [v3 generateFavoritesIconForTitle:&stru_1F4FE9E38 url:v5 backgroundColor:systemGrayColor shouldRemoveGrammaticalArticles:1 fontWeight:0 fontDesign:1 fontSize:56.0];

  return v7;
}

- (id)strongPasswordIntroductionViewController:(id)controller automaticStrongPasswordWithFormat:(unint64_t)format
{
  controllerCopy = controller;
  if (format == 1)
  {
    alphanumericStrongPassword = [(_SFFormAutoFillController *)self alphanumericStrongPassword];
  }

  else
  {
    if (format)
    {
      goto LABEL_6;
    }

    alphanumericStrongPassword = [(_SFFormAutoFillController *)self defaultStrongPassword];
  }

  v4 = alphanumericStrongPassword;
LABEL_6:

  return v4;
}

- (void)handleDidSaveAccountWithGeneratedPasswordNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (self->_didFillStrongPasswordFromStreamlinedAutoFillView && !self->_didPostAccountSavedNotificationForAccountSavedWithFilledStrongPassword)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69E30D8]];

    if (v7)
    {
      objc_storeStrong(&self->_recentlySavedAccountFromStreamlinedAutoFill, v7);
      if ([MEMORY[0x1E69BC7D8] shouldShowViewsInMode:3])
      {
        [(_SFFormAutoFillController *)self _showICloudKeychainViewInCurrentInputView];
      }

      else
      {
        mEMORY[0x1E69C89C0] = [MEMORY[0x1E69C89C0] sharedNotificationManager];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __83___SFFormAutoFillController_handleDidSaveAccountWithGeneratedPasswordNotification___block_invoke;
        v10[3] = &unk_1E8491850;
        v10[4] = self;
        v11 = v7;
        [mEMORY[0x1E69C89C0] requestStatusWithCompletionHandler:v10];
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

- (void)handleDidUpdatePasswordForPreviouslySavedAccount:(id)account
{
  accountCopy = account;
  if (__PAIR64__(self->_didPostAccountSavedNotificationForAccountSavedWithFilledStrongPassword, self->_didFillStrongPasswordFromStreamlinedAutoFillView) == 0x100000001)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D4644000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling password updated notification", v9, 2u);
    }

    userInfo = [accountCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69E30D8]];

    objc_storeStrong(&self->_recentlySavedAccountFromStreamlinedAutoFill, v7);
    mEMORY[0x1E69C89C0] = [MEMORY[0x1E69C89C0] sharedNotificationManager];
    [mEMORY[0x1E69C89C0] schedulePasswordUpdatedNotificationForSavedAccount:v7 completionHandler:&__block_literal_global_295];
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
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1D4644000, log, OS_LOG_TYPE_ERROR, "Found unexpected input view of type %@", buf, 0xCu);
}

@end