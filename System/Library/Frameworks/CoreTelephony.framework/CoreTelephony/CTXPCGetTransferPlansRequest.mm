@interface CTXPCGetTransferPlansRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetTransferPlansRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__CTXPCGetTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45ED8;
  v8 = completionHandlerCopy;
  v6 = completionHandlerCopy;
  [handler getTransferPlansWithCompletion:v7];
}

void __76__CTXPCGetTransferPlansRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v7 = a4;
  v8 = [[CTXPCGetTransferPlansResponse alloc] initWithRemtoeDevices:v9 isFlexPolicyOn:a3];
  (*(*(a1 + 32) + 16))();
}

@end