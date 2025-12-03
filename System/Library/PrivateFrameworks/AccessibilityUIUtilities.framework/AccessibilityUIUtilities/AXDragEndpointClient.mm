@interface AXDragEndpointClient
+ (BOOL)isValidServiceName:(id)name;
- (AXDragEndpointClient)initWithServiceName:(id)name;
- (void)dealloc;
- (void)getDragEndpoint:(id)endpoint;
@end

@implementation AXDragEndpointClient

+ (BOOL)isValidServiceName:(id)name
{
  v3 = isValidServiceName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[AXDragEndpointClient isValidServiceName:];
  }

  v5 = [isValidServiceName__AllowedServiceNames containsObject:nameCopy];

  return v5;
}

void __43__AXDragEndpointClient_isValidServiceName___block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69897F8];
  v6[0] = *MEMORY[0x1E6989800];
  v6[1] = v1;
  v2 = *MEMORY[0x1E69897F0];
  v6[2] = *MEMORY[0x1E69897E8];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = isValidServiceName__AllowedServiceNames;
  isValidServiceName__AllowedServiceNames = v4;
}

- (AXDragEndpointClient)initWithServiceName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = AXDragEndpointClient;
  v5 = [(AXDragEndpointClient *)&v10 init];
  if (v5 && [objc_opt_class() isValidServiceName:nameCopy])
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:0];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F408F010];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_connection resume];
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = AXDragEndpointClient;
  [(AXDragEndpointClient *)&v3 dealloc];
}

- (void)getDragEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__AXDragEndpointClient_getDragEndpoint___block_invoke;
  v11[3] = &unk_1E812DBE0;
  v6 = endpointCopy;
  v12 = v6;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AXDragEndpointClient_getDragEndpoint___block_invoke_331;
  v9[3] = &unk_1E812DC08;
  v10 = v6;
  v8 = v6;
  [v7 requestDragEndpoint:v9];
}

void __40__AXDragEndpointClient_getDragEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogDragging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __40__AXDragEndpointClient_getDragEndpoint___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __40__AXDragEndpointClient_getDragEndpoint___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_ERROR, "unable to get drag endpoint: %@", &v2, 0xCu);
}

@end