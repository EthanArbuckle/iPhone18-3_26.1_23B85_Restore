@interface INAppIntentDispatcher
- (INAppIntentDispatcher)initWithDelegate:(id)delegate;
- (INIntentDeliveringDelegate)delegate;
- (void)dispatchIntentForwardingAction:(id)action completionHandler:(id)handler;
@end

@implementation INAppIntentDispatcher

- (INIntentDeliveringDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dispatchIntentForwardingAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = getWFOnScreenContentExtractorClass_softClass;
    v23 = getWFOnScreenContentExtractorClass_softClass;
    if (!getWFOnScreenContentExtractorClass_softClass)
    {
      *&v17 = MEMORY[0x1E69E9820];
      *(&v17 + 1) = 3221225472;
      *&v18 = __getWFOnScreenContentExtractorClass_block_invoke;
      *(&v18 + 1) = &unk_1E72888B8;
      v19 = &v20;
      __getWFOnScreenContentExtractorClass_block_invoke(&v17);
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    v10 = objc_alloc_init(v8);
    [(INIntentDeliverer *)v10 handleAction:actionCopy completionHandler:handlerCopy];
  }

  else
  {
    v11 = [INIntentDeliverer alloc];
    if (actionCopy)
    {
      [actionCopy hostProcessAuditToken];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v12 = [(INIntentDeliverer *)v11 initWithQueue:MEMORY[0x1E69E96A0] auditToken:&v17];
    delegate = [(INAppIntentDispatcher *)self delegate];
    [(INIntentDeliverer *)v12 setDelegate:delegate];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__INAppIntentDispatcher_dispatchIntentForwardingAction_completionHandler___block_invoke;
    v14[3] = &unk_1E72867B0;
    v15 = v12;
    v16 = handlerCopy;
    v10 = v12;
    [actionCopy executeLocallyWithIntentDeliverer:v10 completionHandler:v14];
  }
}

- (INAppIntentDispatcher)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = INAppIntentDispatcher;
  v5 = [(INAppIntentDispatcher *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end