@interface ACHSyncingMonthlyChallengeTemplateCache
- (ACHSyncingMonthlyChallengeTemplateCache)initWithHealthStore:(id)a3;
- (BOOL)cacheTemplate:(id)a3 error:(id *)a4;
- (id)allCachedTemplatesWithError:(id *)a3;
- (id)templateForDateComponents:(id)a3 error:(id *)a4;
@end

@implementation ACHSyncingMonthlyChallengeTemplateCache

- (ACHSyncingMonthlyChallengeTemplateCache)initWithHealthStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ACHSyncingMonthlyChallengeTemplateCache;
  v6 = [(ACHSyncingMonthlyChallengeTemplateCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v7->_gregorianCalendar;
    v7->_gregorianCalendar = v8;

    v10 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:0 domainName:@"com.apple.ActivityAchievements.MonthlyChallengeTemplateCache" healthStore:v5];
    kvDomain = v7->_kvDomain;
    v7->_kvDomain = v10;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (BOOL)cacheTemplate:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 uniqueName];
  v8 = [v7 componentsSeparatedByString:@"_"];

  if ([v8 count] == 3)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v8 objectAtIndexedSubscript:1];
    v11 = [v8 objectAtIndexedSubscript:2];
    v12 = [v9 stringWithFormat:@"%@_%@", v10, v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = ACHMonthlyChallengeCacheValue();

  if (v13)
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
    v15 = [v14 stringForKey:v12 error:a4];

    os_unfair_lock_unlock(&self->_lock);
    if (*a4)
    {
      v16 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a4;
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Unable to access values in key-value domain for cache: %@", buf, 0xCu);
      }
    }

    else
    {
      if (!v15)
      {
        os_unfair_lock_lock(&self->_lock);
        v24 = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
        v18 = [v24 setString:v13 forKey:v12 error:a4];

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_16;
      }

      v19 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Monthly challenge already cached for %@; ignoring template %@ in favor of %@", buf, 0x20u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26 = @"Monthly challenge already cached for requested month/year combination.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v20 errorWithDomain:@"com.apple.ActivityAchievements" code:42 userInfo:v16];
      if (v21)
      {
        v21 = v21;
        *a4 = v21;
      }
    }

    v18 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v18 = 0;
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)allCachedTemplatesWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v5 = dispatch_semaphore_create(0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__7;
  v35 = __Block_byref_object_dispose__7;
  v36 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__7;
  v29[4] = __Block_byref_object_dispose__7;
  v30 = 0;
  v6 = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__ACHSyncingMonthlyChallengeTemplateCache_allCachedTemplatesWithError___block_invoke;
  v25[3] = &unk_2784916E0;
  v27 = &v31;
  v28 = v29;
  dsema = v5;
  v26 = dsema;
  [v6 allValuesWithCompletion:v25];

  os_unfair_lock_unlock(&self->_lock);
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(dsema, v7))
  {
    v8 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Timed out waiting for fetch of cached monthly challenge templates.", buf, 2u);
    }

    v9 = 0;
LABEL_5:

    goto LABEL_6;
  }

  if (*a3)
  {
    v12 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACHSyncingMonthlyChallengeTemplateCache *)a3 allCachedTemplatesWithError:v12];
    }
  }

  if ([v32[5] count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v32[5] allValues];
    v13 = [v8 countByEnumeratingWithState:&v21 objects:v39 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [(ACHSyncingMonthlyChallengeTemplateCache *)self gregorianCalendar];
          v18 = ACHMonthlyChallengeTemplateFromCacheValue(v16, v17);

          if (v18)
          {
            [v9 addObject:v18];
          }

          else
          {
            v19 = ACHLogMonthlyChallenges();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v16;
              _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "Failed to deserialize template from cache value %@", buf, 0xCu);
            }
          }
        }

        v13 = [v8 countByEnumeratingWithState:&v21 objects:v39 count:16];
      }

      while (v13);
    }

    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __71__ACHSyncingMonthlyChallengeTemplateCache_allCachedTemplatesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)templateForDateComponents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld_%02ld", objc_msgSend(v6, "year"), objc_msgSend(v6, "month")];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
  v9 = [v8 stringForKey:v7 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  if (*a4)
  {
    v10 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACHSyncingMonthlyChallengeTemplateCache *)v6 templateForDateComponents:a4 error:v10];
    }
  }

  if (v9)
  {
    v11 = [(ACHSyncingMonthlyChallengeTemplateCache *)self gregorianCalendar];
    v12 = ACHMonthlyChallengeTemplateFromCacheValue(v9, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)allCachedTemplatesWithError:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error pulling monthly challenge cache: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)templateForDateComponents:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_221DDC000, log, OS_LOG_TYPE_ERROR, "Error pulling cached value for date components %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end