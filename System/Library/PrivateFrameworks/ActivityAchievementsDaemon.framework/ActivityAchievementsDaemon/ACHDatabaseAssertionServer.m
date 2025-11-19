@interface ACHDatabaseAssertionServer
- (ACHDatabaseAssertionServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_cleanup;
- (void)dealloc;
- (void)remote_acquireDatabaseAssertionWithIdentifier:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)remote_invalidateAssertionWithToken:(id)a3 completion:(id)a4;
@end

@implementation ACHDatabaseAssertionServer

- (ACHDatabaseAssertionServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v12.receiver = self;
  v12.super_class = ACHDatabaseAssertionServer;
  v6 = [(HDStandardTaskServer *)&v12 initWithUUID:a3 configuration:a4 client:a5 delegate:a6];
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
  v3 = [(NSMutableDictionary *)self->_assertionByToken allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_assertionByToken objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(ACHDatabaseAssertionServer *)self assertionByToken];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(ACHDatabaseAssertionServer *)self assertionByToken];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 assertion];
        v13 = [v12 state];

        if (v13 == 3)
        {
          v14 = [(ACHDatabaseAssertionServer *)self assertionByToken];
          [v14 setObject:0 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)remote_acquireDatabaseAssertionWithIdentifier:(id)a3 duration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ACHDatabaseAssertionServer *)self queue];
  dispatch_assert_queue_not_V2(v10);

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
  v11 = [(ACHDatabaseAssertionServer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__ACHDatabaseAssertionServer_remote_acquireDatabaseAssertionWithIdentifier_duration_completion___block_invoke;
  block[3] = &unk_278492AA8;
  block[4] = self;
  v12 = v8;
  v17 = a4;
  v14 = v12;
  v15 = &v18;
  v16 = &v24;
  dispatch_sync(v11, block);

  v9[2](v9, v25[5], v19[5]);
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

- (void)remote_invalidateAssertionWithToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACHDatabaseAssertionServer *)self queue];
  dispatch_assert_queue_not_V2(v8);

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
  v9 = [(ACHDatabaseAssertionServer *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__ACHDatabaseAssertionServer_remote_invalidateAssertionWithToken_completion___block_invoke;
  v11[3] = &unk_278491580;
  v11[4] = self;
  v10 = v6;
  v12 = v10;
  v13 = &v21;
  v14 = &v15;
  dispatch_sync(v9, v11);

  v7[2](v7, *(v22 + 24), v16[5]);
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