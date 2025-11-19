@interface FPWakeForURLSessionOperation
- (id)initForProvider:(id)a3 sessionIdentifier:(id)a4;
- (void)actionMain;
@end

@implementation FPWakeForURLSessionOperation

- (id)initForProvider:(id)a3 sessionIdentifier:(id)a4
{
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] fp_providerDomainIDFromProviderID:a3 domainIdentifier:@"NSFileProviderDomainDefaultIdentifier"];
  v11.receiver = self;
  v11.super_class = FPWakeForURLSessionOperation;
  v9 = [(FPActionOperation *)&v11 initWithProvider:v8 action:0];

  if (v9)
  {
    objc_storeStrong(&v9->_sessionIdentifier, a4);
    [(FPActionOperation *)v9 setSetupRemoteOperationService:1];
  }

  return v9;
}

- (void)actionMain
{
  v3 = [(FPActionOperation *)self remoteServiceProxy];
  sessionIdentifier = self->_sessionIdentifier;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__FPWakeForURLSessionOperation_actionMain__block_invoke;
  v5[3] = &unk_1E7939C00;
  v5[4] = self;
  [v3 wakeForSessionIdentifier:sessionIdentifier completionHandler:v5];
}

void __42__FPWakeForURLSessionOperation_actionMain__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__FPWakeForURLSessionOperation_actionMain__block_invoke_cold_1(a1, v3, v4);
    }
  }

  [*(a1 + 32) completedWithResult:0 error:v3];
}

void __42__FPWakeForURLSessionOperation_actionMain__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] %@ failed to wake provider: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end