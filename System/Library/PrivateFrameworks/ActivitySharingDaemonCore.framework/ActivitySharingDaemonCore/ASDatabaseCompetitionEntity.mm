@interface ASDatabaseCompetitionEntity
+ (BOOL)_insertCompetitions:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)removeAllCompetitionsWithProfile:(id)a3 error:(id *)a4;
+ (BOOL)removeCompetitionsForFriendUUID:(id)a3 type:(int64_t)a4 profile:(id)a5 withError:(id *)a6;
+ (BOOL)saveCompetitions:(id)a3 profile:(id)a4 withError:(id *)a5;
+ (id)_competitionsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)_insertCompetition:(id)a3 database:(id)a4 error:(id *)a5;
+ (id)allDatabaseCompetitionsWithProfile:(id)a3 withError:(id *)a4;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)uniquedColumns;
@end

@implementation ASDatabaseCompetitionEntity

+ (id)uniquedColumns
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"friend_uuid";
  v5[1] = @"competition_uuid";
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
  v15 = [(HDEntityEncoder *)[ASDatabseCompetitionEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (BOOL)saveCompetitions:(id)a3 profile:(id)a4 withError:(id *)a5
{
  v7 = a4;
  v8 = a3;
  LOBYTE(a5) = [objc_opt_class() _insertCompetitions:v8 profile:v7 error:a5];

  return a5;
}

+ (BOOL)removeCompetitionsForFriendUUID:(id)a3 type:(int64_t)a4 profile:(id)a5 withError:(id *)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = [v11 database];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __86__ASDatabaseCompetitionEntity_removeCompetitionsForFriendUUID_type_profile_withError___block_invoke;
  v24[3] = &unk_278C4D960;
  v25 = v10;
  v27 = a4;
  v28 = a1;
  v26 = v11;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86__ASDatabaseCompetitionEntity_removeCompetitionsForFriendUUID_type_profile_withError___block_invoke_2;
  v20[3] = &unk_278C4D988;
  v13 = v25;
  v21 = v13;
  v23 = a4;
  v14 = v26;
  v22 = v14;
  v15 = [a1 performWriteTransactionWithHealthDatabase:v12 error:a6 block:v24 inaccessibilityHandler:v20];

  if ((v15 & 1) == 0)
  {
    ASLoggingInitialize();
    v16 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      v19 = *a6;
      *buf = 138543874;
      v30 = v13;
      v31 = 2048;
      v32 = a4;
      v33 = 2114;
      v34 = v19;
      _os_log_error_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_ERROR, "Error removing competition %{public}@/%ld: %{public}@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __86__ASDatabaseCompetitionEntity_removeCompetitionsForFriendUUID_type_profile_withError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ASCompetitionPredicateForFriendUUIDAndType(*(a1 + 32), *(a1 + 48));
  v6 = *(a1 + 56);
  v7 = objc_opt_class();
  v8 = [*(a1 + 40) database];
  v9 = [v7 deleteEntitiesWithPredicate:v5 healthDatabase:v8 error:a3];

  return v9;
}

uint64_t __86__ASDatabaseCompetitionEntity_removeCompetitionsForFriendUUID_type_profile_withError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[ASDatabaseCompetitionDeletionJournalEntry alloc] initWithFriendUUID:*(a1 + 32) type:*(a1 + 48)];
  v6 = [*(a1 + 40) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (BOOL)removeAllCompetitionsWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__ASDatabaseCompetitionEntity_removeAllCompetitionsWithProfile_error___block_invoke;
  v14[3] = &unk_278C4BEF0;
  v16 = a1;
  v15 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__ASDatabaseCompetitionEntity_removeAllCompetitionsWithProfile_error___block_invoke_2;
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

uint64_t __70__ASDatabaseCompetitionEntity_removeAllCompetitionsWithProfile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277D10B70] truePredicate];
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = [*(a1 + 32) database];
  v9 = [v7 deleteEntitiesWithPredicate:v5 healthDatabase:v8 error:a3];

  return v9;
}

uint64_t __70__ASDatabaseCompetitionEntity_removeAllCompetitionsWithProfile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(ASDatabaseCompetitionBulkDeletionJournalEntry);
  v6 = [*(a1 + 32) database];
  v7 = [v6 addJournalEntry:v5 error:a3];

  return v7;
}

+ (id)allDatabaseCompetitionsWithProfile:(id)a3 withError:(id *)a4
{
  v6 = MEMORY[0x277D10B70];
  v7 = a3;
  v8 = [v6 truePredicate];
  v9 = [a1 _competitionsWithPredicate:v8 profile:v7 error:a4];

  return v9;
}

+ (id)_competitionsWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [v9 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__ASDatabaseCompetitionEntity__competitionsWithPredicate_profile_error___block_invoke;
  v18[3] = &unk_278C4D9D8;
  v19 = v9;
  v20 = v8;
  v21 = v10;
  v22 = a1;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v11 error:a5 block:v18];

  if (a5)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

uint64_t __72__ASDatabaseCompetitionEntity__competitionsWithPredicate_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 56) entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:1 encodingOptions:0 authorizationFilter:0];
  v6 = *(a1 + 56);
  v7 = [v5 orderedProperties];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__ASDatabaseCompetitionEntity__competitionsWithPredicate_profile_error___block_invoke_2;
  v13[3] = &unk_278C4D9B0;
  v14 = v5;
  v15 = *(a1 + 48);
  v10 = v5;
  v11 = [v6 enumerateProperties:v7 withPredicate:v8 healthDatabase:v9 error:a3 enumerationHandler:v13];

  return v11;
}

BOOL __72__ASDatabaseCompetitionEntity__competitionsWithPredicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 objectForPersistentID:a2 row:a4 error:&v14];
  v9 = v14;
  if (v8)
  {
    [*(a1 + 40) addObject:v8];
  }

  else
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      __72__ASDatabaseCompetitionEntity__competitionsWithPredicate_profile_error___block_invoke_2_cold_1(v9, v10);
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

+ (BOOL)_insertCompetitions:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__ASDatabaseCompetitionEntity__insertCompetitions_profile_error___block_invoke;
  v19[3] = &unk_278C4BEF0;
  v21 = a1;
  v20 = v8;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__ASDatabaseCompetitionEntity__insertCompetitions_profile_error___block_invoke_2;
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
      [ASDatabaseCompetitionEntity _insertCompetitions:v11 profile:a5 error:v14];
    }
  }

  return v13;
}

uint64_t __65__ASDatabaseCompetitionEntity__insertCompetitions_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
        v14 = [v13 _insertCompetition:v11 database:v5 error:&v22];
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

uint64_t __65__ASDatabaseCompetitionEntity__insertCompetitions_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v12 = [ASDatabaseCompetitionJournalEntry alloc];
        v13 = [(ASDatabaseCompetitionJournalEntry *)v12 initWithDatabaseCompetition:v11, v18];
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

+ (id)_insertCompetition:(id)a3 database:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = ASAllDatabaseCompetitionKeys();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__ASDatabaseCompetitionEntity__insertCompetition_database_error___block_invoke;
  v14[3] = &unk_278C4BF68;
  v15 = v8;
  v11 = v8;
  v12 = [a1 insertOrReplaceEntity:1 database:v9 properties:v10 error:a5 bindingHandler:v14];

  return v12;
}

void __65__ASDatabaseCompetitionEntity__insertCompetition_database_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCAD78];
  v5 = [*(a1 + 32) friendUUID];
  v6 = [v4 hk_UUIDWithData:v5];
  MEMORY[0x23EF0E4A0](a2, @"friend_uuid", v6);

  v7 = MEMORY[0x277CCAD78];
  v8 = [*(a1 + 32) competition];
  v9 = [v8 uuid];
  v10 = [v7 hk_UUIDWithData:v9];
  MEMORY[0x23EF0E4A0](a2, @"competition_uuid", v10);

  MEMORY[0x23EF0E490](a2, @"competition_type", [*(a1 + 32) type]);
  v11 = [*(a1 + 32) competition];
  MEMORY[0x23EF0E490](a2, @"current_cache_index", [v11 currentCacheIndex]);

  v12 = [*(a1 + 32) competition];
  MEMORY[0x23EF0E490](a2, @"last_pushed_cache_index", [v12 currentCacheIndex]);

  v34 = objc_alloc_init(MEMORY[0x277CE9088]);
  v13 = [*(a1 + 32) competition];
  v14 = [v13 scores];
  v15 = [*(a1 + 32) competition];
  [v34 setScores:v14 count:{objc_msgSend(v15, "scoresCount")}];

  v16 = objc_alloc_init(MEMORY[0x277CE9088]);
  v17 = [*(a1 + 32) competition];
  v18 = [v17 opponentScores];
  v19 = [*(a1 + 32) competition];
  [v16 setScores:v18 count:{objc_msgSend(v19, "opponentScoresCount")}];

  v20 = [v34 data];
  MEMORY[0x23EF0E480](a2, @"scores", v20);

  v21 = [v16 data];
  MEMORY[0x23EF0E480](a2, @"opponent_scores", v21);

  v22 = [*(a1 + 32) competition];
  v23 = [v22 startDateComponents];
  v24 = [v23 data];
  MEMORY[0x23EF0E480](a2, @"start_date_components", v24);

  v25 = [*(a1 + 32) competition];
  v26 = [v25 durationDateComponents];
  v27 = [v26 data];
  MEMORY[0x23EF0E480](a2, @"duration_date_components", v27);

  v28 = objc_alloc_init(MEMORY[0x277CE9080]);
  v29 = [*(a1 + 32) competition];
  v30 = [v29 preferredVictoryBadgeStyles];
  v31 = [*(a1 + 32) competition];
  [v28 setStyles:v30 count:{objc_msgSend(v31, "preferredVictoryBadgeStylesCount")}];

  v32 = [v28 data];
  MEMORY[0x23EF0E480](a2, @"preferred_victory_badge_styles", v32);

  v33 = [*(a1 + 32) competition];
  MEMORY[0x23EF0E490](a2, @"maximum_points_per_day", [v33 maximumNumberOfPointsPerDay]);
}

void __72__ASDatabaseCompetitionEntity__competitionsWithPredicate_profile_error___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23E5E3000, a2, OS_LOG_TYPE_ERROR, "Error instantiating database competitions during database retrieval: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_insertCompetitions:(uint64_t)a1 profile:(void *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_3_0(&dword_23E5E3000, a2, a3, "Error inserting competitions %{public}@: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end