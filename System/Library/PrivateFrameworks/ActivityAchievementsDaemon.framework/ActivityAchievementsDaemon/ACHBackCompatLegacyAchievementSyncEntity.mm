@interface ACHBackCompatLegacyAchievementSyncEntity
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)decodeSyncObjectWithData:(id)data;
+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error;
+ (void)setEarnedInstanceStore:(id)store;
@end

@implementation ACHBackCompatLegacyAchievementSyncEntity

+ (void)setEarnedInstanceStore:(id)store
{
  storeCopy = store;
  os_unfair_lock_lock(&ivarLock);
  objc_storeWeak(&_earnedInstanceStore, storeCopy);

  os_unfair_lock_unlock(&ivarLock);
}

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_alloc(MEMORY[0x277D108D8]);
  v3 = [v2 initWithEntityIdentifier:*MEMORY[0x277CE8B20] schemaIdentifier:0];

  return v3;
}

+ (id)decodeSyncObjectWithData:(id)data
{
  v3 = MEMORY[0x277CE8D08];
  dataCopy = data;
  v5 = [[v3 alloc] initWithData:dataCopy];

  return v5;
}

+ (int64_t)receiveSyncObjects:(id)objects version:(id)version syncStore:(id)store profile:(id)profile error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  storeCopy = store;
  profileCopy = profile;
  v12 = ACHLogSync();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectsCopy, "count")}];
    *buf = 138543362;
    v49 = v13;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Legacy Achievement Entity received sync objects, count: %{public}@", buf, 0xCu);
  }

  if ([objectsCopy count])
  {
    v40 = storeCopy;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = objectsCopy;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        v19 = 0;
        do
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v43 + 1) + 8 * v19);
          hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
          v22 = ACHEarnedInstanceFromBackCompatCodableAchievement();

          if (v22)
          {
            [v14 addObject:v22];
          }

          else
          {
            v23 = ACHLogDatabase();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v49 = v20;
              _os_log_error_impl(&dword_221DDC000, v23, OS_LOG_TYPE_ERROR, "Failed to create earned instance for legacy achievement: %{public}@", buf, 0xCu);
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v17);
    }

    v24 = [v14 count];
    v25 = ACHLogSync();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      storeCopy = v40;
      if (v26)
      {
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v14, "count")}];
        *buf = 138543362;
        v49 = v27;
        _os_log_impl(&dword_221DDC000, v25, OS_LOG_TYPE_DEFAULT, "Decoded %{public}@ legacy achievement instances from sync.", buf, 0xCu);
      }

      os_unfair_lock_lock(&ivarLock);
      WeakRetained = objc_loadWeakRetained(&_earnedInstanceStore);

      v29 = ACHLogSync();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (WeakRetained)
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&dword_221DDC000, v29, OS_LOG_TYPE_DEFAULT, "Legacy Achievement Entity received sync objects and earned instance store is set, passing to the store", buf, 2u);
        }

        v31 = objc_loadWeakRetained(&_earnedInstanceStore);
        v32 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v14];
        v41 = 0;
        v33 = [v31 addEarnedInstances:v32 error:&v41];
        v34 = v41;

        if (v33)
        {
          goto LABEL_37;
        }

        v35 = ACHLogDatabase();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [ACHBackCompatLegacyAchievementSyncEntity receiveSyncObjects:v34 version:v35 syncStore:? profile:? error:?];
        }
      }

      else
      {
        if (v30)
        {
          *buf = 0;
          _os_log_impl(&dword_221DDC000, v29, OS_LOG_TYPE_DEFAULT, "Legacy Achievement Entity received sync objects, but earned instance store is not registered yet. Writing directly to database.", buf, 2u);
        }

        v35 = [MEMORY[0x277CBEB98] setWithArray:v14];
        v42 = 0;
        v36 = [objc_opt_class() insertEarnedInstances:v35 provenance:objc_msgSend(v40 useLegacySyncIdentity:"syncProvenance") profile:1 databaseContext:profileCopy error:{0, &v42}];
        v34 = v42;
        if (v34)
        {
          v37 = ACHLogSync();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            [ACHBackCompatLegacyAchievementSyncEntity receiveSyncObjects:v34 version:v37 syncStore:? profile:? error:?];
          }
        }
      }

LABEL_37:
      os_unfair_lock_unlock(&ivarLock);
      goto LABEL_38;
    }

    storeCopy = v40;
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v25, OS_LOG_TYPE_DEFAULT, "Received zero decodable legacy achievement instances from sync, nothing to do.", buf, 2u);
    }
  }

  else
  {
    v14 = ACHLogSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Received zero Legacy Achievement sync objects, nothing to do.", buf, 2u);
    }
  }

LABEL_38:

  v38 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (void)receiveSyncObjects:(uint64_t)a1 version:(NSObject *)a2 syncStore:profile:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error adding synced legacy achievements (but that doesn't fail sync): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)receiveSyncObjects:(uint64_t)a1 version:(NSObject *)a2 syncStore:profile:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error directly applying legacy achievement sync objects to database (doesn't fail sync though): %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end