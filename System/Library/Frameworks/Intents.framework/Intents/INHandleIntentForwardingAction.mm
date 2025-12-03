@interface INHandleIntentForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (id)_completionHandlerWithActionCompletionHandler:(id)handler;
- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler;
@end

@implementation INHandleIntentForwardingAction

- (id)_completionHandlerWithActionCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__INHandleIntentForwardingAction__completionHandlerWithActionCompletionHandler___block_invoke;
  v7[3] = &unk_1E72871D0;
  v8 = handlerCopy;
  v4 = handlerCopy;
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

- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler
{
  handlerCopy = handler;
  delivererCopy = deliverer;
  intent = [(INIntentForwardingAction *)self intent];
  v8 = [(INHandleIntentForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];

  [delivererCopy handleIntent:intent withCompletion:v8];
}

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  remoteCopy = remote;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = INHandleIntentForwardingAction;
  if (![(INIntentForwardingAction *)&v12 executeRemotelyWithVendorRemote:remoteCopy completionHandler:handlerCopy])
  {
    intent = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(intent);

    v10 = [(INHandleIntentForwardingAction *)self _completionHandlerWithActionCompletionHandler:handlerCopy];
    [remoteCopy handleIntent:v9 withCompletion:v10];
  }

  return 1;
}

@end