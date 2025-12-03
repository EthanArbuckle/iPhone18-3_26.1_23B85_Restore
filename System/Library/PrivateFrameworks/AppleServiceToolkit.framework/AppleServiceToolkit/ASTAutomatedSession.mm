@interface ASTAutomatedSession
+ (id)sessionWithIdentity:(id)identity profile:(id)profile tests:(id)tests authInfoHandler:(id)handler;
+ (id)sessionWithSerialNumber:(id)number profile:(id)profile tests:(id)tests authInfoHandler:(id)handler;
+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number completionHandler:(id)handler;
+ (void)sessionExistsForSerialNumbers:(id)numbers ticketNumber:(id)number completionHandler:(id)handler;
- (ASTAutomatedSession)initWithIdentity:(id)identity profile:(id)profile tests:(id)tests authInfoHandler:(id)handler;
- (void)end;
- (void)executeWithCompletion:(id)completion;
- (void)session:(id)session didEndWithError:(id)error;
- (void)session:(id)session generateAuthInfoWithNonce:(id)nonce;
- (void)session:(id)session profile:(id)profile filteredByComponents:(id)components;
- (void)session:(id)session startTest:(id)test parameters:(id)parameters testResult:(id)result;
@end

@implementation ASTAutomatedSession

+ (id)sessionWithSerialNumber:(id)number profile:(id)profile tests:(id)tests authInfoHandler:(id)handler
{
  handlerCopy = handler;
  testsCopy = tests;
  profileCopy = profile;
  v13 = [ASTIdentity identityWithSerialNumber:number];
  v14 = [[self alloc] initWithIdentity:v13 profile:profileCopy tests:testsCopy authInfoHandler:handlerCopy];

  return v14;
}

- (ASTAutomatedSession)initWithIdentity:(id)identity profile:(id)profile tests:(id)tests authInfoHandler:(id)handler
{
  identityCopy = identity;
  profileCopy = profile;
  testsCopy = tests;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = ASTAutomatedSession;
  v15 = [(ASTAutomatedSession *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identity, identity);
    v17 = MEMORY[0x245CD5130](handlerCopy);
    authInfoHandler = v16->_authInfoHandler;
    v16->_authInfoHandler = v17;

    objc_storeStrong(&v16->_profile, profile);
    objc_storeStrong(&v16->_tests, tests);
  }

  return v16;
}

+ (id)sessionWithIdentity:(id)identity profile:(id)profile tests:(id)tests authInfoHandler:(id)handler
{
  handlerCopy = handler;
  testsCopy = tests;
  profileCopy = profile;
  identityCopy = identity;
  v14 = [[self alloc] initWithIdentity:identityCopy profile:profileCopy tests:testsCopy authInfoHandler:handlerCopy];

  return v14;
}

+ (void)sessionExistsForSerialNumbers:(id)numbers ticketNumber:(id)number completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  numberCopy = number;
  handlerCopy = handler;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(numbersCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = numbersCopy;
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

  [self sessionExistsForIdentities:v11 ticketNumber:numberCopy completionHandler:handlerCopy];
  v18 = *MEMORY[0x277D85DE8];
}

+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__ASTAutomatedSession_sessionExistsForIdentities_ticketNumber_completionHandler___block_invoke;
  v9[3] = &unk_278CBCF68;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ASTSession *)ASTRemoteServerSession sessionStatusForIdentities:identities ticketNumber:number completionHandler:v9];
}

- (void)executeWithCompletion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  [(ASTAutomatedSession *)self setCompletion:completionCopy];
  v5 = dispatch_semaphore_create(0);
  v6 = objc_opt_class();
  identity = [(ASTAutomatedSession *)self identity];
  v27[0] = identity;
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
    completionCopy[2](completionCopy);
  }

  else
  {
    v10 = [(ASTAutomatedSession *)self identity:v15];
    v11 = [ASTRemoteServerSession sessionWithIdentity:v10];
    [(ASTAutomatedSession *)self setSession:v11];

    session = [(ASTAutomatedSession *)self session];
    [session setDelegate:self];

    session2 = [(ASTAutomatedSession *)self session];
    [session2 start];
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
  session = [(ASTAutomatedSession *)self session];

  if (session)
  {
    session2 = [(ASTAutomatedSession *)self session];
    [session2 end];
  }
}

- (void)session:(id)session startTest:(id)test parameters:(id)parameters testResult:(id)result
{
  testCopy = test;
  resultCopy = result;
  tests = [(ASTAutomatedSession *)self tests];
  v11 = [tests objectForKeyedSubscript:testCopy];

  if (v11)
  {
    files = [v11 files];
    if (files && (v13 = files, [v11 files], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v13, v15))
    {
      files2 = [v11 files];
      [resultCopy sealWithSealableFiles:files2];
    }

    else
    {
      files2 = [v11 payload];
      signature = [v11 signature];
      [resultCopy sealWithPayload:files2 signature:signature];
    }
  }

  else
  {
    files2 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(files2, OS_LOG_TYPE_ERROR))
    {
      [ASTAutomatedSession session:testCopy startTest:files2 parameters:? testResult:?];
    }
  }

  session = [(ASTAutomatedSession *)self session];
  [session sendTestResult:resultCopy error:0];
}

- (void)session:(id)session profile:(id)profile filteredByComponents:(id)components
{
  sessionCopy = session;
  profile = [(ASTAutomatedSession *)self profile];
  [sessionCopy sendProfileResult:profile error:0];
}

- (void)session:(id)session didEndWithError:(id)error
{
  errorCopy = error;
  completion = [(ASTAutomatedSession *)self completion];
  (completion)[2](completion, errorCopy);

  [(ASTAutomatedSession *)self setSession:0];

  [(ASTAutomatedSession *)self setCompletion:0];
}

- (void)session:(id)session generateAuthInfoWithNonce:(id)nonce
{
  sessionCopy = session;
  nonceCopy = nonce;
  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ASTAutomatedSession_session_generateAuthInfoWithNonce___block_invoke;
  block[3] = &unk_278CBCF40;
  block[4] = self;
  v12 = nonceCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = nonceCopy;
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