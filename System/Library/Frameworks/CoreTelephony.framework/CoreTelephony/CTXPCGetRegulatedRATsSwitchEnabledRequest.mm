@interface CTXPCGetRegulatedRATsSwitchEnabledRequest
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCGetRegulatedRATsSwitchEnabledRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__CTXPCGetRegulatedRATsSwitchEnabledRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A460B8;
  v9 = completionHandlerCopy;
  v11 = v9;
  [handlerCopy getRegulatedRatsSwitchEnabled:context completion:v10];
}

void __89__CTXPCGetRegulatedRATsSwitchEnabledRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[CTXPCGetRegulatedRATsSwitchEnabledResponse alloc] initWithIsEnabled:a2];
  }

  (*(*(a1 + 32) + 16))();
}

@end