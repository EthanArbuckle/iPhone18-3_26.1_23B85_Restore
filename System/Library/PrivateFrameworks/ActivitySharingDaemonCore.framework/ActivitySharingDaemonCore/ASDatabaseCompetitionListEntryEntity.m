@interface ASDatabaseCompetitionListEntryEntity
+ (BOOL)_insertCompetitionLists:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)enumerateAllCompetitionListsWithProfile:(id)a3 error:(id *)a4 handler:(id)a5;
+ (BOOL)removeAllCompetitionListsWithProfile:(id)a3 error:(id *)a4;
+ (BOOL)saveCompetitionList:(id)a3 profile:(id)a4 withError:(id *)a5;
+ (id)_insertCompetitionList:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)uniquedColumns;
@end

@implementation ASDatabaseCompetitionListEntryEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"friend_uuid";
  v5[1] = @"type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[ASDatabaseCompetitionListEntryEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (BOOL)saveCompetitionList:(id)a3 profile:(id)a4 withError:(id *)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_class();
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  LOBYTE(a5) = [v9 _insertCompetitionLists:v10 profile:v7 error:a5];
  v11 = *MEMORY[0x277D85DE8];
  return a5;
}

+ (BOOL)enumerateAllCompetitionListsWithProfile:(id)a3 error:(id *)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke;
  v14[3] = &unk_278C4BEC8;
  v16 = v9;
  v17 = a1;
  v15 = v8;
  v11 = v9;
  v12 = v8;
  LOBYTE(a4) = [a1 performReadTransactionWithHealthDatabase:v10 error:a4 block:v14];

  return a4;
}

uint64_t __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:v5];
  v8 = [*(a1 + 48) entityEncoderForProfile:*(a1 + 32) transaction:v6 purpose:1 encodingOptions:0 authorizationFilter:0];

  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277D10B70] truePredicate];
  v11 = [v9 queryWithDatabase:v7 predicate:v10];

  v12 = [v8 orderedProperties];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2;
  v16[3] = &unk_278C4BEA0;
  v17 = v8;
  v18 = *(a1 + 40);
  v13 = v8;
  v14 = [v11 enumeratePersistentIDsAndProperties:v12 error:a3 enumerationHandler:v16];

  return v14;
}

BOOL __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 objectForPersistentID:a2 row:a4 error:&v14];
  v9 = v14;
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2_cold_1(v9, v10);
    }

    v11 = v9;
    if (v11)
    {
      if (a5)
      {
        v12 = v11;
        *a5 = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v8 != 0;
}

+ (BOOL)removeAllCompetitionListsWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke;
  v14[3] = &unk_278C4BEF0;
  v16 = a1;
  v15 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke_2;
  v12[3] = &unk_278C4BF18;
  v8 = v15;
  v13 = v8;
  v9 = [a1 performWriteTransactionWithHealthDatabase:v7 error:a4 block:v14 inaccessibilityHandler:v12];

  if ((v9 & 1) == 0)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      [ASDatabaseCompetitionListEntryEntity removeAllCompetitionListsWithProfile:a4 error:v10];
    }
  }

  return v9;
}

uint64_t __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277D10B70] truePredicate];
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = [*(a1 + 32) database];
  v9 = [v7 deleteEntitiesWithPredicate:v5 healthDatabase:v8 error:a3];

  return v9;
}

uint64_t __83__ASDatabaseCompetitionListEntryEntity_removeAllCompetitionListsWithProfile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(ASDatabaeCompetitionListEntryBulkDeletionJournalEntry);
  v6 = [*(a1 + 32) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)_insertCompetitionLists:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke;
  v19[3] = &unk_278C4BEF0;
  v21 = a1;
  v20 = v8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke_2;
  v16[3] = &unk_278C4BF40;
  v11 = v20;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = [a1 performWriteTransactionWithHealthDatabase:v10 error:a5 block:v19 inaccessibilityHandler:v16];

  if ((v13 & 1) == 0)
  {
    ASLoggingInitialize();
    v14 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      [ASDatabaseCompetitionListEntryEntity _insertCompetitionLists:v11 profile:a5 error:v14];
    }
  }

  return v13;
}

uint64_t __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 40)];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = *(a1 + 40);
        v13 = objc_opt_class();
        v22 = 0;
        v14 = [v13 _insertCompetitionList:v11 database:v5 error:&v22];
        v15 = v22;
        v16 = v15;
        if (!v14)
        {
          v18 = v15;
          if (v18)
          {
            if (a3)
            {
              v19 = v18;
              *a3 = v18;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v17 = 0;
          goto LABEL_15;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionLists_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v12 = [ASDatabaseCompetitionListEntryJournalEntry alloc];
        v13 = [(ASDatabaseCompetitionListEntryJournalEntry *)v12 initWithCompetitionList:v11, v18];
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

+ (id)_insertCompetitionList:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = ASAllDatabaseCompetitionListEntryKeys();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionList_database_error___block_invoke;
  v14[3] = &unk_278C4BF68;
  v15 = v8;
  v11 = v8;
  v12 = [a1 insertOrReplaceEntity:1 database:v9 properties:v10 error:a5 bindingHandler:v14];

  return v12;
}

void __78__ASDatabaseCompetitionListEntryEntity__insertCompetitionList_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCAD78];
  v5 = [*(a1 + 32) friendUUID];
  v6 = [v4 hk_UUIDWithData:v5];
  MEMORY[0x23EF0E4A0](a2, @"friend_uuid", v6);

  MEMORY[0x23EF0E490](a2, @"type", [*(a1 + 32) type]);
  v7 = [*(a1 + 32) systemFieldsOnlyRecord];
  MEMORY[0x23EF0E480](a2, @"system_fields", v7);

  [*(a1 + 32) owner];

  JUMPOUT(0x23EF0E490);
}

void __94__ASDatabaseCompetitionListEntryEntity_enumerateAllCompetitionListsWithProfile_error_handler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "Error instantiating database competition lists during database retrieval: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)removeAllCompetitionListsWithProfile:(uint64_t *)a1 error:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "Error removing competitions: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_insertCompetitionLists:(uint64_t)a1 profile:(void *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, a2, a3, "Error inserting competition lists %{public}@: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end