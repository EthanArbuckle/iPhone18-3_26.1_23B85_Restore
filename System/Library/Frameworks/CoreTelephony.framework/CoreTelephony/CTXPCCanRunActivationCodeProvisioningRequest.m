@interface CTXPCCanRunActivationCodeProvisioningRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCCanRunActivationCodeProvisioningRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__CTXPCCanRunActivationCodeProvisioningRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45EB0;
  v8 = v5;
  v6 = v5;
  [a3 canRunActivationCodeProvisioningWithCompletion:v7];
}

void __92__CTXPCCanRunActivationCodeProvisioningRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [[CTXPCCanRunActivationCodeProvisioningResponse alloc] initWithTitle:v10 message:v7];
  (*(*(a1 + 32) + 16))();
}

@end