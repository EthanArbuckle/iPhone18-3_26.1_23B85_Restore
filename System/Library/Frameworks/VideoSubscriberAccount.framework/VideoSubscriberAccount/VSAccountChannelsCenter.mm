@interface VSAccountChannelsCenter
+ (id)_accountChannelsWithProviderID:(id)a3;
+ (id)sharedCenter;
+ (void)_startOperationAndWaitForCompletion:(id)a3;
- (NSString)fileName;
- (NSURL)directoryURL;
- (NSURL)fileURL;
- (NSUndoManager)undoManager;
- (VSAccountChannelsCenter)init;
- (VSAccountChannelsCenter)initWithAccountStore:(id)a3;
- (id)_removeLocallySavedAccountChannels;
- (id)_removeSavedAccountChannels;
- (id)_saveAccountChannels:(id)a3;
- (id)_savedAccountChannels;
- (id)_savedAccountChannelsForIdentityProviderID:(id)a3 storeIdentityProvider:(id)a4;
- (id)_storeIdentityProviderForAccount:(id)a3;
- (void)_enqueueRemoveSavedAccountChannelsAndWait;
- (void)_enqueueSaveAccountChannelsAndWait:(id)a3;
- (void)_removeLocallySavedAccountChannels;
- (void)_removeSavedAccountChannelsWithCompletionHandler:(id)a3;
- (void)_saveAccountChannels:(id)a3 withCompletionHandler:(id)a4;
- (void)_snapshotPreviousChannels;
- (void)fetchAccountChannelsWithCompletionHandler:(id)a3;
- (void)setUndoManager:(id)a3;
@end

@implementation VSAccountChannelsCenter

- (VSAccountChannelsCenter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAccountChannelsCenter)initWithAccountStore:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountStore parameter must not be nil."];
  }

  v11.receiver = self;
  v11.super_class = VSAccountChannelsCenter;
  v6 = [(VSAccountChannelsCenter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = dispatch_queue_create("VSAccountChannelsCenter Serial Queue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

+ (id)sharedCenter
{
  if (sharedCenter___vs_lazy_init_predicate_0 != -1)
  {
    +[VSAccountChannelsCenter sharedCenter];
  }

  v3 = sharedCenter___vs_lazy_init_variable_0;

  return v3;
}

void __39__VSAccountChannelsCenter_sharedCenter__block_invoke()
{
  v0 = [VSAccountChannelsCenter alloc];
  v3 = +[VSAccountStore sharedAccountStore];
  v1 = [(VSAccountChannelsCenter *)v0 initWithAccountStore:v3];
  v2 = sharedCenter___vs_lazy_init_variable_0;
  sharedCenter___vs_lazy_init_variable_0 = v1;
}

- (void)_snapshotPreviousChannels
{
  v3 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(VSAccountChannelsCenter *)self undoManager];
  if (v4)
  {
    v5 = [(VSAccountChannelsCenter *)self _savedAccountChannels];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke;
    v9[3] = &unk_278B748E8;
    v10 = v4;
    v11 = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke_2;
    v6[3] = &unk_278B74910;
    v7 = v10;
    v8 = self;
    [v5 unwrapObject:v9 error:v6];
  }
}

void __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 prepareWithInvocationTarget:v3];
  [v5 _enqueueSaveAccountChannelsAndWait:v4];
}

void __52__VSAccountChannelsCenter__snapshotPreviousChannels__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) prepareWithInvocationTarget:*(a1 + 40)];
  [v1 _enqueueRemoveSavedAccountChannelsAndWait];
}

- (id)_storeIdentityProviderForAccount:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 identityProviderID];

  v7 = [v6 forceUnwrapObject];

  v24 = 0;
  v8 = VSLoadInterfaceFramework(&v24);
  v9 = v24;
  if (v8)
  {
    v10 = [objc_alloc(NSClassFromString(@"VSIdentityProviderFetchOperation")) initWithIdentityProviderID:v7];
    [v10 setFetchFromStoreOnly:1];
    v11 = [(VSAccountChannelsCenter *)self identityProviderFetchOperationBlock];

    if (v11)
    {
      v12 = [(VSAccountChannelsCenter *)self identityProviderFetchOperationBlock];
      v13 = v12[2]();

      v10 = v13;
    }

    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Fetching store identity provider for ID: %@", buf, 0xCu);
    }

    [objc_opt_class() _startOperationAndWaitForCompletion:v10];
    v15 = [v10 result];
    v16 = [v15 forceUnwrapObject];

    v17 = [v16 object];
    v18 = VSDefaultLogObject();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138412290;
        v26 = v7;
        v20 = "Successfully fetched identity provider for ID: %@";
        v21 = v18;
        v22 = 12;
LABEL_14:
        _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }

    else if (v19)
    {
      *buf = 0;
      v20 = "Unable to fetch store identity provider for provider ID. Adam ID will be set to nil";
      v21 = v18;
      v22 = 2;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v10 = VSErrorLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [VSAccountChannelsCenter _storeIdentityProviderForAccount:];
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)_savedAccountChannelsForIdentityProviderID:(id)a3 storeIdentityProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  v9 = [(VSAccountChannelsCenter *)self _savedAccountChannels];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke;
  v27[3] = &unk_278B74938;
  v29 = self;
  v30 = &v31;
  v28 = v6;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19;
  v23 = &unk_278B74960;
  v24 = self;
  v26 = &v31;
  v10 = v28;
  v25 = v10;
  [v9 unwrapObject:v27 error:&v20];
  v11 = v32[5];
  v12 = [v7 uniqueID];
  v13 = [v12 forceUnwrapObject];
  [v11 setAdamID:v13];

  v14 = v32[5];
  v15 = [v7 providerInfo];
  v16 = [v15 forceUnwrapObject];
  [v14 setProviderInfo:v16];

  v17 = v32[5];
  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountChannels parameter must not be nil."];
    v17 = v32[5];
  }

  v18 = v17;

  _Block_object_dispose(&v31, 8);

  return v18;
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 providerID];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 channelIDs];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Serialized account channels successfuly loaded and the provider matches the account provider. Channels: %@", &v14, 0xCu);
    }

    v7 = *(*(a1 + 48) + 8);
    v8 = v3;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = VSErrorLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_cold_1((a1 + 32), v4, v10);
    }

    v11 = [*(a1 + 40) _removeSavedAccountChannels];
    v12 = [objc_opt_class() _accountChannelsWithProviderID:*(a1 + 32)];
    v13 = *(*(a1 + 48) + 8);
    v9 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19_cold_1();
  }

  v3 = [*(a1 + 32) _removeSavedAccountChannels];
  v4 = [objc_opt_class() _accountChannelsWithProviderID:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_savedAccountChannels
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VSAccountChannelsCenter _savedAccountChannels]";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__10;
  v36 = __Block_byref_object_dispose__10;
  v37 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v5 = [(VSAccountChannelsCenter *)self accountStore];
  v6 = [v5 firstAccount];

  if (v6)
  {
    v7 = [(VSAccountChannelsCenter *)self accountStore];
    v8 = [v7 firstAccount];
    v9 = [v8 channelsData];
    v10 = [VSOptional optionalWithObject:v9];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke;
    v24[3] = &unk_278B74988;
    v24[4] = self;
    v24[5] = &buf;
    [v10 conditionallyUnwrapObject:v24];
  }

  v11 = *(*(&buf + 1) + 40);
  if (!v11)
  {
    v12 = [(VSAccountChannelsCenter *)self fileURL];
    v13 = objc_alloc_init(VSFileReadOperation);
    [(VSFileReadOperation *)v13 setSource:v12];
    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138412290;
      v32 = v12;
      _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Reading account channels archive at: %@", v31, 0xCu);
    }

    [objc_opt_class() _startOperationAndWaitForCompletion:v13];
    v15 = [(VSFileReadOperation *)v13 result];
    v16 = [v15 forceUnwrapObject];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_26;
    v23[3] = &unk_278B749B0;
    v23[4] = &buf;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2;
    v22[3] = &unk_278B73450;
    v22[4] = &v25;
    [v16 unwrapObject:v23 error:v22];

    v11 = *(*(&buf + 1) + 40);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_28;
  v21[3] = &unk_278B749B0;
  v21[4] = &v25;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32;
  v20[3] = &unk_278B74318;
  v20[4] = &v25;
  [v11 conditionallyUnwrapObject:v21 otherwise:v20];
  v17 = v26[5];
  if (!v17)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The result parameter must not be nil."];
    v17 = v26[5];
  }

  v18 = v17;
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&buf, 8);

  return v18;
}

id __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [VSOptional optionalWithObject:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return [*(a1 + 32) _removeLocallySavedAccountChannels];
}

uint64_t __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_26(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [VSOptional optionalWithObject:a2];

  return MEMORY[0x2821F96F8]();
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_cold_1();
  }

  v5 = [VSFailable failableWithError:v3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_28(uint64_t a1, uint64_t a2)
{
  v3 = [VSAccountChannels deserializationResultWithData:a2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_30;
  v5[3] = &unk_278B749D8;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31;
  v4[3] = &unk_278B73450;
  v4[4] = v6;
  [v3 unwrapObject:v5 error:v4];
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Successfully read and deserialized account channels: %@", &v8, 0xCu);
  }

  v5 = [VSFailable failableWithObject:v3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31_cold_1();
  }

  v5 = [VSFailable failableWithError:v3];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32_cold_1();
  }

  v3 = VSPrivateError(-24, 0);
  v4 = [VSFailable failableWithError:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_enqueueRemoveSavedAccountChannelsAndWait
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v3, OS_LOG_TYPE_DEFAULT, "Will enqueue removing saved account channels.", buf, 2u);
  }

  v4 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_not_V2(v4);

  v5 = objc_alloc_init(VSSemaphore);
  v6 = [(VSAccountChannelsCenter *)self serialQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __68__VSAccountChannelsCenter__enqueueRemoveSavedAccountChannelsAndWait__block_invoke;
  v11 = &unk_278B73708;
  v12 = self;
  v13 = v5;
  v7 = v5;
  dispatch_async(v6, &v8);

  [(VSSemaphore *)v7 wait:v8];
}

uint64_t __68__VSAccountChannelsCenter__enqueueRemoveSavedAccountChannelsAndWait__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeSavedAccountChannels];
  v3 = *(a1 + 40);

  return [v3 signal];
}

- (id)_removeSavedAccountChannels
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VSAccountChannelsCenter _removeSavedAccountChannels]";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v11, 0xCu);
  }

  [(VSAccountChannelsCenter *)self _snapshotPreviousChannels];
  v5 = [(VSAccountChannelsCenter *)self accountStore];
  v6 = [v5 firstAccount];

  if (v6)
  {
    v7 = [(VSAccountChannelsCenter *)self accountStore];
    v8 = [v7 firstAccount];
    [v8 setChannelsData:0];
  }

  v9 = [(VSAccountChannelsCenter *)self _removeLocallySavedAccountChannels];

  return v9;
}

- (id)_removeLocallySavedAccountChannels
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(VSAccountChannelsCenter *)self fileURL];
  v3 = objc_alloc_init(VSFileRemoveOperation);
  [(VSFileRemoveOperation *)v3 setFileURL:v2];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v2;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Removing account channels archive at: %@", &v8, 0xCu);
  }

  [objc_opt_class() _startOperationAndWaitForCompletion:v3];
  v5 = [(VSFileRemoveOperation *)v3 error];
  if (v5)
  {
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VSAccountChannelsCenter _removeLocallySavedAccountChannels];
    }
  }

  else
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Account channels archive successfully removed", &v8, 2u);
    }
  }

  return v5;
}

- (void)_enqueueSaveAccountChannelsAndWait:(id)a3
{
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Will enqueue saving account channels.", buf, 2u);
  }

  v6 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_not_V2(v6);

  v7 = objc_alloc_init(VSSemaphore);
  v8 = [(VSAccountChannelsCenter *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__VSAccountChannelsCenter__enqueueSaveAccountChannelsAndWait___block_invoke;
  block[3] = &unk_278B73A28;
  block[4] = self;
  v12 = v4;
  v13 = v7;
  v9 = v7;
  v10 = v4;
  dispatch_async(v8, block);

  [(VSSemaphore *)v9 wait];
}

uint64_t __62__VSAccountChannelsCenter__enqueueSaveAccountChannelsAndWait___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveAccountChannels:*(a1 + 40)];
  v3 = *(a1 + 48);

  return [v3 signal];
}

- (id)_saveAccountChannels:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSAccountChannelsCenter *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[VSAccountChannelsCenter _saveAccountChannels:]";
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Entering %s", &buf, 0xCu);
  }

  [(VSAccountChannelsCenter *)self _snapshotPreviousChannels];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v7 = [v4 serializationResult];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke;
  v11[3] = &unk_278B74078;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_42;
  v10[3] = &unk_278B73450;
  v10[4] = &buf;
  [v7 unwrapObject:v11 error:v10];
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v8;
}

void __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) accountStore];
  v5 = [v4 firstAccount];

  if (v5)
  {
    v6 = [*(a1 + 32) accountStore];
    v7 = [v6 firstAccount];

    [v7 setChannelsData:v3];
    v8 = [*(a1 + 32) accountStore];
    v11[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v8 saveAccounts:v9 withCompletionHandler:&__block_literal_global_41];

    v10 = [*(a1 + 32) _removeLocallySavedAccountChannels];
  }

  else
  {
    v7 = VSErrorLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_cold_1();
    }
  }
}

void __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "VSAccountChannels save to keychain: success %d, error %@", v6, 0x12u);
  }
}

- (NSURL)fileURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = [VSOptional optionalWithObject:self->_fileURL];
  v3 = v8[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__VSAccountChannelsCenter_fileURL__block_invoke_2;
  v6[3] = &unk_278B74A40;
  v6[4] = self;
  v6[5] = &v7;
  [v3 conditionallyUnwrapObject:&__block_literal_global_45 otherwise:v6];
  v4 = [v8[5] forceUnwrapObject];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__VSAccountChannelsCenter_fileURL__block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) directoryURL];
  v2 = [*(a1 + 32) fileName];
  v3 = [v7 URLByAppendingPathComponent:v2];
  v4 = [VSOptional optionalWithObject:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (void)_startOperationAndWaitForCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VSSemaphore);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__VSAccountChannelsCenter__startOperationAndWaitForCompletion___block_invoke;
  v6[3] = &unk_278B733D8;
  v7 = v4;
  v5 = v4;
  [v3 setCompletionBlock:v6];
  [v3 start];

  [(VSSemaphore *)v5 wait];
}

+ (id)_accountChannelsWithProviderID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VSAccountChannels);
  [(VSAccountChannels *)v4 setProviderID:v3];

  return v4;
}

- (void)_saveAccountChannels:(id)a3 withCompletionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSAccountChannelsCenter _saveAccountChannels:withCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v9 = [(VSAccountChannelsCenter *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__VSAccountChannelsCenter__saveAccountChannels_withCompletionHandler___block_invoke;
  block[3] = &unk_278B73848;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __70__VSAccountChannelsCenter__saveAccountChannels_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _saveAccountChannels:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__VSAccountChannelsCenter__saveAccountChannels_withCompletionHandler___block_invoke_2;
    v4[3] = &unk_278B737F8;
    v6 = v3;
    v5 = v2;
    VSPerformCompletionHandler(v4);
  }
}

- (void)_removeSavedAccountChannelsWithCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSAccountChannelsCenter _removeSavedAccountChannelsWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v6 = [(VSAccountChannelsCenter *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__VSAccountChannelsCenter__removeSavedAccountChannelsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B73758;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __76__VSAccountChannelsCenter__removeSavedAccountChannelsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _removeSavedAccountChannels];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __76__VSAccountChannelsCenter__removeSavedAccountChannelsWithCompletionHandler___block_invoke_2;
    v4[3] = &unk_278B737F8;
    v6 = v3;
    v5 = v2;
    VSPerformCompletionHandler(v4);
  }
}

- (NSURL)directoryURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_directoryURL;
  if (!v3)
  {
    v3 = [objc_opt_class() _defaultDirectoryURL];
    objc_storeStrong(&v2->_directoryURL, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (NSString)fileName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fileName;
  if (!v3)
  {
    v3 = [objc_opt_class() _defaultFileName];
    objc_storeStrong(&v2->_fileName, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (NSUndoManager)undoManager
{
  v2 = [(VSAccountChannelsCenter *)self accountStore];
  v3 = [v2 undoManager];

  return v3;
}

- (void)setUndoManager:(id)a3
{
  v4 = a3;
  v5 = [(VSAccountChannelsCenter *)self accountStore];
  [v5 setUndoManager:v4];
}

- (void)fetchAccountChannelsWithCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VSAccountChannelsCenter fetchAccountChannelsWithCompletionHandler:]";
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v6 = [(VSAccountChannelsCenter *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278B73758;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278B73988;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchAccountsWithCompletionHandler:v4];
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_3;
  block[3] = &unk_278B73848;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_278B73960;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58;
  v4[3] = &unk_278B73910;
  v5 = *(a1 + 48);
  [v2 unwrapObject:v6 error:v4];
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 identityProviderID];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_5;
    v13[3] = &unk_278B74A68;
    v6 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v4;
    v15 = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54;
    v11[3] = &unk_278B73938;
    v12 = *(a1 + 40);
    v7 = v4;
    [v5 conditionallyUnwrapObject:v13 otherwise:v11];
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4_cold_1();
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_56;
    v9[3] = &unk_278B73938;
    v10 = *(a1 + 40);
    VSPerformCompletionHandler(v9);
    v7 = v10;
  }
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _storeIdentityProviderForAccount:v4];
  v7 = [*(a1 + 32) _savedAccountChannelsForIdentityProviderID:v5 storeIdentityProvider:v6];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_6;
  v9[3] = &unk_278B73758;
  v10 = v7;
  v11 = *(a1 + 48);
  v8 = v7;
  VSPerformCompletionHandler(v9);
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_6(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning account channels: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54_cold_1();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_55;
  v3[3] = &unk_278B73938;
  v4 = *(a1 + 32);
  VSPerformCompletionHandler(v3);
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_55(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning nil account channels due to no identity provider ID.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_56(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning nil account channels due to no first account.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58_cold_1();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_59;
  v5[3] = &unk_278B73938;
  v6 = *(a1 + 32);
  VSPerformCompletionHandler(v5);
}

uint64_t __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_59(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Fetch returning nil account channels due to error.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_storeIdentityProviderForAccount:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23AB8E000, log, OS_LOG_TYPE_ERROR, "Serialized account channels successfuly loaded but provider IDs (%@ vs %@) do not match those expected. Removing serialized account channels file and returning account channels object containing just the provider ID.", &v4, 0x16u);
}

void __92__VSAccountChannelsCenter__savedAccountChannelsForIdentityProviderID_storeIdentityProvider___block_invoke_19_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_31_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__VSAccountChannelsCenter__savedAccountChannels__block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeLocallySavedAccountChannels
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__VSAccountChannelsCenter__saveAccountChannels___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_54_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__VSAccountChannelsCenter_fetchAccountChannelsWithCompletionHandler___block_invoke_58_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end