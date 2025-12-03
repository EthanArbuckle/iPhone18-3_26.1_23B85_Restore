@interface FPBlockRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (FPBlockRecoveryAttempter)initWithBlock:(id)block operationService:(id)service;
- (NSError)expectedError;
@end

@implementation FPBlockRecoveryAttempter

- (FPBlockRecoveryAttempter)initWithBlock:(id)block operationService:(id)service
{
  blockCopy = block;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = FPBlockRecoveryAttempter;
  v8 = [(FPBlockRecoveryAttempter *)&v12 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    recoveryBlock = v8->_recoveryBlock;
    v8->_recoveryBlock = v9;

    objc_storeStrong(&v8->_fpxOperationService, service);
  }

  return v8;
}

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  errorCopy = error;
  code = [errorCopy code];
  WeakRetained = objc_loadWeakRetained(&self->_expectedError);
  code2 = [WeakRetained code];

  if (code != code2)
  {
    code3 = [errorCopy code];
    v11 = objc_loadWeakRetained(&self->_expectedError);
    code4 = [v11 code];

    if (code3 != code4)
    {
      [FPBlockRecoveryAttempter attemptRecoveryFromError:a2 optionIndex:self];
    }
  }

  domain = [errorCopy domain];
  v14 = objc_loadWeakRetained(&self->_expectedError);
  domain2 = [v14 domain];

  if (domain != domain2)
  {
    domain3 = [errorCopy domain];
    v17 = objc_loadWeakRetained(&self->_expectedError);
    domain4 = [v17 domain];

    if (domain3 != domain4)
    {
      [FPBlockRecoveryAttempter attemptRecoveryFromError:a2 optionIndex:self];
    }
  }

  userInfo = [errorCopy userInfo];
  v20 = [userInfo valueForKey:@"FPErrorSuppressionCheckboxIsChecked"];

  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v20 BOOLValue])
    {
      userInfo2 = [errorCopy userInfo];
      v22 = [userInfo2 valueForKey:@"FPUserInteractionIdentifier"];

      v23 = fp_current_or_default_log();
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [FPBlockRecoveryAttempter attemptRecoveryFromError:optionIndex:];
        }

        userInfo3 = [errorCopy userInfo];
        v24 = [userInfo3 objectForKey:@"DomainIdentifier"];

        [(FPXOperationService *)self->_fpxOperationService userCheckedSuppressionCheckboxForUserInteractionIdentifier:v22 domainIdentifier:v24 completionHandler:&__block_literal_global_299];
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FPBlockRecoveryAttempter attemptRecoveryFromError:optionIndex:];
      }
    }

    else
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [FPBlockRecoveryAttempter attemptRecoveryFromError:optionIndex:];
      }
    }
  }

  else
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [FPBlockRecoveryAttempter attemptRecoveryFromError:optionIndex:];
    }
  }

  (*(self->_recoveryBlock + 2))();
  return 1;
}

void __65__FPBlockRecoveryAttempter_attemptRecoveryFromError_optionIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fp_current_or_default_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__FPBlockRecoveryAttempter_attemptRecoveryFromError_optionIndex___block_invoke_cold_1(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__FPBlockRecoveryAttempter_attemptRecoveryFromError_optionIndex___block_invoke_cold_2();
  }
}

- (NSError)expectedError
{
  WeakRetained = objc_loadWeakRetained(&self->_expectedError);

  return WeakRetained;
}

- (void)attemptRecoveryFromError:(uint64_t)a1 optionIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSError+FPAdditions.m" lineNumber:882 description:@"unexpected error code"];
}

- (void)attemptRecoveryFromError:(uint64_t)a1 optionIndex:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSError+FPAdditions.m" lineNumber:883 description:@"unexpected error domain"];
}

void __65__FPBlockRecoveryAttempter_attemptRecoveryFromError_optionIndex___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, a2, a3, "[ERROR] Suppression: Error async sending suppression checkbox notification to extension: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end