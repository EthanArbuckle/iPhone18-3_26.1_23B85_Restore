@interface AAUICustodianStartApprovalHook
- (AAUICustodianStartApprovalHook)initWithTelemetryFlowID:(id)d;
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_startApprovalWithServerAttributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation AAUICustodianStartApprovalHook

- (AAUICustodianStartApprovalHook)initWithTelemetryFlowID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AAUICustodianStartApprovalHook;
  v6 = [(AAUICustodianStartApprovalHook *)&v9 init];
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
  v4 = [name isEqualToString:@"custodian:startApproval"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"custodian:startApproval"];

  return v5;
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  modelCopy = model;
  clientInfo = [modelCopy clientInfo];
  [(AAUICustodianStartApprovalHook *)self _startApprovalWithServerAttributes:clientInfo objectModel:modelCopy completion:completionCopy];
}

- (void)_startApprovalWithServerAttributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  attributesCopy = attributes;
  v11 = [attributesCopy objectForKeyedSubscript:@"sessionId"];
  v12 = [attributesCopy objectForKeyedSubscript:@"resetEligible"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [WeakRetained presentationContextForHook:self];

  v15 = [AAUICustodianRecoveryApprovalController approvalControllerWithPresenter:v14 recoverySessionID:v11 telemetryFlowID:self->_telemetryFlowID];
  [v15 setIsResetEligible:v12 != 0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__AAUICustodianStartApprovalHook__startApprovalWithServerAttributes_objectModel_completion___block_invoke;
  v18[3] = &unk_1E820E018;
  v19 = modelCopy;
  v20 = completionCopy;
  v16 = modelCopy;
  v17 = completionCopy;
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