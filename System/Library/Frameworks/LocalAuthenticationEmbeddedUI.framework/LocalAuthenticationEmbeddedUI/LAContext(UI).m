@interface LAContext(UI)
- (void)_authenticateWithOptions:()UI acl:availableMechanisms:hostVC:context:operation:updatedOptions:reply:;
- (void)_validateAvailableMechanims:()UI completion:;
- (void)evaluateAccessControl:()UI operation:options:presentationContext:reply:;
@end

@implementation LAContext(UI)

- (void)evaluateAccessControl:()UI operation:options:presentationContext:reply:
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v12 objectForKeyedSubscript:&unk_284B87648];
  v16 = [v15 BOOLValue];

  v17 = [v12 mutableCopy];
  [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_284B87648];
  objc_initWeak(&location, a1);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke;
  v22[3] = &unk_278A65598;
  v28 = v16;
  v18 = v14;
  v26 = v18;
  objc_copyWeak(v27, &location);
  v19 = v13;
  v23 = v19;
  v27[1] = a3;
  v27[2] = a4;
  v20 = v12;
  v24 = v20;
  v21 = v17;
  v25 = v21;
  [a1 evaluateAccessControl:a3 operation:a4 options:v21 reply:v22];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

- (void)_authenticateWithOptions:()UI acl:availableMechanisms:hostVC:context:operation:updatedOptions:reply:
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  objc_initWeak(&location, a1);
  v22 = [a1 uiHelper];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __112__LAContext_UI___authenticateWithOptions_acl_availableMechanisms_hostVC_context_operation_updatedOptions_reply___block_invoke;
  v25[3] = &unk_278A655C0;
  objc_copyWeak(v28, &location);
  v23 = v21;
  v27 = v23;
  v28[1] = a4;
  v28[2] = a8;
  v24 = v20;
  v26 = v24;
  [v22 authenticateWithOptions:v16 availableMechanisms:v17 hostVC:v18 context:v19 reply:v25];

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

- (void)_validateAvailableMechanims:()UI completion:
{
  v5 = a3;
  v6 = a4;
  if ([v5 containsObject:&unk_284B87660])
  {
    v7 = [MEMORY[0x277D240F8] sharedInstance];
    v8 = [MEMORY[0x277D240F8] faceIDServiceName];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke;
    v9[3] = &unk_278A65610;
    v10 = v5;
    v11 = v6;
    [v7 requestAuthorizationForService:v8 completion:v9];
  }

  else
  {
    (*(v6 + 2))(v6, v5);
  }
}

@end