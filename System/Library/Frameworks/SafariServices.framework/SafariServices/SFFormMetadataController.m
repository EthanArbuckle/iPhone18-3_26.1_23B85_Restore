@interface SFFormMetadataController
@end

@implementation SFFormMetadataController

void __68___SFFormMetadataController_collectFormMetadataForPageLevelAutoFill__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 _observer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v6 = [WeakRetained mainFrame];
  v7 = [v6 URL];
  [v8 didCollectFormMetadataForPageLevelAutoFill:v4 atURL:v7];
}

void __63___SFFormMetadataController__collectFormMetadataForPreFilling___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _observer];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v7 = [WeakRetained mainFrame];
  v8 = [v7 URL];
  [v5 didCollectFormMetadataForPreFilling:v4 atURL:v8];

  *(*(a1 + 32) + 72) = 1;
}

void __104___SFFormMetadataController_collectFormMetadataWithRequestType_ignoreAutoFilledForms_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = [a2 plugInFrame];
  v5 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v8];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  if (*(a1 + 56) != 1 || ([*(a1 + 48) _formContainsAutoFilledElements:v7] & 1) == 0)
  {
    [v6 addObject:v7];
  }
}

void __155___SFFormMetadataController_autoFillFormInFrame_withValues_setAutoFilled_focusFieldAfterFilling_fieldToFocus_fieldsToObscure_submitForm_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v6 = [*(a1 + 32) plugInFrame];
  objc_storeStrong((*(a1 + 40) + 80), a2);
  objc_storeStrong((*(a1 + 40) + 88), v6);
  *(*(a1 + 40) + 97) = *(a1 + 56);
  v7 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:v6];
  [*(*(a1 + 40) + 64) didUpdateUnsubmittedForm:*(*(a1 + 40) + 80) inFrame:v7];
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v9, a3);
  }
}

void __99___SFFormMetadataController_fillForm_inFrame_withPassword_focusedFieldControlID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) formElementWithFormID:*(a1 + 40) inFrame:*(a1 + 56)];
  v4 = [*(a1 + 32) metadataForForm:v3 inFrame:*(a1 + 40) requestType:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v7 = [*(a1 + 40) plugInFrame];
  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  *(v8 + 88) = v7;

  v10 = [*(a1 + 32) _observer];
  v11 = *(*(a1 + 32) + 80);
  v12 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:*(*(a1 + 32) + 88)];
  [v10 didFillGeneratedPasswordInForm:v11 inFrame:v12];

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v14);
  }
}

void __126___SFFormMetadataController__webProcessPlugInBrowserContextController_textDidChangeInTextField_inFrame_initiatedByUserTyping___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [SFFormAutoFillNode autoFillNodeWithNodeHandle:*(a1 + 32)];
    v4 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:*(a1 + 40)];
    v11 = 0;
    v12 = 0;
    [WeakRetained getMetadataForTextField:v3 inFrame:v4 textFieldMetadata:&v12 formMetadata:&v11 requestType:3];
    v5 = v12;
    v6 = v11;
    v7 = v11;

    objc_storeStrong(WeakRetained + 10, v6);
    if (v7)
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(WeakRetained + 11, v8);
    v9 = [WeakRetained _observer];
    v10 = [[SFFormAutoFillFrameHandle alloc] initWithWebProcessPlugInFrame:*(a1 + 40)];
    [v9 textDidChangeInTextField:v5 inForm:v7 inFrame:v10];
  }
}

@end