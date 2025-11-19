@interface VSAccountSaveOperation
- (VSAccountSaveOperation)init;
- (VSAccountSaveOperation)initWithUnsavedAccounts:(id)a3 channels:(id)a4 storage:(id)a5;
- (void)_startAccountChannelsSaveOperation;
- (void)_startCredentialSaveOperation;
- (void)cancel;
@end

@implementation VSAccountSaveOperation

- (VSAccountSaveOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAccountSaveOperation)initWithUnsavedAccounts:(id)a3 channels:(id)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The channels parameter must not be nil."];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accounts parameter must not be nil."];
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_9:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The storage parameter must not be nil."];
LABEL_4:
  v19.receiver = self;
  v19.super_class = VSAccountSaveOperation;
  v11 = [(VSAccountSaveOperation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    unsavedAccounts = v11->_unsavedAccounts;
    v11->_unsavedAccounts = v12;

    v14 = [v9 copy];
    unsavedChannels = v11->_unsavedChannels;
    v11->_unsavedChannels = v14;

    objc_storeStrong(&v11->_storage, a5);
    v16 = objc_alloc_init(VSOptional);
    v17 = v11->_result;
    v11->_result = v16;
  }

  return v11;
}

- (void)_startCredentialSaveOperation
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[VSAccountSaveOperation _startCredentialSaveOperation]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v4 = [VSCredentialSaveOperation alloc];
  v5 = [(VSAccountSaveOperation *)self unsavedAccounts];
  v6 = [(VSAccountSaveOperation *)self storage];
  v7 = [v6 accountStore];
  v8 = [(VSCredentialSaveOperation *)v4 initWithUnsavedAccounts:v5 accountStore:v7];

  objc_initWeak(buf, self);
  objc_initWeak(&location, v8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__VSAccountSaveOperation__startCredentialSaveOperation__block_invoke;
  v9[3] = &unk_278B732B0;
  objc_copyWeak(&v10, buf);
  objc_copyWeak(&v11, &location);
  [(VSCredentialSaveOperation *)v8 setCompletionBlock:v9];
  [(VSAccountSaveOperation *)self setCurrentOperation:v8];
  [(VSAsyncOperation *)v8 start];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __55__VSAccountSaveOperation__startCredentialSaveOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [v3 result];
    [WeakRetained setResult:v5];
    v6 = [v5 forceUnwrapObject];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__VSAccountSaveOperation__startCredentialSaveOperation__block_invoke_2;
    v9[3] = &unk_278B73668;
    v9[4] = WeakRetained;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__VSAccountSaveOperation__startCredentialSaveOperation__block_invoke_3;
    v8[3] = &unk_278B732E0;
    v8[4] = WeakRetained;
    [v6 unwrapObject:v9 error:v8];
  }

  else
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "_startCredentialSaveOperation: nil operation ref", v7, 2u);
    }
  }
}

void __55__VSAccountSaveOperation__startCredentialSaveOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "_startCredentialSaveOperation: %@", &v5, 0xCu);
  }

  [*(a1 + 32) finishExecutionIfPossible];
}

- (void)_startAccountChannelsSaveOperation
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VSAccountSaveOperation _startAccountChannelsSaveOperation]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v4 = [VSAccountChannelsSaveOperation alloc];
  v5 = [(VSAccountSaveOperation *)self unsavedChannels];
  v6 = [(VSAccountSaveOperation *)self storage];
  v7 = [v6 channelsCenter];
  v8 = [(VSAccountChannelsSaveOperation *)v4 initWithUnsavedAccountChannels:v5 accountChannelsCenter:v7];

  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__VSAccountSaveOperation__startAccountChannelsSaveOperation__block_invoke;
  v9[3] = &unk_278B74110;
  objc_copyWeak(&v10, buf);
  [(VSAccountChannelsSaveOperation *)v8 setCompletionBlock:v9];
  [(VSAccountSaveOperation *)self setCurrentOperation:v8];
  [(VSAsyncOperation *)v8 start];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __60__VSAccountSaveOperation__startAccountChannelsSaveOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained finishExecutionIfPossible];
    WeakRetained = v2;
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSAccountSaveOperation;
  [(VSAsyncOperation *)&v4 cancel];
  v3 = [(VSAccountSaveOperation *)self currentOperation];
  [v3 cancel];
}

@end