@interface INAppIntentDeliverer
- (INAppIntentDeliverer)initWithBundleIdentifier:(id)identifier intentForwardingAction:(id)action;
- (void)_deliverIntentForwardingActionWithResponseHandler:(id)handler;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)completeWithIntentForwardingActionResponse:(id)response;
- (void)dealloc;
- (void)deliverIntent:(id)intent reply:(id)reply;
- (void)deliverIntentForwardingActionWithResponseHandler:(id)handler;
- (void)invalidateIntentDelivery;
@end

@implementation INAppIntentDeliverer

- (void)completeWithIntentForwardingActionResponse:(id)response
{
  responseCopy = response;
  queue = [(INAppIntentDeliverer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__INAppIntentDeliverer_completeWithIntentForwardingActionResponse___block_invoke;
  v7[3] = &unk_1E7287190;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_async(queue, v7);
}

void __67__INAppIntentDeliverer_completeWithIntentForwardingActionResponse___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completionBlock];
  [*(a1 + 32) setCompletionBlock:0];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 40));
    v2 = v3;
  }
}

- (void)invalidateIntentDelivery
{
  queue = [(INAppIntentDeliverer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__INAppIntentDeliverer_invalidateIntentDelivery__block_invoke;
  block[3] = &unk_1E72882F8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__INAppIntentDeliverer_invalidateIntentDelivery__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) requestTimer];
  [v2 cancel];

  [*(a1 + 32) setRequestTimer:0];
  v3 = [*(a1 + 32) auxiliaryAssertion];
  [v3 invalidate];

  [*(a1 + 32) setAuxiliaryAssertion:0];
  v4 = [*(a1 + 32) processAssertion];
  v5 = 0;
  if ([v4 isValid])
  {
    v9 = 0;
    v6 = [v4 invalidateWithError:&v9];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[INAppIntentDeliverer invalidateIntentDelivery]_block_invoke";
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Failed to invalidate process assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_deliverIntentForwardingActionWithResponseHandler:(id)handler
{
  v48[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  intent = [(INIntentForwardingAction *)self->_intentForwardingAction intent];
  objc_initWeak(&location, self);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke;
  v40[3] = &unk_1E7280D08;
  objc_copyWeak(&v42, &location);
  v6 = handlerCopy;
  v41 = v6;
  [(INAppIntentDeliverer *)self setCompletionBlock:v40];
  if ([getUISIntentForwardingActionClass() instancesRespondToSelector:sel_initWithIntentForwardingAction_responseQueue_responseHandler_])
  {
    v7 = objc_alloc(getUISIntentForwardingActionClass());
    intentForwardingAction = self->_intentForwardingAction;
    queue = self->_queue;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_3;
    v39[3] = &unk_1E7280D30;
    v39[4] = self;
    v10 = [v7 initWithIntentForwardingAction:intentForwardingAction responseQueue:queue responseHandler:v39];
  }

  else
  {
    v11 = objc_alloc(getUISIntentForwardingActionClass());
    v12 = self->_intentForwardingAction;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_4;
    v38[3] = &unk_1E7280D30;
    v38[4] = self;
    v10 = [v11 initWithIntentForwardingAction:v12 responseHandler:v38];
  }

  v13 = v10;
  bundleIdentifier = [(INAppIntentDeliverer *)self bundleIdentifier];
  v37 = 0;
  v15 = [intent _intents_backgroundHandlingAssertionForBundleIdentifier:bundleIdentifier context:0 error:&v37];
  v16 = v37;
  [(INAppIntentDeliverer *)self setAuxiliaryAssertion:v15];

  if (v16)
  {
    v17 = self->_intentForwardingAction;
    v18 = [objc_alloc(objc_msgSend(objc_opt_class() "responseClass"))];
    [(INAppIntentDeliverer *)self completeWithIntentForwardingActionResponse:v18];
  }

  else
  {
    INIssueSandboxExtensionsForFileURLEnumerable(intent);
    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    v48[0] = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    v18 = [v19 initWithObjectsAndKeys:{v20, *MEMORY[0x1E699F8D0], 0}];

    if (!-[INIntentForwardingAction allowsForegroundAppLaunch](self->_intentForwardingAction, "allowsForegroundAppLaunch") || [intent _type] != 2 || objc_msgSend(intent, "_type") == 2 && (objc_msgSend(intent, "_codableDescription"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isForeground"), v21, (v22 & 1) == 0))
    {
      [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F8E8]];
      v23 = objc_alloc(MEMORY[0x1E69635F8]);
      bundleIdentifier2 = [(INAppIntentDeliverer *)self bundleIdentifier];
      v36 = 0;
      v25 = [v23 initWithBundleIdentifier:bundleIdentifier2 allowPlaceholder:0 error:&v36];
      v26 = v36;

      if (v26)
      {
        v27 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v45 = "[INAppIntentDeliverer _deliverIntentForwardingActionWithResponseHandler:]";
          v46 = 2114;
          v47 = v26;
          _os_log_error_impl(&dword_18E991000, v27, OS_LOG_TYPE_ERROR, "%s Failed to get application record: %{public}@", buf, 0x16u);
        }
      }

      v28 = MEMORY[0x1E696AD98];
      if ([v25 supportsMultiwindow])
      {
        allowsScenelessAppLaunch = [(INIntentForwardingAction *)self->_intentForwardingAction allowsScenelessAppLaunch];
      }

      else
      {
        allowsScenelessAppLaunch = 0;
      }

      v30 = [v28 numberWithInt:allowsScenelessAppLaunch];
      [v18 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69D4460]];
    }

    serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
    v32 = [MEMORY[0x1E699FB70] optionsWithDictionary:v18];
    bundleIdentifier3 = [(INAppIntentDeliverer *)self bundleIdentifier];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_30;
    v35[3] = &unk_1E7280D80;
    v35[4] = self;
    [serviceWithDefaultShellEndpoint openApplication:bundleIdentifier3 withOptions:v32 completion:v35];
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);

  v34 = *MEMORY[0x1E69E9840];
}

void __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = dispatch_time(0, 2000000000);
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_2;
    block[3] = &unk_1E72882F8;
    v8 = WeakRetained;
    dispatch_after(v5, v6, block);

    (*(*(a1 + 32) + 16))();
  }
}

void __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_30(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 32) intentForwardingAction];
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "responseClass"))];
    [v5 completeWithIntentForwardingActionResponse:v7];
  }

  else
  {
    v8 = [*(a1 + 32) processAssertion];
    v17 = 0;
    v9 = [v8 acquireWithError:&v17];
    v10 = v17;

    if (v9)
    {
      v11 = [*(a1 + 32) queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_31;
      v16[3] = &unk_1E72882F8;
      v16[4] = *(a1 + 32);
      dispatch_sync(v11, v16);
    }

    else
    {
      v12 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[INAppIntentDeliverer _deliverIntentForwardingActionWithResponseHandler:]_block_invoke";
        v20 = 2114;
        v21 = v10;
        _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Failed to acquire assertion: %{public}@", buf, 0x16u);
      }

      v13 = *(a1 + 32);
      v11 = [v13 intentForwardingAction];
      v14 = [objc_alloc(objc_msgSend(objc_opt_class() "responseClass"))];
      [v13 completeWithIntentForwardingActionResponse:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_31(uint64_t a1)
{
  [*(*(a1 + 32) + 8) requestTimeout];
  v3 = v2;
  v4 = [INWatchdogTimer alloc];
  v5 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_2_33;
  v7[3] = &unk_1E7280D58;
  v7[4] = *(a1 + 32);
  *&v7[5] = v3;
  v6 = [(INWatchdogTimer *)v4 initWithTimeoutInterval:v5 onQueue:v7 timeoutHandler:v3];

  [*(a1 + 32) setRequestTimer:v6];
  [(INWatchdogTimer *)v6 start];
}

void __74__INAppIntentDeliverer__deliverIntentForwardingActionWithResponseHandler___block_invoke_2_33(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = v2;
    v10 = [v8 bundleIdentifier];
    v11 = *(a1 + 40);
    v12 = 136315650;
    v13 = "[INAppIntentDeliverer _deliverIntentForwardingActionWithResponseHandler:]_block_invoke_2";
    v14 = 2114;
    v15 = v10;
    v16 = 2050;
    v17 = v11;
    _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Handle intent request for %{public}@ timed out after %{public}.2f seconds", &v12, 0x20u);
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:1314 userInfo:MEMORY[0x1E695E0F8]];
  v4 = *(a1 + 32);
  v5 = [v4 intentForwardingAction];
  v6 = [objc_alloc(objc_msgSend(objc_opt_class() "responseClass"))];
  [v4 completeWithIntentForwardingActionResponse:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deliverIntent:(id)intent reply:(id)reply
{
  intentCopy = intent;
  replyCopy = reply;
  queue = [(INAppIntentDeliverer *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__INAppIntentDeliverer_deliverIntent_reply___block_invoke;
  block[3] = &unk_1E72858F0;
  block[4] = self;
  v12 = intentCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = intentCopy;
  dispatch_sync(queue, block);
}

void __44__INAppIntentDeliverer_deliverIntent_reply___block_invoke(uint64_t a1)
{
  v2 = [(INIntentForwardingAction *)[INHandleIntentForwardingAction alloc] initWithIntent:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__INAppIntentDeliverer_deliverIntent_reply___block_invoke_2;
  v6[3] = &unk_1E7280CE0;
  v7 = *(a1 + 48);
  [v5 _deliverIntentForwardingActionWithResponseHandler:v6];
}

void __44__INAppIntentDeliverer_deliverIntent_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 intentResponse];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)deliverIntentForwardingActionWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(INAppIntentDeliverer *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__INAppIntentDeliverer_deliverIntentForwardingActionWithResponseHandler___block_invoke;
  v7[3] = &unk_1E7287140;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  processMonitor = [(INAppIntentDeliverer *)self processMonitor];
  states = [processMonitor states];

  v8 = [states countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (!v8)
  {

LABEL_12:
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IntentsErrorDomain" code:1312 userInfo:MEMORY[0x1E695E0F8]];
    intentForwardingAction = self->_intentForwardingAction;
    v17 = [objc_alloc(objc_msgSend(objc_opt_class() "responseClass"))];
    [(INAppIntentDeliverer *)self completeWithIntentForwardingActionResponse:v17];

    v18 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v20 = v18;
      bundleIdentifier = [(INAppIntentDeliverer *)self bundleIdentifier];
      *buf = 136315650;
      v27 = "[INAppIntentDeliverer assertion:didInvalidateWithError:]";
      v28 = 2114;
      v29 = bundleIdentifier;
      v30 = 2114;
      v31 = errorCopy;
      _os_log_error_impl(&dword_18E991000, v20, OS_LOG_TYPE_ERROR, "%s Intent delivery failed because %{public}@ appears to have crashed: %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v9 = v8;
  v10 = *v23;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(states);
      }

      v11 &= [*(*(&v22 + 1) + 8 * i) taskState];
    }

    v9 = [states countByEnumeratingWithState:&v22 objects:v32 count:16];
  }

  while (v9);

  if (v11)
  {
    goto LABEL_12;
  }

  v13 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v14 = v13;
    bundleIdentifier2 = [(INAppIntentDeliverer *)self bundleIdentifier];
    *buf = 136315650;
    v27 = "[INAppIntentDeliverer assertion:didInvalidateWithError:]";
    v28 = 2114;
    v29 = bundleIdentifier2;
    v30 = 2114;
    v31 = errorCopy;
    _os_log_error_impl(&dword_18E991000, v14, OS_LOG_TYPE_ERROR, "%s Intent delivery assertion for %{public}@ was dropped after timeout: %{public}@", buf, 0x20u);

LABEL_14:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  if ([(RBSAssertion *)self->_processAssertion isValid])
  {
    processAssertion = self->_processAssertion;
    v9 = 0;
    v4 = [(RBSAssertion *)processAssertion invalidateWithError:&v9];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "[INAppIntentDeliverer dealloc]";
        v12 = 2114;
        v13 = v5;
        _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Failed to invalidate process assertion: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = self;
  v8.super_class = INAppIntentDeliverer;
  [(INAppIntentDeliverer *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (INAppIntentDeliverer)initWithBundleIdentifier:(id)identifier intentForwardingAction:(id)action
{
  v30[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  actionCopy = action;
  v29.receiver = self;
  v29.super_class = INAppIntentDeliverer;
  v8 = [(INAppIntentDeliverer *)&v29 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    objc_storeStrong(&v8->_intentForwardingAction, action);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("INAppIntentDeliverer", v11);
    queue = v8->_queue;
    v8->_queue = v12;

    v14 = [MEMORY[0x1E69C75F0] identityForEmbeddedApplicationIdentifier:identifierCopy];
    v15 = [MEMORY[0x1E69C7640] targetWithProcessIdentity:v14];
    v16 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.siri" name:@"IntentStartupGrant"];
    v30[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

    v18 = [objc_alloc(MEMORY[0x1E69C7548]) initWithExplanation:@"AppIntentDeliverer" target:v15 attributes:v17];
    processAssertion = v8->_processAssertion;
    v8->_processAssertion = v18;

    [(RBSAssertion *)v8->_processAssertion addObserver:v8];
    v20 = MEMORY[0x1E69C75F8];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__INAppIntentDeliverer_initWithBundleIdentifier_intentForwardingAction___block_invoke;
    v27[3] = &unk_1E7280CB8;
    v28 = v15;
    v21 = v15;
    v22 = [v20 monitorWithConfiguration:v27];
    processMonitor = v8->_processMonitor;
    v8->_processMonitor = v22;

    v24 = v8;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

void __72__INAppIntentDeliverer_initWithBundleIdentifier_intentForwardingAction___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7610];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 predicateMatching:v3];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x1E69C7630] descriptor];
  [v7 setValues:1];
  [v4 setStateDescriptor:v7];

  v8 = *MEMORY[0x1E69E9840];
}

@end