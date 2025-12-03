@interface CTXPCGetRegistrationDisplayStatusRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetRegistrationDisplayStatusRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__CTXPCGetRegistrationDisplayStatusRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A48828;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy copyRegistrationDisplayStatus:context completion:v10];
}

void __88__CTXPCGetRegistrationDisplayStatusRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [[CTXPCGetRegistrationDisplayStatusResponse alloc] initWithStatus:v7];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end