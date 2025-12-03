@interface ASDDiagnosticService
+ (id)defaultService;
- (BOOL)pingWithError:(id *)error;
- (BOOL)sendCommand:(int64_t)command withError:(id *)error;
- (id)_asynchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)activeClientsWithError:(id *)error;
- (id)sendDetailsCommand:(int64_t)command timeout:(id)timeout withError:(id *)error;
- (void)addSubscriberWithEndpoint:(id)endpoint;
@end

@implementation ASDDiagnosticService

+ (id)defaultService
{
  if (qword_1ED90D5F0 != -1)
  {
    dispatch_once(&qword_1ED90D5F0, &__block_literal_global_20);
  }

  v3 = _MergedGlobals_47;

  return v3;
}

void __38__ASDDiagnosticService_defaultService__block_invoke()
{
  v0 = [ASDDiagnosticService alloc];
  v1 = +[ASDServiceBroker defaultBroker];
  v4 = v1;
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = ASDDiagnosticService;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    v0 = v2;
    if (v2)
    {
      objc_storeStrong(&v2->_serviceBroker, v1);
    }
  }

  v3 = _MergedGlobals_47;
  _MergedGlobals_47 = v0;
}

- (id)activeClientsWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12;
  v20 = __Block_byref_object_dispose__12;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__ASDDiagnosticService_activeClientsWithError___block_invoke;
  v15[3] = &unk_1E7CDBB80;
  v15[4] = &v16;
  v4 = [(ASDDiagnosticService *)self _synchronousRemoteObjectProxyWithErrorHandler:v15];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__ASDDiagnosticService_activeClientsWithError___block_invoke_2;
  v8[3] = &unk_1E7CDD288;
  v8[4] = &v9;
  [v4 activeClientsWithReplyHandler:v8];
  if (error)
  {
    v5 = v17[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

- (void)addSubscriberWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [(ASDDiagnosticService *)self _synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18];
  [v5 addSubscriberWithEndpoint:endpointCopy];
}

void __50__ASDDiagnosticService_addSubscriberWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "[DiagnosticService] Adding subscriber failed: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)pingWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__12;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__ASDDiagnosticService_pingWithError___block_invoke;
  v13[3] = &unk_1E7CDBB80;
  v13[4] = &v14;
  v4 = [(ASDDiagnosticService *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__ASDDiagnosticService_pingWithError___block_invoke_2;
  v8[3] = &unk_1E7CDBA78;
  v8[4] = &v9;
  [v4 pingWithReplyHandler:v8];
  if (error)
  {
    v5 = v15[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v14, 8);
  return v6;
}

- (BOOL)sendCommand:(int64_t)command withError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__ASDDiagnosticService_sendCommand_withError___block_invoke;
  v14[3] = &unk_1E7CDBB80;
  v14[4] = &v15;
  v6 = [(ASDDiagnosticService *)self _synchronousRemoteObjectProxyWithErrorHandler:v14];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ASDDiagnosticService_sendCommand_withError___block_invoke_2;
  v9[3] = &unk_1E7CDBA78;
  v9[4] = &v10;
  [v6 sendCommandWithReplyHandler:command handler:v9];
  v7 = *(v11 + 24);
  if (error && (v11[3] & 1) == 0)
  {
    *error = v16[5];
    v7 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v15, 8);
  return v7 & 1;
}

- (id)sendDetailsCommand:(int64_t)command timeout:(id)timeout withError:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  v9 = dispatch_semaphore_create(0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__12;
  v35 = __Block_byref_object_dispose__12;
  v36 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __61__ASDDiagnosticService_sendDetailsCommand_timeout_withError___block_invoke;
  v30[3] = &unk_1E7CDBB80;
  v30[4] = &v31;
  v10 = [(ASDDiagnosticService *)self _asynchronousRemoteObjectProxyWithErrorHandler:v30];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12;
  v28 = __Block_byref_object_dispose__12;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__ASDDiagnosticService_sendDetailsCommand_timeout_withError___block_invoke_2;
  v21[3] = &unk_1E7CDD2B0;
  v23 = &v24;
  v11 = v9;
  v22 = v11;
  [v10 sendCommandWithDetailedReplyHandler:command handler:v21];
  if ([timeoutCopy intValue] < 1)
  {
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = dispatch_time(0, 1000000000 * [timeoutCopy integerValue]);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      *buf = 138543618;
      v38 = v19;
      v39 = 2048;
      commandCopy = command;
      v20 = v19;
      _os_log_error_impl(&dword_1B8220000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: Timed out attempting to diagnostic command %ld", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.asclient.diagnostics" code:515 userInfo:&unk_1F3033378];
    v15 = v32[5];
    v32[5] = v14;
  }

  if (error)
  {
LABEL_9:
    *error = v32[5];
  }

LABEL_10:
  v16 = v25[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v31, 8);

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __61__ASDDiagnosticService_sendDetailsCommand_timeout_withError___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_asynchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  serviceBroker = self->_serviceBroker;
  v9 = 0;
  handlerCopy = handler;
  v5 = [(ASDServiceBroker *)serviceBroker getDiagnosticServiceWithError:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [v5 remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, v6);
    v7 = 0;
  }

  return v7;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  serviceBroker = self->_serviceBroker;
  v9 = 0;
  handlerCopy = handler;
  v5 = [(ASDServiceBroker *)serviceBroker getDiagnosticServiceWithError:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, v6);
    v7 = 0;
  }

  return v7;
}

@end