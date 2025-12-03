@interface VSAccountSerializationCenter
+ (id)defaultSerializationCenter;
- (NSUndoManager)undoManager;
- (VSAccountSerializationCenter)init;
- (VSPersistentStorage)storage;
- (id)exportDataWithCompletionHandler:(id)handler;
- (id)importData:(id)data withCompletionHandler:(id)handler;
- (void)setUndoManager:(id)manager;
@end

@implementation VSAccountSerializationCenter

+ (id)defaultSerializationCenter
{
  if (defaultSerializationCenter___vs_lazy_init_predicate != -1)
  {
    +[VSAccountSerializationCenter defaultSerializationCenter];
  }

  v3 = defaultSerializationCenter___vs_lazy_init_variable;

  return v3;
}

uint64_t __58__VSAccountSerializationCenter_defaultSerializationCenter__block_invoke()
{
  defaultSerializationCenter___vs_lazy_init_variable = objc_alloc_init(VSAccountSerializationCenter);

  return MEMORY[0x2821F96F8]();
}

- (VSAccountSerializationCenter)init
{
  v6.receiver = self;
  v6.super_class = VSAccountSerializationCenter;
  v2 = [(VSAccountSerializationCenter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    serializationQueue = v2->_serializationQueue;
    v2->_serializationQueue = v3;

    [(NSOperationQueue *)v2->_serializationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_serializationQueue setName:@"VSAccountSerializationCenter"];
  }

  return v2;
}

- (VSPersistentStorage)storage
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_storage;
  if (!v3)
  {
    v3 = objc_alloc_init(VSPersistentStorage);
    objc_storeStrong(&selfCopy->_storage, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (NSUndoManager)undoManager
{
  storage = [(VSAccountSerializationCenter *)self storage];
  channelsCenter = [storage channelsCenter];
  undoManager = [channelsCenter undoManager];

  return undoManager;
}

- (void)setUndoManager:(id)manager
{
  managerCopy = manager;
  storage = [(VSAccountSerializationCenter *)self storage];
  channelsCenter = [storage channelsCenter];
  [channelsCenter setUndoManager:managerCopy];
}

- (id)exportDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
  }

  v5 = objc_alloc_init(MEMORY[0x277CCAC48]);
  storage = [(VSAccountSerializationCenter *)self storage];
  channelsCenter = [storage channelsCenter];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke;
  v10[3] = &unk_278B739B0;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  [channelsCenter fetchAccountChannelsWithCompletionHandler:v10];

  return v5;
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCA8C8];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278B73848;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  v7 = [v4 blockOperationWithBlock:v9];
  v8 = [*(a1 + 32) serializationQueue];
  [v8 addOperation:v7];
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] storage];
  v3 = [v2 accountStore];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_3;
  v4[3] = &unk_278B73988;
  v5 = a1[5];
  v6 = a1[6];
  [v3 fetchAccountsWithCompletionHandler:v4];
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_278B73960;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_11;
  v4[3] = &unk_278B73910;
  v5 = *(a1 + 40);
  [a2 unwrapObject:v6 error:v4];
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_alloc_init(VSAccountsArchive);
    [(VSAccountsArchive *)v4 setChannels:*(a1 + 32)];
    [(VSAccountsArchive *)v4 setAccounts:v3];
    v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    [(VSAccountsArchive *)v4 encodeWithCoder:v5];
    v6 = [v5 encodedData];
    v7 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSDataCompressionValueTransformer"];
    v8 = [v7 transformedValue:v6];
    if (v8)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_5;
      v16[3] = &unk_278B738E8;
      v9 = &v17;
      v17 = *(a1 + 40);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_7;
      v14[3] = &unk_278B73910;
      v15 = *(a1 + 40);
      [v8 unwrapObject:v16 error:v14];
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_9;
      v12[3] = &unk_278B73938;
      v9 = &v13;
      v13 = *(a1 + 40);
      VSPerformCompletionHandler(v12);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_10;
    v10[3] = &unk_278B73938;
    v11 = *(a1 + 40);
    VSPerformCompletionHandler(v10);
    v4 = v11;
  }
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_6;
  v6[3] = &unk_278B737F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  VSPerformCompletionHandler(v6);
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_8;
  v6[3] = &unk_278B737F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  VSPerformCompletionHandler(v6);
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x277CBEA90]);
  (*(v1 + 16))(v1, v2, 0);
}

void __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__VSAccountSerializationCenter_exportDataWithCompletionHandler___block_invoke_12;
  v6[3] = &unk_278B737F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  VSPerformCompletionHandler(v6);
}

- (id)importData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (dataCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The data parameter must not be nil."];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completionHandler parameter must not be nil."];
LABEL_3:
  v9 = objc_alloc_init(MEMORY[0x277CCAC48]);
  if ([dataCopy length])
  {
    v10 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSDataCompressionValueTransformer"];
    v11 = [v10 reverseTransformedValue:dataCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke;
    v15[3] = &unk_278B73A00;
    v15[4] = self;
    v17 = v8;
    v16 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_82;
    v13[3] = &unk_278B73910;
    v14 = v17;
    [v11 unwrapObject:v15 error:v13];
  }

  else
  {
    v8[2](v8, 1, 0);
  }

  return v9;
}

void __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v42 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v42];
  v5 = v42;
  if (v4)
  {
    v32 = v3;
    v6 = v4;
    [v6 setDecodingFailurePolicy:1];
    v30 = v6;
    v7 = [[VSAccountsArchive alloc] initWithCoder:v6];
    v8 = [(VSAccountsArchive *)v7 channels];
    v9 = objc_alloc_init(VSAccountChannels);
    v31 = v5;
    v29 = v8;
    if (v8)
    {
      v10 = v8;

      v9 = v10;
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = [(VSAccountsArchive *)v7 accounts];
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          if ([v17 isSynchronizable])
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v14);
    }

    if ([v11 count])
    {
      v18 = [VSAccountSaveOperation alloc];
      v19 = [(VSAccountsArchive *)v7 accounts];
      v20 = [*(a1 + 32) storage];
      v21 = [(VSAccountSaveOperation *)v18 initWithUnsavedAccounts:v19 channels:v9 storage:v20];

      v22 = MEMORY[0x277CCA8C8];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_2;
      v35[3] = &unk_278B73758;
      v23 = v21;
      v36 = v23;
      v37 = *(a1 + 48);
      v24 = [v22 blockOperationWithBlock:v35];
      [v24 addDependency:v23];
      VSEnqueueCompletionOperation(v24);
      v25 = *(a1 + 40);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_5;
      v33[3] = &unk_278B733D8;
      v34 = v23;
      v26 = v23;
      [v25 setCancellationHandler:v33];
      v27 = [*(a1 + 32) serializationQueue];
      [v27 addOperation:v26];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    v5 = v31;
    v3 = v32;
  }

  else
  {
    v28 = VSErrorLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_cold_1(v5, v28);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 forceUnwrapObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_3;
  v6[3] = &unk_278B739D8;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_4;
  v4[3] = &unk_278B73910;
  v5 = *(a1 + 40);
  [v3 unwrapObject:v6 error:v4];
}

void __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_82_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive data: %@", &v2, 0xCu);
}

void __65__VSAccountSerializationCenter_importData_withCompletionHandler___block_invoke_82_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Failed to decompress data: %@", &v2, 0xCu);
}

@end