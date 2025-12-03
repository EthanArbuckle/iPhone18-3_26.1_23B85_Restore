@interface TKCTKDConnection
- (NSXPCConnection)serverConnection;
- (TKCTKDConnection)initWithCTKDEndpoint:(id)endpoint targetUID:(id)d;
- (id)withError:(id *)error invoke:(id)invoke;
- (void)dealloc;
- (void)serverConnection;
@end

@implementation TKCTKDConnection

- (NSXPCConnection)serverConnection
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  serverConnection = selfCopy->_serverConnection;
  if (serverConnection)
  {
    goto LABEL_14;
  }

  serverEndpoint = selfCopy->_serverEndpoint;
  if (serverEndpoint)
  {
    v6 = serverEndpoint;
  }

  else
  {
    v6 = provideEndpoint(2);
    if (!v6)
    {
      if (selfCopy->_targetUID)
      {
        v15 = TK_LOG_client_2();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(TKCTKDConnection *)@"com.apple.ctkd.token-client" serverConnection:buf];
        }
      }

      selfCopy->_namedConnection = 1;
      v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ctkd.token-client" options:0];
      v6 = 0;
      goto LABEL_7;
    }
  }

  v7 = TK_LOG_client_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = selfCopy->_serverEndpoint ? "external" : "EP-provided";
    targetUID = selfCopy->_targetUID;
    if (targetUID)
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (targetUID=%d)", -[NSNumber integerValue](selfCopy->_targetUID, "integerValue")];
      uTF8String = [v2 UTF8String];
    }

    else
    {
      uTF8String = "";
    }

    *buf = 136446466;
    v20 = v16;
    v21 = 2082;
    v22 = uTF8String;
    _os_log_debug_impl(&dword_1DF413000, v7, OS_LOG_TYPE_DEBUG, "creating connection to %{public}s endpoint%{public}s", buf, 0x16u);
    if (targetUID)
    {
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v6];
LABEL_7:
  v9 = selfCopy->_serverConnection;
  selfCopy->_serverConnection = v8;

  v10 = selfCopy->_targetUID;
  if (v10)
  {
    [(NSXPCConnection *)selfCopy->_serverConnection _setTargetUserIdentifier:[(NSNumber *)v10 integerValue]];
  }

  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A901D0];
  [(NSXPCConnection *)selfCopy->_serverConnection setRemoteObjectInterface:v11];

  if (selfCopy->_exportedInterface)
  {
    [(NSXPCConnection *)selfCopy->_serverConnection setExportedInterface:?];
  }

  if (selfCopy->_exportedObject)
  {
    [(NSXPCConnection *)selfCopy->_serverConnection setExportedObject:?];
  }

  [(NSXPCConnection *)selfCopy->_serverConnection resume];

  serverConnection = selfCopy->_serverConnection;
LABEL_14:
  v12 = serverConnection;
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (TKCTKDConnection)initWithCTKDEndpoint:(id)endpoint targetUID:(id)d
{
  endpointCopy = endpoint;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TKCTKDConnection;
  v9 = [(TKCTKDConnection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serverEndpoint, endpoint);
    objc_storeStrong(&v10->_targetUID, d);
  }

  return v10;
}

- (id)withError:(id *)error invoke:(id)invoke
{
  v42 = *MEMORY[0x1E69E9840];
  invokeCopy = invoke;
  v30 = 0;
  v29 = *MEMORY[0x1E696A250];
  *&v8 = 67109120;
  v28 = v8;
  while (v30 <= 7)
  {
    v35 = 0;
    v36[0] = &v35;
    v36[1] = 0x3032000000;
    v36[2] = __Block_byref_object_copy__8;
    v36[3] = __Block_byref_object_dispose__8;
    v37 = 0;
    serverConnection = [(TKCTKDConnection *)self serverConnection];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __37__TKCTKDConnection_withError_invoke___block_invoke;
    v34[3] = &unk_1E86B7B20;
    v34[4] = &v35;
    v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v34];

    v33 = 0;
    v11 = invokeCopy[2](invokeCopy, v10, &v33);
    v12 = v33;
    v13 = *(v36[0] + 40);
    if (!v13)
    {
      if (error && !v11)
      {
        v22 = v12;
        *error = v12;
      }

      v4 = v11;
      v17 = 0;
      goto LABEL_26;
    }

    if ([v13 code] == 4097 && (objc_msgSend(*(v36[0] + 40), "domain"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v29), v14, v15))
    {
      v16 = TK_LOG_client_2();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = v28;
        v41 = v30;
        _os_log_debug_impl(&dword_1DF413000, v16, OS_LOG_TYPE_DEBUG, "reconnecting ctkd after interrupt, try %d", buf, 8u);
      }
    }

    else
    {
      if ([*(v36[0] + 40) code] != 4099)
      {
        goto LABEL_17;
      }

      domain = [*(v36[0] + 40) domain];
      v19 = [domain isEqualToString:v29];

      if (!v19)
      {
        goto LABEL_17;
      }

      if (self->_namedConnection || [(TKCTKDConnection *)self _testing_noAutomaticReconnect])
      {
        v20 = TK_LOG_client_2();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [(TKCTKDConnection *)&v31 withError:v32 invoke:v20];
        }

LABEL_17:
        if (error)
        {
          *error = *(v36[0] + 40);
        }

        v21 = TK_LOG_client_2();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(TKCTKDConnection *)v38 withError:v36 invoke:&v39, v21];
        }

        v17 = 0;
        v4 = 0;
        goto LABEL_26;
      }

      v23 = TK_LOG_client_2();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = v28;
        v41 = v30;
        _os_log_debug_impl(&dword_1DF413000, v23, OS_LOG_TYPE_DEBUG, "reconnecting ctkd after invalidate, try %d", buf, 8u);
      }

      [(NSXPCConnection *)self->_serverConnection invalidate];
      serverConnection = self->_serverConnection;
      self->_serverConnection = 0;

      [MEMORY[0x1E696AF00] sleepForTimeInterval:v30++ * 0.1];
    }

    v17 = 1;
LABEL_26:

    _Block_object_dispose(&v35, 8);
    if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v25 = TK_LOG_client_2();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [TKCTKDConnection withError:v25 invoke:?];
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:0];
    *error = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_36:

  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

id __28__TKCTKDConnection_endpoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__TKCTKDConnection_endpoint__block_invoke_2;
  v5[3] = &unk_1E86B8350;
  v5[4] = &v6;
  [v2 getEndpoint:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

id __41__TKCTKDConnection_configurationEndpoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__TKCTKDConnection_configurationEndpoint__block_invoke_2;
  v5[3] = &unk_1E86B8350;
  v5[4] = &v6;
  [v2 getConfigurationEndpoint:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  [(TKCTKDConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = TKCTKDConnection;
  [(TKCTKDConnection *)&v3 dealloc];
}

- (void)serverConnection
{
  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "creating connection to %{public}@, targetUID=%d", buf, 0x12u);
}

- (void)withError:(os_log_t)log invoke:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "failed to connect to named ctkd port, aborting (probably system shutdown in progress)", buf, 2u);
}

- (void)withError:(void *)a3 invoke:(os_log_t)log .cold.2(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138543362;
  *a3 = v4;
  _os_log_error_impl(&dword_1DF413000, log, OS_LOG_TYPE_ERROR, "invoke on token-client connection failed with connection error %{public}@", buf, 0xCu);
}

- (void)withError:(uint64_t)a1 invoke:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&dword_1DF413000, a2, OS_LOG_TYPE_FAULT, "Unable to connect to tokenServer even after retries. (ep=%{public}@, uid=%@)", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end