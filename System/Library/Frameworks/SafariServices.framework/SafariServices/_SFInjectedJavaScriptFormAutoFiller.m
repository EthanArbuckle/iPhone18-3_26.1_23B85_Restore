@interface _SFInjectedJavaScriptFormAutoFiller
- (WKWebView)webView;
- (_SFFormAutoFillController)formAutoFillController;
- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)a3 formAutoFillController:(id)a4;
- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)a3 formAutoFillController:(id)a4 injectionController:(id)a5;
- (id)_dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:(id)a3 andFormsMetadata:(id)a4;
- (void)annotateForm:(int64_t)a3 inFrame:(id)a4 withValues:(id)a5;
- (void)autoFillForm:(int64_t)a3 inFrame:(id)a4 withGeneratedPassword:(id)a5;
- (void)autoFillFormAsynchronouslyInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10;
- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5 completionHandler:(id)a6;
- (void)automaticPasswordSheetDimissedInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4;
- (void)clearAutoFillMetadata;
- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5;
- (void)collectAllFormsMetadataWithRequestType:(unint64_t)a3 completionHandler:(id)a4;
- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)a3;
- (void)collectFormMetadataForPrefillingAtURL:(id)a3;
- (void)collectFormMetadataForTestingAtURL:(id)a3;
- (void)collectURLsForPrefillingAtURL:(id)a3;
- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4;
- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 atURL:(id)a5 completionHandler:(id)a6;
- (void)setAutoFillSpinnerVisibility:(BOOL)a3 textFieldMetadata:(id)a4 frame:(id)a5;
- (void)setFormControls:(id)a3 areAutoFilled:(BOOL)a4 andClearField:(id)a5 inFrame:(id)a6;
- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5;
- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)a3 formID:(int64_t)a4 focusedPasswordControlUniqueID:(id)a5 passwordControlUniqueIDs:(id)a6 automaticPassword:(id)a7 blurAfterSubstitution:(BOOL)a8 completionHandler:(id)a9;
@end

@implementation _SFInjectedJavaScriptFormAutoFiller

- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)a3 formAutoFillController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69C9768] sharedController];
  v9 = [(_SFInjectedJavaScriptFormAutoFiller *)self initWithWebView:v6 formAutoFillController:v7 injectionController:v8];

  return v9;
}

- (_SFInjectedJavaScriptFormAutoFiller)initWithWebView:(id)a3 formAutoFillController:(id)a4 injectionController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _SFInjectedJavaScriptFormAutoFiller;
  v11 = [(_SFInjectedJavaScriptFormAutoFiller *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_webView, v8);
    objc_storeWeak(&v12->_formAutoFillController, v9);
    objc_storeStrong(&v12->_injectionController, a5);
    v13 = v12;
  }

  return v12;
}

- (void)annotateForm:(int64_t)a3 inFrame:(id)a4 withValues:(id)a5
{
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v11 = [v8 frameHandle];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71___SFInjectedJavaScriptFormAutoFiller_annotateForm_inFrame_withValues___block_invoke;
  v13[3] = &unk_1E84918C0;
  v13[4] = self;
  v15 = a3;
  v12 = v9;
  v14 = v12;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v11 completionHandler:v13];
}

- (void)autoFillForm:(int64_t)a3 inFrame:(id)a4 withGeneratedPassword:(id)a5
{
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v11 = [v8 frameHandle];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82___SFInjectedJavaScriptFormAutoFiller_autoFillForm_inFrame_withGeneratedPassword___block_invoke;
  v13[3] = &unk_1E84918C0;
  v13[4] = self;
  v15 = a3;
  v12 = v9;
  v14 = v12;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v11 completionHandler:v13];
}

- (void)autoFillFormAsynchronouslyInFrame:(id)a3 withValues:(id)a4 setAutoFilled:(BOOL)a5 focusFieldAfterFilling:(BOOL)a6 fieldToFocus:(id)a7 fieldsToObscure:(id)a8 submitForm:(BOOL)a9 completionHandler:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v19 = a10;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v21 = [v15 frameHandle];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __179___SFInjectedJavaScriptFormAutoFiller_autoFillFormAsynchronouslyInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke;
  v26[3] = &unk_1E8491910;
  v26[4] = self;
  v22 = v16;
  v27 = v22;
  v31 = a6;
  v23 = v17;
  v28 = v23;
  v24 = v18;
  v29 = v24;
  v32 = a9;
  v25 = v19;
  v30 = v25;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v21 completionHandler:v26];
}

- (void)autoFillOneTimeCodeFieldsInFrame:(id)a3 withValue:(id)a4 shouldSubmit:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v14 = [v10 frameHandle];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __113___SFInjectedJavaScriptFormAutoFiller_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke;
  v17[3] = &unk_1E8491960;
  v17[4] = self;
  v15 = v11;
  v18 = v15;
  v20 = a5;
  v16 = v12;
  v19 = v16;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v14 completionHandler:v17];
}

- (void)automaticPasswordSheetDimissedInFrame:(id)a3 focusedPasswordControlUniqueID:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v9 = [v6 frameHandle];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108___SFInjectedJavaScriptFormAutoFiller_automaticPasswordSheetDimissedInFrame_focusedPasswordControlUniqueID___block_invoke;
  v11[3] = &unk_1E8491988;
  v11[4] = self;
  v10 = v7;
  v12 = v10;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v9 completionHandler:v11];
}

- (void)clearAutoFillMetadata
{
  injectionController = self->_injectionController;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  [WBSAutoFillJavaScriptInjectionController resetMetadataCachesInAllFramesInWebView:"resetMetadataCachesInAllFramesInWebView:completionHandler:" completionHandler:?];
}

- (void)clearFieldsAndSetFormControlsToNotAutoFilled:(id)a3 inFrame:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v10 = [v8 frameHandle];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110___SFInjectedJavaScriptFormAutoFiller_clearFieldsAndSetFormControlsToNotAutoFilled_inFrame_completionHandler___block_invoke;
  v12[3] = &unk_1E8491988;
  v12[4] = self;
  v11 = v7;
  v13 = v11;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v10 completionHandler:v12];
}

- (void)collectAllFormsMetadataWithRequestType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96___SFInjectedJavaScriptFormAutoFiller_collectAllFormsMetadataWithRequestType_completionHandler___block_invoke;
  v10[3] = &unk_1E84919B0;
  v9 = v6;
  v10[4] = self;
  v11 = v9;
  [v7 metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:a3 completionHandler:v10];
}

- (void)collectFormMetadataForPageLevelAutoFillAtURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForPageLevelAutoFillAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v5 metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:0 completionHandler:v8];
}

- (void)collectFormMetadataForPrefillingAtURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForPrefillingAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v5 metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:1 completionHandler:v8];
}

- (void)collectFormMetadataForTestingAtURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForTestingAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v5 metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:2 completionHandler:v8];
}

- (void)collectURLsForPrefillingAtURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C9768] sharedController];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69___SFInjectedJavaScriptFormAutoFiller_collectURLsForPrefillingAtURL___block_invoke;
  v8[3] = &unk_1E84919D8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  [v5 metadataForAllFormsInAllFramesOfWebView:WeakRetained requestType:1 completionHandler:v8];
}

- (void)focusControlForStreamlinedLogin:(id)a3 inFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v9 = [v7 frameHandle];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79___SFInjectedJavaScriptFormAutoFiller_focusControlForStreamlinedLogin_inFrame___block_invoke;
  v11[3] = &unk_1E8491988;
  v10 = v6;
  v12 = v10;
  v13 = self;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v9 completionHandler:v11];
}

- (void)getMetadataForTextField:(id)a3 inFrame:(id)a4 atURL:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v13 = [v10 frameHandle];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95___SFInjectedJavaScriptFormAutoFiller_getMetadataForTextField_inFrame_atURL_completionHandler___block_invoke;
  v16[3] = &unk_1E8491A28;
  v14 = v9;
  v17 = v14;
  v18 = self;
  v15 = v11;
  v19 = v15;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v13 completionHandler:v16];
}

- (void)setAutoFillSpinnerVisibility:(BOOL)a3 textFieldMetadata:(id)a4 frame:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v10 = [v8 frameHandle];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92___SFInjectedJavaScriptFormAutoFiller_setAutoFillSpinnerVisibility_textFieldMetadata_frame___block_invoke;
  v12[3] = &unk_1E8491988;
  v12[4] = self;
  v11 = v7;
  v13 = v11;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v10 completionHandler:v12];
}

- (void)setFormControls:(id)a3 areAutoFilled:(BOOL)a4 andClearField:(id)a5 inFrame:(id)a6
{
  v9 = a3;
  v10 = a6;
  objc_initWeak(&location, self->_injectionController);
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v12 = [v10 frameHandle];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91___SFInjectedJavaScriptFormAutoFiller_setFormControls_areAutoFilled_andClearField_inFrame___block_invoke;
  v14[3] = &unk_1E8491A78;
  objc_copyWeak(&v17, &location);
  v13 = v9;
  v18 = a4;
  v15 = v13;
  v16 = self;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v12 completionHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)setStrongPasswordElementViewableIfAppropriate:(BOOL)a3 frame:(id)a4 passwordControlUniqueIDs:(id)a5
{
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v11 = [v8 frameHandle];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116___SFInjectedJavaScriptFormAutoFiller_setStrongPasswordElementViewableIfAppropriate_frame_passwordControlUniqueIDs___block_invoke;
  v13[3] = &unk_1E8491AA0;
  v12 = v9;
  v16 = a3;
  v14 = v12;
  v15 = self;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v11 completionHandler:v13];
}

- (void)substitutePasswordElementsWithAutomaticPasswordElementsInFrame:(id)a3 formID:(int64_t)a4 focusedPasswordControlUniqueID:(id)a5 passwordControlUniqueIDs:(id)a6 automaticPassword:(id)a7 blurAfterSubstitution:(BOOL)a8 completionHandler:(id)a9
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v17 = [v13 frameHandle];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __223___SFInjectedJavaScriptFormAutoFiller_substitutePasswordElementsWithAutomaticPasswordElementsInFrame_formID_focusedPasswordControlUniqueID_passwordControlUniqueIDs_automaticPassword_blurAfterSubstitution_completionHandler___block_invoke;
  v20[3] = &unk_1E8491AC8;
  v20[4] = self;
  v23 = a4;
  v18 = v15;
  v21 = v18;
  v19 = v14;
  v22 = v19;
  [WeakRetained safari_getFrameInfoForFrameWithHandle:v17 completionHandler:v20];
}

- (id)_dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:(id)a3 andFormsMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __117___SFInjectedJavaScriptFormAutoFiller__dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames_andFormsMetadata___block_invoke;
  v10[3] = &unk_1E8491AF0;
  v8 = v7;
  v11 = v8;
  [v5 safari_enumerateZippedValuesWithArray:v6 withBlock:v10];

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