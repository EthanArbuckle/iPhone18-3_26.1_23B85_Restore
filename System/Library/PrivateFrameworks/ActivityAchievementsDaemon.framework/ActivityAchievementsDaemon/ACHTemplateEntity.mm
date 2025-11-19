@interface ACHTemplateEntity
+ (ACHTemplateEntitySyncedTemplatesObserver)syncedTemplatesObserver;
+ (BOOL)_insertTemplate:(id)a3 provenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 error:(id *)a7;
+ (BOOL)_insertTemplates:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 profile:(id)a6 databaseContext:(id)a7 error:(id *)a8;
+ (BOOL)_journalTemplates:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 action:(int64_t)a6 profile:(id)a7 error:(id *)a8;
+ (BOOL)_removeTemplateWithPersistentID:(int64_t)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)_removeTemplates:(id)a3 profile:(id)a4 error:(id *)a5;
+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7;
+ (HDSyncEntityIdentifier)syncEntityIdentifier;
+ (id)_templateWithUniqueName:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (id)_templatesWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)allTemplatesWithProfile:(id)a3 error:(id *)a4;
+ (id)codableTemplateForTemplateInDatabase:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)decodeSyncObjectWithData:(id)a3;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (int64_t)nextSyncAnchorWithSession:(id)a3 startSyncAnchor:(int64_t)a4 profile:(id)a5 error:(id *)a6;
+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7;
+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3;
+ (void)setSyncedTemplatesObserver:(id)a3;
@end

@implementation ACHTemplateEntity

+ (void)setSyncedTemplatesObserver:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&syncObserverLock_0);
  objc_storeWeak(&_syncObserver_0, v3);

  os_unfair_lock_unlock(&syncObserverLock_0);
}

+ (ACHTemplateEntitySyncedTemplatesObserver)syncedTemplatesObserver
{
  os_unfair_lock_lock(&syncObserverLock_0);
  WeakRetained = objc_loadWeakRetained(&_syncObserver_0);
  os_unfair_lock_unlock(&syncObserverLock_0);

  return WeakRetained;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[ACHTemplateEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

+ (id)allTemplatesWithProfile:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277D10B70];
  v7 = a3;
  v8 = [v6 truePredicate];
  v9 = [a1 _templatesWithPredicate:v8 profile:v7 error:a4];

  v10 = ACHSortedTemplates();

  return v10;
}

+ (BOOL)_insertTemplates:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 profile:(id)a6 databaseContext:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (!v16)
  {
    v16 = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  }

  v17 = [v15 database];
  v18 = [v16 copyForWritingProtectedData];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __101__ACHTemplateEntity__insertTemplates_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke;
  v29[3] = &unk_278492748;
  v32 = a1;
  v30 = v14;
  v34 = a5;
  v31 = v15;
  v33 = a4;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __101__ACHTemplateEntity__insertTemplates_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke_434;
  v23[3] = &unk_278492770;
  v26 = a1;
  v27 = a4;
  v28 = a5;
  v24 = v30;
  v25 = v31;
  v19 = v31;
  v20 = v30;
  v21 = [v17 performTransactionWithContext:v18 error:a8 block:v29 inaccessibilityHandler:v23];

  return v21;
}

uint64_t __101__ACHTemplateEntity__insertTemplates_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke(uint64_t a1, void *a2, NSObject **a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v42 = [v5 databaseForEntityClass:*(a1 + 48)];
  v43 = a1;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v47;
    *&v8 = 138543362;
    v39 = v8;
    v41 = v6;
    v40 = v5;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v47 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v46 + 1) + 8 * v11);
      if ([v12 minimumEngineVersion] < 0x10)
      {
        if ([v12 _isValid])
        {
          v19 = *(v43 + 48);
          v20 = [v12 uniqueName];
          v13 = [v19 _templateWithUniqueName:v20 profile:*(v43 + 40) transaction:v5 error:a3];

          if (v13)
          {
            v21 = [v13 version];
            if (v21 < [v12 version])
            {
              v22 = *(v43 + 48);
              v23 = [v13 key];
              v45 = 0;
              LODWORD(v22) = [v22 _removeTemplateWithPersistentID:v23 database:v42 error:&v45];
              v24 = v45;
              if (!v22)
              {
                v25 = v24;
                if (v25)
                {
                  if (a3)
                  {
                    v34 = v25;
                    *a3 = v25;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                v32 = ACHLogDatabase();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  __101__ACHTemplateEntity__insertTemplates_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke_cold_1(v12, v25, v32);
                }

                goto LABEL_35;
              }
            }
          }

          v25 = ACHTemplateSyncIdentityFromTemplate(v12, *(v43 + 64), *(v43 + 40), v5);
          v27 = *(v43 + 48);
          v26 = *(v43 + 56);
          v28 = [v25 entity];
          v29 = [v28 persistentID];
          v44 = 0;
          LOBYTE(v26) = [v27 _insertTemplate:v12 provenance:v26 syncIdentity:v29 database:v42 error:&v44];
          v30 = v44;

          if ((v26 & 1) == 0)
          {
            v32 = v30;
            if (v32)
            {
              if (a3)
              {
                v33 = v32;
                *a3 = v32;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v35 = ACHLogDatabase();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v38 = [v12 uniqueName];
              *buf = 138543618;
              v51 = v38;
              v52 = 2114;
              v53 = v32;
              _os_log_error_impl(&dword_221DDC000, v35, OS_LOG_TYPE_ERROR, "Error inserting template '%{public}@': %{public}@", buf, 0x16u);
            }

LABEL_35:
            v31 = 0;
            v5 = v40;
            v6 = v41;
            goto LABEL_36;
          }

          v5 = v40;
          v6 = v41;
        }

        else
        {
          v13 = ACHLogDatabase();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 uniqueName];
            *buf = v39;
            v51 = v15;
            v16 = v13;
            v17 = "Not inserting invalid template: %{public}@";
            v18 = 12;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v13 = ACHLogDatabase();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 minimumEngineVersion];
          v15 = [v12 uniqueName];
          *buf = 134218242;
          v51 = v14;
          v52 = 2114;
          v53 = v15;
          v16 = v13;
          v17 = "Not inserting template with higher minimum engine version (%ld): %{public}@";
          v18 = 22;
LABEL_18:
          _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v31 = 1;
LABEL_36:

  v36 = *MEMORY[0x277D85DE8];
  return v31;
}

+ (BOOL)_insertTemplate:(id)a3 provenance:(int64_t)a4 syncIdentity:(int64_t)a5 database:(id)a6 error:(id *)a7
{
  v12 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__ACHTemplateEntity__insertTemplate_provenance_syncIdentity_database_error___block_invoke;
  v19[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v19[4] = a1;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__ACHTemplateEntity__insertTemplate_provenance_syncIdentity_database_error___block_invoke_2;
  v15[3] = &unk_2784927B8;
  v16 = v12;
  v17 = a4;
  v18 = a5;
  v13 = v12;
  LOBYTE(a7) = [a6 executeCachedStatementForKey:&_insertTemplate_provenance_syncIdentity_database_error__insertKey error:a7 SQLGenerator:v19 bindingHandler:v15 enumerationHandler:0];

  return a7;
}

id __76__ACHTemplateEntity__insertTemplate_provenance_syncIdentity_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT OR IGNORE INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v2, @"unique_name", @"version", @"minimum_engine_version", @"created_date", @"creator_device", @"source_name", @"predicate", @"grace_predicate", @"value_expression", @"grace_value_expression", @"progress_expression", @"grace_progress_expression", @"goal_expression", @"grace_goal_expression", @"triggers", @"earn_limit", @"visibility_predicate", @"grace_visibility_predicate", @"visibility_start_date", @"visibility_end_date", @"availability_predicate", @"availability_start_date", @"availability_end_date", @"available_country_codes", @"alertability_predicate", @"alert_dates", @"duplicateremoval_strategy", @"duplicateremoval_calendar_unit", @"earn_date", @"display_order", @"displays_earned_instance_count", @"canonical_unit", @"sync_provenance", @"available_suffixes", @"daily_target", @"daily_target_canonical_unit", @"sync_identity", @"prerequisite_template_name"];

  return v3;
}

void __76__ACHTemplateEntity__insertTemplate_provenance_syncIdentity_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) uniqueName];
  HDSQLiteBindStringToStatement();

  sqlite3_bind_int64(a2, 2, [*(a1 + 32) version]);
  sqlite3_bind_int64(a2, 3, [*(a1 + 32) minimumEngineVersion]);
  v5 = [*(a1 + 32) createdDate];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 5, [*(a1 + 32) creatorDevice]);
  v6 = [*(a1 + 32) sourceName];
  HDSQLiteBindFoundationValueToStatement();

  v7 = [*(a1 + 32) predicate];
  HDSQLiteBindFoundationValueToStatement();

  v8 = [*(a1 + 32) gracePredicate];
  HDSQLiteBindFoundationValueToStatement();

  v9 = [*(a1 + 32) valueExpression];
  HDSQLiteBindFoundationValueToStatement();

  v10 = [*(a1 + 32) graceValueExpression];
  HDSQLiteBindFoundationValueToStatement();

  v11 = [*(a1 + 32) progressExpression];
  HDSQLiteBindFoundationValueToStatement();

  v12 = [*(a1 + 32) graceProgressExpression];
  HDSQLiteBindFoundationValueToStatement();

  v13 = [*(a1 + 32) goalExpression];
  HDSQLiteBindFoundationValueToStatement();

  v14 = [*(a1 + 32) graceGoalExpression];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 15, [*(a1 + 32) triggers]);
  sqlite3_bind_int64(a2, 16, [*(a1 + 32) earnLimit]);
  v15 = [*(a1 + 32) visibilityPredicate];
  HDSQLiteBindFoundationValueToStatement();

  v16 = [*(a1 + 32) graceVisibilityPredicate];
  HDSQLiteBindFoundationValueToStatement();

  v17 = [*(a1 + 32) visibilityStart];
  v18 = ACHYearMonthDayStringFromDateComponents();
  HDSQLiteBindFoundationValueToStatement();

  v19 = [*(a1 + 32) visibilityEnd];
  v20 = ACHYearMonthDayStringFromDateComponents();
  HDSQLiteBindFoundationValueToStatement();

  v21 = [*(a1 + 32) availabilityPredicate];
  HDSQLiteBindFoundationValueToStatement();

  v22 = [*(a1 + 32) availabilityStart];
  v23 = ACHYearMonthDayStringFromDateComponents();
  HDSQLiteBindFoundationValueToStatement();

  v24 = [*(a1 + 32) availabilityEnd];
  v25 = ACHYearMonthDayStringFromDateComponents();
  HDSQLiteBindFoundationValueToStatement();

  v26 = [*(a1 + 32) availableCountryCodes];
  v27 = ACHTemplateAvailableCountryCodesStringFromStrings();
  HDSQLiteBindFoundationValueToStatement();

  v28 = [*(a1 + 32) alertabilityPredicate];
  HDSQLiteBindFoundationValueToStatement();

  v29 = [*(a1 + 32) alertDates];
  v30 = ACHTemplateAlertDatesStringFromDates();
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 27, [*(a1 + 32) duplicateRemovalStrategy]);
  sqlite3_bind_int64(a2, 28, [*(a1 + 32) duplicateRemovalCalendarUnit]);
  sqlite3_bind_int64(a2, 29, [*(a1 + 32) earnDateStrategy]);
  sqlite3_bind_int64(a2, 30, [*(a1 + 32) displayOrder]);
  sqlite3_bind_int(a2, 31, [*(a1 + 32) displaysEarnedInstanceCount]);
  v31 = [*(a1 + 32) canonicalUnit];
  v32 = [v31 unitString];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 33, *(a1 + 40));
  v33 = [*(a1 + 32) availableSuffixes];
  v34 = ACHTemplateAvailableSuffixesStringFromStrings();
  HDSQLiteBindFoundationValueToStatement();

  [*(a1 + 32) dailyTarget];
  sqlite3_bind_double(a2, 35, v35);
  v36 = [*(a1 + 32) dailyTargetCanonicalUnit];
  v37 = [v36 unitString];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 37, *(a1 + 48));
  v38 = [*(a1 + 32) prerequisiteTemplateName];
  HDSQLiteBindFoundationValueToStatement();
}

+ (BOOL)_removeTemplateWithPersistentID:(int64_t)a3 database:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [(HDSQLiteEntity *)[ACHTemplateEntity alloc] initWithPersistentID:a3];
  LOBYTE(a5) = [(HDSQLiteEntity *)v8 deleteFromDatabase:v7 error:a5];

  return a5;
}

+ (BOOL)_removeTemplates:(id)a3 profile:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 count] == 1)
  {
    v10 = [v8 firstObject];
    v11 = [v10 uniqueName];
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:@"unique_name" equalToValue:v11];
  }

  else
  {
    v30 = a1;
    v31 = a5;
    v13 = v8;
    v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        v19 = 0;
        v20 = v14;
        do
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v40 + 1) + 8 * v19) uniqueName];
          v22 = [MEMORY[0x277D10B18] predicateWithProperty:@"unique_name" equalToValue:v21];

          v14 = [v20 arrayByAddingObject:v22];

          ++v19;
          v20 = v14;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v17);
    }

    v12 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v14];

    a1 = v30;
    a5 = v31;
  }

  v23 = [v9 database];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __52__ACHTemplateEntity__removeTemplates_profile_error___block_invoke;
  v36[3] = &unk_278490E08;
  v39 = a1;
  v37 = v12;
  v38 = v9;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__ACHTemplateEntity__removeTemplates_profile_error___block_invoke_2;
  v32[3] = &unk_2784927E0;
  v34 = v38;
  v35 = a1;
  v33 = v8;
  v24 = v38;
  v25 = v8;
  v26 = v12;
  v27 = [a1 performWriteTransactionWithHealthDatabase:v23 error:a5 block:v36 inaccessibilityHandler:v32];

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t __52__ACHTemplateEntity__removeTemplates_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 40) database];
  v7 = [v5 deleteEntitiesWithPredicate:v4 healthDatabase:v6 error:a3];

  return v7;
}

+ (BOOL)_journalTemplates:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 action:(int64_t)a6 profile:(id)a7 error:(id *)a8
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __93__ACHTemplateEntity__journalTemplates_provenance_useLegacySyncIdentity_action_profile_error___block_invoke;
  v14[3] = &__block_descriptor_49_e46___ACHTemplateJournalEntry_16__0__ACHTemplate_8l;
  v15 = a5;
  v14[4] = a4;
  v14[5] = a6;
  v10 = a7;
  v11 = [a3 hk_map:v14];
  v12 = [v10 database];

  LOBYTE(a8) = [v12 addJournalEntries:v11 error:a8];
  return a8;
}

ACHTemplateJournalEntry *__93__ACHTemplateEntity__journalTemplates_provenance_useLegacySyncIdentity_action_profile_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ACHTemplateJournalEntry alloc] initWithTemplate:v3 provenance:*(a1 + 32) useLegacySyncIdentity:*(a1 + 48) action:*(a1 + 40)];

  return v4;
}

+ (id)_templateWithUniqueName:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"unique_name" equalToValue:v10];
  v14 = [a1 entityEncoderForProfile:v11 transaction:v12 purpose:1 encodingOptions:0 authorizationFilter:0];
  v15 = [v12 databaseForEntityClass:objc_opt_class()];
  v16 = [a1 queryWithDatabase:v15 predicate:v13];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__24;
  v31 = __Block_byref_object_dispose__24;
  v32 = 0;
  v17 = [v14 orderedProperties];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__ACHTemplateEntity__templateWithUniqueName_profile_transaction_error___block_invoke;
  v23[3] = &unk_278492828;
  v26 = &v27;
  v18 = v14;
  v24 = v18;
  v19 = v10;
  v25 = v19;
  LODWORD(a6) = [v16 enumeratePersistentIDsAndProperties:v17 error:a6 enumerationHandler:v23];

  if (a6)
  {
    v20 = v28[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  _Block_object_dispose(&v27, 8);

  return v21;
}

BOOL __71__ACHTemplateEntity__templateWithUniqueName_profile_transaction_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v17 = 0;
  v8 = [v7 objectForPersistentID:a2 row:a4 error:&v17];
  v9 = v17;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = *(*(*(a1 + 48) + 8) + 40);
  if (!v12)
  {
    v13 = v9;
    if (v13)
    {
      if (a5)
      {
        v14 = v13;
        *a5 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = ACHLogDatabase();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __71__ACHTemplateEntity__templateWithUniqueName_profile_transaction_error___block_invoke_cold_1(a1, v13, v15);
    }
  }

  return v12 != 0;
}

+ (id)_templatesWithPredicate:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = [v9 database];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke;
  v20 = &unk_278492878;
  v24 = a1;
  v21 = v9;
  v22 = v8;
  v12 = v10;
  v23 = v12;
  v13 = v8;
  v14 = v9;
  LODWORD(a5) = [a1 performReadTransactionWithHealthDatabase:v11 error:a5 block:&v17];

  if (a5)
  {
    v15 = [v12 copy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 56) entityEncoderForProfile:*(a1 + 32) transaction:v5 purpose:1 encodingOptions:0 authorizationFilter:0];
  v7 = *(a1 + 56);
  v8 = [v6 orderedProperties];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke_2;
  v15[3] = &unk_278492850;
  v16 = v6;
  v17 = *(a1 + 32);
  v18 = v5;
  v19 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = [v7 enumerateProperties:v8 withPredicate:v9 healthDatabase:v10 error:a3 enumerationHandler:v15];

  return v13;
}

uint64_t __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v23 = 0;
  v8 = [v7 objectForPersistentID:a2 row:? error:?];
  v9 = v23;
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = [*(a1 + 40) syncIdentityManager];
  v12 = *(a1 + 48);
  v22 = v9;
  v13 = [v11 identityForEntityID:v10 transaction:v12 error:&v22];
  v14 = v22;

  if (!v13)
  {
    v16 = ACHLogDatabase();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke_2_cold_2();
    }

    goto LABEL_15;
  }

  v15 = [v13 identity];
  v16 = achSyncIdentity(v15);

  if (v16)
  {
    [v8 setSyncIdentity:v16];
  }

  if (!v8)
  {
    v18 = v14;
    if (v18)
    {
      if (a5)
      {
        v19 = v18;
        *a5 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = ACHLogDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke_2_cold_1();
    }

LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  [*(a1 + 56) addObject:v8];
  v17 = 1;
LABEL_16:

  return v17;
}

+ (HDSyncEntityIdentifier)syncEntityIdentifier
{
  v2 = objc_alloc(MEMORY[0x277D108D8]);
  v3 = [v2 initWithEntityIdentifier:*MEMORY[0x277CE8C60] schemaIdentifier:*MEMORY[0x277CE8AA8]];

  return v3;
}

+ (id)decodeSyncObjectWithData:(id)a3
{
  v3 = MEMORY[0x277CE8D18];
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
    +[ACHTemplateEntity nextSyncAnchorWithSession:startSyncAnchor:profile:error:];
  }

  return v12;
}

+ (BOOL)generateSyncObjectsForSession:(id)a3 syncAnchorRange:(HDSyncAnchorRange)a4 profile:(id)a5 messageHandler:(id)a6 error:(id *)a7
{
  var1 = a4.var1;
  var0 = a4.var0;
  v51 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = -1;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v17 = [v13 maxEncodedBytesPerCodableChangeForSyncEntityClass:a1];
  v18 = ACHLogSync();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v46 = v13;
    v47 = 2048;
    v48 = var0;
    v49 = 2048;
    v50 = var1;
    _os_log_debug_impl(&dword_221DDC000, v18, OS_LOG_TYPE_DEBUG, "Template Entity generating sync objects for session (%@), Anchor Range Start (%lld), Anchor Range End (%lld)", buf, 0x20u);
  }

  v19 = [v14 database];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __96__ACHTemplateEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke;
  v30[3] = &unk_2784928C8;
  v36 = a1;
  v20 = v14;
  v31 = v20;
  v21 = v13;
  v37 = var0;
  v38 = var1;
  v32 = v21;
  v34 = &v41;
  v22 = v16;
  v33 = v22;
  v35 = v40;
  v39 = v17;
  v23 = [a1 performReadTransactionWithHealthDatabase:v19 error:a7 block:v30];

  if (v23)
  {
    v24 = ACHLogSync();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
      *buf = 138543362;
      v46 = v25;
      _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Template Entity sync generated (%{public}@} objects for sync.", buf, 0xCu);
    }

    v26 = [v22 allObjects];
    v27 = [v15 sendCodableChange:v26 version:0x100000000 resultAnchor:v42[3] sequence:0 done:1 error:a7];
  }

  else
  {
    v27 = 0;
  }

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v41, 8);

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t __96__ACHTemplateEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [*(a1 + 72) entityEncoderForProfile:*(a1 + 32) transaction:v4 purpose:0 encodingOptions:0 authorizationFilter:0];
  v6 = *(a1 + 72);
  v7 = [v5 orderedProperties];
  v8 = *(*(a1 + 56) + 8) + 24;
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__ACHTemplateEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2;
  v20[3] = &unk_2784928A0;
  v21 = v5;
  v22 = *(a1 + 32);
  v23 = v4;
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v24 = v11;
  v25 = v12;
  v26 = *(a1 + 96);
  v14 = *(a1 + 80);
  v13 = *(a1 + 88);
  v15 = v4;
  v16 = v5;
  v17 = [v6 enumerateEntitiesForSyncWithProperties:v7 predicate:0 session:v9 syncAnchorRange:v14 limit:v13 lastSyncAnchor:0 healthDatabase:v8 error:v10 block:{a3, v20}];

  return v17;
}

BOOL __96__ACHTemplateEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t *a8)
{
  v12 = a2;
  v13 = [*(a1 + 32) codableRepresentationForPersistentID:objc_msgSend(v12 row:"persistentID") error:{a4, a8}];
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = [*(a1 + 40) syncIdentityManager];
  v16 = [v15 identityForEntityID:v14 transaction:*(a1 + 48) error:a8];

  if (v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CE8D10]);
    v18 = [v16 identity];
    v19 = [v18 hardwareIdentifier];
    v20 = [v19 hk_dataForUUIDBytes];
    [v17 setHardwareIdentifier:v20];

    v21 = [v16 identity];
    v22 = [v21 databaseIdentifier];
    v23 = [v22 hk_dataForUUIDBytes];
    [v17 setDatabaseIdentifier:v23];

    v24 = [v16 identity];
    v25 = [v24 instanceDiscriminator];
    [v17 setInstanceDiscriminator:v25];

    [v13 setSyncIdentity:v17];
    v26 = v13 != 0;
    if (v13)
    {
      [*(a1 + 56) addObject:v13];
      *(*(*(a1 + 64) + 8) + 24) += [v13 encodedByteCount];
      if (*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 72))
      {
        *a7 = 1;
      }
    }

    else
    {
      v27 = ACHLogSync();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __96__ACHTemplateEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(v12, a8);
      }
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (int64_t)receiveSyncObjects:(id)a3 version:(id)a4 syncStore:(id)a5 profile:(id)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = ACHLogSync();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    *buf = 138543362;
    v40 = v15;
    _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "Template Entity received sync objects, count: %{public}@", buf, 0xCu);
  }

  if (![v11 count])
  {
    v16 = ACHLogSync();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Received zero template sync objects, nothing to do.", buf, 2u);
    }

    goto LABEL_22;
  }

  v33 = a1;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [objc_alloc(MEMORY[0x277CE8D50]) initWithCodable:*(*(&v34 + 1) + 8 * i)];
        if (v22)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

  v23 = [v16 count];
  v24 = ACHLogSync();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (!v23)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Received zero decodable templates from sync, nothing to do.", buf, 2u);
    }

LABEL_22:
    v30 = 0;
    goto LABEL_23;
  }

  if (v25)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v16, "count")}];
    *buf = 138543362;
    v40 = v26;
    _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Decoded %{public}@ templates from sync.", buf, 0xCu);
  }

  v27 = [v12 syncProvenance];
  v28 = [MEMORY[0x277D106B8] contextForWritingProtectedData];
  v29 = [v33 _insertTemplates:v16 provenance:v27 useLegacySyncIdentity:1 profile:v13 databaseContext:v28 error:a7];

  notify_post([*MEMORY[0x277CE8B10] UTF8String]);
  v30 = v29 ^ 1u;
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (unint64_t)supportedNanoSyncDirectionsForProtocolVersion:(int)a3
{
  if (a3 >= 8)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (id)codableTemplateForTemplateInDatabase:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__24;
  v26 = __Block_byref_object_dispose__24;
  v27 = 0;
  v10 = [v8 uniqueName];
  v11 = [MEMORY[0x277D10B18] predicateWithProperty:@"unique_name" equalToValue:v10];

  v12 = [v9 database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__ACHTemplateEntity_codableTemplateForTemplateInDatabase_profile_error___block_invoke;
  v17[3] = &unk_278490F98;
  v21 = a1;
  v13 = v9;
  v18 = v13;
  v14 = v11;
  v19 = v14;
  v20 = &v22;
  [a1 performReadTransactionWithHealthDatabase:v12 error:a5 block:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

uint64_t __72__ACHTemplateEntity_codableTemplateForTemplateInDatabase_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 56) entityEncoderForProfile:*(a1 + 32) transaction:a2 purpose:1 encodingOptions:0 authorizationFilter:0];
  v6 = *(a1 + 56);
  v7 = [v5 orderedProperties];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__ACHTemplateEntity_codableTemplateForTemplateInDatabase_profile_error___block_invoke_2;
  v14[3] = &unk_278490F70;
  v10 = *(a1 + 48);
  v15 = v5;
  v16 = v10;
  v11 = v5;
  v12 = [v6 enumerateProperties:v7 withPredicate:v8 healthDatabase:v9 error:a3 enumerationHandler:v14];

  return v12;
}

BOOL __72__ACHTemplateEntity_codableTemplateForTemplateInDatabase_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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
      __72__ACHTemplateEntity_codableTemplateForTemplateInDatabase_profile_error___block_invoke_2_cold_1();
    }

    if (*a5)
    {
      v11 = v9;
      *a5 = v9;
    }
  }

  return v8 != 0;
}

void __101__ACHTemplateEntity__insertTemplates_provenance_useLegacySyncIdentity_profile_databaseContext_error___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 uniqueName];
  OUTLINED_FUNCTION_1_3();
  v8 = a2;
  _os_log_error_impl(&dword_221DDC000, a3, OS_LOG_TYPE_ERROR, "Error removing existing template '%{public}@': %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __71__ACHTemplateEntity__templateWithUniqueName_profile_transaction_error___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 40);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, a2, a3, "Error instantiating template for unique name %{public}@ during database retrieval: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Error instantiating template during database retrieval: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __59__ACHTemplateEntity__templatesWithPredicate_profile_error___block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error fetching sync identity for template: %{public}@, %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)nextSyncAnchorWithSession:startSyncAnchor:profile:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, v0, OS_LOG_TYPE_DEBUG, "Template Entity returning next sync anchor: %lld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __96__ACHTemplateEntity_generateSyncObjectsForSession_syncAnchorRange_profile_messageHandler_error___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v3, v4, "Error creating codable representation of Template (%@): %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __72__ACHTemplateEntity_codableTemplateForTemplateInDatabase_profile_error___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Error instantiating codable during database retrieval: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end