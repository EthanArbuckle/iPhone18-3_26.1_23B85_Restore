@interface AVTAvatarRecordRendering
+ (id)avatarDescriptorForRecord:(id)record;
+ (id)avatarForRecord:(id)record usageIntent:(unint64_t)intent;
+ (id)log;
+ (id)memojiDescriptorForRecord:(id)record;
+ (id)memojiForRecord:(id)record usageIntent:(unint64_t)intent;
+ (void)_castRecord:(id)record andDoRecordHandlingBlock:(id)block puppetHandlingBlock:(id)handlingBlock;
+ (void)preloadAllAvatarsWithStore:(id)store completionHandler:(id)handler;
+ (void)preloadAllAvatarsWithStore:(id)store environment:(id)environment completionHandler:(id)handler;
+ (void)preloadAvatarsWithFetchRequests:(id)requests store:(id)store environment:(id)environment completionHandler:(id)handler;
+ (void)preloadAvatarsWithIdentifiers:(id)identifiers store:(id)store completionHandler:(id)handler;
+ (void)preloadAvatarsWithIdentifiers:(id)identifiers store:(id)store environment:(id)environment completionHandler:(id)handler;
@end

@implementation AVTAvatarRecordRendering

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[AVTAvatarRecordRendering log];
  }

  v3 = log_logger;

  return v3;
}

uint64_t __31__AVTAvatarRecordRendering_log__block_invoke()
{
  log_logger = os_log_create("com.apple.avatar.record", "descriptor");

  return MEMORY[0x2821F96F8]();
}

+ (id)memojiDescriptorForRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_9;
  }

  avatarData = [recordCopy avatarData];
  if (!avatarData)
  {
    goto LABEL_10;
  }

  avatarData2 = [v5 avatarData];
  v8 = [avatarData2 length];

  if (v8)
  {
    v9 = MEMORY[0x277CF04E8];
    avatarData3 = [v5 avatarData];
    v14 = 0;
    avatarData = [v9 descriptorWithDataRepresentation:avatarData3 error:&v14];
    v11 = v14;

    if (!avatarData)
    {
      v12 = [self log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(AVTAvatarRecordRendering *)v11 memojiDescriptorForRecord:v12];
      }
    }
  }

  else
  {
LABEL_9:
    avatarData = 0;
  }

LABEL_10:

  return avatarData;
}

+ (id)avatarDescriptorForRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__1;
    v13 = __Block_byref_object_dispose__1;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__AVTAvatarRecordRendering_avatarDescriptorForRecord___block_invoke;
    v8[3] = &unk_278CFA368;
    v8[4] = &v9;
    v8[5] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__AVTAvatarRecordRendering_avatarDescriptorForRecord___block_invoke_2;
    v7[3] = &unk_278CFA390;
    v7[4] = &v9;
    [self _castRecord:recordCopy andDoRecordHandlingBlock:v8 puppetHandlingBlock:v7];
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __54__AVTAvatarRecordRendering_avatarDescriptorForRecord___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) memojiDescriptorForRecord:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __54__AVTAvatarRecordRendering_avatarDescriptorForRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CF04B0];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = [v4 puppetName];

  v6 = [v5 initWithName:v9];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

+ (id)avatarForRecord:(id)record usageIntent:(unint64_t)intent
{
  if (record)
  {
    v5 = [self avatarDescriptorForRecord:?];
    v6 = [MEMORY[0x277CF04C0] avatarWithDescriptor:v5 usageIntent:intent error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)memojiForRecord:(id)record usageIntent:(unint64_t)intent
{
  v4 = [self avatarForRecord:record usageIntent:intent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
  }

  return v4;
}

+ (void)_castRecord:(id)record andDoRecordHandlingBlock:(id)block puppetHandlingBlock:(id)handlingBlock
{
  recordCopy = record;
  blockCopy = block;
  handlingBlockCopy = handlingBlock;
  if (([recordCopy conformsToProtocol:&unk_2853947B8] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", recordCopy}];
  }

  v11 = recordCopy;
  if (![v11 isPuppet])
  {
    objc_opt_class();
    v10 = blockCopy;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v10 = handlingBlockCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v11}];
  }

LABEL_8:
  v10[2](v10, v11);
}

+ (void)preloadAvatarsWithIdentifiers:(id)identifiers store:(id)store completionHandler:(id)handler
{
  handlerCopy = handler;
  storeCopy = store;
  identifiersCopy = identifiers;
  v11 = +[AVTCoreEnvironment defaultEnvironment];
  [self preloadAvatarsWithIdentifiers:identifiersCopy store:storeCopy environment:v11 completionHandler:handlerCopy];
}

+ (void)preloadAllAvatarsWithStore:(id)store completionHandler:(id)handler
{
  handlerCopy = handler;
  storeCopy = store;
  v8 = +[AVTCoreEnvironment defaultEnvironment];
  [self preloadAllAvatarsWithStore:storeCopy environment:v8 completionHandler:handlerCopy];
}

+ (void)preloadAvatarsWithIdentifiers:(id)identifiers store:(id)store environment:(id)environment completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  storeCopy = store;
  environmentCopy = environment;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = identifiersCopy;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [AVTAvatarFetchRequest requestForAvatarWithIdentifier:*(*(&v22 + 1) + 8 * v18)];
        [array addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  [self preloadAvatarsWithFetchRequests:array store:storeCopy environment:environmentCopy completionHandler:handlerCopy];
  v20 = *MEMORY[0x277D85DE8];
}

+ (void)preloadAllAvatarsWithStore:(id)store environment:(id)environment completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  environmentCopy = environment;
  storeCopy = store;
  v11 = +[AVTAvatarFetchRequest requestForAllAvatars];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [self preloadAvatarsWithFetchRequests:v12 store:storeCopy environment:environmentCopy completionHandler:handlerCopy];

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)preloadAvatarsWithFetchRequests:(id)requests store:(id)store environment:(id)environment completionHandler:(id)handler
{
  requestsCopy = requests;
  storeCopy = store;
  environmentCopy = environment;
  handlerCopy = handler;
  backgroundQueue = [environmentCopy backgroundQueue];
  logger = [environmentCopy logger];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__AVTAvatarRecordRendering_preloadAvatarsWithFetchRequests_store_environment_completionHandler___block_invoke;
  v21[3] = &unk_278CFA3B8;
  v22 = requestsCopy;
  v23 = storeCopy;
  v24 = environmentCopy;
  v25 = logger;
  v26 = handlerCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v17 = logger;
  v18 = environmentCopy;
  v19 = storeCopy;
  v20 = requestsCopy;
  dispatch_async(backgroundQueue, v21);
}

uint64_t __96__AVTAvatarRecordRendering_preloadAvatarsWithFetchRequests_store_environment_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v35;
    v23 = *v35;
    do
    {
      v5 = 0;
      v24 = v3;
      do
      {
        if (*v35 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v34 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v33 = 0;
        v8 = [v7 avatarsForFetchRequest:v6 error:{&v33, v23}];
        v9 = v33;
        if (v8)
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
          if (v11)
          {
            v12 = v11;
            v26 = v9;
            v27 = v8;
            v28 = v5;
            v13 = *v30;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v30 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v29 + 1) + 8 * i);
                v16 = objc_autoreleasePoolPush();
                v17 = [*(a1 + 72) avatarForRecord:v15];
                v18 = *(a1 + 56);
                v19 = [v15 identifier];
                [v18 logAvatarPreloadBeginForIdentifier:v19];

                [MEMORY[0x277CF04C0] preloadAvatar:v17];
                [*(a1 + 56) logAvatarPreloadEnd];

                objc_autoreleasePoolPop(v16);
              }

              v12 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
            }

            while (v12);
            v4 = v23;
            v3 = v24;
            v8 = v27;
            v5 = v28;
            v9 = v26;
          }
        }

        else
        {
          v10 = [*(a1 + 48) logger];
          v20 = [v9 description];
          [v10 logErrorFetchingRecords:v20];
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v3);
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)memojiDescriptorForRecord:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_241932000, a2, OS_LOG_TYPE_FAULT, "Can't decode Memoji descriptor! Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end