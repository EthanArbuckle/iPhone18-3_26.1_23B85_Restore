@interface ASCompetitionStore
- (ASCompetitionStore)initWithDatabaseClient:(id)client;
- (BOOL)_removeCompetitionsWithFriendFromDatabase:(id)database type:(int64_t)type error:(id *)error;
- (BOOL)_saveCompetitionListToDatabase:(id)database owner:(int64_t)owner error:(id *)error;
- (BOOL)_saveCompetitionLists:(id)lists owner:(int64_t)owner;
- (BOOL)_saveCompetitionsToDatabase:(id)database friendUUID:(id)d type:(int64_t)type error:(id *)error;
- (BOOL)loadCachedCompetitions;
- (BOOL)saveRemoteCompetitionList:(id)list;
- (id)_cachedCompetitionListForFriendWithUUID:(id)d type:(int64_t)type owner:(int64_t)owner;
- (id)_queue_competitionListCacheForType:(int64_t)type owner:(int64_t)owner;
- (id)currentRemoteCompetitionForContact:(id)contact;
- (void)_queue_saveCompetitionListsToCache:(id)cache owner:(int64_t)owner;
- (void)deleteCachedCompetitions;
@end

@implementation ASCompetitionStore

- (ASCompetitionStore)initWithDatabaseClient:(id)client
{
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = ASCompetitionStore;
  v6 = [(ASCompetitionStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseClient, client);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentCompetitionListCache = v7->_currentCompetitionListCache;
    v7->_currentCompetitionListCache = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    archivedCompetitionListCache = v7->_archivedCompetitionListCache;
    v7->_archivedCompetitionListCache = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    remoteCompetitionListCache = v7->_remoteCompetitionListCache;
    v7->_remoteCompetitionListCache = dictionary3;

    v14 = HKCreateSerialUtilityDispatchQueue();
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v14;
  }

  return v7;
}

- (BOOL)loadCachedCompetitions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__ASCompetitionStore_loadCachedCompetitions__block_invoke;
  v5[3] = &unk_278C4BC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CompetitionStore loading cached competitions", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v70 = 0;
  v4 = [v3 allCodableDatabaseCompetitionsWithError:&v70];
  v5 = v70;
  v57 = v4;
  if (v4)
  {
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 32) + 8);
    v69 = v5;
    v7 = [v6 allCodableDatabaseCompetitionListEntriesWithError:&v69];
    v51 = v69;

    v50 = v7;
    if (v7)
    {
      v52 = a1;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v7;
      v58 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
      if (v58)
      {
        v56 = *v66;
        do
        {
          v8 = 0;
          do
          {
            if (*v66 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v59 = v8;
            v9 = *(*(&v65 + 1) + 8 * v8);
            v10 = [v9 type];
            ASLoggingInitialize();
            v11 = *MEMORY[0x277CE8FE0];
            if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEBUG))
            {
              __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_1(buf, v11, v9, &v75);
            }

            v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v12 = v57;
            v13 = [v12 countByEnumeratingWithState:&v61 objects:v73 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v62;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v62 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v61 + 1) + 8 * i);
                  if ([v17 type] == v10)
                  {
                    v18 = [v17 friendUUID];
                    v19 = [v9 friendUUID];
                    v20 = [v18 isEqual:v19];

                    if (v20)
                    {
                      [v60 addObject:v17];
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v61 objects:v73 count:16];
              }

              while (v14);
            }

            v21 = [MEMORY[0x277CE90E0] competitionListFromCodableDatabaseCompetitionList:v9 codableCompetitions:v60 withType:v10];
            if (![v9 owner])
            {
              [v53 addObject:v21];
            }

            if ([v9 owner] == 1)
            {
              [v54 addObject:v21];
            }

            v8 = v59 + 1;
          }

          while (v59 + 1 != v58);
          v58 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
        }

        while (v58);
      }

      [*(v52 + 32) _queue_saveCompetitionListsToCache:v53 owner:0];
      [*(v52 + 32) _queue_saveCompetitionListsToCache:v54 owner:1];
      ASLoggingInitialize();
      v22 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(v52 + 32) + 24);
        v24 = v22;
        v25 = [v23 count];
        *v71 = 134217984;
        v72 = v25;
        _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "Loaded %lu cached current competition lists", v71, 0xCu);
      }

      ASLoggingInitialize();
      v26 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*(v52 + 32) + 32);
        v28 = v26;
        v29 = [v27 count];
        *v71 = 134217984;
        v72 = v29;
        _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "Loaded %lu cached archived competition lists", v71, 0xCu);
      }

      ASLoggingInitialize();
      v30 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(*(v52 + 32) + 40);
        v32 = v30;
        v33 = [v31 count];
        *v71 = 134217984;
        v72 = v33;
        _os_log_impl(&dword_23E5E3000, v32, OS_LOG_TYPE_DEFAULT, "Loaded %lu cached remote competitions", v71, 0xCu);
      }
    }

    else
    {
      ASLoggingInitialize();
      v42 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
      {
        __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_2(v51, v42, v43, v44, v45, v46, v47, v48);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v5 = v51;
  }

  else
  {
    v34 = a1;
    ASLoggingInitialize();
    v35 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_3(v5, v35, v36, v37, v38, v39, v40, v41);
    }

    *(*(*(v34 + 40) + 8) + 24) = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)deleteCachedCompetitions
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__ASCompetitionStore_deleteCachedCompetitions__block_invoke;
  v12[3] = &unk_278C4CC38;
  v12[4] = self;
  v3 = MEMORY[0x23EF0EB00](v12, a2);
  databaseClient = self->_databaseClient;
  v11 = 0;
  v5 = [(ASDatabaseClient *)databaseClient performDatabaseCompetitionWriteTransactionBlock:v3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (!v5 || v6 != 0)
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Error deleting all cached competitions: %{public}@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __46__ASCompetitionStore_deleteCachedCompetitions__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v16 = 0;
  v5 = [v4 removeAllCodableDatabaseCompetitionListsWithError:&v16];
  v6 = v16;
  v7 = *(*(a1 + 32) + 8);
  v15 = 0;
  v8 = [v7 removeAllCodableDatabaseCompetitionsWithError:&v15];
  v9 = v15;
  v10 = v9;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  if (v12)
  {
    if (a2)
    {
      v13 = v12;
      *a2 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v5 & v8;
}

- (id)currentRemoteCompetitionForContact:(id)contact
{
  primaryRemoteRelationship = [contact primaryRemoteRelationship];
  uUID = [primaryRemoteRelationship UUID];
  v6 = [(ASCompetitionStore *)self _cachedCompetitionListForFriendWithUUID:uUID type:0 owner:1];

  currentCompetition = [v6 currentCompetition];

  return currentCompetition;
}

- (BOOL)saveRemoteCompetitionList:(id)list
{
  v10 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = MEMORY[0x277CBEA60];
  listCopy2 = list;
  v6 = [v4 arrayWithObjects:&listCopy count:1];

  LOBYTE(self) = [(ASCompetitionStore *)self _saveCompetitionLists:v6 owner:1, listCopy, v10];
  v7 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)_saveCompetitionLists:(id)lists owner:(int64_t)owner
{
  listsCopy = lists;
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke;
  v27[3] = &unk_278C4CC60;
  v7 = listsCopy;
  selfCopy = self;
  ownerCopy = owner;
  v28 = v7;
  v8 = MEMORY[0x23EF0EB00](v27);
  databaseClient = self->_databaseClient;
  v26 = 0;
  v10 = [(ASDatabaseClient *)databaseClient performDatabaseCompetitionWriteTransactionBlock:v8 error:&v26];
  v11 = v26;
  v12 = v11;
  if (!v10 || v11)
  {
    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      [(ASCompetitionStore *)v12 _saveCompetitionLists:v13 owner:v14, v15, v16, v17, v18, v19];
    }
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke_303;
  block[3] = &unk_278C4B608;
  block[4] = self;
  v24 = v7;
  ownerCopy2 = owner;
  v21 = v7;
  dispatch_async(serialQueue, block);

  return v10;
}

uint64_t __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v57 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 32);
  v42 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v42)
  {
    v40 = *v49;
    LODWORD(v5) = 1;
    v6 = MEMORY[0x277CE8FE0];
    *&v4 = 138412290;
    v38 = v4;
    v41 = a2;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v49 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v5;
        v8 = *(*(&v48 + 1) + 8 * i);
        ASLoggingInitialize();
        v9 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v3 + 48);
          *buf = 134218242;
          v53 = v10;
          v54 = 2112;
          v55 = v8;
          _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionStore persisting competition list to database for owner: %lu, competitionList: %@", buf, 0x16u);
        }

        v11 = *(v3 + 40);
        v12 = *(v3 + 48);
        v47 = 0;
        v43 = [v11 _saveCompetitionListToDatabase:v8 owner:v12 error:{&v47, v38}];
        v13 = v47;
        ASLoggingInitialize();
        v14 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v8 type];
          v17 = [v8 friendUUID];
          *buf = 134218242;
          v53 = v16;
          v54 = 2112;
          v55 = v17;
          _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "CompetitionStore removing competitions of type %lu with friend %@", buf, 0x16u);
        }

        v18 = *(v3 + 40);
        v19 = [v8 friendUUID];
        v20 = [v8 type];
        v46 = 0;
        v21 = [v18 _removeCompetitionsWithFriendFromDatabase:v19 type:v20 error:&v46];
        v22 = v46;

        ASLoggingInitialize();
        v23 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = [v8 competitions];
          *buf = v38;
          v53 = v25;
          _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionStore saving competitions [%@]", buf, 0xCu);
        }

        v26 = v3;
        v27 = *(v3 + 40);
        v28 = [v8 competitions];
        v29 = [v8 friendUUID];
        v30 = [v8 type];
        v45 = 0;
        v31 = [v27 _saveCompetitionsToDatabase:v28 friendUUID:v29 type:v30 error:&v45];
        v32 = v45;

        if (v22)
        {
          v33 = v22;
        }

        else
        {
          v33 = v32;
        }

        if (v13)
        {
          v33 = v13;
        }

        v34 = v33;
        if (v34)
        {
          if (v41)
          {
            v35 = v34;
            *v41 = v34;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v5 = v44 & v43 & v21 & v31;

        v3 = v26;
        v6 = MEMORY[0x277CE8FE0];
      }

      v42 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v42);
  }

  else
  {
    v5 = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v5;
}

void __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke_303(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v2 _queue_saveCompetitionListsToCache:v3 owner:*(a1 + 48)];
}

- (BOOL)_saveCompetitionListToDatabase:(id)database owner:(int64_t)owner error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v9 = [databaseCopy codableDatabaseCompetitionListEntryForOwner:owner];
  v10 = [(ASDatabaseClient *)self->_databaseClient saveCodableDatabaseCompetitionListEntry:v9 error:error];
  if (!v10)
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *error;
      v15 = 138412546;
      v16 = databaseCopy;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionStore: Persisting competition list [%@] failed with error [%@]", &v15, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_removeCompetitionsWithFriendFromDatabase:(id)database type:(int64_t)type error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v9 = [(ASDatabaseClient *)self->_databaseClient removeCodableDatabaseCompetitionsWithFriendUUID:databaseCopy type:type error:error];
  if (!v9)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      v14 = 134218498;
      typeCopy = type;
      v16 = 2112;
      v17 = databaseCopy;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionStore: Removing competitions of type %lu for friend with UUID [%@] failed with error [%@]", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_saveCompetitionsToDatabase:(id)database friendUUID:(id)d type:(int64_t)type error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v11 = [MEMORY[0x277CE90D8] codableDatabaseCompetitionsFromCompetitions:databaseCopy withFriendWithUUID:d withType:type];
  v12 = [(ASDatabaseClient *)self->_databaseClient saveCodableDatabaseCompetitions:v11 error:error];
  if (!v12)
  {
    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      v17 = 138412546;
      v18 = databaseCopy;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "CompetitionStore: Persisting competitions to database [%@] failed with error [%@]", &v17, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_queue_saveCompetitionListsToCache:(id)cache owner:(int64_t)owner
{
  v28 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  dispatch_assert_queue_V2(self->_serialQueue);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = cacheCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    v12 = MEMORY[0x277CE8FE0];
    *&v9 = 138412290;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        friendUUID = [v14 friendUUID];

        if (friendUUID)
        {
          v16 = -[ASCompetitionStore _queue_competitionListCacheForType:owner:](self, "_queue_competitionListCacheForType:owner:", [v14 type], owner);
          friendUUID2 = [v14 friendUUID];
          [v16 setObject:v14 forKeyedSubscript:friendUUID2];
        }

        else
        {
          ASLoggingInitialize();
          v18 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v26 = v14;
            _os_log_error_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_ERROR, "Unable to cache competition list with no friend UUID: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_cachedCompetitionListForFriendWithUUID:(id)d type:(int64_t)type owner:(int64_t)owner
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ASCompetitionStore__cachedCompetitionListForFriendWithUUID_type_owner___block_invoke;
  block[3] = &unk_278C4CC88;
  typeCopy = type;
  ownerCopy = owner;
  v14 = dCopy;
  v15 = &v18;
  block[4] = self;
  v10 = dCopy;
  dispatch_sync(serialQueue, block);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __73__ASCompetitionStore__cachedCompetitionListForFriendWithUUID_type_owner___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _queue_competitionListCacheForType:*(a1 + 56) owner:*(a1 + 64)];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_queue_competitionListCacheForType:(int64_t)type owner:(int64_t)owner
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (owner != 1)
  {
    if (owner)
    {
      goto LABEL_14;
    }

    if (type == 1)
    {
      archivedCompetitionListCache = self->_archivedCompetitionListCache;
    }

    else
    {
      if (type)
      {
        goto LABEL_14;
      }

      archivedCompetitionListCache = self->_currentCompetitionListCache;
    }

LABEL_10:
    dictionary = archivedCompetitionListCache;
    goto LABEL_14;
  }

  if (type != 1)
  {
    if (type)
    {
      goto LABEL_14;
    }

    archivedCompetitionListCache = self->_remoteCompetitionListCache;
    goto LABEL_10;
  }

  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FE0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
  {
    [ASCompetitionStore _queue_competitionListCacheForType:v9 owner:?];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
LABEL_14:

  return dictionary;
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 friendUUID];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEBUG, "Filtering for competition list with friendUUID: %@", a1, 0xCu);
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Unable to load cached competition lists: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Unable to load cached competitions: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_saveCompetitionLists:(uint64_t)a3 owner:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Error saving competition lists: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end