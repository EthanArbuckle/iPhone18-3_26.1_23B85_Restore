@interface ACHDatabaseAssertionServer
- (ACHDatabaseAssertionServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_cleanup;
- (void)dealloc;
- (void)remote_acquireDatabaseAssertionWithIdentifier:(id)identifier duration:(double)duration completion:(id)completion;
- (void)remote_invalidateAssertionWithToken:(id)token completion:(id)completion;
@end

@implementation ACHDatabaseAssertionServer

- (ACHDatabaseAssertionServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v12.receiver = self;
  v12.super_class = ACHDatabaseAssertionServer;
  v6 = [(HDStandardTaskServer *)&v12 initWithUUID:d configuration:configuration client:client delegate:delegate];
  if (v6)
  {
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertionByToken = v6->_assertionByToken;
    v6->_assertionByToken = v9;
  }

  return v6;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_assertionByToken allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)self->_assertionByToken objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = ACHDatabaseAssertionServer;
  [(ACHDatabaseAssertionServer *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_cleanup
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  assertionByToken = [(ACHDatabaseAssertionServer *)self assertionByToken];
  allKeys = [assertionByToken allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        assertionByToken2 = [(ACHDatabaseAssertionServer *)self assertionByToken];
        v11 = [assertionByToken2 objectForKeyedSubscript:v9];

        assertion = [v11 assertion];
        state = [assertion state];

        if (state == 3)
        {
          assertionByToken3 = [(ACHDatabaseAssertionServer *)self assertionByToken];
          [assertionByToken3 setObject:0 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_acquireDatabaseAssertionWithIdentifier:(id)identifier duration:(double)duration completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(ACHDatabaseAssertionServer *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__27;
  v28 = __Block_byref_object_dispose__27;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__27;
  v22 = __Block_byref_object_dispose__27;
  v23 = 0;
  queue2 = [(ACHDatabaseAssertionServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__ACHDatabaseAssertionServer_remote_acquireDatabaseAssertionWithIdentifier_duration_completion___block_invoke;
  block[3] = &unk_278492AA8;
  block[4] = self;
  v12 = identifierCopy;
  durationCopy = duration;
  v14 = v12;
  v15 = &v18;
  v16 = &v24;
  dispatch_sync(queue2, block);

  completionCopy[2](completionCopy, v25[5], v19[5]);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

void __96__ACHDatabaseAssertionServer_remote_acquireDatabaseAssertionWithIdentifier_duration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_cleanup];
  v2 = [*(a1 + 32) profile];
  v3 = [v2 database];
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [ACHDatabaseAssertion assertionWithDatabase:v3 identifier:v5 timeout:&obj error:v4];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(a1 + 32) assertionByToken];
    [v11 setObject:v7 forKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];
  }
}

- (void)remote_invalidateAssertionWithToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  queue = [(ACHDatabaseAssertionServer *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__27;
  v19 = __Block_byref_object_dispose__27;
  v20 = 0;
  queue2 = [(ACHDatabaseAssertionServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ACHDatabaseAssertionServer_remote_invalidateAssertionWithToken_completion___block_invoke;
  v11[3] = &unk_278491580;
  v11[4] = self;
  v10 = tokenCopy;
  v12 = v10;
  v13 = &v21;
  v14 = &v15;
  dispatch_sync(queue2, v11);

  completionCopy[2](completionCopy, *(v22 + 24), v16[5]);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __77__ACHDatabaseAssertionServer_remote_invalidateAssertionWithToken_completion___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _queue_cleanup];
  v2 = [*(a1 + 32) assertionByToken];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 invalidate];
    v4 = [*(a1 + 32) assertionByToken];
    [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];

    v5 = 1;
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Assertion not found";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v6 errorWithDomain:@"com.apple.ActivityAchievements.DatabaseAssertion" code:-3 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v5 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;

  v11 = *MEMORY[0x277D85DE8];
}

@end