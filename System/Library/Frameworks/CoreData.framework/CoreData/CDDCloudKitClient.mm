@interface CDDCloudKitClient
- (CDDCloudKitClient)initWithMachServiceName:(id)name;
- (void)dealloc;
- (void)handleMessage:(id)message reply:(id)reply;
@end

@implementation CDDCloudKitClient

- (CDDCloudKitClient)initWithMachServiceName:(id)name
{
  v14.receiver = self;
  v14.super_class = CDDCloudKitClient;
  v4 = [(CDDCloudKitClient *)&v14 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:name options:0];
    v4->_connection = v5;
    -[NSXPCConnection setRemoteObjectInterface:](v5, "setRemoteObjectInterface:", [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF44F478]);
    objc_initWeak(&location, v4);
    connection = v4->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__CDDCloudKitClient_initWithMachServiceName___block_invoke;
    v11[3] = &unk_1E6EC23A0;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)connection setInvalidationHandler:v11];
    v7 = v4->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__CDDCloudKitClient_initWithMachServiceName___block_invoke_2;
    v9[3] = &unk_1E6EC23A0;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v9];
    [(NSXPCConnection *)v4->_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __45__CDDCloudKitClient_initWithMachServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[9] = 1;
  }
}

void __45__CDDCloudKitClient_initWithMachServiceName___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = 1;
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];

  v3.receiver = self;
  v3.super_class = CDDCloudKitClient;
  [(CDDCloudKitClient *)&v3 dealloc];
}

- (void)handleMessage:(id)message reply:(id)reply
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__28;
  v15 = __Block_byref_object_dispose__28;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__CDDCloudKitClient_handleMessage_reply___block_invoke;
  v10[3] = &unk_1E6EC1DF0;
  v10[4] = &v11;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  if (!v7 || ([v7 handleMessage:message reply:reply], v12[5]))
  {
    v8 = [CDDCloudKitResponse alloc];
    v9 = [(CDDCloudKitResponse *)v8 initWithMessage:message success:0 error:v12[5]];
    (*(reply + 2))(reply, v9);
  }

  v12[5] = 0;
  _Block_object_dispose(&v11, 8);
}

id __41__CDDCloudKitClient_handleMessage_reply___block_invoke(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

@end