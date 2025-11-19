@interface ATXHistogramBundleIdTable
+ (ATXHistogramBundleIdTable)sharedInstance;
+ (void)stopUsingTemporarySharedInstance;
+ (void)useTemporarySharedInstance:(id)a3;
- (id)permutationFrom:(id)a3;
- (void)removeBundleIds:(id)a3;
@end

@implementation ATXHistogramBundleIdTable

+ (ATXHistogramBundleIdTable)sharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  v2 = sharedInstance;
  if (!v2)
  {
    v3 = [ATXHistogramBundleIdTable alloc];
    v4 = +[_ATXDataStore sharedInstance];
    v2 = [(ATXHistogramTable *)v3 initWithDatastore:v4 blobType:0];
    objc_storeStrong(&sharedInstance, v2);
  }

  pthread_mutex_unlock(&sharedInstanceLock);

  return v2;
}

+ (void)useTemporarySharedInstance:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&sharedInstanceLock);
  objc_storeStrong(&swappedOutSharedInstance, sharedInstance);
  objc_storeStrong(&sharedInstance, a3);
  pthread_mutex_unlock(&sharedInstanceLock);
}

+ (void)stopUsingTemporarySharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock);
  objc_storeStrong(&sharedInstance, swappedOutSharedInstance);
  v2 = swappedOutSharedInstance;
  swappedOutSharedInstance = 0;

  pthread_mutex_unlock(&sharedInstanceLock);
}

- (id)permutationFrom:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__ATXHistogramBundleIdTable_permutationFrom___block_invoke;
  v10[3] = &unk_27859DF60;
  v10[4] = &v11;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
  ++*(v12 + 12);
  v5 = objc_alloc(MEMORY[0x277CBEB28]);
  v6 = [v5 initWithLength:2 * *(v12 + 12)];
  v7 = [v6 mutableBytes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__ATXHistogramBundleIdTable_permutationFrom___block_invoke_2;
  v9[3] = &unk_27859DF88;
  v9[5] = &v11;
  v9[6] = v7;
  v9[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __45__ATXHistogramBundleIdTable_permutationFrom___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 unsignedShortValue];
  v5 = *(*(a1 + 32) + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }
}

void __45__ATXHistogramBundleIdTable_permutationFrom___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 unsignedShortValue];
  v8 = a1 + 40;
  if (v7 >= *(*(*(a1 + 40) + 8) + 24))
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45__ATXHistogramBundleIdTable_permutationFrom___block_invoke_2_cold_1(v8, v7, v9);
    }
  }

  else
  {
    *(*(a1 + 48) + 2 * v7) = [*(a1 + 32) intern:v5];
  }
}

- (void)removeBundleIds:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(ATXHistogramTable *)self remove:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__ATXHistogramBundleIdTable_permutationFrom___block_invoke_2_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 24);
  v5[0] = 67109376;
  v5[1] = a2;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Event id %u greater than max %u", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

@end