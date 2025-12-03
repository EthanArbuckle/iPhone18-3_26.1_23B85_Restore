@interface _EXPromiseManager
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_EXPromiseManager)init;
- (id)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint error:(id *)error;
- (void)registerPromise:(id)promise;
- (void)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint completion:(id)completion;
- (void)resolvePromiseWithIdentifier:(id)identifier reply:(id)reply;
- (void)unregisterPromise:(id)promise;
@end

@implementation _EXPromiseManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_EXPromiseManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (_EXPromiseManager)init
{
  v8.receiver = self;
  v8.super_class = _EXPromiseManager;
  v2 = [(_EXPromiseManager *)&v8 init];
  if (v2)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    promises = v2->_promises;
    v2->_promises = weakToWeakObjectsMapTable;

    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = anonymousListener;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint error:(id *)error
{
  classesCopy = classes;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  if (!endpointCopy)
  {
    v22 = _EXDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

    goto LABEL_19;
  }

  if (!identifierCopy)
  {
    v22 = _EXDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

    goto LABEL_19;
  }

  v12 = endpointCopy;
  if ([classesCopy containsObject:objc_opt_class()])
  {
    v22 = _EXDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

LABEL_19:

    __break(1u);
    return result;
  }

  v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v12];
  v14 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1C00];
  [v14 setClasses:classesCopy forSelector:sel_resolvePromiseWithIdentifier_reply_ argumentIndex:0 ofReply:1];
  [v13 setRemoteObjectInterface:v14];
  [v13 resume];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_error___block_invoke;
  v24[3] = &unk_1E6E4E320;
  v24[4] = &v31;
  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v24];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_error___block_invoke_2;
  v23[3] = &unk_1E6E4E348;
  v23[4] = &v25;
  [v15 resolvePromiseWithIdentifier:identifierCopy reply:v23];
  v16 = v32;
  if (!v26[5] && !v32[5])
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:9 userInfo:MEMORY[0x1E695E0F8]];
    v18 = v32[5];
    v32[5] = v17;

    v16 = v32;
  }

  if (error)
  {
    v19 = v16[5];
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v20;
}

- (void)resolveObjectOfClasses:(id)classes forIdentifier:(id)identifier endpoint:(id)endpoint completion:(id)completion
{
  classesCopy = classes;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  completionCopy = completion;
  if (endpointCopy)
  {
    if (identifierCopy)
    {
      v13 = completionCopy;
      if ([classesCopy containsObject:objc_opt_class()])
      {
        v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
        v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1C00];
        [v15 setClasses:classesCopy forSelector:sel_resolvePromiseWithIdentifier_reply_ argumentIndex:0 ofReply:1];
        [v14 setRemoteObjectInterface:v15];
        [v14 resume];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __78___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_completion___block_invoke;
        v22[3] = &unk_1E6E4DB38;
        v16 = v13;
        v23 = v16;
        v17 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v22];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __78___EXPromiseManager_resolveObjectOfClasses_forIdentifier_endpoint_completion___block_invoke_2;
        v20[3] = &unk_1E6E4E370;
        v21 = v16;
        v18 = v16;
        [v17 resolvePromiseWithIdentifier:identifierCopy reply:v20];

        return;
      }

      v19 = _EXDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:completion:];
      }
    }

    else
    {
      v19 = _EXDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:completion:];
      }
    }
  }

  else
  {
    v19 = _EXDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:completion:];
    }
  }

  __break(1u);
}

- (void)registerPromise:(id)promise
{
  promiseCopy = promise;
  identifier = [promiseCopy identifier];
  v6 = _EXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_EXPromiseManager registerPromise:];
  }

  promiseBlock = [promiseCopy promiseBlock];
  v8 = [promiseBlock copy];

  if (identifier)
  {
    if (v8)
    {
      [(NSMapTable *)self->_promises setObject:promiseCopy forKey:identifier];

      return;
    }

    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager registerPromise:];
    }
  }

  else
  {
    v9 = _EXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager registerPromise:];
    }
  }

  __break(1u);
}

- (void)unregisterPromise:(id)promise
{
  promiseCopy = promise;
  v5 = _EXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_EXPromiseManager *)promiseCopy unregisterPromise:v5];
  }

  identifier = [promiseCopy identifier];
  if (identifier)
  {
    v7 = identifier;
    [(NSMapTable *)self->_promises removeObjectForKey:identifier];
  }

  else
  {
    v8 = _EXDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager unregisterPromise:];
    }

    __break(1u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1EF2A1C00];
  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)resolvePromiseWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  promises = self->_promises;
  replyCopy = reply;
  v9 = [(NSMapTable *)promises objectForKey:identifierCopy];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFD8] set];
    v14 = 0;
    v11 = [v9 resolveObjectOfClasses:v10 error:&v14];
    v12 = v14;

    if (!v11)
    {
      v13 = _EXDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_EXPromiseManager resolvePromiseWithIdentifier:reply:];
      }
    }
  }

  else
  {
    v12 = _EXDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_EXPromiseManager resolvePromiseWithIdentifier:reply:];
    }

    v11 = 0;
  }

  replyCopy[2](replyCopy, v11);
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: endpoint is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:completion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveObjectOfClasses:forIdentifier:endpoint:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: endpoint is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerPromise:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x1E69E9840];
}

- (void)registerPromise:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: promiseBlock is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerPromise:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPromise:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_6();

  v4 = *MEMORY[0x1E69E9840];
}

- (void)unregisterPromise:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7(&dword_1847D1000, v0, v1, "%s - %s:%d: identifier is nil", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolvePromiseWithIdentifier:reply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v0, v1, "Failed to resolve promise: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolvePromiseWithIdentifier:reply:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8(&dword_1847D1000, v0, v1, "Failed to resolve, no promise with identifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end