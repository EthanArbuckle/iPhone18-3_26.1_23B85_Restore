@interface CTXPCGetCarrierSetupItemsRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetCarrierSetupItemsRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__CTXPCGetCarrierSetupItemsRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45F78;
  v8 = completionHandlerCopy;
  v6 = completionHandlerCopy;
  [handler getCarrierSetupWithCompletion:v7];
}

void __80__CTXPCGetCarrierSetupItemsRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [[CTXPCGetCarrierSetupItemsResponse alloc] initWithList:v8];
  (*(v6 + 16))(v6, v7, v5);
}

@end