@interface SFInjectedJavaScriptFormAutoFiller
@end

@implementation SFInjectedJavaScriptFormAutoFiller

void __71___SFInjectedJavaScriptFormAutoFiller_annotateForm_inFrame_withValues___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = *(v4 + 8);
    v7 = a1[6];
    v9 = v3;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    [v6 annotateForm:v5 withValues:v9 inFrame:WeakRetained webView:&__block_literal_global_16 completionHandler:v7];

    v3 = v9;
  }
}

void __82___SFInjectedJavaScriptFormAutoFiller_autoFillForm_inFrame_withGeneratedPassword___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = *(v4 + 8);
    v7 = a1[6];
    v9 = v3;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    [v6 autoFillControlsInForm:v5 withPassword:0 focusingControl:v9 inFrame:WeakRetained webView:&__block_literal_global_3 completionHandler:v7];

    v3 = v9;
  }
}

void __179___SFInjectedJavaScriptFormAutoFiller_autoFillFormAsynchronouslyInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 8);
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 73);
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __179___SFInjectedJavaScriptFormAutoFiller_autoFillFormAsynchronouslyInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke_2;
    v12[3] = &unk_1E84918E8;
    v13 = *(a1 + 64);
    [v6 autoFillFormWithValues:v5 focusFieldAfterFilling:v7 fieldToFocus:v8 fieldsToObscure:v9 shouldSubmit:v10 recursivelyClearMetadataAfterFilling:0 inFrame:v3 webView:WeakRetained completionHandler:v12];
  }
}

void __179___SFInjectedJavaScriptFormAutoFiller_autoFillFormAsynchronouslyInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

void __113___SFInjectedJavaScriptFormAutoFiller_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 8);
    v7 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __113___SFInjectedJavaScriptFormAutoFiller_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke_2;
    v9[3] = &unk_1E8491938;
    v10 = *(a1 + 48);
    [v6 autoFillFieldsWithOneTimeCode:v5 shouldSubmit:v7 inFrame:v3 webView:WeakRetained completionHandler:v9];
  }
}

void __113___SFInjectedJavaScriptFormAutoFiller_autoFillOneTimeCodeFieldsInFrame_withValue_shouldSubmit_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, a3, a4);
  }
}

void __108___SFInjectedJavaScriptFormAutoFiller_automaticPasswordSheetDimissedInFrame_focusedPasswordControlUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v7[0] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 blurControls:v5 inFrame:v3 webView:WeakRetained completionHandler:&__block_literal_global_8];
  }
}

void __110___SFInjectedJavaScriptFormAutoFiller_clearFieldsAndSetFormControlsToNotAutoFilled_inFrame_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(v4 + 8);
    v8 = v3;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    [v6 clearAndResetAutoFillStatusOfControls:v5 inFrame:v8 webView:WeakRetained completionHandler:&__block_literal_global_13];

    v3 = v8;
  }
}

void __96___SFInjectedJavaScriptFormAutoFiller_collectAllFormsMetadataWithRequestType_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) _dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:a2 andFormsMetadata:a3];
  (*(v3 + 16))(v3);
}

void __84___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForPageLevelAutoFillAtURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:a2 andFormsMetadata:a3];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained didCollectFormMetadataForPageLevelAutoFill:v5 atURL:*(a1 + 40)];
}

void __77___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForPrefillingAtURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:a2 andFormsMetadata:a3];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained didCollectFormMetadataForPreFilling:v5 atURL:*(a1 + 40)];
}

void __74___SFInjectedJavaScriptFormAutoFiller_collectFormMetadataForTestingAtURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:a2 andFormsMetadata:a3];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained didCollectFormMetadataForPreFilling:v5 atURL:*(a1 + 40)];
}

void __69___SFInjectedJavaScriptFormAutoFiller_collectURLsForPrefillingAtURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames:a2 andFormsMetadata:a3];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained didCollectFormMetadataForPreFilling:v5 atURL:*(a1 + 40)];
}

void __79___SFInjectedJavaScriptFormAutoFiller_focusControlForStreamlinedLogin_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [MEMORY[0x1E69C9768] sharedController];
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [v4 focusControlForStreamlinedLogin:v5 inFrame:v7 webView:WeakRetained completionHandler:&__block_literal_global_16];

    v3 = v7;
  }
}

void __95___SFInjectedJavaScriptFormAutoFiller_getMetadataForTextField_inFrame_atURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69C9768] sharedController];
    v5 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __95___SFInjectedJavaScriptFormAutoFiller_getMetadataForTextField_inFrame_atURL_completionHandler___block_invoke_2;
    v7[3] = &unk_1E8491A00;
    v8 = *(a1 + 48);
    [v4 metadataForControl:v5 andContainingFormInFrame:v3 webView:WeakRetained completionHandler:v7];
  }
}

void __92___SFInjectedJavaScriptFormAutoFiller_setAutoFillSpinnerVisibility_textFieldMetadata_frame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = *(*(a1 + 32) + 8);
    v5 = [*(a1 + 40) uniqueID];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 showAutoFillButtonOfType:5 inControlIfFocused:v5 inFrame:v7 webView:WeakRetained completionHandler:&__block_literal_global_19];

    v3 = v7;
  }
}

void __91___SFInjectedJavaScriptFormAutoFiller_setFormControls_areAutoFilled_andClearField_inFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = objc_loadWeakRetained((*(a1 + 40) + 16));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91___SFInjectedJavaScriptFormAutoFiller_setFormControls_areAutoFilled_andClearField_inFrame___block_invoke_2;
    v10[3] = &unk_1E8491A50;
    objc_copyWeak(&v14, (a1 + 48));
    v11 = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 40);
    v12 = v8;
    v13 = v9;
    [WeakRetained setControls:v6 asAutoFilled:v5 inFrame:v8 webView:v7 completionHandler:v10];

    objc_destroyWeak(&v14);
  }
}

void __91___SFInjectedJavaScriptFormAutoFiller_setFormControls_areAutoFilled_andClearField_inFrame___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = objc_loadWeakRetained((*(a1 + 48) + 16));
  [WeakRetained clearControls:v2 inFrame:v3 webView:v4 completionHandler:&__block_literal_global_21];
}

void __116___SFInjectedJavaScriptFormAutoFiller_setStrongPasswordElementViewableIfAppropriate_frame_passwordControlUniqueIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v8 = v3;
    v4 = [MEMORY[0x1E69C9768] sharedController];
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [v4 setStrongPasswordElements:v6 viewableIfAppropriate:v5 inFrame:v8 webView:WeakRetained completionHandler:&__block_literal_global_23];

    v3 = v8;
  }
}

void __223___SFInjectedJavaScriptFormAutoFiller_substitutePasswordElementsWithAutomaticPasswordElementsInFrame_formID_focusedPasswordControlUniqueID_passwordControlUniqueIDs_automaticPassword_blurAfterSubstitution_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = *(v4 + 8);
    v7 = a1[7];
    v8 = a1[6];
    v10 = v3;
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    [v6 autoFillControlsInForm:v5 withPassword:v8 focusingControl:v10 inFrame:WeakRetained webView:&__block_literal_global_25_0 completionHandler:v7];

    v3 = v10;
  }
}

void __117___SFInjectedJavaScriptFormAutoFiller__dictionaryOfFramesToFormsMetadataWithParallelArraysOfFrames_andFormsMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[SFFormAutoFillFrameHandle alloc] initWithFrameInfo:v8];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:? forKeyedSubscript:?];
  }

  [v7 addObject:v5];
}

@end