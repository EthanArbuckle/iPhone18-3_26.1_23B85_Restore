@interface CTXPCGetSupports5GStandaloneRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetSupports5GStandaloneRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  descriptor = [(CTXPCSubscriptionContextRequest *)self descriptor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__CTXPCGetSupports5GStandaloneRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A46018;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy getSupports5GStandalone:descriptor completion:v10];
}

void __83__CTXPCGetSupports5GStandaloneRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -[CTXPCGetSupports5GStandaloneResponse initWithSupport:]([CTXPCGetSupports5GStandaloneResponse alloc], "initWithSupport:", [v7 BOOLValue]);
  }

  (*(*(a1 + 32) + 16))();
}

@end