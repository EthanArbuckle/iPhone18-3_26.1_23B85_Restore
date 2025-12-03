@interface INStopSendingUpdatesForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler;
@end

@implementation INStopSendingUpdatesForwardingAction

- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler
{
  handlerCopy = handler;
  delivererCopy = deliverer;
  intent = [(INIntentForwardingAction *)self intent];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__INStopSendingUpdatesForwardingAction_executeLocallyWithIntentDeliverer_completionHandler___block_invoke;
  v10[3] = &unk_1E72838B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [delivererCopy stopSendingUpdatesForIntent:intent completionHandler:v10];
}

void __92__INStopSendingUpdatesForwardingAction_executeLocallyWithIntentDeliverer_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[INIntentForwardingActionResponse alloc] initWithError:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  remoteCopy = remote;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = INStopSendingUpdatesForwardingAction;
  if ([(INIntentForwardingAction *)&v15 executeRemotelyWithVendorRemote:remoteCopy completionHandler:handlerCopy])
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    intent = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(intent);

    [remoteCopy stopSendingUpdatesForIntent:v9];
    v10 = [[INIntentForwardingActionResponse alloc] initWithError:0];
    handlerCopy[2](handlerCopy, v10);

LABEL_4:
    v11 = 1;
    goto LABEL_8;
  }

  v12 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v17 = "[INStopSendingUpdatesForwardingAction executeRemotelyWithVendorRemote:completionHandler:]";
    _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s The extension context doesn't implement stopSendingUpdatesForIntent:", buf, 0xCu);
  }

  v11 = 0;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end