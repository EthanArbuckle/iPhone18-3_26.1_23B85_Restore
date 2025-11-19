@interface CTXPCGetRegulatedRATsSwitchEnabledRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetRegulatedRATsSwitchEnabledRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self context];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __89__CTXPCGetRegulatedRATsSwitchEnabledRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A460B8;
  v9 = v7;
  v11 = v9;
  [v6 getRegulatedRatsSwitchEnabled:v8 completion:v10];
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