@interface LABKOperation
@end

@implementation LABKOperation

void __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) presenceStateChanged:{objc_msgSend(*(a1 + 32), "isUserPresent")}];
}

void __65___LABKOperation_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 operation:*(a1 + 32) stateChanged:4];
}

void __33___LABKOperation_startWithReply___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a1[4];
  v8 = a3;
  v6 = objc_opt_class();
  v7 = @"YES";
  if (!a2)
  {
    v7 = v8;
  }

  [_LABKLog logClass:v6 selector:a1[6] message:@"started: %@", v7];
  (*(a1[5] + 16))();
}

@end