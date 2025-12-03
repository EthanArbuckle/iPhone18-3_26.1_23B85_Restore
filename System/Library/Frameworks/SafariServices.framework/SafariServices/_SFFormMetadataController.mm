@interface _SFFormMetadataController
- (BOOL)_formContainsAutoFilledElements:(id)elements;
- (WKWebProcessPlugInScriptWorld)scriptWorld;
- (_SFFormMetadataController)initWithPageController:(id)controller;
- (id)_observer;
- (id)_webProcessPlugInBrowserContextController:(id)controller willBeginInputSessionForElement:(id)element inFrame:(id)frame userIsInteracting:(BOOL)interacting;
- (id)_webProcessPlugInBrowserContextController:(id)controller willSubmitForm:(id)form toFrame:(id)frame fromFrame:(id)fromFrame withValues:(id)values;
- (id)formAutoFillNodeForJSWrapper:(OpaqueJSValue *)wrapper inContext:(OpaqueJSContext *)context;
- (void)_checkSearchURLTemplateStringInFrame:(id)frame autoFillFrame:(id)fillFrame autoFillNode:(id)node controller:(id)controller;
- (void)_collectFormMetadataForPreFilling:(BOOL)filling;
- (void)_webProcessPlugInBrowserContextController:(id)controller textDidChangeInTextField:(id)field inFrame:(id)frame initiatedByUserTyping:(BOOL)typing;
- (void)_webProcessPlugInBrowserContextController:(id)controller willSendSubmitEventToForm:(id)form inFrame:(id)frame targetFrame:(id)targetFrame values:(id)values;
- (void)_willNavigateFrameWithUnsubmittedForm:(id)form;
- (void)autoFillFormInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form completionHandler:(id)self0;
- (void)autoFilledField:(id)field inForm:(id)form inFrame:(id)frame;
- (void)clearField:(id)field inFrame:(id)frame;
- (void)clearScriptWorld;
- (void)collectFormMetadataForPageLevelAutoFill;
- (void)collectFormMetadataWithRequestType:(unint64_t)type ignoreAutoFilledForms:(BOOL)forms completionHandler:(id)handler;
- (void)collectURLsForPreFilling;
- (void)dealloc;
- (void)didSameDocumentNavigation:(int64_t)navigation inFrame:(id)frame;
- (void)didStartProvisionalLoadForFrame:(id)frame;
- (void)fillForm:(double)form inFrame:(id)frame withPassword:(id)password focusedFieldControlID:(id)d completionHandler:(id)handler;
- (void)focusControlForStreamlinedLogin:(id)login inFrame:(id)frame;
- (void)invalidate;
- (void)removeAutomaticPasswordElementsInFrame:(id)frame focusedPasswordControlUniqueID:(id)d passwordControlUniqueIDs:(id)ds blurAfterRemoval:(BOOL)removal;
- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)frame passwordControlUniqueIDs:(id)ds;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)appropriate frame:(id)frame passwordControlUniqueIDs:(id)ds;
@end

@implementation _SFFormMetadataController

- (_SFFormMetadataController)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = _SFFormMetadataController;
  v5 = [(WBSFormMetadataController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageController, controllerCopy);
    browserContextController = [controllerCopy browserContextController];
    [browserContextController _setFormDelegate:v6];

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
  browserContextController = [0 browserContextController];
  [browserContextController _setFormDelegate:0];

  observer = self->_observer;
  self->_observer = 0;
}

- (WKWebProcessPlugInScriptWorld)scriptWorld
{
  scriptWorld = self->_scriptWorld;
  if (!scriptWorld)
  {
    world = [MEMORY[0x1E6985398] world];
    v5 = self->_scriptWorld;
    self->_scriptWorld = world;

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
  mainFrame = [WeakRetained mainFrame];

  addURLsInFrameTreeToArray(mainFrame, v8);
  _observer = [(_SFFormMetadataController *)self _observer];
  v6 = [mainFrame URL];
  v7 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:mainFrame];
  [_observer didCollectURLsForPreFilling:v8 atURL:v6 inFrame:v7];
}

- (BOOL)_formContainsAutoFilledElements:(id)elements
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  controls = [elements controls];
  v4 = [controls countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(controls);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAutoFilledTextField])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [controls countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_collectFormMetadataForPreFilling:(BOOL)filling
{
  if (filling)
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

- (void)collectFormMetadataWithRequestType:(unint64_t)type ignoreAutoFilledForms:(BOOL)forms completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  browserContextController = [WeakRetained browserContextController];
  mainFrame = [browserContextController mainFrame];
  v12 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:mainFrame];
  v23 = 0;
  v24 = 0;
  [(WBSFormMetadataController *)self getMetadataForAllFormsInPageWithMainFrame:v12 requestType:type frames:&v24 formMetadata:&v23];
  v13 = v24;
  v14 = v23;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104___SFFormMetadataController_collectFormMetadataWithRequestType_ignoreAutoFilledForms_completionHandler___block_invoke;
  v18[3] = &unk_1E8490EC8;
  v19 = dictionary;
  v20 = v14;
  formsCopy = forms;
  selfCopy = self;
  v16 = v14;
  v17 = dictionary;
  [v13 enumerateObjectsUsingBlock:v18];
  handlerCopy[2](handlerCopy, v17);
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

- (id)formAutoFillNodeForJSWrapper:(OpaqueJSValue *)wrapper inContext:(OpaqueJSContext *)context
{
  v4 = [[SFFormAutoFillNode alloc] initWithJSWrapper:wrapper inContext:context];

  return v4;
}

- (id)_observer
{
  observer = self->_observer;
  if (!observer)
  {
    v4 = [MEMORY[0x1E69853F8] remoteObjectInterfaceWithProtocol:&unk_1F5072D20];
    WeakRetained = objc_loadWeakRetained(&self->_pageController);
    browserContextController = [WeakRetained browserContextController];
    _remoteObjectRegistry = [browserContextController _remoteObjectRegistry];
    v8 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v4];
    v9 = self->_observer;
    self->_observer = v8;

    observer = self->_observer;
  }

  return observer;
}

- (void)autoFillFormInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form completionHandler:(id)self0
{
  fillingCopy = filling;
  filledCopy = filled;
  frameCopy = frame;
  handlerCopy = handler;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __155___SFFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke;
  v22[3] = &unk_1E8490EF0;
  v23 = frameCopy;
  selfCopy = self;
  v26 = fillingCopy;
  v25 = handlerCopy;
  v21.receiver = self;
  v21.super_class = _SFFormMetadataController;
  v18 = handlerCopy;
  v19 = frameCopy;
  [(WBSFormMetadataController *)&v21 autoFillFormInFrame:v19 withValues:values setAutoFilled:filledCopy focusFieldAfterFilling:fillingCopy fieldToFocus:focus fieldsToObscure:obscure submitForm:form completionHandler:v22];
}

- (void)fillForm:(double)form inFrame:(id)frame withPassword:(id)password focusedFieldControlID:(id)d completionHandler:(id)handler
{
  frameCopy = frame;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99___SFFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke;
  v17[3] = &unk_1E8490F18;
  formCopy = form;
  v17[4] = self;
  v18 = frameCopy;
  v19 = handlerCopy;
  v16.receiver = self;
  v16.super_class = _SFFormMetadataController;
  v14 = handlerCopy;
  v15 = frameCopy;
  [(WBSFormMetadataController *)&v16 fillForm:v15 inFrame:password withPassword:d focusedFieldControlID:v17 completionHandler:form];
}

- (void)removeAutomaticPasswordElementsInFrame:(id)frame focusedPasswordControlUniqueID:(id)d passwordControlUniqueIDs:(id)ds blurAfterRemoval:(BOOL)removal
{
  removalCopy = removal;
  v33[3] = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  dCopy = d;
  dsCopy = ds;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:frameCopy])
  {
    v31.receiver = self;
    v31.super_class = _SFFormMetadataController;
    [(WBSFormMetadataController *)&v31 removeAutomaticPasswordElementsInFrame:frameCopy focusedPasswordControlUniqueID:dCopy passwordControlUniqueIDs:dsCopy blurAfterRemoval:removalCopy];
    v13 = [(WBSFormMetadataController *)self formAutoFillNodeForField:dCopy inFrame:frameCopy];
    v29 = 0;
    v30 = 0;
    [(WBSFormMetadataController *)self getMetadataForTextField:v13 inFrame:frameCopy textFieldMetadata:&v30 formMetadata:&v29 requestType:3];
    v14 = v30;
    v15 = v29;
    v16 = v29;
    plugInFrame = [frameCopy plugInFrame];
    objc_storeStrong(&self->_unsubmittedForm, v15);
    if (v16)
    {
      v18 = plugInFrame;
    }

    else
    {
      v18 = 0;
    }

    objc_storeStrong(&self->_unsubmittedFormFrame, v18);
    v19 = 0;
    if (v13 && v14 && v16)
    {
      plugInFrame2 = [frameCopy plugInFrame];
      v32[0] = @"textField";
      serializedData = [v14 serializedData];
      v33[0] = serializedData;
      v32[1] = @"form";
      [v16 serializedData];
      v20 = v28 = v13;
      v33[1] = v20;
      v32[2] = @"frame";
      v27 = v14;
      v21 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:plugInFrame2];
      serializedData2 = [(SFFormAutoFillFrameHandle *)v21 serializedData];
      v33[2] = serializedData2;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

      v14 = v27;
      v13 = v28;
    }

    _observer = [(_SFFormMetadataController *)self _observer];
    v24 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:plugInFrame];
    [_observer didRemoveAutomaticStrongPasswordInForm:v16 inputSessionUserObject:v19 inFrame:v24];
  }
}

- (void)removeAutomaticPasswordVisualTreatmentInFrame:(id)frame passwordControlUniqueIDs:(id)ds
{
  frameCopy = frame;
  dsCopy = ds;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:frameCopy])
  {
    v8.receiver = self;
    v8.super_class = _SFFormMetadataController;
    [(WBSFormMetadataController *)&v8 removeAutomaticPasswordVisualTreatmentInFrame:frameCopy passwordControlUniqueIDs:dsCopy];
  }
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)appropriate frame:(id)frame passwordControlUniqueIDs:(id)ds
{
  appropriateCopy = appropriate;
  frameCopy = frame;
  dsCopy = ds;
  if ([(WBSFormMetadataController *)self autoFillFrameIsValid:frameCopy])
  {
    v10.receiver = self;
    v10.super_class = _SFFormMetadataController;
    [(WBSFormMetadataController *)&v10 setStrongPasswordElementViewableIfAppropriate:appropriateCopy frame:frameCopy passwordControlUniqueIDs:dsCopy];
  }
}

- (void)clearField:(id)field inFrame:(id)frame
{
  frameCopy = frame;
  v18.receiver = self;
  v18.super_class = _SFFormMetadataController;
  fieldCopy = field;
  [(WBSFormMetadataController *)&v18 clearField:fieldCopy inFrame:frameCopy];
  v8 = [(WBSFormMetadataController *)self formAutoFillNodeForField:fieldCopy inFrame:frameCopy];

  v16 = 0;
  v17 = 0;
  [(WBSFormMetadataController *)self getMetadataForTextField:v8 inFrame:frameCopy textFieldMetadata:&v17 formMetadata:&v16 requestType:3];
  v9 = v17;
  v10 = v16;
  v11 = v16;

  objc_storeStrong(&self->_unsubmittedForm, v10);
  if (v11)
  {
    plugInFrame = [frameCopy plugInFrame];
  }

  else
  {
    plugInFrame = 0;
  }

  objc_storeStrong(&self->_unsubmittedFormFrame, plugInFrame);
  if (v11)
  {
  }

  _observer = [(_SFFormMetadataController *)self _observer];
  unsubmittedForm = self->_unsubmittedForm;
  v15 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:self->_unsubmittedFormFrame];
  [_observer didUpdateUnsubmittedForm:unsubmittedForm inFrame:v15];
}

- (void)autoFilledField:(id)field inForm:(id)form inFrame:(id)frame
{
  fieldCopy = field;
  formCopy = form;
  type = [formCopy type];
  if (type <= 5 && ((1 << type) & 0x3A) != 0)
  {
    _observer = [(_SFFormMetadataController *)self _observer];
    [_observer autoFilledField:fieldCopy inForm:formCopy];
  }
}

- (void)focusControlForStreamlinedLogin:(id)login inFrame:(id)frame
{
  self->_focusingFormForStreamlinedLogin = 1;
  v5.receiver = self;
  v5.super_class = _SFFormMetadataController;
  [(WBSFormMetadataController *)&v5 focusControlForStreamlinedLogin:login inFrame:frame];
  self->_focusingFormForStreamlinedLogin = 0;
}

- (void)_willNavigateFrameWithUnsubmittedForm:(id)form
{
  formCopy = form;
  if (self->_unsubmittedForm)
  {
    v10 = formCopy;
    IsDescendantOfFrame = frameIsDescendantOfFrame(self->_unsubmittedFormFrame, formCopy);
    formCopy = v10;
    if (IsDescendantOfFrame)
    {
      _observer = [(_SFFormMetadataController *)self _observer];
      v7 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:self->_unsubmittedFormFrame];
      [_observer willNavigateFrame:v7 withUnsubmittedForm:self->_unsubmittedForm];

      unsubmittedForm = self->_unsubmittedForm;
      self->_unsubmittedForm = 0;

      unsubmittedFormFrame = self->_unsubmittedFormFrame;
      self->_unsubmittedFormFrame = 0;

      formCopy = v10;
    }
  }
}

- (void)didStartProvisionalLoadForFrame:(id)frame
{
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_pageController);
  mainFrame = [WeakRetained mainFrame];

  if (mainFrame == frameCopy)
  {
    self->_shouldListenForFormChanges = 0;
  }

  [(_SFFormMetadataController *)self _willNavigateFrameWithUnsubmittedForm:frameCopy];
}

- (void)didSameDocumentNavigation:(int64_t)navigation inFrame:(id)frame
{
  if (navigation)
  {
    [(_SFFormMetadataController *)self _willNavigateFrameWithUnsubmittedForm:frame];
  }
}

- (void)_checkSearchURLTemplateStringInFrame:(id)frame autoFillFrame:(id)fillFrame autoFillNode:(id)node controller:(id)controller
{
  v27 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  fillFrameCopy = fillFrame;
  controllerCopy = controller;
  if (node)
  {
    [(WBSFormMetadataController *)self visibleNonEmptyTextFieldsInForm:node inFrame:fillFrameCopy];
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
          isHTMLInputElementUserEdited = [v20 isHTMLInputElementUserEdited];
          if (v19 && (isHTMLInputElementUserEdited & 1) != 0)
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
        v19 = [(WBSFormMetadataController *)self formSubmissionURLStringForSearchTextField:v15 inFrame:fillFrameCopy useStrictDetection:1];
        if (v19)
        {
          [(_SFFormMetadataController *)self didFindSearchURLTemplateString:v19 inFrame:frameCopy pageController:controllerCopy];
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

- (void)_webProcessPlugInBrowserContextController:(id)controller textDidChangeInTextField:(id)field inFrame:(id)frame initiatedByUserTyping:(BOOL)typing
{
  controllerCopy = controller;
  fieldCopy = field;
  frameCopy = frame;
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
    v18 = fieldCopy;
    v19 = frameCopy;
    [(WBSBlockCoalescer *)v16 scheduleBlock:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

- (id)_webProcessPlugInBrowserContextController:(id)controller willBeginInputSessionForElement:(id)element inFrame:(id)frame userIsInteracting:(BOOL)interacting
{
  interactingCopy = interacting;
  v34[3] = *MEMORY[0x1E69E9840];
  elementCopy = element;
  frameCopy = frame;
  v11 = self->_focusingFormForStreamlinedLogin || self->_pendingBeginningInputSessionForControlAfterFilling;
  self->_pendingBeginningInputSessionForControlAfterFilling = 0;
  if (!-[WBSFormMetadataController isCurrentlyFilling](self, "isCurrentlyFilling") && (([elementCopy isTextField] & 1) != 0 || objc_msgSend(elementCopy, "isSelectElement")) && (interactingCopy || v11 || GSEventIsHardwareKeyboardAttached() || (WeakRetained = objc_loadWeakRetained(&self->_pageController), objc_msgSend(WeakRetained, "webProcessPlugIn"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "plugInController"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "parameters"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "valueForKey:", @"launchedToTest"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "BOOLValue"), v17, v16, v15, v14, WeakRetained, v18)))
  {
    v19 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:frameCopy];
    v20 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:elementCopy];
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
      serializedData = [v21 serializedData];
      v34[0] = serializedData;
      v33[1] = @"form";
      serializedData2 = [v22 serializedData];
      v34[1] = serializedData2;
      v33[2] = @"frame";
      v24 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:frameCopy];
      serializedData3 = [(SFFormAutoFillFrameHandle *)v24 serializedData];
      v34[2] = serializedData3;
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

- (void)_webProcessPlugInBrowserContextController:(id)controller willSendSubmitEventToForm:(id)form inFrame:(id)frame targetFrame:(id)targetFrame values:(id)values
{
  frameCopy = frame;
  formCopy = form;
  v19 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:frameCopy];
  v11 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:formCopy];

  [(WBSFormMetadataController *)self willSendSubmitEventForForm:v11 inFrame:v19];
  v12 = [(WBSFormMetadataController *)self metadataForForm:v11 inFrame:v19 requestType:0];
  unsubmittedForm = self->_unsubmittedForm;
  self->_unsubmittedForm = v12;

  unsubmittedFormFrame = self->_unsubmittedFormFrame;
  self->_unsubmittedFormFrame = frameCopy;
  v15 = frameCopy;

  _observer = [(_SFFormMetadataController *)self _observer];
  v17 = self->_unsubmittedForm;
  v18 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:self->_unsubmittedFormFrame];
  [_observer didUpdateUnsubmittedForm:v17 inFrame:v18];
}

- (id)_webProcessPlugInBrowserContextController:(id)controller willSubmitForm:(id)form toFrame:(id)frame fromFrame:(id)fromFrame withValues:(id)values
{
  v31[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  frameCopy = frame;
  fromFrameCopy = fromFrame;
  formCopy = form;
  v15 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:fromFrameCopy];
  v16 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:formCopy];

  v17 = [(WBSFormMetadataController *)self metadataForForm:v16 inFrame:v15 requestType:0 addUserEditedStateForUserNameAndPasswordFields:1];
  if (v17)
  {
    v29 = frameCopy;
    uniqueID = [(WBSFormMetadata *)self->_unsubmittedForm uniqueID];
    if (uniqueID == [v17 uniqueID])
    {
      unsubmittedForm = self->_unsubmittedForm;
      self->_unsubmittedForm = 0;

      unsubmittedFormFrame = self->_unsubmittedFormFrame;
      self->_unsubmittedFormFrame = 0;

      _observer = [(_SFFormMetadataController *)self _observer];
      [_observer didUpdateUnsubmittedForm:0 inFrame:0];
    }

    [(WBSFormMetadataController *)self willSubmitForm:v16 inFrame:v15];
    v30[0] = @"form";
    serializedData = [v17 serializedData];
    v30[1] = @"frame";
    v31[0] = serializedData;
    v23 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:fromFrameCopy];
    serializedData2 = [(SFFormAutoFillFrameHandle *)v23 serializedData];
    v31[1] = serializedData2;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

    frameCopy = v29;
  }

  else
  {
    [(WBSFormMetadataController *)self willSubmitForm:v16 inFrame:v15];
    v25 = 0;
  }

  mainFrame = [controllerCopy mainFrame];

  if (mainFrame == fromFrameCopy)
  {
    v27 = [(WBSFormMetadataController *)self visibleNonEmptyTextFieldsInForm:v16 inFrame:v15];
    if ([v27 count])
    {
      [(_SFFormMetadataController *)self _checkSearchURLTemplateStringInFrame:frameCopy autoFillFrame:v15 autoFillNode:v16 controller:controllerCopy];
    }
  }

  return v25;
}

@end