@interface VSCredentialSaveOperation
- (VSCredentialSaveOperation)init;
- (VSCredentialSaveOperation)initWithUnsavedAccounts:(id)accounts accountStore:(id)store;
- (void)_didSaveAccounts:(id)accounts withResult:(BOOL)result error:(id)error;
- (void)executionDidBegin;
@end

@implementation VSCredentialSaveOperation

- (VSCredentialSaveOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSCredentialSaveOperation)initWithUnsavedAccounts:(id)accounts accountStore:(id)store
{
  accountsCopy = accounts;
  storeCopy = store;
  v8 = storeCopy;
  if (accountsCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountStore parameter must not be nil."];
LABEL_3:
  v15.receiver = self;
  v15.super_class = VSCredentialSaveOperation;
  v9 = [(VSCredentialSaveOperation *)&v15 init];
  if (v9)
  {
    v10 = [accountsCopy copy];
    unsavedAccounts = v9->_unsavedAccounts;
    v9->_unsavedAccounts = v10;

    objc_storeStrong(&v9->_accountStore, store);
    v12 = objc_alloc_init(VSOptional);
    v13 = v9->_result;
    v9->_result = v12;
  }

  return v9;
}

- (void)_didSaveAccounts:(id)accounts withResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  accountsCopy = accounts;
  errorCopy = error;
  v10 = errorCopy;
  if (resultCopy)
  {
    v11 = +[VSAccountStore sharedAccountStore];
    accounts = [v11 accounts];

    if (![accounts count] && objc_msgSend(accountsCopy, "count"))
    {
      v13 = VSDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_23AB8E000, v13, OS_LOG_TYPE_DEFAULT, "Unable to fetch accounts from account store - fallback to local accounts.", v19, 2u);
      }

      v14 = accountsCopy;
      accounts = v14;
    }

    v15 = [VSFailable failableWithObject:accounts];
    v16 = [VSOptional optionalWithObject:v15];
    [(VSCredentialSaveOperation *)self setResult:v16];
  }

  else
  {
    if (!errorCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
    }

    v17 = [VSFailable failableWithError:v10];
    v18 = [VSOptional optionalWithObject:v17];
    [(VSCredentialSaveOperation *)self setResult:v18];
  }

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

- (void)executionDidBegin
{
  unsavedAccounts = [(VSCredentialSaveOperation *)self unsavedAccounts];
  accountStore = [(VSCredentialSaveOperation *)self accountStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__VSCredentialSaveOperation_executionDidBegin__block_invoke;
  v6[3] = &unk_278B742E0;
  v6[4] = self;
  v7 = unsavedAccounts;
  v5 = unsavedAccounts;
  [accountStore saveAccounts:v5 withCompletionHandler:v6];
}

void __46__VSCredentialSaveOperation_executionDidBegin__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "VSCredentialSaveOperation: success %d, error %@", v7, 0x12u);
  }

  [*(a1 + 32) _didSaveAccounts:*(a1 + 40) withResult:a2 error:v5];
}

@end