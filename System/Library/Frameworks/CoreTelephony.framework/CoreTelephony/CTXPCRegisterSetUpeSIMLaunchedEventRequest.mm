@interface CTXPCRegisterSetUpeSIMLaunchedEventRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCRegisterSetUpeSIMLaunchedEventRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__CTXPCRegisterSetUpeSIMLaunchedEventRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v8 = completionHandlerCopy;
  v6 = completionHandlerCopy;
  [handler registerSetUpeSIMLaunchedEvent:v7];
}

@end