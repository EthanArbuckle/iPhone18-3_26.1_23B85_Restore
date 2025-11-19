@interface WBSAppLink
@end

@implementation WBSAppLink

void __95__WBSAppLink_SafariServicesExtras___sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __95__WBSAppLink_SafariServicesExtras___sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread___block_invoke_2;
  v2[3] = &unk_1E84953E8;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __95__WBSAppLink_SafariServicesExtras___sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread___block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end