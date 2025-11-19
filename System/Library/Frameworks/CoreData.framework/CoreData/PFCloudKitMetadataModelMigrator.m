@interface PFCloudKitMetadataModelMigrator
- (PFCloudKitMetadataModelMigrator)initWithStore:(id)a3 metadataContext:(id)a4 databaseScope:(int64_t)a5 metricsClient:(id)a6;
- (uint64_t)addMigrationStatementForAddingAttribute:(_BYTE *)a1 toContext:(uint64_t)a2 inStore:(void *)a3;
- (uint64_t)calculateMigrationStepsWithConnection:(void *)a3 error:;
- (uint64_t)checkAndPerformMigrationIfNecessary:(uint64_t *)a1;
- (uint64_t)checkForCorruptedRecordMetadataInStore:(void *)a3 inManagedObjectContext:(void *)a4 error:;
- (uint64_t)checkForOrphanedMirroredRelationshipsInStore:(void *)a3 inManagedObjectContext:(void *)a4 error:;
- (uint64_t)cleanUpAfterClientMigrationWithStore:(void *)a3 andContext:(void *)a4 error:;
- (uint64_t)computeAncillaryEntityPrimaryKeyTableEntriesForStore:(void *)a3 error:;
- (uint64_t)moveBinaryDataFromColumn:(uint64_t)a3 forAttribute:(uint64_t)a4 toMetadataAsset:(uint64_t)a5 byRelationshipNamed:(void *)a6 error:;
- (void)addMigrationStatementForAddingRelationship:(void *)a1 toContext:(uint64_t)a2 inStore:(void *)a3;
- (void)addMigrationStatementToContext:(uint64_t)a1 forRenamingAttributeNamed:(uint64_t)a2 withOldColumnName:(uint64_t)a3 toAttributeName:(uint64_t)a4 onOldSQLEntity:(uint64_t)a5 andCurrentSQLEntity:(id *)a6;
- (void)dealloc;
@end

@implementation PFCloudKitMetadataModelMigrator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitMetadataModelMigrator;
  [(PFCloudKitMetadataModelMigrator *)&v3 dealloc];
}

- (PFCloudKitMetadataModelMigrator)initWithStore:(id)a3 metadataContext:(id)a4 databaseScope:(int64_t)a5 metricsClient:(id)a6
{
  v13.receiver = self;
  v13.super_class = PFCloudKitMetadataModelMigrator;
  v10 = [(PFCloudKitMetadataModelMigrator *)&v13 init];
  if (v10)
  {
    v10->_store = a3;
    v11 = a4;
    v10->_metadataContext = v11;
    [(NSManagedObjectContext *)v11 setTransactionAuthor:@"NSCloudKitMirroringDelegate.migration"];
    v10->_context = objc_alloc_init(PFCloudKitMetadataMigrationContext);
    v10->_databaseScope = a5;
    v10->_metricsClient = a6;
  }

  return v10;
}

uint64_t __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) entityNamed:a2];
  if (a3)
  {
    v8 = *(a3 + 184);
    if (result)
    {
LABEL_3:
      v9 = *(result + 184);
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_4:
  if (v8 != v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (uint64_t)computeAncillaryEntityPrimaryKeyTableEntriesForStore:(void *)a3 error:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __94__PFCloudKitMetadataModelMigrator_computeAncillaryEntityPrimaryKeyTableEntriesForStore_error___block_invoke;
    v12[3] = &unk_1E6EC3818;
    v12[4] = a2;
    v12[5] = &v13;
    v5 = [[NSSQLBlockRequestContext alloc] initWithBlock:v12 context:0 sqlCore:a2];
    [(NSSQLCore *)a2 dispatchRequest:v5 withRetries:0];

    if ((v14[3] & 1) == 0)
    {
      v9 = 0;
      if (v9)
      {
        if (a3)
        {
          *a3 = v9;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v19 = 1024;
          v20 = 1455;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v11 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v19 = 1024;
          v20 = 1455;
          _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v6 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke_8(void *a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v28[0] = 0;
  v30[0] = @"PFCloudKitMetadataFrameworkVersionKey";
  v2 = [+[NSCKMetadataEntry entriesForKeys:onlyFetchingProperties:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry objc_msgSend(MEMORY[0x1E695DEC8]];
  v3 = v28[0];
  if (v28[0])
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 40) = v3;
  }

  else if (v2)
  {
    v5 = [v2 integerValue];
    v6 = *(a1[4] + 24);
    if (v6)
    {
      objc_setProperty_nonatomic(v6, v4, v5, 96);
      v7 = *(a1[4] + 24);
      if (v7)
      {
        v6 = *(v7 + 96);
      }

      else
      {
        v6 = 0;
      }
    }

    v8 = [v6 integerValue];
    v9 = *(a1[4] + 24);
    if (v9 && (*(v9 + 49) = v8 < 940, (v10 = *(a1[4] + 24)) != 0))
    {
      v11 = *(v10 + 96);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 integerValue];
    v13 = *(a1[4] + 24);
    if (v13 && (*(v13 + 53) = v12 < 1028, (v14 = *(a1[4] + 24)) != 0))
    {
      v15 = *(v14 + 96);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 integerValue];
    v17 = *(a1[4] + 24);
    if (v17 && (*(v17 + 55) = v16 < 1244, (v18 = *(a1[4] + 24)) != 0))
    {
      v19 = *(v18 + 96);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 integerValue];
    v21 = *(a1[4] + 24);
    if (v21)
    {
      *(v21 + 56) = v20 < 1336;
    }
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v29 = @"PFCloudKitMetadataModelVersionHashesKey";
    v22 = [+[NSCKMetadataEntry entriesForKeys:onlyFetchingProperties:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry objc_msgSend(MEMORY[0x1E695DEC8]];
    v23 = v28[0];
    if (v28[0])
    {
      *(*(a1[5] + 8) + 24) = 0;
      *(*(a1[6] + 8) + 40) = v23;
    }

    else
    {
      v25 = [v22 transformedValue];
      v26 = *(a1[4] + 24);
      if (v26)
      {
        objc_setProperty_nonatomic(v26, v24, v25, 104);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (uint64_t)calculateMigrationStepsWithConnection:(void *)a3 error:
{
  v407 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v273 = 0;
    goto LABEL_477;
  }

  v368 = 0;
  v369 = &v368;
  v370 = 0x2020000000;
  v371 = 1;
  v362 = 0;
  v363 = &v362;
  v364 = 0x3052000000;
  v365 = __Block_byref_object_copy__50;
  v366 = __Block_byref_object_dispose__50;
  v367 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    if (*(v4 + 50))
    {
      v5 = [a2 adapter];
      v372 = 0u;
      v373 = 0u;
      v374 = 0u;
      v375 = 0u;
      v6 = [&unk_1EF43D888 countByEnumeratingWithState:&v372 objects:buf count:16];
      if (v6)
      {
        v7 = *v373;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v373 != v7)
            {
              objc_enumerationMutation(&unk_1EF43D888);
            }

            v9 = [(NSSQLiteAdapter *)v5 newDropTableStatementForTableNamed:?];
            [*(v4 + 8) addObject:v9];
            *(v4 + 48) = 1;
          }

          v6 = [&unk_1EF43D888 countByEnumeratingWithState:&v372 objects:buf count:16];
        }

        while (v6);
      }

      v4 = *(a1 + 24);
      v358 = 0u;
      v359 = 0u;
      v360 = 0u;
      v361 = 0u;
      if (!v4)
      {
        goto LABEL_487;
      }
    }

    else
    {
      v361 = 0u;
      v360 = 0u;
      v359 = 0u;
      v358 = 0u;
    }

    v10 = *(v4 + 72);
    if (!v10)
    {
LABEL_487:
      v11 = 0;
      goto LABEL_16;
    }

    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
    v361 = 0u;
    v360 = 0u;
    v359 = 0u;
    v358 = 0u;
  }

LABEL_16:
  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v358 objects:v397 count:16];
  if (!v12)
  {
    goto LABEL_475;
  }

  v285 = *v359;
  do
  {
    v291 = 0;
    v286 = v12;
    do
    {
      if (*v359 != v285)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v358 + 1) + 8 * v291);
      context = objc_autoreleasePoolPush();
      v287 = *(v369 + 24);
      if (!*(v369 + 24))
      {
        goto LABEL_169;
      }

      v14 = [v13 tableName];
      if (!a2 || ([(NSSQLiteConnection *)a2 _hasTableWithName:v14 isTemp:0]& 1) == 0)
      {
        [(PFCloudKitMetadataMigrationContext *)*(a1 + 24) addSQLEntityToCreate:v13];
        goto LABEL_169;
      }

      if (!-[NSSQLiteConnection _tableHasRows:](a2, [v13 tableName]))
      {
        v34 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([a2 adapter], objc_msgSend(v13, "tableName"));
        v35 = *(a1 + 24);
        if (v35)
        {
          [*(v35 + 8) addObject:v34];
          *(v35 + 48) = 1;
        }

        goto LABEL_168;
      }

      v15 = [PFCloudKitMetadataMigrationSQLUtilities fetchSchemaSQLForEntity:v13 usingConnection:a2];
      v292 = [PFCloudKitMetadataMigrationSQLUtilities columnNamesFromCreateStatement:v15];
      [*(a1 + 24) addColumnNames:v292 forTableName:{objc_msgSend(v13, "tableName")}];
      v16 = [v13 name];
      v17 = objc_opt_class();
      if (([v16 isEqualToString:NSStringFromClass(v17)] & 1) == 0)
      {
        v18 = [v13 name];
        v19 = objc_opt_class();
        if (![v18 isEqualToString:NSStringFromClass(v19)])
        {
          v60 = [v13 name];
          v61 = objc_opt_class();
          if (![v60 isEqualToString:NSStringFromClass(v61)])
          {
            goto LABEL_163;
          }

          v62 = *(a1 + 16);
          v345[0] = MEMORY[0x1E69E9820];
          v345[1] = 3221225472;
          v345[2] = __79__PFCloudKitMetadataModelMigrator_calculateMigrationStepsWithConnection_error___block_invoke;
          v345[3] = &unk_1E6EC5650;
          v345[4] = a1;
          v345[5] = v13;
          v345[6] = &v362;
          v345[7] = &v368;
          [v62 performBlockAndWait:v345];
          v344 = 0u;
          v342 = 0u;
          v343 = 0u;
          v341 = 0u;
          v63 = [&unk_1EF43D750 countByEnumeratingWithState:&v341 objects:v393 count:16];
          if (v63)
          {
            v64 = *v342;
            do
            {
              v65 = 0;
              do
              {
                if (*v342 != v64)
                {
                  objc_enumerationMutation(&unk_1EF43D750);
                }

                if (v13)
                {
                  v66 = [v13[5] objectForKey:*(*(&v341 + 1) + 8 * v65)];
                }

                else
                {
                  v66 = 0;
                }

                if (([v292 containsObject:{objc_msgSend(v66, "columnName")}] & 1) == 0)
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingRelationship:v66 toContext:*(a1 + 24) inStore:*(a1 + 8)];
                }

                ++v65;
              }

              while (v63 != v65);
              v67 = [&unk_1EF43D750 countByEnumeratingWithState:&v341 objects:v393 count:16];
              v63 = v67;
            }

            while (v67);
          }

          if ([v292 containsObject:@"ZENCODEDSHAREDATA"])
          {
            v68 = [[NSSQLColumn alloc] initWithColumnName:@"ZENCODEDSHAREDATA" sqlType:16];
            v69 = v68;
            if (v68)
            {
              v68->super._entity = v13;
            }

            v70 = *(a1 + 24);
            if (v70)
            {
              [*(v70 + 32) addObject:v68];
            }
          }

          v71 = *(a1 + 24);
          if (v71)
          {
            [*(v71 + 24) addObject:v13];
          }

          v72 = [a2 adapter];
          if (v72)
          {
            v73 = [(NSSQLiteAdapter *)v72 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
          }

          else
          {
            v73 = 0;
          }

          v339 = 0u;
          v340 = 0u;
          v337 = 0u;
          v338 = 0u;
          v74 = [v73 countByEnumeratingWithState:&v337 objects:v392 count:16];
          if (v74)
          {
            v75 = *v338;
            do
            {
              for (j = 0; j != v74; ++j)
              {
                if (*v338 != v75)
                {
                  objc_enumerationMutation(v73);
                }

                v77 = *(a1 + 24);
                if (v77)
                {
                  [*(v77 + 8) addObject:*(*(&v337 + 1) + 8 * j)];
                  *(v77 + 48) = 1;
                }
              }

              v74 = [v73 countByEnumeratingWithState:&v337 objects:v392 count:16];
            }

            while (v74);
          }

LABEL_162:

          goto LABEL_163;
        }
      }

      v20 = *(a1 + 24);
      if (v20)
      {
        v21 = *(v20 + 88);
      }

      else
      {
        v21 = 0;
      }

      v22 = [v21 entityNamed:{objc_msgSend(v13, "name")}];
      if ([v292 containsObject:@"ZENTITYNAME"])
      {
        [PFCloudKitMetadataModelMigrator addMigrationStatementToContext:@"entityName" forRenamingAttributeNamed:@"ZENTITYNAME" withOldColumnName:@"cdEntityName" toAttributeName:v22 onOldSQLEntity:v13 andCurrentSQLEntity:?];
      }

      if ([v292 containsObject:@"ZISDELETED"])
      {
        [PFCloudKitMetadataModelMigrator addMigrationStatementToContext:@"isDeleted" forRenamingAttributeNamed:@"ZISDELETED" withOldColumnName:@"needsDelete" toAttributeName:v22 onOldSQLEntity:v13 andCurrentSQLEntity:?];
      }

      v23 = [v13 name];
      v24 = objc_opt_class();
      if ([v23 isEqualToString:NSStringFromClass(v24)])
      {
        if (v13)
        {
          v25 = [v13[5] objectForKey:@"recordZone"];
        }

        else
        {
          v25 = 0;
        }

        if (([v292 containsObject:{objc_msgSend(v25, "columnName")}] & 1) == 0)
        {
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ INTEGER", objc_msgSend(v13, "tableName"), objc_msgSend(v25, "columnName")];
          v27 = [[NSSQLiteStatement alloc] initWithEntity:v13 sqlString:v26];
          v28 = *(a1 + 24);
          if (v28)
          {
            [*(v28 + 8) addObject:v27];
            *(v28 + 48) = 1;
            v29 = *(a1 + 24);
            if (v29)
            {
              *(v29 + 51) = 1;
            }
          }

          v30 = *(a1 + 16);
          v31 = *(a1 + 24);
          v32 = v363;
          v376 = 0;
          v377 = &v376;
          v378 = 0x2020000000;
          v379 = 1;
          *&v372 = 0;
          *(&v372 + 1) = &v372;
          *&v373 = 0x3052000000;
          *(&v373 + 1) = __Block_byref_object_copy__50;
          *&v374 = __Block_byref_object_dispose__50;
          *(&v374 + 1) = 0;
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __149__PFCloudKitMetadataModelMigrator_addMigrationStatementsToDeleteDuplicateMirroredRelationshipsToContext_withManagedObjectContext_andSQLEntity_error___block_invoke;
          *&buf[24] = &unk_1E6EC56F0;
          *&buf[32] = v30;
          v399 = v13;
          v401 = &v372;
          v400 = v31;
          v402 = &v376;
          [v30 performBlockAndWait:buf];
          if ((v377[3] & 1) == 0)
          {
            v33 = *(*(&v372 + 1) + 40);
            if (v33)
            {
              v32[5] = v33;
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *v403 = 136315394;
                v404 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                v405 = 1024;
                v406 = 1956;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v403, 0x12u);
              }

              v79 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
              {
                *v403 = 136315394;
                v404 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                v405 = 1024;
                v406 = 1956;
                _os_log_fault_impl(&dword_18565F000, v79, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v403, 0x12u);
              }
            }
          }

          *(*(&v372 + 1) + 40) = 0;
          v80 = *(v377 + 24);
          _Block_object_dispose(&v372, 8);
          _Block_object_dispose(&v376, 8);
          if (v80)
          {
            v81 = 1;
            goto LABEL_129;
          }

          *(v369 + 24) = 0;
          v82 = v363[5];
        }

        v81 = 0;
LABEL_129:
        if ([v292 containsObject:@"ZCKRECORDSYSTEMFIELDS"])
        {
          v83 = [[NSSQLColumn alloc] initWithColumnName:@"ZCKRECORDSYSTEMFIELDS" sqlType:16];
          v84 = v83;
          if (v83)
          {
            v83->super._entity = v13;
          }

          v85 = *(a1 + 24);
          if (v85)
          {
            [*(v85 + 32) addObject:v83];
          }
        }

        if (*(v369 + 24) == 1)
        {
          v357 = 0u;
          v356 = 0u;
          v355 = 0u;
          v354 = 0u;
          v86 = [&unk_1EF43D708 countByEnumeratingWithState:&v354 objects:v396 count:16];
          if (v86)
          {
            v87 = *v355;
            do
            {
              v88 = 0;
              do
              {
                if (*v355 != v87)
                {
                  objc_enumerationMutation(&unk_1EF43D708);
                }

                if (v13)
                {
                  v89 = [v13[5] objectForKey:*(*(&v354 + 1) + 8 * v88)];
                }

                else
                {
                  v89 = 0;
                }

                if (([v292 containsObject:{objc_msgSend(v89, "columnName")}] & 1) == 0)
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingRelationship:v89 toContext:*(a1 + 24) inStore:*(a1 + 8)];
                  v81 = 1;
                }

                ++v88;
              }

              while (v86 != v88);
              v90 = [&unk_1EF43D708 countByEnumeratingWithState:&v354 objects:v396 count:16];
              v86 = v90;
            }

            while (v90);
          }
        }

        if (*(v369 + 24) == 1 && (v81 & 1) != 0)
        {
          v91 = [a2 adapter];
          if (v91)
          {
            v73 = [(NSSQLiteAdapter *)v91 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
          }

          else
          {
            v73 = 0;
          }

          v353 = 0u;
          v352 = 0u;
          v351 = 0u;
          v350 = 0u;
          v92 = [v73 countByEnumeratingWithState:&v350 objects:v395 count:16];
          if (v92)
          {
            v93 = *v351;
            do
            {
              for (k = 0; k != v92; ++k)
              {
                if (*v351 != v93)
                {
                  objc_enumerationMutation(v73);
                }

                v95 = *(a1 + 24);
                if (v95)
                {
                  [*(v95 + 8) addObject:*(*(&v350 + 1) + 8 * k)];
                  *(v95 + 48) = 1;
                }
              }

              v92 = [v73 countByEnumeratingWithState:&v350 objects:v395 count:16];
            }

            while (v92);
          }

          goto LABEL_162;
        }

        goto LABEL_163;
      }

      v36 = [v13 name];
      v37 = objc_opt_class();
      if ([v36 isEqualToString:NSStringFromClass(v37)])
      {
        v349 = 0u;
        v348 = 0u;
        v347 = 0u;
        v346 = 0u;
        v38 = [&unk_1EF43D720 countByEnumeratingWithState:&v346 objects:v394 count:16];
        if (v38)
        {
          v39 = *v347;
          do
          {
            v40 = 0;
            do
            {
              if (*v347 != v39)
              {
                objc_enumerationMutation(&unk_1EF43D720);
              }

              v41 = *(*(&v346 + 1) + 8 * v40);
              if (v13)
              {
                v42 = [v13[5] objectForKey:*(*(&v346 + 1) + 8 * v40)];
              }

              else
              {
                v42 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v42, "columnName")}])
              {
                v43 = objc_autoreleasePoolPush();
                Stream = __PFCloudKitLoggingGetStream();
                v45 = Stream;
                if (__ckLoggingOverride == 17)
                {
                  v46 = 17;
                }

                else
                {
                  v46 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v46 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v47 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v46;
                }

                if (os_log_type_enabled(Stream, v48))
                {
                  v49 = [v13 tableName];
                  v50 = [v42 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 321;
                  *&buf[18] = 2112;
                  *&buf[20] = v49;
                  *&buf[28] = 2112;
                  *&buf[30] = v50;
                  _os_log_impl(&dword_18565F000, v45, v48, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v43);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v42 toContext:*(a1 + 24) inStore:*(a1 + 8)];
                if (([v41 isEqualToString:@"recordZoneName"] & 1) != 0 || objc_msgSend(v41, "isEqualToString:", @"relatedRecordZoneName"))
                {
                  v51 = [NSSQLiteStatement alloc];
                  v52 = -[NSSQLiteStatement initWithEntity:sqlString:](v51, "initWithEntity:sqlString:", v13, [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = '%@'", objc_msgSend(v13, "tableName"), objc_msgSend(v42, "columnName"), @"com.apple.coredata.cloudkit.zone"]);
                  v53 = *(a1 + 24);
                  if (v53)
                  {
                    [*(v53 + 8) addObject:v52];
                    *(v53 + 48) = 1;
                  }

LABEL_76:

                  goto LABEL_77;
                }

                if (([v41 isEqualToString:@"recordZoneOwnerName"] & 1) != 0 || objc_msgSend(v41, "isEqualToString:", @"relatedRecordZoneOwnerName"))
                {
                  v54 = [NSSQLiteStatement alloc];
                  v55 = MEMORY[0x1E696AEC0];
                  v56 = [v13 tableName];
                  v57 = [v42 columnName];
                  v52 = -[NSSQLiteStatement initWithEntity:sqlString:](v54, "initWithEntity:sqlString:", v13, [v55 stringWithFormat:@"UPDATE %@ SET %@ = '%@'", v56, v57, getCloudKitCKCurrentUserDefaultName()]);
                  v58 = *(a1 + 24);
                  if (v58)
                  {
                    [*(v58 + 8) addObject:v52];
                    *(v58 + 48) = 1;
                  }

                  goto LABEL_76;
                }
              }

LABEL_77:
              ++v40;
            }

            while (v38 != v40);
            v59 = [&unk_1EF43D720 countByEnumeratingWithState:&v346 objects:v394 count:16];
            v38 = v59;
          }

          while (v59);
        }
      }

LABEL_163:
      v96 = [v13 name];
      v97 = objc_opt_class();
      if ([v96 isEqualToString:NSStringFromClass(v97)] & 1) != 0 || (v98 = objc_msgSend(v13, "name"), v99 = objc_opt_class(), (objc_msgSend(v98, "isEqualToString:", NSStringFromClass(v99))) || (v100 = objc_msgSend(v13, "name"), v101 = objc_opt_class(), objc_msgSend(v100, "isEqualToString:", NSStringFromClass(v101))))
      {
        v34 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([a2 adapter], objc_msgSend(v13, "tableName"));
        v102 = *(a1 + 24);
        if (v102)
        {
          [*(v102 + 8) addObject:v34];
          *(v102 + 48) = 1;
        }

LABEL_168:

        [(PFCloudKitMetadataMigrationContext *)*(a1 + 24) addSQLEntityToCreate:v13];
        goto LABEL_169;
      }

      v103 = [v13 name];
      v104 = objc_opt_class();
      if ([v103 isEqualToString:NSStringFromClass(v104)])
      {
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v105 = [&unk_1EF43D768 countByEnumeratingWithState:&v333 objects:v391 count:16];
        if (v105)
        {
          v106 = *v334;
          do
          {
            v107 = 0;
            do
            {
              if (*v334 != v106)
              {
                objc_enumerationMutation(&unk_1EF43D768);
              }

              if (v13)
              {
                v108 = [v13[5] objectForKey:*(*(&v333 + 1) + 8 * v107)];
              }

              else
              {
                v108 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v108, "columnName")}])
              {
                v109 = objc_autoreleasePoolPush();
                v110 = __PFCloudKitLoggingGetStream();
                v111 = v110;
                if (__ckLoggingOverride == 17)
                {
                  v112 = 17;
                }

                else
                {
                  v112 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v112 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v113 = 1;
                }

                else
                {
                  v113 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v113 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = v112;
                }

                if (os_log_type_enabled(v110, v114))
                {
                  v115 = [v13 tableName];
                  v116 = [v108 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 406;
                  *&buf[18] = 2112;
                  *&buf[20] = v115;
                  *&buf[28] = 2112;
                  *&buf[30] = v116;
                  _os_log_impl(&dword_18565F000, v111, v114, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v109);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v108 toContext:*(a1 + 24) inStore:*(a1 + 8)];
              }

              ++v107;
            }

            while (v105 != v107);
            v117 = [&unk_1EF43D768 countByEnumeratingWithState:&v333 objects:v391 count:16];
            v105 = v117;
          }

          while (v117);
        }

        v331 = 0u;
        v332 = 0u;
        v329 = 0u;
        v330 = 0u;
        v118 = [&unk_1EF43D780 countByEnumeratingWithState:&v329 objects:v390 count:16];
        if (v118)
        {
          v119 = *v330;
          do
          {
            for (m = 0; m != v118; ++m)
            {
              if (*v330 != v119)
              {
                objc_enumerationMutation(&unk_1EF43D780);
              }

              v121 = *(*(&v329 + 1) + 8 * m);
              if ([v292 containsObject:v121])
              {
                v122 = [[NSSQLColumn alloc] initWithColumnName:v121 sqlType:16];
                v123 = v122;
                if (v122)
                {
                  v122->super._entity = v13;
                }

                v124 = *(a1 + 24);
                if (v124)
                {
                  [*(v124 + 32) addObject:v122];
                }

                if ([v121 isEqualToString:@"ZUNIQUEIDENTIFIER"])
                {
                  v125 = [[NSSQLiteStatement alloc] initWithEntity:v13 sqlString:@"DROP INDEX IF EXISTS Z_NSCKRecordMetadata_UNIQUE_uniqueIdentifier"];
                  v126 = *(a1 + 24);
                  if (v126)
                  {
                    [*(v126 + 8) addObject:v125];
                    *(v126 + 48) = 1;
                  }
                }
              }
            }

            v118 = [&unk_1EF43D780 countByEnumeratingWithState:&v329 objects:v390 count:16];
          }

          while (v118);
        }

        v327 = 0u;
        v328 = 0u;
        v325 = 0u;
        v326 = 0u;
        v127 = [&unk_1EF43D798 countByEnumeratingWithState:&v325 objects:v389 count:16];
        if (v127)
        {
          v128 = *v326;
          do
          {
            v129 = 0;
            do
            {
              if (*v326 != v128)
              {
                objc_enumerationMutation(&unk_1EF43D798);
              }

              if (v13)
              {
                v130 = [v13[5] objectForKey:*(*(&v325 + 1) + 8 * v129)];
              }

              else
              {
                v130 = 0;
              }

              if (([v292 containsObject:{objc_msgSend(v130, "columnName")}] & 1) == 0)
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingRelationship:v130 toContext:*(a1 + 24) inStore:*(a1 + 8)];
              }

              ++v129;
            }

            while (v127 != v129);
            v131 = [&unk_1EF43D798 countByEnumeratingWithState:&v325 objects:v389 count:16];
            v127 = v131;
          }

          while (v131);
        }

        v132 = *(a1 + 24);
        if (v132)
        {
          [*(v132 + 24) addObject:v13];
        }

        v133 = [a2 adapter];
        if (v133)
        {
          v134 = [(NSSQLiteAdapter *)v133 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
        }

        else
        {
          v134 = 0;
        }

        v323 = 0u;
        v324 = 0u;
        v321 = 0u;
        v322 = 0u;
        v135 = [v134 countByEnumeratingWithState:&v321 objects:v388 count:16];
        if (v135)
        {
          v136 = *v322;
          do
          {
            for (n = 0; n != v135; ++n)
            {
              if (*v322 != v136)
              {
                objc_enumerationMutation(v134);
              }

              v138 = *(a1 + 24);
              if (v138)
              {
                [*(v138 + 8) addObject:*(*(&v321 + 1) + 8 * n)];
                *(v138 + 48) = 1;
              }
            }

            v135 = [v134 countByEnumeratingWithState:&v321 objects:v388 count:16];
          }

          while (v135);
        }
      }

      v139 = [v13 name];
      v140 = objc_opt_class();
      if (([v139 isEqualToString:NSStringFromClass(v140)] & 1) != 0 || (v141 = objc_msgSend(v13, "name"), v142 = objc_opt_class(), objc_msgSend(v141, "isEqualToString:", NSStringFromClass(v142))))
      {
        if ([v292 containsObject:@"ZHASCHANGES"])
        {
          v143 = [v13 name];
          v144 = objc_opt_class();
          v290 = [v143 isEqualToString:NSStringFromClass(v144)];
          v283 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"CREATE TEMPORARY TABLE %@_tmp("), objc_msgSend(v13, "tableName");
          v145 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"INSERT INTO %@_tmp ("), objc_msgSend(v13, "tableName");
          v146 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT"];
          v282 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"INSERT INTO %@ ("), objc_msgSend(v13, "tableName");
          v147 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT"];
          v148 = v13;
          while (v148)
          {
            v149 = v148;
            v148 = v148[21];
            if (v148 == v149)
            {
              v150 = v149[9];
              goto LABEL_252;
            }
          }

          v150 = 0;
LABEL_252:
          v151 = [v150 count];
          if (v151)
          {
            v152 = v151;
            v153 = 0;
            v154 = v151 - 1;
            do
            {
              v155 = objc_autoreleasePoolPush();
              v156 = v13;
              while (v156)
              {
                v157 = v156;
                v156 = v156[21];
                if (v156 == v157)
                {
                  v158 = v157[9];
                  goto LABEL_258;
                }
              }

              v158 = 0;
LABEL_258:
              v159 = [v158 objectAtIndexedSubscript:v153];
              if ([v292 containsObject:{objc_msgSend(v159, "columnName")}])
              {
                [v283 appendFormat:@" %@", objc_msgSend(v159, "columnName")];
                [v145 appendFormat:@" %@", objc_msgSend(v159, "columnName")];
                [v282 appendFormat:@" %@", objc_msgSend(v159, "columnName")];
                [v147 appendFormat:@" %@", objc_msgSend(v159, "columnName")];
                [v146 appendFormat:@" %@", objc_msgSend(v159, "columnName")];
                if (v153 < v154)
                {
                  [v283 appendString:{@", "}];
                  [v145 appendString:{@", "}];
                  [v282 appendString:{@", "}];
                  [v147 appendString:{@", "}];
                  [v146 appendString:{@", "}];
                }
              }

              objc_autoreleasePoolPop(v155);
              ++v153;
            }

            while (v153 != v152);
          }

          v319 = 0u;
          v320 = 0u;
          v317 = 0u;
          v318 = 0u;
          v386[0] = v283;
          v386[1] = v145;
          v386[2] = v282;
          v279 = v147;
          v280 = v146;
          v386[3] = v147;
          v386[4] = v146;
          v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:v386 count:5];
          v161 = [v160 countByEnumeratingWithState:&v317 objects:v387 count:16];
          if (v161)
          {
            v162 = *v318;
            do
            {
              for (ii = 0; ii != v161; ++ii)
              {
                if (*v318 != v162)
                {
                  objc_enumerationMutation(v160);
                }

                v164 = *(*(&v317 + 1) + 8 * ii);
                if ([v164 hasSuffix:{@", "}])
                {
                  [v164 deleteCharactersInRange:{objc_msgSend(v164, "length") - 1, 1}];
                }
              }

              v161 = [v160 countByEnumeratingWithState:&v317 objects:v387 count:16];
            }

            while (v161);
          }

          [v283 appendString:@""]);
          [v282 appendString:@""]);
          [v145 appendString:@""]);
          [v280 appendFormat:@" FROM %@", objc_msgSend(v13, "tableName")];
          [v279 appendFormat:@" FROM %@_tmp", objc_msgSend(v13, "tableName")];
          v165 = [[NSSQLiteStatement alloc] initWithEntity:v13 sqlString:v283];
          v166 = *(a1 + 24);
          if (v166)
          {
            [*(v166 + 8) addObject:v165];
            *(v166 + 48) = 1;
          }

          v167 = [NSSQLiteStatement alloc];
          v168 = -[NSSQLiteStatement initWithEntity:sqlString:](v167, "initWithEntity:sqlString:", v13, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v145, v280]);
          v169 = *(a1 + 24);
          if (v169)
          {
            [*(v169 + 8) addObject:v168];
            *(v169 + 48) = 1;
          }

          v170 = [NSSQLiteStatement alloc];
          v171 = -[NSSQLiteStatement initWithEntity:sqlString:](v170, "initWithEntity:sqlString:", v13, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE %@", objc_msgSend(v13, "tableName")]);
          v172 = *(a1 + 24);
          if (v172)
          {
            [*(v172 + 8) addObject:v171];
            *(v172 + 48) = 1;
          }

          v173 = -[NSSQLiteAdapter newCreateTableStatementForEntity:]([a2 adapter], v13);
          v174 = *(a1 + 24);
          if (v174)
          {
            [*(v174 + 8) addObject:v173];
            *(v174 + 48) = 1;
          }

          v292 = [PFCloudKitMetadataMigrationSQLUtilities columnNamesFromCreateStatement:?];
          [*(a1 + 24) addColumnNames:v292 forTableName:{objc_msgSend(v13, "tableName")}];

          v175 = [NSSQLiteStatement alloc];
          v176 = -[NSSQLiteStatement initWithEntity:sqlString:](v175, "initWithEntity:sqlString:", v13, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v282, v279]);
          v177 = *(a1 + 24);
          if (v177)
          {
            [*(v177 + 8) addObject:v176];
            *(v177 + 48) = 1;
          }

          v178 = [NSSQLiteStatement alloc];
          v179 = -[NSSQLiteStatement initWithEntity:sqlString:](v178, "initWithEntity:sqlString:", v13, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE %@_tmp", objc_msgSend(v13, "tableName")]);
          v180 = *(a1 + 24);
          if (v180)
          {
            [*(v180 + 8) addObject:v179];
            *(v180 + 48) = 1;
            v181 = *(a1 + 24);
            if (v181)
            {
              [*(v181 + 24) addObject:v13];
            }
          }

          v182 = [a2 adapter];
          if (v182)
          {
            v183 = [(NSSQLiteAdapter *)v182 newCreateIndexStatementsForEntity:v13 defaultIndicesOnly:0];
          }

          else
          {
            v183 = 0;
          }

          v315 = 0u;
          v316 = 0u;
          v313 = 0u;
          v314 = 0u;
          v184 = [v183 countByEnumeratingWithState:&v313 objects:v385 count:16];
          if (v184)
          {
            v185 = *v314;
            do
            {
              for (jj = 0; jj != v184; ++jj)
              {
                if (*v314 != v185)
                {
                  objc_enumerationMutation(v183);
                }

                v187 = *(a1 + 24);
                if (v187)
                {
                  [*(v187 + 8) addObject:*(*(&v313 + 1) + 8 * jj)];
                  *(v187 + 48) = 1;
                }
              }

              v184 = [v183 countByEnumeratingWithState:&v313 objects:v385 count:16];
            }

            while (v184);
          }
        }

        else
        {
          v290 = 0;
        }

        v311 = 0u;
        v312 = 0u;
        v309 = 0u;
        v310 = 0u;
        v188 = [&unk_1EF43D7B0 countByEnumeratingWithState:&v309 objects:v384 count:16];
        if (v188)
        {
          v189 = *v310;
          do
          {
            v190 = 0;
            do
            {
              if (*v310 != v189)
              {
                objc_enumerationMutation(&unk_1EF43D7B0);
              }

              if (v13)
              {
                v191 = [v13[5] objectForKey:*(*(&v309 + 1) + 8 * v190)];
              }

              else
              {
                v191 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v191, "columnName")}])
              {
                v192 = objc_autoreleasePoolPush();
                v193 = __PFCloudKitLoggingGetStream();
                v194 = v193;
                if (__ckLoggingOverride == 17)
                {
                  v195 = 17;
                }

                else
                {
                  v195 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v195 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v196 = 1;
                }

                else
                {
                  v196 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v196 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v197 = v196;
                }

                else
                {
                  v197 = v195;
                }

                if (os_log_type_enabled(v193, v197))
                {
                  v198 = [v13 tableName];
                  v199 = [v191 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 546;
                  *&buf[18] = 2112;
                  *&buf[20] = v198;
                  *&buf[28] = 2112;
                  *&buf[30] = v199;
                  _os_log_impl(&dword_18565F000, v194, v197, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v192);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v191 toContext:*(a1 + 24) inStore:*(a1 + 8)];
              }

              ++v190;
            }

            while (v188 != v190);
            v200 = [&unk_1EF43D7B0 countByEnumeratingWithState:&v309 objects:v384 count:16];
            v188 = v200;
          }

          while (v200);
        }

        v201 = [v13 name];
        v202 = objc_opt_class();
        if ([v201 isEqualToString:NSStringFromClass(v202)])
        {
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          v203 = [&unk_1EF43D7C8 countByEnumeratingWithState:&v305 objects:v383 count:16];
          if (v203)
          {
            v204 = *v306;
            do
            {
              v205 = 0;
              do
              {
                if (*v306 != v204)
                {
                  objc_enumerationMutation(&unk_1EF43D7C8);
                }

                if (v13)
                {
                  v206 = [v13[5] objectForKey:*(*(&v305 + 1) + 8 * v205)];
                }

                else
                {
                  v206 = 0;
                }

                if ([v292 containsObject:{objc_msgSend(v206, "columnName")}])
                {
                  v207 = objc_autoreleasePoolPush();
                  v208 = __PFCloudKitLoggingGetStream();
                  v209 = v208;
                  if (__ckLoggingOverride == 17)
                  {
                    v210 = 17;
                  }

                  else
                  {
                    v210 = 2;
                  }

                  if (__ckLoggingOverride == 16)
                  {
                    v210 = 16;
                  }

                  if (__ckLoggingOverride == 1)
                  {
                    v211 = 1;
                  }

                  else
                  {
                    v211 = 2;
                  }

                  if (!__ckLoggingOverride)
                  {
                    v211 = 0;
                  }

                  if (__ckLoggingOverride <= 0xFu)
                  {
                    v212 = v211;
                  }

                  else
                  {
                    v212 = v210;
                  }

                  if (os_log_type_enabled(v208, v212))
                  {
                    v213 = [v13 tableName];
                    v214 = [v206 columnName];
                    *buf = 136315906;
                    *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                    *&buf[12] = 1024;
                    *&buf[14] = 562;
                    *&buf[18] = 2112;
                    *&buf[20] = v213;
                    *&buf[28] = 2112;
                    *&buf[30] = v214;
                    _os_log_impl(&dword_18565F000, v209, v212, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v207);
                }

                else
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v206 toContext:*(a1 + 24) inStore:*(a1 + 8)];
                  v290 = 1;
                }

                ++v205;
              }

              while (v203 != v205);
              v215 = [&unk_1EF43D7C8 countByEnumeratingWithState:&v305 objects:v383 count:16];
              v203 = v215;
            }

            while (v215);
          }

          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v216 = [&unk_1EF43D7E0 countByEnumeratingWithState:&v301 objects:v382 count:16];
          if (v216)
          {
            v217 = *v302;
            do
            {
              v218 = 0;
              do
              {
                if (*v302 != v217)
                {
                  objc_enumerationMutation(&unk_1EF43D7E0);
                }

                if (v13)
                {
                  v219 = [v13[5] objectForKey:*(*(&v301 + 1) + 8 * v218)];
                }

                else
                {
                  v219 = 0;
                }

                if ([v292 containsObject:{objc_msgSend(v219, "columnName")}])
                {
                  v220 = objc_autoreleasePoolPush();
                  v221 = __PFCloudKitLoggingGetStream();
                  v222 = v221;
                  if (__ckLoggingOverride == 17)
                  {
                    v223 = 17;
                  }

                  else
                  {
                    v223 = 2;
                  }

                  if (__ckLoggingOverride == 16)
                  {
                    v223 = 16;
                  }

                  if (__ckLoggingOverride == 1)
                  {
                    v224 = 1;
                  }

                  else
                  {
                    v224 = 2;
                  }

                  if (!__ckLoggingOverride)
                  {
                    v224 = 0;
                  }

                  if (__ckLoggingOverride <= 0xFu)
                  {
                    v225 = v224;
                  }

                  else
                  {
                    v225 = v223;
                  }

                  if (os_log_type_enabled(v221, v225))
                  {
                    v226 = [v13 tableName];
                    v227 = [v219 columnName];
                    *buf = 136315906;
                    *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                    *&buf[12] = 1024;
                    *&buf[14] = 579;
                    *&buf[18] = 2112;
                    *&buf[20] = v226;
                    *&buf[28] = 2112;
                    *&buf[30] = v227;
                    _os_log_impl(&dword_18565F000, v222, v225, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                  }

                  objc_autoreleasePoolPop(v220);
                }

                else
                {
                  [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v219 toContext:*(a1 + 24) inStore:*(a1 + 8)];
                }

                ++v218;
              }

              while (v216 != v218);
              v228 = [&unk_1EF43D7E0 countByEnumeratingWithState:&v301 objects:v382 count:16];
              v216 = v228;
            }

            while (v228);
          }
        }

        if (v290)
        {
          v229 = [NSSQLiteStatement alloc];
          v230 = MEMORY[0x1E696AEC0];
          v231 = [v13 tableName];
          if (v13)
          {
            v232 = [v13[5] objectForKey:@"hasRecordZoneNum"];
          }

          else
          {
            v232 = 0;
          }

          v233 = -[NSSQLiteStatement initWithEntity:sqlString:](v229, "initWithEntity:sqlString:", v13, [v230 stringWithFormat:@"UPDATE %@ SET %@=0", v231, objc_msgSend(v232, "columnName")]);
          v234 = *(a1 + 24);
          if (v234)
          {
            [*(v234 + 8) addObject:v233];
            *(v234 + 48) = 1;
          }
        }
      }

      v235 = [v13 name];
      v236 = objc_opt_class();
      if ([v235 isEqualToString:NSStringFromClass(v236)])
      {
        v299 = 0u;
        v300 = 0u;
        v297 = 0u;
        v298 = 0u;
        v237 = [&unk_1EF43D7F8 countByEnumeratingWithState:&v297 objects:v381 count:16];
        if (v237)
        {
          v238 = *v298;
          do
          {
            v239 = 0;
            do
            {
              if (*v298 != v238)
              {
                objc_enumerationMutation(&unk_1EF43D7F8);
              }

              if (v13)
              {
                v240 = [v13[5] objectForKey:*(*(&v297 + 1) + 8 * v239)];
              }

              else
              {
                v240 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v240, "columnName")}])
              {
                v241 = objc_autoreleasePoolPush();
                v242 = __PFCloudKitLoggingGetStream();
                v243 = v242;
                if (__ckLoggingOverride == 17)
                {
                  v244 = 17;
                }

                else
                {
                  v244 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v244 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v245 = 1;
                }

                else
                {
                  v245 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v245 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v246 = v245;
                }

                else
                {
                  v246 = v244;
                }

                if (os_log_type_enabled(v242, v246))
                {
                  v247 = [v13 tableName];
                  v248 = [v240 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 603;
                  *&buf[18] = 2112;
                  *&buf[20] = v247;
                  *&buf[28] = 2112;
                  *&buf[30] = v248;
                  _os_log_impl(&dword_18565F000, v243, v246, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v241);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v240 toContext:*(a1 + 24) inStore:*(a1 + 8)];
              }

              ++v239;
            }

            while (v237 != v239);
            v249 = [&unk_1EF43D7F8 countByEnumeratingWithState:&v297 objects:v381 count:16];
            v237 = v249;
          }

          while (v249);
        }
      }

      v250 = [v13 name];
      v251 = objc_opt_class();
      if ([v250 isEqualToString:NSStringFromClass(v251)])
      {
        v295 = 0u;
        v296 = 0u;
        v293 = 0u;
        v294 = 0u;
        v252 = [&unk_1EF43D810 countByEnumeratingWithState:&v293 objects:v380 count:16];
        if (v252)
        {
          v253 = *v294;
          do
          {
            v254 = 0;
            do
            {
              if (*v294 != v253)
              {
                objc_enumerationMutation(&unk_1EF43D810);
              }

              if (v13)
              {
                v255 = [v13[5] objectForKey:*(*(&v293 + 1) + 8 * v254)];
              }

              else
              {
                v255 = 0;
              }

              if ([v292 containsObject:{objc_msgSend(v255, "columnName")}])
              {
                v256 = objc_autoreleasePoolPush();
                v257 = __PFCloudKitLoggingGetStream();
                v258 = v257;
                if (__ckLoggingOverride == 17)
                {
                  v259 = 17;
                }

                else
                {
                  v259 = 2;
                }

                if (__ckLoggingOverride == 16)
                {
                  v259 = 16;
                }

                if (__ckLoggingOverride == 1)
                {
                  v260 = 1;
                }

                else
                {
                  v260 = 2;
                }

                if (!__ckLoggingOverride)
                {
                  v260 = 0;
                }

                if (__ckLoggingOverride <= 0xFu)
                {
                  v261 = v260;
                }

                else
                {
                  v261 = v259;
                }

                if (os_log_type_enabled(v257, v261))
                {
                  v262 = [v13 tableName];
                  v263 = [v255 columnName];
                  *buf = 136315906;
                  *&buf[4] = "[PFCloudKitMetadataModelMigrator calculateMigrationStepsWithConnection:error:]";
                  *&buf[12] = 1024;
                  *&buf[14] = 617;
                  *&buf[18] = 2112;
                  *&buf[20] = v262;
                  *&buf[28] = 2112;
                  *&buf[30] = v263;
                  _os_log_impl(&dword_18565F000, v258, v261, "CoreData+CloudKit: %s(%d): Skipping migration for '%@' because it already has a column named '%@'", buf, 0x26u);
                }

                objc_autoreleasePoolPop(v256);
              }

              else
              {
                [PFCloudKitMetadataModelMigrator addMigrationStatementForAddingAttribute:v255 toContext:*(a1 + 24) inStore:*(a1 + 8)];
              }

              ++v254;
            }

            while (v252 != v254);
            v264 = [&unk_1EF43D810 countByEnumeratingWithState:&v293 objects:v380 count:16];
            v252 = v264;
          }

          while (v264);
        }
      }

      v265 = *(a1 + 24);
      if (v265)
      {
        v266 = *(v265 + 96);
      }

      else
      {
        v266 = 0;
      }

      if ([v266 integerValue] <= 976)
      {
        v267 = [NSSQLiteStatement alloc];
        v268 = -[NSSQLiteStatement initWithEntity:sqlString:](v267, "initWithEntity:sqlString:", v13, [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET Z_OPT = 1 WHERE Z_OPT IS NULL OR Z_OPT <= 0", objc_msgSend(v13, "tableName")]);
        v269 = *(a1 + 24);
        if (v269)
        {
          [*(v269 + 8) addObject:v268];
          *(v269 + 48) = 1;
        }
      }

      v270 = *(a1 + 24);
      if (v270)
      {
        v271 = *(v270 + 96);
      }

      else
      {
        v271 = 0;
      }

      if ([v271 integerValue] <= 1031)
      {
        v272 = *(a1 + 24);
        if (v272)
        {
          *(v272 + 54) = 1;
        }
      }

LABEL_169:
      objc_autoreleasePoolPop(context);
      if (!v287)
      {
        goto LABEL_475;
      }

      ++v291;
    }

    while (v291 != v286);
    v12 = [obj countByEnumeratingWithState:&v358 objects:v397 count:16];
  }

  while (v12);
LABEL_475:
  if ((v369[3] & 1) == 0)
  {
    v276 = v363[5];
    if (v276)
    {
      if (a3)
      {
        *a3 = v276;
      }
    }

    else
    {
      v277 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&buf[12] = 1024;
        *&buf[14] = 637;
        _os_log_error_impl(&dword_18565F000, v277, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v278 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v278, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&buf[12] = 1024;
        *&buf[14] = 637;
        _os_log_fault_impl(&dword_18565F000, v278, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v363[5] = 0;
  v273 = *(v369 + 24);
  _Block_object_dispose(&v362, 8);
  _Block_object_dispose(&v368, 8);
LABEL_477:
  v274 = *MEMORY[0x1E69E9840];
  return v273 & 1;
}

- (void)addMigrationStatementToContext:(uint64_t)a1 forRenamingAttributeNamed:(uint64_t)a2 withOldColumnName:(uint64_t)a3 toAttributeName:(uint64_t)a4 onOldSQLEntity:(uint64_t)a5 andCurrentSQLEntity:(id *)a6
{
  v29 = *MEMORY[0x1E69E9840];
  if (a6 && (v12 = [a6[5] objectForKey:a4]) != 0)
  {
    v13 = v12;
    if (a5)
    {
      v14 = [*(a5 + 40) objectForKey:a2];
      if (v14)
      {
        a3 = [v14 columnName];
      }
    }

    v15 = [NSSQLiteStatement alloc];
    v16 = -[NSSQLiteStatement initWithEntity:sqlString:](v15, "initWithEntity:sqlString:", a6, [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ RENAME COLUMN %@ TO %@", objc_msgSend(a6, "tableName"), a3, objc_msgSend(v13, "columnName")]);
    v17 = v16;
    if (a1)
    {
      v22 = v16;
      v16 = [*(a1 + 8) addObject:v16];
      v17 = v22;
      *(a1 + 48) = 1;
    }

    v18 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8](v16, v17);
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v24 = a4;
      v25 = 2112;
      v26 = a2;
      v27 = 2112;
      v28 = a6;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to find attribute to migrate to '%@' from '%@' on entity: %@\n", buf, 0x20u);
    }

    v20 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v24 = a4;
      v25 = 2112;
      v26 = a2;
      v27 = 2112;
      v28 = a6;
      _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Unable to find attribute to migrate to '%@' from '%@' on entity: %@", buf, 0x20u);
    }

    v21 = *MEMORY[0x1E69E9840];
  }
}

- (void)addMigrationStatementForAddingRelationship:(void *)a1 toContext:(uint64_t)a2 inStore:(void *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a1 isToMany])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = a1;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to generate the sql for to-many relationships yet: %@\n", buf, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v16 = a1;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to generate the sql for to-many relationships yet: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = a1;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to generate the sql for relationships that aren't a to-one yet: %@\n", buf, 0xCu);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v16 = a1;
        _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to generate the sql for relationships that aren't a to-one yet: %@", buf, 0xCu);
      }
    }

    v10 = [a1 entity];
    v11 = [a1 foreignKey];
    v12 = [NSSQLiteStatement alloc];
    v13 = -[NSSQLiteStatement initWithEntity:sqlString:](v12, "initWithEntity:sqlString:", v10, [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@", objc_msgSend(v10, "tableName"), objc_msgSend(v11, "columnName"), -[NSSQLiteAdapter typeStringForColumn:](objc_msgSend(a3, "adapter"), v11)]);
    if (a2)
    {
      [*(a2 + 8) addObject:v13];
      *(a2 + 48) = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (uint64_t)addMigrationStatementForAddingAttribute:(_BYTE *)a1 toContext:(uint64_t)a2 inStore:(void *)a3
{
  v6 = [a1 entity];
  v7 = [NSSQLiteStatement alloc];
  v8 = -[NSSQLiteStatement initWithEntity:sqlString:](v7, "initWithEntity:sqlString:", v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ ADD COLUMN %@ %@", objc_msgSend(v6, "tableName"), objc_msgSend(a1, "columnName"), -[NSSQLiteAdapter typeStringForColumn:](objc_msgSend(a3, "adapter"), a1)]);
  v9 = v8;
  if (a2)
  {
    v11 = v8;
    v8 = [*(a2 + 8) addObject:v8];
    v9 = v11;
    *(a2 + 48) = 1;
  }

  return MEMORY[0x1EEE66BB8](v8, v9);
}

void __79__PFCloudKitMetadataModelMigrator_calculateMigrationStepsWithConnection_error___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  v3 = [v2 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
  v4 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v4, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordZoneName = %@ AND ckOwnerName = %@", objc_msgSend(v3, "zoneName"), objc_msgSend(v3, "ownerName")]);
  [(NSFetchRequest *)v4 setResultType:4];
  [(NSFetchRequest *)v4 setPropertiesToFetch:&unk_1EF43D738];
  v5 = *(*(a1 + 32) + 16);
  if (v5)
  {
    v6 = [(NSManagedObjectContext *)v5 _countForFetchRequest_:v4 error:(*(*(a1 + 48) + 8) + 40)];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    else if (v6 >= 2)
    {
      v8 = [NSSQLiteStatement alloc];
      v9 = -[NSSQLiteStatement initWithEntity:sqlString:](v8, "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@", objc_msgSend(*(a1 + 40), "tableName")]);
      v10 = *(*(a1 + 32) + 24);
      if (v10)
      {
        [*(v10 + 8) addObject:v9];
        *(v10 + 48) = 1;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke(uint64_t a1)
{
  v256 = *MEMORY[0x1E69E9840];
  if (![_PFRoutines _isInMemoryStore:?])
  {
    v215 = 0;
    if (([*(*(a1 + 32) + 16) setQueryGenerationFromToken:0 error:&v215] & 1) == 0)
    {
      v1 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v3 = Stream;
      if (__ckLoggingOverride == 17)
      {
        v4 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v4 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(Stream, v4))
      {
        v5 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitMetadataModelMigrator commitMigrationMetadataAndCleanup:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 710;
        *&buf[18] = 2112;
        *&buf[20] = v5;
        *&buf[28] = 2112;
        *&buf[30] = v215;
        _os_log_impl(&dword_18565F000, v3, v4, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v1);
    }
  }

  v214 = 0;
  if (!+[NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:BOOLValue:forStore:intoManagedObjectContext:error:](NSCKMetadataEntry, @"PFCloudKitMetadataModelMigratorMigrationBeganCommitKey", 1, *(*(a1 + 32) + 8), *(*(a1 + 32) + 16), &v214) || ([*(*(a1 + 32) + 16) save:&v214] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 40) = v214;
  }

  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_272;
  }

  if (![_PFRoutines _isInMemoryStore:?])
  {
    v215 = 0;
    if (([*(*(a1 + 32) + 16) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v215}] & 1) == 0)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = __PFCloudKitLoggingGetStream();
      v8 = v7;
      if (__ckLoggingOverride == 17)
      {
        v9 = OS_LOG_TYPE_FAULT;
      }

      else
      {
        v9 = OS_LOG_TYPE_ERROR;
      }

      if (os_log_type_enabled(v7, v9))
      {
        v10 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "[PFCloudKitMetadataModelMigrator commitMigrationMetadataAndCleanup:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = 736;
        *&buf[18] = 2112;
        *&buf[20] = v10;
        *&buf[28] = 2112;
        *&buf[30] = v215;
        _os_log_impl(&dword_18565F000, v8, v9, "CoreData+CloudKit: %s(%d): %@: Unable to set query generation on moc: %@", buf, 0x26u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  v11 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v214 error:?];
  v12 = v214;
  if (v214 || (v13 = v11, v14 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v214 error:?], (v12 = v214) != 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v15 = v12;
    goto LABEL_24;
  }

  v32 = [v14 transformedValue];
  if (!v32 || ((v33 = *(*(a1 + 32) + 24)) == 0 ? (v34 = 0) : (v34 = *(v33 + 64)), ([objc_msgSend(v34 "entityVersionHashesByName")] & 1) == 0))
  {
    if (([(PFCloudKitMetadataModelMigrator *)*(a1 + 32) computeAncillaryEntityPrimaryKeyTableEntriesForStore:&v214 error:?]& 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 40) = v214;
    }
  }

  v35 = *(a1 + 40);
  if (*(*(v35 + 8) + 24) == 1)
  {
    v36 = *(*(a1 + 32) + 24);
    v37 = v36 ? *(v36 + 64) : 0;
    v38 = +[NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:transformedValue:forStore:intoManagedObjectContext:error:](NSCKMetadataEntry, @"PFCloudKitMetadataModelVersionHashesKey", [v37 entityVersionHashesByName], *(*(a1 + 32) + 8), *(*(a1 + 32) + 16), &v214);
    v35 = *(a1 + 40);
    if (!v38)
    {
      *(*(v35 + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 40) = v214;
      v35 = *(a1 + 40);
    }
  }

  v39 = *(*(v35 + 8) + 24);
  if (v39 == 1)
  {
    if (v13)
    {
      v40 = [objc_msgSend(v13 "integerValue")];
      v41 = [objc_msgSend(v13 "integerValue")] < 0x3B1;
      v181 = [objc_msgSend(v13 "integerValue")] < 0x3B3;
      if (v40 > 0x399)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v181 = 0;
      v41 = 1;
    }

    v42 = [[NSCloudKitMirroringDelegatePreJazzkonMetadata alloc] initWithStore:*(*(a1 + 32) + 8)];
    if (![(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 load:?])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 40) = v214;
LABEL_92:

LABEL_93:
      if (*(*(*(a1 + 40) + 8) + 24) == 1 && v41)
      {
        context = objc_autoreleasePoolPush();
        v189 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v59 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
        [(NSFetchRequest *)v59 setRelationshipKeyPathsForPrefetching:&unk_1EF43D828];
        [(NSFetchRequest *)v59 setReturnsObjectsAsFaults:0];
        v241[0] = *(*(a1 + 32) + 8);
        -[NSFetchRequest setAffectedStores:](v59, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v241 count:1]);
        v60 = [*(*(a1 + 32) + 16) executeFetchRequest:v59 error:&v214];
        if (v60 && (v61 = [NSCKDatabaseMetadata databaseMetadataForScope:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) inContext:&v214 error:?]) != 0)
        {
          v182 = v61;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
          v62 = [v60 countByEnumeratingWithState:&v210 objects:v240 count:16];
          if (v62)
          {
            v63 = *v211;
            v184 = *v211;
            do
            {
              v64 = 0;
              obja = v62;
              do
              {
                if (*v211 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                v65 = *(*(&v210 + 1) + 8 * v64);
                v66 = objc_autoreleasePoolPush();
                if ([objc_msgSend(v65 "ckOwnerName")] && objc_msgSend(objc_msgSend(v65, "ckRecordZoneName"), "length"))
                {
                  v67 = [(NSCKRecordZoneMetadata *)v65 createRecordZoneID];
                  v68 = [v189 objectForKey:v67];
                  if (v68)
                  {
                    v69 = [objc_msgSend(v65 "mirroredRelationships")];
                    v208 = 0u;
                    v209 = 0u;
                    v206 = 0u;
                    v207 = 0u;
                    v70 = [v69 countByEnumeratingWithState:&v206 objects:v239 count:16];
                    if (v70)
                    {
                      v71 = *v207;
                      do
                      {
                        for (i = 0; i != v70; ++i)
                        {
                          if (*v207 != v71)
                          {
                            objc_enumerationMutation(v69);
                          }

                          [*(*(&v206 + 1) + 8 * i) setRecordZone:v68];
                        }

                        v70 = [v69 countByEnumeratingWithState:&v206 objects:v239 count:16];
                      }

                      while (v70);
                    }

                    v73 = [objc_msgSend(v65 "records")];
                    v204 = 0u;
                    v205 = 0u;
                    v202 = 0u;
                    v203 = 0u;
                    v74 = [v73 countByEnumeratingWithState:&v202 objects:v238 count:16];
                    if (v74)
                    {
                      v75 = *v203;
                      do
                      {
                        for (j = 0; j != v74; ++j)
                        {
                          if (*v203 != v75)
                          {
                            objc_enumerationMutation(v73);
                          }

                          [*(*(&v202 + 1) + 8 * j) setRecordZone:v68];
                        }

                        v74 = [v73 countByEnumeratingWithState:&v202 objects:v238 count:16];
                      }

                      while (v74);
                    }

                    v63 = v184;
                    v62 = obja;
                    [*(*(a1 + 32) + 16) deleteObject:v65];
                  }

                  else
                  {
                    [v65 setDatabase:v182];
                    [v189 setObject:v65 forKey:v67];
                  }
                }

                else
                {
                  [*(*(a1 + 32) + 16) deleteObject:v65];
                }

                objc_autoreleasePoolPop(v66);
                ++v64;
              }

              while (v64 != v62);
              v62 = [v60 countByEnumeratingWithState:&v210 objects:v240 count:16];
            }

            while (v62);
          }
        }

        else
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *(*(*(a1 + 48) + 8) + 40) = v214;
        }

        objc_autoreleasePoolPop(context);
        if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
        {
LABEL_133:
          v77 = *(a1 + 40);
          if (*(*(v77 + 8) + 24) != 1)
          {
            goto LABEL_190;
          }

          v78 = *(a1 + 32);
          v79 = *(v78 + 24);
          if (v79)
          {
            if (*(v79 + 51) == 1)
            {
              v80 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:*(v78 + 32)];
              v81 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v80 inDatabaseWithScope:*(*(a1 + 32) + 32) forStore:*(*(a1 + 32) + 8) inContext:*(*(a1 + 32) + 16) error:&v214];
              if ([(NSManagedObject *)v81 isInserted])
              {
                *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) save:&v214];
              }

              if (*(*(*(a1 + 40) + 8) + 24) == 1)
              {
                v82 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKMirroredRelationship entityPath]];
                v237[0] = *(*(a1 + 32) + 8);
                -[NSFetchRequest setAffectedStores:](v82, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v237 count:1]);
                [(NSFetchRequest *)v82 setFetchBatchSize:500];
                v83 = *(a1 + 32);
                v84 = *(v83 + 16);
                v200[0] = MEMORY[0x1E69E9820];
                v200[1] = 3221225472;
                v200[2] = __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke_294;
                v200[3] = &unk_1E6EC5368;
                v200[4] = v81;
                v200[5] = v83;
                v201 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
                [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v82 usingManagedObjectContext:v84 andApplyBlock:v200];
              }

              else
              {
                v82 = 0;
              }

              v77 = *(a1 + 40);
              if ((*(*(v77 + 8) + 24) & 1) == 0)
              {
                goto LABEL_190;
              }
            }
          }

          v85 = *(*(a1 + 32) + 24);
          if (!v85 || *(v85 + 54) != 1)
          {
LABEL_163:
            v100 = *(a1 + 32);
            v101 = *(v100 + 24);
            if (v101)
            {
              if (*(v101 + 56) == 1)
              {
                *(*(*(a1 + 40) + 8) + 24) = [(PFCloudKitMetadataModelMigrator *)v100 checkForOrphanedMirroredRelationshipsInStore:*(v100 + 16) inManagedObjectContext:&v214 error:?];
                if (!*(*(*(a1 + 40) + 8) + 24))
                {
                  *(*(*(a1 + 48) + 8) + 40) = v214;
                  v77 = *(a1 + 40);
                  if ((*(*(v77 + 8) + 24) & 1) == 0)
                  {
                    goto LABEL_190;
                  }
                }
              }
            }

            if (v181)
            {
              if (([(PFCloudKitMetadataModelMigrator *)*(a1 + 32) checkForCorruptedRecordMetadataInStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v214 error:?]& 1) == 0)
              {
                *(*(*(a1 + 40) + 8) + 24) = 0;
                v102 = v214;
LABEL_172:
                v105 = !v181;
                v106 = a1;
                *(*(*(a1 + 48) + 8) + 40) = v102;
                goto LABEL_177;
              }
            }

            else
            {
              v103 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v214 error:?];
              v104 = v214;
              if (v214)
              {
                *(*(*(a1 + 40) + 8) + 24) = 0;
                v102 = v104;
                goto LABEL_172;
              }

              if (v103)
              {
                v105 = [objc_msgSend(v103 "transformedValue")];
LABEL_176:
                v106 = a1;
LABEL_177:
                if (*(*(*(v106 + 40) + 8) + 24) != 1)
                {
                  goto LABEL_184;
                }

                if ([*(*(v106 + 32) + 16) hasChanges])
                {
                  v107 = [*(*(a1 + 32) + 16) save:&v214];
                }

                else
                {
                  v108 = [_PFRoutines _isInMemoryStore:?];
                  v106 = a1;
                  if (v108)
                  {
                    goto LABEL_184;
                  }

                  v107 = [*(*(a1 + 32) + 16) setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), &v214}];
                }

                v106 = a1;
                if ((v107 & 1) == 0)
                {
                  *(*(*(a1 + 40) + 8) + 24) = 0;
                  v109 = v214;
                  v106 = a1;
                  *(*(*(a1 + 48) + 8) + 40) = v109;
                }

LABEL_184:
                v77 = *(v106 + 40);
                if (!(v105 & 1 | ((*(*(v77 + 8) + 24) & 1) == 0)))
                {
                  if (![(PFCloudKitMetadataModelMigrator *)*(a1 + 32) cleanUpAfterClientMigrationWithStore:*(*(a1 + 32) + 16) andContext:&v214 error:?])
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 0;
                    v111 = v214;
                    goto LABEL_189;
                  }

                  v110 = +[NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:transformedValue:forStore:intoManagedObjectContext:error:](NSCKMetadataEntry, @"PFCloudKitMetadataClientVersionHashesKey", [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) "persistentStoreCoordinator")], *(*(a1 + 32) + 8), *(*(a1 + 32) + 16), &v214);
                  v77 = *(a1 + 40);
                  if (!v110)
                  {
                    *(*(v77 + 8) + 24) = 0;
                    v111 = v214;
LABEL_189:
                    *(*(*(a1 + 48) + 8) + 40) = v111;
                    v77 = *(a1 + 40);
                  }
                }

LABEL_190:
                if (*(*(v77 + 8) + 24) == 1)
                {
                  PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
                  if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:PFBundleVersion integerValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v214 error:?]|| (v113 = *(a1 + 32), (v114 = *(v113 + 24)) != 0) && *(v114 + 49) == 1 && ![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:1 BOOLValue:*(v113 + 8) forStore:*(v113 + 16) intoManagedObjectContext:&v214 error:?])
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 0;
                    *(*(*(a1 + 48) + 8) + 40) = v214;
                  }
                }

                v16 = a1;
                if (*(*(*(a1 + 40) + 8) + 24) != 1)
                {
                  goto LABEL_213;
                }

                v115 = *(*(a1 + 32) + 24);
                if (v115 && *(v115 + 52) == 1)
                {
                  v116 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordZoneMetadata entityPath]];
                  v235[0] = @"needsImport";
                  v236[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
                  v235[1] = @"currentChangeToken";
                  v236[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
                  v235[2] = @"lastFetchDate";
                  v236[2] = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
                  -[NSBatchUpdateRequest setPropertiesToUpdate:](v116, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v236 forKeys:v235 count:3]);
                  [(NSBatchUpdateRequest *)v116 setResultType:0];
                  if (([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) executeRequest:v116 error:{&v214), "result"), "BOOLValue"}] & 1) == 0)
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 0;
                    *(*(*(a1 + 48) + 8) + 40) = v214;

                    v116 = 0;
                  }

                  v16 = a1;
                  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
                  {
                    goto LABEL_213;
                  }
                }

                *(*(*(a1 + 40) + 8) + 24) = [*(*(v16 + 32) + 16) save:&v214];
                if (*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 48) + 8) + 40) = v214, LOBYTE(v39) = *(*(*(a1 + 40) + 8) + 24), (v39))
                {
                  v117 = [objc_msgSend(*(*(a1 + 32) + 8) "metadata")];
                  v198 = 0u;
                  v199 = 0u;
                  v196 = 0u;
                  v197 = 0u;
                  v118 = +[NSCloudKitMirroringDelegatePreJazzkonMetadata allDefaultsKeys];
                  v119 = [v118 countByEnumeratingWithState:&v196 objects:v234 count:16];
                  if (v119)
                  {
                    v120 = *v197;
                    do
                    {
                      for (k = 0; k != v119; ++k)
                      {
                        if (*v197 != v120)
                        {
                          objc_enumerationMutation(v118);
                        }

                        [v117 removeObjectForKey:*(*(&v196 + 1) + 8 * k)];
                      }

                      v119 = [v118 countByEnumeratingWithState:&v196 objects:v234 count:16];
                    }

                    while (v119);
                  }

                  [v117 removeObjectForKey:@"_NSStoreAncillaryModelVersionHashesMetadataKey"];
                  [v117 removeObjectForKey:@"PFCloudKitMetadataNeedsZoneFetchAfterClientMigrationKey"];
                  [*(*(a1 + 32) + 8) setMetadata:v117];

                  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 16) save:&v214];
                  LOBYTE(v39) = *(*(*(a1 + 40) + 8) + 24);
                  if ((v39 & 1) == 0)
                  {
                    v15 = v214;
LABEL_24:
                    v16 = a1;
                    *(*(*(a1 + 48) + 8) + 40) = v15;
                    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
                    {
                      goto LABEL_213;
                    }

                    goto LABEL_25;
                  }
                }

                goto LABEL_212;
              }
            }

            v105 = 0;
            goto LABEL_176;
          }

          v86 = objc_autoreleasePoolPush();
          v87 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath]);
          -[NSFetchRequest setPredicate:](v87, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = 0"]);
          v88 = *(*(a1 + 32) + 16);
          if (!v88 || (v89 = [(NSManagedObjectContext *)v88 _countForFetchRequest_:v87 error:(*(*(a1 + 48) + 8) + 40)], (v90 = v89) == 0))
          {
LABEL_158:
            if (*(*(*(a1 + 40) + 8) + 24) == 1 && [*(*(a1 + 32) + 16) hasChanges] && (objc_msgSend(*(*(a1 + 32) + 16), "save:", *(*(a1 + 48) + 8) + 40) & 1) == 0)
            {
              *(*(*(a1 + 40) + 8) + 24) = 0;
              v99 = *(*(*(a1 + 48) + 8) + 40);
            }

            [*(*(a1 + 32) + 16) reset];
            objc_autoreleasePoolPop(v86);
            v77 = *(a1 + 40);
            if ((*(*(v77 + 8) + 24) & 1) == 0)
            {
              goto LABEL_190;
            }

            goto LABEL_163;
          }

          if (v89 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            v91 = *(*(*(a1 + 48) + 8) + 40);
            goto LABEL_158;
          }

          v92 = objc_autoreleasePoolPush();
          v93 = __PFCloudKitLoggingGetStream();
          v94 = v93;
          if (__ckLoggingOverride == 17)
          {
            v95 = OS_LOG_TYPE_FAULT;
          }

          else
          {
            v95 = 16 * (__ckLoggingOverride == 16);
          }

          if (os_log_type_enabled(v93, v95))
          {
            *buf = 136315650;
            *&buf[4] = "[PFCloudKitMetadataModelMigrator commitMigrationMetadataAndCleanup:]_block_invoke_2";
            *&buf[12] = 1024;
            *&buf[14] = 1017;
            *&buf[18] = 2048;
            *&buf[20] = v90;
            _os_log_impl(&dword_18565F000, v94, v95, "CoreData+CloudKit: %s(%d): Found %lu corrupt analyzed history rows, purging.", buf, 0x1Cu);
          }

          objc_autoreleasePoolPop(v92);
          v96 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKHistoryAnalyzerState entityPath])];
          [(NSBatchDeleteRequest *)v96 setResultType:0];
          if ([objc_msgSend(objc_msgSend(*(*(a1 + 32) + 16) executeRequest:v96 error:{*(*(a1 + 48) + 8) + 40), "result"), "BOOLValue"}])
          {
            v97 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:*(*(a1 + 48) + 8) + 40 error:?];
            if (v97)
            {
              [*(*(a1 + 32) + 16) deleteObject:v97];
LABEL_157:

              goto LABEL_158;
            }

            if (!*(*(*(a1 + 48) + 8) + 40))
            {
              goto LABEL_157;
            }
          }

          *(*(*(a1 + 40) + 8) + 24) = 0;
          v98 = *(*(*(a1 + 48) + 8) + 40);
          goto LABEL_157;
        }
      }

      else if (!*(*(*(a1 + 40) + 8) + 24))
      {
        goto LABEL_133;
      }

      if ([*(*(a1 + 32) + 16) hasChanges] && (objc_msgSend(*(*(a1 + 32) + 16), "save:", &v214) & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        *(*(*(a1 + 48) + 8) + 40) = v214;
      }

      goto LABEL_133;
    }

    v43 = [NSCKDatabaseMetadata databaseMetadataForScope:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) inContext:&v214 error:?];
    v44 = v214;
    if (v214)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      v45 = v44;
    }

    else
    {
      v51 = v43;
      [(NSManagedObject *)v43 setCurrentChangeToken:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 changeTokenForDatabaseScope:?]];
      [(NSManagedObject *)v51 setHasSubscription:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasInitializedDatabaseSubscription]];
      if (*(*(a1 + 32) + 32) == 2)
      {
        v52 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:2];
        v53 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v52 inDatabaseWithScope:*(*(a1 + 32) + 32) forStore:*(*(a1 + 32) + 8) inContext:*(*(a1 + 32) + 16) error:&v214];
        v54 = v214;
        if (v214)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *(*(*(a1 + 48) + 8) + 40) = v54;
        }

        else
        {
          v55 = v53;
          [(NSManagedObject *)v53 setHasSubscription:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasInitializedZoneSubscription]];
          [(NSManagedObject *)v55 setCurrentChangeToken:[(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 changeTokenForZoneWithID:v52 inDatabaseWithScope:*(*(a1 + 32) + 32)]];
          [(NSManagedObject *)v55 setHasRecordZone:0];
        }
      }

      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        if ([(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 lastHistoryToken])
        {
          v56 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 lastHistoryToken];
          if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v56 transformedValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v214 error:?])
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            *(*(*(a1 + 48) + 8) + 40) = v214;
          }
        }
      }

      if (*(*(*(a1 + 40) + 8) + 24) == 1)
      {
        if ([(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 ckIdentityRecordName])
        {
          v57 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 ckIdentityRecordName];
          if (![NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v57 stringValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v214 error:?])
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
            *(*(*(a1 + 48) + 8) + 40) = v214;
          }
        }
      }

      if (*(*(*(a1 + 40) + 8) + 24) != 1)
      {
        goto LABEL_91;
      }

      if (![(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasCheckedCKIdentity])
      {
        goto LABEL_91;
      }

      v58 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)v42 hasCheckedCKIdentity];
      if ([NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:v58 BOOLValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v214 error:?])
      {
        goto LABEL_91;
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      v45 = v214;
    }

    *(*(*(a1 + 48) + 8) + 40) = v45;
LABEL_91:

    goto LABEL_92;
  }

LABEL_212:
  v16 = a1;
  if ((v39 & 1) == 0)
  {
    goto LABEL_213;
  }

LABEL_25:
  v17 = [NSCKMetadataEntry entryForKey:*(*(v16 + 32) + 8) fromStore:*(*(v16 + 32) + 16) inManagedObjectContext:&v214 error:?];
  v18 = v214;
  if (v214)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v19 = v18;
  }

  else
  {
    v20 = [v17 BOOLValue];
    v16 = a1;
    if (!v20)
    {
      goto LABEL_213;
    }

    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    v188 = *(v21 + 8);
    v183 = v21;
    v229 = 0;
    v230 = &v229;
    v231 = 0x2020000000;
    v232 = 1;
    *v252 = 0;
    *&v252[8] = v252;
    *&v252[16] = 0x3052000000;
    v253 = __Block_byref_object_copy__50;
    v254 = __Block_byref_object_dispose__50;
    v255 = 0;
    v23 = [objc_msgSend(objc_msgSend(v22 "persistentStoreCoordinator")];
    v227 = 0u;
    v228 = 0u;
    v225 = 0u;
    v226 = 0u;
    obj = v23;
    v24 = [v23 countByEnumeratingWithState:&v225 objects:buf count:16];
    if (v24)
    {
      v25 = *v226;
LABEL_31:
      v26 = 0;
      while (1)
      {
        if (*v226 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v225 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        if ([objc_msgSend(v27 "attributesByName")] && objc_msgSend(objc_msgSend(v27, "attributesByName"), "objectForKey:", @"ckRecordSystemFields"))
        {
          v29 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [v27 name]);
          v247[0] = @"ckRecordID";
          v247[1] = @"ckRecordSystemFields";
          -[NSFetchRequest setPropertiesToFetch:](v29, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:v247 count:2]);
          -[NSFetchRequest setPredicate:](v29, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"ckRecordID"]);
          [(NSFetchRequest *)v29 setFetchBatchSize:200];
          v246 = v188;
          -[NSFetchRequest setAffectedStores:](v29, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v246 count:1]);
          v215 = MEMORY[0x1E69E9820];
          v216 = 3221225472;
          v217 = __107__PFCloudKitMetadataModelMigrator_migrateMetadataForObjectsInStore_toNSCKRecordMetadataUsingContext_error___block_invoke;
          v218 = &unk_1E6EC56C8;
          v219 = v183;
          v220 = v27;
          v221 = v188;
          v222 = v22;
          v223 = v252;
          v224 = &v229;
          [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v29 usingManagedObjectContext:v22 andApplyBlock:&v215];
          v30 = *(v230 + 24) == 0;
        }

        else
        {
          v30 = 0;
        }

        objc_autoreleasePoolPop(v28);
        if (v30)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [obj countByEnumeratingWithState:&v225 objects:buf count:16];
          if (v24)
          {
            goto LABEL_31;
          }

          break;
        }
      }
    }

    if ((v230[3] & 1) == 0)
    {
      v31 = *(*&v252[8] + 40);
      if (v31)
      {
        v214 = v31;
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v242 = 136315394;
          v243 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v244 = 1024;
          v245 = 1737;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v242, 0x12u);
        }

        v47 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *v242 = 136315394;
          v243 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v244 = 1024;
          v245 = 1737;
          _os_log_fault_impl(&dword_18565F000, v47, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v242, 0x12u);
        }
      }
    }

    *(*&v252[8] + 40) = 0;
    v48 = *(v230 + 24);
    _Block_object_dispose(v252, 8);
    _Block_object_dispose(&v229, 8);
    if (v48 != 1)
    {
      v50 = v214;
      v16 = a1;
      *(*(*(a1 + 48) + 8) + 40) = v50;
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_213;
    }

    if ([NSCKMetadataEntry updateOrInsertMetadataEntryWithKey:0 BOOLValue:*(*(a1 + 32) + 8) forStore:*(*(a1 + 32) + 16) intoManagedObjectContext:&v214 error:?])
    {
      v49 = [*(*(a1 + 32) + 16) save:&v214];
      v16 = a1;
      if (v49)
      {
        goto LABEL_213;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v19 = v214;
  }

  v16 = a1;
  *(*(*(a1 + 48) + 8) + 40) = v19;
LABEL_213:
  if (*(*(*(v16 + 40) + 8) + 24) == 1)
  {
    v190 = +[PFCloudKitMetadataModel _newMetadataModelV16];
    v194 = 0u;
    v195 = 0u;
    v192 = 0u;
    v193 = 0u;
    v122 = *(*(a1 + 32) + 24);
    if (v122)
    {
      v123 = *(v122 + 32);
    }

    else
    {
      v123 = 0;
    }

    objb = v123;
    v124 = [v123 countByEnumeratingWithState:&v192 objects:v233 count:16];
    if (v124)
    {
      v125 = *v193;
      do
      {
        v126 = 0;
        do
        {
          if (*v193 != v125)
          {
            objc_enumerationMutation(objb);
          }

          v127 = *(*(&v192 + 1) + 8 * v126);
          v128 = objc_autoreleasePoolPush();
          v129 = [objc_msgSend(v127 "entity")];
          v130 = objc_opt_class();
          if ([v129 isEqualToString:NSStringFromClass(v130)])
          {
            if (![objc_msgSend(v127 "columnName")])
            {
              goto LABEL_244;
            }

            v131 = *(a1 + 32);
            v132 = [(NSManagedObjectModel *)v190 entitiesByName];
            v133 = objc_opt_class();
            v134 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v132 objectForKeyedSubscript:{NSStringFromClass(v133)), "attributesByName"), "objectForKeyedSubscript:", @"encodedShareData"}];
            v135 = *(*(a1 + 32) + 24);
            if (v135 && (v136 = *(v135 + 72)) != 0)
            {
              v137 = *(v136 + 24);
            }

            else
            {
              v137 = 0;
            }

            v138 = objc_opt_class();
            v139 = [v137 objectForKeyedSubscript:NSStringFromClass(v138)];
            v140 = [(PFCloudKitMetadataModelMigrator *)v131 moveBinaryDataFromColumn:v127 forAttribute:v134 toMetadataAsset:v139 byRelationshipNamed:@"recordZone" error:&v214];
          }

          else
          {
            v141 = [objc_msgSend(v127 "entity")];
            v142 = objc_opt_class();
            if ([v141 isEqualToString:NSStringFromClass(v142)])
            {
              if ([objc_msgSend(v127 "columnName")])
              {
                v143 = *(a1 + 32);
                v144 = [(NSManagedObjectModel *)v190 entitiesByName];
                v145 = objc_opt_class();
                v146 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v144 objectForKeyedSubscript:{NSStringFromClass(v145)), "attributesByName"), "objectForKeyedSubscript:", @"ckRecordSystemFields"}];
                v147 = *(*(a1 + 32) + 24);
                if (v147 && (v148 = *(v147 + 72)) != 0)
                {
                  v149 = *(v148 + 24);
                }

                else
                {
                  v149 = 0;
                }
              }

              else
              {
                if (![objc_msgSend(v127 "columnName")])
                {
                  goto LABEL_244;
                }

                v143 = *(a1 + 32);
                v161 = [(NSManagedObjectModel *)v190 entitiesByName];
                v162 = objc_opt_class();
                v146 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v161 objectForKeyedSubscript:{NSStringFromClass(v162)), "attributesByName"), "objectForKeyedSubscript:", @"encodedRecord"}];
                v163 = *(*(a1 + 32) + 24);
                if (v163 && (v164 = *(v163 + 72)) != 0)
                {
                  v149 = *(v164 + 24);
                }

                else
                {
                  v149 = 0;
                }
              }

              v165 = objc_opt_class();
              v166 = [v149 objectForKeyedSubscript:NSStringFromClass(v165)];
              v140 = [(PFCloudKitMetadataModelMigrator *)v143 moveBinaryDataFromColumn:v127 forAttribute:v146 toMetadataAsset:v166 byRelationshipNamed:@"record" error:&v214];
            }

            else
            {
              v150 = [objc_msgSend(v127 "entity")];
              v151 = objc_opt_class();
              if (![v150 isEqualToString:NSStringFromClass(v151)] || !objc_msgSend(objc_msgSend(v127, "columnName"), "isEqualToString:", @"ZCKRECORDSYSTEMFIELDS"))
              {
                goto LABEL_244;
              }

              v152 = *(a1 + 32);
              v153 = [(NSManagedObjectModel *)v190 entitiesByName];
              v154 = objc_opt_class();
              v155 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v153 objectForKeyedSubscript:{NSStringFromClass(v154)), "attributesByName"), "objectForKeyedSubscript:", @"ckRecordSystemFields"}];
              v156 = *(*(a1 + 32) + 24);
              if (v156 && (v157 = *(v156 + 72)) != 0)
              {
                v158 = *(v157 + 24);
              }

              else
              {
                v158 = 0;
              }

              v159 = objc_opt_class();
              v160 = [v158 objectForKeyedSubscript:NSStringFromClass(v159)];
              v140 = [(PFCloudKitMetadataModelMigrator *)v152 moveBinaryDataFromColumn:v127 forAttribute:v155 toMetadataAsset:v160 byRelationshipNamed:@"mirroredRelationship" error:&v214];
            }
          }

          if ((v140 & 1) == 0)
          {
            goto LABEL_255;
          }

LABEL_244:
          v167 = *(a1 + 40);
          if (*(*(v167 + 8) + 24) != 1)
          {
            goto LABEL_254;
          }

          v168 = *(a1 + 32);
          if (v168)
          {
            *&v225 = 0;
            *(&v225 + 1) = &v225;
            *&v226 = 0x2020000000;
            BYTE8(v226) = 0;
            v215 = 0;
            v216 = &v215;
            v217 = 0x3052000000;
            v218 = __Block_byref_object_copy__50;
            v219 = __Block_byref_object_dispose__50;
            v220 = 0;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __52__PFCloudKitMetadataModelMigrator_dropColumn_error___block_invoke;
            *&buf[24] = &unk_1E6EC5790;
            *&buf[32] = v168;
            v249 = v127;
            v250 = &v225;
            v251 = &v215;
            v169 = [[NSSQLBlockRequestContext alloc] initWithBlock:buf context:0 sqlCore:*(v168 + 8)];
            [(NSSQLCore *)*(v168 + 8) dispatchRequest:v169 withRetries:0];

            if ((*(*(&v225 + 1) + 24) & 1) == 0)
            {
              v170 = *(v216 + 40);
              if (v170)
              {
                v214 = v170;
              }

              else
              {
                v171 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                {
                  *v252 = 136315394;
                  *&v252[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                  *&v252[12] = 1024;
                  *&v252[14] = 2359;
                  _os_log_error_impl(&dword_18565F000, v171, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v252, 0x12u);
                }

                v172 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v172, OS_LOG_TYPE_FAULT))
                {
                  *v252 = 136315394;
                  *&v252[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
                  *&v252[12] = 1024;
                  *&v252[14] = 2359;
                  _os_log_fault_impl(&dword_18565F000, v172, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v252, 0x12u);
                }
              }
            }

            *(v216 + 40) = 0;
            v173 = *(*(&v225 + 1) + 24);
            _Block_object_dispose(&v215, 8);
            _Block_object_dispose(&v225, 8);
            if (v173)
            {
LABEL_254:
              v174 = 1;
              goto LABEL_257;
            }

LABEL_255:
            v167 = *(a1 + 40);
          }

          *(*(v167 + 8) + 24) = 0;
          v174 = 0;
          *(*(*(a1 + 48) + 8) + 40) = v214;
LABEL_257:
          objc_autoreleasePoolPop(v128);
          if (!v174)
          {
            goto LABEL_265;
          }

          ++v126;
        }

        while (v124 != v126);
        v175 = [objb countByEnumeratingWithState:&v192 objects:v233 count:16];
        v124 = v175;
      }

      while (v175);
    }

LABEL_265:

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v176 = [NSCKMetadataEntry entryForKey:*(*(a1 + 32) + 8) fromStore:*(*(a1 + 32) + 16) inManagedObjectContext:&v214 error:?];
      if (v176)
      {
        [*(*(a1 + 32) + 16) deleteObject:v176];
        if (([*(*(a1 + 32) + 16) save:&v214] & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          v177 = v214;
LABEL_271:
          *(*(*(a1 + 48) + 8) + 40) = v177;
        }
      }

      else
      {
        v178 = v214;
        if (v214)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          v177 = v178;
          goto LABEL_271;
        }
      }
    }
  }

LABEL_272:
  v179 = *MEMORY[0x1E69E9840];
}

uint64_t __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke_294(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(a1[7] + 8) + 24) = 0;
    result = a3;
    v13 = a1 + 6;
    goto LABEL_15;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![v11 recordZone])
        {
          [v11 setRecordZone:a1[4]];
        }
      }

      v8 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  result = [*(a1[5] + 16) hasChanges];
  if (result)
  {
    v13 = a1 + 6;
    result = [*(a1[5] + 16) save:*(a1[6] + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(a1[7] + 8) + 24) = 0;
      result = *(*(a1[6] + 8) + 40);
LABEL_15:
      *(*(*v13 + 8) + 40) = result;
      *a4 = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)checkForOrphanedMirroredRelationshipsInStore:(void *)a3 inManagedObjectContext:(void *)a4 error:
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v28 = 0;
    goto LABEL_35;
  }

  v46[0] = 0;
  v36 = [a2 persistentStoreCoordinator];
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  [(NSFetchRequest *)v7 setPropertiesToFetch:&unk_1EF43D858];
  [(NSFetchRequest *)v7 setPropertiesToGroupBy:&unk_1EF43D870];
  [(NSFetchRequest *)v7 setResultType:2];
  v8 = [a3 executeFetchRequest:v7 error:v46];
  if (!v8)
  {
    v26 = v46[0];

    goto LABEL_25;
  }

  v41 = [v36 managedObjectModel];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v61 count:16];
  if (!v9)
  {
    goto LABEL_28;
  }

  v38 = a3;
  v39 = v9;
  v33 = a2;
  v40 = *v43;
  v35 = 1;
  do
  {
    v10 = 0;
    do
    {
      if (*v43 != v40)
      {
        objc_enumerationMutation(v8);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [v11 objectForKeyedSubscript:@"cdEntityName"];
      v14 = [v11 objectForKeyedSubscript:@"relationshipName"];
      if ([objc_msgSend(objc_msgSend(objc_msgSend(v41 "entitiesByName")])
      {
        goto LABEL_16;
      }

      v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
      -[NSFetchRequest setPredicate:](v15, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"cdEntityName = %@ AND relationshipName = %@", v13, v14]);
      v16 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v15];
      [(NSBatchDeleteRequest *)v16 setResultType:2];
      v17 = [v38 executeRequest:v16 error:v46];
      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v20 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v21 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v21 = 16 * (__ckLoggingOverride == 16);
        }

        type = v21;
        if (os_log_type_enabled(Stream, v21))
        {
          v22 = [v17 result];
          *buf = 136316674;
          v48 = "[PFCloudKitMetadataModelMigrator checkForOrphanedMirroredRelationshipsInStore:inManagedObjectContext:error:]";
          v49 = 1024;
          v50 = 1662;
          v51 = 2112;
          v52 = a1;
          v53 = 2112;
          v54 = v22;
          v55 = 2112;
          v56 = v13;
          v57 = 2112;
          v58 = v14;
          v59 = 2112;
          v60 = v33;
          _os_log_impl(&dword_18565F000, v20, type, "CoreData+CloudKit: %s(%d): %@ deleted %@ mirrored relationship entries because %@:%@ is no longer in the managed object model of this store: %@", buf, 0x44u);
        }

        objc_autoreleasePoolPop(v18);

LABEL_16:
        v23 = 1;
        goto LABEL_17;
      }

      v24 = v46[0];

      v23 = 0;
      v35 = 0;
LABEL_17:
      objc_autoreleasePoolPop(v12);
      if (!v23)
      {
        goto LABEL_22;
      }

      ++v10;
    }

    while (v39 != v10);
    v25 = [v8 countByEnumeratingWithState:&v42 objects:v61 count:16];
    v39 = v25;
  }

  while (v25);
LABEL_22:
  if (v35)
  {
LABEL_28:
    v28 = 1;
    goto LABEL_34;
  }

LABEL_25:
  v27 = v46[0];
  if (v27)
  {
    if (a4)
    {
      v28 = 0;
      *a4 = v27;
      goto LABEL_34;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
      v49 = 1024;
      v50 = 1685;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v48 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
      v49 = 1024;
      v50 = 1685;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  v28 = 0;
LABEL_34:

LABEL_35:
  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

- (uint64_t)checkForCorruptedRecordMetadataInStore:(void *)a3 inManagedObjectContext:(void *)a4 error:
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 1;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3052000000;
    v35 = __Block_byref_object_copy__50;
    v36 = __Block_byref_object_dispose__50;
    v37 = 0;
    v7 = [objc_msgSend(a3 "persistentStoreCoordinator")];
    v8 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
    [(NSFetchRequest *)v8 setFetchBatchSize:500];
    [(NSFetchRequest *)v8 setPropertiesToFetch:&unk_1EF43D8B8];
    v49[0] = a2;
    -[NSFetchRequest setAffectedStores:](v8, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1]);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __103__PFCloudKitMetadataModelMigrator_checkForCorruptedRecordMetadataInStore_inManagedObjectContext_error___block_invoke;
    v27[3] = &unk_1E6EC5718;
    v27[4] = a2;
    v27[5] = v7;
    v27[6] = &v28;
    v27[7] = &v38;
    v27[8] = &v32;
    [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v8 usingManagedObjectContext:a3 andApplyBlock:v27];
    v9 = *(v39 + 24);
    if (v9 == 1 && *(v29 + 24) == 1)
    {
      v10 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:+[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath])];
      [(NSBatchDeleteRequest *)v10 setResultType:0];
      v48 = a2;
      -[NSPersistentStoreRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1]);
      v11 = [objc_msgSend(objc_msgSend(a3 executeRequest:v10 error:{v33 + 5), "result"), "BOOLValue"}];
      v12 = objc_autoreleasePoolPush();
      if (v11)
      {
        Stream = __PFCloudKitLoggingGetStream();
        v14 = Stream;
        v15 = __ckLoggingOverride;
        if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
        {
          v15 = OS_LOG_TYPE_INFO;
        }

        if (os_log_type_enabled(Stream, v15))
        {
          *buf = 136315394;
          v43 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]";
          v44 = 1024;
          v45 = 2030;
          _os_log_impl(&dword_18565F000, v14, v15, "CoreData+CloudKit: %s(%d): Successfully purged record metadata during migration due to corrupted metadatas.", buf, 0x12u);
        }

        objc_autoreleasePoolPop(v12);
        *(v39 + 24) = 1;
      }

      else
      {
        v16 = __PFCloudKitLoggingGetStream();
        v17 = v16;
        if (__ckLoggingOverride == 17)
        {
          v18 = OS_LOG_TYPE_FAULT;
        }

        else
        {
          v18 = OS_LOG_TYPE_ERROR;
        }

        if (os_log_type_enabled(v16, v18))
        {
          v19 = v33[5];
          *buf = 136315650;
          v43 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]";
          v44 = 1024;
          v45 = 2033;
          v46 = 2112;
          v47 = v19;
          _os_log_impl(&dword_18565F000, v17, v18, "CoreData+CloudKit: %s(%d): Failed to purged corrupted record metadata during migration: %@", buf, 0x1Cu);
        }

        objc_autoreleasePoolPop(v12);
        *(v39 + 24) = 0;
        v20 = v33[5];
      }

      v9 = *(v39 + 24);
    }

    if (!v9)
    {
      v24 = v33[5];
      if (v24)
      {
        if (a4)
        {
          *a4 = v24;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v44 = 1024;
          v45 = 2047;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v26 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v43 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v44 = 1024;
          v45 = 2047;
          _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v33[5] = 0;
    v21 = *(v39 + 24);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

- (uint64_t)cleanUpAfterClientMigrationWithStore:(void *)a3 andContext:(void *)a4 error:
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 1;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = __Block_byref_object_copy__50;
    v40 = __Block_byref_object_dispose__50;
    v41 = 0;
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = [a2 model];
    if (v6)
    {
      v6 = v6[4];
    }

    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];
    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    v9 = [a2 model];
    if (v9)
    {
      v9 = v9[4];
    }

    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = [a2 model];
    if (v11)
    {
      v12 = *(v11 + 32);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 countByEnumeratingWithState:&v32 objects:v52 count:16];
    if (v13)
    {
      v14 = *v33;
      do
      {
        v15 = 0;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v32 + 1) + 8 * v15);
          if (v16)
          {
            v17 = v16[46];
          }

          else
          {
            v17 = 0;
          }

          [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v17)}];
          [v10 addObject:{objc_msgSend(v16, "name")}];
          ++v15;
        }

        while (v13 != v15);
        v18 = [v12 countByEnumeratingWithState:&v32 objects:v52 count:16];
        v13 = v18;
      }

      while (v18);
    }

    v19 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
    -[NSFetchRequest setPredicate:](v19, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (entityId IN %@)", v7]);
    v20 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v19];
    [(NSBatchDeleteRequest *)v20 setResultType:0];
    v51 = a2;
    -[NSPersistentStoreRequest setAffectedStores:](v20, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1]);
    if ([objc_msgSend(objc_msgSend(a3 executeRequest:v20 error:{v37 + 5), "result"), "BOOLValue"}])
    {
      v21 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKMirroredRelationship entityPath]];
      [(NSFetchRequest *)v21 setFetchBatchSize:500];
      [(NSFetchRequest *)v21 setPropertiesToFetch:&unk_1EF43D8D0];
      v50 = a2;
      -[NSFetchRequest setAffectedStores:](v21, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1]);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __89__PFCloudKitMetadataModelMigrator_cleanUpAfterClientMigrationWithStore_andContext_error___block_invoke;
      v31[3] = &unk_1E6EC5740;
      v31[4] = v10;
      v31[5] = a2;
      v31[6] = a3;
      v31[7] = &v36;
      v31[8] = &v42;
      [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v21 usingManagedObjectContext:a3 andApplyBlock:v31];
    }

    else
    {
      *(v43 + 24) = 0;
      v22 = v37[5];
    }

    if ((v43[3] & 1) == 0)
    {
      v26 = v37[5];
      if (v26)
      {
        if (a4)
        {
          *a4 = v26;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v48 = 1024;
          v49 = 2143;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v28 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v48 = 1024;
          v49 = 2143;
          _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v37[5] = 0;
    v23 = *(v43 + 24);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (uint64_t)moveBinaryDataFromColumn:(uint64_t)a3 forAttribute:(uint64_t)a4 toMetadataAsset:(uint64_t)a5 byRelationshipNamed:(void *)a6 error:
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v15 = MEMORY[0x1E695DF30];
      v40 = @"selector";
      v41[0] = NSStringFromSelector(sel_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error_);
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      objc_exception_throw([v15 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing 'column'" userInfo:v16]);
    }

    if (!a3)
    {
      v17 = MEMORY[0x1E695DF30];
      v38 = @"selector";
      v39 = NSStringFromSelector(sel_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error_);
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      objc_exception_throw([v17 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing 'attribute'" userInfo:v18]);
    }

    if (!a4)
    {
      v19 = MEMORY[0x1E695DF30];
      v36 = @"selector";
      v37 = NSStringFromSelector(sel_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error_);
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      objc_exception_throw([v19 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Missing 'metadataAssetEntity'" userInfo:v20]);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__50;
    v26 = __Block_byref_object_dispose__50;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __115__PFCloudKitMetadataModelMigrator_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error___block_invoke;
    v21[3] = &unk_1E6EC5768;
    v21[4] = a2;
    v21[5] = a4;
    v21[6] = a5;
    v21[7] = a3;
    v21[8] = &v28;
    v21[9] = &v22;
    v8 = [[NSSQLBlockRequestContext alloc] initWithBlock:v21 context:0 sqlCore:*(a1 + 8)];
    [(NSSQLCore *)*(a1 + 8) dispatchRequest:v8 withRetries:0];

    if ((v29[3] & 1) == 0)
    {
      v12 = v23[5];
      if (v12)
      {
        if (a6)
        {
          *a6 = v12;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v34 = 1024;
          v35 = 2287;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v34 = 1024;
          v35 = 2287;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v23[5] = 0;
    v9 = *(v29 + 24);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (uint64_t)checkAndPerformMigrationIfNecessary:(uint64_t *)a1
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v21 = 0;
    goto LABEL_28;
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__50;
  v38 = __Block_byref_object_dispose__50;
  v39 = 0;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __71__PFCloudKitMetadataModelMigrator_checkAndPerformMigrationIfNecessary___block_invoke;
  v30 = &unk_1E6EC5678;
  v31 = a1;
  v32 = &v40;
  v33 = &v34;
  v4 = [[NSSQLBlockRequestContext alloc] initWithBlock:&v27 context:0 sqlCore:a1[1]];
  [(NSSQLCore *)a1[1] dispatchRequest:v4 withRetries:0];

  v5 = *(v41 + 24);
  if (v5 != 1)
  {
    goto LABEL_26;
  }

  v6 = v35;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3052000000;
  v48 = __Block_byref_object_copy__50;
  v49 = __Block_byref_object_dispose__50;
  v50 = 0;
  v7 = a1[2];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __69__PFCloudKitMetadataModelMigrator_commitMigrationMetadataAndCleanup___block_invoke;
  v44[3] = &unk_1E6EC1EB8;
  v44[4] = a1;
  v44[5] = &v51;
  v44[6] = &v45;
  [v7 performBlockAndWait:{v44, v27, v28, v29, v30, v31, v32, v33}];
  LODWORD(v8) = *(v52 + 24);
  if (v8 != 1)
  {
    goto LABEL_17;
  }

  if (a1[4] == 2)
  {
    v9 = a1[1];
    v10 = v46;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 1;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3052000000;
    v58 = __Block_byref_object_copy__50;
    v59 = __Block_byref_object_dispose__50;
    v60 = 0;
    v8 = [v9 persistentStoreCoordinator];
    v11 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v11 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    [(NSManagedObjectContext *)v11 setPersistentStoreCoordinator:v8];
    [(NSManagedObjectContext *)v11 _setAllowAncillaryEntities:1];
    if (v11)
    {
      *&v11->_flags &= ~0x8000000u;
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke;
    v70 = &unk_1E6EC56A0;
    v71 = a1;
    v72 = v9;
    v75 = &v55;
    v76 = &v61;
    v73 = v11;
    v74 = v8;
    [(NSManagedObjectContext *)v11 performBlockAndWait:buf];
    if ((v62[3] & 1) == 0)
    {
      v12 = v56[5];
      if (v12)
      {
        v10[5] = v12;
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v65 = 136315394;
          v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v67 = 1024;
          v68 = 1625;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v65, 0x12u);
        }

        v14 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *v65 = 136315394;
          v66 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          v67 = 1024;
          v68 = 1625;
          _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v65, 0x12u);
        }
      }
    }

    v56[5] = 0;
    LOBYTE(v8) = *(v62 + 24);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);
    *(v52 + 24) = v8;
  }

  if ((v8 & 1) == 0)
  {
    v15 = v46[5];
    LODWORD(v8) = *(v52 + 24);
LABEL_17:
    if (!v8)
    {
      v16 = v46[5];
      if (v16)
      {
        v6[5] = v16;
      }

      else
      {
        v17 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1334;
          _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1334;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }
  }

  v46[5] = 0;
  v19 = *(v52 + 24);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);
  *(v41 + 24) = v19;
  if ((v19 & 1) == 0)
  {
    v20 = v35[5];
    v5 = *(v41 + 24);
LABEL_26:
    if (!v5)
    {
      v24 = v35[5];
      if (v24)
      {
        if (a2)
        {
          *a2 = v24;
        }
      }

      else
      {
        v25 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1377;
          _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v26 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
          *&buf[12] = 1024;
          *&buf[14] = 1377;
          _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }
  }

  v35[5] = 0;
  v21 = *(v41 + 24);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
LABEL_28:
  v22 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

void __71__PFCloudKitMetadataModelMigrator_checkAndPerformMigrationIfNecessary___block_invoke(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v83[16] = *MEMORY[0x1E69E9840];
  *(*(a1[5] + 8) + 24) = 1;
  v3 = a1[4];
  if (a2)
  {
    v4 = *(a2 + 24);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v5 = *(a1[6] + 8);
  *&v62 = 0;
  *(&v62 + 1) = &v62;
  *&v63 = 0x2020000000;
  BYTE8(v63) = 1;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3052000000;
  v80 = __Block_byref_object_copy__50;
  v81 = __Block_byref_object_dispose__50;
  v82 = 0;
  PFBundleVersion = +[_PFRoutines _getPFBundleVersionNumber];
  v7 = [PFCloudKitMetadataModel newMetadataModelForFrameworkVersion:?];
  v9 = [[NSSQLModel alloc] initWithManagedObjectModel:v7];
  v10 = v3[3];
  if (v10)
  {
    objc_setProperty_nonatomic(v10, v8, v7, 64);
    v12 = v3[3];
    if (v12)
    {
      objc_setProperty_nonatomic(v12, v11, v9, 72);
    }
  }

  v76[0] = 0;
  v13 = [PFCloudKitMetadataModel identifyModelForStore:v4 withConnection:v76 hasOldMetadataTables:?];
  v15 = [[NSSQLModel alloc] initWithManagedObjectModel:v13];
  v16 = v3[3];
  if (v16)
  {
    objc_setProperty_nonatomic(v16, v14, v13, 80);
    v18 = v3[3];
    if (v18)
    {
      objc_setProperty_nonatomic(v18, v17, v15, 88);
      v19 = v3[3];
      if (v19)
      {
        *(v19 + 50) = v76[0];
      }
    }
  }

  if ([objc_msgSend(v3[1] "metadata")])
  {
    v20 = v3[3];
    if (v20)
    {
      *(v20 + 52) = 1;
    }
  }

  v21 = objc_opt_class();
  v22 = [-[NSSQLModel entityNamed:](v9 entityNamed:{NSStringFromClass(v21)), "tableName"}];
  if (v4 && ([(NSSQLiteConnection *)v4 _hasTableWithName:v22 isTemp:0]& 1) != 0)
  {
    *v74 = 0;
    *&v74[8] = v74;
    *&v74[16] = 0x2020000000;
    v75 = 0;
    if (v9)
    {
      entitiesByName = v9->_entitiesByName;
    }

    else
    {
      entitiesByName = 0;
    }

    *&v66 = MEMORY[0x1E69E9820];
    *(&v66 + 1) = 3221225472;
    *&v67 = __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke;
    *(&v67 + 1) = &unk_1E6EC5628;
    *&v68 = v15;
    *(&v68 + 1) = v74;
    [(NSKnownKeysDictionary *)entitiesByName enumerateKeysAndObjectsUsingBlock:&v66];
    if (*(*&v74[8] + 24) == 1)
    {
      v24 = objc_autoreleasePoolPush();
      Stream = __PFCloudKitLoggingGetStream();
      v26 = Stream;
      v27 = __ckLoggingOverride;
      if (__ckLoggingOverride && __ckLoggingOverride != 16 && __ckLoggingOverride != 17)
      {
        v27 = OS_LOG_TYPE_INFO;
      }

      if (os_log_type_enabled(Stream, v27))
      {
        *buf = 136315394;
        v71 = "[PFCloudKitMetadataModelMigrator prepareContextWithConnection:error:]";
        v72 = 1024;
        v73 = 124;
        _os_log_impl(&dword_18565F000, v26, v27, "CoreData+CloudKit: %s(%d): Migration discovered mutated entity IDs, precomputing z_ent changes.", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [(PFCloudKitMetadataModelMigrator *)v3 computeAncillaryEntityPrimaryKeyTableEntriesForStore:v78 + 5 error:?];
      *(*(&v62 + 1) + 24) = v28;
      if ((v28 & 1) == 0)
      {
        v29 = v78[5];
      }
    }

    v30 = v3[2];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __70__PFCloudKitMetadataModelMigrator_prepareContextWithConnection_error___block_invoke_8;
    v83[3] = &unk_1E6EC1EB8;
    v83[4] = v3;
    v83[5] = &v62;
    v83[6] = &v77;
    [v30 performBlockAndWait:v83];
    _Block_object_dispose(v74, 8);
  }

  else
  {
    v31 = v3[3];
    if (v31)
    {
      *(v31 + 49) = 1;
      v32 = v3[3];
      if (v32)
      {
        *(v32 + 53) = 1;
      }
    }
  }

  if ((*(*(&v62 + 1) + 24) & 1) == 0)
  {
    v33 = v78[5];
    if (v33)
    {
      *(v5 + 40) = v33;
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *v74 = 136315394;
        *&v74[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&v74[12] = 1024;
        *&v74[14] = 188;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v74, 0x12u);
      }

      v35 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *v74 = 136315394;
        *&v74[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        *&v74[12] = 1024;
        *&v74[14] = 188;
        _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v74, 0x12u);
      }
    }
  }

  v78[5] = 0;
  v36 = *(*(&v62 + 1) + 24);
  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v62, 8);
  if (v36 == 1)
  {
    v37 = v2 ? *(v2 + 24) : 0;
    if ([(PFCloudKitMetadataModelMigrator *)a1[4] calculateMigrationStepsWithConnection:v37 error:(*(a1[6] + 8) + 40)])
    {
      v38 = a1[4];
      if (v2)
      {
        v2 = *(v2 + 24);
      }

      if (v38)
      {
        v39 = *(a1[6] + 8);
        v40 = *(v38 + 24);
        if (v40 && *(v40 + 48) == 1)
        {
          [(NSSQLiteConnection *)v2 connect];
          [(NSSQLiteConnection *)v2 beginTransaction];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v41 = *(v38 + 24);
          if (v41)
          {
            v42 = *(v41 + 24);
          }

          else
          {
            v42 = 0;
          }

          v43 = [v42 countByEnumeratingWithState:&v66 objects:v83 count:16];
          if (v43)
          {
            v44 = *v67;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v67 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v46 = *(*(&v66 + 1) + 8 * i);
                v47 = objc_autoreleasePoolPush();
                [(NSSQLiteConnection *)v2 dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity:v46];
                objc_autoreleasePoolPop(v47);
              }

              v43 = [v42 countByEnumeratingWithState:&v66 objects:v83 count:16];
            }

            while (v43);
          }

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v48 = *(v38 + 24);
          if (v48)
          {
            v49 = *(v48 + 8);
          }

          else
          {
            v49 = 0;
          }

          v50 = [v49 countByEnumeratingWithState:&v62 objects:&v77 count:16];
          if (v50)
          {
            v51 = *v63;
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v63 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                v53 = *(*(&v62 + 1) + 8 * j);
                v54 = objc_autoreleasePoolPush();
                [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v53];
                objc_autoreleasePoolPop(v54);
              }

              v50 = [v49 countByEnumeratingWithState:&v62 objects:&v77 count:16];
            }

            while (v50);
          }

          v55 = *(v38 + 24);
          if (v55)
          {
            v56 = *(v55 + 16);
          }

          else
          {
            v56 = 0;
          }

          [(NSSQLiteConnection *)v2 createTablesForEntities:v56];
          [(NSSQLiteConnection *)v2 commitTransaction];
        }

        [(NSSQLiteConnection *)v2 endFetchAndRecycleStatement:?];
        v57 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

LABEL_68:
  *(*(a1[5] + 8) + 24) = 0;
  v58 = *(*(a1[6] + 8) + 40);
  v59 = *MEMORY[0x1E69E9840];

  v60 = v58;
}

void __94__PFCloudKitMetadataModelMigrator_computeAncillaryEntityPrimaryKeyTableEntriesForStore_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v34 = v3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 adapter];
  v31 = a1;
  v6 = [objc_msgSend(*(a1 + 32) "ancillarySQLModels")];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (v6)
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v33 = *v40;
    obj = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [NSSQLiteStatement alloc];
        if (v10)
        {
          v13 = v10[46];
        }

        else
        {
          v13 = 0;
        }

        v14 = -[NSSQLiteStatement initWithEntity:sqlString:](v12, "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@ WHERE Z_ENT = %@", @"Z_PRIMARYKEY", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v13)]);
        [v4 addObject:v14];

        v15 = [(NSSQLiteAdapter *)v5 newPrimaryKeyInitializeStatementForEntity:v10 withInitialMaxPK:0];
        [v4 addObject:v15];

        v16 = [v10 tableName];
        if (v3 && [(NSSQLiteConnection *)v3 _hasTableWithName:v16 isTemp:0])
        {
          v17 = [(NSSQLiteAdapter *)v5 newSimplePrimaryKeyUpdateStatementForEntity:v10];
          [v4 addObject:v17];

          v18 = [NSSQLiteStatement alloc];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [v10 tableName];
          if (v10)
          {
            v21 = v10[46];
          }

          else
          {
            v21 = 0;
          }

          v22 = -[NSSQLiteStatement initWithEntity:sqlString:](v18, "initWithEntity:sqlString:", 0, [v19 stringWithFormat:@"UPDATE %@ SET Z_ENT = %@", v20, objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v21)]);
          [v4 addObject:v22];
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v8 != v9);
      v23 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      v8 = v23;
    }

    while (v23);
  }

  v24 = v3;
  [(NSSQLiteConnection *)v3 connect];
  [(NSSQLiteConnection *)v3 beginTransaction];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = [v4 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v25)
  {
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v4);
        }

        v28 = *(*(&v35 + 1) + 8 * i);
        v29 = objc_autoreleasePoolPush();
        v24 = v34;
        [(NSSQLiteConnection *)v34 prepareAndExecuteSQLStatement:v28];
        objc_autoreleasePoolPop(v29);
      }

      v25 = [v4 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v25);
  }

  [(NSSQLiteConnection *)v24 commitTransaction];
  *(*(*(v31 + 40) + 8) + 24) = 1;
  [(NSSQLiteConnection *)v24 endFetchAndRecycleStatement:?];

  v30 = *MEMORY[0x1E69E9840];
}

void __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
  v3 = [v2 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
  v4 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v3 inDatabaseWithScope:*(*(a1 + 32) + 32) forStore:*(a1 + 40) inContext:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
  v5 = v4;
  if (v4)
  {
    if ([(NSManagedObject *)v4 isInserted])
    {
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) save:*(*(a1 + 64) + 8) + 40];
      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        v6 = *(*(*(a1 + 64) + 8) + 40);
      }
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v7 = [(NSManagedObject *)v5 objectID];
      v8 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
      [(NSFetchRequest *)v8 setRelationshipKeyPathsForPrefetching:&unk_1EF43D840];
      v46[0] = *(a1 + 40);
      -[NSFetchRequest setAffectedStores:](v8, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1]);
      [(NSFetchRequest *)v8 setFetchBatchSize:200];
      v9 = *(a1 + 48);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke_2;
      v32[3] = &unk_1E6EC5368;
      v32[4] = v9;
      v32[5] = v7;
      v33 = *(a1 + 64);
      [_PFRoutines efficientlyEnumerateManagedObjectsInFetchRequest:v8 usingManagedObjectContext:v9 andApplyBlock:v32];
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v10 = *(*(*(a1 + 64) + 8) + 40);
  }

  v11 = *(*(a1 + 32) + 24);
  if (v11 && *(v11 + 53) == 1)
  {
    v12 = *(a1 + 56);
    v45 = *(a1 + 40);
    v13 = [v12 currentPersistentHistoryTokenFromStores:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v45, 1)}];
    if (v13)
    {
      v14 = [objc_msgSend(v13 "storeTokens")];
    }

    else
    {
      v14 = &unk_1EF435F38;
    }

    v15 = *(*(a1 + 32) + 24);
    if (v15)
    {
      v16 = *(v15 + 64);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 entitiesByName];
    v18 = objc_opt_class();
    v19 = [v17 objectForKeyedSubscript:NSStringFromClass(v18)];
    if ([objc_msgSend(v19 "propertiesByName")])
    {
      v20 = @"systemFieldsAsset";
    }

    else
    {
      if (![objc_msgSend(v19 "propertiesByName")])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v44 = v19;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to find a system fields attribute on entity: %@\n", buf, 0xCu);
        }

        v22 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v44 = v19;
          _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Unable to find a system fields attribute on entity: %@", buf, 0xCu);
        }
      }

      v20 = @"ckRecordSystemFields";
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v23 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
      -[NSBatchUpdateRequest setPredicate:](v23, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", v20]);
      v41[0] = @"needsUpload";
      v24 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E118]];
      v41[1] = @"pendingExportTransactionNumber";
      v42[0] = v24;
      v42[1] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v14];
      -[NSBatchUpdateRequest setPropertiesToUpdate:](v23, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2]);
      v40 = *(a1 + 40);
      -[NSPersistentStoreRequest setAffectedStores:](v23, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1]);
      [(NSBatchUpdateRequest *)v23 setResultType:0];
      if (([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v23 error:{*(*(a1 + 64) + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v25 = *(*(*(a1 + 64) + 8) + 40);
      }

      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v26 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
        -[NSBatchUpdateRequest setPredicate:](v26, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v20]);
        v38 = @"lastExportedTransactionNumber";
        v39 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v14];
        -[NSBatchUpdateRequest setPropertiesToUpdate:](v26, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1]);
        [(NSBatchUpdateRequest *)v26 setResultType:0];
        v37 = *(a1 + 40);
        -[NSPersistentStoreRequest setAffectedStores:](v26, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1]);
        if (([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v26 error:{*(*(a1 + 64) + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
        {
          *(*(*(a1 + 72) + 8) + 24) = 0;
          v27 = *(*(*(a1 + 64) + 8) + 40);
        }
      }
    }
  }

  v28 = *(*(a1 + 32) + 24);
  if (v28 && *(v28 + 55) == 1 && *(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v29 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordZoneMetadata entityPath]];
    -[NSBatchUpdateRequest setPredicate:](v29, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"needsNewShareInvitation == NULL"]);
    v35 = @"needsNewShareInvitation";
    v36 = [MEMORY[0x1E696ABC8] expressionForConstantValue:MEMORY[0x1E695E110]];
    -[NSBatchUpdateRequest setPropertiesToUpdate:](v29, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1]);
    [(NSBatchUpdateRequest *)v29 setResultType:0];
    v34 = *(a1 + 40);
    -[NSPersistentStoreRequest setAffectedStores:](v29, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1]);
    if (([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v29 error:{*(*(a1 + 64) + 8) + 40), "result"), "BOOLValue"}] & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v30 = *(*(*(a1 + 64) + 8) + 40);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __85__PFCloudKitMetadataModelMigrator_checkForRecordMetadataZoneCorruptionInStore_error___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v4 = a4;
  v40 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 48) + 8) + 40) = result;
LABEL_37:
    *v4 = 1;
    goto LABEL_38;
  }

  v6 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:*(*(a1 + 48) + 8) + 40];
  if (v6)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v7)
    {
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = [v10 recordZone];
          if (![v12 ckRecordZoneName] || objc_msgSend(v12, "isDeleted"))
          {
            v13 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v15 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v16 = 17;
            }

            else
            {
              v16 = 2;
            }

            if (__ckLoggingOverride == 16)
            {
              v16 = 16;
            }

            if (__ckLoggingOverride == 1)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            if (!__ckLoggingOverride)
            {
              v17 = 0;
            }

            if (__ckLoggingOverride <= 0xFu)
            {
              v18 = v17;
            }

            else
            {
              v18 = v16;
            }

            if (os_log_type_enabled(Stream, v18))
            {
              v19 = [v10 objectID];
              *buf = 136315650;
              v34 = "[PFCloudKitMetadataModelMigrator checkForRecordMetadataZoneCorruptionInStore:error:]_block_invoke_2";
              v35 = 1024;
              v36 = 1510;
              v37 = 2112;
              v38 = v19;
              _os_log_impl(&dword_18565F000, v15, v18, "CoreData+CloudKit: %s(%d): Found corrupt zone on record metadata: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v13);
            [v10 setRecordZone:v6];
          }

          objc_autoreleasePoolPop(v11);
        }

        v7 = [a2 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v7);
    }

    result = [*(a1 + 32) save:*(*(a1 + 48) + 8) + 40];
    if ((result & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      result = *(*(*(a1 + 48) + 8) + 40);
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v24 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v34 = v24;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to refresh zone for assignment during corrupt zone cleanup: %@\n", buf, 0xCu);
    }

    v22 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v25 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412290;
      v34 = v25;
      _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Failed to refresh zone for assignment during corrupt zone cleanup: %@", buf, 0xCu);
    }

    result = *(*(*(a1 + 48) + 8) + 40);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v4 = a4;
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_37;
  }

LABEL_38:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void __107__PFCloudKitMetadataModelMigrator_migrateMetadataForObjectsInStore_toNSCKRecordMetadataUsingContext_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(*(a1[9] + 8) + 24) = 0;
    *(*(a1[8] + 8) + 40) = a3;
LABEL_33:
    *a4 = 1;
    goto LABEL_34;
  }

  v4 = a1[4];
  if (!v4)
  {
LABEL_32:
    *(*(a1[9] + 8) + 24) = 0;
    v24 = *(*(a1[8] + 8) + 40);
    goto LABEL_33;
  }

  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v28 = *(a1[8] + 8);
  v39 = 0;
  v30 = [PFCloudKitSerializer defaultRecordZoneIDForDatabaseScope:*(v4 + 32)];
  v32 = [objc_alloc(getCloudKitCKRecordZoneClass[0]()) initWithZoneID:v30];
  v34 = +[NSCKRecordMetadata createMapOfMetadataMatchingObjectIDs:inStore:inManagedObjectContext:error:](NSCKRecordMetadata, [a2 valueForKey:@"objectID"], v6, v8, &v39);
  v9 = [v6 mirroringDelegate];
  if (!v34)
  {
    v33 = 0;
    v34 = 0;
LABEL_25:

LABEL_26:
    if (v39)
    {
      *(v28 + 40) = v39;
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        v42 = 1024;
        v43 = 1813;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitMetadataModelMigrator.m";
        v42 = 1024;
        v43 = 1813;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    goto LABEL_32;
  }

  v10 = v9;
  v26 = v7;
  v27 = v8;
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [a2 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if (![v34 objectForKey:{objc_msgSend(v14, "objectID")}])
        {
          if (v10)
          {
            v16 = *(v10 + 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = +[NSCKRecordMetadata insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:](NSCKRecordMetadata, "insertMetadataForObject:setRecordName:inZoneWithID:recordNamePrefix:error:", v14, [v16 preserveLegacyRecordMetadataBehavior], objc_msgSend(v32, "zoneID"), 0, &v39);
          v18 = [v14 valueForKey:@"ckRecordSystemFields"];
          [v17 updateSystemFieldsWithData:v18];

          [v33 addObject:{objc_msgSend(v14, "objectID")}];
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v19 = [a2 countByEnumeratingWithState:&v35 objects:v46 count:16];
      v11 = v19;
    }

    while (v19);
  }

  if ([v27 hasChanges] && !objc_msgSend(v27, "save:", &v39))
  {
    goto LABEL_25;
  }

  if ([v33 count])
  {
    v20 = [[NSBatchUpdateRequest alloc] initWithEntity:v26];
    v44 = @"ckRecordSystemFields";
    v45 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
    -[NSBatchUpdateRequest setPropertiesToUpdate:](v20, "setPropertiesToUpdate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1]);
    [(NSBatchUpdateRequest *)v20 setResultType:0];
    -[NSBatchUpdateRequest setPredicate:](v20, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v33]);
    v21 = [objc_msgSend(objc_msgSend(v27 executeRequest:v20 error:{&v39), "result"), "BOOLValue"}];

    if (v21)
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
}

void __149__PFCloudKitMetadataModelMigrator_addMigrationStatementsToDeleteDuplicateMirroredRelationshipsToContext_withManagedObjectContext_andSQLEntity_error___block_invoke(uint64_t a1)
{
  v48[2] = *MEMORY[0x1E69E9840];
  v1 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v2 = objc_alloc_init(NSExpressionDescription);
  [(NSPropertyDescription *)v2 setName:@"count"];
  -[NSExpressionDescription setExpression:](v2, "setExpression:", [MEMORY[0x1E696ABC8] expressionWithFormat:@"ckRecordID.@count"]);
  [(NSExpressionDescription *)v2 setExpressionResultType:300];
  v48[0] = @"ckRecordID";
  v48[1] = v2;
  v32 = v2;
  -[NSFetchRequest setPropertiesToFetch:](v1, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2]);
  [(NSFetchRequest *)v1 setPropertiesToGroupBy:&unk_1EF43D8A0];
  [(NSFetchRequest *)v1 setResultType:2];
  v3 = [*(a1 + 32) executeFetchRequest:v1 error:*(*(a1 + 56) + 8) + 40];
  v4 = v3;
  if (v3)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v5)
    {
      v6 = *v43;
      v33 = v4;
      v34 = *v43;
LABEL_4:
      v7 = 0;
      v35 = v5;
      while (1)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v42 + 1) + 8 * v7);
        if ([objc_msgSend(v8 objectForKey:{@"count", "integerValue"}] >= 2)
        {
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 objectForKey:@"ckRecordID"];
          if (v10)
          {
            v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
            -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordID = %@", v10]);
            [(NSFetchRequest *)v11 setResultType:1];
            v12 = [*(a1 + 32) executeFetchRequest:v11 error:*(*(a1 + 56) + 8) + 40];
            if (v12)
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v14)
              {
                v15 = 0;
                v16 = *v39;
                do
                {
                  for (i = 0; i != v14; ++i)
                  {
                    if (*v39 != v16)
                    {
                      objc_enumerationMutation(v12);
                    }

                    if (v15)
                    {
                      [v13 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(*(&v38 + 1) + 8 * i), "_referenceData64"))}];
                    }

                    else
                    {
                      v15 = *(*(&v38 + 1) + 8 * i);
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
                }

                while (v14);
              }

              if ([v13 count])
              {
                v18 = [NSSQLiteStatement alloc];
                v19 = MEMORY[0x1E696AEC0];
                v20 = [*(a1 + 40) tableName];
                v21 = *(a1 + 40);
                if (v21)
                {
                  v22 = *(v21 + 128);
                }

                else
                {
                  v22 = 0;
                }

                v23 = -[NSSQLiteStatement initWithEntity:sqlString:](v18, "initWithEntity:sqlString:", 0, [v19 stringWithFormat:@"DELETE FROM %@ WHERE %@ IN %@", v20, objc_msgSend(v22, "columnName"), v13]);
                v24 = *(a1 + 48);
                if (v24)
                {
                  [*(v24 + 8) addObject:v23];
                  *(v24 + 48) = 1;
                }
              }

              v25 = 1;
              v4 = v33;
            }

            else
            {
              *(*(*(a1 + 64) + 8) + 24) = 0;
              v28 = *(*(*(a1 + 56) + 8) + 40);
              v25 = 0;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationships without a recordID.\n", buf, 2u);
            }

            v27 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: Found mirrored relationships without a recordID.", buf, 2u);
            }

            v25 = 1;
          }

          objc_autoreleasePoolPop(v9);
          v6 = v34;
          v5 = v35;
          if (!v25)
          {
            break;
          }
        }

        if (++v7 == v5)
        {
          v29 = [v4 countByEnumeratingWithState:&v42 objects:v47 count:16];
          v5 = v29;
          if (v29)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v30 = *(*(*(a1 + 56) + 8) + 40);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __103__PFCloudKitMetadataModelMigrator_checkForCorruptedRecordMetadataInStore_inManagedObjectContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          v11 = [objc_msgSend(v10 "entityId")];
          v12 = [*(a1 + 32) model];
          if (v12)
          {
            v13 = *(v12 + 64);
          }

          else
          {
            v13 = 0;
          }

          if (v11 > v13)
          {
            v15 = objc_autoreleasePoolPush();
            Stream = __PFCloudKitLoggingGetStream();
            v17 = Stream;
            if (__ckLoggingOverride == 17)
            {
              v18 = 17;
            }

            else
            {
              v18 = 1;
            }

            if (__ckLoggingOverride == 16)
            {
              v18 = 16;
            }

            if (__ckLoggingOverride)
            {
              v19 = v18;
            }

            else
            {
              v19 = OS_LOG_TYPE_DEFAULT;
            }

            if (os_log_type_enabled(Stream, v19))
            {
              *buf = 136315650;
              v37 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]_block_invoke";
              v38 = 1024;
              v39 = 1995;
              v40 = 2112;
              v41 = v10;
              _os_log_impl(&dword_18565F000, v17, v19, "CoreData+CloudKit: %s(%d): Found record metadata that points to missing entity: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v15);
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_50;
          }

          if (![objc_msgSend(*(a1 + 32) "model")])
          {
            v20 = objc_autoreleasePoolPush();
            v21 = __PFCloudKitLoggingGetStream();
            v22 = v21;
            if (__ckLoggingOverride == 17)
            {
              v23 = 17;
            }

            else
            {
              v23 = 1;
            }

            if (__ckLoggingOverride == 16)
            {
              v23 = 16;
            }

            if (__ckLoggingOverride)
            {
              v24 = v23;
            }

            else
            {
              v24 = OS_LOG_TYPE_DEFAULT;
            }

            if (os_log_type_enabled(v21, v24))
            {
              *buf = 136315650;
              v37 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]_block_invoke";
              v38 = 1024;
              v39 = 1999;
              v40 = 2112;
              v41 = v10;
              _os_log_impl(&dword_18565F000, v22, v24, "CoreData+CloudKit: %s(%d): Found record metadata that points to missing entity: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v20);
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a4 = 1;
            goto LABEL_50;
          }

          if ([objc_msgSend(*(a1 + 32) "configurationName")] && (objc_msgSend(objc_msgSend(*(a1 + 32), "configurationName"), "isEqualToString:", @"PF_DEFAULT_CONFIGURATION_NAME") & 1) == 0 && (objc_msgSend(objc_msgSend(*(a1 + 40), "entitiesForConfiguration:", objc_msgSend(*(a1 + 32), "configurationName")), "containsObject:", objc_msgSend(objc_msgSend(*(a1 + 40), "entitiesByName"), "objectForKey:", objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32), "model"), "entityForID:", objc_msgSend(objc_msgSend(v10, "entityId"), "unsignedLongValue")), "name"))) & 1) == 0)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = __PFCloudKitLoggingGetStream();
            v27 = v26;
            v28 = __ckLoggingOverride;
            if (__ckLoggingOverride)
            {
              v29 = a4;
              if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
              {
                v28 = OS_LOG_TYPE_INFO;
              }
            }

            else
            {
              v29 = a4;
            }

            if (os_log_type_enabled(v26, v28))
            {
              *buf = 136315650;
              v37 = "[PFCloudKitMetadataModelMigrator checkForCorruptedRecordMetadataInStore:inManagedObjectContext:error:]_block_invoke";
              v38 = 1024;
              v39 = 2008;
              v40 = 2112;
              v41 = v10;
              _os_log_impl(&dword_18565F000, v27, v28, "CoreData+CloudKit: %s(%d): Found record metadata that points to an entity that is no longer part of the store's configuration: %@", buf, 0x1Cu);
            }

            objc_autoreleasePoolPop(v25);
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *v29 = 1;
            goto LABEL_50;
          }

          ++v9;
        }

        while (v7 != v9);
        v14 = [a2 countByEnumeratingWithState:&v32 objects:v42 count:16];
        v7 = v14;
        if (v14)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 40) = a3;
  }

LABEL_50:
  v30 = *MEMORY[0x1E69E9840];
}

void __89__PFCloudKitMetadataModelMigrator_cleanUpAfterClientMigrationWithStore_andContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (![*(a1 + 32) containsObject:{objc_msgSend(v13, "cdEntityName")}] || (objc_msgSend(*(a1 + 32), "containsObject:", objc_msgSend(v13, "relatedEntityName")) & 1) == 0)
          {
            [v9 addObject:{objc_msgSend(v13, "objectID")}];
          }
        }

        v10 = [a2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    if ([v9 count])
    {
      v14 = [[NSBatchDeleteRequest alloc] initWithObjectIDs:v9];
      [(NSBatchDeleteRequest *)v14 setResultType:0];
      v21 = *(a1 + 40);
      -[NSPersistentStoreRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1]);
      if ([objc_msgSend(objc_msgSend(*(a1 + 48) executeRequest:v14 error:{*(*(a1 + 56) + 8) + 40), "result"), "BOOLValue"}])
      {
        *a5 = 1;
      }

      else
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        v15 = *(*(*(a1 + 56) + 8) + 40);
        *a4 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = a3;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __115__PFCloudKitMetadataModelMigrator_moveBinaryDataFromColumn_forAttribute_toMetadataAsset_byRelationshipNamed_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 64) + 8) + 24) = 1;
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v61 = [*(a1 + 32) entity];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(v3 + 40) objectForKey:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  v57 = [v4 foreignKey];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [*(v5 + 40) objectForKey:*(a1 + 48)];
    if (v6)
    {
      v6 = [v6 propertyDescription];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_msgSend(v6 "inverseRelationship")];
  if (v61)
  {
    v8 = [*(v61 + 40) objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  v55 = [v8 foreignKey];
  v9 = [*(a1 + 56) allowsExternalBinaryDataStorage];
  v10 = *(a1 + 40);
  if (v10)
  {
    if (v9)
    {
      v11 = @"externalBinaryData";
    }

    else
    {
      v11 = @"binaryData";
    }

    v56 = [*(v10 + 40) objectForKey:v11];
  }

  else
  {
    v56 = 0;
  }

  do
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v61 tableName];
    if (v61)
    {
      v14 = *(v61 + 128);
      v15 = *(v61 + 136);
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v16 = -[NSSQLiteConnection createArrayOfObjectIDsFromTableWithName:usingPrimaryKeyColumn:entityIDColumn:matchingWhereClause:limit:offset:](v2, v13, v14, v15, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ IS NOT NULL", objc_msgSend(*(a1 + 32), "columnName")], 100, 0);
    objc_autoreleasePoolPop(v12);
    v54 = [v16 count];
    v60 = v16;
    if (v54)
    {
      [(NSSQLiteConnection *)v2 connect];
      [(NSSQLiteConnection *)v2 beginTransaction];
      v17 = [v16 count];
      v18 = [(NSSQLiteConnection *)v2 generatePrimaryKeysForEntity:v17 batch:?];
      obj = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v18 < 1)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to generate a primary key for asset insertion but didn't throw an error?\n", buf, 2u);
        }

        v47 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v47, OS_LOG_TYPE_FAULT, "CoreData: Failed to generate a primary key for asset insertion but didn't throw an error?", buf, 2u);
        }
      }

      else
      {
        v62 = 0;
        v58 = v18 - v17 + 1;
        while (v62 < [v60 count])
        {
          context = objc_autoreleasePoolPush();
          v19 = [v60 objectAtIndexedSubscript:v62];
          v20 = v19;
          v21 = *(a1 + 40);
          if (v21)
          {
            v22 = *(v21 + 184);
          }

          else
          {
            v22 = 0;
          }

          v23 = MEMORY[0x1E696AEC0];
          v24 = [v19 _referenceData64];
          v25 = [*(a1 + 32) columnName];
          v26 = [v61 tableName];
          if (v61)
          {
            v27 = *(v61 + 128);
          }

          else
          {
            v27 = 0;
          }

          v28 = [v23 stringWithFormat:@"SELECT %llu, %u, 1, %lld, %@ FROM %@ WHERE %@=%lld", v58 + v62, v22, v24, v25, v26, objc_msgSend(v27, "columnName"), objc_msgSend(v20, "_referenceData64")];
          v29 = MEMORY[0x1E696AEC0];
          v30 = [*(a1 + 40) tableName];
          v31 = *(a1 + 40);
          if (v31)
          {
            v32 = *(v31 + 128);
          }

          else
          {
            v32 = 0;
          }

          v33 = [v32 columnName];
          v34 = *(a1 + 40);
          if (v34)
          {
            v35 = *(v34 + 136);
          }

          else
          {
            v35 = 0;
          }

          v36 = [v35 columnName];
          v37 = *(a1 + 40);
          if (v37)
          {
            v38 = *(v37 + 144);
          }

          else
          {
            v38 = 0;
          }

          v39 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", *(a1 + 40), [v29 stringWithFormat:@"INSERT INTO %@(%@, %@, %@, %@, %@) %@", v30, v33, v36, objc_msgSend(v38, "columnName"), objc_msgSend(v57, "columnName"), objc_msgSend(v56, "columnName"), v28]);
          [obj addObject:v39];

          v40 = MEMORY[0x1E696AEC0];
          v41 = [v61 tableName];
          v42 = [*(a1 + 32) columnName];
          v43 = [v55 columnName];
          if (v61)
          {
            v44 = *(v61 + 128);
          }

          else
          {
            v44 = 0;
          }

          v45 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", *(a1 + 40), [v40 stringWithFormat:@"UPDATE %@ SET %@ = NULL, %@ = %lld WHERE %@ = %lld", v41, v42, v43, v58 + v62, objc_msgSend(v44, "columnName"), objc_msgSend(v20, "_referenceData64")]);
          [obj addObject:v45];

          objc_autoreleasePoolPop(context);
          ++v62;
        }
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v48 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v48)
      {
        v49 = *v66;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v66 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v51 = *(*(&v65 + 1) + 8 * i);
            v52 = objc_autoreleasePoolPush();
            [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v51];
            objc_autoreleasePoolPop(v52);
          }

          v48 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v48);
      }

      [(NSSQLiteConnection *)v2 commitTransaction];
    }
  }

  while (v54);
  [(NSSQLiteConnection *)v2 endFetchAndRecycleStatement:?];

  v53 = *MEMORY[0x1E69E9840];
}

void __52__PFCloudKitMetadataModelMigrator_dropColumn_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(a1 + 32) + 24);
  if (v4 && *(v4 + 48) == 1)
  {
    [(NSSQLiteConnection *)v3 connect];
    [(NSSQLiteConnection *)v3 beginTransaction];
    if (*(a1 + 32))
    {
      v5 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [*(a1 + 40) entity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"ALTER TABLE %@ DROP COLUMN %@", objc_msgSend(objc_msgSend(*(a1 + 40), "entity"), "tableName"), objc_msgSend(*(a1 + 40), "columnName")));
    }

    else
    {
      v5 = 0;
    }

    [(NSSQLiteConnection *)v3 prepareAndExecuteSQLStatement:v5];
    [(NSSQLiteConnection *)v3 commitTransaction];
  }

  [(NSSQLiteConnection *)v3 endFetchAndRecycleStatement:?];
  v6 = *MEMORY[0x1E69E9840];
}

@end