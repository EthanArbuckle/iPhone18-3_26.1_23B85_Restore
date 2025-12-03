@interface INStartSendingUpdatesForwardingAction
- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler;
- (INStartSendingUpdatesForwardingAction)initWithBSXPCCoder:(id)coder;
- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)intent endpoint:(id)endpoint observer:(id)observer;
- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)intent endpointProvider:(id)provider observer:(id)observer;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler;
@end

@implementation INStartSendingUpdatesForwardingAction

- (void)executeLocallyWithIntentDeliverer:(id)deliverer completionHandler:(id)handler
{
  delivererCopy = deliverer;
  handlerCopy = handler;
  [(NSXPCConnection *)self->_connection resume];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__104503;
  v16[4] = __Block_byref_object_dispose__104504;
  selfCopy = self;
  v17 = selfCopy;
  intent = [(INIntentForwardingAction *)selfCopy intent];
  observer = [(INStartSendingUpdatesForwardingAction *)selfCopy observer];
  remoteObjectProxy = observer;
  if (!observer)
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__INStartSendingUpdatesForwardingAction_executeLocallyWithIntentDeliverer_completionHandler___block_invoke;
  v13[3] = &unk_1E7285E10;
  v12 = handlerCopy;
  v14 = v12;
  v15 = v16;
  [delivererCopy startSendingUpdatesForIntent:intent toObserver:remoteObjectProxy completionHandler:v13];
  if (!observer)
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

- (BOOL)executeRemotelyWithVendorRemote:(id)remote completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  remoteCopy = remote;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = INStartSendingUpdatesForwardingAction;
  if ([(INIntentForwardingAction *)&v16 executeRemotelyWithVendorRemote:remoteCopy completionHandler:handlerCopy])
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    intent = [(INIntentForwardingAction *)self intent];
    v9 = INIntentWithTypedIntent(intent);

    observer = [(INStartSendingUpdatesForwardingAction *)self observer];
    [remoteCopy startSendingUpdatesForIntent:v9 toObserver:observer];

    v11 = [[INIntentForwardingActionResponse alloc] initWithError:0];
    handlerCopy[2](handlerCopy, v11);

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

- (INStartSendingUpdatesForwardingAction)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  if (v5)
  {
    v6 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"endpoint"];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696B0E0]);
      [v7 _setEndpoint:v6];
      self = [(INStartSendingUpdatesForwardingAction *)self initWithIntent:v5 endpoint:v7 observer:0];

      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  intent = [(INIntentForwardingAction *)self intent];
  [coderCopy encodeObject:intent forKey:@"intent"];

  endpoint = [(INStartSendingUpdatesForwardingAction *)self endpoint];
  _endpoint = [endpoint _endpoint];
  [coderCopy encodeXPCObject:_endpoint forKey:@"endpoint"];
}

- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)intent endpoint:(id)endpoint observer:(id)observer
{
  endpointCopy = endpoint;
  observerCopy = observer;
  v18.receiver = self;
  v18.super_class = INStartSendingUpdatesForwardingAction;
  v11 = [(INIntentForwardingAction *)&v18 initWithIntent:intent];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_endpoint, endpoint);
    v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    connection = v12->_connection;
    v12->_connection = v13;

    v15 = v12->_connection;
    v16 = INIntentResponseObserverXPCInterface();
    [(NSXPCConnection *)v15 setRemoteObjectInterface:v16];

    if (observerCopy)
    {
      objc_storeStrong(&v12->_observer, observer);
      [(NSXPCConnection *)v12->_connection resume];
    }
  }

  return v12;
}

- (INStartSendingUpdatesForwardingAction)initWithIntent:(id)intent endpointProvider:(id)provider observer:(id)observer
{
  observerCopy = observer;
  providerCopy = provider;
  intentCopy = intent;
  v11 = INIntentResponseObserverXPCInterface();
  v12 = [providerCopy xpcListenerEndpointWithInterface:v11 object:observerCopy];

  v13 = [(INStartSendingUpdatesForwardingAction *)self initWithIntent:intentCopy endpoint:v12 observer:observerCopy];
  return v13;
}

@end