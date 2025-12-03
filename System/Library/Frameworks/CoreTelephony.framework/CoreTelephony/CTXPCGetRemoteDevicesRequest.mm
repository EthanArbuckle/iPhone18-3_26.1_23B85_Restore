@interface CTXPCGetRemoteDevicesRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetRemoteDevicesRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__CTXPCGetRemoteDevicesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45FA0;
  v8 = completionHandlerCopy;
  v6 = completionHandlerCopy;
  [handler getRemoteDevices:v7];
}

void __76__CTXPCGetRemoteDevicesRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[CTXPCGetRemoteDevicesResponse alloc] initWithList:v7];
  (*(*(a1 + 32) + 16))();
}

@end