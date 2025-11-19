@interface _EXNSExtensionContextShimImplementation
+ (id)makeContextWithSceneSession:(id)a3;
- (BOOL)shoudAcceptConnection:(id)a3;
- (NSArray)inputItems;
- (NSXPCConnection)_auxiliaryConnection;
- (_EXNSExtensionContextShimImplementation)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5 extensionContext:(id)a6;
- (_EXNSExtensionContextShimImplementation)initWithSceneSession:(id)a3;
- (_EXNSExtensionShimExtension)extension;
- (_EXSceneSession)sceneSession;
- (id)makeXPCConnectionWithError:(id *)a3;
- (void)beginContextRequest:(id)a3 endpoint:(id)a4 reply:(id)a5;
- (void)cancelRequestWithError:(id)a3;
- (void)completeRequestReturningItems:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
@end

@implementation _EXNSExtensionContextShimImplementation

+ (id)makeContextWithSceneSession:(id)a3
{
  v3 = a3;
  v4 = [[_EXNSExtensionContextShimImplementation alloc] initWithSceneSession:v3];
  v5 = [_EXDecoderHack alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71___EXNSExtensionContextShimImplementation_makeContextWithSceneSession___block_invoke;
  v12[3] = &unk_1E6E4E1E8;
  v13 = v4;
  v6 = v4;
  v7 = [(_EXDecoderHack *)v5 initWithContextFactory:v12];
  v8 = [v3 extension];

  v9 = [v8 identity];
  v10 = [objc_alloc(objc_msgSend(v9 "extensionContextClass"))];

  return v10;
}

- (_EXNSExtensionContextShimImplementation)initWithSceneSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _EXNSExtensionContextShimImplementation;
  v5 = [(_EXNSExtensionContextShimImplementation *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    objc_storeWeak(&v5->_sceneSession, v4);
  }

  return v5;
}

- (id)makeXPCConnectionWithError:(id *)a3
{
  v4 = [(_EXNSExtensionContextShimImplementation *)self sceneSession];
  v5 = [v4 makeXPCConnectionWithError:a3];

  return v5;
}

- (void)invalidate
{
  v2 = [(_EXNSExtensionContextShimImplementation *)self sceneSession];
  [v2 invalidate];
}

- (BOOL)shoudAcceptConnection:(id)a3
{
  v3 = a3;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315650;
    v7 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v8 = 1024;
    v9 = 89;
    v10 = 2080;
    v11 = "[_EXNSExtensionContextShimImplementation shoudAcceptConnection:]";
    _os_log_fault_impl(&dword_1847D1000, v4, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported method: %s", &v6, 0x1Cu);
  }

  __break(1u);
  return result;
}

- (void)beginContextRequest:(id)a3 endpoint:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _EXDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315650;
    v12 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v13 = 1024;
    v14 = 96;
    v15 = 2080;
    v16 = "[_EXNSExtensionContextShimImplementation beginContextRequest:endpoint:reply:]";
    _os_log_fault_impl(&dword_1847D1000, v10, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported method: %s", &v11, 0x1Cu);
  }

  __break(1u);
}

- (void)cancelRequestWithError:(id)a3
{
  v3 = a3;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315650;
    v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v7 = 1024;
    v8 = 101;
    v9 = 2080;
    v10 = "[_EXNSExtensionContextShimImplementation cancelRequestWithError:]";
    _os_log_fault_impl(&dword_1847D1000, v4, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported method: %s", &v5, 0x1Cu);
  }

  __break(1u);
}

- (void)completeRequestReturningItems:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _EXDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315650;
    v9 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v10 = 1024;
    v11 = 105;
    v12 = 2080;
    v13 = "[_EXNSExtensionContextShimImplementation completeRequestReturningItems:completionHandler:]";
    _os_log_fault_impl(&dword_1847D1000, v7, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported method: %s", &v8, 0x1Cu);
  }

  __break(1u);
}

- (_EXNSExtensionContextShimImplementation)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5 extensionContext:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = _EXDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v15 = 136315650;
    v16 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v17 = 1024;
    v18 = 110;
    v19 = 2080;
    v20 = "[_EXNSExtensionContextShimImplementation initWithInputItems:listenerEndpoint:contextUUID:extensionContext:]";
    _os_log_fault_impl(&dword_1847D1000, v13, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported initializer: %s", &v15, 0x1Cu);
  }

  __break(1u);
  return result;
}

- (NSArray)inputItems
{
  v2 = _EXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v6 = 1024;
    v7 = 120;
    v8 = 2080;
    v9 = "[_EXNSExtensionContextShimImplementation inputItems]";
    _os_log_fault_impl(&dword_1847D1000, v2, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported property access: %s", &v4, 0x1Cu);
  }

  __break(1u);
  return result;
}

- (NSXPCConnection)_auxiliaryConnection
{
  v2 = _EXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/EXExtension/Extension/Shim/EXNSExtensionContextShimImplementation.m";
    v6 = 1024;
    v7 = 134;
    v8 = 2080;
    v9 = "[_EXNSExtensionContextShimImplementation _auxiliaryConnection]";
    _os_log_fault_impl(&dword_1847D1000, v2, OS_LOG_TYPE_FAULT, "%s - %d: Unsupported property access: %s", &v4, 0x1Cu);
  }

  __break(1u);
  return result;
}

- (_EXNSExtensionShimExtension)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_extension);

  return WeakRetained;
}

- (_EXSceneSession)sceneSession
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneSession);

  return WeakRetained;
}

@end