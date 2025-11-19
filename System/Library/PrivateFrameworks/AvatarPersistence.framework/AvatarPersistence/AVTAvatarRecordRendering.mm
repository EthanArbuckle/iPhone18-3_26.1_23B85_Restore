@interface AVTAvatarRecordRendering
+ (id)avatarDescriptorForRecord:(id)a3;
+ (id)avatarForRecord:(id)a3 usageIntent:(unint64_t)a4;
+ (id)log;
+ (id)memojiDescriptorForRecord:(id)a3;
+ (id)memojiForRecord:(id)a3 usageIntent:(unint64_t)a4;
+ (void)_castRecord:(id)a3 andDoRecordHandlingBlock:(id)a4 puppetHandlingBlock:(id)a5;
+ (void)preloadAllAvatarsWithStore:(id)a3 completionHandler:(id)a4;
+ (void)preloadAllAvatarsWithStore:(id)a3 environment:(id)a4 completionHandler:(id)a5;
+ (void)preloadAvatarsWithFetchRequests:(id)a3 store:(id)a4 environment:(id)a5 completionHandler:(id)a6;
+ (void)preloadAvatarsWithIdentifiers:(id)a3 store:(id)a4 completionHandler:(id)a5;
+ (void)preloadAvatarsWithIdentifiers:(id)a3 store:(id)a4 environment:(id)a5 completionHandler:(id)a6;
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

+ (id)memojiDescriptorForRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 avatarData];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [v5 avatarData];
  v8 = [v7 length];

  if (v8)
  {
    v9 = MEMORY[0x277CF04E8];
    v10 = [v5 avatarData];
    v14 = 0;
    v6 = [v9 descriptorWithDataRepresentation:v10 error:&v14];
    v11 = v14;

    if (!v6)
    {
      v12 = [a1 log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(AVTAvatarRecordRendering *)v11 memojiDescriptorForRecord:v12];
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

+ (id)avatarDescriptorForRecord:(id)a3
{
  v4 = a3;
  if (v4)
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
    v8[5] = a1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__AVTAvatarRecordRendering_avatarDescriptorForRecord___block_invoke_2;
    v7[3] = &unk_278CFA390;
    v7[4] = &v9;
    [a1 _castRecord:v4 andDoRecordHandlingBlock:v8 puppetHandlingBlock:v7];
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

+ (id)avatarForRecord:(id)a3 usageIntent:(unint64_t)a4
{
  if (a3)
  {
    v5 = [a1 avatarDescriptorForRecord:?];
    v6 = [MEMORY[0x277CF04C0] avatarWithDescriptor:v5 usageIntent:a4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)memojiForRecord:(id)a3 usageIntent:(unint64_t)a4
{
  v4 = [a1 avatarForRecord:a3 usageIntent:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
  }

  return v4;
}

+ (void)_castRecord:(id)a3 andDoRecordHandlingBlock:(id)a4 puppetHandlingBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 conformsToProtocol:&unk_2853947B8] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v7}];
  }

  v11 = v7;
  if (![v11 isPuppet])
  {
    objc_opt_class();
    v10 = v8;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v10 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v11}];
  }

LABEL_8:
  v10[2](v10, v11);
}

+ (void)preloadAvatarsWithIdentifiers:(id)a3 store:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[AVTCoreEnvironment defaultEnvironment];
  [a1 preloadAvatarsWithIdentifiers:v10 store:v9 environment:v11 completionHandler:v8];
}

+ (void)preloadAllAvatarsWithStore:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AVTCoreEnvironment defaultEnvironment];
  [a1 preloadAllAvatarsWithStore:v7 environment:v8 completionHandler:v6];
}

+ (void)preloadAvatarsWithIdentifiers:(id)a3 store:(id)a4 environment:(id)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v9;
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
        [v13 addObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  [a1 preloadAvatarsWithFetchRequests:v13 store:v10 environment:v11 completionHandler:v12];
  v20 = *MEMORY[0x277D85DE8];
}

+ (void)preloadAllAvatarsWithStore:(id)a3 environment:(id)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[AVTAvatarFetchRequest requestForAllAvatars];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [a1 preloadAvatarsWithFetchRequests:v12 store:v10 environment:v9 completionHandler:v8];

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)preloadAvatarsWithFetchRequests:(id)a3 store:(id)a4 environment:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 backgroundQueue];
  v15 = [v12 logger];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __96__AVTAvatarRecordRendering_preloadAvatarsWithFetchRequests_store_environment_completionHandler___block_invoke;
  v21[3] = &unk_278CFA3B8;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v15;
  v26 = v13;
  v27 = a1;
  v16 = v13;
  v17 = v15;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  dispatch_async(v14, v21);
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