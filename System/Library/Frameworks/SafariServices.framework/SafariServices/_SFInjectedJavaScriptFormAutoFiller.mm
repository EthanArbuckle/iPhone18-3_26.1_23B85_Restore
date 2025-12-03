@interface _SFInjectedJavaScriptFormAutoFiller
- (WKWebView)webView;
- (_SFFormAutoFillController)formAutoFillController;
- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)view formAutoFillController:(id)controller;
- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)view formAutoFillController:(id)controller injectionController:(id)injectionController;
- (id)_dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:(id)frames andFormsMetadata:(id)metadata;
- (void)annotateForm:(int64_t)form inFrame:(id)frame withValues:(id)values;
- (void)autoFillForm:(int64_t)form inFrame:(id)frame withGeneratedPassword:(id)password;
- (void)autoFillFormAsynchronouslyInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form completionHandler:(id)self0;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)frame withValue:(id)value shouldSubmit:(BOOL)submit completionHandler:(id)handler;
- (void)automaticPasswordSheetDimissedInFrame:(id)frame focusedPasswordControlUniqueID:(id)d;
- (void)clearAutoFillMetadata;
- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)filled inFrame:(id)frame completionHandler:(id)handler;
- (void)collectAllFormsMetadataWithRequestType:(unint64_t)type completionHandler:(id)handler;
- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)l;
- (void)collectFormMetadataForPrefillingAtURL:(id)l;
- (void)collectFormMetadataForTestingAtURL:(id)l;
- (void)collectURLsForPrefillingAtURL:(id)l;
- (void)focusControlForStreamlinedLogin:(id)login inFrame:(id)frame;
- (void)getMetadataForTextField:(id)field inFrame:(id)frame atURL:(id)l completionHandler:(id)handler;
- (void)setAutoFillSpinnerVisibility:(BOOL)visibility textFieldMetadata:(id)metadata frame:(id)frame;
- (void)setFormControls:(id)controls areAutoFilled:(BOOL)filled andClearField:(id)field inFrame:(id)frame;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)appropriate frame:(id)frame passwordControlUniqueIDs:(id)ds;
- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)frame formID:(int64_t)d focusedPasswordControlUniqueID:(id)iD passwordControlUniqueIDs:(id)ds automaticPassword:(id)password blurAfterSubstitution:(BOOL)substitution completionHandler:(id)handler;
@end

@implementation _SFInjectedJavaScriptFormAutoFiller

- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)view formAutoFillController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
  v9 = [(_SFInjectedJavaScriptFormAutoFiller *)self initWithWebView:viewCopy formAutoFillController:controllerCopy injectionController:mEMORY[0x1E69C9768]];

  return v9;
}

- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)view formAutoFillController:(id)controller injectionController:(id)injectionController
{
  viewCopy = view;
  controllerCopy = controller;
  injectionControllerCopy = injectionController;
  v15.receiver = self;
  v15.super_class = _SFInjectedJavaScriptFormAutoFiller;
  v11 = [(_SFInjectedJavaScriptFormAutoFiller *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_webView, viewCopy);
    objc_storeWeak(&v12->_formAutoFillController, controllerCopy);
    objc_storeStrong(&v12->_injectionController, injectionController);
    v13 = v12;
  }

  return v12;
}

- (void)annotateForm:(int64_t)form inFrame:(id)frame withValues:(id)values
{
  frameCopy = frame;
  valuesCopy = values;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71___SFInjectedJavaScriptFormAutoFiller_annotateForm_inFrame_withValues___block_invoke;
  v13[3] = &unk_1E84918C0;
  v13[4] = self;
  formCopy = form;
  v12 = valuesCopy;
  v14 = v12;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v13];
}

- (void)autoFillForm:(int64_t)form inFrame:(id)frame withGeneratedPassword:(id)password
{
  frameCopy = frame;
  passwordCopy = password;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___SFInjectedJavaScriptFormAutoFiller_autoFillForm_inFrame_withGeneratedPassword___block_invoke;
  v13[3] = &unk_1E84918C0;
  v13[4] = self;
  formCopy = form;
  v12 = passwordCopy;
  v14 = v12;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v13];
}

- (void)autoFillFormAsynchronouslyInFrame:(id)frame withValues:(id)values setAutoFilled:(BOOL)filled focusFieldAfterFilling:(BOOL)filling fieldToFocus:(id)focus fieldsToObscure:(id)obscure submitForm:(BOOL)form completionHandler:(id)self0
{
  frameCopy = frame;
  valuesCopy = values;
  focusCopy = focus;
  obscureCopy = obscure;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __179___SFInjectedJavaScriptFormAutoFiller_autoFillFormAsynchronouslyInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke;
  v26[3] = &unk_1E8491910;
  v26[4] = self;
  v22 = valuesCopy;
  v27 = v22;
  fillingCopy = filling;
  v23 = focusCopy;
  v28 = v23;
  v24 = obscureCopy;
  v29 = v24;
  formCopy = form;
  v25 = handlerCopy;
  v30 = v25;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v26];
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)frame withValue:(id)value shouldSubmit:(BOOL)submit completionHandler:(id)handler
{
  frameCopy = frame;
  valueCopy = value;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __113___SFInjectedJavaScriptFormAutoFiller_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke;
  v17[3] = &unk_1E8491960;
  v17[4] = self;
  v15 = valueCopy;
  v18 = v15;
  submitCopy = submit;
  v16 = handlerCopy;
  v19 = v16;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v17];
}

- (void)automaticPasswordSheetDimissedInFrame:(id)frame focusedPasswordControlUniqueID:(id)d
{
  frameCopy = frame;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108___SFInjectedJavaScriptFormAutoFiller_automaticPasswordSheetDimissedInFrame_focusedPasswordControlUniqueID___block_invoke;
  v11[3] = &unk_1E8491988;
  v11[4] = self;
  v10 = dCopy;
  v12 = v10;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v11];
}

- (void)clearAutoFillMetadata
{
  injectionController = self->_injectionController;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WBSAutoFillJavaScriptInjectionController resetMetadataCachesInAllFramesInWebView:"resetMetadataCachesInAllFramesInWebView:completionHandler:" completionHandler:?];
}

- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)filled inFrame:(id)frame completionHandler:(id)handler
{
  filledCopy = filled;
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110___SFInjectedJavaScriptFormAutoFiller_clearFieldsAndSetFormControlsToNotAutoFilled_inFrame_completionHandler___block_invoke;
  v12[3] = &unk_1E8491988;
  v12[4] = self;
  v11 = filledCopy;
  v13 = v11;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v12];
}

- (void)collectAllFormsMetadataWithRequestType:(unint64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96___SFInjectedJavaScriptFormAutoFiller_collectAllFormsMetadataWithRequestType_completionHandler___block_invoke;
  v10[3] = &unk_1E84919B0;
  v9 = handlerCopy;
  v10[4] = self;
  v11 = v9;
  [mEMORY[0x1E69C9768] metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:type completionHandler:v10];
}

- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForPageLevelAutoFillAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = lCopy;
  v9 = v7;
  [mEMORY[0x1E69C9768] metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:0 completionHandler:v8];
}

- (void)collectFormMetadataForPrefillingAtURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForPrefillingAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = lCopy;
  v9 = v7;
  [mEMORY[0x1E69C9768] metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:1 completionHandler:v8];
}

- (void)collectFormMetadataForTestingAtURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForTestingAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = lCopy;
  v9 = v7;
  [mEMORY[0x1E69C9768] metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:2 completionHandler:v8];
}

- (void)collectURLsForPrefillingAtURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E69C9768] = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69___SFInjectedJavaScriptFormAutoFiller_collectURLsForPrefillingAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = lCopy;
  v9 = v7;
  [mEMORY[0x1E69C9768] metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:1 completionHandler:v8];
}

- (void)focusControlForStreamlinedLogin:(id)login inFrame:(id)frame
{
  loginCopy = login;
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79___SFInjectedJavaScriptFormAutoFiller_focusControlForStreamlinedLogin_inFrame___block_invoke;
  v11[3] = &unk_1E8491988;
  v10 = loginCopy;
  v12 = v10;
  selfCopy = self;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v11];
}

- (void)getMetadataForTextField:(id)field inFrame:(id)frame atURL:(id)l completionHandler:(id)handler
{
  fieldCopy = field;
  frameCopy = frame;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95___SFInjectedJavaScriptFormAutoFiller_getMetadataForTextField_inFrame_atURL_completionHandler___block_invoke;
  v16[3] = &unk_1E8491A28;
  v14 = fieldCopy;
  v17 = v14;
  selfCopy = self;
  v15 = handlerCopy;
  v19 = v15;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v16];
}

- (void)setAutoFillSpinnerVisibility:(BOOL)visibility textFieldMetadata:(id)metadata frame:(id)frame
{
  metadataCopy = metadata;
  frameCopy = frame;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92___SFInjectedJavaScriptFormAutoFiller_setAutoFillSpinnerVisibility_textFieldMetadata_frame___block_invoke;
  v12[3] = &unk_1E8491988;
  v12[4] = self;
  v11 = metadataCopy;
  v13 = v11;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v12];
}

- (void)setFormControls:(id)controls areAutoFilled:(BOOL)filled andClearField:(id)field inFrame:(id)frame
{
  controlsCopy = controls;
  frameCopy = frame;
  objc_initWeak(&location, self->_injectionController);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91___SFInjectedJavaScriptFormAutoFiller_setFormControls_areAutoFilled_andClearField_inFrame___block_invoke;
  v14[3] = &unk_1E8491A78;
  objc_copyWeak(&v17, &location);
  v13 = controlsCopy;
  filledCopy = filled;
  v15 = v13;
  selfCopy = self;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)appropriate frame:(id)frame passwordControlUniqueIDs:(id)ds
{
  frameCopy = frame;
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116___SFInjectedJavaScriptFormAutoFiller_setStrongPasswordElementViewableIfAppropriate_frame_passwordControlUniqueIDs___block_invoke;
  v13[3] = &unk_1E8491AA0;
  v12 = dsCopy;
  appropriateCopy = appropriate;
  v14 = v12;
  selfCopy = self;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v13];
}

- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)frame formID:(int64_t)d focusedPasswordControlUniqueID:(id)iD passwordControlUniqueIDs:(id)ds automaticPassword:(id)password blurAfterSubstitution:(BOOL)substitution completionHandler:(id)handler
{
  frameCopy = frame;
  iDCopy = iD;
  passwordCopy = password;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  frameHandle = [frameCopy frameHandle];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __223___SFInjectedJavaScriptFormAutoFiller_substitutePasswordElementsWithAutomaticPasswordElementsInFrame_formID_focusedPasswordControlUniqueID_passwordControlUniqueIDs_automaticPassword_blurAfterSubstitution_completionHandler___block_invoke;
  v20[3] = &unk_1E8491AC8;
  v20[4] = self;
  dCopy = d;
  v18 = passwordCopy;
  v21 = v18;
  v19 = iDCopy;
  v22 = v19;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:frameHandle completionHandler:v20];
}

- (id)_dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:(id)frames andFormsMetadata:(id)metadata
{
  framesCopy = frames;
  metadataCopy = metadata;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __117___SFInjectedJavaScriptFormAutoFiller__dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames_andFormsMetadata___block_invoke;
  v10[3] = &unk_1E8491AF0;
  v8 = dictionary;
  v11 = v8;
  [framesCopy safari_enumerateZippedValuesWithArray:metadataCopy withBlock:v10];

  return v8;
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (_SFFormAutoFillController)formAutoFillController
{
  WeakRetained = objc_loadWeakRetained(&self->_formAutoFillController);

  return WeakRetained;
}

@end