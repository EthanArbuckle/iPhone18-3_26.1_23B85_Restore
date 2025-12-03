@interface _HMContext
- (_HMContext)initWithName:(id)name;
- (_HMContext)initWithXPCClient:(id)client delegateCaller:(id)caller;
- (_HMContext)initWithXPCClient:(id)client delegateCaller:(id)caller messageDispatcher:(id)dispatcher pendingRequests:(id)requests;
- (_HMContext)initWithXPCClientConfiguration:(id)configuration;
- (void)sendMessage:(void *)message target:(void *)target payload:(void *)payload responseHandler:;
@end

@implementation _HMContext

- (_HMContext)initWithXPCClient:(id)client delegateCaller:(id)caller messageDispatcher:(id)dispatcher pendingRequests:(id)requests
{
  clientCopy = client;
  callerCopy = caller;
  dispatcherCopy = dispatcher;
  requestsCopy = requests;
  if (!callerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!clientCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!dispatcherCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = requestsCopy;
  if (!requestsCopy)
  {
LABEL_11:
    v22 = _HMFPreconditionFailure();
    return [(_HMContext *)v22 initWithXPCClient:v23 delegateCaller:v24, v25];
  }

  v26.receiver = self;
  v26.super_class = _HMContext;
  v16 = [(_HMContext *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_xpcClient, client);
    objc_storeStrong(&v17->_delegateCaller, caller);
    objc_storeStrong(&v17->_messageDispatcher, dispatcher);
    objc_storeStrong(&v17->_pendingRequests, requests);
    configuration = [clientCopy configuration];
    queue = [configuration queue];
    queue = v17->_queue;
    v17->_queue = queue;
  }

  return v17;
}

- (_HMContext)initWithXPCClient:(id)client delegateCaller:(id)caller
{
  callerCopy = caller;
  clientCopy = client;
  v8 = objc_alloc_init(HMPendingRequests);
  v9 = [objc_alloc(MEMORY[0x1E69A2A08]) initWithTransport:clientCopy];
  v10 = [(_HMContext *)self initWithXPCClient:clientCopy delegateCaller:callerCopy messageDispatcher:v9 pendingRequests:v8];

  return v10;
}

- (_HMContext)initWithXPCClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[HMXPCClient alloc] initWithConfiguration:configurationCopy];

  v6 = [[HMDelegateCaller alloc] initWithQueue:0];
  v7 = [(_HMContext *)self initWithXPCClient:v5 delegateCaller:v6];

  return v7;
}

- (_HMContext)initWithName:(id)name
{
  nameCopy = name;
  v5 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc"];
  uTF8String = [nameCopy UTF8String];

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(uTF8String, v7);
  [(HMXPCMessageTransportConfiguration *)v5 setQueue:v8];

  v9 = [(_HMContext *)self initWithXPCClientConfiguration:v5];
  return v9;
}

- (void)sendMessage:(void *)message target:(void *)target payload:(void *)payload responseHandler:
{
  payloadCopy = payload;
  if (self)
  {
    v10 = MEMORY[0x1E69A2A10];
    v11 = MEMORY[0x1E69A2A00];
    targetCopy = target;
    messageCopy = message;
    v14 = a2;
    v15 = [[v11 alloc] initWithTarget:messageCopy];

    v16 = [v10 messageWithName:v14 destination:v15 payload:targetCopy];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke;
    v21[3] = &unk_1E754DE00;
    v21[4] = self;
    v17 = payloadCopy;
    v22 = v17;
    [v16 setResponseHandler:v21];
    messageDispatcher = [self messageDispatcher];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke_3;
    v19[3] = &unk_1E754D870;
    v19[4] = self;
    v20 = v17;
    [messageDispatcher sendMessage:v16 completionHandler:v19];
  }
}

@end