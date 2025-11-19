@interface INStartSendingUpdatesForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4;
- (INStartSendingUpdatesForwardingAction)initWithBSXPCCoder:(id)a3;
- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)a3 endpoint:(id)a4 observer:(id)a5;
- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)a3 endpointProvider:(id)a4 observer:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4;
@end

@implementation INStartSendingUpdatesForwardingAction

- (void)executeLocallyWithIntentDeliverer:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSXPCConnection *)self->_connection resume];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__104503;
  v16[4] = __Block_byref_object_dispose__104504;
  v8 = self;
  v17 = v8;
  v9 = [(INIntentForwardingAction *)v8 intent];
  v10 = [(INStartSendingUpdatesForwardingAction *)v8 observer];
  v11 = v10;
  if (!v10)
  {
    v11 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__INStartSendingUpdatesForwardingAction_executeLocallyWithIntentDeliverer_completionHandler___block_invoke;
  v13[3] = &unk_1E7285E10;
  v12 = v7;
  v14 = v12;
  v15 = v16;
  [v6 startSendingUpdatesForIntent:v9 toObserver:v11 completionHandler:v13];
  if (!v10)
  {
  }

  _Block_object_dispose(v16, 8);
}

void __93__INStartSendingUpdatesForwardingAction_executeLocallyWithIntentDeliverer_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [[INIntentForwardingActionResponse alloc] initWithError:0];
  (*(v2 + 16))(v2, v3);

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (BOOL)executeRemotelyWithVendorRemote:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = INStartSendingUpdatesForwardingAction;
  if ([(INIntentForwardingAction *)&v16 executeRemotelyWithVendorRemote:v6 completionHandler:v7])
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(v8);

    v10 = [(INStartSendingUpdatesForwardingAction *)self observer];
    [v6 startSendingUpdatesForIntent:v9 toObserver:v10];

    v11 = [[INIntentForwardingActionResponse alloc] initWithError:0];
    v7[2](v7, v11);

LABEL_4:
    v12 = 1;
    goto LABEL_8;
  }

  v13 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v18 = "[INStartSendingUpdatesForwardingAction executeRemotelyWithVendorRemote:completionHandler:]";
    _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s The extension context doesn't implement startSendingUpdatesForIntent:toObserver:", buf, 0xCu);
  }

  v12 = 0;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (INStartSendingUpdatesForwardingAction)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  if (v5)
  {
    v6 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"endpoint"];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v6];
      self = [(INStartSendingUpdatesForwardingAction *)self initWithIntent:v5 endpoint:v7 observer:0];

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(INIntentForwardingAction *)self intent];
  [v4 encodeObject:v5 forKey:@"intent"];

  v7 = [(INStartSendingUpdatesForwardingAction *)self endpoint];
  v6 = [v7 _endpoint];
  [v4 encodeXPCObject:v6 forKey:@"endpoint"];
}

- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)a3 endpoint:(id)a4 observer:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = INStartSendingUpdatesForwardingAction;
  v11 = [(INIntentForwardingAction *)&v18 initWithIntent:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_endpoint, a4);
    v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v9];
    connection = v12->_connection;
    v12->_connection = v13;

    v15 = v12->_connection;
    v16 = INIntentResponseObserverXPCInterface();
    [(NSXPCConnection *)v15 setRemoteObjectInterface:v16];

    if (v10)
    {
      objc_storeStrong(&v12->_observer, a5);
      [(NSXPCConnection *)v12->_connection resume];
    }
  }

  return v12;
}

- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)a3 endpointProvider:(id)a4 observer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = INIntentResponseObserverXPCInterface();
  v12 = [v9 xpcListenerEndpointWithInterface:v11 object:v8];

  v13 = [(INStartSendingUpdatesForwardingAction *)self initWithIntent:v10 endpoint:v12 observer:v8];
  return v13;
}

@end