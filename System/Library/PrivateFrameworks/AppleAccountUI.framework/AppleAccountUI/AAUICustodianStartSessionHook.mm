@interface AAUICustodianStartSessionHook
- (AAUICustodianStartSessionHook)initWithTelemetryFlowID:(id)d;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_startSessionWithServerAttributes:(id)attributes completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUICustodianStartSessionHook

- (AAUICustodianStartSessionHook)initWithTelemetryFlowID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AAUICustodianStartSessionHook;
  v6 = [(AAUICustodianStartSessionHook *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_telemetryFlowID, d);
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"custodian:startSession"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"custodian:startSession"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(AAUICustodianStartSessionHook *)self _startSessionWithServerAttributes:clientInfo completion:completionCopy];
}

- (void)_startSessionWithServerAttributes:(id)attributes completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  completionCopy = completion;
  telemetryFlowID = self->_telemetryFlowID;
  if (telemetryFlowID)
  {
    uUIDString = telemetryFlowID;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v11 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.appleAccount.recoveryContactRecoveryLanding" altDSID:0 flowID:uUIDString];
  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
  reporter = [MEMORY[0x1E698B810] reporter];
  [reporter sendEvent:v11];

  v13 = [attributesCopy objectForKeyedSubscript:@"appleId"];
  v14 = [attributesCopy objectForKeyedSubscript:@"sessionId"];
  v15 = _AAUILogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Starting custodian recovery session for Apple ID: %@, Session ID: %@", buf, 0x16u);
  }

  v16 = objc_alloc_init(MEMORY[0x1E698B868]);
  [v16 setOwnerAppleID:v13];
  [v16 setRecoverySessionID:v14];
  [v16 setTelemetryFlowID:uUIDString];
  if (objc_opt_respondsToSelector())
  {
    [v16 setIsAccountRecovery:1];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__6;
  v28 = __Block_byref_object_dispose__6;
  v29 = objc_alloc_init(MEMORY[0x1E698B850]);
  v17 = *(*&buf[8] + 40);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__AAUICustodianStartSessionHook__startSessionWithServerAttributes_completion___block_invoke;
  v21[3] = &unk_1E820C7D8;
  v18 = v14;
  v22 = v18;
  v19 = completionCopy;
  v24 = v19;
  v20 = v13;
  v23 = v20;
  v25 = buf;
  [v17 startCustodianRecoveryWithContext:v16 completion:v21];

  _Block_object_dispose(buf, 8);
}

void __78__AAUICustodianStartSessionHook__startSessionWithServerAttributes_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 length])
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__AAUICustodianStartSessionHook__startSessionWithServerAttributes_completion___block_invoke_cold_1(a1, v6, v7);
    }

    v8 = a1[6];
    if (v6)
    {
      (*(v8 + 16))(a1[6], 0, v6);
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B768] code:-9004 userInfo:0];
      (*(v8 + 16))(v8, 0, v12);
    }
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v10 = a1[5];
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Custodian recovery session started for Apple ID: %@, Session ID: %@, IDMS Session ID: %@", &v15, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __78__AAUICustodianStartSessionHook__startSessionWithServerAttributes_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C5355000, log, OS_LOG_TYPE_ERROR, "Failed to start custodian recovery session (%@) with error: %@", &v4, 0x16u);
}

@end