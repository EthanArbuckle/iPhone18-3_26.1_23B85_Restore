@interface INImageProxyInjectionOperation
- (void)start;
@end

@implementation INImageProxyInjectionOperation

- (void)start
{
  self->_isExecuting = 1;
  v3 = [(INImageProxyInjectionOperation *)self injector];
  v4 = [(INImageProxyInjectionOperation *)self imageProxyRequestBlock];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__INImageProxyInjectionOperation_start__block_invoke;
  v5[3] = &unk_1E7285B78;
  v5[4] = self;
  [v3 _injectProxiesForImages:v4 completion:v5];
}

void __39__INImageProxyInjectionOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) willChangeValueForKey:@"isExecuting"];
  *(*(a1 + 32) + 249) = 0;
  [*(a1 + 32) didChangeValueForKey:@"isExecuting"];
  v3 = [*(a1 + 32) copyReturnBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) copyReturnBlock];
    (v4)[2](v4, v7);
  }

  [*(a1 + 32) willChangeValueForKey:@"isFinished"];
  *(*(a1 + 32) + 248) = 1;
  [*(a1 + 32) didChangeValueForKey:@"isFinished"];
  v5 = [*(a1 + 32) completionBlock];

  if (v5)
  {
    v6 = [*(a1 + 32) completionBlock];
    v6[2]();
  }
}

@end