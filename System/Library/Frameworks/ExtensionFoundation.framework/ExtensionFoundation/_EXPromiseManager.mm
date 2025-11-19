@interface _EXPromiseManager
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_EXPromiseManager)init;
- (id)resolveObjectOfClasses:(id)a3 forIdentifier:(id)a4 endpoint:(id)a5 error:(id *)a6;
- (void)registerPromise:(id)a3;
- (void)resolveObjectOfClasses:(id)a3 forIdentifier:(id)a4 endpoint:(id)a5 completion:(id)a6;
- (void)resolvePromiseWithIdentifier:(id)a3 reply:(id)a4;
- (void)unregisterPromise:(id)a3;
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
    v3 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    promises = v2->_promises;
    v2->_promises = v3;

    v5 = [MEMORY[0x1E696B0D8] anonymousListener];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)resolveObjectOfClasses:(id)a3 forIdentifier:(id)a4 endpoint:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
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
  if (!v11)
  {
    v22 = _EXDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    v22 = _EXDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [_EXPromiseManager resolveObjectOfClasses:forIdentifier:endpoint:error:];
    }

    goto LABEL_19;
  }

  v12 = v11;
  if ([v9 containsObject:objc_opt_class()])
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
  [v14 setClasses:v9 forSelector:sel_resolvePromiseWithIdentifier_reply_ argumentIndex:0 ofReply:1];
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
  [v15 resolvePromiseWithIdentifier:v10 reply:v23];
  v16 = v32;
  if (!v26[5] && !v32[5])
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:9 userInfo:MEMORY[0x1E695E0F8]];
    v18 = v32[5];
    v32[5] = v17;

    v16 = v32;
  }

  if (a6)
  {
    v19 = v16[5];
    if (v19)
    {
      *a6 = v19;
    }
  }

  v20 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v20;
}

- (void)resolveObjectOfClasses:(id)a3 forIdentifier:(id)a4 endpoint:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    if (v10)
    {
      v13 = v12;
      if ([v9 containsObject:objc_opt_class()])
      {
        v14 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v11];
        v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A1C00];
        [v15 setClasses:v9 forSelector:sel_resolvePromiseWithIdentifier_reply_ argumentIndex:0 ofReply:1];
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
        [v17 resolvePromiseWithIdentifier:v10 reply:v20];

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

- (void)registerPromise:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = _EXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_EXPromiseManager registerPromise:];
  }

  v7 = [v4 promiseBlock];
  v8 = [v7 copy];

  if (v5)
  {
    if (v8)
    {
      [(NSMapTable *)self->_promises setObject:v4 forKey:v5];

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

- (void)unregisterPromise:(id)a3
{
  v4 = a3;
  v5 = _EXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_EXPromiseManager *)v4 unregisterPromise:v5];
  }

  v6 = [v4 identifier];
  if (v6)
  {
    v7 = v6;
    [(NSMapTable *)self->_promises removeObjectForKey:v6];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1EF2A1C00];
  [v6 setExportedInterface:v7];
  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

- (void)resolvePromiseWithIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  promises = self->_promises;
  v8 = a4;
  v9 = [(NSMapTable *)promises objectForKey:v6];
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

  v8[2](v8, v11);
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