@interface _MXExtensionService
+ (id)extensionCompletionQueue;
- (NSUUID)serviceIdentifier;
- (_MXExtensionService)init;
- (_MXExtensionService)initWithExtensionProxy:(id)a3;
- (_MXExtensionURLHandling)URLHandlingDelegate;
- (id)_errorForIntent:(id)a3;
- (id)_errorForIntentResponse:(id)a3 withExpectResponseClass:(Class)a4;
- (id)_errorForIntentVendorContext:(id)a3;
- (id)_handleOrConfirmIntent:(id)a3 expectResponseClass:(Class)a4 isHandle:(BOOL)a5 withCompletion:(id)a6;
- (id)context;
- (id)description;
- (id)handleRequest:(id)a3 requestDispatcher:(id)a4 completion:(id)a5;
- (id)resolveIntentSlot:(id)a3 forIntent:(id)a4 completionBlock:(id)a5;
- (id)startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4;
- (id)startSendingUpdatesForRequest:(id)a3 requestDispatcher:(id)a4 toObserver:(id)a5;
- (id)vendorContextWithErrorHandler:(id)a3;
- (int)processIdentifier;
- (void)_completeOrCancelTransaction:(BOOL)a3 withIntentIdentifier:(id)a4 completion:(id)a5;
- (void)_connectExtensionWithRemoteViewControllerNeeded:(BOOL)a3 Handler:(id)a4;
- (void)cancelTransactionDueToTimeoutWithIntentIdentifier:(id)a3 completion:(id)a4;
- (void)completeTransactionWithIntentIdentifier:(id)a3 completion:(id)a4;
- (void)connectExtensionWithRemoteViewControllerNeeded:(BOOL)a3 Handler:(id)a4;
- (void)dealloc;
- (void)disconnectExtension;
- (void)handleIntent:(id)a3 expectResponseClass:(Class)a4 completion:(id)a5;
- (void)setConnectionIdentifier:(id)a3;
- (void)setIntentResponseObserverProxy:(id)a3;
- (void)setURLHandlingDelegate:(id)a3;
- (void)stopSendingUpdatesForIntent:(id)a3;
- (void)stopSendingUpdatesForRequest:(id)a3 requestDispatcher:(id)a4;
@end

@implementation _MXExtensionService

- (_MXExtensionURLHandling)URLHandlingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_URLHandlingDelegate);

  return WeakRetained;
}

- (int)processIdentifier
{
  if ([(_MXExtensionService *)self state]!= 2 || !self->_connectionIdentifier)
  {
    return 0;
  }

  v3 = [(_MXExtensionService *)self realExtension];
  v4 = [v3 pidForRequestIdentifier:self->_connectionIdentifier];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSExtension *)self->_realExtension identifier];
  v5 = [v3 stringWithFormat:@"<_MXExtensionService:%p extension=%@ connectionIdentiifer=%@>", self, v4, self->_connectionIdentifier];

  return v5;
}

- (id)vendorContextWithErrorHandler:(id)a3
{
  v4 = a3;
  if ([(_MXExtensionService *)self state]== 2)
  {
    v5 = [(_MXExtensionService *)self realExtension];
    v6 = [(_MXExtensionService *)self connectionIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53___MXExtensionService_vendorContextWithErrorHandler___block_invoke;
    v10[3] = &unk_1E76C7DF0;
    v10[4] = self;
    v11 = v4;
    v7 = [v5 _extensionVendorContextForUUID:v6 withErrorHandler:v10];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:18];
    (*(v4 + 2))(v4, v8);

    v7 = 0;
  }

  return v7;
}

- (void)stopSendingUpdatesForRequest:(id)a3 requestDispatcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___MXExtensionService_stopSendingUpdatesForRequest_requestDispatcher___block_invoke;
  v10[3] = &unk_1E76C9730;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(_MXExtensionService *)self connectExtensionWithHandler:v10];
}

- (id)startSendingUpdatesForRequest:(id)a3 requestDispatcher:(id)a4 toObserver:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke;
  v36[3] = &unk_1E76C7478;
  v11 = v10;
  v37 = v11;
  v12 = v8;
  v38 = v12;
  v13 = v9;
  v39 = v13;
  [(_MXExtensionService *)self connectExtensionWithHandler:v36];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__7763;
  v34[4] = __Block_byref_object_dispose__7764;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_3;
  v29[3] = &unk_1E76CD0D0;
  v14 = v11;
  v30 = v14;
  v31 = self;
  v15 = v12;
  v32 = v15;
  v16 = v13;
  v33 = v16;
  v35 = MEMORY[0x1A58E9F30](v29);
  v17 = [objc_opt_class() extensionCompletionQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_4;
  v26[3] = &unk_1E76CD7E8;
  v18 = v17;
  v27 = v18;
  v28 = v34;
  v19 = MEMORY[0x1A58E9F30](v26);
  v20 = [_MXExtensionRequestReceipt alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82___MXExtensionService_startSendingUpdatesForRequest_requestDispatcher_toObserver___block_invoke_6;
  v24[3] = &unk_1E76CD4D0;
  v21 = v19;
  v25 = v21;
  v22 = [(_MXExtensionRequestReceipt *)v20 initWithCompletion:v24];

  _Block_object_dispose(v34, 8);

  return v22;
}

- (id)handleRequest:(id)a3 requestDispatcher:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__7763;
  v30[4] = __Block_byref_object_dispose__7764;
  v31 = MEMORY[0x1A58E9F30]();
  v11 = [objc_opt_class() extensionCompletionQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke;
  v27[3] = &unk_1E76C7450;
  v12 = v11;
  v28 = v12;
  v29 = v30;
  v13 = MEMORY[0x1A58E9F30](v27);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_3;
  v23[3] = &unk_1E76C95F8;
  v14 = v13;
  v26 = v14;
  v15 = v8;
  v24 = v15;
  v16 = v9;
  v25 = v16;
  [(_MXExtensionService *)self connectExtensionWithHandler:v23];
  v17 = [_MXExtensionRequestReceipt alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66___MXExtensionService_handleRequest_requestDispatcher_completion___block_invoke_5;
  v21[3] = &unk_1E76CD4D0;
  v18 = v14;
  v22 = v18;
  v19 = [(_MXExtensionRequestReceipt *)v17 initWithCompletion:v21];

  _Block_object_dispose(v30, 8);

  return v19;
}

- (void)disconnectExtension
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42___MXExtensionService_disconnectExtension__block_invoke;
  v4[3] = &unk_1E76C7428;
  objc_copyWeak(&v5, &location);
  [(_MXSerialQueue *)serialQueue addTask:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_connectExtensionWithRemoteViewControllerNeeded:(BOOL)a3 Handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_MXExtensionService *)self state];
  if (v7)
  {
    if (v7 != 2)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_MXExtensionServiceErrorDomain" code:16 userInfo:0];
      v6[2](v6, self, v8);
      goto LABEL_16;
    }

    v8 = [(_MXExtension *)self->_extensionProxy extension];
    if (v4)
    {
      v9 = [(_MXExtensionService *)self remoteViewController];

      if (!v9)
      {
        v13 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:17];
        goto LABEL_12;
      }
    }

    if (v8 == self->_realExtension)
    {
      v6[2](v6, self, 0);
      goto LABEL_16;
    }
  }

  v10 = [(_MXExtensionService *)self extensionProxy];
  v8 = [v10 extension];

  if (([(NSExtension *)v8 optedIn]& 1) == 0)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_MXExtensionServiceErrorDomain" code:5 userInfo:0];
LABEL_12:
    v14 = v13;
    v6[2](v6, self, v13);

    goto LABEL_16;
  }

  [(_MXExtensionService *)self setState:1];
  [(_MXExtensionService *)self setRealExtension:v8];
  v11 = [(_MXExtensionService *)self realExtension];
  if (v4)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79___MXExtensionService__connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke_2;
    v15[3] = &unk_1E76C7400;
    v15[4] = self;
    v16 = v6;
    [v11 instantiateViewControllerWithInputItems:0 connectionHandler:v15];

    v12 = v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79___MXExtensionService__connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke;
    v17[3] = &unk_1E76C73D8;
    v17[4] = self;
    v18 = v6;
    [v11 beginExtensionRequestWithInputItems:0 completion:v17];

    v12 = v18;
  }

LABEL_16:
}

- (void)connectExtensionWithRemoteViewControllerNeeded:(BOOL)a3 Handler:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78___MXExtensionService_connectExtensionWithRemoteViewControllerNeeded_Handler___block_invoke;
  v9[3] = &unk_1E76C73B0;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  v12 = a3;
  [(_MXSerialQueue *)serialQueue addTask:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setConnectionIdentifier:(id)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSUUID *)self->_connectionIdentifier isEqual:v4]& 1) == 0)
  {
    v7[0] = 0;
    v7[1] = 0;
    [v4 getUUIDBytes:v7];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v7];
    connectionIdentifier = self->_connectionIdentifier;
    self->_connectionIdentifier = v5;
  }
}

- (void)setURLHandlingDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_URLHandlingDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_URLHandlingDelegate, obj);
    v6 = [(_MXExtensionService *)self state];
    v5 = obj;
    if (v6 == 2)
    {
      v7 = [(_MXExtensionService *)self realExtension];
      v8 = [(_MXExtensionService *)self connectionIdentifier];
      v9 = [v7 _extensionContextForUUID:v8];

      if ([v9 conformsToProtocol:&unk_1F164A338])
      {
        [v9 setURLHandlingDelegate:obj];
      }

      v5 = obj;
    }
  }
}

- (_MXExtensionService)initWithExtensionProxy:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _MXExtensionService;
  v6 = [(_MXExtensionService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionProxy, a3);
    v8 = objc_alloc_init(_MXSerialQueue);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_state == 2)
  {
    [(NSExtension *)self->_realExtension cancelExtensionRequestWithIdentifier:self->_connectionIdentifier];
  }

  v3.receiver = self;
  v3.super_class = _MXExtensionService;
  [(_MXExtensionService *)&v3 dealloc];
}

- (_MXExtensionService)init
{
  [MEMORY[0x1E695DF30] raise:@"_MXExtensionServiceNotAvailableException" format:@"This method is unavailable."];

  return 0;
}

+ (id)extensionCompletionQueue
{
  if (extensionCompletionQueue_onceToken != -1)
  {
    dispatch_once(&extensionCompletionQueue_onceToken, &__block_literal_global_7789);
  }

  v3 = extensionCompletionQueue_queue;

  return v3;
}

- (NSUUID)serviceIdentifier
{
  v2 = [(_MXExtensionService *)self connectionIdentifier];
  v3 = [v2 copy];

  return v3;
}

- (id)context
{
  v3 = [(_MXExtensionService *)self extensionProxy];
  v4 = [v3 extension];
  v5 = [(_MXExtensionService *)self connectionIdentifier];
  v6 = [v4 _extensionContextForUUID:v5];

  return v6;
}

- (void)handleIntent:(id)a3 expectResponseClass:(Class)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99___MXExtensionService_INIntent_willBeDepreicatedSoon__handleIntent_expectResponseClass_completion___block_invoke;
  v11[3] = &unk_1E76C9780;
  v12 = v8;
  v9 = v8;
  v10 = [(_MXExtensionService *)self handleIntent:a3 expectResponseClass:a4 withCompletion:v11];
}

- (id)_errorForIntentResponse:(id)a3 withExpectResponseClass:(Class)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:9];
    }

    v4 = vars8;
  }

  return v5;
}

- (id)_errorForIntentVendorContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 conformsToProtocol:&unk_1F16E5258] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_errorForIntent:(id)a3
{
  v4 = a3;
  v5 = [(_MXExtensionService *)self extensionProxy];
  v6 = [v5 extension];

  LOBYTE(v5) = [v6 _canSupportIntent:v4];
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_MXExtensionServiceErrorDomain" code:7 userInfo:0];
  }

  return v7;
}

- (void)setIntentResponseObserverProxy:(id)a3
{
  value = a3;
  v4 = [(_MXExtensionService *)self intentResponseObserverProxy];

  v5 = value;
  if (v4 != value)
  {
    objc_setAssociatedObject(self, kIntentResponseObserverProxyKey, value, 1);
    v5 = value;
  }
}

- (void)stopSendingUpdatesForIntent:(id)a3
{
  v4 = a3;
  v5 = [(_MXExtensionService *)self intentResponseObserverProxy];
  [v5 stopObserving];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___MXExtensionService_INIntent__stopSendingUpdatesForIntent___block_invoke;
  v7[3] = &unk_1E76C9758;
  v8 = v4;
  v6 = v4;
  [(_MXExtensionService *)self connectExtensionWithHandler:v7];
}

- (id)startSendingUpdatesForIntent:(id)a3 toObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[_MXIntentResponseObserverProxy alloc] initWithObserver:v7];

  v9 = [(_MXExtensionService *)self _errorForIntent:v6];
  if (v9)
  {
    [(_MXIntentResponseObserverProxy *)v8 didReceiveError:v9];
    v10 = 0;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73___MXExtensionService_INIntent__startSendingUpdatesForIntent_toObserver___block_invoke;
    v19[3] = &unk_1E76C9730;
    v11 = v8;
    v20 = v11;
    v12 = v6;
    v21 = v12;
    [(_MXExtensionService *)self connectExtensionWithHandler:v19];
    v13 = [_MXExtensionRequestReceipt alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73___MXExtensionService_INIntent__startSendingUpdatesForIntent_toObserver___block_invoke_3;
    v15[3] = &unk_1E76CCC28;
    v16 = v11;
    v17 = self;
    v18 = v12;
    v10 = [(_MXExtensionRequestReceipt *)v13 initWithCompletion:v15];
  }

  return v10;
}

- (void)_completeOrCancelTransaction:(BOOL)a3 withIntentIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94___MXExtensionService_INIntent___completeOrCancelTransaction_withIntentIdentifier_completion___block_invoke;
  v12[3] = &unk_1E76C96E0;
  v15 = a3;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(_MXExtensionService *)self connectExtensionWithHandler:v12];
}

- (void)cancelTransactionDueToTimeoutWithIntentIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94___MXExtensionService_INIntent__cancelTransactionDueToTimeoutWithIntentIdentifier_completion___block_invoke;
  v8[3] = &unk_1E76CD4D0;
  v9 = v6;
  v7 = v6;
  [(_MXExtensionService *)self _completeOrCancelTransaction:0 withIntentIdentifier:a3 completion:v8];
}

- (void)completeTransactionWithIntentIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84___MXExtensionService_INIntent__completeTransactionWithIntentIdentifier_completion___block_invoke;
  v8[3] = &unk_1E76CD4D0;
  v9 = v6;
  v7 = v6;
  [(_MXExtensionService *)self _completeOrCancelTransaction:1 withIntentIdentifier:a3 completion:v8];
}

- (id)_handleOrConfirmIntent:(id)a3 expectResponseClass:(Class)a4 isHandle:(BOOL)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(_MXExtensionService *)self _errorForIntent:v10];
  if (v12)
  {
    (*(v11 + 2))(v11, 0, 0, 0, v12);
    v13 = 0;
  }

  else
  {
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__22635;
    v31[4] = __Block_byref_object_dispose__22636;
    v32 = MEMORY[0x1A58E9F30](v11);
    v14 = [objc_opt_class() extensionCompletionQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke;
    v28[3] = &unk_1E76C9620;
    v15 = v14;
    v29 = v15;
    v30 = v31;
    v16 = MEMORY[0x1A58E9F30](v28);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_3;
    v23[3] = &unk_1E76C9698;
    v17 = v16;
    v25 = v17;
    v26 = a4;
    v24 = v10;
    v27 = a5;
    [(_MXExtensionService *)self connectExtensionWithHandler:v23];
    v18 = [_MXExtensionRequestReceipt alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __100___MXExtensionService_INIntent___handleOrConfirmIntent_expectResponseClass_isHandle_withCompletion___block_invoke_7;
    v21[3] = &unk_1E76CD4D0;
    v19 = v17;
    v22 = v19;
    v13 = [(_MXExtensionRequestReceipt *)v18 initWithCompletion:v21];

    _Block_object_dispose(v31, 8);
  }

  return v13;
}

- (id)resolveIntentSlot:(id)a3 forIntent:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_MXExtensionService *)self _errorForIntent:v9];
  if (v11)
  {
    v10[2](v10, 0, v11);
    v12 = 0;
  }

  else
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__22635;
    v29[4] = __Block_byref_object_dispose__22636;
    v30 = MEMORY[0x1A58E9F30](v10);
    v13 = [objc_opt_class() extensionCompletionQueue];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke;
    v26[3] = &unk_1E76C9580;
    v14 = v13;
    v27 = v14;
    v28 = v29;
    v15 = MEMORY[0x1A58E9F30](v26);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_3;
    v22[3] = &unk_1E76C95F8;
    v16 = v15;
    v25 = v16;
    v23 = v9;
    v24 = v8;
    [(_MXExtensionService *)self connectExtensionWithHandler:v22];
    v17 = [_MXExtensionRequestReceipt alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77___MXExtensionService_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke_7;
    v20[3] = &unk_1E76CD4D0;
    v18 = v16;
    v21 = v18;
    v12 = [(_MXExtensionRequestReceipt *)v17 initWithCompletion:v20];

    _Block_object_dispose(v29, 8);
  }

  return v12;
}

@end