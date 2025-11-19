@interface ACHEarnedInstanceEntity
+ (ACHEarnedInstanceEntityJournalEntryAppliedObserver)journalEntryAppliedObserver;
+ (ACHEarnedInstanceEntitySyncedEarnedInstancesObserver)syncedEarnedInstancesObserver;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (BOOL)removeAllEarnedInstancesWithProfile:(id)a3 error:(id *)a4;
+ (BOOL)removeEarnedInstances:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)_earnedInstancesWithPredicate:(id)a3 limit:(unint64_t)a4 ascendingByEarnedDate:(BOOL)a5 profile:(id)a6 error:(id *)a7;
+ (id)_insertEarnedInstance:(id)a3 provenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 error:(id *)a7;
+ (id)_insertEarnedInstances:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 profile:(id)a6 databaseContext:(id)a7 error:(id *)a8;
+ (id)allEarnedInstancesWithProfile:(id)a3 error:(id *)a4;
+ (id)codableEarnedInstanceForEarnedInstanceInDatabase:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)createTableSQL;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)earnedInstancesForAnniversaryDateComponentsString:(id)a3 templateUniqueNames:(id)a4 profile:(id)a5 error:(id *)a6;
+ (id)earnedInstancesForDateComponentStringsArray:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)earnedInstancesForDateComponents:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)earnedInstancesForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)mostRecentEarnedInstanceForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (unint64_t)_countOfEarnedInstancesWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5;
+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3;
+ (void)setJournalEntryAppliedObserver:(id)a3;
+ (void)setSyncedEarnedInstancesObserver:(id)a3;
@end

@implementation ACHEarnedInstanceEntity

+ (void)setSyncedEarnedInstancesObserver:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&syncObserverLock);
  objc_storeWeak(&_syncObserver, v3);

  os_unfair_lock_unlock(&syncObserverLock);
}

+ (ACHEarnedInstanceEntitySyncedEarnedInstancesObserver)syncedEarnedInstancesObserver
{
  os_unfair_lock_lock(&syncObserverLock);
  WeakRetained = objc_loadWeakRetained(&_syncObserver);
  os_unfair_lock_unlock(&syncObserverLock);

  return WeakRetained;
}

+ (void)setJournalEntryAppliedObserver:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&journalAppliedObserverLock);
  objc_storeWeak(&_journalEntryAppliedObserver, v3);

  os_unfair_lock_unlock(&journalAppliedObserverLock);
}

+ (ACHEarnedInstanceEntityJournalEntryAppliedObserver)journalEntryAppliedObserver
{
  os_unfair_lock_lock(&journalAppliedObserverLock);
  WeakRetained = objc_loadWeakRetained(&_journalEntryAppliedObserver);
  os_unfair_lock_unlock(&journalAppliedObserverLock);

  return WeakRetained;
}

+ (id)createTableSQL
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 databaseTable];
  v4 = [v2 stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@             (%@ INTEGER PRIMARY KEY AUTOINCREMENT, %@ TEXT, %@ REAL, %@ TEXT, %@ REAL, %@ TEXT, %@ TEXT, %@ INTEGER, %@ INTEGER, %@ INTEGER NOT NULL)", v3, *MEMORY[0x277D10A40], @"template_unique_name", @"created_date", @"earned_date", @"value_in_canonical_unit", @"value_canonical_unit", @"external_identifier", @"creator_device", @"sync_provenance", @"sync_identity"];

  return v4;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[ACHEarnedInstanceEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)allEarnedInstancesWithProfile:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D10B70];
  v6 = a3;
  v7 = [v5 truePredicate];
  v8 = [objc_opt_class() _earnedInstancesWithPredicate:v7 profile:v6 error:a4];

  return v8;
}

+ (id)mostRecentEarnedInstanceForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10B18];
  v8 = a4;
  v9 = [v7 predicateWithProperty:@"template_unique_name" equalToValue:a3];
  v10 = [objc_opt_class() _earnedInstancesWithPredicate:v9 limit:1 ascendingByEarnedDate:0 profile:v8 error:a5];

  v11 = [v10 lastObject];

  return v11;
}

+ (id)earnedInstancesForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10B18];
  v8 = a4;
  v9 = [v7 predicateWithProperty:@"template_unique_name" equalToValue:a3];
  v10 = [objc_opt_class() _earnedInstancesWithPredicate:v9 profile:v8 error:a5];

  return v10;
}

+ (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277D10B18];
  v8 = a4;
  v9 = [v7 predicateWithProperty:@"template_unique_name" equalToValue:a3];
  v10 = [objc_opt_class() _countOfEarnedInstancesWithPredicate:v9 profile:v8 error:a5];

  return v10;
}

+ (id)earnedInstancesForDateComponents:(id)a3 profile:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = ACHYearMonthDayStringFromDateComponents();
  if (v7)
  {
    v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"earned_date" equalToValue:v7];
    v9 = [objc_opt_class() _earnedInstancesWithPredicate:v8 profile:v6 error:a5];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"Unable to parse date components";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v10 errorWithDomain:@"com.apple.ActivityAchievements" code:133 userInfo:v11];
    if (v12)
    {
      if (a5)
      {
        v13 = v12;
        *a5 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)earnedInstancesForDateComponentStringsArray:(id)a3 profile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = ACHEarnedInstanceCompoundPredicateForDateComponentStringsArray(a3);
  v9 = [objc_opt_class() _earnedInstancesWithPredicate:v8 profile:v7 error:a5];

  return v9;
}

+ (id)earnedInstancesForAnniversaryDateComponentsString:(id)a3 templateUniqueNames:(id)a4 profile:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = ACHEarnedInstanceCompoundPredicateForAnniversaryDateComponentsString(a3, a4);
  v11 = [objc_opt_class() _earnedInstancesWithPredicate:v10 profile:v9 error:a6];

  return v11;
}

+ (BOOL)removeEarnedInstances:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = ACHEarnedInstancePredicateUsingKey(v8);
    v11 = [v9 database];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __63__ACHEarnedInstanceEntity_removeEarnedInstances_profile_error___block_invoke;
    v18[3] = &unk_278490E08;
    v21 = a1;
    v19 = v10;
    v20 = v9;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__ACHEarnedInstanceEntity_removeEarnedInstances_profile_error___block_invoke_2;
    v15[3] = &unk_278490E30;
    v16 = v8;
    v17 = v20;
    v12 = v10;
    v13 = [a1 performWriteTransactionWithHealthDatabase:v11 error:a5 block:v18 inaccessibilityHandler:v15];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t __63__ACHEarnedInstanceEntity_removeEarnedInstances_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) database];
  v7 = [v5 deleteEntitiesWithPredicate:v4 healthDatabase:v6 error:a3];

  return v7;
}

uint64_t __63__ACHEarnedInstanceEntity_removeEarnedInstances_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [ACHEarnedInstanceJournalEntry alloc];
        v13 = [(ACHEarnedInstanceJournalEntry *)v12 initWithEarnedInstance:v11 provenance:0 useLegacySyncIdentity:0 action:1, v18];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [*(a1 + 40) database];
  v15 = [v14 addJournalEntries:v5 error:a3];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 earnedInstancesForTemplateUniqueName:a3 profile:v8 error:a5];
  LOBYTE(a5) = [objc_opt_class() removeEarnedInstances:v9 profile:v8 error:a5];

  return a5;
}

+ (BOOL)removeAllEarnedInstancesWithProfile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() allEarnedInstancesWithProfile:v5 error:a4];
  LOBYTE(a4) = [objc_opt_class() removeEarnedInstances:v6 profile:v5 error:a4];

  return a4;
}

+ (unint64_t)_countOfEarnedInstancesWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 database];
  v10 = [a1 countOfObjectsWithPredicate:v8 healthDatabase:v9 error:a5];

  return v10;
}

+ (id)_earnedInstancesWithPredicate:(id)a3 limit:(unint64_t)a4 ascendingByEarnedDate:(BOOL)a5 profile:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = MEMORY[0x277CBEBF8];
  v14 = [v13 database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke;
  v19[3] = &unk_278490E80;
  v23 = a1;
  v15 = v13;
  v20 = v15;
  v16 = v12;
  v24 = a4;
  v25 = a5;
  v21 = v16;
  v22 = &v26;
  [a1 performReadTransactionWithHealthDatabase:v14 error:a7 block:v19];

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

uint64_t __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 databaseForEntityClass:*(a1 + 56)];
  v7 = [*(a1 + 56) entityEncoderForProfile:*(a1 + 32) transaction:v5 purpose:1 encodingOptions:0 authorizationFilter:0];
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"earned_date" entityClass:v9 ascending:*(a1 + 72)];
  v25[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v13 = [v9 queryWithDatabase:v6 predicate:v8 limit:v10 orderingTerms:v12 groupBy:0];

  v14 = [v7 orderedProperties];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke_2;
  v20[3] = &unk_278490E58;
  v21 = v7;
  v22 = *(a1 + 32);
  v23 = v5;
  v24 = *(a1 + 48);
  v15 = v5;
  v16 = v7;
  v17 = [v13 enumeratePersistentIDsAndProperties:v14 error:a3 enumerationHandler:v20];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v19 = 0;
  v4 = [v3 objectForPersistentID:a2 row:? error:?];
  v5 = v19;
  v6 = HDSQLiteColumnWithNameAsInt64();
  v7 = [*(a1 + 40) syncIdentityManager];
  v8 = *(a1 + 48);
  v18 = v5;
  v9 = [v7 identityForEntityID:v6 transaction:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = [v9 identity];
    v12 = achSyncIdentity(v11);

    if (v12)
    {
      [v4 setSyncIdentity:v12];
    }

    v13 = v4 != 0;
    if (v4)
    {
      v14 = [*(*(*(a1 + 56) + 8) + 40) arrayByAddingObject:v4];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else
    {
      v16 = ACHLogDatabase();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke_2_cold_1();
      }
    }
  }

  else
  {
    v12 = ACHLogDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke_2_cold_2();
    }

    v13 = 0;
  }

  return v13;
}

+ (id)_insertEarnedInstances:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 profile:(id)a6 databaseContext:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (!v16)
  {
    v16 = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  }

  v18 = [v15 database];
  v19 = [v16 copyForWritingProtectedData];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __113__ACHEarnedInstanceEntity__insertEarnedInstances_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke;
  v32[3] = &unk_278490EA8;
  v33 = v14;
  v38 = a5;
  v34 = v15;
  v36 = a1;
  v37 = a4;
  v20 = v17;
  v35 = v20;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __113__ACHEarnedInstanceEntity__insertEarnedInstances_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke_2;
  v27[3] = &unk_278490ED0;
  v21 = v33;
  v28 = v21;
  v30 = a4;
  v31 = a5;
  v22 = v34;
  v29 = v22;
  v23 = [v18 performTransactionWithContext:v19 error:a8 block:v32 inaccessibilityHandler:v27];

  if ((v23 & 1) == 0)
  {
    v24 = ACHLogDatabase();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceEntity _insertEarnedInstances:v21 provenance:a8 useLegacySyncIdentity:? profile:? databaseContext:? error:?];
    }
  }

  v25 = ACHSortedEarnedInstances();

  return v25;
}

uint64_t __113__ACHEarnedInstanceEntity__insertEarnedInstances_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(a1 + 32);
  v6 = 1;
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"key" ascending:1];
  v31 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v9 = [v5 sortedArrayUsingDescriptors:v8];

  obj = v9;
  v25 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v25)
  {
    v24 = *v28;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = ACHEarnedInstanceSyncIdentityFromEarnedInstance(v11, *(a1 + 72), *(a1 + 40), v4);
        v13 = *(a1 + 56);
        v14 = objc_opt_class();
        v15 = *(a1 + 64);
        v16 = [v12 entity];
        v17 = [v16 persistentID];
        v18 = [v4 protectedDatabase];
        v19 = [v14 _insertEarnedInstance:v11 provenance:v15 syncIdentity:v17 database:v18 error:a3];

        v20 = [v11 copy];
        [v20 setKey:{objc_msgSend(v19, "persistentID")}];
        if (!v20)
        {

          v6 = 0;
          goto LABEL_11;
        }

        [*(a1 + 48) addObject:v20];
      }

      v25 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }

    v6 = 1;
  }

LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __113__ACHEarnedInstanceEntity__insertEarnedInstances_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [ACHEarnedInstanceJournalEntry alloc];
        v13 = [(ACHEarnedInstanceJournalEntry *)v12 initWithEarnedInstance:v11 provenance:*(a1 + 48) useLegacySyncIdentity:*(a1 + 56) action:0, v18];
        [v5 addObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [*(a1 + 40) database];
  v15 = [v14 addJournalEntries:v5 error:a3];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)_insertEarnedInstance:(id)a3 provenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = _insertEarnedInstance_provenance_syncIdentity_database_error__onceToken;
  v14 = a6;
  if (v13 != -1)
  {
    +[ACHEarnedInstanceEntity _insertEarnedInstance:provenance:syncIdentity:database:error:];
  }

  v15 = _insertEarnedInstance_provenance_syncIdentity_database_error__earnedInstanceProperties;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__ACHEarnedInstanceEntity__insertEarnedInstance_provenance_syncIdentity_database_error___block_invoke_2;
  v19[3] = &unk_278490EF8;
  v20 = v12;
  v21 = a4;
  v22 = a5;
  v16 = v12;
  v17 = [a1 insertOrReplaceEntity:1 database:v14 properties:v15 error:a7 bindingHandler:v19];

  return v17;
}

uint64_t __88__ACHEarnedInstanceEntity__insertEarnedInstance_provenance_syncIdentity_database_error___block_invoke()
{
  _insertEarnedInstance_provenance_syncIdentity_database_error__earnedInstanceProperties = ACHEarnedInstanceAllKeys();

  return MEMORY[0x2821F96F8]();
}

void __88__ACHEarnedInstanceEntity__insertEarnedInstance_provenance_syncIdentity_database_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) templateUniqueName];
  MEMORY[0x223DAAEE0](a2, @"template_unique_name", v4);

  v5 = [*(a1 + 32) createdDate];
  MEMORY[0x223DAAE90](a2, @"created_date", v5);

  v6 = [*(a1 + 32) earnedDateComponents];
  v7 = ACHYearMonthDayStringFromDateComponents();
  MEMORY[0x223DAAEE0](a2, @"earned_date", v7);

  MEMORY[0x223DAAEC0](a2, @"creator_device", [*(a1 + 32) creatorDevice]);
  MEMORY[0x223DAAEC0](a2, @"sync_provenance", *(a1 + 40));
  MEMORY[0x223DAAEC0](a2, @"sync_identity", *(a1 + 48));
  v8 = [*(a1 + 32) value];

  if (v8)
  {
    v9 = [*(a1 + 32) value];
    v10 = ACHCanonicalEarnedInstanceUnitForQuantity();

    v11 = [*(a1 + 32) value];
    [v11 doubleValueForUnit:v10];
    v13 = v12;

    MEMORY[0x223DAAEA0](a2, @"value_in_canonical_unit", v13);
    v14 = [v10 unitString];
    MEMORY[0x223DAAEE0](a2, @"value_canonical_unit", v14);
  }

  else
  {
    MEMORY[0x223DAAED0](a2, @"value_in_canonical_unit");
    MEMORY[0x223DAAED0](a2, @"value_canonical_unit");
  }

  v15 = [*(a1 + 32) externalIdentifier];
  MEMORY[0x223DAAEE0](a2, @"external_identifier", v15);
}

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_alloc(MEMORY[0x277D108D8]);
  v3 = [v2 initWithEntityIdentifier:*MEMORY[0x277CE8B58] schemaIdentifier:*MEMORY[0x277CE8AA8]];

  return v3;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = MEMORY[0x277CE8CF8];
  v4 = a3;
  v5 = [[v3 alloc] initWithData:v4];

  return v5;
}

+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [a5 database];
  v12 = [a1 nextSyncAnchorWithStartAnchor:a4 predicate:0 session:v10 healthDatabase:v11 error:a6];

  v13 = ACHLogSync();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    +[ACHEarnedInstanceEntity nextSyncAnchorWithSession:startSyncAnchor:profile:error:];
  }

  return v12;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v74 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v36 = a6;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = -1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v16 = [v13 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v17 = ACHLogSync();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v69 = v13;
    v70 = 2048;
    v71 = var0;
    v72 = 2048;
    v73 = var1;
    _os_log_debug_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEBUG, "Earned Instance Entity generating sync objects for session (%@), Anchor Range Start (%lld), Anchor Range End (%lld)", buf, 0x20u);
  }

  v18 = [v14 database];
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v40 = &unk_278490F48;
  v48 = a1;
  v19 = v14;
  v41 = v19;
  v20 = v13;
  v49 = var0;
  v50 = var1;
  v42 = v20;
  v44 = &v64;
  v45 = &v52;
  v46 = &v56;
  v51 = v16;
  v21 = v15;
  v43 = v21;
  v47 = &v60;
  v22 = [a1 performReadTransactionWithHealthDatabase:v18 error:a7 block:&v37];

  if (v22)
  {
    v23 = ACHLogSync();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      *buf = 138543362;
      v69 = v24;
      _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "Earned Instance sync generated (%{public}@} objects for sync.", buf, 0xCu);
    }

    if (v53[3] > 999 || v57[3] >= v16)
    {
      v25 = v61[3];
      v65[3] = v25;
    }

    else
    {
      v25 = v65[3];
    }

    v33 = [v36 sendCodableChange:v21 resultAnchor:v25 sequence:0 done:1 error:{a7, v36, v37, v38, v39, v40, v41, v42}];
  }

  else
  {
    v26 = ACHLogSync();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceEntity *)a7 generateSyncObjectsForSession:v26 syncAnchorRange:v27 profile:v28 messageHandler:v29 error:v30, v31, v32];
    }

    v33 = 0;
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [*(a1 + 88) entityEncoderForProfile:*(a1 + 32) transaction:v4 purpose:0 encodingOptions:0 authorizationFilter:0];
  v6 = *(a1 + 88);
  v7 = [v5 orderedProperties];
  v8 = *(*(a1 + 56) + 8) + 24;
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v21[3] = &unk_278490F20;
  v26 = *(a1 + 64);
  v22 = v5;
  v23 = *(a1 + 32);
  v24 = v4;
  v11 = *(a1 + 112);
  v27 = *(a1 + 72);
  v29 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v25 = v12;
  v28 = v13;
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  v16 = v4;
  v17 = v5;
  v18 = [v6 enumerateEntitiesForSyncWithProperties:v7 predicate:0 session:v9 syncAnchorRange:v15 limit:v14 lastSyncAnchor:0 healthDatabase:v8 error:v10 block:{a3, v21}];

  return v18;
}

BOOL __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t *a8)
{
  v13 = a2;
  v14 = v13;
  if (*(*(*(a1 + 64) + 8) + 24) < 1000)
  {
    v16 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(v13 row:"persistentID") error:{a4, a8}];
    v17 = HDSQLiteColumnWithNameAsInt64();
    v18 = [*(a1 + 40) syncIdentityManager];
    v19 = [v18 identityForEntityID:v17 transaction:*(a1 + 48) error:a8];

    if (v19)
    {
      v33 = a5;
      v20 = objc_alloc_init(MEMORY[0x277CE8D10]);
      v21 = [v19 identity];
      v22 = [v21 hardwareIdentifier];
      v23 = [v22 hk_dataForUUIDBytes];
      [v20 setHardwareIdentifier:v23];

      v24 = [v19 identity];
      v25 = [v24 databaseIdentifier];
      v26 = [v25 hk_dataForUUIDBytes];
      [v20 setDatabaseIdentifier:v26];

      v27 = [v19 identity];
      v28 = [v27 instanceDiscriminator];
      [v20 setInstanceDiscriminator:v28];

      [v16 setSyncIdentity:v20];
      v15 = v16 != 0;
      if (v16)
      {
        v29 = [v16 encodedByteCount];
        *(*(*(a1 + 72) + 8) + 24) += v29;
        v30 = ACHLogSync();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_2(a1 + 72, v29, v30);
        }

        if (*(*(*(a1 + 72) + 8) + 24) >= *(a1 + 88))
        {
          *a7 = 1;
        }

        else
        {
          [*(a1 + 56) addObject:v16];
          *(*(*(a1 + 80) + 8) + 24) = v33;
          ++*(*(*(a1 + 64) + 8) + 24);
        }
      }

      else
      {
        v31 = ACHLogSync();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(v14, a8);
        }
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
    *a7 = 1;
  }

  return v15;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = ACHLogSync();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    *buf = 138543362;
    v43 = v13;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Earned Instance Entity received sync objects, count: %{public}@", buf, 0xCu);
  }

  if ([v9 count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        v19 = 0;
        do
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [objc_alloc(MEMORY[0x277CE8D38]) initWithCodable:*(*(&v37 + 1) + 8 * v19)];
          if (v20)
          {
            [v14 addObject:v20];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    v21 = [v14 count];
    v22 = ACHLogSync();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (v23)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v14, "count")}];
        *buf = 138543362;
        v43 = v24;
        _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Decoded %{public}@ earned instances from sync.", buf, 0xCu);
      }

      os_unfair_lock_lock(&syncObserverLock);
      WeakRetained = objc_loadWeakRetained(&_syncObserver);

      v26 = ACHLogSync();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (WeakRetained)
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "Earned Instance Entity received sync objects and sync observer is set, passing to sync observer", buf, 2u);
        }

        v28 = objc_loadWeakRetained(&_syncObserver);
        v29 = [v28 earnedInstanceEntityDidReceiveSyncedEarnedInstances:v14 provenance:{objc_msgSend(v10, "syncProvenance")}];

        if (v29)
        {
          goto LABEL_35;
        }

        v30 = ACHLogSync();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [ACHEarnedInstanceEntity receiveSyncObjects:v30 version:? syncStore:? profile:? error:?];
        }
      }

      else
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "Earned Instance Entity received sync objects, but no sync observer is registered yet. Writing directly to database.", buf, 2u);
        }

        v31 = [MEMORY[0x277CBEB98] setWithArray:v14];
        v36 = 0;
        v32 = [objc_opt_class() insertEarnedInstances:v31 provenance:objc_msgSend(v10 useLegacySyncIdentity:"syncProvenance") profile:1 databaseContext:v11 error:{0, &v36}];
        v30 = v36;
        if (v30)
        {
          v33 = ACHLogSync();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            +[ACHEarnedInstanceEntity receiveSyncObjects:version:syncStore:profile:error:];
          }
        }
      }

LABEL_35:
      os_unfair_lock_unlock(&syncObserverLock);
      goto LABEL_36;
    }

    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Received zero decodable earned instances from sync, nothing to do.", buf, 2u);
    }
  }

  else
  {
    v14 = ACHLogSync();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Received zero earned instance sync objects, nothing to do.", buf, 2u);
    }
  }

LABEL_36:

  v34 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3
{
  if (a3 > 7)
  {
    v4 = 3;
  }

  else
  {
    v3 = ACHLogSync();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Earned Instnace got sync protocol version less than supported, returing direction: None", buf, 2u);
    }

    v4 = 0;
  }

  v5 = ACHLogSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Earned Instance got supported sync protocol version, returing direction: Both", v7, 2u);
  }

  return v4;
}

+ (id)codableEarnedInstanceForEarnedInstanceInDatabase:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v10 = ACHEarnedInstancePredicateForKey(v8);
  v11 = [v9 database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__ACHEarnedInstanceEntity_codableEarnedInstanceForEarnedInstanceInDatabase_profile_error___block_invoke;
  v16[3] = &unk_278490F98;
  v20 = a1;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v21;
  [a1 performReadTransactionWithHealthDatabase:v11 error:a5 block:v16];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

uint64_t __90__ACHEarnedInstanceEntity_codableEarnedInstanceForEarnedInstanceInDatabase_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 56) entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:1 encodingOptions:0 authorizationFilter:0];
  v6 = *(a1 + 56);
  v7 = [v5 orderedProperties];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__ACHEarnedInstanceEntity_codableEarnedInstanceForEarnedInstanceInDatabase_profile_error___block_invoke_2;
  v14[3] = &unk_278490F70;
  v10 = *(a1 + 48);
  v15 = v5;
  v16 = v10;
  v11 = v5;
  v12 = [v6 enumerateProperties:v7 withPredicate:v8 healthDatabase:v9 error:a3 enumerationHandler:v14];

  return v12;
}

BOOL __90__ACHEarnedInstanceEntity_codableEarnedInstanceForEarnedInstanceInDatabase_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v13 = 0;
  v8 = [v7 codableRepresentationForPersistentID:a2 row:a4 error:&v13];
  v9 = v13;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
  }

  else
  {
    v10 = ACHLogDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __90__ACHEarnedInstanceEntity_codableEarnedInstanceForEarnedInstanceInDatabase_profile_error___block_invoke_2_cold_1();
    }

    if (*a5)
    {
      v11 = v9;
      *a5 = v9;
    }
  }

  return v8 != 0;
}

void __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error instantiating earned instance during database retrieval: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __99__ACHEarnedInstanceEntity__earnedInstancesWithPredicate_limit_ascendingByEarnedDate_profile_error___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching sync identity for earned instance: %{public}@, %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_insertEarnedInstances:(uint64_t)a1 provenance:(uint64_t *)a2 useLegacySyncIdentity:profile:databaseContext:error:.cold.1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v3, v4, "Error inserting earned instances %{public}@: %{public}@");
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)nextSyncAnchorWithSession:startSyncAnchor:profile:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "Earned Instance Entity returning next sync anchor: %lld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)generateSyncObjectsForSession:(uint64_t)a3 syncAnchorRange:(uint64_t)a4 profile:(uint64_t)a5 messageHandler:(uint64_t)a6 error:(uint64_t)a7 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Earned Instance sync object generation was not successful: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v3, v4, "Error creating codable representation of Earned Instance (%@): %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __102__ACHEarnedInstanceEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 24);
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_221DDC000, log, OS_LOG_TYPE_DEBUG, "codeable encodedByteCount (%lld), accumulated bytes (%lld)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

+ (void)receiveSyncObjects:version:syncStore:profile:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error directly applying earned instance sync objects to database (doesn't fail sync though): %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__ACHEarnedInstanceEntity_codableEarnedInstanceForEarnedInstanceInDatabase_profile_error___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error instantiating codable during database retrieval: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end