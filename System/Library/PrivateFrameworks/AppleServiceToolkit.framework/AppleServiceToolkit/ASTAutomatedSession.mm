@interface ASTAutomatedSession
+ (id)sessionWithIdentity:(id)a3 profile:(id)a4 tests:(id)a5 authInfoHandler:(id)a6;
+ (id)sessionWithSerialNumber:(id)a3 profile:(id)a4 tests:(id)a5 authInfoHandler:(id)a6;
+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 completionHandler:(id)a5;
+ (void)sessionExistsForSerialNumbers:(id)a3 ticketNumber:(id)a4 completionHandler:(id)a5;
- (ASTAutomatedSession)initWithIdentity:(id)a3 profile:(id)a4 tests:(id)a5 authInfoHandler:(id)a6;
- (void)end;
- (void)executeWithCompletion:(id)a3;
- (void)session:(id)a3 didEndWithError:(id)a4;
- (void)session:(id)a3 generateAuthInfoWithNonce:(id)a4;
- (void)session:(id)a3 profile:(id)a4 filteredByComponents:(id)a5;
- (void)session:(id)a3 startTest:(id)a4 parameters:(id)a5 testResult:(id)a6;
@end

@implementation ASTAutomatedSession

+ (id)sessionWithSerialNumber:(id)a3 profile:(id)a4 tests:(id)a5 authInfoHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [ASTIdentity identityWithSerialNumber:a3];
  v14 = [[a1 alloc] initWithIdentity:v13 profile:v12 tests:v11 authInfoHandler:v10];

  return v14;
}

- (ASTAutomatedSession)initWithIdentity:(id)a3 profile:(id)a4 tests:(id)a5 authInfoHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ASTAutomatedSession;
  v15 = [(ASTAutomatedSession *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identity, a3);
    v17 = MEMORY[0x245CD5130](v14);
    authInfoHandler = v16->_authInfoHandler;
    v16->_authInfoHandler = v17;

    objc_storeStrong(&v16->_profile, a4);
    objc_storeStrong(&v16->_tests, a5);
  }

  return v16;
}

+ (id)sessionWithIdentity:(id)a3 profile:(id)a4 tests:(id)a5 authInfoHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithIdentity:v13 profile:v12 tests:v11 authInfoHandler:v10];

  return v14;
}

+ (void)sessionExistsForSerialNumbers:(id)a3 ticketNumber:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [ASTIdentity identityWithSerialNumber:*(*(&v19 + 1) + 8 * v16), v19];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [a1 sessionExistsForIdentities:v11 ticketNumber:v9 completionHandler:v10];
  v18 = *MEMORY[0x277D85DE8];
}

+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ASTAutomatedSession_sessionExistsForIdentities_ticketNumber_completionHandler___block_invoke;
  v9[3] = &unk_278CBCF68;
  v10 = v7;
  v8 = v7;
  [(ASTSession *)ASTRemoteServerSession sessionStatusForIdentities:a3 ticketNumber:a4 completionHandler:v9];
}

- (void)executeWithCompletion:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  [(ASTAutomatedSession *)self setCompletion:v4];
  v5 = dispatch_semaphore_create(0);
  v6 = objc_opt_class();
  v7 = [(ASTAutomatedSession *)self identity];
  v27[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __45__ASTAutomatedSession_executeWithCompletion___block_invoke;
  v18 = &unk_278CBD4A0;
  v20 = &v21;
  v9 = v5;
  v19 = v9;
  [v6 sessionExistsForIdentities:v8 ticketNumber:0 completionHandler:&v15];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (v22[5])
  {
    v4[2](v4);
  }

  else
  {
    v10 = [(ASTAutomatedSession *)self identity:v15];
    v11 = [ASTRemoteServerSession sessionWithIdentity:v10];
    [(ASTAutomatedSession *)self setSession:v11];

    v12 = [(ASTAutomatedSession *)self session];
    [v12 setDelegate:self];

    v13 = [(ASTAutomatedSession *)self session];
    [v13 start];
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x277D85DE8];
}

intptr_t __45__ASTAutomatedSession_executeWithCompletion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1006 userInfo:0];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (void)end
{
  v3 = [(ASTAutomatedSession *)self session];

  if (v3)
  {
    v4 = [(ASTAutomatedSession *)self session];
    [v4 end];
  }
}

- (void)session:(id)a3 startTest:(id)a4 parameters:(id)a5 testResult:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [(ASTAutomatedSession *)self tests];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    v12 = [v11 files];
    if (v12 && (v13 = v12, [v11 files], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, v15))
    {
      v16 = [v11 files];
      [v9 sealWithSealableFiles:v16];
    }

    else
    {
      v16 = [v11 payload];
      v17 = [v11 signature];
      [v9 sealWithPayload:v16 signature:v17];
    }
  }

  else
  {
    v16 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ASTAutomatedSession session:v8 startTest:v16 parameters:? testResult:?];
    }
  }

  v18 = [(ASTAutomatedSession *)self session];
  [v18 sendTestResult:v9 error:0];
}

- (void)session:(id)a3 profile:(id)a4 filteredByComponents:(id)a5
{
  v6 = a3;
  v7 = [(ASTAutomatedSession *)self profile];
  [v6 sendProfileResult:v7 error:0];
}

- (void)session:(id)a3 didEndWithError:(id)a4
{
  v5 = a4;
  v6 = [(ASTAutomatedSession *)self completion];
  (v6)[2](v6, v5);

  [(ASTAutomatedSession *)self setSession:0];

  [(ASTAutomatedSession *)self setCompletion:0];
}

- (void)session:(id)a3 generateAuthInfoWithNonce:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ASTAutomatedSession_session_generateAuthInfoWithNonce___block_invoke;
  block[3] = &unk_278CBCF40;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __57__ASTAutomatedSession_session_generateAuthInfoWithNonce___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authInfoHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) authInfoHandler];
    v4 = v3[2](v3, *(a1 + 40));
  }

  else
  {
    v4 = 0;
  }

  [*(a1 + 48) sendAuthInfoResult:v4 error:0];
}

- (void)session:(uint64_t)a1 startTest:(NSObject *)a2 parameters:testResult:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "No result available for requested testId [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end