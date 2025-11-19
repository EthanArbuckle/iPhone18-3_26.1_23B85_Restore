@interface _HMContext
- (_HMContext)initWithName:(id)a3;
- (_HMContext)initWithXPCClient:(id)a3 delegateCaller:(id)a4;
- (_HMContext)initWithXPCClient:(id)a3 delegateCaller:(id)a4 messageDispatcher:(id)a5 pendingRequests:(id)a6;
- (_HMContext)initWithXPCClientConfiguration:(id)a3;
- (void)sendMessage:(void *)a3 target:(void *)a4 payload:(void *)a5 responseHandler:;
@end

@implementation _HMContext

- (_HMContext)initWithXPCClient:(id)a3 delegateCaller:(id)a4 messageDispatcher:(id)a5 pendingRequests:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
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
    objc_storeStrong(&v16->_xpcClient, a3);
    objc_storeStrong(&v17->_delegateCaller, a4);
    objc_storeStrong(&v17->_messageDispatcher, a5);
    objc_storeStrong(&v17->_pendingRequests, a6);
    v18 = [v11 configuration];
    v19 = [v18 queue];
    queue = v17->_queue;
    v17->_queue = v19;
  }

  return v17;
}

- (_HMContext)initWithXPCClient:(id)a3 delegateCaller:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HMPendingRequests);
  v9 = [objc_alloc(MEMORY[0x1E69A2A08]) initWithTransport:v7];
  v10 = [(_HMContext *)self initWithXPCClient:v7 delegateCaller:v6 messageDispatcher:v9 pendingRequests:v8];

  return v10;
}

- (_HMContext)initWithXPCClientConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[HMXPCClient alloc] initWithConfiguration:v4];

  v6 = [[HMDelegateCaller alloc] initWithQueue:0];
  v7 = [(_HMContext *)self initWithXPCClient:v5 delegateCaller:v6];

  return v7;
}

- (_HMContext)initWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc"];
  v6 = [v4 UTF8String];

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create(v6, v7);
  [(HMXPCMessageTransportConfiguration *)v5 setQueue:v8];

  v9 = [(_HMContext *)self initWithXPCClientConfiguration:v5];
  return v9;
}

- (void)sendMessage:(void *)a3 target:(void *)a4 payload:(void *)a5 responseHandler:
{
  v9 = a5;
  if (a1)
  {
    v10 = MEMORY[0x1E69A2A10];
    v11 = MEMORY[0x1E69A2A00];
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v15 = [[v11 alloc] initWithTarget:v13];

    v16 = [v10 messageWithName:v14 destination:v15 payload:v12];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke;
    v21[3] = &unk_1E754DE00;
    v21[4] = a1;
    v17 = v9;
    v22 = v17;
    [v16 setResponseHandler:v21];
    v18 = [a1 messageDispatcher];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70___HMContext_Convenience__sendMessage_target_payload_responseHandler___block_invoke_3;
    v19[3] = &unk_1E754D870;
    v19[4] = a1;
    v20 = v17;
    [v18 sendMessage:v16 completionHandler:v19];
  }
}

@end