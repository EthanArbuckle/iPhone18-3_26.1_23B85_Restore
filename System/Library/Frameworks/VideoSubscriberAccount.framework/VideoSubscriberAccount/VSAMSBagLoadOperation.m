@interface VSAMSBagLoadOperation
- (void)executionDidBegin;
@end

@implementation VSAMSBagLoadOperation

- (void)executionDidBegin
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VSAMSBagLoadOperation executionDidBegin]";
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CEE3F8] vs_defaultBag];
  v5 = [(VSAMSBagLoadOperation *)self bagKey];
  v6 = [v4 stringForKey:v5];

  v7 = [(VSAMSBagLoadOperation *)self bagKey];
  v8 = v7;
  if (v7 == @"SoleProviderFeatureEnabled")
  {

LABEL_7:
    v10 = [(VSAMSBagLoadOperation *)self bagKey];
    v11 = [v4 BOOLForKey:v10];

    v6 = v11;
    goto LABEL_8;
  }

  v9 = [(VSAMSBagLoadOperation *)self bagKey];

  if (v9 == @"ShowMultiAppInstallForCaseAlwaysRequirePassword")
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = [v6 valuePromise];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__VSAMSBagLoadOperation_executionDidBegin__block_invoke;
  v13[3] = &unk_278B74BB0;
  v13[4] = self;
  [v12 addFinishBlock:v13];
}

void __42__VSAMSBagLoadOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) bagKey];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "Finished loading value %@ for AMS bag key %@ with error %@", &v12, 0x20u);
  }

  [*(a1 + 32) setValue:v5];
  v9 = [v6 domain];
  if (![v9 isEqualToString:*MEMORY[0x277CEE188]])
  {

    goto LABEL_9;
  }

  v10 = [v6 code];

  if (v10 != 204)
  {
LABEL_9:
    [*(a1 + 32) setError:v6];
    goto LABEL_10;
  }

  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_23AB8E000, v11, OS_LOG_TYPE_DEFAULT, "Bag error was AMSErrorCodeBagValueMissing, ignoring error", &v12, 2u);
  }

LABEL_10:
  [*(a1 + 32) finishExecutionIfPossible];
}

@end