@interface INHandleIntentForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4;
- (id)_completionHandlerWithActionCompletionHandler:(id)a3;
- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4;
@end

@implementation INHandleIntentForwardingAction

- (id)_completionHandlerWithActionCompletionHandler:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__INHandleIntentForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E72871D0;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x193AD7780](v7);

  return v5;
}

void __80__INHandleIntentForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [[INHandleIntentForwardingActionResponse alloc] initWithIntentResponse:v12 launchContextActivityData:v11 cacheItems:v10 error:v9];

  (*(*(a1 + 32) + 16))();
}

- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(INIntentForwardingAction *)self intent];
  v8 = [(INHandleIntentForwardingAction *)self _completionHandlerWithActionCompletionHandler:v6];

  [v7 handleIntent:v9 withCompletion:v8];
}

- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = INHandleIntentForwardingAction;
  if (![(INIntentForwardingAction *)&v12 executeRemotelyWithVendorRemote:v6 completionHandler:v7])
  {
    v8 = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(v8);

    v10 = [(INHandleIntentForwardingAction *)self _completionHandlerWithActionCompletionHandler:v7];
    [v6 handleIntent:v9 withCompletion:v10];
  }

  return 1;
}

@end