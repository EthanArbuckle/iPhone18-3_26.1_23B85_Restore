@interface AAUICustodianStartApprovalHook
- (AAUICustodianStartApprovalHook)initWithTelemetryFlowID:(id)a3;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_startApprovalWithServerAttributes:(id)a3 objectModel:(id)a4 completion:(id)a5;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUICustodianStartApprovalHook

- (AAUICustodianStartApprovalHook)initWithTelemetryFlowID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUICustodianStartApprovalHook;
  v6 = [(AAUICustodianStartApprovalHook *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_telemetryFlowID, a3);
  }

  return v7;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"custodian:startApproval"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"custodian:startApproval"];

  return v5;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 clientInfo];
  [(AAUICustodianStartApprovalHook *)self _startApprovalWithServerAttributes:v8 objectModel:v7 completion:v6];
}

- (void)_startApprovalWithServerAttributes:(id)a3 objectModel:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 objectForKeyedSubscript:@"sessionId"];
  v12 = [v10 objectForKeyedSubscript:@"resetEligible"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [WeakRetained presentationContextForHook:self];

  v15 = [AAUICustodianRecoveryApprovalController approvalControllerWithPresenter:v14 recoverySessionID:v11 telemetryFlowID:self->_telemetryFlowID];
  [v15 setIsResetEligible:v12 != 0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__AAUICustodianStartApprovalHook__startApprovalWithServerAttributes_objectModel_completion___block_invoke;
  v18[3] = &unk_1E820E018;
  v19 = v8;
  v20 = v9;
  v16 = v8;
  v17 = v9;
  [v15 validateRecoveryCodeWithCompletion:v18];
}

void __92__AAUICustodianStartApprovalHook__startApprovalWithServerAttributes_objectModel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [v14 custodianUUID];

  if (v5 || !v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) serverInfo];
    v8 = [v7 mutableCopy];

    v9 = [v14 custodianUUID];
    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKeyedSubscript:@"custodianUUID"];

    v11 = [v14 custodianRecoveryToken];
    [v8 setObject:v11 forKeyedSubscript:@"custodianRecoveryToken"];

    v12 = [v14 recoverySessionID];
    [v8 setObject:v12 forKeyedSubscript:@"sessionId"];

    v13 = [v8 copy];
    [*(a1 + 32) setServerInfo:v13];

    (*(*(a1 + 40) + 16))();
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end