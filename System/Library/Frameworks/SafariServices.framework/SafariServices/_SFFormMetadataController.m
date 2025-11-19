@interface _SFFormMetadataController
- (BOOL)_formContainsAutoFilledElements:(id)a3;
- (WKWebProcessPlugInScriptWorld)scriptWorld;
- (_SFFormMetadataController)initWithPageController:(id)a3;
- (id)_observer;
- (id)_webProcessPlugInBrowserContextController:(id)a3 willBeginInputSessionForElement:(id)a4 inFrame:(id)a5 userIsInteracting:(BOOL)a6;
- (id)_webProcessPlugInBrowserContextController:(id)a3 willSubmitForm:(id)a4 toFrame:(id)a5 fromFrame:(id)a6 withValues:(id)a7;
- (id)formAutoFillNodeForJSWrapper:(OpaqueJSValue *)a3 inContext:(OpaqueJSContext *)a4;
- (void)_checkSearchURLTemplateStringInFrame:(id)a3 autoFillFrame:(id)a4 autoFillNode:(id)a5 controller:(id)a6;
- (void)_collectFormMetadataForPreFilling:(BOOL)a3;
- (void)_webProcessPlugInBrowserContextController:(id)a3 textDidChangeInTextField:(id)a4 inFrame:(id)a5 initiatedByUserTyping:(BOOL)a6;
- (void)_webProcessPlugInBrowserContextController:(id)a3 willSendSubmitEventToForm:(id)a4 inFrame:(id)a5 targetFrame:(id)a6 values:(id)a7;
- (void)_willNavigateFrameWithUnsubmittedForm:(id)a3;
- (void)autoFillFormInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10;
- (void)autoFilledField:(id)a3 inForm:(id)a4 inFrame:(id)a5;
- (void)clearField:(id)a3 inFrame:(id)a4;
- (void)clearScriptWorld;
- (void)collectFormMetadataForPageLevelAutoFill;
- (void)collectFormMetadataWithRequestType:(unint64_t)a3 ignoreAutoFilledForms:(BOOL)a4 completionHandler:(id)a5;
- (void)collectURLsForPreFilling;
- (void)dealloc;
- (void)didSameDocumentNavigation:(int64_t)a3 inFrame:(id)a4;
- (void)didStartProvisionalLoadForFrame:(id)a3;
- (void)fillForm:(double)a3 inFrame:(id)a4 withPassword:(id)a5 focusedFieldControlID:(id)a6 completionHandler:(id)a7;
- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4;
- (void)invalidate;
- (void)removeAutomaticPasswordElementsInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4 passwordControlUniqueIDs:(id)a5 blurAfterRemoval:(BOOL)a6;
- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)a3 passwordControlUniqueIDs:(id)a4;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5;
@end

@implementation _SFFormMetadataController

- (_SFFormMetadataController)initWithPageController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFFormMetadataController;
  v5 = [(WBSFormMetadataController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, v4);
    v7 = [v4 browserContextController];
    [v7 _setFormDelegate:v6];

    v8 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(_SFFormMetadataController *)self invalidate];
  v3.receiver = self;
  v3.super_class = _SFFormMetadataController;
  [(_SFFormMetadataController *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = objc_storeWeak(&self->_pageController, 0);
  v4 = [0 browserContextController];
  [v4 _setFormDelegate:0];

  observer = self->_observer;
  self->_observer = 0;
}

- (WKWebProcessPlugInScriptWorld)scriptWorld
{
  scriptWorld = self->_scriptWorld;
  if (!scriptWorld)
  {
    v4 = [MEMORY[0x1E6985398] world];
    v5 = self->_scriptWorld;
    self->_scriptWorld = v4;

    [(WKWebProcessPlugInScriptWorld *)self->_scriptWorld makeAllShadowRootsOpen];
    [(WKWebProcessPlugInScriptWorld *)self->_scriptWorld disableOverrideBuiltinsBehavior];
    scriptWorld = self->_scriptWorld;
  }

  return scriptWorld;
}

- (void)collectURLsForPreFilling
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v4 = [WeakRetained mainFrame];

  addURLsInFrameTreeToArray(v4, v8);
  v5 = [(_SFFormMetadataController *)self _observer];
  v6 = [v4 URL];
  v7 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v4];
  [v5 didCollectURLsForPreFilling:v8 atURL:v6 inFrame:v7];
}

- (BOOL)_formContainsAutoFilledElements:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 controls];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAutoFilledTextField])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)collectFormMetadataForPageLevelAutoFill
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68___SFFormMetadataController_collectFormMetadataForPageLevelAutoFill__block_invoke;
  v2[3] = &unk_1E8490EA0;
  v2[4] = self;
  [(_SFFormMetadataController *)self collectFormMetadataWithRequestType:0 ignoreAutoFilledForms:0 completionHandler:v2];
}

- (void)_collectFormMetadataForPreFilling:(BOOL)a3
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  shouldListenForFormChanges = self->_shouldListenForFormChanges;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63___SFFormMetadataController__collectFormMetadataForPreFilling___block_invoke;
  v5[3] = &unk_1E8490EA0;
  v5[4] = self;
  [(_SFFormMetadataController *)self collectFormMetadataWithRequestType:v3 ignoreAutoFilledForms:shouldListenForFormChanges completionHandler:v5];
}

- (void)collectFormMetadataWithRequestType:(unint64_t)a3 ignoreAutoFilledForms:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v10 = [WeakRetained browserContextController];
  v11 = [v10 mainFrame];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v11];
  v23 = 0;
  v24 = 0;
  [(WBSFormMetadataController *)self getMetadataForAllFormsInPageWithMainFrame:v12 requestType:a3 frames:&v24 formMetadata:&v23];
  v13 = v24;
  v14 = v23;

  v15 = [MEMORY[0x1E695DF90] dictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104___SFFormMetadataController_collectFormMetadataWithRequestType_ignoreAutoFilledForms_completionHandler___block_invoke;
  v18[3] = &unk_1E8490EC8;
  v19 = v15;
  v20 = v14;
  v22 = a4;
  v21 = self;
  v16 = v14;
  v17 = v15;
  [v13 enumerateObjectsUsingBlock:v18];
  v8[2](v8, v17);
}

- (void)clearScriptWorld
{
  scriptWorld = self->_scriptWorld;
  if (scriptWorld)
  {
    [(WKWebProcessPlugInScriptWorld *)scriptWorld clearWrappers];
    v4 = self->_scriptWorld;
    self->_scriptWorld = 0;
  }
}

- (id)formAutoFillNodeForJSWrapper:(OpaqueJSValue *)a3 inContext:(OpaqueJSContext *)a4
{
  v4 = [[SFFormAutoFillNode alloc] initWithJSWrapper:a3 inContext:a4];

  return v4;
}

- (id)_observer
{
  observer = self->_observer;
  if (!observer)
  {
    v4 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5072D20];
    WeakRetained = objc_loadWeakRetained(&self->_pageController);
    v6 = [WeakRetained browserContextController];
    v7 = [v6 _remoteObjectRegistry];
    v8 = [v7 remoteObjectProxyWithInterface:v4];
    v9 = self->_observer;
    self->_observer = v8;

    observer = self->_observer;
  }

  return observer;
}

- (void)autoFillFormInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10
{
  v12 = a6;
  v13 = a5;
  v16 = a3;
  v17 = a10;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __155___SFFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke;
  v22[3] = &unk_1E8490EF0;
  v23 = v16;
  v24 = self;
  v26 = v12;
  v25 = v17;
  v21.receiver = self;
  v21.super_class = _SFFormMetadataController;
  v18 = v17;
  v19 = v16;
  [(WBSFormMetadataController *)&v21 autoFillFormInFrame:v19 withValues:a4 setAutoFilled:v13 focusFieldAfterFilling:v12 fieldToFocus:a7 fieldsToObscure:a8 submitForm:a9 completionHandler:v22];
}

- (void)fillForm:(double)a3 inFrame:(id)a4 withPassword:(id)a5 focusedFieldControlID:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99___SFFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke;
  v17[3] = &unk_1E8490F18;
  v20 = a3;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v16.receiver = self;
  v16.super_class = _SFFormMetadataController;
  v14 = v13;
  v15 = v12;
  [(WBSFormMetadataController *)&v16 fillForm:v15 inFrame:a5 withPassword:a6 focusedFieldControlID:v17 completionHandler:a3];
}

- (void)removeAutomaticPasswordElementsInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4 passwordControlUniqueIDs:(id)a5 blurAfterRemoval:(BOOL)a6
{
  v6 = a6;
  v33[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:v10])
  {
    v31.receiver = self;
    v31.super_class = _SFFormMetadataController;
    [(WBSFormMetadataController *)&v31 removeAutomaticPasswordElementsInFrame:v10 focusedPasswordControlUniqueID:v11 passwordControlUniqueIDs:v12 blurAfterRemoval:v6];
    v13 = [(WBSFormMetadataController *)self formAutoFillNodeForField:v11 inFrame:v10];
    v29 = 0;
    v30 = 0;
    [(WBSFormMetadataController *)self getMetadataForTextField:v13 inFrame:v10 textFieldMetadata:&v30 formMetadata:&v29 requestType:3];
    v14 = v30;
    v15 = v29;
    v16 = v29;
    v17 = [v10 plugInFrame];
    objc_storeStrong(&self->_unsubmittedForm, v15);
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&self->_unsubmittedFormFrame, v18);
    v19 = 0;
    if (v13 && v14 && v16)
    {
      v25 = [v10 plugInFrame];
      v32[0] = @"textField";
      v26 = [v14 serializedData];
      v33[0] = v26;
      v32[1] = @"form";
      [v16 serializedData];
      v20 = v28 = v13;
      v33[1] = v20;
      v32[2] = @"frame";
      v27 = v14;
      v21 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v25];
      v22 = [(SFFormAutoFillFrameHandle *)v21 serializedData];
      v33[2] = v22;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

      v14 = v27;
      v13 = v28;
    }

    v23 = [(_SFFormMetadataController *)self _observer];
    v24 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v17];
    [v23 didRemoveAutomaticStrongPasswordInForm:v16 inputSessionUserObject:v19 inFrame:v24];
  }
}

- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)a3 passwordControlUniqueIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:v6])
  {
    v8.receiver = self;
    v8.super_class = _SFFormMetadataController;
    [(WBSFormMetadataController *)&v8 removeAutomaticPasswordVisualTreatmentInFrame:v6 passwordControlUniqueIDs:v7];
  }
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:v8])
  {
    v10.receiver = self;
    v10.super_class = _SFFormMetadataController;
    [(WBSFormMetadataController *)&v10 setStrongPasswordElementViewableIfAppropriate:v6 frame:v8 passwordControlUniqueIDs:v9];
  }
}

- (void)clearField:(id)a3 inFrame:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = _SFFormMetadataController;
  v7 = a3;
  [(WBSFormMetadataController *)&v18 clearField:v7 inFrame:v6];
  v8 = [(WBSFormMetadataController *)self formAutoFillNodeForField:v7 inFrame:v6];

  v16 = 0;
  v17 = 0;
  [(WBSFormMetadataController *)self getMetadataForTextField:v8 inFrame:v6 textFieldMetadata:&v17 formMetadata:&v16 requestType:3];
  v9 = v17;
  v10 = v16;
  v11 = v16;

  objc_storeStrong(&self->_unsubmittedForm, v10);
  if (v11)
  {
    v12 = [v6 plugInFrame];
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&self->_unsubmittedFormFrame, v12);
  if (v11)
  {
  }

  v13 = [(_SFFormMetadataController *)self _observer];
  unsubmittedForm = self->_unsubmittedForm;
  v15 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:self->_unsubmittedFormFrame];
  [v13 didUpdateUnsubmittedForm:unsubmittedForm inFrame:v15];
}

- (void)autoFilledField:(id)a3 inForm:(id)a4 inFrame:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = [v7 type];
  if (v8 <= 5 && ((1 << v8) & 0x3A) != 0)
  {
    v10 = [(_SFFormMetadataController *)self _observer];
    [v10 autoFilledField:v11 inForm:v7];
  }
}

- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4
{
  self->_focusingFormForStreamlinedLogin = 1;
  v5.receiver = self;
  v5.super_class = _SFFormMetadataController;
  [(WBSFormMetadataController *)&v5 focusControlForStreamlinedLogin:a3 inFrame:a4];
  self->_focusingFormForStreamlinedLogin = 0;
}

- (void)_willNavigateFrameWithUnsubmittedForm:(id)a3
{
  v4 = a3;
  if (self->_unsubmittedForm)
  {
    v10 = v4;
    IsDescendantOfFrame = frameIsDescendantOfFrame(self->_unsubmittedFormFrame, v4);
    v4 = v10;
    if (IsDescendantOfFrame)
    {
      v6 = [(_SFFormMetadataController *)self _observer];
      v7 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:self->_unsubmittedFormFrame];
      [v6 willNavigateFrame:v7 withUnsubmittedForm:self->_unsubmittedForm];

      unsubmittedForm = self->_unsubmittedForm;
      self->_unsubmittedForm = 0;

      unsubmittedFormFrame = self->_unsubmittedFormFrame;
      self->_unsubmittedFormFrame = 0;

      v4 = v10;
    }
  }
}

- (void)didStartProvisionalLoadForFrame:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  v5 = [WeakRetained mainFrame];

  if (v5 == v6)
  {
    self->_shouldListenForFormChanges = 0;
  }

  [(_SFFormMetadataController *)self _willNavigateFrameWithUnsubmittedForm:v6];
}

- (void)didSameDocumentNavigation:(int64_t)a3 inFrame:(id)a4
{
  if (a3)
  {
    [(_SFFormMetadataController *)self _willNavigateFrameWithUnsubmittedForm:a4];
  }
}

- (void)_checkSearchURLTemplateStringInFrame:(id)a3 autoFillFrame:(id)a4 autoFillNode:(id)a5 controller:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5)
  {
    [(WBSFormMetadataController *)self visibleNonEmptyTextFieldsInForm:a5 inFrame:v11];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v25 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v15 = v13;
    if (v14)
    {
      v16 = v14;
      v15 = 0;
      v17 = *v23;
      while (2)
      {
        v18 = 0;
        v19 = v15;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v22 + 1) + 8 * v18);
          v21 = [v20 isHTMLInputElementUserEdited];
          if (v19 && (v21 & 1) != 0)
          {
            v15 = v13;
LABEL_15:

            goto LABEL_16;
          }

          v15 = v20;

          ++v18;
          v19 = v15;
        }

        while (v16 != v18);
        v16 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      if (v15)
      {
        v19 = [(WBSFormMetadataController *)self formSubmissionURLStringForSearchTextField:v15 inFrame:v11 useStrictDetection:1];
        if (v19)
        {
          [(_SFFormMetadataController *)self didFindSearchURLTemplateString:v19 inFrame:v10 pageController:v12];
        }

        goto LABEL_15;
      }
    }

    else
    {
LABEL_16:
    }
  }
}

- (void)_webProcessPlugInBrowserContextController:(id)a3 textDidChangeInTextField:(id)a4 inFrame:(id)a5 initiatedByUserTyping:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(WBSFormMetadataController *)self isCurrentlyFilling])
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring textDidChangeInTextField because filling is in progress", buf, 2u);
    }
  }

  else
  {
    if (!self->_textDidChangeEventCoalescer)
    {
      v13 = objc_alloc(MEMORY[0x1E69C8828]);
      v14 = [v13 initWithMinimumTimeIntervalBeforeExecution:MEMORY[0x1E69E96A0] queue:0.1];
      textDidChangeEventCoalescer = self->_textDidChangeEventCoalescer;
      self->_textDidChangeEventCoalescer = v14;
    }

    objc_initWeak(buf, self);
    v16 = self->_textDidChangeEventCoalescer;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __126___SFFormMetadataController__webProcessPlugInBrowserContextController_textDidChangeInTextField_inFrame_initiatedByUserTyping___block_invoke;
    v17[3] = &unk_1E848FB68;
    objc_copyWeak(&v20, buf);
    v18 = v10;
    v19 = v11;
    [(WBSBlockCoalescer *)v16 scheduleBlock:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (id)_webProcessPlugInBrowserContextController:(id)a3 willBeginInputSessionForElement:(id)a4 inFrame:(id)a5 userIsInteracting:(BOOL)a6
{
  v6 = a6;
  v34[3] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = self->_focusingFormForStreamlinedLogin || self->_pendingBeginningInputSessionForControlAfterFilling;
  self->_pendingBeginningInputSessionForControlAfterFilling = 0;
  if (!-[WBSFormMetadataController isCurrentlyFilling](self, "isCurrentlyFilling") && (([v9 isTextField] & 1) != 0 || objc_msgSend(v9, "isSelectElement")) && (v6 || v11 || GSEventIsHardwareKeyboardAttached() || (WeakRetained = objc_loadWeakRetained(&self->_pageController), objc_msgSend(WeakRetained, "webProcessPlugIn"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "plugInController"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "parameters"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "valueForKey:", @"launchedToTest"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v15, v14, WeakRetained, v18)))
  {
    v19 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v10];
    v20 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:v9];
    v31 = 0;
    v32 = 0;
    [(WBSFormMetadataController *)self getMetadataForTextField:v20 inFrame:v19 textFieldMetadata:&v32 formMetadata:&v31 requestType:0];
    v21 = v32;
    v22 = v31;
    v29 = v20;
    v30 = v19;
    [(WBSFormMetadataController *)self textFieldFocused:v20 inFrame:v19 textFieldMetadata:v21 formMetadata:v22];
    if (v22)
    {
      v33[0] = @"textField";
      v28 = [v21 serializedData];
      v34[0] = v28;
      v33[1] = @"form";
      v23 = [v22 serializedData];
      v34[1] = v23;
      v33[2] = @"frame";
      v24 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v10];
      v25 = [(SFFormAutoFillFrameHandle *)v24 serializedData];
      v34[2] = v25;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
    }

    else
    {
      v12 = 0;
    }

    if (self->_focusingFormForStreamlinedLogin)
    {
      v26 = [v12 mutableCopy];
      [v26 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"focusingForStreamlinedLogin"];

      v12 = v26;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_webProcessPlugInBrowserContextController:(id)a3 willSendSubmitEventToForm:(id)a4 inFrame:(id)a5 targetFrame:(id)a6 values:(id)a7
{
  v9 = a5;
  v10 = a4;
  v19 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v9];
  v11 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:v10];

  [(WBSFormMetadataController *)self willSendSubmitEventForForm:v11 inFrame:v19];
  v12 = [(WBSFormMetadataController *)self metadataForForm:v11 inFrame:v19 requestType:0];
  unsubmittedForm = self->_unsubmittedForm;
  self->_unsubmittedForm = v12;

  unsubmittedFormFrame = self->_unsubmittedFormFrame;
  self->_unsubmittedFormFrame = v9;
  v15 = v9;

  v16 = [(_SFFormMetadataController *)self _observer];
  v17 = self->_unsubmittedForm;
  v18 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:self->_unsubmittedFormFrame];
  [v16 didUpdateUnsubmittedForm:v17 inFrame:v18];
}

- (id)_webProcessPlugInBrowserContextController:(id)a3 willSubmitForm:(id)a4 toFrame:(id)a5 fromFrame:(id)a6 withValues:(id)a7
{
  v31[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a4;
  v15 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v13];
  v16 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:v14];

  v17 = [(WBSFormMetadataController *)self metadataForForm:v16 inFrame:v15 requestType:0 addUserEditedStateForUserNameAndPasswordFields:1];
  if (v17)
  {
    v29 = v12;
    v18 = [(WBSFormMetadata *)self->_unsubmittedForm uniqueID];
    if (v18 == [v17 uniqueID])
    {
      unsubmittedForm = self->_unsubmittedForm;
      self->_unsubmittedForm = 0;

      unsubmittedFormFrame = self->_unsubmittedFormFrame;
      self->_unsubmittedFormFrame = 0;

      v21 = [(_SFFormMetadataController *)self _observer];
      [v21 didUpdateUnsubmittedForm:0 inFrame:0];
    }

    [(WBSFormMetadataController *)self willSubmitForm:v16 inFrame:v15];
    v30[0] = @"form";
    v22 = [v17 serializedData];
    v30[1] = @"frame";
    v31[0] = v22;
    v23 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v13];
    v24 = [(SFFormAutoFillFrameHandle *)v23 serializedData];
    v31[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

    v12 = v29;
  }

  else
  {
    [(WBSFormMetadataController *)self willSubmitForm:v16 inFrame:v15];
    v25 = 0;
  }

  v26 = [v11 mainFrame];

  if (v26 == v13)
  {
    v27 = [(WBSFormMetadataController *)self visibleNonEmptyTextFieldsInForm:v16 inFrame:v15];
    if ([v27 count])
    {
      [(_SFFormMetadataController *)self _checkSearchURLTemplateStringInFrame:v12 autoFillFrame:v15 autoFillNode:v16 controller:v11];
    }
  }

  return v25;
}

@end