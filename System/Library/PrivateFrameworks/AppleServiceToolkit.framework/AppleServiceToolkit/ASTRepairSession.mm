@interface ASTRepairSession
+ (void)downloadAsset:(id)a3 fileHandle:(id)a4 completionHandler:(id)a5;
- (ASTRepairSession)init;
- (ASTRepairSession)initWithDelegate:(id)a3;
- (BOOL)sendTestResult:(id)a3 error:(id *)a4;
- (void)cancelSuite;
- (void)completeTestSuite:(id)a3 description:(id)a4;
- (void)dealloc;
- (void)end;
- (void)estimatedTimeRemainingForTest:(id)a3 completion:(id)a4;
- (void)progressForTest:(id)a3 completion:(id)a4;
- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4;
- (void)requestSuiteSummary:(id)a3 completionHandler:(id)a4;
- (void)requestSuitesAvailableWithCompletionHandler:(id)a3;
- (void)showInstructionalPrompt:(id)a3 withConfirmation:(id)a4;
- (void)start;
- (void)startTest:(id)a3 parameters:(id)a4;
- (void)updateTestSuiteImage:(id)a3;
- (void)updateTestSuiteProgress:(id)a3;
@end

@implementation ASTRepairSession

- (ASTRepairSession)init
{
  v6.receiver = self;
  v6.super_class = ASTRepairSession;
  v2 = [(ASTRepairSession *)&v6 init];
  if (v2)
  {
    v3 = [[ASTRepairSessionProvider alloc] initWithServiceName:@"com.apple.corerepair.diagnostics-controller"];
    v4 = provider;
    provider = v3;

    [provider setDelegate:v2];
  }

  return v2;
}

- (ASTRepairSession)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ASTRepairSession *)self init];
  v6 = v5;
  if (v5)
  {
    [(ASTSession *)v5 setDelegate:v4];
  }

  return v6;
}

- (BOOL)sendTestResult:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[ASTRepairSession sendTestResult:error:]";
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", buf, 0xCu);
  }

  v7 = dispatch_semaphore_create(0);
  v8 = provider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__ASTRepairSession_sendTestResult_error___block_invoke;
  v14[3] = &unk_278CBD540;
  v15 = v7;
  v16 = a4;
  v9 = v7;
  [v8 sendTestResult:v5 withCompletion:v14];

  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_semaphore_wait(v9, v10) == 0;

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

intptr_t __41__ASTRepairSession_sendTestResult_error___block_invoke(uint64_t a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    **(a1 + 40) = a2;
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

+ (void)downloadAsset:(id)a3 fileHandle:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!provider)
  {
    v12 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASTRepairSession downloadAsset:v12 fileHandle:? completionHandler:?];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = -1007;
    goto LABEL_11;
  }

  if (([v8 isOpenForUpdating] & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = -3000;
LABEL_11:
    v10 = [v13 errorWithDomain:@"ASTErrorDomain" code:v14 userInfo:0];
    goto LABEL_12;
  }

  v19 = 0;
  [v8 truncateAtOffset:0 error:&v19];
  v10 = v19;
  if (!v10)
  {
    v15 = provider;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke;
    v16[3] = &unk_278CBD568;
    v18 = v9;
    v17 = v8;
    [v15 requestAsset:v7 withCompletion:v16];

    goto LABEL_13;
  }

  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [ASTRepairSession downloadAsset:v10 fileHandle:v11 completionHandler:?];
  }

LABEL_12:
  (*(v9 + 2))(v9, 0, v10);
LABEL_13:
}

void __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_1(v6, v10);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v14 = 0;
    [v7 writeData:a2 error:&v14];
    v8 = v14;
    if (v14)
    {
      v14;
      v9 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_2(v9);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = *(v11 + 16);
      v13 = 0;
      v12(v11, 1, 0);
    }
  }
}

- (void)requestSuiteSummary:(id)a3 completionHandler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ASTRepairSession requestSuiteSummary:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v9, 0xCu);
  }

  [provider requestSuiteResult:v6 withCompletion:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ASTRepairSession requestSuitesAvailableWithCompletionHandler:]";
    _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v6, 0xCu);
  }

  [provider requestSuitesAvailableWithCompletionHandler:v3];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] Starting...", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__ASTRepairSession_start__block_invoke;
  v4[3] = &unk_278CBD590;
  v4[4] = self;
  [provider establishConnectionWithCompletionHandler:v4];
}

void __25__ASTRepairSession_start__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] Unable to establish the connection: %@", buf, 0xCu);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 session:*(a1 + 32) didEndWithError:v3];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __25__ASTRepairSession_start__block_invoke_19;
    v7[3] = &unk_278CBD590;
    v7[4] = *(a1 + 32);
    [provider startWithCompletionHandler:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __25__ASTRepairSession_start__block_invoke_19(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] Unable to start the connection: %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 session:*(a1 + 32) didEndWithError:v3];
  }

  else
  {
    v5 = [*(a1 + 32) delegate];
    [v5 sessionDidStart:*(a1 + 32)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ASTRepairSession end]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__ASTRepairSession_end__block_invoke;
  v5[3] = &unk_278CBD590;
  v5[4] = self;
  [provider endWithCompletionHandler:v5];
  v4 = *MEMORY[0x277D85DE8];
}

void __23__ASTRepairSession_end__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 session:*(a1 + 32) didEndWithError:v4];
}

- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ASTRepairSession requestSuiteStart:completionHandler:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v9, 0xCu);
  }

  [provider requestSuiteStart:v6 withCompletionHandler:v5];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(ASTSession *)self setDelegate:0];
  v3 = provider;
  provider = 0;

  v4.receiver = self;
  v4.super_class = ASTRepairSession;
  [(ASTSession *)&v4 dealloc];
}

- (void)cancelSuite
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASTRepairSession cancelSuite]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v8, 0xCu);
  }

  v4 = [(ASTSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASTSession *)self delegate];
    [v6 sessionDidCancelSuite:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startTest:(id)a3 parameters:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[ASTRepairSession startTest:parameters:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, testId: %@, parameters: %@", &v14, 0x20u);
  }

  v9 = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [ASTTestResult resultWithTestId:v6 parameters:v7];
    v12 = [(ASTSession *)self delegate];
    [v12 session:self startTest:v6 parameters:v7 testResult:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)progressForTest:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[ASTRepairSession progressForTest:completion:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, testId: %@", &v14, 0x16u);
  }

  v9 = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ASTSession *)self delegate];
    v12 = [v11 session:self progressForTest:v6];
    v7[2](v7, v12);
  }

  v7[2](v7, 0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)estimatedTimeRemainingForTest:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[ASTRepairSession estimatedTimeRemainingForTest:completion:]";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, testId: %@", &v14, 0x16u);
  }

  v9 = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ASTSession *)self delegate];
    v12 = [v11 session:self estimatedTimeRemainingForTest:v6];
    v7[2](v7, v12);
  }

  v7[2](v7, 0);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateTestSuiteProgress:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ASTRepairSession updateTestSuiteProgress:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, progress: %@", &v10, 0x16u);
  }

  v6 = [(ASTSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ASTSession *)self delegate];
    [v8 session:self didUpdateTestSuiteProgress:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)completeTestSuite:(id)a3 description:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[ASTRepairSession completeTestSuite:description:]";
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s, suiteName: %@", &v13, 0x16u);
  }

  v9 = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ASTSession *)self delegate];
    [v11 session:self didCompleteTestSuite:v6 description:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateTestSuiteImage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ASTRepairSession updateTestSuiteImage:]";
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v10, 0xCu);
  }

  v6 = [(ASTSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ASTSession *)self delegate];
    [v8 session:self didUpdateTestSuiteImage:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)showInstructionalPrompt:(id)a3 withConfirmation:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[ASTRepairSession showInstructionalPrompt:withConfirmation:]";
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[ASTRepairSession] %s", &v13, 0xCu);
  }

  v9 = [(ASTSession *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ASTSession *)self delegate];
    [v11 session:self didRequestInstructionalPrompt:v6 withConfirmation:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)downloadAsset:(void *)a1 fileHandle:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "Error occurred trying to truncate file: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "[ASTRepairSession] Unable to retrieve the asset: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__ASTRepairSession_downloadAsset_fileHandle_completionHandler___block_invoke_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_240F3C000, log, OS_LOG_TYPE_ERROR, "[ASTRepairSession] Unable to write data: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end