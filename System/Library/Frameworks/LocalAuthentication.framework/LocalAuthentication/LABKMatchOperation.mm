@interface LABKMatchOperation
@end

@implementation LABKMatchOperation

void __70___LABKMatchOperation_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_LABKMatchResultInfo);
  v3 = objc_opt_new();
  [(_LABKMatchResultInfo *)v2 setIdentity:v3];

  v9 = 1;
  v4 = [*(a1 + 32) device];
  [v4 bioLockoutState:&v9 forUser:0 error:0];

  [(_LABKMatchResultInfo *)v2 setLockoutState:v9];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___LABKMatchOperation_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  v7[3] = &unk_1E77CBA88;
  v7[4] = v5;
  v8 = v2;
  v6 = v2;
  [v5 dispatchDelegateSelector:sel_matchOperation_matchedWithResult_ block:v7];
}

void __70___LABKMatchOperation_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 matchOperation:*(a1 + 32) matchedWithResult:*(a1 + 40)];
}

@end