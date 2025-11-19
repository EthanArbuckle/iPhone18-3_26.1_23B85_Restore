@interface WKWebView
@end

@implementation WKWebView

uint64_t __78__WKWebView_SafariServicesExtras__webui_preventNavigationDuringAutoFillPrompt__block_invoke(uint64_t a1)
{
  [*(a1 + 32) becomeFirstResponder];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke(uint64_t a1)
{
  [*(a1 + 32) insertText:@"\n"];
  v2 = *(a1 + 32);

  return [v2 clearSelection];
}

void __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _simulatedBEKeyEntryForReturnKeyWithType:5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke_3;
  v4[3] = &unk_1E8495920;
  v5 = *(a1 + 32);
  [v2 handleKeyEntry:v3 withCompletionHandler:v4];
}

uint64_t __84__WKWebView_SafariServicesExtras___sf_endEditingAndSimulateCarriageReturnKeyEvents___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) insertText:@"\n"];
  v2 = *(a1 + 32);

  return [v2 setSelectedTextRange:0];
}

@end