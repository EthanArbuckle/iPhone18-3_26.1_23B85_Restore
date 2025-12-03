@interface FPFetchDefaultContainerOperation
- (id)initForApplicationRecord:(id)record providerDomain:(id)domain;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
@end

@implementation FPFetchDefaultContainerOperation

- (id)initForApplicationRecord:(id)record providerDomain:(id)domain
{
  recordCopy = record;
  domainCopy = domain;
  identifier = [domainCopy identifier];
  v15.receiver = self;
  v15.super_class = FPFetchDefaultContainerOperation;
  v10 = [(FPActionOperation *)&v15 initWithProvider:identifier action:0];

  if (v10)
  {
    objc_storeStrong(&v10->_requestedRecord, record);
    identifier2 = [domainCopy identifier];
    fp_toDomainIdentifier = [identifier2 fp_toDomainIdentifier];
    domainIdentifier = v10->_domainIdentifier;
    v10->_domainIdentifier = fp_toDomainIdentifier;

    [(FPActionOperation *)v10 setSetupRemoteOperationService:1];
  }

  return v10;
}

- (void)actionMain
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_ERROR, "[ERROR] Requested default container for application record %@ with nil bundle identifier", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __46__FPFetchDefaultContainerOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__FPFetchDefaultContainerOperation_actionMain__block_invoke_cold_1(v6);
    }
  }

  [*(a1 + 32) completedWithResult:v5 error:v6];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  fetchCompletionBlock = [(FPFetchDefaultContainerOperation *)self fetchCompletionBlock];
  v9 = fetchCompletionBlock;
  if (fetchCompletionBlock)
  {
    (*(fetchCompletionBlock + 16))(fetchCompletionBlock, resultCopy, errorCopy);
    [(FPFetchDefaultContainerOperation *)self setFetchCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = FPFetchDefaultContainerOperation;
  [(FPActionOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

void __46__FPFetchDefaultContainerOperation_actionMain__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end