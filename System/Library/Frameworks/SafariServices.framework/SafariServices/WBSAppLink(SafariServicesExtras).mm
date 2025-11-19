@interface WBSAppLink(SafariServicesExtras)
- (void)_sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:()SafariServicesExtras;
@end

@implementation WBSAppLink(SafariServicesExtras)

- (void)_sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread:()SafariServicesExtras
{
  v4 = a3;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__10;
  v6[4] = __Block_byref_object_dispose__10;
  v7 = _Block_copy(v4);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__WBSAppLink_SafariServicesExtras___sf_decideOpenStrategyAndCallCompletionHandlerOnMainThread___block_invoke;
  v5[3] = &unk_1E8495410;
  v5[4] = v6;
  [a1 decideOpenStrategyWithCompletionHandler:v5];
  _Block_object_dispose(v6, 8);
}

@end