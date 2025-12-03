@interface ACHSyncingMonthlyChallengeTemplateCache
- (ACHSyncingMonthlyChallengeTemplateCache)initWithHealthStore:(id)store;
- (BOOL)cacheTemplate:(id)template error:(id *)error;
- (id)allCachedTemplatesWithError:(id *)error;
- (id)templateForDateComponents:(id)components error:(id *)error;
@end

@implementation ACHSyncingMonthlyChallengeTemplateCache

- (ACHSyncingMonthlyChallengeTemplateCache)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = ACHSyncingMonthlyChallengeTemplateCache;
  v6 = [(ACHSyncingMonthlyChallengeTemplateCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v7->_gregorianCalendar;
    v7->_gregorianCalendar = hk_gregorianCalendar;

    v10 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:0 domainName:@"com.apple.ActivityAchievements.MonthlyChallengeTemplateCache" healthStore:storeCopy];
    kvDomain = v7->_kvDomain;
    v7->_kvDomain = v10;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (BOOL)cacheTemplate:(id)template error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  uniqueName = [templateCopy uniqueName];
  v8 = [uniqueName componentsSeparatedByString:@"_"];

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
    kvDomain = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
    v15 = [kvDomain stringForKey:v12 error:error];

    os_unfair_lock_unlock(&self->_lock);
    if (*error)
    {
      v16 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *error;
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
        kvDomain2 = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
        v18 = [kvDomain2 setString:v13 forKey:v12 error:error];

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
        *error = v21;
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

- (id)allCachedTemplatesWithError:(id *)error
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
  kvDomain = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__ACHSyncingMonthlyChallengeTemplateCache_allCachedTemplatesWithError___block_invoke;
  v25[3] = &unk_2784916E0;
  v27 = &v31;
  v28 = v29;
  dsema = v5;
  v26 = dsema;
  [kvDomain allValuesWithCompletion:v25];

  os_unfair_lock_unlock(&self->_lock);
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(dsema, v7))
  {
    allValues = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, allValues, OS_LOG_TYPE_DEFAULT, "Timed out waiting for fetch of cached monthly challenge templates.", buf, 2u);
    }

    v9 = 0;
LABEL_5:

    goto LABEL_6;
  }

  if (*error)
  {
    v12 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACHSyncingMonthlyChallengeTemplateCache *)error allCachedTemplatesWithError:v12];
    }
  }

  if ([v32[5] count])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allValues = [v32[5] allValues];
    v13 = [allValues countByEnumeratingWithState:&v21 objects:v39 count:16];
    if (v13)
    {
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(allValues);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          gregorianCalendar = [(ACHSyncingMonthlyChallengeTemplateCache *)self gregorianCalendar];
          v18 = ACHMonthlyChallengeTemplateFromCacheValue(v16, gregorianCalendar);

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

        v13 = [allValues countByEnumeratingWithState:&v21 objects:v39 count:16];
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

- (id)templateForDateComponents:(id)components error:(id *)error
{
  componentsCopy = components;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld_%02ld", objc_msgSend(componentsCopy, "year"), objc_msgSend(componentsCopy, "month")];
  os_unfair_lock_lock(&self->_lock);
  kvDomain = [(ACHSyncingMonthlyChallengeTemplateCache *)self kvDomain];
  v9 = [kvDomain stringForKey:v7 error:error];

  os_unfair_lock_unlock(&self->_lock);
  if (*error)
  {
    v10 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACHSyncingMonthlyChallengeTemplateCache *)componentsCopy templateForDateComponents:error error:v10];
    }
  }

  if (v9)
  {
    gregorianCalendar = [(ACHSyncingMonthlyChallengeTemplateCache *)self gregorianCalendar];
    v12 = ACHMonthlyChallengeTemplateFromCacheValue(v9, gregorianCalendar);
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