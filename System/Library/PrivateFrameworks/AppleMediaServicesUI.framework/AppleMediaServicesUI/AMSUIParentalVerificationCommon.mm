@interface AMSUIParentalVerificationCommon
+ (id)_promiseToPromptAfterFailureWithBag:(id)a3 viewController:(id)a4 metrics:(id)a5 pageID:(id)a6 flowName:(id)a7;
@end

@implementation AMSUIParentalVerificationCommon

+ (id)_promiseToPromptAfterFailureWithBag:(id)a3 viewController:(id)a4 metrics:(id)a5 pageID:(id)a6 flowName:(id)a7
{
  v11 = a5;
  v12 = a6;
  v39 = a7;
  v13 = MEMORY[0x1E696AAE8];
  v14 = a4;
  v15 = a3;
  v16 = [v13 bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v38 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_ID_CARD_FAILED_TITLE", v15, v16);

  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v37 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_ID_CARD_FAILED_MESSAGE", v15, v17);

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v19 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_ID_CARD_FAILED_CONTINUE_BUTTON_TITLE", v15, v18);

  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v21 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_ID_CARD_FAILED_CANCEL_BUTTON_TITLE", v15, v20);

  v22 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v23 = [objc_alloc(MEMORY[0x1E698C8C0]) initWithTitle:v38 message:v37];
  v24 = v21;
  v25 = [MEMORY[0x1E698C8B8] actionWithTitle:v21 identifier:@"cancelButtonID"];
  [v23 addButtonAction:v25];

  v26 = [MEMORY[0x1E698C8B8] actionWithTitle:v19 identifier:@"continueButtonID"];
  [v23 addButtonAction:v26];

  v27 = [[AMSUIAlertDialogTask alloc] initWithRequest:v23 presentingViewController:v14];
  [v11 enqueueEventWithPageId:v12 displayReason:0];
  v28 = [(AMSUIAlertDialogTask *)v27 present];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __110__AMSUIParentalVerificationCommon__promiseToPromptAfterFailureWithBag_viewController_metrics_pageID_flowName___block_invoke;
  v40[3] = &unk_1E7F254F0;
  v41 = v23;
  v42 = @"cancelButtonID";
  v29 = v22;
  v43 = v29;
  v44 = v11;
  v45 = v12;
  v46 = v39;
  v30 = v39;
  v31 = v12;
  v32 = v11;
  v33 = v23;
  [v28 addFinishBlock:v40];

  v34 = v46;
  v35 = v29;

  return v29;
}

void __110__AMSUIParentalVerificationCommon__promiseToPromptAfterFailureWithBag_viewController_metrics_pageID_flowName___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [a2 selectedActionIdentifier];
  v5 = [v3 locateActionWithIdentifier:v4];

  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    v8 = *(a1 + 48);
    v9 = *MEMORY[0x1E698C548];
    v16 = @"really_cancelled";
    v17[0] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = AMSCustomError();
    [v8 finishWithError:v11];

    [*(a1 + 56) enqueueEventWithTargetId:@"Cancel" pageId:*(a1 + 64) displayReason:0];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ failed for parental verification, moving on to next method", *(a1 + 72)];
    v13 = *(a1 + 48);
    v14 = AMSError();
    [v13 finishWithError:v14];

    [*(a1 + 56) enqueueEventWithTargetId:@"Continue" pageId:*(a1 + 64) displayReason:0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end