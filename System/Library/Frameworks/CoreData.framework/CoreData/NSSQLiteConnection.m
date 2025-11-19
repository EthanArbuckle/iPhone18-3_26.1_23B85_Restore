@interface NSSQLiteConnection
+ (BOOL)_destroyPersistentStoreAtURL:(void *)a3 options:(uint64_t *)a4 error:;
+ (BOOL)_rekeyPersistentStoreAtURL:(void *)a3 options:(void *)a4 withKey:(uint64_t *)a5 error:;
+ (BOOL)_replacePersistentStoreAtURL:(uint64_t)a1 destinationOptions:withPersistentStoreFromURL:sourceOptions:error:;
+ (uint64_t)openAtPath:(void *)a3 withKey:(sqlite3 *)a4 handle:(int)a5 flags:(const char *)a6 module:(char)a7 checkpointOnClose:;
+ (uint64_t)readMagicWordFromPath:(void *)a3 options:;
+ (void)initialize;
- (BOOL)_tableHasRows:(uint64_t)a1;
- (BOOL)addTombstoneColumnsForRange:(unint64_t)a3;
- (BOOL)addTransactionStringColumnsToTransactionTable;
- (BOOL)databaseIsEmpty;
- (BOOL)finishDeferredLightweightMigration:(uint64_t)a1;
- (BOOL)hasHistoryRows;
- (BOOL)hasHistoryTransactionWithNumber:(id *)a1;
- (BOOL)hasTransactionStringColumnsInTransactionTable;
- (BOOL)registerMigrationUpdateFunctionWithMigrator:(uint64_t)a1;
- (CFMutableArrayRef)copyRawIntegerRowsForSQL:(uint64_t)a1;
- (NSSQLitePrefetchRequestCache)prefetchRequestCache;
- (NSSQLiteStatementCache)statementCacheForEntity:(uint64_t)a1;
- (_PFSQLiteSnapshotWrapper)_currentQueryGenerationSnapshot:(_PFSQLiteSnapshotWrapper *)result;
- (_PFSQLiteSnapshotWrapper)currentQueryGenerationIdentifier;
- (id)_activeGenerations;
- (id)_setSaveRequest:(id *)result;
- (id)createArrayOfObjectIDsFromTableWithName:(void *)a3 usingPrimaryKeyColumn:(void *)a4 entityIDColumn:(void *)a5 matchingWhereClause:(uint64_t)a6 limit:(uint64_t)a7 offset:;
- (id)createArrayOfObjectIDsMatchingSelectStatement:(void *)a3 forColumns:(uint64_t)a4 primaryKeyIndex:(uint64_t)a5 entityIDIndex:;
- (id)createArrayOfPrimaryKeysAndEntityIDsForRowsWithoutRecordMetadataWithEntity:(id *)a3 metadataEntity:;
- (id)fetchCachedModel;
- (id)fetchCreationSQLForType:(void *)a3 containing:;
- (id)fetchTableCreationSQL;
- (id)fetchTableCreationSQLContaining:(id)result;
- (id)fetchTableNames;
- (id)gatherObjectIDsFromTable:(uint64_t)a1;
- (id)hasAncillaryEntitiesInHistory;
- (id)initAsQueryGenerationTrackingConnectionForSQLCore:(id)a3;
- (id)initForSQLCore:(id)a3;
- (id)sqlStatement;
- (sqlite3_int64)_fetchMaxPrimaryKeyForEntity:(uint64_t)a1;
- (sqlite3_int64)fetchMaxPrimaryKeyForEntity:(sqlite3_int64)result;
- (sqlite3_int64)generatePrimaryKeysForEntity:(unsigned int)a3 batch:;
- (uint64_t)_adoptQueryGenerationWithSnapshot:(uint64_t)a1;
- (uint64_t)_clearBindVariablesForInsertedRow;
- (uint64_t)_clearSaveGeneratedCachedStatements;
- (uint64_t)_countOfVMCachedStatements;
- (uint64_t)_createIndexesForEntities:(void *)a1;
- (uint64_t)_dropAllDATriggers;
- (uint64_t)_dropAllTriggers;
- (uint64_t)_dropKnownHistoryTrackingTables;
- (uint64_t)_dropTableWithName:(uint64_t)result;
- (uint64_t)_ensureWalFileExists;
- (uint64_t)_forceDisconnectOnError;
- (uint64_t)_hasHistoryTransactionStringTable;
- (uint64_t)_hasOldHistoryTrackingTables;
- (uint64_t)_hasOldHistoryTrackingTablesV0;
- (uint64_t)_hasOldHistoryTrackingTablesV1;
- (uint64_t)_hasPersistentHistoryTables;
- (uint64_t)_hasTableWithName:(int)a3 isTemp:;
- (uint64_t)_insertTransactionForRequestContext:(void *)a3 andStrings:;
- (uint64_t)_insertTransactionStringsForRequestContext:(sqlite3_int64)a1;
- (uint64_t)_int64ResultForSQL:(uint64_t)a1;
- (uint64_t)_registerNewQueryGenerationSnapshot:(uint64_t)a1;
- (uint64_t)_restoreBusyTimeOutSettings;
- (uint64_t)_transactionsStringAndPKsForStrings:(sqlite3_int64)a1;
- (uint64_t)_validateProperty:(void *)a1 withValue:(void *)a2;
- (uint64_t)_walCheckpointWithMode:(uint64_t)a1;
- (uint64_t)addVMCachedStatement:(uint64_t)result;
- (uint64_t)adoptQueryGenerationWithIdentifier:(uint64_t)result;
- (uint64_t)canConnect;
- (uint64_t)createTablesForEntities:(uint64_t)result;
- (uint64_t)createTriggersForEntities:(uint64_t)result;
- (uint64_t)dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity:(uint64_t)result;
- (uint64_t)deleteRow:(uint64_t)a3 forRequestContext:;
- (uint64_t)disconnect;
- (uint64_t)fetchBufferResultSet:(uint64_t)a3 usingFetchPlan:;
- (uint64_t)fetchResultSet:(uint64_t)a3 usingFetchPlan:;
- (uint64_t)freeQueryGenerationWithIdentifier:(uint64_t)a1;
- (uint64_t)gatherHistoryChangesFromTable:(uint64_t)a1;
- (uint64_t)hasAttributeChanges:(void *)a1;
- (uint64_t)hasIndexTrackingTable;
- (uint64_t)insertArray:(uint64_t)a3 forEntity:(char)a4 includeOnConflict:;
- (uint64_t)insertDictionaryBlock:(id *)a3 forEntity:(int)a4 includeOnConflict:;
- (uint64_t)insertManagedObjectBlock:(void *)a3 forEntity:(int)a4 includeOnConflict:;
- (uint64_t)insertRow:(uint64_t)result;
- (uint64_t)numberOfTombstones;
- (uint64_t)percentageUsedByPersistentHistory;
- (uint64_t)recreateIndices;
- (uint64_t)registerCurrentQueryGenerationWithStore:(uint64_t)a3 retries:;
- (uint64_t)saveCachedModel:(uint64_t)result;
- (uint64_t)selectCountWithStatement:(uint64_t)result;
- (uint64_t)selectRowsWithStatement:(int)a3 cached:;
- (uint64_t)setUpIndexTracking;
- (uint64_t)updateConstrainedValuesForRow:(uint64_t)result;
- (uint64_t)updateRow:(uint64_t)a3 forRequestContext:;
- (void)_batchInsertThrowWithErrorCode:(int)a1 andMessage:(void *)a2 forKey:(void *)a3 andValue:(uint64_t)a4 additionalDetail:(uint64_t)a5;
- (void)_clearCachedStatements;
- (void)_clearOtherStatements;
- (void)_clearTransactionCaches;
- (void)_createInsertStatementsForEntities:(void *)a1;
- (void)_dropOldHistoryTrackingTables;
- (void)_endFetch;
- (void)_ensureDatabaseOpen;
- (void)_ensureNoFetchInProgress;
- (void)_ensureNoStatementPrepared;
- (void)_ensureNoTransactionOpen;
- (void)_executeSQLString:(uint64_t)a1;
- (void)_finalizeStatement;
- (void)_performBlock:(uint64_t)a1;
- (void)_performPostSaveTasks:(int)a3 andForceFullVacuum:;
- (void)beginReadTransaction;
- (void)beginTransaction;
- (void)bindTempTableForBindIntarray:(uint64_t)a1;
- (void)bindTempTablesForStatementIfNecessary:(void *)result;
- (void)cacheCurrentDBStatementOn:(uint64_t)a1;
- (void)cacheUpdateConstrainedValuesStatement:(void *)key forEntity:;
- (void)cacheUpdateStatement:(void *)key forEntity:(const void *)a4 andDeltasMask:;
- (void)clearTempTablesBindingsForStatement:(void *)result;
- (void)commitTransaction;
- (void)connect;
- (void)createIndexesForEntity:(void *)a1;
- (void)createManyToManyTablesForEntity:(void *)a1;
- (void)createMetadata;
- (void)createMissingHistoryTables;
- (void)createTableForEntity:(void *)a1;
- (void)currentStats;
- (void)dealloc;
- (void)derivedAttributeUpdatedInsertedRowInTable:(uint64_t)a3 withEntityID:(uint64_t)a4 primaryKey:(uint64_t)a5 columnName:(uint64_t)a6 newValue:;
- (void)derivedAttributeUpdatedRowInTable:(uint64_t)a3 withEntityID:(uint64_t)a4 primaryKey:(uint64_t)a5 columnName:(uint64_t)a6 newValue:;
- (void)didCreateSchema;
- (void)dropHistoryBeforeTransactionID:(id *)a1;
- (void)dropHistoryTrackingTables;
- (void)dropIndexTrackingTable;
- (void)endFetchAndRecycleStatement:(uint64_t)a1;
- (void)execute;
- (void)executeAttributeUniquenessCheckSQLStatement:(void *)a3 returningColumns:;
- (void)executeCorrelationChangesForValue1:(sqlite3_int64)a3 value2:(sqlite3_int64)a4 value3:(sqlite3_int64)a5 value4:;
- (void)executeMulticolumnUniquenessCheckSQLStatement:(void *)a3 returningColumns:;
- (void)fetchMetadata;
- (void)handleCorruptedDB:(uint64_t)a1;
- (void)harvestUsedIndexes;
- (void)insertChanges:(uint64_t)a3 type:(sqlite3_int64)a4 transactionID:(uint64_t)a5 context:;
- (void)insertUpdates:(sqlite3_int64)a3 transactionID:(void *)a4 updatedAttributes:;
- (void)newFetchedArray;
- (void)performAndWait:(uint64_t)a1;
- (void)prepareAndExecuteSQLStatement:(uint64_t)a1;
- (void)prepareInsertStatementForAncillaryEntity:(uint64_t)a1;
- (void)prepareInsertStatementForEntity:(uint64_t)a1 includeConstraints:(void *)a2 includeOnConflict:(int)a3 onConflictKeys:(void *)a4;
- (void)prepareSQLStatement:(uint64_t)a1;
- (void)processDeleteRequest:(sqlite3_int64)a1;
- (void)processExternalDataReferenceFilesDeletedByRequest:(uint64_t)a1;
- (void)processInsertRequest:(uint64_t)a1;
- (void)processMigrationRequestForHash:(uint64_t)a3 stageLabel:;
- (void)processSaveRequest:(sqlite3_int64)a1;
- (void)processUpdateRequest:(void *)a3 withOIDs:(void *)a4 forAttributes:;
- (void)releaseSQLStatement;
- (void)reopenQueryGenerationWithIdentifier:(void *)a3 error:;
- (void)resetSQLStatement;
- (void)rollbackTransaction;
- (void)saveMetadata:(void *)a1;
- (void)scheduleWALCheckpointAfter:(double)a3 retry:;
- (void)setColumnsToFetch:(void *)result;
- (void)setExclusiveLockingMode:(BOOL)a3;
- (void)setSecureDeleteMode:(uint64_t)a1;
- (void)triggerUpdatedRowInTable:(uint64_t)a3 withEntityID:(uint64_t)a4 primaryKey:columnName:newValue:;
- (void)writeCorrelationChangesFromTracker:(uint64_t)a1;
- (void)writeCorrelationDeletesFromTracker:(uint64_t)a1;
- (void)writeCorrelationInsertsFromTracker:(uint64_t)a1;
- (void)writeCorrelationMasterReordersFromTracker:(uint64_t)a1;
- (void)writeCorrelationReordersFromTracker:(uint64_t)a1;
@end

@implementation NSSQLiteConnection

- (void)connect
{
  v186[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    if (!*(a1 + 24))
    {
      *(a1 + 24) = [*(a1 + 16) URL];
    }

    v3 = *(a1 + 32);
    if (!v3)
    {
      v3 = [*(a1 + 24) path];
      *(a1 + 32) = v3;
    }

    v154 = (a1 + 72);
    if (!*(a1 + 72) && (*(a1 + 312) & 0x80) == 0)
    {
      v153 = *(a1 + 376);
      __s1 = [v3 fileSystemRepresentation];
      v4 = *(a1 + 16);
      if (!v4 || (*(v4 + 201) & 0x40) == 0)
      {
        goto LABEL_12;
      }

      if (!strcmp(__s1, "/dev/null"))
      {
        v5 = 1;
        __s1 = ":memory:";
      }

      else
      {
        v6 = [*(a1 + 32) stringByReplacingOccurrencesOfString:@"/dev/null/" withString:&stru_1EF3F1768];
        if (!v6 || (v7 = v6, ![v6 length]))
        {
LABEL_12:
          v5 = 0;
          goto LABEL_18;
        }

        __s1 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"file:%@?mode=memory&cache=shared", v7), "fileSystemRepresentation"];
        v5 = 1;
      }

LABEL_18:
      if (+[NSSQLCore debugDefault])
      {
        v8 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v10 = *(a1 + 32);
              buf.f_bsize = 138412290;
              *&buf.f_iosize = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Connecting to sqlite database file at %@\n", &buf, 0xCu);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 32);
              buf.f_bsize = 138412290;
              *&buf.f_iosize = v12;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Connecting to sqlite database file at %@\n", &buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v13 = 1;
        }

        else
        {
          v13 = 4;
        }

        _NSCoreDataLog_console(v13, "Connecting to sqlite database file at %@", *(a1 + 32));
        objc_autoreleasePoolPop(v8);
      }

      if (v5)
      {
        v14 = 1;
      }

      else
      {
        memset(&buf, 0, 144);
        if (stat(__s1, &buf))
        {
          v15 = 1;
        }

        else
        {
          v15 = *&buf.f_mntonname[8] == 0;
        }

        v14 = v15;
      }

      v165 = v14;
      if ([*(a1 + 16) isReadOnly])
      {
        v16 = 1;
      }

      else
      {
        v16 = 6;
      }

      v161 = v16;
      v17 = [v153 objectForKey:?];
      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v19 = [v17 countByEnumeratingWithState:&v168 objects:v181 count:16];
        if (v19)
        {
          v20 = *v169;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v169 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v168 + 1) + 8 * i);
              if (v22 != NSKeyValueCoding_NullValue)
              {
                [v18 setObject:objc_msgSend(v17 forKey:{"objectForKey:", *(*(&v168 + 1) + 8 * i)), objc_msgSend(v22, "lowercaseString")}];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v168 objects:v181 count:16];
          }

          while (v19);
        }

        [*(a1 + 160) setDictionary:v18];
      }

      [*(a1 + 160) removeObjectForKey:@"recursive_triggers"];
      if (v5)
      {
        v23 = *(a1 + 312) & 0xFFFFFFF3;
      }

      else
      {
        memset(&buf, 0, 512);
        if (!statfs(__s1, &buf))
        {
          f_flags = buf.f_flags;
          if ((buf.f_flags & 0x1000) != 0)
          {
            v41 = *(a1 + 312) & 0xFFFFFFF3 | 4;
          }

          else
          {
            v39 = *buf.f_fstypename == 1684170103 && *&buf.f_fstypename[3] == 7758180;
            v40 = *(a1 + 312);
            if (v39)
            {
              v41 = v40 | 0xC;
            }

            else
            {
              v41 = v40 & 0xFFFFFFF3 | 8;
            }
          }

          *(a1 + 312) = v41;
          if (f_flags)
          {
            v90 = 1;
          }

          else
          {
            v90 = v161;
          }

          v161 = v90;
LABEL_57:
          v24 = [*(a1 + 160) objectForKey:@"lock_proxy_file"];
          if (v24 != [MEMORY[0x1E695DFB0] null] && (v24 || BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88) == 1))
          {
            v161 |= 0x20u;
            *(a1 + 312) |= 0x10u;
          }

          *(a1 + 312) &= ~0x40u;
          v25 = [*(a1 + 160) objectForKey:@"journal_mode"];
          if (dword_1ED4BEEC0)
          {
            v26 = @"wal";
          }

          else
          {
            v26 = 0;
          }

          if (v25)
          {
            v26 = v25;
          }

          v27 = *(a1 + 312);
          v28 = @"delete";
          if ((v27 & 8) == 0)
          {
            v28 = v26;
          }

          if ((v27 & 0x10) != 0)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          if (v5)
          {
            v30 = @"memory";
          }

          else
          {
            v30 = v29;
          }

          if (v30 && v30 != [MEMORY[0x1E695DFB0] null])
          {
            [*(a1 + 160) setObject:v30 forKey:@"journal_mode"];
            *(a1 + 312) = *(a1 + 312) & 0xFFFFFFBF | (([(__CFString *)v30 compare:@"wal" options:1]== 0) << 6);
          }

          if ((v5 & 1) == 0)
          {
            v31 = *(a1 + 16);
            if (v31)
            {
              v32 = ((*(v31 + 200) >> 2) & 7) - 1;
              if (v32 > 6)
              {
                LODWORD(v31) = 0;
              }

              else
              {
                LODWORD(v31) = dword_18592E71C[v32];
              }
            }

            v161 |= v31;
          }

          if ([objc_msgSend(*(a1 + 24) "query")])
          {
            v33 = *(a1 + 24);
            objc_opt_self();
            __s1 = [objc_msgSend(v33 "absoluteString")];
          }

          v34 = *(a1 + 16);
          if (v34)
          {
            v35 = *(v34 + 248);
          }

          else
          {
            v35 = 0;
          }

          v36 = +[NSSQLiteConnection openAtPath:withKey:handle:flags:module:checkpointOnClose:](NSSQLiteConnection, __s1, v35, v154, v161, [0 UTF8String], 0);
          if (v36)
          {
            v42 = *v154;
            if (*v154)
            {
LABEL_153:
              v59 = sqlite3_errmsg(v42);
LABEL_154:
              if (+[NSSQLCore debugDefault]< 1)
              {
                goto LABEL_213;
              }

              v60 = *(a1 + 42);
              v61 = objc_autoreleasePoolPush();
              IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
              if (v60)
              {
                if (IsOSLogEnabled)
                {
                  v63 = _pflogging_catastrophic_mode == 0;
                  v64 = _PFLogGetLogStream(1);
                  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
                  if (v63)
                  {
                    if (v65)
                    {
                      goto LABEL_207;
                    }
                  }

                  else if (v65)
                  {
LABEL_207:
                    buf.f_bsize = 67109378;
                    buf.f_iosize = v36;
                    LOWORD(buf.f_blocks) = 2080;
                    *(&buf.f_blocks + 2) = v59;
                    _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", &buf, 0x12u);
                  }
                }

                _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_212:
                objc_autoreleasePoolPop(v61);
LABEL_213:
                if (v36 == 26)
                {
                  v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"File at path does not appear to be a SQLite database: %@", *(a1 + 32)];
                  v92 = 259;
                }

                else
                {
                  v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v59];
                  v92 = 256;
                }

                if (*v154)
                {
                  sqlite3_close_v2(*v154);
                  *v154 = 0;
                }

                v140 = MEMORY[0x1E695DF20];
                v142 = *(a1 + 32);
                v141 = (a1 + 32);
                v143 = [MEMORY[0x1E696AD98] numberWithInt:v36];
                v144 = [v140 dictionaryWithObjectsAndKeys:{v142, *MEMORY[0x1E696A368], v143, @"NSSQLiteErrorDomain", 0}];
                v145 = [_NSCoreDataException exceptionWithName:v92 code:v91 reason:v144 userInfo:?];

                *v141 = 0;
                objc_exception_throw(v145);
              }

              if (IsOSLogEnabled)
              {
                v66 = _pflogging_catastrophic_mode == 0;
                v67 = _PFLogGetLogStream(1);
                v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
                if (v66)
                {
                  if (v68)
                  {
                    goto LABEL_210;
                  }
                }

                else if (v68)
                {
LABEL_210:
                  buf.f_bsize = 67109378;
                  buf.f_iosize = v36;
                  LOWORD(buf.f_blocks) = 2080;
                  *(&buf.f_blocks + 2) = v59;
                  _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", &buf, 0x12u);
                }
              }

              _NSCoreDataLog_console(1, "(%d) %s");
              goto LABEL_212;
            }
          }

          else
          {
            if ((*(a1 + 313) & 8) != 0)
            {
              sqlite3_db_config(*v154, 1001, 0, 512, 20);
            }

            if (v5)
            {
              v36 = 0;
            }

            else
            {
              v37 = *(a1 + 16);
              if (v37 && *(v37 + 248))
              {
                v36 = 0;
              }

              else if (readMagicWordFromDBHandle(*v154))
              {
                v36 = 26;
              }

              else
              {
                v36 = 0;
              }

              sqlite3_wal_hook(*(a1 + 72), _NSSQLiteConnectionWalHook, a1);
            }

            v42 = *v154;
            if (*v154 && !v36)
            {
              if (!*(a1 + 328) || (v43 = sqlite3_db_config(v42, 1006, 1, 0)) == 0)
              {
LABEL_116:
                if (![objc_msgSend(v153 objectForKey:{@"NSPersistentStoreServiceConfigurationOptionKey", "intValue"}])
                {
                  goto LABEL_125;
                }

                v48 = sqlite3_db_config(*v154, 1001, 0, 1200, 32);
                if (!v48)
                {
LABEL_124:
                  [(NSSQLiteConnection *)a1 _executeSQLString:?];
LABEL_125:
                  *(a1 + 304) = objc_alloc_init(MEMORY[0x1E695DF70]);
                  *(a1 + 312) &= ~2u;
                  v53 = *(a1 + 8);
                  if (v53)
                  {
                    dispatch_assert_queue_V2(v53);
                  }

                  if (NSSQLiteRegisterFunctions(*(a1 + 72), a1))
                  {
                    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An internal error occurred while configuring functions in the SQLite database." userInfo:0]);
                  }

                  sqlite3_extended_result_codes(*(a1 + 72), 1);
                  [(NSSQLiteConnection *)a1 _restoreBusyTimeOutSettings];
                  *(a1 + 312) |= 0x80u;
                  if ((v161 & 1) == 0)
                  {
                    [*(a1 + 160) objectForKey:@"synchronous"];
                  }

                  if (v165)
                  {
                    v54 = 1;
                  }

                  else
                  {
                    v54 = [(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?]^ 1;
                  }

                  v55 = [*(a1 + 160) objectForKey:@"integrity_check"];
                  if ([v55 isNSString])
                  {
                    if (([v55 isEqualToString:@"1"] & 1) != 0 || !objc_msgSend(v55, "caseInsensitiveCompare:", @"YES"))
                    {
                      goto LABEL_136;
                    }
                  }

                  else if (v55 == [MEMORY[0x1E695DFB0] null])
                  {
LABEL_136:
                    [*(a1 + 160) setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"integrity_check"}];
                    goto LABEL_139;
                  }

                  [*(a1 + 160) removeObjectForKey:@"integrity_check"];
LABEL_139:
                  v152 = v54;
                  if (!v54)
                  {
                    [*(a1 + 160) setValue:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"auto_vacuum"}];
                    goto LABEL_234;
                  }

                  if (v161)
                  {
                    v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot create a new database file with the read only option at path: %@", *(a1 + 32)];
                    v150 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 32), *MEMORY[0x1E696A368], 0}];
                    v151 = [_NSCoreDataException exceptionWithName:257 code:v149 reason:v150 userInfo:?];
                    objc_exception_throw(v151);
                  }

                  v56 = *(a1 + 8);
                  if (v56)
                  {
                    dispatch_assert_queue_V2(v56);
                  }

                  if (+[NSSQLCore debugDefault]>= 1)
                  {
                    v57 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v58 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf.f_bsize) = 0;
                          _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: error: creating schema.\n", &buf, 2u);
                        }
                      }

                      else
                      {
                        v69 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(buf.f_bsize) = 0;
                          _os_log_impl(&dword_18565F000, v69, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: creating schema.\n", &buf, 2u);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v70 = 1;
                    }

                    else
                    {
                      v70 = 4;
                    }

                    _NSCoreDataLog_console(v70, "creating schema.");
                    objc_autoreleasePoolPop(v57);
                  }

                  v71 = [*(a1 + 16) model];
                  v72 = *(a1 + 16);
                  if (v72)
                  {
                    [*(v72 + 216) lock];
                  }

                  v73 = [*(a1 + 160) objectForKey:@"lock_proxy_file"];
                  if (v73 && v73 != [MEMORY[0x1E695DFB0] null] && (objc_msgSend(v73, "isEqual:", @":auto:") & 1) == 0)
                  {
                    v74 = [a1 adapter];
                    v75 = -[NSSQLiteAdapter newStatementWithSQLString:](v74, [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma lock_proxy_file='%@'", v73]);
                    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v75];
                  }

                  v76 = *(a1 + 376);
                  v77 = [objc_msgSend(v76 objectForKey:{0x1EF3FD3A8), "intValue"}];
                  if (!v77)
                  {
                    v77 = [objc_msgSend(objc_msgSend(v76 objectForKey:{@"NSSQLitePragmasOption", "objectForKey:", @"page_size", "intValue"}];
                    if (!v77)
                    {
                      if ((*(a1 + 312) & 0xC) == 8)
                      {
                        v77 = 0x2000;
                      }

                      else
                      {
                        v77 = 4096;
                      }
                    }
                  }

                  v78 = [a1 adapter];
                  v79 = -[NSSQLiteAdapter newStatementWithSQLString:](v78, [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma page_size=%d", v77]);
                  [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v79];

                  v80 = [objc_msgSend(objc_msgSend(*(a1 + 376) objectForKey:{@"NSSQLitePragmasOption", "objectForKey:", @"auto_vacuum", "lowercaseString"}];
                  if (!v80 || v80 == [MEMORY[0x1E695DFB0] null])
                  {
                    v80 = @"2";
                  }

                  v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma auto_vacuum=%@", v80];
                  v82 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v81);

                  [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v82];
                  if (([(__CFString *)v80 isEqualToString:@"2"]& 1) != 0)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v84 = [(__CFString *)v80 isEqualToString:@"incremental"];
                    v83 = 0x7FFFFFFFFFFFFFFFLL;
                    if (v84)
                    {
                      v83 = 0;
                    }
                  }

                  *(a1 + 296) = v83;
                  *(a1 + 312) &= ~0x20u;
                  v185 = @"_NSAutoVacuumLevel";
                  v186[0] = v80;
                  -[NSSQLCore _updateAutoVacuumMetadataWithValues:](*(a1 + 16), [MEMORY[0x1E695DF20] dictionaryWithObjects:v186 forKeys:&v185 count:1]);
                  [(NSSQLiteConnection *)a1 beginTransaction];
                  if ([(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?])
                  {
                    [(NSSQLiteConnection *)a1 commitTransaction];
                    [(NSSQLiteConnection *)a1 didCreateSchema];
                    v85 = *(a1 + 16);
                    if (!v85)
                    {
                      goto LABEL_233;
                    }
                  }

                  else
                  {
                    if (v71)
                    {
                      v86 = v71[4];
                    }

                    else
                    {
                      v86 = 0;
                    }

                    [(NSSQLiteConnection *)a1 createTablesForEntities:v86];
                    v87 = *(a1 + 8);
                    if (v87)
                    {
                      dispatch_assert_queue_V2(v87);
                    }

                    if (+[NSSQLCore debugDefault]>= 1)
                    {
                      v88 = objc_autoreleasePoolPush();
                      _pflogInitialize(4);
                      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v89 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                          {
                            LOWORD(buf.f_bsize) = 0;
                            _os_log_error_impl(&dword_18565F000, v89, OS_LOG_TYPE_ERROR, "CoreData: error: Creating primary key table.\n", &buf, 2u);
                          }
                        }

                        else
                        {
                          v93 = _PFLogGetLogStream(4);
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf.f_bsize) = 0;
                            _os_log_impl(&dword_18565F000, v93, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Creating primary key table.\n", &buf, 2u);
                          }
                        }
                      }

                      if (_pflogging_catastrophic_mode)
                      {
                        v94 = 1;
                      }

                      else
                      {
                        v94 = 4;
                      }

                      _NSCoreDataLog_console(v94, "Creating primary key table.");
                      objc_autoreleasePoolPop(v88);
                    }

                    v95 = [a1 adapter];
                    PrimaryKeyTable = [(NSSQLiteAdapter *)v95 newCreatePrimaryKeyTableStatement];
                    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:?];

                    if (v71)
                    {
                      v97 = v71[4];
                    }

                    else
                    {
                      v97 = 0;
                    }

                    v98 = [v97 count];
                    if (v98)
                    {
                      for (j = 0; j != v98; ++j)
                      {
                        v100 = objc_autoreleasePoolPush();
                        v101 = -[NSSQLiteAdapter newPrimaryKeyInitializeStatementForEntity:withInitialMaxPK:](v95, [v97 objectAtIndex:j], 0);
                        [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v101];

                        objc_autoreleasePoolPop(v100);
                      }
                    }

                    [(NSSQLiteConnection *)a1 createMetadata];
                    -[NSSQLiteConnection saveMetadata:](a1, [*(a1 + 16) _updatedMetadataWithSeed:objc_msgSend(*(a1 + 16) includeVersioning:{"metadata"), 1}]);
                    -[NSSQLiteConnection saveCachedModel:](a1, [v71 managedObjectModel]);
                    v102 = *(a1 + 16);
                    if (v102 && (*(v102 + 201) & 4) != 0)
                    {
                      v103 = objc_autoreleasePoolPush();
                      v104 = [objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
                      if (v104)
                      {
                        v105 = *(v104 + 32);
                      }

                      else
                      {
                        v105 = 0;
                      }

                      [(NSSQLiteConnection *)a1 createTablesForEntities:v105];
                      objc_autoreleasePoolPop(v103);
                    }

                    [(NSSQLiteConnection *)a1 commitTransaction];
                    [(NSSQLiteConnection *)a1 didCreateSchema];
                    v85 = *(a1 + 16);
                    if (!v85)
                    {
                      goto LABEL_233;
                    }
                  }

                  [*(v85 + 216) unlock];
LABEL_233:
                  LOBYTE(v54) = v152;
                  [(NSSQLiteConnection *)a1 endFetchAndRecycleStatement:?];
LABEL_234:
                  v106 = [*(a1 + 160) objectForKey:@"page_size"];
                  if (v106)
                  {
                    if (v106 == [MEMORY[0x1E695DFB0] null])
                    {
                      v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma %@", @"page_size"];
                    }

                    else
                    {
                      v107 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma %@=%@", @"page_size", v106];
                    }

                    [(NSSQLiteConnection *)a1 _executeSQLString:v107];
                  }

                  if ((v161 & 1) == 0)
                  {
                    -[NSSQLiteConnection _executeSQLString:](a1, [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma recursive_triggers=1"]);
                  }

                  v158 = (v54 & 1) == 0 && [*(a1 + 376) objectForKey:@"NSSQLiteManualVacuumOption"] != 0;
                  v174 = 0u;
                  v175 = 0u;
                  v172 = 0u;
                  v173 = 0u;
                  obj = *(a1 + 160);
                  v108 = [obj countByEnumeratingWithState:&v172 objects:v182 count:16];
                  if (v108)
                  {
                    v160 = *v173;
                    do
                    {
                      v164 = 0;
                      v162 = v108;
                      do
                      {
                        if (*v173 != v160)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v109 = *(*(&v172 + 1) + 8 * v164);
                        v110 = [*(a1 + 160) objectForKey:v109];
                        if (((v161 & 1) == 0 || ([v109 isEqualToString:@"journal_mode"] & 1) == 0 && (objc_msgSend(v109, "isEqualToString:", @"synchronous") & 1) == 0) && (objc_msgSend(v109, "isEqualToString:", @"page_size") & 1) == 0 && (!v158 || (objc_msgSend(v109, "isEqualToString:", @"journal_mode") & 1) == 0) && (+[NSSQLCore debugDefault](NSSQLCore, "debugDefault") || v110 != objc_msgSend(MEMORY[0x1E695DFB0], "null") || (objc_msgSend(v109, "isEqualToString:", @"journal_mode") & 1) == 0))
                        {
                          if (![v109 isEqualToString:@"integrity_check"])
                          {
                            if ([v109 isEqualToString:@"lock_proxy_file"])
                            {
                              v128 = [MEMORY[0x1E695DFB0] null];
                              v129 = MEMORY[0x1E696AEC0];
                              if (v110 != v128)
                              {
                                v130 = @"pragma %@='%@'";
                                goto LABEL_303;
                              }

                              v134 = @"pragma %@=''";
                              goto LABEL_312;
                            }

                            if (![v109 isEqualToString:@"auto_vacuum"])
                            {
                              v132 = [MEMORY[0x1E695DFB0] null];
                              v129 = MEMORY[0x1E696AEC0];
                              if (v110 != v132)
                              {
                                v130 = @"pragma %@=%@";
LABEL_303:
                                v133 = [v129 stringWithFormat:v130, v109, v110];
LABEL_313:
                                [(NSSQLiteConnection *)a1 _executeSQLString:v133];
                                goto LABEL_320;
                              }

                              v134 = @"pragma %@";
LABEL_312:
                              v133 = [v129 stringWithFormat:v134, v109];
                              goto LABEL_313;
                            }

                            if ([*(a1 + 16) isReadOnly])
                            {
                              goto LABEL_300;
                            }

                            v135 = [objc_msgSend(*(a1 + 16) "metadata")];
                            if (!v135)
                            {
LABEL_314:
                              *(a1 + 312) |= 0x20u;
                              goto LABEL_320;
                            }

                            v136 = [*(a1 + 160) objectForKey:@"auto_vacuum"];
                            if ([MEMORY[0x1E695DFB0] null] == v136 || (v137 = objc_msgSend(v136, "lowercaseString")) == 0)
                            {
                              if (([@"2" isEqualToString:v135] & 1) == 0)
                              {
                                goto LABEL_316;
                              }
                            }

                            else
                            {
                              if (![v137 isEqualToString:v135])
                              {
                                goto LABEL_314;
                              }

                              if (([@"2" isEqualToString:v135] & 1) == 0)
                              {
LABEL_316:
                                if (![@"incremental" isEqualToString:v135])
                                {
LABEL_300:
                                  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
                                  goto LABEL_320;
                                }
                              }
                            }

                            *(a1 + 296) = 0;
                            goto LABEL_320;
                          }

                          v111 = *(a1 + 8);
                          if (v111)
                          {
                            dispatch_assert_queue_V2(v111);
                          }

                          v112 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], @"pragma integrity_check");
                          v156 = [[NSSQLColumn alloc] initWithColumnName:@"*" sqlType:6];
                          v157 = v112;
                          v155 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v156, 0}];
                          [(NSSQLiteConnection *)a1 prepareSQLStatement:v112];
                          [a1 execute];
                          [(NSSQLiteConnection *)a1 setColumnsToFetch:v155];
                          v113 = 0;
                          v114 = 1;
                          while (1)
                          {
                            v115 = [(NSSQLiteConnection *)a1 newFetchedArray];
                            if (!v115)
                            {
                              break;
                            }

                            v166 = v115;
                            v116 = [v115 objectAtIndex:0];
                            v117 = v116;
                            if (!v113 && (v114 & [v116 isEqualToString:@"ok"] & 1) != 0)
                            {
                              v114 = 1;
                              goto LABEL_290;
                            }

                            if (!+[NSSQLCore debugDefault])
                            {
                              LOBYTE(v114) = 0;
                              v131 = v166;
                              goto LABEL_319;
                            }

                            v118 = [v117 componentsSeparatedByString:@"\n"];
                            v178 = 0u;
                            v179 = 0u;
                            v176 = 0u;
                            v177 = 0u;
                            v119 = [v118 countByEnumeratingWithState:&v176 objects:&buf count:16];
                            if (v119)
                            {
                              v163 = v113;
                              v120 = *v177;
                              while (1)
                              {
                                v121 = 0;
                                do
                                {
                                  if (*v177 != v120)
                                  {
                                    objc_enumerationMutation(v118);
                                  }

                                  v122 = *(*(&v176 + 1) + 8 * v121);
                                  v123 = *(a1 + 42);
                                  v124 = objc_autoreleasePoolPush();
                                  _pflogInitialize(1);
                                  if (v123)
                                  {
                                    if (_pflogging_enable_oslog >= 1)
                                    {
                                      if (_pflogging_catastrophic_mode)
                                      {
                                        v125 = _PFLogGetLogStream(1);
                                        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                                        {
LABEL_285:
                                          *v183 = 138412290;
                                          v184 = v122;
                                          _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m\n", v183, 0xCu);
                                        }
                                      }

                                      else
                                      {
                                        v125 = _PFLogGetLogStream(1);
                                        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_285;
                                        }
                                      }
                                    }

                                    _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m", v122);
                                    goto LABEL_283;
                                  }

                                  if (_pflogging_enable_oslog >= 1)
                                  {
                                    if (_pflogging_catastrophic_mode)
                                    {
                                      v126 = _PFLogGetLogStream(1);
                                      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_286;
                                      }
                                    }

                                    else
                                    {
                                      v126 = _PFLogGetLogStream(1);
                                      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
                                      {
LABEL_286:
                                        *v183 = 138412290;
                                        v184 = v122;
                                        _os_log_error_impl(&dword_18565F000, v126, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", v183, 0xCu);
                                      }
                                    }
                                  }

                                  _NSCoreDataLog_console(1, "%@", v122);
LABEL_283:
                                  objc_autoreleasePoolPop(v124);
                                  ++v121;
                                }

                                while (v119 != v121);
                                v127 = [v118 countByEnumeratingWithState:&v176 objects:&buf count:16];
                                v119 = v127;
                                if (!v127)
                                {
                                  v114 = 0;
                                  v113 = v163;
                                  goto LABEL_290;
                                }
                              }
                            }

                            v114 = 0;
LABEL_290:

                            ++v113;
                          }

                          v131 = 0;
LABEL_319:

                          [(NSSQLiteConnection *)a1 releaseSQLStatement];
                          [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
                          *(a1 + 312) &= ~2u;
                          *(a1 + 100) = 0;
                          *(a1 + 92) = 0;
                          *(a1 + 108) = 0;

                          if ((v114 & 1) == 0)
                          {
                            v146 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database failed integrity check.  Corrupted SQLite database at path: %@", *(a1 + 32)];
                            v147 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 32), *MEMORY[0x1E696A368], v146, @"message", 0}];
                            v148 = [_NSCoreDataException exceptionWithName:259 code:v146 reason:v147 userInfo:?];
                            objc_exception_throw(v148);
                          }
                        }

LABEL_320:
                        ++v164;
                      }

                      while (v164 != v162);
                      v108 = [obj countByEnumeratingWithState:&v172 objects:v182 count:16];
                    }

                    while (v108);
                  }

                  if (v161)
                  {
                    goto LABEL_335;
                  }

                  if ((v152 & 1) == 0)
                  {
                    if ([v153 objectForKey:@"NSSQLiteAnalyzeOption"])
                    {
                      [(NSSQLiteConnection *)a1 _executeSQLString:?];
                    }

                    if ([v153 objectForKey:@"NSSQLiteManualVacuumOption"])
                    {
                      [(NSSQLiteConnection *)a1 _executeSQLString:?];
                    }
                  }

                  if ((*(a1 + 312) & 0x40) == 0)
                  {
                    goto LABEL_335;
                  }

                  buf.f_bsize = 0;
                  v138 = [v153 objectForKey:@"NSSQLitePersistWALOption"];
                  if (v138)
                  {
                    if ([v138 intValue] != 1)
                    {
LABEL_334:
                      sqlite3_file_control(*v154, 0, 10, &buf);
                      goto LABEL_335;
                    }
                  }

                  else if (dword_1ED4BEEC0 != 1)
                  {
LABEL_335:
                    *(a1 + 312) &= ~0x80u;
                    goto LABEL_336;
                  }

                  buf.f_bsize = 1;
                  goto LABEL_334;
                }

                v49 = objc_autoreleasePoolPush();
                _pflogInitialize(1);
                if (_pflogging_enable_oslog >= 1)
                {
                  v50 = _pflogging_catastrophic_mode == 0;
                  v51 = _PFLogGetLogStream(1);
                  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
                  if (v50)
                  {
                    if (v52)
                    {
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v48;
                      goto LABEL_344;
                    }
                  }

                  else if (v52)
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v48;
LABEL_344:
                    _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_LOOKASIDE failed: %d\n", &buf, 8u);
                  }
                }

                _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_LOOKASIDE failed: %d", v48);
                objc_autoreleasePoolPop(v49);
                goto LABEL_124;
              }

              v44 = objc_autoreleasePoolPush();
              _pflogInitialize(1);
              if (_pflogging_enable_oslog >= 1)
              {
                v45 = _pflogging_catastrophic_mode == 0;
                v46 = _PFLogGetLogStream(1);
                v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                if (v45)
                {
                  if (v47)
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v43;
                    goto LABEL_342;
                  }
                }

                else if (v47)
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v43;
LABEL_342:
                  _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed (_qGTC): %d\n", &buf, 8u);
                }
              }

              _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed (_qGTC): %d", v43);
              objc_autoreleasePoolPop(v44);
              goto LABEL_116;
            }

            if (v42)
            {
              goto LABEL_153;
            }
          }

          v59 = "unknown";
          goto LABEL_154;
        }

        v23 = *(a1 + 312) | 0xC;
      }

      *(a1 + 312) = v23;
      goto LABEL_57;
    }
  }

LABEL_336:
  v139 = *MEMORY[0x1E69E9840];
}

- (void)_ensureNoFetchInProgress
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if ((*(a1 + 312) & 2) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to perform another operation with a fetch already in progress" userInfo:0]);
  }
}

- (void)_ensureDatabaseOpen
{
  v2 = a1[1];
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if (!a1[9])
  {
    v3 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134060, @"Attempted to perform an operation without an open database", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a1[4], *MEMORY[0x1E696A368], 0}]);
    objc_exception_throw(v3);
  }
}

- (void)execute
{
  v2 = self;
  v142 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  sqliteConnectionFlags = v2->_sqliteConnectionFlags;
  if ((*&sqliteConnectionFlags & 1) == 0)
  {
    v5 = sqlite3_reset(v2->_vmstatement);
    sqlite3_clear_bindings(v2->_vmstatement);
    sqliteConnectionFlags = v2->_sqliteConnectionFlags;
    if (v5)
    {
      v2->_sqliteConnectionFlags = (*&sqliteConnectionFlags & 0xFFFFFFFD);
      [(NSSQLiteConnection *)v2 releaseSQLStatement];
      v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(v2->_db)];
      v123 = *MEMORY[0x1E695D930];
      v111 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v5), @"NSSQLiteErrorDomain"}];
      v113 = v123;
      v112 = v122;
LABEL_187:
      v114 = [_NSCoreDataException exceptionWithName:v113 code:134180 reason:v112 userInfo:v111];
      objc_exception_throw(v114);
    }
  }

  v2->_sqliteConnectionFlags = (*&sqliteConnectionFlags & 0xFFFFFFFE);
  v136 = [-[NSSQLiteConnection sqlStatement](v2 "sqlStatement")];
  v135 = [v136 count];
  if (v135)
  {
    v6 = 0;
    v134 = v2;
    while (1)
    {
      v7 = [v136 objectAtIndex:v6];
      v8 = [v7 sqlType];
      if ([v7 hasObjectValue])
      {
        v9 = [v7 value];
        v10 = v9;
        if (v9 && [v9 isNSString] && objc_msgSend(v7, "allowsCoercion"))
        {
          v11 = [@"<null>" isEqualToString:v10];
        }

        else
        {
          v11 = 0;
        }

        v12 = 0;
      }

      else
      {
        v12 = [v7 int64];
        v11 = 0;
        v10 = 0;
      }

      if (+[NSSQLCore debugDefault]>= 2)
      {
        break;
      }

LABEL_101:
      if (v12)
      {
        goto LABEL_102;
      }

      if (!v10)
      {
        goto LABEL_112;
      }

      if (v8)
      {
        if (v11)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v63 = [(NSSQLiteAdapter *)[(NSSQLiteConnection *)v2 adapter] sqlTypeForExpressionConstantValue:v10];
        if (v63)
        {
          v8 = v63;
          if (v11)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v10 = [v10 description];
          v8 = 6;
          if (v11)
          {
LABEL_108:
            vmstatement = v2->_vmstatement;
            v58 = v6 + 1;
            v59 = "<null>";
LABEL_148:
            v56 = sqlite3_bind_text(vmstatement, v58, v59, -1, 0xFFFFFFFFFFFFFFFFLL);
            goto LABEL_149;
          }
        }
      }

      switch(v8)
      {
        case 1:
          v93 = v2->_vmstatement;
          v62 = [v10 intValue];
          v60 = v93;
          v61 = v6 + 1;
          goto LABEL_111;
        case 2:
        case 3:
          v66 = v2->_vmstatement;
          v55 = [v10 longLongValue];
          v53 = v66;
          v54 = v6 + 1;
          goto LABEL_104;
        case 4:
          v64 = v2->_vmstatement;
          v65 = [v10 stringValue];
          goto LABEL_146;
        case 5:
        case 6:
        case 9:
          v64 = v2->_vmstatement;
          v65 = v10;
LABEL_146:
          v59 = [v65 UTF8String];
          vmstatement = v64;
          goto LABEL_147;
        case 7:
          v90 = v2->_vmstatement;
          [v10 doubleValue];
          goto LABEL_155;
        case 8:
          v90 = v2->_vmstatement;
          [v10 timeIntervalSinceReferenceDate];
LABEL_155:
          v56 = sqlite3_bind_double(v90, v6 + 1, v91);
          break;
        case 10:
        case 17:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v68 = [v10 bytes];
            v69 = v2->_vmstatement;
            if (v68)
            {
              v70 = v68;
            }

            else
            {
              v70 = v10;
            }

            v71 = [v10 length];
            v72 = v69;
            v73 = v6 + 1;
            v74 = v70;
            goto LABEL_142;
          }

          if (v10)
          {
            [(_PFEvanescentData *)v10 _openMapping];
          }

          v67 = v2->_vmstatement;
          [v10 length];
          v56 = sqlite3_bind_blob_b();
          break;
        case 11:
          v94 = v10;
          if ([v10 isNSString])
          {
            v94 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v127 = MEMORY[0x1E695DF30];
            v128 = *MEMORY[0x1E695D940];
            v132 = MEMORY[0x1E696AEC0];
            v133 = objc_opt_class();
            v131 = [v132 stringWithFormat:@"Unexpected or improperly formatted UUID parameter with type %@, expected NSUUID or well-formed NSString", NSStringFromClass(v133)];
LABEL_196:
            v118 = v131;
            v121 = MEMORY[0x1E695E0F8];
            v119 = v127;
            v120 = v128;
LABEL_191:
            objc_exception_throw([v119 exceptionWithName:v120 reason:v118 userInfo:v121]);
          }

          v95 = malloc_type_malloc(0x10uLL, 0x1F702DCEuLL);
          [v94 getUUIDBytes:v95];
          v72 = v2->_vmstatement;
          v89 = MEMORY[0x1E69E9B38];
          v73 = v6 + 1;
          v74 = v95;
          v71 = 16;
LABEL_160:
          v56 = sqlite3_bind_blob(v72, v73, v74, v71, v89);
          break;
        case 12:
          objc_opt_class();
          v75 = v10;
          if (objc_opt_isKindOfClass())
          {
            v75 = [v10 absoluteString];
          }

          if (([v75 isNSString] & 1) == 0)
          {
            v127 = MEMORY[0x1E695DF30];
            v128 = *MEMORY[0x1E695D940];
            v129 = MEMORY[0x1E696AEC0];
            v130 = objc_opt_class();
            v131 = [v129 stringWithFormat:@"Unexpected or improperly formatted URI parameter type %@, expected NSURL or well-formed NSString", NSStringFromClass(v130)];
            goto LABEL_196;
          }

          v76 = v2->_vmstatement;
          v59 = [v75 UTF8String];
          vmstatement = v76;
LABEL_147:
          v58 = v6 + 1;
          goto LABEL_148;
        case 13:
          v77 = objc_alloc(MEMORY[0x1E696AEC0]);
          v78 = [v10 rangeValue];
          [v10 rangeValue];
          v80 = [v77 initWithFormat:@"%lu/%lu", v78, v79];
          v81 = sqlite3_bind_text(v2->_vmstatement, v6 + 1, [v80 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

          goto LABEL_150;
        case 15:
          v82 = [v7 tombstonedPropertyDescription];
          if (!v82)
          {
            v82 = [v7 propertyDescription];
          }

          v83 = [_PFRoutines retainedEncodeObjectValue:v10 forTransformableAttribute:v82];
          v81 = sqlite3_bind_blob(v2->_vmstatement, v6 + 1, [v83 bytes], objc_msgSend(v83, "length"), 0xFFFFFFFFFFFFFFFFLL);

          [v7 setTombstonedPropertyDescription:0];
          goto LABEL_150;
        case 16:
          v92 = [v10 _bytesPtrForStore];
          v71 = [v10 _bytesLengthForStore];
          v72 = v2->_vmstatement;
          v73 = v6 + 1;
          v74 = v92;
          v89 = 0;
          goto LABEL_160;
        case 18:
          v84 = [v7 tombstonedPropertyDescription];
          if (!v84)
          {
            v84 = [v7 propertyDescription];
          }

          *buf = 0;
          v85 = [v84 encode:v10 withRegistry:objc_msgSend(objc_msgSend(objc_msgSend(-[NSSQLiteConnection adapter](v2 error:{"adapter"), "sqlCore"), "persistentStoreCoordinator"), "codableAdapterRegistry"), buf}];
          if (!v85)
          {
            v124 = MEMORY[0x1E695DF30];
            v125 = *MEMORY[0x1E695D940];
            v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to encode %@: %@", v10, *buf];
            v137 = *MEMORY[0x1E696AA08];
            v138 = *buf;
            v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            v119 = v124;
            v120 = v125;
            v118 = v126;
            goto LABEL_191;
          }

          v86 = v85;
          v87 = v2->_vmstatement;
          v88 = [v85 bytes];
          v71 = [v86 length];
          v72 = v87;
          v73 = v6 + 1;
          v74 = v88;
LABEL_142:
          v89 = -1;
          goto LABEL_160;
        default:
          v115 = MEMORY[0x1E695DF30];
          v116 = *MEMORY[0x1E695D930];
          v117 = MEMORY[0x1E696AEC0];
          goto LABEL_190;
      }

LABEL_149:
      v81 = v56;
LABEL_150:
      if (v81)
      {
        v110 = *MEMORY[0x1E695D930];
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v81), @"NSSQLiteErrorDomain"}];
        v112 = @"sqlite3_bind* failed";
        v113 = v110;
        goto LABEL_187;
      }

      if (v135 == ++v6)
      {
        goto LABEL_162;
      }
    }

    if (!v10)
    {
      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      IsLogEnabled = _NSCoreDataIsLogEnabled(7);
      if (_pflogging_enable_oslog > 0)
      {
        v22 = IsLogEnabled;
      }

      else
      {
        v22 = 0;
      }

      if (!v12)
      {
        if (v22)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = v6;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = nil\n", buf, 0xCu);
            }
          }

          else
          {
            v45 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *&buf[4] = v6;
              _os_log_impl(&dword_18565F000, v45, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = nil\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v46 = 1;
        }

        else
        {
          v46 = 7;
        }

        _NSCoreDataLog_console(v46, "SQLite bind[%ld] = nil", v6);
        objc_autoreleasePoolPop(v20);
LABEL_112:
        v53 = v2->_vmstatement;
        v54 = v6 + 1;
        if (v8 != 3)
        {
          v56 = sqlite3_bind_null(v53, v54);
          goto LABEL_149;
        }

        v55 = 0;
LABEL_104:
        v56 = sqlite3_bind_int64(v53, v54, v55);
        goto LABEL_149;
      }

      if (v22)
      {
        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            v140 = 2048;
            v141 = v12;
            _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = (int64)%qd\n", buf, 0x16u);
          }
        }

        else
        {
          v34 = _PFLogGetLogStream(7);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            v140 = 2048;
            v141 = v12;
            _os_log_impl(&dword_18565F000, v34, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = (int64)%qd\n", buf, 0x16u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v35 = 1;
      }

      else
      {
        v35 = 7;
      }

      _NSCoreDataLog_console(v35, "SQLite bind[%ld] = (int64)%qd", v6, v12);
      objc_autoreleasePoolPop(v20);
LABEL_102:
      if ((v8 - 2) < 2)
      {
        v53 = v2->_vmstatement;
        v54 = v6 + 1;
        v55 = v12;
        goto LABEL_104;
      }

      if (v8 != 1)
      {
        v115 = MEMORY[0x1E695DF30];
        v116 = *MEMORY[0x1E695D930];
        v117 = MEMORY[0x1E696AEC0];
LABEL_190:
        v118 = [v117 stringWithFormat:@"binding not implemented for this SQLType %d", v8];
        v119 = v115;
        v120 = v116;
        v121 = 0;
        goto LABEL_191;
      }

      v60 = v2->_vmstatement;
      v61 = v6 + 1;
      v62 = v12;
LABEL_111:
      v56 = sqlite3_bind_int(v60, v61, v62);
      goto LABEL_149;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      v15 = _NSCoreDataIsLogEnabled(7);
      if (_pflogging_enable_oslog > 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (isKindOfClass)
      {
        if (v17)
        {
          if (_pflogging_catastrophic_mode)
          {
            v18 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBF url=%@>", objc_getProperty(v10, v16, 16, 1)];
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v19;
              _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v36 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBF url=%@>", objc_getProperty(v10, v16, 16, 1)];
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v37;
              _os_log_impl(&dword_18565F000, v36, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        v38 = _pflogging_catastrophic_mode;
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBF url=%@>", objc_getProperty(v10, v16, 16, 1)];
      }

      else
      {
        if (v17)
        {
          if (_pflogging_catastrophic_mode)
          {
            v25 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSData len=%lu>", objc_msgSend(v10, "length")];
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v26;
              _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v40 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSData len=%lu>", objc_msgSend(v10, "length")];
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v41;
              _os_log_impl(&dword_18565F000, v40, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        v38 = _pflogging_catastrophic_mode;
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSData len=%lu>", objc_msgSend(v10, "length")];
      }

      v42 = 7;
      if (v38)
      {
        v42 = 1;
      }

      _NSCoreDataLog_console(v42, "SQLite bind[%ld] = %@", v6, v39);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_autoreleasePoolPush();
        _pflogInitialize(7);
        if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v24 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v10;
              _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v43 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v10;
              _os_log_impl(&dword_18565F000, v43, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v44 = 1;
        }

        else
        {
          v44 = 7;
        }

        _NSCoreDataLog_console(v44, "SQLite bind[%ld] = %@", v6, v10);
        goto LABEL_100;
      }

      objc_opt_class();
      v27 = objc_opt_isKindOfClass();
      v14 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      v28 = _NSCoreDataIsLogEnabled(7);
      if (_pflogging_enable_oslog > 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      if ((v27 & 1) == 0)
      {
        if (v29)
        {
          if (_pflogging_catastrophic_mode)
          {
            v33 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v10;
              _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v51 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v140 = 2112;
              v141 = v10;
              _os_log_impl(&dword_18565F000, v51, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v52 = 1;
        }

        else
        {
          v52 = 7;
        }

        _NSCoreDataLog_console(v52, "SQLite bind[%ld] = %@", v6, v10);
        goto LABEL_100;
      }

      if (v29)
      {
        if (_pflogging_catastrophic_mode)
        {
          v30 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [v10 timeIntervalSinceReferenceDate];
            *buf = 134218240;
            *&buf[4] = v6;
            v140 = 2048;
            v141 = v31;
            _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = (timestamp)%f\n", buf, 0x16u);
          }
        }

        else
        {
          v47 = _PFLogGetLogStream(7);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            [v10 timeIntervalSinceReferenceDate];
            *buf = 134218240;
            *&buf[4] = v6;
            v140 = 2048;
            v141 = v48;
            _os_log_impl(&dword_18565F000, v47, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = (timestamp)%f\n", buf, 0x16u);
          }
        }
      }

      v49 = _pflogging_catastrophic_mode;
      [v10 timeIntervalSinceReferenceDate];
      if (v49)
      {
        v50 = 1;
      }

      else
      {
        v50 = 7;
      }

      _NSCoreDataLog_console(v50, "SQLite bind[%ld] = (timestamp)%f");
    }

    v2 = v134;
LABEL_100:
    objc_autoreleasePoolPop(v14);
    goto LABEL_101;
  }

LABEL_162:
  if ((*(&v2->_sqliteConnectionFlags + 1) & 0x10) != 0 && +[NSSQLCore debugDefault]>= 4)
  {
    v96 = v2->_vmstatement;
    if (!sqlite3_stmt_explain())
    {
      v97 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SQLite: %s", sqlite3_sql(v2->_vmstatement)];
      while (sqlite3_step(v2->_vmstatement) == 100)
      {
        v98 = sqlite3_column_int(v2->_vmstatement, 0);
        v99 = sqlite3_column_int(v2->_vmstatement, 1);
        v100 = sqlite3_column_int(v2->_vmstatement, 2);
        [v97 appendFormat:@"\n     %d %d %d %s", v98, v99, v100, sqlite3_column_text(v2->_vmstatement, 3)];
      }

      v101 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v102 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v97;
            _os_log_error_impl(&dword_18565F000, v102, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v103 = _PFLogGetLogStream(7);
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v97;
            _os_log_impl(&dword_18565F000, v103, OS_LOG_TYPE_INFO, "CoreData: details: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v104 = 1;
      }

      else
      {
        v104 = 7;
      }

      _NSCoreDataLog_console(v104, "%@", v97);
      objc_autoreleasePoolPop(v101);

      sqlite3_reset(v2->_vmstatement);
      v105 = v2->_vmstatement;
      sqlite3_stmt_explain();
    }
  }

  _execute(v2);
  if ((*&v2->_sqliteConnectionFlags & 2) != 0 && !v2->_columnsToFetch)
  {
    v106 = [-[NSSQLiteConnection sqlStatement](v2 "sqlStatement")];
    while (v106)
    {
      v107 = v106;
      v106 = *(v106 + 168);
      if (v106 == v107)
      {
        v108 = *(v107 + 72);
        goto LABEL_184;
      }
    }

    v108 = 0;
LABEL_184:
    [(NSSQLiteConnection *)v2 setColumnsToFetch:v108];
  }

  v109 = *MEMORY[0x1E69E9840];
}

- (id)sqlStatement
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  return self->_sqlStatement;
}

- (void)_finalizeStatement
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        v4 = *(v4 + 8);
      }

      if (v4 == v3)
      {
        sqlite3_reset(v3);
        sqlite3_clear_bindings(*(a1 + 80));
      }

      else
      {
        sqlite3_finalize(v3);
      }

      *(a1 + 80) = 0;
    }

    [(NSSQLiteConnection *)a1 clearTempTablesBindingsForStatement:?];
    v5 = *(a1 + 48);

    [(NSSQLiteStatement *)v5 clearCaches:?];
  }
}

- (void)releaseSQLStatement
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    [(NSSQLiteConnection *)a1 _finalizeStatement];
    [(NSSQLiteStatement *)*(a1 + 48) clearCaches:?];

    *(a1 + 48) = 0;
  }
}

- (void)resetSQLStatement
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sqlite3_reset(v3);
    sqlite3_clear_bindings(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  [(NSSQLiteConnection *)a1 clearTempTablesBindingsForStatement:?];

  *(a1 + 48) = 0;
}

- (void)_clearTransactionCaches
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = *(a1 + 216);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        Value = CFDictionaryGetValue(*(a1 + 216), *(*(&v33 + 1) + 8 * i));
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v9 = [Value countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(Value);
              }

              v13 = CFDictionaryGetValue(Value, *(*(&v29 + 1) + 8 * j));
              [(NSSQLiteStatement *)v13 clearCaches:?];
              v14 = *(a1 + 152);
              if (v13)
              {
                v15 = v14 == 0;
              }

              else
              {
                v15 = 1;
              }

              if (!v15)
              {
                CFDictionaryRemoveValue(v14, v13);
              }
            }

            v10 = [Value countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v10);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  CFDictionaryRemoveAllValues(*(a1 + 216));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = *(a1 + 224);
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = CFDictionaryGetValue(*(a1 + 224), *(*(&v25 + 1) + 8 * k));
        [(NSSQLiteStatement *)v21 clearCaches:?];
        v22 = *(a1 + 152);
        if (v21)
        {
          v23 = v22 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          CFDictionaryRemoveValue(v22, v21);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v18);
  }

  CFDictionaryRemoveAllValues(*(a1 + 224));
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_ensureNoStatementPrepared
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if (*(a1 + 80))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to perform another operation with a statement prepared" userInfo:0]);
  }
}

- (void)commitTransaction
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = objc_autoreleasePoolPush();
  if ((*(a1 + 312) & 2) != 0)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = NSStringFromSelector(sel_commitTransaction);
    v6 = objc_opt_class();
    [v3 raise:v4 format:{@"%@ -- %@ %p: attempted to commit a transaction while a fetch was in progress", v5, NSStringFromClass(v6), a1}];
  }

  if ((*(a1 + 41) & 1) == 0 && (*(a1 + 312) & 0x20) != 0)
  {
    v7 = [objc_msgSend(*(a1 + 376) objectForKey:{@"NSSQLitePragmasOption", "objectForKey:", @"auto_vacuum"}];
    if (!v7 || (v8 = v7, [MEMORY[0x1E695DFB0] null] == v7))
    {
      v8 = @"2";
    }

    else if ([(__CFString *)v8 isNSString])
    {
      v8 = [(__CFString *)v8 lowercaseString];
    }

    v9 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:?];
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) && *CFArrayGetValueAtIndex(v10, 0))
      {
        v11 = *CFArrayGetValueAtIndex(v10, 1);
        CFRelease(v10);
        if (v11)
        {
          v12 = -[NSSQLiteConnection copyRawIntegerRowsForSQL:](a1, [MEMORY[0x1E696AEC0] stringWithFormat:@"pragma auto_vacuum=%@", v8]);
          if (v12)
          {
            CFRelease(v12);
          }

          if ([@"2" isEqualToString:v8])
          {
            v13 = 0;
          }

          else
          {
            v18 = [@"incremental" isEqualToString:v8];
            v13 = 0x7FFFFFFFFFFFFFFFLL;
            if (v18)
            {
              v13 = 0;
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        CFRelease(v10);
      }
    }

    v8 = @"0";
    v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
    *(a1 + 296) = v13;
    v20 = @"_NSAutoVacuumLevel";
    v21[0] = v8;
    -[NSSQLCore _updateAutoVacuumMetadataWithValues:](*(a1 + 16), [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1]);
    *(a1 + 312) &= ~0x20u;
  }

  [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
  v14 = *(a1 + 136);
  if (!v14)
  {
    v14 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"COMMIT"];
    *(a1 + 136) = v14;
  }

  [(NSSQLiteConnection *)a1 prepareSQLStatement:v14];
  v15 = *(a1 + 136);
  if (v15)
  {
    v16 = *(v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 80) != v16)
  {
    [(NSSQLiteConnection *)a1 cacheCurrentDBStatementOn:v15];
  }

  _execute(a1);
  [(NSSQLiteConnection *)a1 resetSQLStatement];
  *(a1 + 41) = 0;
  [(NSSQLiteConnection *)a1 _clearTransactionCaches];
  if (*(a1 + 40) == 1)
  {
    *(a1 + 40) = 0;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v17 = *MEMORY[0x1E69E9840];

  objc_autoreleasePoolPop(v2);
}

- (void)_ensureNoTransactionOpen
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if (*(a1 + 40) == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Nested transactions are not supported" userInfo:0]);
  }
}

- (void)beginTransaction
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    [(NSSQLiteConnection *)a1 connect];
    [(NSSQLiteConnection *)a1 _ensureNoTransactionOpen];
    [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
    v3 = *(a1 + 128);
    if (!v3)
    {
      v3 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"BEGIN EXCLUSIVE"];
      *(a1 + 128) = v3;
    }

    [(NSSQLiteConnection *)a1 prepareSQLStatement:v3];
    v4 = *(a1 + 128);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 80) != v5)
    {
      [(NSSQLiteConnection *)a1 cacheCurrentDBStatementOn:v4];
    }

    _execute(a1);
    [(NSSQLiteConnection *)a1 resetSQLStatement];
    *(a1 + 41) = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      *(a1 + 40) = 1;
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (uint64_t)_clearSaveGeneratedCachedStatements
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    result = [(NSSQLiteConnection *)v1 _countOfVMCachedStatements];
    v3 = *(v1 + 200);
    if (v3)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v9;
        do
        {
          v6 = 0;
          do
          {
            if (*v9 != v5)
            {
              objc_enumerationMutation(v3);
            }

            -[NSSQLiteStatementCache _clearSaveGeneratedCachedStatements]([*(v1 + 200) objectForKey:*(*(&v8 + 1) + 8 * v6++)]);
          }

          while (v4 != v6);
          result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_countOfVMCachedStatements
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1 || (v2 = *(a1 + 152)) == 0)
  {
    v8 = 0;
    goto LABEL_22;
  }

  Count = CFDictionaryGetCount(v2);
  v4 = Count;
  if (Count <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = Count;
  }

  if (Count >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = (v15 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Count >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    CFDictionaryGetKeysAndValues(*(a1 + 152), v7, 0);
  }

  else
  {
    bzero(v15 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    CFDictionaryGetKeysAndValues(*(a1 + 152), v7, 0);
    if (!v4)
    {
      v8 = 0;
      goto LABEL_22;
    }
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = v7[v9];
    Value = CFDictionaryGetValue(*(a1 + 152), v10);
    if (Value && (WeakRetained = objc_loadWeakRetained(Value + 1)) != 0)
    {
      ++v8;
    }

    else
    {
      CFDictionaryRemoveValue(*(a1 + 152), v10);
    }

    ++v9;
  }

  while (v4 != v9);
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)newFetchedArray
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFB0] null];
  if ((*(a1 + 312) & 2) != 0)
  {
    v6 = v4;
    v61 = v3;
    v7 = *(a1 + 56);
    v8 = [v7 count];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = v6;
        if (sqlite3_column_type(*(a1 + 80), i) != 5)
        {
          v11 = [v7 objectAtIndex:i];
          v12 = *(a1 + 80);
          v13 = *(a1 + 8);
          if (v13)
          {
            dispatch_assert_queue_V2(v13);
          }

          v14 = [v11 sqlType];
          v63 = 0;
          v15 = [MEMORY[0x1E696AC08] defaultManager];
          if (sqlite3_column_type(v12, i) == 5)
          {
LABEL_12:
            v10 = 0;
          }

          else
          {
            switch(v14)
            {
              case 0:
                if (v11)
                {
                  v46 = v11[24];
                  if (v46 == 7 || v46 == 4)
                  {
                    goto LABEL_34;
                  }
                }

                goto LABEL_56;
              case 1:
                LODWORD(valuePtr) = sqlite3_column_int(v12, i);
                p_valuePtr = &valuePtr;
                v45 = kCFNumberIntType;
                goto LABEL_36;
              case 2:
              case 3:
LABEL_34:
                v63 = sqlite3_column_int64(v12, i);
                p_valuePtr = &v63;
                v45 = kCFNumberLongLongType;
                goto LABEL_36;
              case 4:
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(v12, i)}];
                v43 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v42];
                goto LABEL_30;
              case 5:
              case 6:
              case 9:
                v16 = sqlite3_column_text(v12, i);
                v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
                goto LABEL_37;
              case 7:
                valuePtr = sqlite3_column_double(v12, i);
                p_valuePtr = &valuePtr;
                v45 = kCFNumberDoubleType;
LABEL_36:
                v17 = CFNumberCreate(0, v45, p_valuePtr);
                goto LABEL_37;
              case 8:
                v47 = sqlite3_column_double(v12, i);
                v17 = CFDateCreate(0, v47);
                goto LABEL_37;
              case 10:
              case 17:
                v18 = objc_alloc(MEMORY[0x1E695DEF0]);
                v19 = sqlite3_column_blob(v12, i);
                v17 = [v18 initWithBytes:v19 length:{sqlite3_column_bytes(v12, i)}];
                goto LABEL_37;
              case 11:
                if (sqlite3_column_bytes(v12, i) != 16)
                {
                  goto LABEL_12;
                }

                v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{sqlite3_column_blob(v12, i)}];
                goto LABEL_37;
              case 12:
                v20 = sqlite3_column_text(v12, i);
                v21 = CFStringCreateWithCString(0, v20, 0x8000100u);
                v10 = [MEMORY[0x1E695DFF8] URLWithString:v21];
                v22 = v21;
                goto LABEL_20;
              case 13:
                v23 = sqlite3_column_text(v12, i);
                v24 = CFStringCreateWithCString(0, v23, 0x8000100u);
                ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v24, @"/");
                ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
                IntValue = CFStringGetIntValue(ValueAtIndex);
                v28 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
                v10 = [MEMORY[0x1E696B098] valueWithRange:{IntValue, CFStringGetIntValue(v28)}];
                CFRelease(v24);
                v22 = ArrayBySeparatingStrings;
LABEL_20:
                CFRelease(v22);
                break;
              case 15:
                v40 = objc_alloc(MEMORY[0x1E695DEF0]);
                v41 = sqlite3_column_blob(v12, i);
                v42 = [v40 initWithBytes:v41 length:{sqlite3_column_bytes(v12, i)}];
                v43 = +[_PFRoutines retainedDecodeValue:forTransformableAttribute:](_PFRoutines, v42, [v11 propertyDescription]);
LABEL_30:
                v10 = v43;

                break;
              case 16:
                v29 = sqlite3_column_blob(v12, i);
                v30 = sqlite3_column_bytes(v12, i);
                if (v30 < 1)
                {
                  goto LABEL_12;
                }

                v31 = v30;
                v32 = *v29;
                if (v32 == 3)
                {
                  v48 = [*(a1 + 16) fileBackedFuturesDirectory];
                  v49 = [MEMORY[0x1E695DEF0] dataWithBytes:v29 length:v31];
                  v50 = [_NSDataFileBackedFuture alloc];
                  v17 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v50, "initWithStoreMetadata:directory:", v49, [MEMORY[0x1E695DFF8] fileURLWithPath:v48 isDirectory:1]);
                }

                else
                {
                  if (v32 == 1)
                  {
                    v33 = [_PFExternalReferenceData alloc];
                    v34 = *(a1 + 16);
                    if (v34)
                    {
                      v35 = (*(v34 + 200) >> 2) & 7;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v31;
                    v37 = v29;
                    v38 = 0;
                    v39 = 0;
                  }

                  else
                  {
                    v51 = [v15 stringWithFileSystemRepresentation:v29 + 1 length:{strnlen(v29 + 1, (v30 - 1))}];
                    v52 = [*(a1 + 16) externalDataReferencesDirectory];
                    v53 = *(a1 + 16);
                    if (v53)
                    {
                      if (!atomic_load(v53 + 21))
                      {
                        v59 = v52;
                        [v53 externalDataReferencesDirectory];
                        v52 = v59;
                      }

                      v53 = atomic_load(v53 + 22);
                    }

                    v60 = [v52 stringByAppendingPathComponent:v51];
                    v55 = [v53 stringByAppendingPathComponent:v51];
                    v33 = [_PFExternalReferenceData alloc];
                    v56 = *(a1 + 16);
                    if (v56)
                    {
                      v35 = (*(v56 + 200) >> 2) & 7;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v31;
                    v37 = v29;
                    v38 = v60;
                    v39 = v55;
                  }

                  v17 = [(_PFExternalReferenceData *)v33 initWithStoreBytes:v37 length:v36 externalLocation:v38 safeguardLocation:v39 protectionLevel:v35];
                }

LABEL_37:
                v10 = v17;
                break;
              default:
LABEL_56:
                v58 = [_NSCoreDataException exceptionWithName:256 code:@"fetching not implemented for this value type" reason:0 userInfo:?];
                objc_exception_throw(v58);
            }
          }
        }

        [v5 addObject:v10];
      }
    }

    ++*(a1 + 88);
    _execute(a1);
    v3 = v61;
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (uint64_t)disconnect
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    [*(v1 + 328) removeAllObjects];
    v24 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: SQLite disconnection"];
    [(NSSQLiteConnection *)v1 _finalizeStatement];
    if (*(v1 + 40) == 1)
    {
      [(NSSQLiteConnection *)v1 rollbackTransaction];
    }

    [(NSSQLiteConnection *)v1 _clearTransactionCaches];
    [(NSSQLiteConnection *)v1 _clearCachedStatements];
    if (!*(v1 + 72))
    {
LABEL_44:

      *(v1 + 304) = 0;
      *(v1 + 312) &= ~2u;
      *(v1 + 72) = 0;
      *(v1 + 80) = 0;

      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
      result = [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v24];
      goto LABEL_45;
    }

    if (+[NSSQLCore debugDefault])
    {
      v3 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Disconnecting from sqlite database.\n", buf, 2u);
          }
        }

        else
        {
          v5 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Disconnecting from sqlite database.\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      _NSCoreDataLog_console(v6, "Disconnecting from sqlite database.");
      objc_autoreleasePoolPop(v3);
    }

    if (![*(v1 + 16) _persistentStoreCoordinator] || objc_msgSend(objc_msgSend(*(v1 + 16), "options"), "objectForKey:", @"NSReadOnlyPersistentStoreOption"))
    {
LABEL_21:
      if (sqlite3_close_v2(*(v1 + 72)))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v1 + 72))];
        v8 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v9 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v9 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
LABEL_52:
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Disconnected from database with pending transactions: %@", v7];
              *buf = 138412290;
              v26 = v23;
              _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
            }
          }
        }

        _NSCoreDataLog_console(1, "%@\n", [MEMORY[0x1E696AEC0] stringWithFormat:@"Disconnected from database with pending transactions: %@", v7]);
        objc_autoreleasePoolPop(v8);
        stmt = 0;
        while (1)
        {
          stmt = sqlite3_next_stmt(*(v1 + 72), stmt);
          if (!stmt)
          {
            goto LABEL_44;
          }

          v17 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v18 = _PFLogGetLogStream(1);
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_42;
              }
            }

            else
            {
              v18 = _PFLogGetLogStream(1);
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_42;
              }
            }

            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Un-finalized statement: %p", stmt];
            *buf = 138412290;
            v26 = v19;
            _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
          }

LABEL_42:
          _NSCoreDataLog_console(1, "%@\n", [MEMORY[0x1E696AEC0] stringWithFormat:@"Un-finalized statement: %p", stmt]);
          objc_autoreleasePoolPop(v17);
        }
      }

      goto LABEL_44;
    }

    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = atomic_load((v10 + 208));
      v12 = *(v1 + 72);
      if (v11)
      {
        FileSizeFromJournalHandle = readFileSizeFromJournalHandle(v12);
        if (FileSizeFromJournalHandle >= 41943041)
        {
          v14 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v15 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v26 = FileSizeFromJournalHandle;
                _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Marking -wal eligible for checkpointing in -disconnect due to its large size (%lld)\n", buf, 0xCu);
              }
            }

            else
            {
              v21 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v26 = FileSizeFromJournalHandle;
                _os_log_impl(&dword_18565F000, v21, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Marking -wal eligible for checkpointing in -disconnect due to its large size (%lld)\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v22 = 1;
          }

          else
          {
            v22 = 4;
          }

          _NSCoreDataLog_console(v22, "Marking -wal eligible for checkpointing in -disconnect due to its large size (%lld)", FileSizeFromJournalHandle);
          objc_autoreleasePoolPop(v14);
          sqlite3_db_config(*(v1 + 72), 1006, 0, 0);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = *(v1 + 72);
    }

    sqlite3_db_config(v12, 1006, 0, 0);
    goto LABEL_21;
  }

LABEL_45:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_clearCachedStatements
{
  v25 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_32;
  }

  v1 = result;
  v2 = result[1];
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = v1[19];
  if (v3)
  {
    Count = CFDictionaryGetCount(v3);
    v5 = Count;
    if (Count <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = Count;
    }

    if (Count >= 0x201)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = (&v20 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (Count >= 0x201)
    {
      v8 = NSAllocateScannedUncollectable();
      CFDictionaryGetKeysAndValues(v1[19], v8, 0);
    }

    else
    {
      bzero(&v20 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v6);
      CFDictionaryGetKeysAndValues(v1[19], v8, 0);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    v9 = 0;
    do
    {
      v10 = v8[v9];
      Value = CFDictionaryGetValue(v1[19], v10);
      if (Value && (WeakRetained = objc_loadWeakRetained(Value + 1)) != 0)
      {
        v13 = WeakRetained;
        [(NSSQLiteStatement *)WeakRetained clearCaches:?];
      }

      else
      {
        CFDictionaryRemoveValue(v1[19], v10);
      }

      ++v9;
    }

    while (v5 != v9);
    if (v5 >= 0x201)
    {
      NSZoneFree(0, v8);
    }
  }

LABEL_23:
  v14 = v1[25];
  if (v14)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v20 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          -[NSSQLiteStatementCache clearCachedStatements]([v1[25] objectForKey:*(*(&v20 + 1) + 8 * i)]);
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  result = [(NSSQLiteConnection *)v1 _clearOtherStatements];
LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_clearOtherStatements
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    v3 = v1[14];
    if (v3)
    {
      sqlite3_finalize(v3);
    }

    v1[14] = 0;
    v4 = v1[15];
    if (v4)
    {
      sqlite3_finalize(v4);
    }

    v1[15] = 0;
    result = v1[46];
    if (result)
    {
      result = sqlite3_finalize(result);
    }

    v1[46] = 0;
  }

  return result;
}

- (void)dealloc
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__NSSQLiteConnection_dealloc__block_invoke;
  block[3] = &unk_1E6EC16F0;
  block[4] = self;
  current_queue = dispatch_get_current_queue();
  if (dispatch_get_context(current_queue) == self)
  {
    __29__NSSQLiteConnection_dealloc__block_invoke(block);
  }

  else
  {
    dispatch_sync(self->_queue, block);
  }

  dispatch_release(self->_queue);
  self->_queue = 0;
  v4.receiver = self;
  v4.super_class = NSSQLiteConnection;
  [(NSSQLiteConnection *)&v4 dealloc];
}

void __29__NSSQLiteConnection_dealloc__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
    v3 = *(a1 + 32);
  }

  *(v3 + 16) = 0;

  *(*(a1 + 32) + 376) = 0;
  [(NSSQLiteConnection *)*(a1 + 32) releaseSQLStatement];

  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 64) = 0;
  v5 = *(a1 + 32);
  if (*(v5 + 72))
  {
    [(NSSQLiteConnection *)v5 disconnect];
  }

  for (i = 0; i != 5; ++i)
  {
    v7 = *(*(a1 + 32) + 8 * i + 248);
    if (v7)
    {
      for (j = 0; j != 32; j += 8)
      {
        v9 = *(v7 + j);
        if (v9)
        {
          if ((i & 3) == 0)
          {
          }

          *(v7 + j) = 0;
        }
      }

      PF_FREE_OBJECT_ARRAY(*(*(a1 + 32) + 8 * i + 248));
      *(*(a1 + 32) + 8 * i + 248) = 0;
    }
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 200);
  if (v11)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          -[NSSQLiteStatementCache clearCachedStatements]([*(*(a1 + 32) + 200) objectForKey:*(*(&v22 + 1) + 8 * v15++)]);
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    CFRelease(*(*(a1 + 32) + 200));
    v10 = *(a1 + 32);
  }

  *(*(a1 + 32) + 208) = 0;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 144) = 0;
  v16 = *(a1 + 32);
  v17 = *(v16 + 152);
  if (v17)
  {
    CFRelease(v17);
    v16 = *(a1 + 32);
  }

  *(v16 + 152) = 0;

  *(*(a1 + 32) + 160) = 0;
  *(*(a1 + 32) + 304) = 0;

  *(*(a1 + 32) + 216) = 0;
  *(*(a1 + 32) + 224) = 0;
  v18 = *(a1 + 32);
  v19 = *(v18 + 288);
  if (v19)
  {
    CFRelease(v19);
    *(*(a1 + 32) + 288) = 0;
    v18 = *(a1 + 32);
  }

  *(*(a1 + 32) + 176) = 0;
  *(*(a1 + 32) + 184) = 0;

  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 328) = 0;

  *(*(a1 + 32) + 336) = 0;
  *(*(a1 + 32) + 344) = 0;
  v20 = *(*(a1 + 32) + 360);
  if (v20)
  {
    dispatch_block_cancel(v20);
    _Block_release(*(*(a1 + 32) + 360));
    *(*(a1 + 32) + 360) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_opt_self();

    objc_opt_class();
  }
}

- (uint64_t)canConnect
{
  if (result)
  {
    v1 = result;
    if (!*(result + 24))
    {
      *(result + 24) = [*(result + 16) URL];
    }

    if (!*(v1 + 32))
    {
      *(v1 + 32) = [*(v1 + 24) path];
    }

    if (*(v1 + 72))
    {
      return 1;
    }

    v2 = *(v1 + 16);
    if (v2 && (*(v2 + 201) & 0x40) != 0)
    {
      return 1;
    }

    else
    {
      v3 = [MEMORY[0x1E696AC08] defaultManager];
      v4 = *(v1 + 32);

      return [v3 fileExistsAtPath:v4];
    }
  }

  return result;
}

- (uint64_t)_restoreBusyTimeOutSettings
{
  v1 = *(a1 + 232) * 0.125;
  v2 = 30.0;
  if (v1 >= 30.0)
  {
    v3 = 30000;
  }

  else
  {
    v2 = 2.0;
    if (v1 >= 2.0)
    {
      v2 = ceil(v1);
      v3 = 1000 * vcvtpd_s64_f64(v1);
    }

    else
    {
      v3 = 2000;
    }
  }

  *(a1 + 240) = v2;
  return sqlite3_busy_timeout(*(a1 + 72), v3);
}

- (void)fetchMetadata
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0;
    goto LABEL_16;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT %@, %@, %@ FROM %@", @"Z_VERSION", @"Z_UUID", @"Z_PLIST", @"Z_METADATA"));
  [(NSSQLiteConnection *)a1 prepareSQLStatement:v4];
  [a1 execute];
  v5 = *(a1 + 64);
  if (!v5)
  {
    v6 = [[NSSQLColumn alloc] initWithColumnName:@"Z_VERSION" sqlType:1];
    v7 = [[NSSQLColumn alloc] initWithColumnName:@"Z_UUID" sqlType:6];
    v8 = [[NSSQLColumn alloc] initWithColumnName:@"Z_PLIST" sqlType:10];
    *(a1 + 64) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, v7, v8, 0}];

    v5 = *(a1 + 64);
  }

  [(NSSQLiteConnection *)a1 setColumnsToFetch:v5];
  v9 = [(NSSQLiteConnection *)a1 newFetchedArray];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectAtIndex:2];
    if (v11 == NSKeyValueCoding_NullValue)
    {
      goto LABEL_13;
    }

    v12 = [v10 objectAtIndex:2];
    v13 = v12;
    if (!v12 || ![v12 length])
    {
      goto LABEL_13;
    }

    v25 = 0;
    v14 = [MEMORY[0x1E696AE40] propertyListWithData:v13 options:0 format:0 error:&v25];
    v15 = v14;
    if (v14 && ([v14 isNSDictionary] & 1) != 0)
    {
      [v3 setDictionary:v15];
LABEL_13:
      v16 = [v10 objectAtIndex:1];
      if (!v16)
      {
        v24 = [_NSCoreDataException exceptionWithName:259 code:@"Metadata table is missing database UUID." reason:0 userInfo:?];
        objc_exception_throw(v24);
      }

      [v3 setObject:v16 forKey:@"NSStoreUUID"];
      goto LABEL_15;
    }

    v19 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        v27 = v13;
      }

      else
      {
        LogStream = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        v27 = v13;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: failure reading metadata plist with data bytes: %@\n", buf, 0xCu);
    }

LABEL_24:
    _NSCoreDataLog_console(1, "failure reading metadata plist with data bytes: %@", v13);
    objc_autoreleasePoolPop(v19);
    v21 = v25;
    if (!v25)
    {
      v21 = @"<null>";
    }

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An error %@ occurred converting the metadata plist data: %@", v21, v13];
    v23 = [_NSCoreDataException exceptionWithName:259 code:v22 reason:0 userInfo:?];
    objc_exception_throw(v23);
  }

LABEL_15:

  [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
  *(a1 + 312) &= ~2u;
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  [(NSSQLiteConnection *)a1 releaseSQLStatement];

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

- (uint64_t)_ensureWalFileExists
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 72);
  if (!v2)
  {
    return -1;
  }

  FileSizeFromJournalHandle = readFileSizeFromJournalHandle(v2);
  if (FileSizeFromJournalHandle <= 0x3FF)
  {
    [(NSSQLiteConnection *)a1 _executeSQLString:?];
    [(NSSQLiteConnection *)a1 _executeSQLString:?];
    [(NSSQLiteConnection *)a1 _executeSQLString:?];
    [(NSSQLiteConnection *)a1 _executeSQLString:?];
  }

  return FileSizeFromJournalHandle;
}

- (void)beginReadTransaction
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    [(NSSQLiteConnection *)a1 connect];
    [(NSSQLiteConnection *)a1 _ensureNoTransactionOpen];
    [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
    v3 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"BEGIN TRANSACTION"];
    [(NSSQLiteConnection *)a1 prepareSQLStatement:v3];
    _execute(a1);
    [(NSSQLiteConnection *)a1 releaseSQLStatement];
    *(a1 + 41) = 1;

    if ((*(a1 + 40) & 1) == 0)
    {
      *(a1 + 40) = 1;
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)rollbackTransaction
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      if ((*(a1 + 312) & 2) != 0)
      {
        v2 = MEMORY[0x1E695DF30];
        v3 = *MEMORY[0x1E695D930];
        v4 = NSStringFromSelector(sel_rollbackTransaction);
        v5 = objc_opt_class();
        [v2 raise:v3 format:{@"%@ -- %@ %p: attempted to rollback a transaction while a fetch was in progress", v4, NSStringFromClass(v5), a1}];
      }

      [(NSSQLiteConnection *)a1 resetSQLStatement];
      v6 = *(a1 + 144);
      if (!v6)
      {
        v6 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"ROLLBACK"];
        *(a1 + 144) = v6;
      }

      [(NSSQLiteConnection *)a1 prepareSQLStatement:v6];
      v7 = *(a1 + 144);
      if (v7)
      {
        v8 = *(v7 + 8);
      }

      else
      {
        v8 = 0;
      }

      if (*(a1 + 80) != v8)
      {
        [(NSSQLiteConnection *)a1 cacheCurrentDBStatementOn:v7];
      }

      _execute(a1);
      [(NSSQLiteConnection *)a1 resetSQLStatement];
      *(a1 + 41) = 0;
      [(NSSQLiteConnection *)a1 _clearTransactionCaches];
    }

    if (*(a1 + 40) == 1)
    {
      *(a1 + 40) = 0;
      v9 = [MEMORY[0x1E696AD88] defaultCenter];

      [v9 postNotificationName:@"NSSQLConnectionRollbackTransactionNotification" object:a1];
    }
  }
}

- (_PFSQLiteSnapshotWrapper)currentQueryGenerationIdentifier
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_41;
  }

  v1 = result;
  s = result->_s;
  if (s)
  {
    dispatch_assert_queue_V2(s);
  }

  if ([*(v1 + 328) count])
  {
    v3 = [*(v1 + 328) lastObject];
    goto LABEL_38;
  }

  v21 = 0;
  v4 = 5;
  do
  {
    [(NSSQLiteConnection *)v1 connect];
    if ([(NSSQLiteConnection *)v1 _ensureWalFileExists]< 0)
    {
      v7 = 14;
      goto LABEL_24;
    }

    [(NSSQLiteConnection *)v1 beginReadTransaction];
    v21 = 0;
    v3 = [(NSSQLiteConnection *)v1 _currentQueryGenerationSnapshot:?];
    if (!v3)
    {
      v10 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
LABEL_27:
            *buf = 138412290;
            v23 = v21;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to get a currentQueryGeneration: %@\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "Failed to get a currentQueryGeneration: %@", v21);
      v7 = 0;
      objc_autoreleasePoolPop(v10);
      goto LABEL_23;
    }

    v5 = [(NSSQLiteConnection *)v1 _adoptQueryGenerationWithSnapshot:v3];
    v6 = v5;
    if (!v5)
    {
      [*(v1 + 328) addObject:v3];

      goto LABEL_38;
    }

    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_20;
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        *buf = 67109120;
        LODWORD(v23) = v6;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: currentQueryGenerationIdentifier failed to adopt currentQueryGeneration: %d\n", buf, 8u);
      }
    }

LABEL_20:
    _NSCoreDataLog_console(1, "currentQueryGenerationIdentifier failed to adopt currentQueryGeneration: %d", v6);
    objc_autoreleasePoolPop(v8);

LABEL_23:
    [(NSSQLiteConnection *)v1 rollbackTransaction];
LABEL_24:
    --v4;
  }

  while (v4);
  v12 = v21 == 0;
  v13 = _PFLogGetLogStream(17);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (v12)
  {
    if (v14)
    {
      *buf = 67109120;
      LODWORD(v23) = v7;
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: currentQueryGenerationIdentifier failed with sqlite error: %d\n", buf, 8u);
    }

    v19 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v23) = v7;
      v16 = "CoreData: currentQueryGenerationIdentifier failed with sqlite error: %d";
      v17 = v19;
      v18 = 8;
LABEL_43:
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, v16, buf, v18);
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v23 = v21;
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: currentQueryGenerationIdentifier failed with NSError: %@\n", buf, 0xCu);
    }

    v15 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = v21;
      v16 = "CoreData: currentQueryGenerationIdentifier failed with NSError: %@";
      v17 = v15;
      v18 = 12;
      goto LABEL_43;
    }
  }

  v3 = 0;
LABEL_38:
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->_externalReferences, 1u, memory_order_relaxed);
  }

  result = v3;
LABEL_41:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)databaseIsEmpty
{
  if (result)
  {
    v1 = *(result + 32);
    memset(&v3.st_size, 0, 48);
    return stat([v1 fileSystemRepresentation], &v3) || v3.st_size == 0;
  }

  return result;
}

- (uint64_t)_hasPersistentHistoryTables
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = 0;
  if ([(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?])
  {
    v3 = [(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?];
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

- (uint64_t)_clearBindVariablesForInsertedRow
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = [*(a1 + 48) entity];
  v4 = [v3 attributeColumns];
  v5 = [*(a1 + 48) bindVariables];
  v6 = [objc_msgSend(v3 "foreignEntityKeyColumns")];
  v36 = 0u;
  v37 = 0u;
  v7 = v6 + [objc_msgSend(v3 "foreignOrderKeyColumns")] + 3;
  v38 = 0u;
  v39 = 0u;
  v8 = [v3 foreignKeyColumns];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7 += [objc_msgSend(*(*(&v36 + 1) + 8 * i) "toOneRelationship")] ^ 1;
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v10);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  result = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (result)
  {
    v14 = result;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v4);
        }

        if (([*(*(&v32 + 1) + 8 * v16) isConstrained] & 1) == 0)
        {
          if (byte_1ED4BEEC7)
          {
            if (([v5 isNSArray] & 1) == 0)
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                v20 = [*(a1 + 48) bindVariables];
                *buf = 138412290;
                v41 = v20;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: rdar://145887349, bindings is not an NSArray. %@\n", buf, 0xCu);
              }

              v21 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                v22 = [*(a1 + 48) bindVariables];
                *buf = 138412290;
                v41 = v22;
                v23 = "CoreData: rdar://145887349, bindings is not an NSArray. %@";
                v24 = v21;
                v25 = 12;
                goto LABEL_31;
              }

LABEL_32:
              __break(1u);
            }

            if (CFArrayGetCount(v5) < v7)
            {
              v26 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = [*(a1 + 48) sqlString];
                v28 = [*(a1 + 48) bindVariables];
                *buf = 138412546;
                v41 = v27;
                v42 = 2112;
                v43 = v28;
                _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: fault: rdar://145887349, bidx > bindings. Statement: %@ bindings: %@\n", buf, 0x16u);
              }

              v29 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
              {
                v30 = [*(a1 + 48) sqlString];
                v31 = [*(a1 + 48) bindVariables];
                *buf = 138412546;
                v41 = v30;
                v42 = 2112;
                v43 = v31;
                v23 = "CoreData: rdar://145887349, bidx > bindings. Statement: %@ bindings: %@";
                v24 = v29;
                v25 = 22;
LABEL_31:
                _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, v23, buf, v25);
              }

              goto LABEL_32;
            }
          }

          v17 = v7++;
          [CFArrayGetValueAtIndex(v5 v17)];
        }

        ++v16;
      }

      while (v14 != v16);
      result = [v4 countByEnumeratingWithState:&v32 objects:v44 count:16];
      v14 = result;
    }

    while (result);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)currentStats
{
  v45 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (!a1)
  {
    goto LABEL_45;
  }

  *pHiwtr = 0;
  v3 = sqlite3_db_status(*(a1 + 72), 8, pHiwtr, &pHiwtr[1], 0);
  if (!v3)
  {
    *a2 = pHiwtr[0];
    goto LABEL_10;
  }

  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v5 = _pflogging_catastrophic_mode == 0;
    LogStream = _PFLogGetLogStream(1);
    v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
LABEL_46:
        v32 = sqlite3_errmsg(*(a1 + 72));
        *buf = 136315394;
        v42 = v32;
        v43 = 1024;
        v44 = v3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to get SQLITE_DBSTATUS_CACHE_MISS: %s (%d)\n\n", buf, 0x12u);
      }
    }

    else if (v7)
    {
      goto LABEL_46;
    }
  }

  v8 = sqlite3_errmsg(*(a1 + 72));
  _NSCoreDataLog_console(1, "Unable to get SQLITE_DBSTATUS_CACHE_MISS: %s (%d)\n", v8, v3);
  objc_autoreleasePoolPop(v4);
LABEL_10:
  *pCur = 0;
  v9 = sqlite3_db_status(*(a1 + 72), 7, pCur, &pCur[1], 0);
  if (!v9)
  {
    *(a2 + 8) = pCur[0];
    goto LABEL_18;
  }

  v10 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v11 = _pflogging_catastrophic_mode == 0;
    v12 = _PFLogGetLogStream(1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
LABEL_47:
        v33 = sqlite3_errmsg(*(a1 + 72));
        *buf = 136315394;
        v42 = v33;
        v43 = 1024;
        v44 = v9;
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to get SQLITE_DBSTATUS_CACHE_HIT: %s (%d)\n\n", buf, 0x12u);
      }
    }

    else if (v13)
    {
      goto LABEL_47;
    }
  }

  v14 = sqlite3_errmsg(*(a1 + 72));
  _NSCoreDataLog_console(1, "Unable to get SQLITE_DBSTATUS_CACHE_HIT: %s (%d)\n", v14, v9);
  objc_autoreleasePoolPop(v10);
LABEL_18:
  *v38 = 0;
  v15 = sqlite3_db_status(*(a1 + 72), 12, v38, &v38[1], 0);
  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v17 = _pflogging_catastrophic_mode == 0;
      v18 = _PFLogGetLogStream(1);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (v17)
      {
        if (v19)
        {
LABEL_48:
          v34 = sqlite3_errmsg(*(a1 + 72));
          *buf = 136315394;
          v42 = v34;
          v43 = 1024;
          v44 = v15;
          _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to get SQLITE_DBSTATUS_CACHE_SPILL: %s (%d)\n\n", buf, 0x12u);
        }
      }

      else if (v19)
      {
        goto LABEL_48;
      }
    }

    v20 = sqlite3_errmsg(*(a1 + 72));
    _NSCoreDataLog_console(1, "Unable to get SQLITE_DBSTATUS_CACHE_SPILL: %s (%d)\n", v20, v15);
    objc_autoreleasePoolPop(v16);
    goto LABEL_26;
  }

  *(a2 + 16) = v38[0];
LABEL_26:
  v21 = *(a1 + 352);
  if (!v21)
  {
    v22 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], @"pragma page_size");
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = v22;
    v23 = [[NSSQLColumn alloc] initWithColumnName:@"page_size" sqlType:2];
    [v36 addObject:v23];

    [(NSSQLiteConnection *)a1 prepareSQLStatement:v22];
    [(NSSQLiteConnection *)a1 setColumnsToFetch:v36];
    [a1 execute];
    v21 = 0;
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (1)
    {
      v25 = [(NSSQLiteConnection *)a1 newFetchedArray];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      if ([v25 count] == 1)
      {
        v21 = [objc_msgSend(v26 objectAtIndex:{0), "longLongValue"}];
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v27 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v28 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v42 = v21;
                _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: error: Fetched page size: %lld\n", buf, 0xCu);
              }
            }

            else
            {
              v29 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v42 = v21;
                _os_log_impl(&dword_18565F000, v29, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetched page size: %lld\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v30 = 1;
          }

          else
          {
            v30 = 4;
          }

          _NSCoreDataLog_console(v30, "Fetched page size: %lld", v21);
          objc_autoreleasePoolPop(v27);
        }
      }
    }

    [(NSSQLiteConnection *)a1 releaseSQLStatement];
    [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
    *(a1 + 312) &= ~2u;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    *(a1 + 108) = 0;

    *(a1 + 352) = v21;
  }

  *(a2 + 24) = v21;
LABEL_45:
  v31 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_hasHistoryTransactionStringTable
{
  if (result)
  {
    v1 = result;
    if ((*(result + 313) & 4) != 0)
    {
      return 1;
    }

    else
    {
      result = [(NSSQLiteConnection *)result _hasTableWithName:0 isTemp:?];
      if (result)
      {
        v2 = 1024;
      }

      else
      {
        v2 = 0;
      }

      *(v1 + 312) = *(v1 + 312) & 0xFFFFFBFF | v2;
    }
  }

  return result;
}

- (NSSQLitePrefetchRequestCache)prefetchRequestCache
{
  if (result)
  {
    v1 = result;
    result = result[6]._length;
    if (!result)
    {
      result = [[NSSQLitePrefetchRequestCache alloc] initWithSQLCore:v1->_length];
      v1[6]._length = result;
    }
  }

  return result;
}

- (id)fetchTableCreationSQL
{
  if (result)
  {
    return [(NSSQLiteConnection *)result fetchCreationSQLForType:0 containing:?];
  }

  return result;
}

- (id)_activeGenerations
{
  if (result)
  {
    v1 = [result[41] copy];
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __40__NSSQLiteConnection__activeGenerations__block_invoke;
    v3[3] = &unk_1E6EC40B0;
    v3[4] = v2;
    [v1 enumerateObjectsUsingBlock:v3];

    return v2;
  }

  return result;
}

- (void)_endFetch
{
  if (result)
  {
    v1 = result;
    result = [(NSSQLiteConnection *)result setColumnsToFetch:?];
    *(v1 + 78) &= ~2u;
    *(v1 + 100) = 0;
    *(v1 + 92) = 0;
    *(v1 + 27) = 0;
  }

  return result;
}

- (uint64_t)setUpIndexTracking
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || ![a1[2] _persistentStoreCoordinator])
  {
LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  if ([a1[2] isReadOnly])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v4 = "CoreData: error: index tracking enabled on read-only store\n";
LABEL_52:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v4, buf, 2u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v4 = "CoreData: warning: index tracking enabled on read-only store\n";
          goto LABEL_52;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    _NSCoreDataLog_console(v7, "index tracking enabled on read-only store");
    objc_autoreleasePoolPop(v2);
    goto LABEL_20;
  }

  v5 = a1[2];
  if (v5 && (v5[202] & 1) != 0 && ([(NSSQLiteConnection *)a1 hasIndexTrackingTable]& 1) == 0)
  {
    [(NSSQLiteConnection *)a1 beginTransaction];
    if (![(NSSQLiteConnection *)a1 hasIndexTrackingTable])
    {
      v10 = [objc_msgSend(a1[2] "ancillarySQLModels")];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 24);
      }

      else
      {
        v12 = 0;
      }

      v13 = objc_opt_class();
      v30 = [v12 objectForKeyedSubscript:NSStringFromClass(v13)];
      if (v11)
      {
        v14 = *(v11 + 32);
      }

      else
      {
        v14 = 0;
      }

      [(NSSQLiteConnection *)a1 createTablesForEntities:v14];
      v15 = [(NSSQLiteConnection *)a1 fetchCreationSQLForType:0 containing:?];
      v16 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](a1, v30, [v15 count]);
      v17 = v16 != 0;
      v18 = [v15 count];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v15;
      v19 = [v15 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v19)
      {
        v20 = v16 - v18 + 1;
        v31 = *v37;
LABEL_28:
        v21 = 0;
        while (1)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(obj);
          }

          if (!v17)
          {
            break;
          }

          v22 = strstr([objc_msgSend(*(*(&v36 + 1) + 8 * v21) objectAtIndexedSubscript:{1), "UTF8String"}], " INDEX ");
          if (sscanf(v22 + 7, "%1023s", buf))
          {
            [(NSSQLiteConnection *)a1 prepareInsertStatementForAncillaryEntity:v30];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v23 = [a1[6] bindVariables];
            v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v24)
            {
              v25 = *v33;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v33 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v32 + 1) + 8 * i);
                  v28 = [v27 index];
                  if (v28)
                  {
                    if (v28 == 4)
                    {
                      [v27 setValue:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", buf), "uppercaseString")}];
                    }
                  }

                  else
                  {
                    [v27 setInt64:v20++];
                  }
                }

                v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
              }

              while (v24);
            }

            [a1 execute];
            v17 = 1;
            [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
          }

          else
          {
            v17 = 1;
          }

          if (++v21 == v19)
          {
            v19 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
            if (v19)
            {
              goto LABEL_28;
            }

            goto LABEL_48;
          }
        }
      }

      else
      {
LABEL_48:
        if (v17)
        {
          v6 = 1;
          [(NSSQLiteConnection *)a1 commitTransaction];
          goto LABEL_21;
        }
      }

      v6 = 0;
      [(NSSQLiteConnection *)a1 rollbackTransaction];
      goto LABEL_21;
    }

    [(NSSQLiteConnection *)a1 rollbackTransaction];
  }

  v6 = 1;
LABEL_21:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)harvestUsedIndexes
{
  if (result)
  {
    v1 = result[43];
    result[43] = objc_alloc_init(MEMORY[0x1E695DF90]);

    return v1;
  }

  return result;
}

- (uint64_t)_walCheckpointWithMode:(uint64_t)a1
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = 0;
    goto LABEL_64;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (!*(a1 + 72))
  {
    v7 = 26;
    goto LABEL_64;
  }

  v5 = *(a1 + 16);
  if (!v5 || !os_unfair_lock_trylock(v5 + 39))
  {
    v7 = 5;
    goto LABEL_64;
  }

  *pnCkpt = 0;
  sqlite3_busy_timeout(*(a1 + 72), 1);
  v6 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v7 = sqlite3_wal_checkpoint_v2(*(a1 + 72), "main", a2, &pnCkpt[1], pnCkpt);
  v8 = clock_gettime_nsec_np(_CLOCK_REALTIME) - v6;
  if (v8 >= 0x3B9ACA00 && byte_1ED4BEECC == 1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8 / 0xF4240;
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v12 = qos_class_self();
          *buf = 134218752;
          *v37 = v10;
          *&v37[8] = 1024;
          v38 = v12;
          v39 = 1024;
          v40 = pnCkpt[1];
          v41 = 1024;
          v42 = pnCkpt[0];
          v13 = "CoreData: error: WAL checkpoint: Checkpoint took %llu ms. Requested QoS: %d. Log size: %d checkpointed: %d\n";
LABEL_67:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v13, buf, 0x1Eu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v34 = qos_class_self();
          *buf = 134218752;
          *v37 = v10;
          *&v37[8] = 1024;
          v38 = v34;
          v39 = 1024;
          v40 = pnCkpt[1];
          v41 = 1024;
          v42 = pnCkpt[0];
          v13 = "CoreData: warning: WAL checkpoint: Checkpoint took %llu ms. Requested QoS: %d. Log size: %d checkpointed: %d\n";
          goto LABEL_67;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v14 = qos_class_self();
      v15 = 1;
    }

    else
    {
      v14 = qos_class_self();
      v15 = 2;
    }

    _NSCoreDataLog_console(v15, "WAL checkpoint: Checkpoint took %llu ms. Requested QoS: %d. Log size: %d checkpointed: %d", v10, v14, pnCkpt[1], pnCkpt[0]);
    objc_autoreleasePoolPop(v9);
  }

  v16 = objc_autoreleasePoolPush();
  switch(v7)
  {
    case 6:
      _pflogInitialize(9);
      IsLogEnabled = _NSCoreDataIsLogEnabled(9);
      v19 = "WAL checkpoint: Database locked";
      if (IsLogEnabled && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v22 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Database locked\n", buf, 2u);
          }
        }

        else
        {
          v26 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v26, OS_LOG_TYPE_INFO, "CoreData: debug: WAL checkpoint: Database locked\n", buf, 2u);
          }
        }

        v19 = "WAL checkpoint: Database locked";
      }

      break;
    case 5:
      _pflogInitialize(9);
      v18 = _NSCoreDataIsLogEnabled(9);
      v19 = "WAL checkpoint: Database busy";
      if (v18 && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v20 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Database busy\n", buf, 2u);
          }
        }

        else
        {
          v25 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_INFO, "CoreData: debug: WAL checkpoint: Database busy\n", buf, 2u);
          }
        }

        v19 = "WAL checkpoint: Database busy";
      }

      break;
    case 0:
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v17 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v37 = pnCkpt[1];
            *&v37[4] = 1024;
            *&v37[6] = pnCkpt[0];
            _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Database did checkpoint. Log size: %d checkpointed: %d\n", buf, 0xEu);
          }
        }

        else
        {
          v28 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 67109376;
            *v37 = pnCkpt[1];
            *&v37[4] = 1024;
            *&v37[6] = pnCkpt[0];
            _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_INFO, "CoreData: debug: WAL checkpoint: Database did checkpoint. Log size: %d checkpointed: %d\n", buf, 0xEu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v29 = 1;
      }

      else
      {
        v29 = 9;
      }

      _NSCoreDataLog_console(v29, "WAL checkpoint: Database did checkpoint. Log size: %d checkpointed: %d", pnCkpt[1], pnCkpt[0]);
      goto LABEL_61;
    default:
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_65;
          }
        }

        else
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
LABEL_65:
            v33 = sqlite3_errmsg(*(a1 + 72));
            *buf = 136315138;
            *v37 = v33;
            _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Failed: %s\n", buf, 0xCu);
          }
        }
      }

      v24 = sqlite3_errmsg(*(a1 + 72));
      _NSCoreDataLog_console(1, "WAL checkpoint: Failed: %s", v24);
      objc_autoreleasePoolPop(v16);
      goto LABEL_62;
  }

  if (_pflogging_catastrophic_mode)
  {
    v27 = 1;
  }

  else
  {
    v27 = 9;
  }

  _NSCoreDataLog_console(v27, v19);
LABEL_61:
  objc_autoreleasePoolPop(v16);
  [(NSSQLiteConnection *)a1 _restoreBusyTimeOutSettings];
LABEL_62:
  v30 = *(a1 + 16);
  if (v30)
  {
    os_unfair_lock_unlock(v30 + 39);
  }

LABEL_64:
  v31 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (uint64_t)openAtPath:(void *)a3 withKey:(sqlite3 *)a4 handle:(int)a5 flags:(const char *)a6 module:(char)a7 checkpointOnClose:
{
  v47 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  ppDb = 0;
  v13 = sqlite3_open_v2(a2, &ppDb, a5, a6);
  if (!ppDb)
  {
    goto LABEL_35;
  }

  if ((a7 & 1) == 0)
  {
    v14 = sqlite3_db_config(ppDb, 1006, 1, 0);
    if (v14)
    {
      if (!v13)
      {
        v15 = v14;
        v16 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v17 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v19 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v17)
          {
            if (v19)
            {
              *buf = 67109120;
              v46 = v15;
LABEL_54:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed: %d\n", buf, 8u);
            }
          }

          else if (v19)
          {
            *buf = 67109120;
            v46 = v15;
            goto LABEL_54;
          }
        }

        _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed: %d", v15);
        objc_autoreleasePoolPop(v16);
      }
    }
  }

  v20 = sqlite3_db_config(ppDb, 1022, 0, 0);
  if (v20 && !v13)
  {
    v21 = v20;
    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v23 = _pflogging_catastrophic_mode;
      v24 = _PFLogGetLogStream(1);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        if (v25)
        {
          *buf = 67109120;
          v46 = v21;
LABEL_46:
          _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_COMMENTS failed: %d\n", buf, 8u);
        }
      }

      else if (v25)
      {
        *buf = 67109120;
        v46 = v21;
        goto LABEL_46;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_COMMENTS failed: %d", v21);
    objc_autoreleasePoolPop(v22);
  }

  v26 = sqlite3_db_config(ppDb, 1020, 0, 0);
  if (v26 && !v13)
  {
    v27 = v26;
    v28 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v29 = _pflogging_catastrophic_mode;
      v30 = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          *buf = 67109120;
          v46 = v27;
LABEL_48:
          _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_CREATE failed: %d\n", buf, 8u);
        }
      }

      else if (v31)
      {
        *buf = 67109120;
        v46 = v27;
        goto LABEL_48;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_CREATE failed: %d", v27);
    objc_autoreleasePoolPop(v28);
  }

  v32 = sqlite3_db_config(ppDb, 1021, 0, 0);
  if (v32 && !v13)
  {
    v33 = v32;
    v34 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v35 = _pflogging_catastrophic_mode;
      v36 = _PFLogGetLogStream(1);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
      if (v35)
      {
        if (v37)
        {
          *buf = 67109120;
          v46 = v33;
LABEL_50:
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_WRITE failed: %d\n", buf, 8u);
        }
      }

      else if (v37)
      {
        *buf = 67109120;
        v46 = v33;
        goto LABEL_50;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_WRITE failed: %d", v33);
    objc_autoreleasePoolPop(v34);
  }

LABEL_35:
  if (a3)
  {
    if (!v13)
    {
      [a3 bytes];
      [a3 length];
      v13 = sqlite3_key_v2();
      if (v13 == 21)
      {
        v38 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v39 = _pflogging_catastrophic_mode;
          v40 = _PFLogGetLogStream(1);
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
          if (v39)
          {
            if (v41)
            {
              *buf = 0;
LABEL_52:
              _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to activate SQLite encryption extension\n", buf, 2u);
            }
          }

          else if (v41)
          {
            *buf = 0;
            goto LABEL_52;
          }
        }

        _NSCoreDataLog_console(1, "Failed to activate SQLite encryption extension");
        objc_autoreleasePoolPop(v38);
        v13 = 21;
      }
    }
  }

  *a4 = ppDb;
  v42 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)initForSQLCore:(id)a3
{
  v21.receiver = self;
  v21.super_class = NSSQLiteConnection;
  v4 = [(NSSQLiteConnection *)&v21 init];
  if (v4)
  {
    if ([objc_msgSend(a3 "URL")] && (v5 = objc_msgSend(objc_msgSend(a3, "URL"), "path")) != 0)
    {
      v6 = [v5 lastPathComponent];
    }

    else
    {
      v6 = @"nil";
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLQueue %p for %@", v4, v6];
    v8 = [a3 _persistentStoreCoordinator];
    if (v8 && (v9 = *(v8 + 24), (v9 >> 2)))
    {
      v10 = dispatch_queue_attr_make_with_qos_class(0, (v9 >> 2), 0);
    }

    else
    {
      v10 = 0;
    }

    v11 = dispatch_queue_create([v7 fileSystemRepresentation], v10);
    v4->_queue = v11;
    dispatch_set_context(v11, v4);
    v4->_sqlCore = a3;
    v4->_useSyntaxColoredLogging = +[NSSQLCore coloredLoggingDefault];
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9E8];
    v4->_vmCachedStatements = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v4->_pragmaSettings = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    keyCallBacks.version = *MEMORY[0x1E695E9D8];
    *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
    v14 = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.equal = 0;
    keyCallBacks.hash = 0;
    keyCallBacks.copyDescription = v14;
    v4->_cachedEntityUpdateStatements = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, v13);
    v4->_cachedEntityConstrainedValuesUpdateStatements = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, v13);
    v4->_statementCachesByEntity = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, v13);
    v4->_mObjectIDsUpdatedByTriggers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_mObjectIDsInsertedByDATriggers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_mObjectIDsUpdatededByDATriggers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [(NSPersistentStore *)v4->_sqlCore options];
    v4->_sqlCoreOptions = v15;
    v4->_timeOutOption = 0.0;
    v16 = [(NSDictionary *)v15 objectForKey:@"NSPersistentStoreTimeoutOption"];
    if (v16)
    {
      [v16 doubleValue];
    }

    else
    {
      if (BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
      {
        goto LABEL_15;
      }

      v17 = 0x406E000000000000;
    }

    *&v4->_timeOutOption = v17;
LABEL_15:
    for (i = 0; i != 5; ++i)
    {
      v4->_extraBuffersForRegisteredFunctions[i] = PF_CALLOC_OBJECT_ARRAY(4);
    }

    v4->_dbPathRegisteredWithBackupd = 0;
    *&v4->_sqliteConnectionFlags |= 0x100u;
    v4->_transactionStringName = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_usedIndexes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (id)initAsQueryGenerationTrackingConnectionForSQLCore:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(NSSQLiteConnection *)self initForSQLCore:a3];
  if (v3)
  {
    v4 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Initializing query generations"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__NSSQLiteConnection_initAsQueryGenerationTrackingConnectionForSQLCore___block_invoke;
    v6[3] = &unk_1E6EC1330;
    v6[4] = v3;
    v6[5] = &v7;
    [(NSSQLiteConnection *)v3 performAndWait:v6];
    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v4];
    if ((v8[3] & 1) == 0)
    {

      v3 = 0;
    }
  }

  if (!*(v8 + 24))
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

id __72__NSSQLiteConnection_initAsQueryGenerationTrackingConnectionForSQLCore___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 312) |= 0x800u;
  *(*(a1 + 32) + 328) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSSQLiteConnection *)*(a1 + 32) connect];
  v3 = *(a1 + 32);
  if (v3)
  {
    [(NSSQLiteConnection *)v3 _hasTableWithName:0 isTemp:?];
    v3 = *(a1 + 32);
  }

  v4 = [(NSSQLiteConnection *)v3 _ensureWalFileExists];
  v5 = v4;
  if (v4 >= 41943041)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v20 = v5;
          v8 = "CoreData: error: Force checkpointing -wal while initializing query generations due to its large size (%lld)\n";
LABEL_29:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v20 = v5;
          v8 = "CoreData: warning: Force checkpointing -wal while initializing query generations due to its large size (%lld)\n";
          goto LABEL_29;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    _NSCoreDataLog_console(v13, "Force checkpointing -wal while initializing query generations due to its large size (%lld)", v5);
    objc_autoreleasePoolPop(v6);
    [(NSSQLiteConnection *)*(a1 + 32) _performPostSaveTasks:0 andForceFullVacuum:?];
    [(NSSQLiteConnection *)*(a1 + 32) _ensureWalFileExists];
LABEL_23:
    *(*(a1 + 32) + 312) |= 0x200u;
    goto LABEL_26;
  }

  if (v4 < 0)
  {
    v15 = [_NSCoreDataException exceptionWithName:14 code:@"failed to open journal file" reason:0 userInfo:?];
    [(_NSCoreDataException *)v15 _setDomain:?];
    objc_exception_throw(v15);
  }

  v9 = sqlite3_snapshot_recover(*(*(a1 + 32) + 72), "main");
  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_23;
  }

  v11 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v12 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v20) = v9;
LABEL_31:
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_recover failed with %d\n", buf, 8u);
      }
    }

    else
    {
      v12 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v20) = v9;
        goto LABEL_31;
      }
    }
  }

  _NSCoreDataLog_console(1, "sqlite3_snapshot_recover failed with %d", v9);
  objc_autoreleasePoolPop(v11);
LABEL_26:
  [(NSSQLiteConnection *)*(a1 + 32) _executeSQLString:?];
  [(NSSQLiteConnection *)*(a1 + 32) beginReadTransaction];
  v14 = [(NSSQLiteConnection *)*(a1 + 32) _currentQueryGenerationSnapshot:?];
  [(NSSQLiteConnection *)*(a1 + 32) rollbackTransaction];
  if (v14)
  {

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [v2 drain];
  result = 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    result = [(NSSQLiteConnection *)*(a1 + 32) disconnect];
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_performPostSaveTasks:(int)a3 andForceFullVacuum:
{
  v57 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    if (*(a1 + 72) && ([*(a1 + 16) isReadOnly] & 1) == 0)
    {
      FileSizeFromJournalHandle = readFileSizeFromJournalHandle(*(a1 + 72));
      v8 = FileSizeFromJournalHandle <= 0x800000;
      if (FileSizeFromJournalHandle > 0x800000)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v54 = FileSizeFromJournalHandle;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: fileSize %lld greater than prune threshold\n", buf, 0xCu);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v54 = FileSizeFromJournalHandle;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: debug: PostSaveMaintenance: fileSize %lld greater than prune threshold\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v12 = 1;
        }

        else
        {
          v12 = 9;
        }

        _NSCoreDataLog_console(v12, "PostSaveMaintenance: fileSize %lld greater than prune threshold", FileSizeFromJournalHandle);
        objc_autoreleasePoolPop(v9);
        if (*(a1 + 296) != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(a1 + 296) = 0;
        }
      }

      if ((a2 & 1) != 0 || a3)
      {
        v15 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v16 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              if (a2)
              {
                v17 = @"forceWalCheckpoint";
              }

              else
              {
                v17 = @"forceVacuum";
              }

              *buf = 138412290;
              v54 = v17;
              _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: %@ override\n", buf, 0xCu);
            }
          }

          else
          {
            v18 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              if (a2)
              {
                v19 = @"forceWalCheckpoint";
              }

              else
              {
                v19 = @"forceVacuum";
              }

              *buf = 138412290;
              v54 = v19;
              _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: PostSaveMaintenance: %@ override\n", buf, 0xCu);
            }
          }
        }

        if (a2)
        {
          v20 = @"forceWalCheckpoint";
        }

        else
        {
          v20 = @"forceVacuum";
        }

        if (_pflogging_catastrophic_mode)
        {
          v21 = 1;
        }

        else
        {
          v21 = 4;
        }

        _NSCoreDataLog_console(v21, "PostSaveMaintenance: %@ override", v20);
        objc_autoreleasePoolPop(v15);
        if (*(a1 + 296) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_82:
          v37 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v38 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: wal_checkpoint(TRUNCATE) \n", buf, 2u);
              }
            }

            else
            {
              v39 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: PostSaveMaintenance: wal_checkpoint(TRUNCATE) \n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v40 = 1;
          }

          else
          {
            v40 = 4;
          }

          _NSCoreDataLog_console(v40, "PostSaveMaintenance: wal_checkpoint(TRUNCATE) ");
          objc_autoreleasePoolPop(v37);
          if ([(NSSQLiteConnection *)a1 _walCheckpointWithMode:?]- 5 <= 1 && *(a1 + 8))
          {
            [(NSSQLiteConnection *)a1 scheduleWALCheckpointAfter:0.1 retry:?];
          }

          goto LABEL_95;
        }

        v8 = 0;
        v14 = (a1 + 296);
        *(a1 + 296) = 0;
      }

      else
      {
        v13 = *(a1 + 296);
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_81;
        }

        v14 = (a1 + 296);
        if (v13)
        {
          *v14 = v13 - 1;
          if (FileSizeFromJournalHandle <= 0x800000)
          {
            goto LABEL_95;
          }

          goto LABEL_82;
        }
      }

      if (a3)
      {
        v22 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
        {
          goto LABEL_75;
        }

        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          *buf = 0;
          v24 = "CoreData: error: PostSaveMaintenance: Full Vacuum\n";
        }

        else
        {
          v23 = _PFLogGetLogStream(2);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          *buf = 0;
          v24 = "CoreData: warning: PostSaveMaintenance: Full Vacuum\n";
        }

        _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
LABEL_75:
        if (_pflogging_catastrophic_mode)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        _NSCoreDataLog_console(v35, "PostSaveMaintenance: Full Vacuum");
        objc_autoreleasePoolPop(v22);
        v36 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:?];
        if (v36)
        {
          CFRelease(v36);
        }

        goto LABEL_80;
      }

      v25 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:?];
      v26 = v25;
      if (v25)
      {
        if (CFArrayGetCount(v25))
        {
          v27 = *CFArrayGetValueAtIndex(v26, 0);
          if (!v27)
          {
            *v14 = 10;
            CFRelease(v26);
            v26 = 0;
          }

          v28 = *CFArrayGetValueAtIndex(v26, 1);
          if (v26)
          {
            CFRelease(v26);
          }

          if (v27)
          {
            v29 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:?];
            v30 = v29;
            if (v29)
            {
              if (CFArrayGetCount(v29))
              {
                v31 = *CFArrayGetValueAtIndex(v30, 0);
                if (!v31)
                {
                  *v14 = 10;
                  CFRelease(v30);
                  v30 = 0;
                }

                v32 = *CFArrayGetValueAtIndex(v30, 1);
                if (v30)
                {
                  CFRelease(v30);
                }

                *v14 = 10;
                if (v32)
                {
                  if (a2)
                  {
                    v33 = objc_autoreleasePoolPush();
                    if (_NSCoreDataIsOSLogEnabled(4))
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v34 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134217984;
                          v54 = v32;
                          _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: forced incremental_vacuum - %lld\n", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v46 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134217984;
                          v54 = v32;
                          _os_log_impl(&dword_18565F000, v46, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: PostSaveMaintenance: forced incremental_vacuum - %lld\n", buf, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v47 = 1;
                    }

                    else
                    {
                      v47 = 4;
                    }

                    _NSCoreDataLog_console(v47, "PostSaveMaintenance: forced incremental_vacuum - %lld", v32);
                    objc_autoreleasePoolPop(v33);
                    v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma incremental_vacuum(%d)", v32];
                    v49 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:v48];

                    if (v49)
                    {
LABEL_115:
                      CFRelease(v49);
                    }
                  }

                  else if (v31)
                  {
                    v42 = (v28 - v32) / v28;
                    if (v32 > 1023 || v42 <= 0.85)
                    {
                      if (v42 >= 0.4)
                      {
                        v43 = v32 / 5;
                      }

                      else
                      {
                        v43 = v32 - (v28 - v32);
                      }

                      v44 = objc_autoreleasePoolPush();
                      if (_NSCoreDataIsOSLogEnabled(9))
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v45 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 134218240;
                            v54 = v32;
                            v55 = 2048;
                            v56 = v43;
                            _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: incremental_vacuum with freelist_count - %lld and pages_to_free %lld\n", buf, 0x16u);
                          }
                        }

                        else
                        {
                          v50 = _PFLogGetLogStream(9);
                          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                          {
                            *buf = 134218240;
                            v54 = v32;
                            v55 = 2048;
                            v56 = v43;
                            _os_log_impl(&dword_18565F000, v50, OS_LOG_TYPE_INFO, "CoreData: debug: PostSaveMaintenance: incremental_vacuum with freelist_count - %lld and pages_to_free %lld\n", buf, 0x16u);
                          }
                        }
                      }

                      v51 = _pflogging_catastrophic_mode ? 1 : 9;
                      _NSCoreDataLog_console(v51, "PostSaveMaintenance: incremental_vacuum with freelist_count - %lld and pages_to_free %lld", v32, v43);
                      objc_autoreleasePoolPop(v44);
                      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma incremental_vacuum(%d)", v43];
                      v49 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:v52];

                      if (v49)
                      {
                        goto LABEL_115;
                      }
                    }
                  }
                }

LABEL_81:
                if (v8)
                {
                  goto LABEL_95;
                }

                goto LABEL_82;
              }

              *v14 = 10;
              CFRelease(v30);
LABEL_80:
              *v14 = 10;
              goto LABEL_81;
            }
          }
        }

        else
        {
          *v14 = 10;
          CFRelease(v26);
        }
      }

      else
      {
        *v14 = 10;
      }

      *v14 = 10;
      goto LABEL_80;
    }
  }

LABEL_95:
  v41 = *MEMORY[0x1E69E9840];
}

- (void)_executeSQLString:(uint64_t)a1
{
  *&v93[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    context = objc_autoreleasePoolPush();
    ppStmt = 0;
    v90 = 0;
    [(NSSQLiteConnection *)a1 _ensureDatabaseOpen];
    [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
    [(NSSQLiteConnection *)a1 _ensureNoFetchInProgress];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v5 = *(a1 + 42);
      v6 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      if (_pflogging_enable_oslog > 0)
      {
        v8 = IsLogEnabled;
      }

      else
      {
        v8 = 0;
      }

      if (v5 == 1)
      {
        if (v8)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v93 = a2;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v93 = a2;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v12 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v8)
        {
          if (_pflogging_catastrophic_mode)
          {
            v10 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v93 = a2;
              _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v13 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v93 = a2;
              _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v12 = "%@";
      }

      if (_pflogging_catastrophic_mode)
      {
        v14 = 1;
      }

      else
      {
        v14 = 6;
      }

      _NSCoreDataLog_console(v14, v12, a2);
      objc_autoreleasePoolPop(v6);
    }

    v15 = [a2 UTF8String];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    while (1)
    {
      for (i = 3 * v17 - 29999; ; i += 3)
      {
        v21 = sqlite3_prepare_v3(*(a1 + 72), v15, -1, 0, &ppStmt, 0);
        v22 = v21;
        if (v21 > 5u)
        {
          if (v21 <= 0x1Au)
          {
            if (v21 == 14)
            {
              if (v16 > 2)
              {
                goto LABEL_98;
              }

              if (*(a1 + 232) > 0.0 && v19 == 0.0)
              {
                v19 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
              }

              ++v16;
LABEL_51:
              if (v17 <= 0xA)
              {
                v23 = 3 * v17 + 1;
              }

              else
              {
                v23 = v17 + 1101;
              }

LABEL_54:
              usleep(v23);
              goto LABEL_55;
            }

            if (((1 << v21) & 0x220480) != 0)
            {
              goto LABEL_98;
            }

            if (((1 << v21) & 0x4000800) != 0)
            {
              goto LABEL_104;
            }
          }

          if (v21 != 6)
          {
            goto LABEL_122;
          }

          if (*(a1 + 232) > 0.0 && v19 == 0.0)
          {
            v19 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
          }

          goto LABEL_51;
        }

        if (v21 != 5)
        {
          if (!v21)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0.0;
            while (1)
            {
              for (j = 3 * v26 - 29999; ; j += 3)
              {
                v30 = sqlite3_step(ppStmt);
                v22 = v30;
                if (v30 > 6u)
                {
                  if (v30 > 0x1Au)
                  {
                    goto LABEL_94;
                  }

                  if (v30 != 14)
                  {
                    if (((1 << v30) & 0x220480) == 0)
                    {
                      if (((1 << v30) & 0x4000800) == 0)
                      {
LABEL_94:
                        if (v30 - 100 < 2)
                        {
                          sqlite3_finalize(ppStmt);
                          objc_autoreleasePoolPop(context);
                          goto LABEL_96;
                        }

LABEL_134:
                        v39 = 0;
                        contexta = 0;
LABEL_135:
                        v40 = sqlite3_errmsg(*(a1 + 72));
                        v38 = 0;
                        v41 = 1;
LABEL_136:
                        v55 = *(a1 + 42);
                        v43 = objc_autoreleasePoolPush();
                        IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
                        if (v55 == 1)
                        {
                          if (IsOSLogEnabled)
                          {
                            v57 = _pflogging_catastrophic_mode;
                            v46 = _PFLogGetLogStream(1);
                            v58 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                            if (v57)
                            {
                              if (v58)
                              {
                                goto LABEL_146;
                              }
                            }

                            else if (v58)
                            {
LABEL_146:
                              *buf = 67109378;
                              v93[0] = v22;
                              LOWORD(v93[1]) = 2080;
                              *(&v93[1] + 2) = v40;
                              _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
                            }
                          }

LABEL_147:
                          _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_151:
                          objc_autoreleasePoolPop(v43);
                          if (v41)
                          {
                            v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during execution of SQL string '%s' : %s", v15, v40];
                            v39 = 256;
                          }

                          if (ppStmt)
                          {
                            sqlite3_finalize(ppStmt);
                          }

                          v61 = *MEMORY[0x1E695D930];
                          v62 = MEMORY[0x1E695DF20];
                          v63 = *(a1 + 32);
                          v64 = *MEMORY[0x1E696A368];
                          v65 = [MEMORY[0x1E696AD98] numberWithInt:v22];
                          if (v90)
                          {
                            v66 = [MEMORY[0x1E696AD98] numberWithInteger:?];
                          }

                          else
                          {
                            v66 = 0;
                          }

                          v67 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v61, v39, v38, [v62 dictionaryWithObjectsAndKeys:{v63, v64, v65, @"NSSQLiteErrorDomain", v66, *MEMORY[0x1E696A798], 0}]);
                          v68 = v67;
                          if (contexta)
                          {
                            [(_NSCoreDataException *)v67 _setDomain:?];
                          }

                          objc_exception_throw(v68);
                        }

                        if (IsOSLogEnabled)
                        {
                          v59 = _pflogging_catastrophic_mode;
                          v49 = _PFLogGetLogStream(1);
                          v60 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
                          if (v59)
                          {
                            if (v60)
                            {
                              goto LABEL_149;
                            }
                          }

                          else if (v60)
                          {
LABEL_149:
                            *buf = 67109378;
                            v93[0] = v22;
                            LOWORD(v93[1]) = 2080;
                            *(&v93[1] + 2) = v40;
                            _os_log_error_impl(&dword_18565F000, v49, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
                          }
                        }

LABEL_150:
                        _NSCoreDataLog_console(1, "(%d) %s");
                        goto LABEL_151;
                      }

LABEL_130:
                      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fatal error.  The database at %@ is corrupted.  SQLite error code:%d, '%s'", *(a1 + 32), v22, sqlite3_errmsg(*(a1 + 72))];
                      v39 = v22;
                      contexta = @"NSSQLiteErrorDomain";
LABEL_132:
                      sqlite3_finalize(ppStmt);
                      ppStmt = 0;
                      [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
                      if (!v38)
                      {
                        goto LABEL_135;
                      }

                      v40 = [v38 UTF8String];
                      v41 = 0;
                      goto LABEL_136;
                    }

LABEL_124:
                    v51 = v30;
                    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
                    if (v51 == 10)
                    {
                      sqlite3_file_control(*(a1 + 72), 0, 4, &v90);
                    }

                    v53 = *(a1 + 32);
                    if (v90)
                    {
                      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@' errno:%d", v53, v22, v52, v90];
                    }

                    else
                    {
                      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@'", v53, v22, v52, v87];
                    }

                    v38 = v54;
                    if (!v54)
                    {
                      goto LABEL_130;
                    }

                    contexta = 0;
                    v39 = 256;
                    goto LABEL_132;
                  }

                  if (v25 > 2)
                  {
                    goto LABEL_124;
                  }

                  if (*(a1 + 232) > 0.0 && v28 == 0.0)
                  {
                    v28 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
                  }

                  ++v25;
                  goto LABEL_76;
                }

                if (v30 != 5)
                {
                  if (v30 != 6)
                  {
                    if (v30 != 1)
                    {
                      goto LABEL_134;
                    }

                    goto LABEL_124;
                  }

                  sqlite3_reset(ppStmt);
                  if (*(a1 + 232) > 0.0 && v28 == 0.0)
                  {
                    v28 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
                  }

LABEL_76:
                  if (v26 <= 0xA)
                  {
                    v31 = 3 * v26 + 1;
                  }

                  else
                  {
                    v31 = v26 + 1101;
                  }

LABEL_86:
                  usleep(v31);
                  goto LABEL_87;
                }

                sqlite3_reset(ppStmt);
                if (*(a1 + 232) > 0.0 && v28 == 0.0)
                {
                  v28 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
                }

                if (v26 >= 0x2711)
                {
                  if (v26 - 10000 >= 0xB)
                  {
                    v31 = v26 - 8899;
                  }

                  else
                  {
                    v31 = j;
                  }

                  goto LABEL_86;
                }

LABEL_87:
                if (v28 != 0.0)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current > v28)
                  {
                    break;
                  }
                }

                ++v26;
              }

              if (v27 > 7)
              {
                v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The database operation timed out after %.2f seconds.", Current - v28 + *(a1 + 232)];
                if (+[NSSQLCore debugDefault]< 1)
                {
                  goto LABEL_192;
                }

                v76 = *(a1 + 42);
                v71 = objc_autoreleasePoolPush();
                v77 = _NSCoreDataIsOSLogEnabled(1);
                if (v76 == 1)
                {
                  if (v77)
                  {
                    v78 = _pflogging_catastrophic_mode;
                    v74 = _PFLogGetLogStream(1);
                    v79 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
                    if (v78)
                    {
                      if (v79)
                      {
                        goto LABEL_186;
                      }
                    }

                    else if (v79)
                    {
                      goto LABEL_186;
                    }
                  }

LABEL_187:
                  _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v22, v69);
LABEL_191:
                  objc_autoreleasePoolPop(v71);
LABEL_192:
                  if (ppStmt)
                  {
                    sqlite3_finalize(ppStmt);
                  }

                  v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during SQL execution : %@", v69];
                  v86 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134090, v85, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v22), @"NSSQLiteErrorDomain"}]);
                  objc_exception_throw(v86);
                }

                if (v77)
                {
                  v83 = _pflogging_catastrophic_mode;
                  v81 = _PFLogGetLogStream(1);
                  v84 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
                  if (v83)
                  {
                    if (v84)
                    {
                      goto LABEL_189;
                    }
                  }

                  else if (v84)
                  {
                    goto LABEL_189;
                  }
                }

LABEL_190:
                _NSCoreDataLog_console(1, "(%d) %@", v22, v69);
                goto LABEL_191;
              }

              ++v26;
              v28 = Current + *(a1 + 240);
              ++v27;
            }
          }

          if (v21 == 1)
          {
LABEL_98:
            v34 = v21;
            v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
            if (v34 == 10)
            {
              sqlite3_file_control(*(a1 + 72), 0, 4, &v90);
            }

            v36 = *(a1 + 32);
            if (v90)
            {
              v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@' errno:%d", v36, v22, v35, v90];
            }

            else
            {
              v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@'", v36, v22, v35, v87];
            }

            v38 = v37;
            if (v37)
            {
              contexta = 0;
              v39 = 256;
            }

            else
            {
LABEL_104:
              v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fatal error.  The database at %@ is corrupted.  SQLite error code:%d, '%s'", *(a1 + 32), v22, sqlite3_errmsg(*(a1 + 72))];
              v39 = v22;
              contexta = @"NSSQLiteErrorDomain";
            }

            sqlite3_finalize(ppStmt);
            ppStmt = 0;
            [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
            if (v38)
            {
              v40 = [v38 UTF8String];
              v41 = 0;
            }

            else
            {
LABEL_107:
              v40 = sqlite3_errmsg(*(a1 + 72));
              v38 = 0;
              v41 = 1;
            }

            v42 = *(a1 + 42);
            v43 = objc_autoreleasePoolPush();
            v44 = _NSCoreDataIsOSLogEnabled(1);
            if (v42 == 1)
            {
              if (v44)
              {
                v45 = _pflogging_catastrophic_mode;
                v46 = _PFLogGetLogStream(1);
                v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                if (v45)
                {
                  if (v47)
                  {
                    goto LABEL_146;
                  }
                }

                else if (v47)
                {
                  goto LABEL_146;
                }
              }

              goto LABEL_147;
            }

            if (v44)
            {
              v48 = _pflogging_catastrophic_mode;
              v49 = _PFLogGetLogStream(1);
              v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
              if (v48)
              {
                if (v50)
                {
                  goto LABEL_149;
                }
              }

              else if (v50)
              {
                goto LABEL_149;
              }
            }

            goto LABEL_150;
          }

LABEL_122:
          v39 = 0;
          contexta = 0;
          goto LABEL_107;
        }

        if (*(a1 + 232) > 0.0 && v19 == 0.0)
        {
          v19 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
        }

        if (v17 >= 0x2711)
        {
          if (v17 - 10000 >= 0xB)
          {
            v23 = v17 - 8899;
          }

          else
          {
            v23 = i;
          }

          goto LABEL_54;
        }

LABEL_55:
        if (v19 != 0.0)
        {
          v24 = CFAbsoluteTimeGetCurrent();
          if (v24 > v19)
          {
            break;
          }
        }

        ++v17;
      }

      if (v18 > 7)
      {
        v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The database operation timed out after %.2f seconds.", v24 - v19 + *(a1 + 232)];
        if (+[NSSQLCore debugDefault]< 1)
        {
          goto LABEL_192;
        }

        v70 = *(a1 + 42);
        v71 = objc_autoreleasePoolPush();
        v72 = _NSCoreDataIsOSLogEnabled(1);
        if (v70 == 1)
        {
          if (v72)
          {
            v73 = _pflogging_catastrophic_mode;
            v74 = _PFLogGetLogStream(1);
            v75 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
            if (v73)
            {
              if (v75)
              {
LABEL_186:
                *buf = 67109378;
                v93[0] = v22;
                LOWORD(v93[1]) = 2112;
                *(&v93[1] + 2) = v69;
                _os_log_error_impl(&dword_18565F000, v74, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
              }
            }

            else if (v75)
            {
              goto LABEL_186;
            }
          }

          goto LABEL_187;
        }

        if (v72)
        {
          v80 = _pflogging_catastrophic_mode;
          v81 = _PFLogGetLogStream(1);
          v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
          if (v80)
          {
            if (v82)
            {
LABEL_189:
              *buf = 67109378;
              v93[0] = v22;
              LOWORD(v93[1]) = 2112;
              *(&v93[1] + 2) = v69;
              _os_log_error_impl(&dword_18565F000, v81, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
            }
          }

          else if (v82)
          {
            goto LABEL_189;
          }
        }

        goto LABEL_190;
      }

      ++v17;
      v19 = v24 + *(a1 + 240);
      ++v18;
    }
  }

LABEL_96:
  v33 = *MEMORY[0x1E69E9840];
}

- (_PFSQLiteSnapshotWrapper)_currentQueryGenerationSnapshot:(_PFSQLiteSnapshotWrapper *)result
{
  v30 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_41;
  }

  v3 = result;
  s = result->_s;
  if (s)
  {
    dispatch_assert_queue_V2(s);
  }

  isa = v3[3].super.isa;
  if (!isa)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"database connection must not be nil here" userInfo:0]);
  }

  ppSnapshot = 0;
  v6 = sqlite3_snapshot_get(isa, "main", &ppSnapshot);
  v7 = v6 == 0;
  if (v6 != 517 && v6 != 0)
  {
    if (v6 != 5)
    {
      goto LABEL_18;
    }

    while (1)
    {
      usleep(0x64u);
      v6 = sqlite3_snapshot_get(v3[3].super.isa, "main", &ppSnapshot);
      v7 = v6 == 0;
      if (v6 == 517 || v6 == 0)
      {
        break;
      }

      if (v6 != 5)
      {
        goto LABEL_18;
      }
    }
  }

  if (!v7)
  {
LABEL_18:
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSSQLiteErrorDomain" code:v6 userInfo:0];
    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:
  if (+[NSSQLCore debugDefault]>= 1)
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v13 = [MEMORY[0x1E695DEF0] dataWithBytes:ppSnapshot length:48];
          v14 = [MEMORY[0x1E696B098] valueWithPointer:ppSnapshot];
          *buf = 134218754;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          v26 = 2112;
          v27 = v14;
          v28 = 2048;
          v29 = ppSnapshot;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: connection %p created snapshot:\n\tss %@ value: \n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [MEMORY[0x1E695DEF0] dataWithBytes:ppSnapshot length:48];
          v17 = [MEMORY[0x1E696B098] valueWithPointer:ppSnapshot];
          *buf = 134218754;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          v26 = 2112;
          v27 = v17;
          v28 = 2048;
          v29 = ppSnapshot;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: connection %p created snapshot:\n\tss %@ value: \n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
        }
      }
    }

    v18 = _pflogging_catastrophic_mode;
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:ppSnapshot length:48];
    v20 = [MEMORY[0x1E696B098] valueWithPointer:ppSnapshot];
    v21 = 4;
    if (v18)
    {
      v21 = 1;
    }

    _NSCoreDataLog_console(v21, "connection %p created snapshot:\n\tss %@ value: \n\tpointer value:%@\n\tpointer: %p", v3, v19, v20, ppSnapshot);
    objc_autoreleasePoolPop(v11);
  }

  if (readFileSizeFromJournalHandle(v3[3].super.isa))
  {
    if (ppSnapshot)
    {
      result = [_PFSQLiteSnapshotWrapper alloc];
      if (result)
      {
        v22 = ppSnapshot;
        *buf = result;
        *&buf[8] = _PFSQLiteSnapshotWrapper;
        result = objc_msgSendSuper2(buf, sel_init);
        if (result)
        {
          result->_s = v22;
          result->_flags = 1;
        }
      }
    }

    else
    {
      result = 0;
      if (a2 && v9)
      {
        result = 0;
        *a2 = v9;
      }
    }
  }

  else
  {
    if (a2)
    {
      *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134181 userInfo:0];
    }

    sqlite3_snapshot_free(ppSnapshot);
    result = 0;
  }

LABEL_41:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performAndWait:(uint64_t)a1
{
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__30;
    v12 = __Block_byref_object_dispose__30;
    v13 = 0;
    v3 = *(a1 + 8);
    if (v3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__NSSQLiteConnection_performAndWait___block_invoke;
      v7[3] = &unk_1E6EC1790;
      v7[4] = a2;
      v7[5] = &v8;
      dispatch_sync(v3, v7);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      (*(a2 + 16))(a2);
      objc_autoreleasePoolPop(v4);
    }

    v5 = v9[5];
    if (v5)
    {
      v6 = v5;
      objc_exception_throw(v9[5]);
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __37__NSSQLiteConnection_performAndWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
}

- (void)_performBlock:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__NSSQLiteConnection__performBlock___block_invoke;
      block[3] = &unk_1E6EC3ED0;
      block[4] = a2;
      dispatch_async(v3, block);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      (*(a2 + 16))(a2);
      objc_autoreleasePoolPop(v4);
      v5 = 0;
    }
  }
}

void __36__NSSQLiteConnection__performBlock___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *MEMORY[0x1E69E9840];
}

- (CFMutableArrayRef)copyRawIntegerRowsForSQL:(uint64_t)a1
{
  *(&v142[3] + 4) = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    theArray = 0;
    goto LABEL_210;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  callBacks = *byte_1EF3F0ED0;
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
  context = objc_autoreleasePoolPush();
  ppStmt = 0;
  pzTail = 0;
  v137 = 0;
  [(NSSQLiteConnection *)a1 connect];
  [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
  [(NSSQLiteConnection *)a1 _ensureNoFetchInProgress];
  if (+[NSSQLCore debugDefault]< 1)
  {
    Current = 0.0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(a1 + 42);
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(6);
    IsLogEnabled = _NSCoreDataIsLogEnabled(6);
    if (_pflogging_enable_oslog > 0)
    {
      v9 = IsLogEnabled;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      if (v9)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&v142[0] = a2;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }

        else
        {
          v12 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&v142[0] = a2;
            _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }
      }

      v13 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
    }

    else
    {
      if (v9)
      {
        if (_pflogging_catastrophic_mode)
        {
          v11 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&v142[0] = a2;
            _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v14 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&v142[0] = a2;
            _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }
      }

      v13 = "%@";
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = 1;
    }

    else
    {
      v15 = 6;
    }

    _NSCoreDataLog_console(v15, v13, a2);
    objc_autoreleasePoolPop(v7);
  }

  v16 = [a2 UTF8String];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0.0;
LABEL_29:
  for (i = 3 * v18 - 29999; ; i += 3)
  {
    v22 = strlen(v16);
    v23 = sqlite3_prepare_v2(*(a1 + 72), v16, v22, &ppStmt, &pzTail);
    if (v23 > 5u)
    {
      if (v23 <= 0x1Au)
      {
        if (v23 == 14)
        {
          if (v17 > 2)
          {
            goto LABEL_130;
          }

          if (*(a1 + 232) > 0.0 && v20 == 0.0)
          {
            v20 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
          }

          ++v17;
LABEL_52:
          if (v18 <= 0xA)
          {
            v24 = 3 * v18 + 1;
          }

          else
          {
            v24 = v18 + 1101;
          }

LABEL_55:
          usleep(v24);
          goto LABEL_56;
        }

        if (((1 << v23) & 0x220480) != 0)
        {
          goto LABEL_130;
        }

        if (((1 << v23) & 0x4000800) != 0)
        {
          goto LABEL_136;
        }
      }

      if (v23 != 6)
      {
        goto LABEL_140;
      }

      if (*(a1 + 232) > 0.0 && v20 == 0.0)
      {
        v20 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
      }

      goto LABEL_52;
    }

    if (v23 != 5)
    {
      break;
    }

    if (*(a1 + 232) > 0.0 && v20 == 0.0)
    {
      v20 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
    }

    if (v18 >= 0x2711)
    {
      if (v18 - 10000 >= 0xB)
      {
        v24 = v18 - 8899;
      }

      else
      {
        v24 = i;
      }

      goto LABEL_55;
    }

LABEL_56:
    if (v20 != 0.0)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      if (v25 > v20)
      {
        if (v19 <= 7)
        {
          ++v18;
          v20 = v25 + *(a1 + 240);
          ++v19;
          goto LABEL_29;
        }

        v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The database operation timed out after %.2f seconds.", v25 - v20 + *(a1 + 232)];
        if (+[NSSQLCore debugDefault]< 1)
        {
          goto LABEL_246;
        }

        v106 = *(a1 + 42);
        v107 = objc_autoreleasePoolPush();
        IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
        if (v106)
        {
          if (IsOSLogEnabled)
          {
            v109 = _pflogging_catastrophic_mode == 0;
            v110 = _PFLogGetLogStream(1);
            v111 = os_log_type_enabled(v110, OS_LOG_TYPE_ERROR);
            if (v109)
            {
              if (v111)
              {
LABEL_240:
                *buf = 67109378;
                LODWORD(v142[0]) = v23;
                WORD2(v142[0]) = 2112;
                *(v142 + 6) = v105;
                _os_log_error_impl(&dword_18565F000, v110, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
              }
            }

            else if (v111)
            {
              goto LABEL_240;
            }
          }

          _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v23, v105);
LABEL_245:
          objc_autoreleasePoolPop(v107);
LABEL_246:
          if (ppStmt)
          {
            sqlite3_finalize(ppStmt);
          }

          v125 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during SQL execution : %@", v105];
          CFRelease(theArray);
          v126 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v23), @"NSSQLiteErrorDomain"}];
          v127 = [_NSCoreDataException exceptionWithName:134090 code:v125 reason:v126 userInfo:?];
          objc_exception_throw(v127);
        }

        if (IsOSLogEnabled)
        {
          v119 = _pflogging_catastrophic_mode == 0;
          v120 = _PFLogGetLogStream(1);
          v121 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
          if (v119)
          {
            if (v121)
            {
LABEL_243:
              *buf = 67109378;
              LODWORD(v142[0]) = v23;
              WORD2(v142[0]) = 2112;
              *(v142 + 6) = v105;
              _os_log_error_impl(&dword_18565F000, v120, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
            }
          }

          else if (v121)
          {
            goto LABEL_243;
          }
        }

        _NSCoreDataLog_console(1, "(%d) %@", v23, v105);
        goto LABEL_245;
      }
    }

    ++v18;
  }

  if (v23)
  {
    if (v23 == 1)
    {
LABEL_130:
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
      if (v23 == 10)
      {
        sqlite3_file_control(*(a1 + 72), 0, 4, &v137);
      }

      v50 = *(a1 + 32);
      if (v137)
      {
        v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@' errno:%d", v50, v23, v49, v137];
      }

      else
      {
        v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@'", v50, v23, v49];
      }

      v52 = v51;
      if (v51)
      {
        v134 = 0;
        v53 = 256;
      }

      else
      {
LABEL_136:
        v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fatal error.  The database at %@ is corrupted.  SQLite error code:%d, '%s'", *(a1 + 32), v23, sqlite3_errmsg(*(a1 + 72))];
        v53 = v23;
        v134 = @"NSSQLiteErrorDomain";
      }

      sqlite3_finalize(ppStmt);
      ppStmt = 0;
      [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
      if (v52)
      {
        v54 = [v52 UTF8String];
        v55 = 0;
        goto LABEL_142;
      }
    }

    else
    {
LABEL_140:
      v53 = 0;
      v134 = 0;
    }

    v54 = sqlite3_errmsg(*(a1 + 72));
    v52 = 0;
    v55 = 1;
LABEL_142:
    v56 = *(a1 + 42);
    v57 = objc_autoreleasePoolPush();
    v58 = _NSCoreDataIsOSLogEnabled(1);
    if (v56)
    {
      if (v58)
      {
        v59 = _pflogging_catastrophic_mode == 0;
        v60 = _PFLogGetLogStream(1);
        v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        if (v59)
        {
          if (v61)
          {
            goto LABEL_152;
          }
        }

        else if (v61)
        {
LABEL_152:
          *buf = 67109378;
          LODWORD(v142[0]) = v23;
          WORD2(v142[0]) = 2080;
          *(v142 + 6) = v54;
          _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
        }
      }

      _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
      goto LABEL_157;
    }

    if (v58)
    {
      v62 = _pflogging_catastrophic_mode == 0;
      v63 = _PFLogGetLogStream(1);
      v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
      if (v62)
      {
        if (v64)
        {
          goto LABEL_155;
        }
      }

      else if (v64)
      {
LABEL_155:
        *buf = 67109378;
        LODWORD(v142[0]) = v23;
        WORD2(v142[0]) = 2080;
        *(v142 + 6) = v54;
        _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
      }
    }

    _NSCoreDataLog_console(1, "(%d) %s");
LABEL_157:
    objc_autoreleasePoolPop(v57);
    if (v55)
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during execution of SQL string '%s' : %s", v16, v54];
      v53 = 256;
    }

    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    v65 = MEMORY[0x1E695DF20];
    v66 = *(a1 + 32);
    v67 = [MEMORY[0x1E696AD98] numberWithInt:v23];
    if (v137)
    {
      v68 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v68 = 0;
    }

    v99 = [v65 dictionaryWithObjectsAndKeys:{v66, *MEMORY[0x1E696A368], v67, @"NSSQLiteErrorDomain", v68, *MEMORY[0x1E696A798], 0}];
    v100 = [_NSCoreDataException exceptionWithName:v53 code:v52 reason:v99 userInfo:?];
    v101 = v100;
    if (v134)
    {
      [(_NSCoreDataException *)v100 _setDomain:v134];
    }

    CFRelease(theArray);
    objc_exception_throw(v101);
  }

  v26 = 0;
  v132 = 0;
  v27 = 0;
  v28 = 0;
  v133 = 0;
  v29 = 0;
  while (2)
  {
    v30 = 0.0;
LABEL_64:
    for (j = 3 * v28 - 29999; ; j += 3)
    {
      v32 = sqlite3_step(ppStmt);
      if (v32 > 6u)
      {
        break;
      }

      if (v32 != 5)
      {
        if (v32 == 6)
        {
          if (!v29)
          {
            sqlite3_reset(ppStmt);
          }

          if (*(a1 + 232) > 0.0 && v30 == 0.0)
          {
            v30 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
          }

LABEL_80:
          if (v28 > 10)
          {
            v33 = v28 + 1101;
          }

          else
          {
            v33 = 3 * (v28 % 11) + 1;
          }

LABEL_92:
          usleep(v33);
          goto LABEL_93;
        }

        if (v32 == 1)
        {
LABEL_164:
          v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
          if (v32 == 10)
          {
            sqlite3_file_control(*(a1 + 72), 0, 4, &v137);
          }

          v70 = *(a1 + 32);
          if (v137)
          {
            v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@' errno:%d", v70, v32, v69, v137];
          }

          else
          {
            v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@'", v70, v32, v69];
          }

          v72 = v71;
          if (v71)
          {
            v135 = 0;
            v73 = 256;
          }

          else
          {
LABEL_170:
            v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fatal error.  The database at %@ is corrupted.  SQLite error code:%d, '%s'", *(a1 + 32), v32, sqlite3_errmsg(*(a1 + 72))];
            v73 = v32;
            v135 = @"NSSQLiteErrorDomain";
          }

          sqlite3_finalize(ppStmt);
          ppStmt = 0;
          [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
          if (v72)
          {
            v74 = [v72 UTF8String];
            v75 = 0;
            goto LABEL_176;
          }

LABEL_175:
          v74 = sqlite3_errmsg(*(a1 + 72));
          v72 = 0;
          v75 = 1;
LABEL_176:
          v76 = *(a1 + 42);
          v77 = objc_autoreleasePoolPush();
          v78 = _NSCoreDataIsOSLogEnabled(1);
          if (v76)
          {
            if (v78)
            {
              v79 = _pflogging_catastrophic_mode == 0;
              v80 = _PFLogGetLogStream(1);
              v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
              if (v79)
              {
                if (v81)
                {
LABEL_186:
                  *buf = 67109378;
                  LODWORD(v142[0]) = v32;
                  WORD2(v142[0]) = 2080;
                  *(v142 + 6) = v74;
                  _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
                }
              }

              else if (v81)
              {
                goto LABEL_186;
              }
            }

            _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_191:
            objc_autoreleasePoolPop(v77);
            if (v75)
            {
              v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during execution of SQL string '%s' : %s", v16, v74];
              v73 = 256;
            }

            if (theArray)
            {
              CFRelease(theArray);
            }

            if (ppStmt)
            {
              sqlite3_finalize(ppStmt);
            }

            v85 = MEMORY[0x1E695DF20];
            v86 = *(a1 + 32);
            v87 = [MEMORY[0x1E696AD98] numberWithInt:v32];
            if (v137)
            {
              v88 = [MEMORY[0x1E696AD98] numberWithInteger:?];
            }

            else
            {
              v88 = 0;
            }

            v102 = [v85 dictionaryWithObjectsAndKeys:{v86, *MEMORY[0x1E696A368], v87, @"NSSQLiteErrorDomain", v88, *MEMORY[0x1E696A798], 0}];
            v103 = [_NSCoreDataException exceptionWithName:v73 code:v72 reason:v102 userInfo:?];
            v104 = v103;
            if (v135)
            {
              [(_NSCoreDataException *)v103 _setDomain:v135];
            }

            objc_exception_throw(v104);
          }

          if (v78)
          {
            v82 = _pflogging_catastrophic_mode == 0;
            v83 = _PFLogGetLogStream(1);
            v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
            if (v82)
            {
              if (v84)
              {
LABEL_189:
                *buf = 67109378;
                LODWORD(v142[0]) = v32;
                WORD2(v142[0]) = 2080;
                *(v142 + 6) = v74;
                _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
              }
            }

            else if (v84)
            {
              goto LABEL_189;
            }
          }

          _NSCoreDataLog_console(1, "(%d) %s");
          goto LABEL_191;
        }

LABEL_174:
        v73 = 0;
        v135 = 0;
        goto LABEL_175;
      }

      if (!v29)
      {
        sqlite3_reset(ppStmt);
      }

      if (*(a1 + 232) > 0.0 && v30 == 0.0)
      {
        v30 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
      }

      if (v28 >= 10001)
      {
        if ((v28 - 10000) >= 0xB)
        {
          v33 = v28 - 8899;
        }

        else
        {
          v33 = j;
        }

        goto LABEL_92;
      }

LABEL_93:
      if (v30 != 0.0)
      {
        v34 = CFAbsoluteTimeGetCurrent();
        if (v34 > v30)
        {
          if (v133 > 7)
          {
            v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The database operation timed out after %.2f seconds.", v34 - v30 + *(a1 + 232)];
            if (+[NSSQLCore debugDefault]< 1)
            {
              goto LABEL_256;
            }

            v113 = *(a1 + 42);
            v114 = objc_autoreleasePoolPush();
            v115 = _NSCoreDataIsOSLogEnabled(1);
            if (v113)
            {
              if (v115)
              {
                v116 = _pflogging_catastrophic_mode == 0;
                v117 = _PFLogGetLogStream(1);
                v118 = os_log_type_enabled(v117, OS_LOG_TYPE_ERROR);
                if (v116)
                {
                  if (v118)
                  {
                    goto LABEL_250;
                  }
                }

                else if (v118)
                {
LABEL_250:
                  *buf = 67109378;
                  LODWORD(v142[0]) = v32;
                  WORD2(v142[0]) = 2112;
                  *(v142 + 6) = v112;
                  _os_log_error_impl(&dword_18565F000, v117, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
                }
              }

              _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v32, v112);
LABEL_255:
              objc_autoreleasePoolPop(v114);
LABEL_256:
              if (theArray)
              {
                CFRelease(theArray);
              }

              if (ppStmt)
              {
                sqlite3_finalize(ppStmt);
              }

              v128 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during SQL execution : %@", v112];
              v129 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v32), @"NSSQLiteErrorDomain"}];
              v130 = [_NSCoreDataException exceptionWithName:134090 code:v128 reason:v129 userInfo:?];
              objc_exception_throw(v130);
            }

            if (v115)
            {
              v122 = _pflogging_catastrophic_mode == 0;
              v123 = _PFLogGetLogStream(1);
              v124 = os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
              if (v122)
              {
                if (v124)
                {
                  goto LABEL_253;
                }
              }

              else if (v124)
              {
LABEL_253:
                *buf = 67109378;
                LODWORD(v142[0]) = v32;
                WORD2(v142[0]) = 2112;
                *(v142 + 6) = v112;
                _os_log_error_impl(&dword_18565F000, v123, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
              }
            }

            _NSCoreDataLog_console(1, "(%d) %@", v32, v112);
            goto LABEL_255;
          }

          ++v28;
          v30 = v34 + *(a1 + 240);
          ++v133;
          goto LABEL_64;
        }
      }

      ++v28;
    }

    if (v32 > 0x1Au)
    {
      goto LABEL_100;
    }

    if (v32 == 14)
    {
      if (v27 > 2)
      {
        goto LABEL_164;
      }

      if (*(a1 + 232) > 0.0 && v30 == 0.0)
      {
        v30 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
      }

      ++v27;
      goto LABEL_80;
    }

    if (((1 << v32) & 0x220480) != 0)
    {
      goto LABEL_164;
    }

    if (((1 << v32) & 0x4000800) != 0)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v32 == 100)
    {
      if (!v26)
      {
        v35 = sqlite3_column_count(ppStmt);
        v36 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v36 = malloc_default_zone();
        }

        v26 = malloc_type_zone_malloc(v36, 8uLL, 0x100004000313F17uLL);
        *v26 = v35;
        CFArrayAppendValue(theArray, v26);
        v29 = 1;
        v132 = v35;
      }

      if (v132 > 0)
      {
        v37 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v37 = malloc_default_zone();
        }

        v26 = malloc_type_zone_malloc(v37, 8 * v132, 0x100004000313F17uLL);
        for (k = 0; k != v132; ++k)
        {
          v26[k] = sqlite3_column_int64(ppStmt, k);
        }

        CFArrayAppendValue(theArray, v26);
      }

      continue;
    }

    break;
  }

  if (v32 != 101)
  {
    goto LABEL_174;
  }

  if (!CFArrayGetCount(theArray))
  {
    v39 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v39 = malloc_default_zone();
    }

    v40 = malloc_type_zone_malloc(v39, 8uLL, 0x100004000313F17uLL);
    *v40 = 0;
    CFArrayAppendValue(theArray, v40);
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    v41 = *(a1 + 42);
    v42 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    v43 = _NSCoreDataIsLogEnabled(4);
    if (_pflogging_enable_oslog > 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v41)
    {
      if (v44)
      {
        if (_pflogging_catastrophic_mode)
        {
          v45 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v142[0] = v46 - Current;
            _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: sql execution time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }

        else
        {
          v89 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v90 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v142[0] = v90 - Current;
            _os_log_impl(&dword_18565F000, v89, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql execution time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }
      }

      v91 = "sql execution time: \x1B[31m%.4f\x1B[0ms";
    }

    else
    {
      if (v44)
      {
        if (_pflogging_catastrophic_mode)
        {
          v47 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v142[0] = v48 - Current;
            _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error: sql execution time: %.4fs\n", buf, 0xCu);
          }
        }

        else
        {
          v92 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v93 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v142[0] = v93 - Current;
            _os_log_impl(&dword_18565F000, v92, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql execution time: %.4fs\n", buf, 0xCu);
          }
        }
      }

      v91 = "sql execution time: %.4fs";
    }

    v94 = _pflogging_catastrophic_mode == 0;
    v95 = CFAbsoluteTimeGetCurrent() - Current;
    if (v94)
    {
      v96 = 4;
    }

    else
    {
      v96 = 1;
    }

    _NSCoreDataLog_console(v96, v91, *&v95);
    objc_autoreleasePoolPop(v42);
  }

  sqlite3_finalize(ppStmt);
  objc_autoreleasePoolPop(context);
LABEL_210:
  v97 = *MEMORY[0x1E69E9840];
  return theArray;
}

- (uint64_t)_forceDisconnectOnError
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    [*(v1 + 328) removeAllObjects];
    v3 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: SQLite disconnection (forced error)"];
    *(v1 + 40) = 0;
    [(NSSQLiteConnection *)v1 releaseSQLStatement];
    [(NSSQLiteConnection *)v1 _clearTransactionCaches];
    [(NSSQLiteConnection *)v1 _clearCachedStatements];
    if (*(v1 + 72))
    {
      if (+[NSSQLCore debugDefault])
      {
        v4 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Disconnecting from sqlite database due to an error.\n", buf, 2u);
            }
          }

          else
          {
            v6 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              *v8 = 0;
              _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Disconnecting from sqlite database due to an error.\n", v8, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v7 = 1;
        }

        else
        {
          v7 = 4;
        }

        _NSCoreDataLog_console(v7, "Disconnecting from sqlite database due to an error.");
        objc_autoreleasePoolPop(v4);
      }

      sqlite3_close_v2(*(v1 + 72));
    }

    *(v1 + 304) = 0;
    *(v1 + 312) &= ~2u;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    return [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v3];
  }

  return result;
}

- (sqlite3_int64)_fetchMaxPrimaryKeyForEntity:(uint64_t)a1
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(%@) FROM %@", @"Z_PK", objc_msgSend(a2, "tableName")];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v6 = *(a1 + 42);
      v7 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      if (_pflogging_enable_oslog > 0)
      {
        v9 = IsLogEnabled;
      }

      else
      {
        v9 = 0;
      }

      if (v6 == 1)
      {
        if (v9)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v5;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v12 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v5;
              _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v13 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v9)
        {
          if (_pflogging_catastrophic_mode)
          {
            v11 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v5;
              _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v14 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v5;
              _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v13 = "%@";
      }

      if (_pflogging_catastrophic_mode)
      {
        v15 = 1;
      }

      else
      {
        v15 = 6;
      }

      _NSCoreDataLog_console(v15, v13, v5);
      objc_autoreleasePoolPop(v7);
    }

    *buf = 0;
    v16 = [v5 UTF8String];
    v17 = v5;
    [(NSSQLiteConnection *)a1 _ensureDatabaseOpen];
    [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
    [(NSSQLiteConnection *)a1 _ensureNoFetchInProgress];
    v18 = sqlite3_prepare_v3(*(a1 + 72), v16, -1, 0, buf, 0);
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 1;
      while (v19 - 5 <= 1)
      {
        if (v20 >= 0xB)
        {
          v22 = v20 + 1101;
        }

        else
        {
          v22 = v21;
        }

        usleep(v22);
        v19 = sqlite3_prepare_v3(*(a1 + 72), v16, -1, 0, buf, 0);
        v21 += 3;
        ++v20;
        if (!v19)
        {
          goto LABEL_34;
        }
      }

      v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
      if (*buf)
      {
        sqlite3_finalize(*buf);
        *buf = 0;
      }

      goto LABEL_49;
    }

LABEL_34:
    if (*buf)
    {
      v23 = sqlite3_step(*buf);
      if (v23 != 100)
      {
        v24 = v23;
        v25 = 0;
        v26 = 1;
        while (v24 - 5 <= 1)
        {
          if (v25 >= 0xB)
          {
            v27 = v25 + 1101;
          }

          else
          {
            v27 = v26;
          }

          usleep(v27);
          v24 = sqlite3_step(*buf);
          v26 += 3;
          ++v25;
          if (v24 == 100)
          {
            goto LABEL_42;
          }
        }

        if (*buf)
        {
          sqlite3_finalize(*buf);
          *buf = 0;
        }

        v37 = *MEMORY[0x1E695D930];
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v24), @"NSSQLiteErrorDomain"}];
        v36 = @"Fetching maximum primary key for entity failed";
        v35 = v37;
LABEL_53:
        v38 = [_NSCoreDataException exceptionWithName:v35 code:256 reason:v36 userInfo:v34];
        objc_exception_throw(v38);
      }

LABEL_42:
      if (!*buf)
      {
        v19 = 100;
        goto LABEL_56;
      }

      v28 = sqlite3_column_int64(*buf, 0);
      v29 = sqlite3_finalize(*buf);
      *buf = 0;
      if (v29)
      {
        v19 = v29;
LABEL_56:
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
LABEL_49:
        v33 = *MEMORY[0x1E695D930];
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v19), @"NSSQLiteErrorDomain"}];
        v35 = v33;
        v36 = v32;
        goto LABEL_53;
      }
    }

    else
    {
      v28 = -1;
    }
  }

  else
  {
    v28 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v28;
}

- (sqlite3_int64)fetchMaxPrimaryKeyForEntity:(sqlite3_int64)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    return [(NSSQLiteConnection *)v3 _fetchMaxPrimaryKeyForEntity:a2];
  }

  return result;
}

+ (uint64_t)readMagicWordFromPath:(void *)a3 options:
{
  objc_opt_self();
  v14 = 0;
  memset(&v13, 0, sizeof(v13));
  v5 = stat(a2, &v13);
  MagicWordFromDBHandle = 0;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13.st_size == 0;
  }

  v8 = v7;
  if (v5 != 2 && (v8 & 1) == 0)
  {
    if (!strncmp("/dev/null", a2, 9uLL))
    {
      return 0;
    }

    else
    {
      v9 = [NSSQLCore databaseKeyFromOptionsDictionary:a3];
      v10 = [NSSQLiteConnection openAtPath:a2 withKey:v9 handle:&v14 flags:1 module:0 checkpointOnClose:0];
      v11 = v14;
      if (v10 == 26)
      {
        MagicWordFromDBHandle = 92;
        if (!v14)
        {
          return MagicWordFromDBHandle;
        }

        goto LABEL_19;
      }

      if (v14)
      {
        if (v10)
        {
          MagicWordFromDBHandle = 92;
        }

        else
        {
          MagicWordFromDBHandle = readMagicWordFromDBHandle(v14);
        }

LABEL_19:
        sqlite3_close_v2(v11);
        return MagicWordFromDBHandle;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return MagicWordFromDBHandle;
}

- (void)createTableForEntity:(void *)a1
{
  if (a1 && a2 && !a2[20])
  {
    v3 = -[NSSQLiteAdapter newCreateTableStatementForEntity:]([a1 adapter], a2);
    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v3];
  }
}

- (void)prepareAndExecuteSQLStatement:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2)
    {
      v5 = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)a1 bindTempTablesForStatementIfNecessary:a2];
      [(NSSQLiteConnection *)a1 prepareSQLStatement:a2];
      [a1 execute];
      [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
      *(a1 + 312) &= ~2u;
      *(a1 + 100) = 0;
      *(a1 + 92) = 0;
      *(a1 + 108) = 0;
      [(NSSQLiteConnection *)a1 releaseSQLStatement];

      objc_autoreleasePoolPop(v5);
    }
  }
}

- (void)createManyToManyTablesForEntity:(void *)a1
{
  if (a1)
  {
    v4 = [a2 manyToManyRelationships];
    v5 = [v4 count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [v4 objectAtIndex:i];
        if (v8)
        {
          v9 = v8;
          if (v8[2].isa)
          {
            if ([(__CFString *)v8 entity]== a2)
            {
              v10 = -[NSSQLiteAdapter newCreateTableStatementForManyToMany:]([a1 adapter], v9);
              [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v10];
            }
          }
        }
      }
    }
  }
}

- (uint64_t)_createIndexesForEntities:(void *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        [(NSSQLiteConnection *)a1 createIndexesForEntity:v8];
        if (v8)
        {
          if (![*(v8 + 152) count])
          {
            goto LABEL_10;
          }

          v9 = *(v8 + 152);
LABEL_9:
          [(NSSQLiteConnection *)a1 _createIndexesForEntities:v9];
          goto LABEL_10;
        }

        v10 = [0 count];
        v9 = 0;
        if (v10)
        {
          goto LABEL_9;
        }

LABEL_10:
        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)createIndexesForEntity:(void *)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = +[NSSQLCore debugDefault](NSSQLCore, "debugDefault") > 0 || +[NSMappingModel migrationDebugLevel]> 0;
    v5 = [a1 adapter];
    if (v5)
    {
      v6 = [(NSSQLiteAdapter *)v5 newCreateIndexStatementsForEntity:a2 defaultIndicesOnly:0];
    }

    else
    {
      v6 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (v4)
          {
            v11 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v21 = v10;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute create index statement: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v13 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v21 = v10;
                  _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute create index statement: %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v14 = 1;
            }

            else
            {
              v14 = 4;
            }

            _NSCoreDataLog_console(v14, "  Execute create index statement: %@", v10);
            objc_autoreleasePoolPop(v11);
          }

          [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (uint64_t)createTriggersForEntities:(uint64_t)result
{
  v51 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = +[NSSQLCore debugDefault](NSSQLCore, "debugDefault") > 0 || +[NSMappingModel migrationDebugLevel]> 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    result = [a2 countByEnumeratingWithState:&v40 objects:v50 count:16];
    v29 = result;
    if (result)
    {
      v28 = *v41;
      do
      {
        v31 = 0;
        do
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(a2);
          }

          v30 = *(*(&v40 + 1) + 8 * v31);
          v4 = [(NSSQLEntity *)v30 derivedAttributesExtension];
          v5 = v4;
          if (!v4 || ([(NSSQLEntity_DerivedAttributesExtension *)v4 _generateTriggerSQL], (triggerSQL = v5->_triggerSQL) == 0))
          {
            v25 = MEMORY[0x1E695DF30];
            v48 = @"entity";
            v49 = [(NSSQLEntity_DerivedAttributesExtension *)v30 entityDescription];
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            objc_exception_throw([v25 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported derivedAttribute" userInfo:v26]);
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v7 = [(NSMutableArray *)triggerSQL countByEnumeratingWithState:&v36 objects:v47 count:16];
          if (v7)
          {
            v8 = *v37;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v37 != v8)
                {
                  objc_enumerationMutation(triggerSQL);
                }

                v10 = *(*(&v36 + 1) + 8 * i);
                if (v3)
                {
                  v11 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      LogStream = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v46 = v10;
                        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute DA trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v13 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v46 = v10;
                        _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute DA trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v14 = 1;
                  }

                  else
                  {
                    v14 = 4;
                  }

                  _NSCoreDataLog_console(v14, "  Execute DA trigger creation statement: %@", v10);
                  objc_autoreleasePoolPop(v11);
                }

                [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v10];
              }

              v7 = [(NSMutableArray *)triggerSQL countByEnumeratingWithState:&v36 objects:v47 count:16];
            }

            while (v7);
          }

          v15 = -[NSSQLiteAdapter newCreateTriggersForEntity:existingRtreeTables:]([v2 adapter], &v30->super.isa, 0);
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v16)
          {
            v17 = *v33;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v33 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v32 + 1) + 8 * j);
                if (v3)
                {
                  v20 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v21 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v46 = v19;
                        _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v22 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v46 = v19;
                        _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = 4;
                  }

                  _NSCoreDataLog_console(v23, "  Execute trigger creation statement: %@", v19);
                  objc_autoreleasePoolPop(v20);
                }

                [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v19];
              }

              v16 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
            }

            while (v16);
          }

          ++v31;
        }

        while (v31 != v29);
        result = [a2 countByEnumeratingWithState:&v40 objects:v50 count:16];
        v29 = result;
      }

      while (result);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)createTablesForEntities:(uint64_t)result
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          [(NSSQLiteConnection *)v3 createTableForEntity:v8];
          [(NSSQLiteConnection *)v3 createManyToManyTablesForEntity:v8];
        }

        v5 = [a2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(a2);
          }

          [(NSSQLiteConnection *)v3 createIndexesForEntity:?];
        }

        v10 = [a2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v10);
    }

    result = [(NSSQLiteConnection *)v3 createTriggersForEntities:a2];
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)createMetadata
{
  v2 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TABLE %@ (%@ INTEGER PRIMARY KEY, %@ VARCHAR(255), %@ BLOB)", @"Z_METADATA", @"Z_VERSION", @"Z_UUID", @"Z_PLIST"));
  [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v2];
}

- (void)createMissingHistoryTables
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
    v4 = v3;
    if (v3)
    {
      v3 = v3[3];
    }

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (v4)
    {
      v4 = v4[4];
    }

    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ((-[NSSQLiteConnection _hasTableWithName:isTemp:](a1, [v10 tableName], 0) & 1) == 0)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      [(NSSQLiteConnection *)a1 createTablesForEntities:v5];
    }

    objc_autoreleasePoolPop(v2);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_replacePersistentStoreAtURL:(uint64_t)a1 destinationOptions:withPersistentStoreFromURL:sourceOptions:error:
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v102 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v11 = [v6 path];
  v12 = [v10 path];
  v13 = [v11 fileSystemRepresentation];
  v14 = [v12 fileSystemRepresentation];
  if ([_PFRoutines _isInMemoryStoreURL:v6])
  {
    if (v2)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v17 = MEMORY[0x1E695DF20];
      v18 = [v6 path];
      v19 = [v17 dictionaryWithObjectsAndKeys:{v18, *MEMORY[0x1E696A368], 0}];
      v20 = v15;
      v21 = v16;
      v22 = 258;
LABEL_77:
      v58 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];
      result = 0;
LABEL_78:
      *v2 = v58;
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if ([_PFRoutines _isInMemoryStoreURL:v10])
  {
    if (v2)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A250];
      v25 = MEMORY[0x1E695DF20];
      v26 = [v10 path];
      v19 = [v25 dictionaryWithObjectsAndKeys:{v26, *MEMORY[0x1E696A368], 0}];
      v20 = v23;
      v21 = v24;
      v22 = 514;
      goto LABEL_77;
    }

LABEL_106:
    result = 0;
    goto LABEL_107;
  }

  v89 = v14;
  v27 = _NSSQLiteConnectionLockProxyValueFromPragmas([v4 objectForKey:?]);
  if (v27)
  {
    v28 = 34;
  }

  else
  {
    v28 = 2;
  }

  v93 = v4;
  v29 = [v4 valueForKey:?];
  if (v29)
  {
    v30 = v29;
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v29])
    {
      v28 |= 0x400000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v30])
    {
      v28 |= 0x300000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v30])
    {
      v28 |= 0x200000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v30])
    {
      v28 |= 0x100000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v30])
    {
      v28 |= 0x700000u;
      goto LABEL_27;
    }

    context = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_26;
    }

    v85 = _pflogging_catastrophic_mode;
    log = _PFLogGetLogStream(1);
    v31 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v85)
    {
      if (v31)
      {
        v101.f_bsize = 138412290;
        *&v101.f_iosize = v30;
LABEL_117:
        _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", &v101, 0xCu);
      }
    }

    else if (v31)
    {
      v101.f_bsize = 138412290;
      *&v101.f_iosize = v30;
      goto LABEL_117;
    }

LABEL_26:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v30);
    objc_autoreleasePoolPop(context);
  }

LABEL_27:
  v95 = 0;
  if ([objc_msgSend(v6 "query")])
  {
    objc_opt_self();
    v13 = [objc_msgSend(v6 "absoluteString")];
  }

  v32 = [NSSQLCore databaseKeyFromOptionsDictionary:v93];
  v33 = [NSSQLiteConnection openAtPath:v13 withKey:v32 handle:&v95 flags:v28 module:0 checkpointOnClose:0];
  if (v33)
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = v33;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to open source database", @"reason", v11, *MEMORY[0x1E696A368], 0}];
    v37 = v34;
LABEL_31:
    v38 = [v37 errorWithDomain:@"NSSQLiteErrorDomain" code:v35 userInfo:v36];
    v39 = 0;
    goto LABEL_37;
  }

  v40 = v95;
  sqlite3_busy_timeout(v95, 120000);
  if (v27)
  {
    if (([(__CFString *)v27 isEqualToString:@":auto:"]& 1) == 0)
    {
      v41 = sqlite3_exec(v40, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"pragma lock_proxy_file='%@'", v27), "UTF8String"], 0, 0, 0);
      if (v41)
      {
        LODWORD(v35) = v41;
        sqlite3_close_v2(v40);
        v95 = 0;
        v42 = MEMORY[0x1E696ABC0];
        v35 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to set file locking on source database", @"reason", v27, @"lock_proxy_file", 0}];
        v37 = v42;
        goto LABEL_31;
      }
    }
  }

  v38 = 0;
  v39 = 1;
LABEL_37:
  v92 = _NSSQLiteConnectionLockProxyValueFromPragmas([v8 objectForKey:@"NSSQLitePragmasOption"]);
  if (v92)
  {
    v43 = 38;
  }

  else
  {
    v43 = 6;
  }

  v44 = [v8 valueForKey:@"NSPersistentStoreFileProtectionKey"];
  if (v44)
  {
    v45 = v44;
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v44])
    {
      v43 |= 0x400000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v45])
    {
      v43 |= 0x300000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v45])
    {
      v43 |= 0x200000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v45])
    {
      v43 |= 0x100000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v45])
    {
      v43 |= 0x700000u;
      goto LABEL_57;
    }

    contexta = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_56;
    }

    v90 = v38;
    v46 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v47 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v46)
    {
      v38 = v90;
      if (v47)
      {
        v101.f_bsize = 138412290;
        *&v101.f_iosize = v45;
LABEL_119:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", &v101, 0xCu);
      }
    }

    else
    {
      v38 = v90;
      if (v47)
      {
        v101.f_bsize = 138412290;
        *&v101.f_iosize = v45;
        goto LABEL_119;
      }
    }

LABEL_56:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v45);
    objc_autoreleasePoolPop(contexta);
  }

LABEL_57:
  v94 = 0;
  memset(&v101, 0, 512);
  memset(&v100, 0, 512);
  if (!v39)
  {
LABEL_69:
    if (v95)
    {
      sqlite3_close_v2(v95);
    }

    if (v94)
    {
      sqlite3_close_v2(v94);
    }

    if (!v2)
    {
      goto LABEL_106;
    }

    if (!v38)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A250];
      v22 = 255;
      v19 = 0;
      goto LABEL_77;
    }

    result = 0;
    *v2 = v38;
    goto LABEL_107;
  }

  v91 = v38;
  if (statfs([v11 UTF8String], &v101) || statfs(objc_msgSend(objc_msgSend(v12, "stringByDeletingLastPathComponent"), "UTF8String"), &v100) || strcmp(v101.f_mntonname, v100.f_mntonname) || (v101.f_flags & 0x1001) != 0x1000 || (v48 = v95, objc_msgSend(v12, "UTF8String"), _sqlite3_db_clone()))
  {
    if ([objc_msgSend(v10 "query")])
    {
      objc_opt_self();
      v49 = [objc_msgSend(v10 "absoluteString")];
    }

    else
    {
      v49 = v89;
    }

    v50 = [NSSQLCore databaseKeyFromOptionsDictionary:v8];
    v51 = [NSSQLiteConnection openAtPath:v49 withKey:v50 handle:&v94 flags:v43 module:0 checkpointOnClose:1];
    if (v51)
    {
      v52 = MEMORY[0x1E696ABC0];
      v53 = v51;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to open destination database", @"reason", v12, *MEMORY[0x1E696A368], 0}];
      v55 = v52;
      v56 = v53;
LABEL_68:
      v38 = [v55 errorWithDomain:@"NSSQLiteErrorDomain" code:v56 userInfo:v54];
      goto LABEL_69;
    }

    v59 = v94;
    sqlite3_busy_timeout(v94, 120000);
    if (v92)
    {
      if (([(__CFString *)v92 isEqualToString:@":auto:"]& 1) == 0)
      {
        v60 = sqlite3_exec(v59, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"pragma lock_proxy_file='%@'", v92), "UTF8String"], 0, 0, 0);
        if (v60)
        {
          v61 = v60;
          sqlite3_close_v2(v59);
          v94 = 0;
          v62 = MEMORY[0x1E696ABC0];
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to set file locking on destination database", @"reason", v92, @"lock_proxy_file", 0}];
          v55 = v62;
          v56 = v61;
          goto LABEL_68;
        }
      }
    }

    v48 = v95;
    v63 = sqlite3_file_control(v59, 0, 102, v95);
    if (v63)
    {
      v91 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSSQLiteErrorDomain" code:v63 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Failed to replace destination database", @"reason", v12, *MEMORY[0x1E696A368], v11, @"Source database Path", 0)}];
      v64 = 0;
      goto LABEL_87;
    }
  }

  else
  {
    v59 = 0;
  }

  v64 = 1;
LABEL_87:
  if (!sqlite3_close_v2(v59))
  {
    goto LABEL_94;
  }

  v65 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v66 = v64;
    v67 = _pflogging_catastrophic_mode;
    v68 = _PFLogGetLogStream(1);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (v67)
    {
      v64 = v66;
      if (v69)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v64 = v66;
      if (v69)
      {
LABEL_114:
        v82 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
        *buf = 138412546;
        v97 = v82;
        v98 = 2112;
        v99 = v12;
        _os_log_error_impl(&dword_18565F000, v68, OS_LOG_TYPE_ERROR, "CoreData: error: %@ failed to close destination database %@\n", buf, 0x16u);
      }
    }
  }

  v70 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
  _NSCoreDataLog_console(1, "%@ failed to close destination database %@", v70, v12);
  objc_autoreleasePoolPop(v65);
LABEL_94:
  v71 = sqlite3_close_v2(v48);
  v72 = v93;
  if (v71)
  {
    v73 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v74 = _pflogging_catastrophic_mode;
      v75 = _PFLogGetLogStream(1);
      v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
      if (v74)
      {
        v72 = v93;
        if (v76)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v72 = v93;
        if (v76)
        {
LABEL_115:
          v83 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
          *buf = 138412546;
          v97 = v83;
          v98 = 2112;
          v99 = v12;
          _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, "CoreData: error: %@ failed to close source database %@\n", buf, 0x16u);
        }
      }
    }

    v77 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
    _NSCoreDataLog_console(1, "%@ failed to close source database %@", v77, v12);
    objc_autoreleasePoolPop(v73);
  }

  if ((v64 & 1) == 0)
  {
    if (v2)
    {
      result = 0;
      v58 = v91;
      goto LABEL_78;
    }

    goto LABEL_106;
  }

  v78 = [v72 objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
  if (v78)
  {
    v79 = [v78 BOOLValue];
  }

  else
  {
    v79 = 0;
  }

  v81 = [v72 objectForKey:@"NSPersistentStoreForceDestroyOption"];
  if (v81)
  {
    LODWORD(v81) = [v81 BOOLValue];
  }

  result = ((v79 | v81) & 1) == 0 || [NSSQLiteConnection _destroyPersistentStoreAtURL:v6 options:v72 error:v2];
LABEL_107:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)_destroyPersistentStoreAtURL:(void *)a3 options:(uint64_t *)a4 error:
{
  v123 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 path];
  v8 = [v7 fileSystemRepresentation];
  if (([_PFRoutines _isInMemoryStoreURL:a2]& 1) != 0)
  {
    goto LABEL_2;
  }

  v12 = [objc_msgSend(v7 stringByAppendingString:{@"-journal", "fileSystemRepresentation"}];
  v13 = [objc_msgSend(v7 stringByAppendingString:{@"-wal", "fileSystemRepresentation"}];
  memset(&v116, 0, sizeof(v116));
  if (stat(v8, &v116))
  {
    v14 = *__error() == 2;
  }

  else
  {
    v14 = v116.st_size == 0;
  }

  v15 = v14;
  log = v15;
  v108 = a4;
  memset(&v119, 0, 512);
  v16 = statfs(v8, &v119);
  v17 = (v16 | v119.f_flags & 0x1000) == 0;
  if (stat(v12, &v116))
  {
    v18 = *__error() == 2;
  }

  else
  {
    v18 = v116.st_size == 0;
  }

  v19 = v18;
  v107 = v13;
  v20 = v7;
  if (stat(v13, &v116))
  {
    v21 = *__error() == 2;
  }

  else
  {
    v21 = v116.st_size == 0;
  }

  v22 = v21;
  v23 = v12;
  v115 = 0;
  v24 = [a3 objectForKey:@"NSSQLitePragmasOption"];
  v25 = v24;
  if (v24)
  {
    v26 = _NSSQLiteConnectionLockProxyValueFromPragmas(v24);
  }

  else
  {
    v26 = 0;
  }

  v27 = [v25 objectForKey:@"journal_mode"];
  if (v27 == NSKeyValueCoding_NullValue)
  {
    v27 = 0;
  }

  if (v26)
  {
    v17 = 0;
  }

  if (v17)
  {
    goto LABEL_33;
  }

  if (!v27)
  {
    if (dword_1ED4BEEC0 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ([@"wal" isEqualToString:{objc_msgSend(v27, "lowercaseString")}])
  {
LABEL_32:
    v115 |= 1u;
  }

LABEL_33:
  if ((log & v19 & v22) == 1 && (v115 & 1) == 0)
  {
LABEL_2:
    v9 = 1;
    goto LABEL_3;
  }

  v28 = 6;
  v106 = v26;
  if (!v25)
  {
    v30 = v23;
    v31 = v20;
    v32 = a2;
    goto LABEL_75;
  }

  if (v26)
  {
    v28 = 38;
  }

  else
  {
    v28 = 6;
  }

  v29 = [v25 objectForKey:@"page_size"];
  v30 = v23;
  v31 = v20;
  v32 = a2;
  if (v29)
  {
    v33 = v29;
    HIDWORD(v35) = [v29 intValue] - 1024;
    LODWORD(v35) = HIDWORD(v35);
    v34 = v35 >> 10;
    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v36 = v115 | 0x30;
        goto LABEL_57;
      }

      if (v34 == 7)
      {
        v36 = v115 | 0x40;
        goto LABEL_57;
      }
    }

    else
    {
      if (!v34)
      {
        v36 = v115 | 0x10;
        goto LABEL_57;
      }

      if (v34 == 1)
      {
        v36 = v115 | 0x20;
LABEL_57:
        v115 = v36;
        goto LABEL_58;
      }
    }

    v37 = objc_autoreleasePoolPush();
    _pflogInitialize(5);
    IsLogEnabled = _NSCoreDataIsLogEnabled(5);
    v39 = &unk_1EA8C8000;
    if (!IsLogEnabled || _pflogging_enable_oslog < 1)
    {
      goto LABEL_99;
    }

    if (_pflogging_catastrophic_mode)
    {
      loga = _PFLogGetLogStream(1);
      v40 = os_log_type_enabled(loga, OS_LOG_TYPE_ERROR);
      v39 = &unk_1EA8C8000;
      if (v40)
      {
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_error_impl(&dword_18565F000, loga, OS_LOG_TYPE_ERROR, "CoreData: error: ignoring unsupported page_size specified as truncate option: %@\n", buf, 0xCu);
LABEL_98:
        v39 = &unk_1EA8C8000;
      }
    }

    else
    {
      logc = _PFLogGetLogStream(5);
      v55 = os_log_type_enabled(logc, OS_LOG_TYPE_DEFAULT);
      v39 = &unk_1EA8C8000;
      if (v55)
      {
        *buf = 138412290;
        *&buf[4] = v33;
        _os_log_impl(&dword_18565F000, logc, OS_LOG_TYPE_DEFAULT, "CoreData: warning: ignoring unsupported page_size specified as truncate option: %@\n", buf, 0xCu);
        goto LABEL_98;
      }
    }

LABEL_99:
    if (v39[530])
    {
      v56 = 1;
    }

    else
    {
      v56 = 5;
    }

    _NSCoreDataLog_console(v56, "ignoring unsupported page_size specified as truncate option: %@", v33);
    objc_autoreleasePoolPop(v37);
  }

LABEL_58:
  v41 = [v25 objectForKey:@"auto_vacuum"];
  if (!v41)
  {
    v45 = v115 | 0xC;
LABEL_74:
    v115 = v45;
    goto LABEL_75;
  }

  v42 = v41;
  if ([v41 isNSString])
  {
    v43 = [v42 lowercaseString];
    if ([@"incremental" isEqualToString:v43] & 1) != 0 || (objc_msgSend(@"2", "isEqualToString:", v43))
    {
      v44 = 2;
LABEL_73:
      v45 = v115 | dword_18592E710[v44];
      goto LABEL_74;
    }

    if ([@"full" isEqualToString:v43] & 1) != 0 || (objc_msgSend(@"1", "isEqualToString:", v43))
    {
      v44 = 1;
      goto LABEL_73;
    }

    if ([@"off" isEqualToString:v43] & 1) != 0 || (objc_msgSend(@"0", "isEqualToString:", v43))
    {
      v44 = 0;
      goto LABEL_73;
    }
  }

  else
  {
    v44 = [v42 intValue];
    if (v44 <= 2)
    {
      goto LABEL_73;
    }
  }

  v46 = objc_autoreleasePoolPush();
  _pflogInitialize(5);
  if (_NSCoreDataIsLogEnabled(5) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v42;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: unsupported auto_vacuum setting specified as truncate option: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v53 = _PFLogGetLogStream(5);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v42;
        _os_log_impl(&dword_18565F000, v53, OS_LOG_TYPE_DEFAULT, "CoreData: warning: unsupported auto_vacuum setting specified as truncate option: %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v54 = 1;
  }

  else
  {
    v54 = 5;
  }

  _NSCoreDataLog_console(v54, "unsupported auto_vacuum setting specified as truncate option: %@", v42);
  objc_autoreleasePoolPop(v46);
LABEL_75:
  v48 = [a3 valueForKey:@"NSPersistentStoreFileProtectionKey"];
  if (!v48)
  {
    goto LABEL_108;
  }

  v49 = v48;
  if ([*MEMORY[0x1E696A3A8] isEqualToString:v48])
  {
    v28 |= 0x400000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A388] isEqualToString:v49])
  {
    v28 |= 0x300000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A380] isEqualToString:v49])
  {
    v28 |= 0x200000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A378] isEqualToString:v49])
  {
    v28 |= 0x100000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A398] isEqualToString:v49])
  {
    v28 |= 0x700000u;
    goto LABEL_108;
  }

  v50 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    v51 = _pflogging_catastrophic_mode;
    logb = _PFLogGetLogStream(1);
    v52 = os_log_type_enabled(logb, OS_LOG_TYPE_ERROR);
    if (v51)
    {
      if (v52)
      {
        *buf = 138412290;
        *&buf[4] = v49;
LABEL_202:
        _os_log_error_impl(&dword_18565F000, logb, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else if (v52)
    {
      *buf = 138412290;
      *&buf[4] = v49;
      goto LABEL_202;
    }
  }

  _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v49);
  objc_autoreleasePoolPop(v50);
LABEL_108:
  logd = v30;
  v114 = 0;
  if ([objc_msgSend(v32 "query")])
  {
    objc_opt_self();
    v8 = [objc_msgSend(v32 "absoluteString")];
  }

  v57 = -6;
  do
  {
    v58 = [NSSQLCore databaseKeyFromOptionsDictionary:a3];
    v59 = [NSSQLiteConnection openAtPath:v8 withKey:v58 handle:&v114 flags:v28 module:0 checkpointOnClose:1];
    if (v59 != 14)
    {
      break;
    }

    if (v114)
    {
      sqlite3_close_v2(v114);
      v114 = 0;
    }

    usleep(0x4E20u);
  }

  while (!__CFADD__(v57++, 1));
  v61 = [a3 objectForKey:@"NSPersistentStoreForceDestroyOption"];
  if (v61)
  {
    v62 = [v61 BOOLValue];
  }

  else
  {
    v62 = 1;
  }

  v63 = v114;
  v64 = v17 | v62;
  if (!v59)
  {
    sqlite3_busy_timeout(v114, 120000);
    v118 = 0;
    v65 = sqlite3_file_control(v63, 0, 7, &v118);
    if (!v118 || v65)
    {
LABEL_128:
      v68 = v106;
      goto LABEL_134;
    }

    if (*v118)
    {
      v66 = (*(*v118 + 16))();
      if (!v66)
      {
        if (*buf != 0x66206574694C5153 || *&buf[7] != 0x332074616D726F66)
        {
          goto LABEL_128;
        }

        v68 = v106;
        if (v121 != 2 || v122 != 2)
        {
          goto LABEL_134;
        }

LABEL_133:
        v115 |= 1u;
LABEL_134:
        if (v68)
        {
          v70 = v68;
          if (([(__CFString *)v68 isEqualToString:@":auto:"]& 1) == 0)
          {
            sqlite3_exec(v63, [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"pragma lock_proxy_file='%@'", v70), "UTF8String"], 0, 0, 0);
          }
        }

        if (v64)
        {
          v115 |= 0x80u;
        }

        v71 = -6;
        while (1)
        {
          v72 = sqlite3_file_control(v63, 0, 101, &v115);
          if ((v72 & 0x7F) != 5)
          {
            v59 = v72;
            if ((v72 & 0x7F) != 6)
            {
              goto LABEL_144;
            }

            usleep(0x4E20u);
          }

          v59 = 5;
LABEL_144:
          if (v71)
          {
            ++v71;
            if (v59 == 5)
            {
              continue;
            }
          }

          goto LABEL_146;
        }
      }
    }

    else
    {
      v66 = 1;
    }

    v117 = 0;
    v69 = sqlite3_file_control(v63, 0, 4, &v117);
    v68 = v106;
    if (v66 == 522 || v117 || v69 != 1)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

LABEL_146:
  if (v63)
  {
    sqlite3_close_v2(v63);
  }

  v73 = [a3 objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
  if (v73)
  {
    v17 |= [v73 BOOLValue];
  }

  v9 = v59 == 0;
  if (v59)
  {
    v74 = v64;
  }

  else
  {
    v74 = 1;
  }

  v75 = v108;
  if (!v17 || !v74)
  {
    if (!v59)
    {
      goto LABEL_3;
    }

    v83 = MEMORY[0x1E696ABC0];
    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to truncate database", @"reason", v31, *MEMORY[0x1E696A368], 0}];
    v85 = v83;
    v86 = @"NSSQLiteErrorDomain";
    v87 = v59;
    goto LABEL_183;
  }

  if ((unlink(v8) & 0x80000000) == 0 || *__error() == 2)
  {
    v76 = 0;
LABEL_158:
    v77 = 0;
    goto LABEL_159;
  }

  v76 = *__error();
  if (!v76)
  {
    goto LABEL_158;
  }

  v102 = MEMORY[0x1E696ABC0];
  v103 = *MEMORY[0x1E696A798];
  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v31, *MEMORY[0x1E696A368], 0}];
  v105 = v103;
  v30 = logd;
  v77 = [v102 errorWithDomain:v105 code:v76 userInfo:v104];
LABEL_159:
  if ((unlink(v30) & 0x80000000) == 0)
  {
    if (!v76)
    {
      goto LABEL_167;
    }

LABEL_161:
    if (!v77)
    {
      v78 = MEMORY[0x1E696ABC0];
      v79 = *MEMORY[0x1E696A798];
      v80 = MEMORY[0x1E695DF20];
      v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
      v82 = v80;
      v75 = v108;
      v77 = [v78 errorWithDomain:v79 code:v76 userInfo:{objc_msgSend(v82, "dictionaryWithObjectsAndKeys:", v81, *MEMORY[0x1E696A368], 0)}];
    }

    goto LABEL_167;
  }

  if (*__error() == 2)
  {
    v76 = 0;
    goto LABEL_167;
  }

  v76 = *__error();
  if (v76)
  {
    goto LABEL_161;
  }

LABEL_167:
  if ((unlink(v107) & 0x80000000) == 0)
  {
    if (!v76)
    {
      goto LABEL_173;
    }

LABEL_169:
    if (!v77)
    {
      v88 = MEMORY[0x1E696ABC0];
      v89 = *MEMORY[0x1E696A798];
      v90 = MEMORY[0x1E695DF20];
      v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v107];
      v77 = [v88 errorWithDomain:v89 code:v76 userInfo:{objc_msgSend(v90, "dictionaryWithObjectsAndKeys:", v91, *MEMORY[0x1E696A368], 0)}];
    }

    goto LABEL_173;
  }

  if (*__error() == 2)
  {
    v76 = 0;
    goto LABEL_173;
  }

  v76 = *__error();
  if (v76)
  {
    goto LABEL_169;
  }

LABEL_173:
  v92 = [objc_msgSend(v31 stringByAppendingString:{@"-shm", "fileSystemRepresentation"}];
  if ((unlink(v92) & 0x80000000) == 0)
  {
    if (!v76)
    {
      goto LABEL_179;
    }

LABEL_175:
    if (!v77)
    {
      v93 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A798];
      v95 = MEMORY[0x1E695DF20];
      v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v92];
      v77 = [v93 errorWithDomain:v94 code:v76 userInfo:{objc_msgSend(v95, "dictionaryWithObjectsAndKeys:", v96, *MEMORY[0x1E696A368], 0)}];
    }

    goto LABEL_179;
  }

  if (*__error() == 2)
  {
    v76 = 0;
    goto LABEL_179;
  }

  v76 = *__error();
  if (v76)
  {
    goto LABEL_175;
  }

LABEL_179:
  v97 = [objc_msgSend(objc_msgSend(v31 "stringByDeletingLastPathComponent")];
  if (unlink(v97) < 0)
  {
    if (*__error() == 2)
    {
      goto LABEL_184;
    }

    v76 = *__error();
    if (!v76)
    {
      goto LABEL_184;
    }
  }

  else if (!v76)
  {
    goto LABEL_184;
  }

  if (!v77)
  {
    v98 = MEMORY[0x1E696ABC0];
    v99 = *MEMORY[0x1E696A798];
    v100 = MEMORY[0x1E695DF20];
    v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v97];
    v84 = [v100 dictionaryWithObjectsAndKeys:{v101, *MEMORY[0x1E696A368], 0}];
    v85 = v98;
    v86 = v99;
    v87 = v76;
LABEL_183:
    v77 = [v85 errorWithDomain:v86 code:v87 userInfo:v84];
  }

LABEL_184:
  if (v75 && v77)
  {
    *v75 = v77;
  }

LABEL_3:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)_rekeyPersistentStoreAtURL:(void *)a3 options:(void *)a4 withKey:(uint64_t *)a5 error:
{
  v36 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = [objc_msgSend(a2 "path")];
  if ([_PFRoutines _isInMemoryStoreURL:a2])
  {
    if (a5)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A250];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"In-memory stores do not support rekeying", *MEMORY[0x1E696A578], 0}];
LABEL_14:
      v17 = [v10 errorWithDomain:v11 code:134060 userInfo:v12];
      result = 0;
      *a5 = v17;
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  if (![a4 length])
  {
    if (a5)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A250];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"New key value must not be empty", *MEMORY[0x1E696A578], 0}];
      goto LABEL_14;
    }

LABEL_15:
    result = 0;
    goto LABEL_50;
  }

  v13 = [a3 objectForKey:@"NSSQLitePragmasOption"];
  v14 = 6;
  if (v13)
  {
    if (_NSSQLiteConnectionLockProxyValueFromPragmas(v13))
    {
      v14 = 38;
    }

    else
    {
      v14 = 6;
    }
  }

  v15 = [a3 valueForKey:@"NSPersistentStoreFileProtectionKey"];
  if (v15)
  {
    v16 = v15;
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v15])
    {
      v14 |= 0x400000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v16])
    {
      v14 |= 0x300000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v16])
    {
      v14 |= 0x200000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v16])
    {
      v14 |= 0x100000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v16])
    {
      v14 |= 0x700000u;
      goto LABEL_30;
    }

    v19 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_29;
    }

    v20 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v22 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412290;
        *&buf[4] = v16;
LABEL_53:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else if (v22)
    {
      *buf = 138412290;
      *&buf[4] = v16;
      goto LABEL_53;
    }

LABEL_29:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v16);
    objc_autoreleasePoolPop(v19);
  }

LABEL_30:
  *buf = 0;
  if ([objc_msgSend(a2 "query")])
  {
    objc_opt_self();
    v9 = [objc_msgSend(a2 "absoluteString")];
  }

  v23 = [NSSQLCore databaseKeyFromOptionsDictionary:a3];
  v24 = [NSSQLiteConnection openAtPath:v9 withKey:v23 handle:buf flags:v14 module:0 checkpointOnClose:1];
  if (v24 == 14)
  {
    v34 = a4;
    v25 = -6;
    while (1)
    {
      v26 = *buf;
      if (*buf)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*buf)];
        sqlite3_close_v2(v26);
        *buf = 0;
      }

      else
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(14)];
      }

      usleep(0x4E20u);
      if (__CFADD__(v25++, 1))
      {
        break;
      }

      v29 = [NSSQLCore databaseKeyFromOptionsDictionary:a3];
      v30 = [NSSQLiteConnection openAtPath:v9 withKey:v29 handle:buf flags:v14 module:0 checkpointOnClose:1];
      if (v30 != 14)
      {
        v31 = v30;
        a4 = v34;
        goto LABEL_41;
      }
    }

    v32 = 0;
    goto LABEL_45;
  }

  v31 = v24;
  v27 = 0;
LABEL_41:
  v32 = *buf;
  if (v31)
  {
    goto LABEL_46;
  }

  [a4 bytes];
  [a4 length];
  if (sqlite3_rekey_v2())
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(v32)];
LABEL_45:
    v31 = 1;
    goto LABEL_46;
  }

  v31 = 0;
LABEL_46:
  sqlite3_close_v2(v32);
  if (a5 && v31)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134180 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v27, *MEMORY[0x1E696A578], 0)}];
  }

  result = v31 == 0;
LABEL_50:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clearTempTablesBindingsForStatement:(void *)result
{
  v30 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    result = [a2 bindIntarrays];
    if (result)
    {
      v5 = result;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      result = [result countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (result)
      {
        v6 = result;
        v7 = *v25;
        do
        {
          v8 = 0;
          do
          {
            if (*v25 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v24 + 1) + 8 * v8);
            v10 = v3[1];
            if (v10)
            {
              dispatch_assert_queue_V2(v10);
            }

            v11 = [v9 index];
            if (v11 < [v3[38] count])
            {
              v12 = [v3[38] objectAtIndex:v11];
              if (v12)
              {
                v13 = *(v12 + 8);
              }

              v14 = sqlite3_intarray_bind();
              if (v14)
              {
                v20 = v14;
                v21 = *MEMORY[0x1E695D930];
                v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: SQLite: error: Failed to clear contents of intarray. SQLite error code: %d", v14];
                v23 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v21, 134180, v22, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v20), @"NSSQLiteErrorDomain"}]);
                objc_exception_throw(v23);
              }

              if (+[NSSQLCore debugDefault]>= 1)
              {
                v15 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray values.\n", buf, 2u);
                    }
                  }

                  else
                  {
                    v17 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Bound intarray values.\n", buf, 2u);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = 4;
                }

                _NSCoreDataLog_console(v18, "Bound intarray values.");
                objc_autoreleasePoolPop(v15);
              }
            }

            v8 = (v8 + 1);
          }

          while (v6 != v8);
          result = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
          v6 = result;
        }

        while (result);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)prepareSQLStatement:(uint64_t)a1
{
  v86[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_83;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    if ([v5 description])
    {
      v24 = [*(a1 + 48) description];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
    }

    v25 = v24;
    v26 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v27 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v29 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        if (!v29)
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v84[0] = v25;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v84[0] = v25;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: SQL statement is still active / leaked.  sql:'%@'\n", buf, 0xCu);
    }

LABEL_43:
    _NSCoreDataLog_console(1, "SQL statement is still active / leaked.  sql:'%@'", v25);
    objc_autoreleasePoolPop(v26);
    v30 = *MEMORY[0x1E695D930];
    v85 = @"Statement";
    v86[0] = v25;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v30 reason:@"statement is still active" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v86, &v85, 1)}]);
  }

  *(a1 + 48) = a2;
  v6 = [a2 sqlString];
  v82 = 0;
  [(NSSQLiteConnection *)a1 _ensureDatabaseOpen];
  [(NSSQLiteConnection *)a1 _ensureNoFetchInProgress];
  v7 = 0;
  if ((*(a1 + 313) & 0x10) != 0)
  {
    v7 = +[NSSQLCore debugDefault]> 3;
  }

  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  *(a1 + 88) = 0;
  if (v8)
  {
    goto LABEL_83;
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    v10 = *(a1 + 42);
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(6);
    IsLogEnabled = _NSCoreDataIsLogEnabled(6);
    if (_pflogging_enable_oslog > 0)
    {
      v13 = IsLogEnabled;
    }

    else
    {
      v13 = 0;
    }

    if (v10 == 1)
    {
      if (v13)
      {
        if (_pflogging_catastrophic_mode)
        {
          v14 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }

        else
        {
          v16 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }
      }

      v17 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
    }

    else
    {
      if (v13)
      {
        if (_pflogging_catastrophic_mode)
        {
          v15 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v18 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }
      }

      v17 = "%@";
    }

    v19 = _pflogging_catastrophic_mode;
    v20 = [a2 sqlString];
    v21 = 6;
    if (v19)
    {
      v21 = 1;
    }

    _NSCoreDataLog_console(v21, v17, v20);
    objc_autoreleasePoolPop(v11);
  }

  if (a2)
  {
    v22 = a2[8];
    *v9 = v22;
    if (v22)
    {
      v23 = *(a1 + 312) & 0xFFFFFFFE;
      goto LABEL_82;
    }
  }

  else
  {
    *v9 = 0;
  }

  v80 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0.0;
LABEL_46:
  for (i = 3 * v32 - 29999; ; i += 3)
  {
    v35 = sqlite3_prepare_v3(*(a1 + 72), [v6 UTF8String], -1, 1u, (a1 + 80), 0);
    v36 = v35;
    if (v35 > 5u)
    {
      if (v35 <= 0x1Au)
      {
        if (v35 == 14)
        {
          if (v31 > 2)
          {
            goto LABEL_85;
          }

          if (*(a1 + 232) > 0.0 && v33 == 0.0)
          {
            v33 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
          }

          ++v31;
LABEL_69:
          if (v32 <= 0xA)
          {
            v37 = 3 * v32 + 1;
          }

          else
          {
            v37 = v32 + 1101;
          }

LABEL_72:
          usleep(v37);
          goto LABEL_73;
        }

        if (((1 << v35) & 0x220480) != 0)
        {
          goto LABEL_85;
        }

        if (((1 << v35) & 0x4000800) != 0)
        {
          goto LABEL_91;
        }
      }

      if (v35 != 6)
      {
        goto LABEL_95;
      }

      if (*(a1 + 232) > 0.0 && v33 == 0.0)
      {
        v33 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
      }

      goto LABEL_69;
    }

    if (v35 != 5)
    {
      break;
    }

    if (*(a1 + 232) > 0.0 && v33 == 0.0)
    {
      v33 = CFAbsoluteTimeGetCurrent() + *(a1 + 232);
    }

    if (v32 >= 0x2711)
    {
      if (v32 - 10000 >= 0xB)
      {
        v37 = v32 - 8899;
      }

      else
      {
        v37 = i;
      }

      goto LABEL_72;
    }

LABEL_73:
    if (v33 != 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v33)
      {
        if (v80 > 7)
        {
          v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The database operation timed out after %.2f seconds.", Current - v33 + *(a1 + 232)];
          if (+[NSSQLCore debugDefault]< 1)
          {
            goto LABEL_137;
          }

          v68 = *(a1 + 42);
          v69 = objc_autoreleasePoolPush();
          IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
          if (v68 == 1)
          {
            if (IsOSLogEnabled)
            {
              v71 = _pflogging_catastrophic_mode;
              v72 = _PFLogGetLogStream(1);
              v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);
              if (v71)
              {
                if (v73)
                {
                  goto LABEL_131;
                }
              }

              else if (v73)
              {
LABEL_131:
                *buf = 67109378;
                LODWORD(v84[0]) = v36;
                WORD2(v84[0]) = 2112;
                *(v84 + 6) = v67;
                _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
              }
            }

            _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v36, v67);
LABEL_136:
            objc_autoreleasePoolPop(v69);
LABEL_137:
            v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during SQL execution : %@", v67];
            *(a1 + 312) &= ~2u;
            [(NSSQLiteConnection *)a1 releaseSQLStatement];
            v78 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134090, v77, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v36), @"NSSQLiteErrorDomain"}]);
            objc_exception_throw(v78);
          }

          if (IsOSLogEnabled)
          {
            v74 = _pflogging_catastrophic_mode;
            v75 = _PFLogGetLogStream(1);
            v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
            if (v74)
            {
              if (v76)
              {
                goto LABEL_134;
              }
            }

            else if (v76)
            {
LABEL_134:
              *buf = 67109378;
              LODWORD(v84[0]) = v36;
              WORD2(v84[0]) = 2112;
              *(v84 + 6) = v67;
              _os_log_error_impl(&dword_18565F000, v75, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
            }
          }

          _NSCoreDataLog_console(1, "(%d) %@", v36, v67);
          goto LABEL_136;
        }

        ++v32;
        v33 = Current + *(a1 + 240);
        ++v80;
        goto LABEL_46;
      }
    }

    ++v32;
  }

  if (v35)
  {
    if (v35 != 1)
    {
LABEL_95:
      v47 = 0;
      v81 = 0;
LABEL_96:
      v48 = sqlite3_errmsg(*(a1 + 72));
      v46 = 0;
      v49 = 1;
LABEL_97:
      v50 = *(a1 + 42);
      v51 = objc_autoreleasePoolPush();
      v52 = _NSCoreDataIsOSLogEnabled(1);
      if (v50 == 1)
      {
        if (v52)
        {
          v53 = _pflogging_catastrophic_mode;
          v54 = _PFLogGetLogStream(1);
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
          if (v53)
          {
            if (v55)
            {
LABEL_107:
              *buf = 67109378;
              LODWORD(v84[0]) = v36;
              WORD2(v84[0]) = 2080;
              *(v84 + 6) = v48;
              _os_log_error_impl(&dword_18565F000, v54, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
            }
          }

          else if (v55)
          {
            goto LABEL_107;
          }
        }

        _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
        goto LABEL_112;
      }

      if (v52)
      {
        v56 = _pflogging_catastrophic_mode;
        v57 = _PFLogGetLogStream(1);
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
        if (v56)
        {
          if (v58)
          {
LABEL_110:
            *buf = 67109378;
            LODWORD(v84[0]) = v36;
            WORD2(v84[0]) = 2080;
            *(v84 + 6) = v48;
            _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
          }
        }

        else if (v58)
        {
          goto LABEL_110;
        }
      }

      _NSCoreDataLog_console(1, "(%d) %s");
LABEL_112:
      objc_autoreleasePoolPop(v51);
      if (v49)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error during prepareSQL for SQL string '%@' : %s", objc_msgSend(*(a1 + 48), "sqlString"), v48];
        v47 = 256;
      }

      *(a1 + 312) &= 0xFFFFEFFD;
      [(NSSQLiteConnection *)a1 releaseSQLStatement];
      v59 = *MEMORY[0x1E695D930];
      v60 = MEMORY[0x1E695DF20];
      v61 = *(a1 + 32);
      v62 = *MEMORY[0x1E696A368];
      v63 = [MEMORY[0x1E696AD98] numberWithInt:v36];
      if (v82)
      {
        v64 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      }

      else
      {
        v64 = 0;
      }

      v65 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v59, v47, v46, [v60 dictionaryWithObjectsAndKeys:{v61, v62, v63, @"NSSQLiteErrorDomain", v64, *MEMORY[0x1E696A798], 0}]);
      v66 = v65;
      if (v81)
      {
        [(_NSCoreDataException *)v65 _setDomain:v81];
      }

      objc_exception_throw(v66);
    }

LABEL_85:
    v41 = v35;
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(a1 + 72))];
    if (v41 == 10)
    {
      sqlite3_file_control(*(a1 + 72), 0, 4, &v82);
      v43 = MEMORY[0x1E696AEC0];
      v44 = *(a1 + 32);
      if (v82)
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@' errno:%d", v44, v36, v42, v82];
        goto LABEL_90;
      }
    }

    else
    {
      v43 = MEMORY[0x1E696AEC0];
      v44 = *(a1 + 32);
    }

    v45 = [v43 stringWithFormat:@"I/O error for database at %@.  SQLite error code:%d, '%@'", v44, v36, v42, v79];
LABEL_90:
    v46 = v45;
    if (v45)
    {
      [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
      v81 = 0;
      v47 = 256;
    }

    else
    {
LABEL_91:
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Fatal error.  The database at %@ is corrupted.  SQLite error code:%d, '%s'", *(a1 + 32), v36, sqlite3_errmsg(*(a1 + 72))];
      v47 = v36;
      v81 = @"NSSQLiteErrorDomain";
      [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
      if (!v46)
      {
        goto LABEL_96;
      }
    }

    v48 = [v46 UTF8String];
    v49 = 0;
    goto LABEL_97;
  }

  if (v7)
  {
    v39 = *v9;
    sqlite3_stmt_explain();
  }

  v23 = *(a1 + 312) | 1;
LABEL_82:
  *(a1 + 312) = v23;
LABEL_83:
  v40 = *MEMORY[0x1E69E9840];
}

- (void)cacheCurrentDBStatementOn:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = *(a1 + 80);
    if (v5)
    {
      [(NSSQLiteStatement *)a2 setCachedSQLiteStatement:v5 forConnection:a1];

      [(NSSQLiteConnection *)a1 addVMCachedStatement:a2];
    }
  }
}

- (uint64_t)insertRow:(uint64_t)result
{
  v94 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v5 = atomic_load((a2 + 40));
      v6 = [*(v5 + 16) _storeInfo1];
    }

    v7 = [(NSSQLiteConnection *)v3 statementCacheForEntity:v6];
    v71 = v3;
    v69 = v7;
    if (v7 && (insertStatementCache = v7->_insertStatementCache) != 0 && (cachedSQLiteStatement = insertStatementCache->_cachedSQLiteStatement) != 0)
    {
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v9 = *(v3 + 42);
        v10 = objc_autoreleasePoolPush();
        _pflogInitialize(6);
        IsLogEnabled = _NSCoreDataIsLogEnabled(6);
        if (_pflogging_enable_oslog > 0)
        {
          v12 = IsLogEnabled;
        }

        else
        {
          v12 = 0;
        }

        if (v9 == 1)
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v93 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }

            else
            {
              v17 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v93 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }
          }

          v18 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }

        else
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              v16 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v93 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v19 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v93 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
              }
            }
          }

          v18 = "%@";
        }

        v20 = _pflogging_catastrophic_mode == 0;
        v21 = [(NSSQLiteStatement *)insertStatementCache sqlString];
        v22 = 6;
        if (!v20)
        {
          v22 = 1;
        }

        _NSCoreDataLog_console(v22, v18, v21);
        objc_autoreleasePoolPop(v10);
        v3 = v71;
      }

      *(v3 + 48) = insertStatementCache;
      v23 = *(v3 + 8);
      if (v23)
      {
        dispatch_assert_queue_V2(v23);
      }

      context = objc_autoreleasePoolPush();
      if (!a2 || (*(a2 + 16) & 1) != 0)
      {
        v25 = 0;
      }

      else
      {
        v24 = atomic_load((a2 + 40));
        v25 = [*(v24 + 16) _storeInfo1];
      }

      v26 = [v25 foreignKeyColumns];
      v27 = [v25 foreignEntityKeyColumns];
      v28 = [v25 foreignOrderKeyColumns];
      obj = [v25 attributeColumns];
      v29 = [*(v71 + 48) bindVariables];
      ValueAtIndex = CFArrayGetValueAtIndex(v29, 0);
      if (a2)
      {
        v31 = atomic_load((a2 + 40));
        v32 = [*(v31 + 16) _referenceData64];
      }

      else
      {
        v32 = 0;
      }

      [ValueAtIndex setInt64:v32];
      v33 = CFArrayGetValueAtIndex(v29, 1);
      if (a2 && (v34 = atomic_load((a2 + 40)), (v35 = [*(v34 + 16) _storeInfo1]) != 0))
      {
        v36 = *(v35 + 184);
      }

      else
      {
        v36 = 0;
      }

      [v33 setUnsignedInt:v36];
      v37 = CFArrayGetValueAtIndex(v29, 2);
      if (a2)
      {
        v38 = atomic_load((a2 + 40));
        v39 = *(v38 + 12);
      }

      else
      {
        v39 = 0;
      }

      [v37 setInt64:v39];
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v40 = [v26 countByEnumeratingWithState:&v85 objects:buf count:16];
      if (v40)
      {
        v41 = *v86;
        v42 = 3;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v86 != v41)
            {
              objc_enumerationMutation(v26);
            }

            v44 = *(*(&v85 + 1) + 8 * i);
            if (([objc_msgSend(v44 "toOneRelationship")] & 1) == 0)
            {
              v45 = -[NSSQLRow foreignKeyForSlot:](a2, [v44 slot]);
              [CFArrayGetValueAtIndex(v29 v42++)];
            }
          }

          v40 = [v26 countByEnumeratingWithState:&v85 objects:buf count:16];
        }

        while (v40);
      }

      else
      {
        v42 = 3;
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v46 = [v27 countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (v46)
      {
        v47 = *v82;
        do
        {
          v48 = 0;
          do
          {
            if (*v82 != v47)
            {
              objc_enumerationMutation(v27);
            }

            v49 = [*(*(&v81 + 1) + 8 * v48) slot];
            if (a2)
            {
              v50 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + ((*(a2 + 16) >> 13) & 0xFFFC) + 2 * v49);
            }

            else
            {
              v50 = 0;
            }

            [CFArrayGetValueAtIndex(v29 v42++)];
            ++v48;
          }

          while (v46 != v48);
          v51 = [v27 countByEnumeratingWithState:&v81 objects:v91 count:16];
          v46 = v51;
        }

        while (v51);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v52 = [v28 countByEnumeratingWithState:&v77 objects:v90 count:16];
      if (v52)
      {
        v53 = *v78;
        do
        {
          v54 = 0;
          do
          {
            if (*v78 != v53)
            {
              objc_enumerationMutation(v28);
            }

            v55 = [*(*(&v77 + 1) + 8 * v54) slot];
            if (a2)
            {
              v56 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + 4 * v55);
            }

            else
            {
              v56 = 0;
            }

            [CFArrayGetValueAtIndex(v29 v42++)];
            ++v54;
          }

          while (v52 != v54);
          v57 = [v28 countByEnumeratingWithState:&v77 objects:v90 count:16];
          v52 = v57;
        }

        while (v57);
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v58 = [obj countByEnumeratingWithState:&v73 objects:v89 count:16];
      if (v58)
      {
        v59 = *v74;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v74 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v61 = *(*(&v73 + 1) + 8 * j);
            if (([v61 isConstrained] & 1) == 0)
            {
              v62 = [v61 attributeDescription];
              if (v62 && [v62 superCompositeAttribute])
              {
                v63 = -[NSPropertyDescription _elementPath]([v61 propertyDescription]);
                v64 = [-[NSSQLRow attributeValueForSlot:](a2 objc_msgSend(v61];
              }

              else
              {
                v64 = -[NSSQLRow attributeValueForSlot:](a2, [v61 slot]);
              }

              [CFArrayGetValueAtIndex(v29 v42++)];
            }
          }

          v58 = [obj countByEnumeratingWithState:&v73 objects:v89 count:16];
        }

        while (v58);
      }

      objc_autoreleasePoolPop(context);
      *(v71 + 80) = cachedSQLiteStatement;
      v65 = *(v71 + 48);
      v3 = v71;
    }

    else
    {
      v14 = v7;
      v15 = -[NSSQLiteAdapter newInsertStatementWithRow:]([v3 adapter], a2);
      [(NSSQLiteConnection *)v3 prepareSQLStatement:v15];
      [(NSSQLiteStatement *)*(v3 + 48) setCachedSQLiteStatement:v3 forConnection:?];
      [(NSSQLiteStatementCache *)v14 cacheInsertStatement:?];

      [(NSSQLiteConnection *)v3 addVMCachedStatement:?];
    }

    [v3 execute];
    if (!*(v3 + 80))
    {
      [(NSSQLiteStatementCache *)v69 cacheInsertStatement:?];
      v3 = v71;
    }

    [(NSSQLiteConnection *)v3 _clearBindVariablesForInsertedRow];
    [(NSSQLiteConnection *)v71 resetSQLStatement];
    v66 = v71;
    result = *(v71 + 72);
    if (result)
    {
      result = sqlite3_changes(result);
      v66 = v71;
    }

    *(v66 + 88) = result;
  }

  v67 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSQLiteStatementCache)statementCacheForEntity:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (!a2)
  {
    return 0;
  }

  v5 = [*(a1 + 200) objectForKey:a2];
  if (!v5)
  {
    v5 = [[NSSQLiteStatementCache alloc] initWithEntity:a2];
    CFDictionarySetValue(*(a1 + 200), a2, v5);
  }

  return v5;
}

- (uint64_t)addVMCachedStatement:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [[_PFWeakReference alloc] initWithObject:a2];
    if (v4)
    {
      CFDictionarySetValue(*(v3 + 152), a2, v4);
    }

    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

- (void)cacheUpdateStatement:(void *)key forEntity:(const void *)a4 andDeltasMask:
{
  v8 = *(a1 + 8);
  if (v8)
  {
    dispatch_assert_queue_V2(v8);
  }

  Value = CFDictionaryGetValue(*(a1 + 216), key);
  if (!Value)
  {
    if (!a2)
    {
      return;
    }

    v11.version = *MEMORY[0x1E695E9D8];
    *&v11.retain = *(MEMORY[0x1E695E9D8] + 8);
    v11.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    v11.equal = PFVectorEqual;
    v11.hash = PFVectorHash;
    v10 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v11, MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(*(a1 + 216), key, v10);

    goto LABEL_10;
  }

  v10 = Value;
  if (a2)
  {
LABEL_10:
    CFDictionarySetValue(v10, a4, a2);
    return;
  }

  CFDictionaryRemoveValue(Value, a4);
}

- (void)cacheUpdateConstrainedValuesStatement:(void *)key forEntity:
{
  v6 = *(a1 + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  v7 = *(a1 + 224);
  if (value)
  {

    CFDictionarySetValue(v7, key, value);
  }

  else
  {

    CFDictionaryRemoveValue(v7, key);
  }
}

- (uint64_t)updateRow:(uint64_t)a3 forRequestContext:
{
  v186 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_168;
  }

  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    key = 0;
  }

  else
  {
    v7 = atomic_load((a2 + 40));
    key = [*(v7 + 16) _storeInfo1];
  }

  v8 = [a2 objectID];
  v9 = [(NSSQLSaveChangesRequestContext *)a3 originalRowForObjectID:v8];
  if (a3)
  {
    v10 = *(a3 + 32);
  }

  else
  {
    v10 = 0;
  }

  v148 = v8;
  v11 = [v10 objectRegisteredForID:v8];
  v12 = v11;
  v13 = 0;
  if (v11 && v9)
  {
    if ([v11 _versionReference])
    {
      v14 = [v12 _versionReference];
      v15 = atomic_load(v9 + 5);
      v13 = *(v15 + 12) != v14;
    }

    else
    {
      v13 = 0;
    }
  }

  v149 = a3;
  v150 = v9;
  v156 = a2;
  if (!v9 || v13)
  {
    if ([(NSSQLStoreRequestContext *)a3 debugLogLevel]<= 1)
    {
      if ([(NSSQLStoreRequestContext *)a3 debugLogLevel]< 1)
      {
        goto LABEL_215;
      }

      v129 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v183 = v148;
            v184 = 2048;
            *v185 = v150;
            *&v185[8] = 1024;
            *&v185[10] = v13;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@. During updateRow.  Original row = %p context version match = %d\n", buf, 0x1Cu);
          }
        }

        else
        {
          v145 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v183 = v148;
            v184 = 2048;
            *v185 = v150;
            *&v185[8] = 1024;
            *&v185[10] = v13;
            _os_log_impl(&dword_18565F000, v145, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@. During updateRow.  Original row = %p context version match = %d\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v137 = 1;
      }

      else
      {
        v137 = 4;
      }

      _NSCoreDataLog_console(v137, "Optimistic locking failure for %@. During updateRow.  Original row = %p context version match = %d", v148, v150, v13);
    }

    else
    {
      v129 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v130 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            v183 = v148;
            v184 = 2112;
            *v185 = v9;
            *&v185[8] = 2112;
            *&v185[10] = v156;
            *&v185[18] = 1024;
            *&v185[20] = v13;
            _os_log_error_impl(&dword_18565F000, v130, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
          }
        }

        else
        {
          v144 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            v183 = v148;
            v184 = 2112;
            *v185 = v9;
            *&v185[8] = 2112;
            *&v185[10] = v156;
            *&v185[18] = 1024;
            *&v185[20] = v13;
            _os_log_impl(&dword_18565F000, v144, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v131 = 1;
      }

      else
      {
        v131 = 4;
      }

      _NSCoreDataLog_console(v131, "Optimistic locking failure for %@.  During updateRow.  Original row = %@ New Row = %@ context version match = %d", v148, v9, v156, v13);
    }

    objc_autoreleasePoolPop(v129);
LABEL_215:
    v138 = &unk_1EF435DD0;
    if (v13)
    {
      v139 = [v12 _versionReference];
      v140 = v150;
      if (v150)
      {
        v141 = atomic_load((v150 + 40));
        v140 = *(v141 + 12);
      }

      if (v140 >= v139)
      {
        v138 = &unk_1EF435DE8;
      }
    }

    v176 = v148;
    v177[0] = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
    v142 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v176 count:1];
    v177[1] = @"_NSCoreDataOptimisticLockingFailureMismatchWithObject";
    v178[0] = v142;
    v178[1] = v138;
    v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:v177 count:2];
    objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v143]);
  }

  if (a2)
  {
    v16 = [(NSSQLRow *)a2 newColumnMaskFrom:v9 columnInclusionOptions:0x1EuLL];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v5 + 8);
  if (v17)
  {
    dispatch_assert_queue_V2(v17);
  }

  Value = CFDictionaryGetValue(*(v5 + 216), key);
  v152 = v5;
  if (Value && (v19 = CFDictionaryGetValue(Value, v16)) != 0 && (v20 = v19, v19[8]))
  {
    v147 = v19[8];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v21 = *(v5 + 42);
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      if (_pflogging_enable_oslog > 0)
      {
        v24 = IsLogEnabled;
      }

      else
      {
        v24 = 0;
      }

      if (v21 == 1)
      {
        if (v24)
        {
          if (_pflogging_catastrophic_mode)
          {
            v25 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v183 = [v20 sqlString];
              _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v28 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v183 = [v20 sqlString];
              _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v29 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v24)
        {
          if (_pflogging_catastrophic_mode)
          {
            v27 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v183 = [v20 sqlString];
              _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v30 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v183 = [v20 sqlString];
              _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v29 = "%@";
      }

      v31 = _pflogging_catastrophic_mode == 0;
      v32 = [v20 sqlString];
      v33 = 6;
      if (!v31)
      {
        v33 = 1;
      }

      _NSCoreDataLog_console(v33, v29, v32);
      objc_autoreleasePoolPop(v22);
      v5 = v152;
    }

    *(v5 + 48) = v20;
    v34 = *(v5 + 8);
    if (v34)
    {
      dispatch_assert_queue_V2(v34);
    }

    context = objc_autoreleasePoolPush();
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      v36 = 0;
    }

    else
    {
      v35 = atomic_load((a2 + 40));
      v36 = [*(v35 + 16) _storeInfo1];
    }

    v37 = [v36 foreignKeyColumns];
    obj = [v36 foreignEntityKeyColumns];
    v154 = [v36 foreignOrderKeyColumns];
    v153 = [v36 attributeColumns];
    v38 = [*(v152 + 48) bindVariables];
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v39 = 0;
    v40 = 0;
    v41 = [v37 countByEnumeratingWithState:&v169 objects:buf count:16];
    if (v41)
    {
      v42 = *v170;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v170 != v42)
          {
            objc_enumerationMutation(v37);
          }

          v44 = *(*(&v169 + 1) + 8 * i);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            v45 = -[NSSQLRow foreignKeyForSlot:](v156, [v44 slot]);
            [CFArrayGetValueAtIndex(v38 v40++)];
          }

          ++v39;
        }

        v41 = [v37 countByEnumeratingWithState:&v169 objects:buf count:16];
      }

      while (v41);
    }

    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v46 = [obj countByEnumeratingWithState:&v165 objects:v181 count:16];
    if (v46)
    {
      v47 = *v166;
      do
      {
        v48 = 0;
        do
        {
          if (*v166 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v165 + 1) + 8 * v48);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            v50 = [v49 slot];
            if (v156)
            {
              v51 = *(v156 + _NSSQLRowInstanceSize + ((4 * *(v156 + 16)) & 0x1FFF8) + ((*(v156 + 16) >> 13) & 0xFFFC) + 2 * v50);
            }

            else
            {
              v51 = 0;
            }

            [CFArrayGetValueAtIndex(v38 v40++)];
          }

          ++v48;
          ++v39;
        }

        while (v46 != v48);
        v52 = [obj countByEnumeratingWithState:&v165 objects:v181 count:16];
        v46 = v52;
      }

      while (v52);
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v53 = [v154 countByEnumeratingWithState:&v161 objects:v180 count:16];
    if (v53)
    {
      v54 = *v162;
      do
      {
        v55 = 0;
        do
        {
          if (*v162 != v54)
          {
            objc_enumerationMutation(v154);
          }

          v56 = *(*(&v161 + 1) + 8 * v55);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            v57 = [v56 slot];
            if (v156)
            {
              v58 = *(v156 + _NSSQLRowInstanceSize + ((4 * *(v156 + 16)) & 0x1FFF8) + 4 * v57);
            }

            else
            {
              v58 = 0;
            }

            [CFArrayGetValueAtIndex(v38 v40++)];
          }

          ++v55;
          ++v39;
        }

        while (v53 != v55);
        v59 = [v154 countByEnumeratingWithState:&v161 objects:v180 count:16];
        v53 = v59;
      }

      while (v59);
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v60 = [v153 countByEnumeratingWithState:&v157 objects:v179 count:16];
    if (v60)
    {
      v61 = *v158;
      do
      {
        v62 = 0;
        do
        {
          if (*v158 != v61)
          {
            objc_enumerationMutation(v153);
          }

          v63 = *(*(&v157 + 1) + 8 * v62);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            if ([v63 isConstrained])
            {
              v64 = 0;
            }

            else
            {
              v65 = [v63 attributeDescription];
              if (v65)
              {
                v66 = [v65 superCompositeAttribute] != 0;
              }

              else
              {
                v66 = 0;
              }

              v64 = -[NSSQLRow attributeValueForSlot:](v156, [v63 slot]);
              if (v66)
              {
                v64 = [v64 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v63, "propertyDescription"))}];
              }
            }

            [CFArrayGetValueAtIndex(v38 v40++)];
          }

          ++v62;
          ++v39;
        }

        while (v60 != v62);
        v67 = [v153 countByEnumeratingWithState:&v157 objects:v179 count:16];
        v60 = v67;
      }

      while (v67);
    }

    if (v150)
    {
      v68 = atomic_load((v150 + 40));
      v69 = *(v68 + 12) + 1;
    }

    else
    {
      v69 = 1;
    }

    [v156 setOptLock:v69];
    ValueAtIndex = CFArrayGetValueAtIndex(v38, v40);
    if (v156)
    {
      v71 = v156;
      v72 = atomic_load((v156 + 40));
      v73 = *(v72 + 12);
    }

    else
    {
      v73 = 0;
      v71 = 0;
    }

    v74 = v71 == 0;
    [ValueAtIndex setInt64:v73];
    v75 = CFArrayGetValueAtIndex(v38, v40 + 1);
    if (v74)
    {
      v77 = 0;
    }

    else
    {
      v76 = atomic_load((v156 + 40));
      v77 = [*(v76 + 16) _referenceData64];
    }

    [v75 setInt64:v77];
    v78 = CFArrayGetValueAtIndex(v38, v40 + 2);
    if (v150)
    {
      v79 = atomic_load((v150 + 40));
      v80 = *(v79 + 12);
    }

    else
    {
      v80 = 0;
    }

    [v78 setInt64:v80];
    objc_autoreleasePoolPop(context);
    *(v152 + 80) = v147;
    v81 = *(v152 + 48);
    v5 = v152;
  }

  else
  {
    v26 = -[NSSQLiteAdapter newUpdateStatementWithRow:originalRow:withMask:]([v5 adapter], a2, v9, v16);
    [(NSSQLiteConnection *)v5 prepareSQLStatement:v26];
    [(NSSQLiteStatement *)*(v5 + 48) setCachedSQLiteStatement:v5 forConnection:?];
    [(NSSQLiteConnection *)v5 cacheUpdateStatement:key forEntity:v16 andDeltasMask:?];

    [(NSSQLiteConnection *)v5 addVMCachedStatement:?];
  }

  [v5 execute];
  if (!*(v5 + 80))
  {
    [(NSSQLiteConnection *)v5 cacheUpdateStatement:key forEntity:v16 andDeltasMask:?];
    v5 = v152;
  }

  v82 = *(v5 + 48);
  v83 = *(v5 + 8);
  if (v83)
  {
    dispatch_assert_queue_V2(v83);
  }

  v84 = [v82 entity];
  v85 = [v84 foreignKeyColumns];
  v86 = [v84 foreignEntityKeyColumns];
  v87 = [v84 foreignOrderKeyColumns];
  v88 = [v84 attributeColumns];
  v89 = [*(v152 + 48) bindVariables];
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v90 = 0;
  v91 = 0;
  v92 = [v85 countByEnumeratingWithState:&v169 objects:buf count:16];
  if (v92)
  {
    v93 = *v170;
    while (1)
    {
      if (*v170 != v93)
      {
        objc_enumerationMutation(v85);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90++))
      {
        ++v91;
      }

      if (!--v92)
      {
        v92 = [v85 countByEnumeratingWithState:&v169 objects:buf count:16];
        if (!v92)
        {
          break;
        }
      }
    }
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v95 = [v86 countByEnumeratingWithState:&v165 objects:v181 count:16];
  if (v95)
  {
    v96 = *v166;
    while (1)
    {
      if (*v166 != v96)
      {
        objc_enumerationMutation(v86);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90++))
      {
        ++v91;
      }

      if (!--v95)
      {
        v95 = [v86 countByEnumeratingWithState:&v165 objects:v181 count:16];
        if (!v95)
        {
          break;
        }
      }
    }
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v98 = [v87 countByEnumeratingWithState:&v161 objects:v180 count:16];
  if (v98)
  {
    v99 = *v162;
    while (1)
    {
      if (*v162 != v99)
      {
        objc_enumerationMutation(v87);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90++))
      {
        ++v91;
      }

      if (!--v98)
      {
        v98 = [v87 countByEnumeratingWithState:&v161 objects:v180 count:16];
        if (!v98)
        {
          break;
        }
      }
    }
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v101 = [v88 countByEnumeratingWithState:&v157 objects:v179 count:16];
  if (v101)
  {
    v102 = *v158;
    while (1)
    {
      if (*v158 != v102)
      {
        objc_enumerationMutation(v88);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90))
      {
        [CFArrayGetValueAtIndex(v89 v91++)];
      }

      ++v90;
      if (!--v101)
      {
        v101 = [v88 countByEnumeratingWithState:&v157 objects:v179 count:16];
        if (!v101)
        {
          break;
        }
      }
    }
  }

  [(NSSQLiteConnection *)v152 resetSQLStatement];
  v103 = v152;
  v104 = *(v152 + 16);
  if (v104 && (*(v104 + 201) & 4) != 0)
  {
    if (v156)
    {
      v105 = [(NSSQLRow *)v156 newColumnMaskFrom:v150 columnInclusionOptions:0x1EuLL];
    }

    else
    {
      v105 = 0;
    }

    v106 = [_NSPersistentHistoryChange _dataMaskForEntity:v105 andDeltaMask:?];
    if (v106)
    {
      v107 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (key)
      {
        v108 = key[46];
      }

      else
      {
        v108 = 0;
      }

      if (v156)
      {
        v109 = atomic_load((v156 + 40));
        v110 = [*(v109 + 16) _referenceData64];
      }

      else
      {
        v110 = 0;
      }

      v111 = [v107 initWithFormat:@"%u-%lld", v108, v110];
      [(NSSQLSaveChangesRequestContext *)v149 addDataMask:v106 forEntityKey:v111];
    }

    v103 = v152;
    if (v105)
    {
      CFRelease(v105);
      v103 = v152;
    }
  }

  if (v16)
  {
    CFRelease(v16);
    v103 = v152;
  }

  v112 = *(v103 + 72);
  if (!v112)
  {
    *(v103 + 88) = 0;
    v114 = (v103 + 88);
    result = v149;
    goto LABEL_170;
  }

  v113 = sqlite3_changes(v112);
  *(v152 + 88) = v113;
  v114 = (v152 + 88);
  v115 = v113 == 1;
  result = v149;
  if (!v115)
  {
LABEL_170:
    if ([(NSSQLStoreRequestContext *)result debugLogLevel]< 2)
    {
      if ([(NSSQLStoreRequestContext *)v149 debugLogLevel]< 1)
      {
        goto LABEL_189;
      }

      v117 = objc_autoreleasePoolPush();
      v124 = v114;
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v125 = _PFLogGetLogStream(1);
          v124 = v114;
          if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
          {
            v126 = *v114;
            *buf = 138412546;
            v183 = v148;
            v184 = 1024;
            *v185 = v126;
            _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateRow, rows processed = %d.\n", buf, 0x12u);
          }
        }

        else
        {
          v134 = _PFLogGetLogStream(4);
          v124 = v114;
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            v135 = *v114;
            *buf = 138412546;
            v183 = v148;
            v184 = 1024;
            *v185 = v135;
            _os_log_impl(&dword_18565F000, v134, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateRow, rows processed = %d.\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v127 = 1;
      }

      else
      {
        v127 = 4;
      }

      _NSCoreDataLog_console(v127, "Optimistic locking failure for %@.  During updateRow, rows processed = %d.", v148, *v124);
    }

    else
    {
      v117 = objc_autoreleasePoolPush();
      v118 = v150;
      v119 = v156;
      v120 = v114;
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v121 = _PFLogGetLogStream(1);
          v118 = v150;
          v119 = v156;
          v120 = v114;
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            v122 = *v114;
            *buf = 138413058;
            v183 = v148;
            v184 = 1024;
            *v185 = v122;
            *&v185[4] = 2112;
            *&v185[6] = v150;
            *&v185[14] = 2112;
            *&v185[16] = v156;
            _os_log_error_impl(&dword_18565F000, v121, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateRow, rows processed = %d.  Original row = %@ New row = %@\n", buf, 0x26u);
          }
        }

        else
        {
          v132 = _PFLogGetLogStream(4);
          v118 = v150;
          v119 = v156;
          v120 = v114;
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v133 = *v114;
            *buf = 138413058;
            v183 = v148;
            v184 = 1024;
            *v185 = v133;
            *&v185[4] = 2112;
            *&v185[6] = v150;
            *&v185[14] = 2112;
            *&v185[16] = v156;
            _os_log_impl(&dword_18565F000, v132, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateRow, rows processed = %d.  Original row = %@ New row = %@\n", buf, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v123 = 1;
      }

      else
      {
        v123 = 4;
      }

      _NSCoreDataLog_console(v123, "Optimistic locking failure for %@.  During updateRow, rows processed = %d.  Original row = %@ New row = %@", v148, *v120, v118, v119);
    }

    objc_autoreleasePoolPop(v117);
LABEL_189:
    v173 = v148;
    v174 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
    v175[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v173 count:1];
    v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:&v174 count:1];
    objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v128]);
  }

LABEL_168:
  v116 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)updateConstrainedValuesForRow:(uint64_t)result
{
  v93 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      key = 0;
    }

    else
    {
      v5 = atomic_load((a2 + 40));
      key = [*(v5 + 16) _storeInfo1];
    }

    v72 = [a2 objectID];
    v6 = *(v3 + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    Value = CFDictionaryGetValue(*(v3 + 224), key);
    v74 = v3;
    if (Value && (v8 = Value, Value[8]))
    {
      v71 = Value[8];
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v9 = *(v3 + 42);
        v10 = objc_autoreleasePoolPush();
        _pflogInitialize(6);
        IsLogEnabled = _NSCoreDataIsLogEnabled(6);
        if (_pflogging_enable_oslog > 0)
        {
          v12 = IsLogEnabled;
        }

        else
        {
          v12 = 0;
        }

        if (v9 == 1)
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v88 = [v8 sqlString];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }

            else
            {
              v16 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v88 = [v8 sqlString];
                _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }
          }

          v17 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }

        else
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              v15 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v88 = [v8 sqlString];
                _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v18 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v88 = [v8 sqlString];
                _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
              }
            }
          }

          v17 = "%@";
        }

        v19 = _pflogging_catastrophic_mode == 0;
        v20 = [v8 sqlString];
        v21 = 6;
        if (!v19)
        {
          v21 = 1;
        }

        _NSCoreDataLog_console(v21, v17, v20);
        objc_autoreleasePoolPop(v10);
      }

      *(v3 + 48) = v8;
      v22 = *(v3 + 8);
      if (v22)
      {
        dispatch_assert_queue_V2(v22);
      }

      context = objc_autoreleasePoolPush();
      if (!a2 || (*(a2 + 16) & 1) != 0)
      {
        v24 = 0;
      }

      else
      {
        v23 = atomic_load((a2 + 40));
        v24 = [*(v23 + 16) _storeInfo1];
      }

      v25 = [v24 attributeColumns];
      v26 = [v24 foreignKeyColumns];
      v27 = [*(v3 + 48) bindVariables];
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v28 = 0;
      v29 = [v26 countByEnumeratingWithState:&v79 objects:buf count:16];
      if (v29)
      {
        v30 = *v80;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v80 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v32 = *(*(&v79 + 1) + 8 * i);
            if ([objc_msgSend(v32 "toOneRelationship")])
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v27, v28);
              [ValueAtIndex setInt64:{-[NSSQLRow foreignKeyForSlot:](a2, objc_msgSend(v32, "slot"))}];
              ++v28;
            }
          }

          v29 = [v26 countByEnumeratingWithState:&v79 objects:buf count:16];
        }

        while (v29);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v34 = [v25 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (v34)
      {
        v35 = *v76;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v76 != v35)
            {
              objc_enumerationMutation(v25);
            }

            v37 = *(*(&v75 + 1) + 8 * j);
            if ([v37 isConstrained])
            {
              v38 = -[NSSQLRow attributeValueForSlot:](a2, [v37 slot]);
              [CFArrayGetValueAtIndex(v27 v28++)];
            }
          }

          v34 = [v25 countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v34);
      }

      v39 = CFArrayGetValueAtIndex(v27, v28);
      if (a2)
      {
        v40 = atomic_load((a2 + 40));
        v41 = [*(v40 + 16) _referenceData64];
      }

      else
      {
        v41 = 0;
      }

      [v39 setInt64:v41];
      objc_autoreleasePoolPop(context);
      *(v74 + 80) = v71;
      v42 = *(v74 + 48);
      v3 = v74;
    }

    else
    {
      v14 = -[NSSQLiteAdapter newConstrainedValuesUpdateStatementWithRow:]([v3 adapter], a2);
      [(NSSQLiteConnection *)v3 prepareSQLStatement:v14];
      [(NSSQLiteStatement *)*(v3 + 48) setCachedSQLiteStatement:v3 forConnection:?];
      [(NSSQLiteConnection *)v3 cacheUpdateConstrainedValuesStatement:key forEntity:?];

      [(NSSQLiteConnection *)v3 addVMCachedStatement:?];
    }

    [v3 execute];
    if (!*(v3 + 80))
    {
      [(NSSQLiteConnection *)v3 cacheUpdateConstrainedValuesStatement:key forEntity:?];
      v3 = v74;
    }

    v43 = *(v3 + 8);
    if (v43)
    {
      dispatch_assert_queue_V2(v43);
      v3 = v74;
    }

    v44 = [*(v3 + 48) entity];
    v45 = [*(v3 + 48) bindVariables];
    v46 = [v44 foreignKeyColumns];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v47 = 0;
    v48 = [v46 countByEnumeratingWithState:&v79 objects:buf count:16];
    if (v48)
    {
      v49 = *v80;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v80 != v49)
          {
            objc_enumerationMutation(v46);
          }

          if ([objc_msgSend(*(*(&v79 + 1) + 8 * k) "toOneRelationship")])
          {
            [CFArrayGetValueAtIndex(v45 v47++)];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v79 objects:buf count:16];
      }

      while (v48);
    }

    v51 = [v44 attributeColumns];
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v52 = [v51 countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v52)
    {
      v53 = *v76;
      do
      {
        for (m = 0; m != v52; ++m)
        {
          if (*v76 != v53)
          {
            objc_enumerationMutation(v51);
          }

          if ([*(*(&v75 + 1) + 8 * m) isConstrained])
          {
            [CFArrayGetValueAtIndex(v45 v47++)];
          }
        }

        v52 = [v51 countByEnumeratingWithState:&v75 objects:v86 count:16];
      }

      while (v52);
    }

    [CFArrayGetValueAtIndex(v45 v47)];
    [(NSSQLiteConnection *)v74 resetSQLStatement];
    v55 = *(v74 + 72);
    if (v55)
    {
      result = sqlite3_changes(v55);
      *(v74 + 88) = result;
      if (result == 1)
      {
        goto LABEL_86;
      }
    }

    else
    {
      *(v74 + 88) = 0;
    }

    v57 = objc_opt_class();
    if (+[NSSQLCore debugDefault]< 2)
    {
      if (+[NSSQLCore debugDefault]< 1)
      {
        goto LABEL_107;
      }

      v58 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v62 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = *(v74 + 88);
            *buf = 138412546;
            v88 = v72;
            v89 = 1024;
            v90 = v63;
            _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  Row was updated.\n", buf, 0x12u);
          }
        }

        else
        {
          v68 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = *(v74 + 88);
            *buf = 138412546;
            v88 = v72;
            v89 = 1024;
            v90 = v69;
            _os_log_impl(&dword_18565F000, v68, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  Row was updated.\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v64 = 1;
      }

      else
      {
        v64 = 4;
      }

      _NSCoreDataLog_console(v64, "Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  Row was updated.", v72, *(v74 + 88));
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v59 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = *(v74 + 88);
            *buf = 138412802;
            v88 = v72;
            v89 = 1024;
            v90 = v60;
            v91 = 2112;
            v92 = a2;
            _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  New Row = %@\n", buf, 0x1Cu);
          }
        }

        else
        {
          v66 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v67 = *(v74 + 88);
            *buf = 138412802;
            v88 = v72;
            v89 = 1024;
            v90 = v67;
            v91 = 2112;
            v92 = a2;
            _os_log_impl(&dword_18565F000, v66, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  New Row = %@\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v61 = 1;
      }

      else
      {
        v61 = 4;
      }

      _NSCoreDataLog_console(v61, "Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  New Row = %@", v72, *(v74 + 88), a2);
    }

    objc_autoreleasePoolPop(v58);
LABEL_107:
    v84 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
    v83 = [a2 objectID];
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    objc_exception_throw([v57 exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v65]);
  }

LABEL_86:
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)deleteRow:(uint64_t)a3 forRequestContext:
{
  v64 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_52;
  }

  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v7 = atomic_load((a2 + 40));
    v8 = [*(v7 + 16) _storeInfo1];
  }

  v9 = [a2 objectID];
  v10 = -[NSSQLSaveChangesRequestContext originalRowForObjectID:](a3, [a2 objectID]);
  if (a3)
  {
    v11 = *(a3 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectRegisteredForID:{objc_msgSend(a2, "objectID")}];
  if (v12)
  {
    if (v10)
    {
      v13 = v12;
      if ([v12 _versionReference])
      {
        v14 = [v13 _versionReference];
        v15 = atomic_load(v10 + 5);
        if (*(v15 + 12) != v14)
        {
          if ([(NSSQLStoreRequestContext *)a3 debugLogLevel]<= 1)
          {
            if ([(NSSQLStoreRequestContext *)a3 debugLogLevel]< 1)
            {
              goto LABEL_75;
            }

            v44 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(4))
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v57 = v9;
                  v58 = 1024;
                  LODWORD(v59) = 1;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@. During deleteRow. version match = %d\n", buf, 0x12u);
                }
              }

              else
              {
                v52 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v57 = v9;
                  v58 = 1024;
                  LODWORD(v59) = 1;
                  _os_log_impl(&dword_18565F000, v52, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@. During deleteRow. version match = %d\n", buf, 0x12u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v48 = 1;
            }

            else
            {
              v48 = 4;
            }

            _NSCoreDataLog_console(v48, "Optimistic locking failure for %@. During deleteRow. version match = %d", v9, 1);
          }

          else
          {
            v44 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(4))
            {
              if (_pflogging_catastrophic_mode)
              {
                v45 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138413058;
                  v57 = v9;
                  v58 = 2112;
                  v59 = v10;
                  v60 = 2112;
                  v61 = a2;
                  v62 = 1024;
                  v63 = 1;
                  _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During deleteRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
                }
              }

              else
              {
                v51 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v57 = v9;
                  v58 = 2112;
                  v59 = v10;
                  v60 = 2112;
                  v61 = a2;
                  v62 = 1024;
                  v63 = 1;
                  _os_log_impl(&dword_18565F000, v51, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During deleteRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v46 = 1;
            }

            else
            {
              v46 = 4;
            }

            _NSCoreDataLog_console(v46, "Optimistic locking failure for %@.  During deleteRow.  Original row = %@ New Row = %@ context version match = %d", v9, v10, a2, 1);
          }

          objc_autoreleasePoolPop(v44);
LABEL_75:
          v49 = *MEMORY[0x1E695D930];
          v53 = v9;
          v54[0] = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
          v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
          v54[1] = @"_NSCoreDataOptimisticLockingFailureMismatchWithObject";
          v55[0] = v50;
          v55[1] = &unk_1EF435DE8;
          objc_exception_throw(+[_NSCoreDataOptimisticLockingException exceptionWithName:reason:userInfo:](_NSCoreDataOptimisticLockingException, "exceptionWithName:reason:userInfo:", v49, @"optimistic locking failure", [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2]));
        }
      }
    }
  }

  v16 = [(NSSQLiteConnection *)v5 statementCacheForEntity:v8];
  v17 = v16;
  if (v16 && (deletionStatementCache = v16->_deletionStatementCache) != 0 && (cachedSQLiteStatement = deletionStatementCache->_cachedSQLiteStatement) != 0)
  {
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v20 = *(v5 + 42);
      v21 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      if (_pflogging_enable_oslog > 0)
      {
        v23 = IsLogEnabled;
      }

      else
      {
        v23 = 0;
      }

      if (v20 == 1)
      {
        if (v23)
        {
          if (_pflogging_catastrophic_mode)
          {
            v24 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v57 = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v27 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v57 = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v28 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v23)
        {
          if (_pflogging_catastrophic_mode)
          {
            v26 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v57 = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v29 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v57 = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_impl(&dword_18565F000, v29, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v28 = "%@";
      }

      v30 = _pflogging_catastrophic_mode;
      v31 = [(NSSQLiteStatement *)deletionStatementCache sqlString];
      v32 = 6;
      if (v30)
      {
        v32 = 1;
      }

      _NSCoreDataLog_console(v32, v28, v31);
      objc_autoreleasePoolPop(v21);
    }

    *(v5 + 48) = deletionStatementCache;
    v33 = *(v5 + 8);
    if (v33)
    {
      dispatch_assert_queue_V2(v33);
      deletionStatementCache = *(v5 + 48);
    }

    v34 = [(NSSQLiteStatement *)deletionStatementCache bindVariables];
    v35 = [v34 objectAtIndex:0];
    if (a2)
    {
      v36 = atomic_load((a2 + 40));
      v37 = [*(v36 + 16) _referenceData64];
    }

    else
    {
      v37 = 0;
    }

    [v35 setInt64:v37];
    v38 = [v34 objectAtIndex:1];
    if (a2)
    {
      v39 = atomic_load((a2 + 40));
      v40 = *(v39 + 12);
    }

    else
    {
      v40 = 0;
    }

    [v38 setInt64:v40];
    *(v5 + 80) = cachedSQLiteStatement;
    v41 = *(v5 + 48);
  }

  else
  {
    v25 = -[NSSQLiteAdapter newDeleteStatementWithRow:]([v5 adapter], a2);
    [(NSSQLiteConnection *)v5 prepareSQLStatement:v25];
    [(NSSQLiteStatement *)*(v5 + 48) setCachedSQLiteStatement:v5 forConnection:?];
    [(NSSQLiteStatementCache *)v17 cacheDeletionStatement:?];

    [(NSSQLiteConnection *)v5 addVMCachedStatement:?];
  }

  [v5 execute];
  if (!*(v5 + 80))
  {
    [(NSSQLiteStatementCache *)v17 cacheDeletionStatement:?];
  }

  [(NSSQLiteConnection *)v5 resetSQLStatement];
  v42 = *(v5 + 72);
  if (v42)
  {
    LODWORD(v42) = sqlite3_changes(v42);
  }

  *(v5 + 88) = v42;
  result = v42 == 1;
LABEL_52:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)writeCorrelationInsertsFromTracker:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 16))
    {
      v5 = *(a2 + 8);
      v6 = [(NSSQLiteConnection *)a1 statementCacheForEntity:?];
      v7 = v6;
      if (v6 && (correlationInsertCache = v6->_correlationInsertCache) != 0 && (Value = CFDictionaryGetValue(correlationInsertCache, v5)) != 0 && (v10 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
      {
        v12 = 0;
        *(a1 + 80) = cachedSQLiteStatement;
      }

      else
      {
        v10 = -[NSSQLiteAdapter newCorrelationInsertStatementForRelationship:]([a1 adapter], v5);
        [(NSSQLiteConnection *)a1 prepareSQLStatement:v10];
        [(NSSQLiteStatement *)v10 setCachedSQLiteStatement:a1 forConnection:?];
        [(NSSQLiteStatementCache *)v7 cacheCorrelationInsertStatement:v10 forRelationship:v5];

        v12 = 1;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = __Block_byref_object_copy__30;
      v18 = __Block_byref_object_dispose__30;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__NSSQLiteConnection_writeCorrelationInsertsFromTracker___block_invoke;
      v13[3] = &unk_1E6EC3EF8;
      v13[4] = a1;
      v13[5] = &v20;
      v13[6] = &v14;
      [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateInsertsUsingBlock:v13];
      if (v12)
      {
        [(NSSQLiteConnection *)a1 addVMCachedStatement:v10];
      }

      if (*(v21 + 24) == 1)
      {
        objc_exception_throw(v15[5]);
      }

      [(NSSQLiteConnection *)a1 resetSQLStatement];
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v20, 8);
    }
  }
}

void *__57__NSSQLiteConnection_writeCorrelationInsertsFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, sqlite3_int64 a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v17 = a2;
          v18 = 2048;
          v19 = a3;
          v20 = 2048;
          v21 = a4;
          v22 = 2048;
          v23 = a5;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu, %qu\n", buf, 0x2Au);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 134218752;
          v17 = a2;
          v18 = 2048;
          v19 = a3;
          v20 = 2048;
          v21 = a4;
          v22 = 2048;
          v23 = a5;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu, %qu\n", buf, 0x2Au);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 7;
    }

    _NSCoreDataLog_console(v13, "correlation bindings: %qu, %qu, %qu, %qu", a2, a3, a4, a5);
    objc_autoreleasePoolPop(v10);
  }

  result = [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:a4 value4:a5];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)executeCorrelationChangesForValue1:(sqlite3_int64)a3 value2:(sqlite3_int64)a4 value3:(sqlite3_int64)a5 value4:
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = result[1];
  if (v10)
  {
    dispatch_assert_queue_V2(v10);
  }

  v11 = *(v9 + 312);
  if ((v11 & 1) == 0)
  {
    v12 = sqlite3_reset(*(v9 + 80));
    sqlite3_clear_bindings(*(v9 + 80));
    v11 = *(v9 + 312);
    if (v12)
    {
      *(v9 + 312) = v11 & 0xFFFFEFFD;
      [(NSSQLiteConnection *)v9 releaseSQLStatement];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v9 + 72))];
      v20 = *MEMORY[0x1E695D930];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v12), @"NSSQLiteErrorDomain"}];
      v17 = v20;
      v16 = v19;
LABEL_16:
      v18 = [_NSCoreDataException exceptionWithName:v17 code:134180 reason:v16 userInfo:v15];
      objc_exception_throw(v18);
    }
  }

  *(v9 + 312) = v11 & 0xFFFFFFFE;
  v13 = sqlite3_bind_int64(*(v9 + 80), 1, a2);
  if (v13 || (v13 = sqlite3_bind_int64(*(v9 + 80), 2, a3), v13) || a4 && (v13 = sqlite3_bind_int64(*(v9 + 80), 3, a4), v13) || a5 && (v13 = sqlite3_bind_int64(*(v9 + 80), 4, a5), v13))
  {
    v14 = *MEMORY[0x1E695D930];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v13), @"NSSQLiteErrorDomain"}];
    v16 = @"sqlite3_bind* failed";
    v17 = v14;
    goto LABEL_16;
  }

  return _execute(v9);
}

- (void)writeCorrelationDeletesFromTracker:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 24))
    {
      v5 = *(a2 + 8);
      v6 = [(NSSQLiteConnection *)a1 statementCacheForEntity:?];
      v7 = v6;
      if (v6 && (correlationDeleteCache = v6->_correlationDeleteCache) != 0 && (Value = CFDictionaryGetValue(correlationDeleteCache, v5)) != 0 && (v10 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
      {
        v12 = 0;
        *(a1 + 80) = cachedSQLiteStatement;
      }

      else
      {
        v10 = -[NSSQLiteAdapter newCorrelationDeleteStatementForRelationship:]([a1 adapter], v5);
        [(NSSQLiteConnection *)a1 prepareSQLStatement:v10];
        [(NSSQLiteStatement *)v10 setCachedSQLiteStatement:a1 forConnection:?];
        [(NSSQLiteStatementCache *)v7 cacheCorrelationDeleteStatement:v10 forRelationship:v5];

        v12 = 1;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = __Block_byref_object_copy__30;
      v18 = __Block_byref_object_dispose__30;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__NSSQLiteConnection_writeCorrelationDeletesFromTracker___block_invoke;
      v13[3] = &unk_1E6EC3F20;
      v13[4] = a1;
      v13[5] = &v20;
      v13[6] = &v14;
      [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateDeletesUsingBlock:v13];
      if (v12)
      {
        [(NSSQLiteConnection *)a1 addVMCachedStatement:v10];
      }

      if (*(v21 + 24) == 1)
      {
        objc_exception_throw(v15[5]);
      }

      [(NSSQLiteConnection *)a1 resetSQLStatement];
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v20, 8);
    }
  }
}

void *__57__NSSQLiteConnection_writeCorrelationDeletesFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v13 = a2;
          v14 = 2048;
          v15 = a3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings:  %qu, %qu\n", buf, 0x16u);
        }
      }

      else
      {
        v8 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v13 = a2;
          v14 = 2048;
          v15 = a3;
          _os_log_impl(&dword_18565F000, v8, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings:  %qu, %qu\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = 1;
    }

    else
    {
      v9 = 7;
    }

    _NSCoreDataLog_console(v9, "correlation bindings:  %qu, %qu", a2, a3);
    objc_autoreleasePoolPop(v6);
  }

  result = [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:0 value4:0];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)writeCorrelationMasterReordersFromTracker:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 32))
    {
      v5 = *(a2 + 8);
      v6 = v5 ? [*(a2 + 8) propertyDescription] : 0;
      if ([v6 isOrdered])
      {
        v7 = [(NSSQLiteConnection *)a1 statementCacheForEntity:?];
        v8 = v7;
        if (v7 && (correlationMasterReorderCache = v7->_correlationMasterReorderCache) != 0 && (Value = CFDictionaryGetValue(correlationMasterReorderCache, v5)) != 0 && (v11 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
        {
          v13 = 0;
          *(a1 + 80) = cachedSQLiteStatement;
        }

        else
        {
          v11 = -[NSSQLiteAdapter newCorrelationMasterReorderStatementForRelationship:]([a1 adapter], v5);
          [(NSSQLiteConnection *)a1 prepareSQLStatement:v11];
          [(NSSQLiteStatement *)v11 setCachedSQLiteStatement:a1 forConnection:?];
          [(NSSQLiteStatementCache *)v8 cacheCorrelationMasterReorderStatement:v11 forRelationship:v5];

          v13 = 1;
        }

        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        v21 = 0;
        v22 = &v21;
        v23 = 0x3052000000;
        v24 = __Block_byref_object_copy__30;
        v25 = __Block_byref_object_dispose__30;
        v26 = 0;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke;
        v20[3] = &unk_1E6EC3F48;
        v20[4] = a1;
        v20[5] = &v27;
        v20[6] = &v21;
        [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateMasterReordersUsingBlock:v20];
        if ((v28[3] & 1) == 0)
        {
          if (v13)
          {
            [(NSSQLiteConnection *)a1 addVMCachedStatement:v11];
          }

          [(NSSQLiteConnection *)a1 resetSQLStatement];
          if (!v5 || v5[1].length != v5 || ![-[__CFString propertyDescription](v5 "propertyDescription")])
          {
            goto LABEL_31;
          }

          if (v8 && (correlationMasterReorderCachePart2 = v8->_correlationMasterReorderCachePart2) != 0 && (v15 = CFDictionaryGetValue(correlationMasterReorderCachePart2, v5), (v16 = v15) != 0) && (v17 = v15->_cachedSQLiteStatement) != 0)
          {
            v18 = 0;
            *(a1 + 80) = v17;
          }

          else
          {
            v16 = -[NSSQLiteAdapter newCorrelationMasterReorderStatementPart2ForRelationship:]([a1 adapter], v5);
            [(NSSQLiteConnection *)a1 prepareSQLStatement:v16];
            [(NSSQLiteStatement *)v16 setCachedSQLiteStatement:a1 forConnection:?];
            [(NSSQLiteStatementCache *)v8 cacheCorrelationMasterReorderStatement:v16 forRelationship:v5];

            v18 = 1;
          }

          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke_387;
          v19[3] = &unk_1E6EC3F48;
          v19[4] = a1;
          v19[5] = &v27;
          v19[6] = &v21;
          [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateMasterReordersPart2UsingBlock:v19];
          if (*(v28 + 24) != 1)
          {
            if (v18)
            {
              [(NSSQLiteConnection *)a1 addVMCachedStatement:v16];
            }

            [(NSSQLiteConnection *)a1 resetSQLStatement];
LABEL_31:
            _Block_object_dispose(&v21, 8);
            _Block_object_dispose(&v27, 8);
            return;
          }
        }

        objc_exception_throw(v22[5]);
      }
    }
  }
}

void *__64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v15 = a2;
          v16 = 2048;
          v17 = a3;
          v18 = 2048;
          v19 = a4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          v15 = a2;
          v16 = 2048;
          v17 = a3;
          v18 = 2048;
          v19 = a4;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    _NSCoreDataLog_console(v11, "correlation bindings: %qu, %qu, %qu", a2, a3, a4);
    objc_autoreleasePoolPop(v8);
  }

  result = [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:a4 value4:0];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *__64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke_387(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v15 = a2;
          v16 = 2048;
          v17 = a3;
          v18 = 2048;
          v19 = a4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          v15 = a2;
          v16 = 2048;
          v17 = a3;
          v18 = 2048;
          v19 = a4;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    _NSCoreDataLog_console(v11, "correlation bindings: %qu, %qu, %qu", a2, a3, a4);
    objc_autoreleasePoolPop(v8);
  }

  result = [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:a4 value4:0];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)writeCorrelationReordersFromTracker:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 40))
    {
      v5 = *(a2 + 8);
      v6 = v5 ? [*(a2 + 8) propertyDescription] : 0;
      if ([objc_msgSend(v6 "inverseRelationship")])
      {
        v7 = [(NSSQLiteConnection *)a1 statementCacheForEntity:?];
        v8 = v7;
        if (v7 && (correlationReorderCache = v7->_correlationReorderCache) != 0 && (Value = CFDictionaryGetValue(correlationReorderCache, v5)) != 0 && (v11 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
        {
          v13 = 0;
          *(a1 + 80) = cachedSQLiteStatement;
        }

        else
        {
          v11 = -[NSSQLiteAdapter newCorrelationReorderStatementForRelationship:]([a1 adapter], v5);
          [(NSSQLiteConnection *)a1 prepareSQLStatement:v11];
          [(NSSQLiteStatement *)v11 setCachedSQLiteStatement:a1 forConnection:?];
          [(NSSQLiteStatementCache *)v8 cacheCorrelationReorderStatement:v11 forRelationship:v5];

          v13 = 1;
        }

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v15 = 0;
        v16 = &v15;
        v17 = 0x3052000000;
        v18 = __Block_byref_object_copy__30;
        v19 = __Block_byref_object_dispose__30;
        v20 = 0;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __58__NSSQLiteConnection_writeCorrelationReordersFromTracker___block_invoke;
        v14[3] = &unk_1E6EC3F48;
        v14[4] = a1;
        v14[5] = &v21;
        v14[6] = &v15;
        [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateReordersUsingBlock:v14];
        if (v13)
        {
          [(NSSQLiteConnection *)a1 addVMCachedStatement:v11];
        }

        if (*(v22 + 24) == 1)
        {
          objc_exception_throw(v16[5]);
        }

        [(NSSQLiteConnection *)a1 resetSQLStatement];
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v21, 8);
      }
    }
  }
}

void *__58__NSSQLiteConnection_writeCorrelationReordersFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v15 = a4;
          v16 = 2048;
          v17 = a2;
          v18 = 2048;
          v19 = a3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          v15 = a4;
          v16 = 2048;
          v17 = a2;
          v18 = 2048;
          v19 = a3;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    _NSCoreDataLog_console(v11, "correlation bindings: %qu, %qu, %qu", a4, a2, a3);
    objc_autoreleasePoolPop(v8);
  }

  result = [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a4 value2:a2 value3:a3 value4:0];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)writeCorrelationChangesFromTracker:(uint64_t)a1
{
  if (a1)
  {
    [(NSSQLiteConnection *)a1 writeCorrelationInsertsFromTracker:a2];
    [(NSSQLiteConnection *)a1 writeCorrelationDeletesFromTracker:a2];
    [(NSSQLiteConnection *)a1 writeCorrelationMasterReordersFromTracker:a2];

    [(NSSQLiteConnection *)a1 writeCorrelationReordersFromTracker:a2];
  }
}

- (void)bindTempTablesForStatementIfNecessary:(void *)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    result = [a2 bindIntarrays];
    if (result)
    {
      v5 = result;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [result countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v6 = result;
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [(NSSQLiteConnection *)v3 bindTempTableForBindIntarray:?];
            v8 = (v8 + 1);
          }

          while (v6 != v8);
          result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v6 = result;
        }

        while (result);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)bindTempTableForBindIntarray:(uint64_t)a1
{
  v54 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = [a2 index];
    v48 = 0;
    if (v5 >= [*(a1 + 304) count])
    {
      v8 = [a2 tableName];
      v9 = *(a1 + 72);
      [v8 UTF8String];
      v10 = sqlite3_intarray_create();
      if (v10)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: SQLite: error: Failed to create intarray. SQLite error code: %d", v10];
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v10), @"NSSQLiteErrorDomain"}];
        v43 = [_NSCoreDataException exceptionWithName:134180 code:v41 reason:v42 userInfo:?];
        objc_exception_throw(v43);
      }

      if (+[NSSQLCore debugDefault]>= 1)
      {
        v11 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v8;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray %@\n", buf, 0xCu);
            }
          }

          else
          {
            v13 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v8;
              _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Bound intarray %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v14 = 1;
        }

        else
        {
          v14 = 4;
        }

        _NSCoreDataLog_console(v14, "Bound intarray %@", v8);
        objc_autoreleasePoolPop(v11);
      }

      v15 = objc_alloc_init(NSSQLiteIntarrayTable);
      v17 = v15;
      if (v15)
      {
        objc_setProperty_nonatomic(v15, v16, v8, 16);
        v17->_intarrayTable = v48;
      }

      [*(a1 + 304) addObject:v17];
    }

    else
    {
      v6 = [*(a1 + 304) objectAtIndex:v5];
      if (v6)
      {
        v7 = *(v6 + 8);
      }

      else
      {
        v7 = 0;
      }

      v48 = v7;
    }

    v18 = [a2 value];
    v19 = sqlite3_malloc(8 * [v18 count]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v20 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v20)
    {
      v21 = 0;
      v22 = *v45;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v44 + 1) + 8 * i);
          if ([v24 isNSNumber])
          {
            v25 = [v24 longLongValue];
          }

          else
          {
            v25 = [v24 _referenceData64];
          }

          v19[v21] = v25;
          if (+[NSSQLCore debugDefault]>= 3)
          {
            v26 = objc_autoreleasePoolPush();
            _pflogInitialize(7);
            if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v27 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v28 = v19[v21];
                  *buf = 134218240;
                  v50 = v28;
                  v51 = 1024;
                  v52 = v21;
                  _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray value %lu at %d\n", buf, 0x12u);
                }
              }

              else
              {
                v29 = _PFLogGetLogStream(7);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  v30 = v19[v21];
                  *buf = 134218240;
                  v50 = v30;
                  v51 = 1024;
                  v52 = v21;
                  _os_log_impl(&dword_18565F000, v29, OS_LOG_TYPE_INFO, "CoreData: details: Bound intarray value %lu at %d\n", buf, 0x12u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v31 = 1;
            }

            else
            {
              v31 = 7;
            }

            _NSCoreDataLog_console(v31, "Bound intarray value %lu at %d", v19[v21], v21);
            objc_autoreleasePoolPop(v26);
          }

          ++v21;
        }

        v20 = [v18 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v20);
    }

    v32 = sqlite3_intarray_bind();
    if (v32)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CoreData: SQLite: error: Can't bind intarray. SQLite error code: %d", v32];
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v32), @"NSSQLiteErrorDomain"}];
      v40 = [_NSCoreDataException exceptionWithName:134180 code:v38 reason:v39 userInfo:?];
      objc_exception_throw(v40);
    }

    if (+[NSSQLCore debugDefault]>= 1)
    {
      v33 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v34 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray values.\n", buf, 2u);
          }
        }

        else
        {
          v35 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Bound intarray values.\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v36 = 1;
      }

      else
      {
        v36 = 4;
      }

      _NSCoreDataLog_console(v36, "Bound intarray values.");
      objc_autoreleasePoolPop(v33);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (uint64_t)selectRowsWithStatement:(int)a3 cached:
{
  if (result)
  {
    v5 = result;
    *(result + 312) |= 0x1000u;
    [(NSSQLiteConnection *)result bindTempTablesForStatementIfNecessary:a2];
    [(NSSQLiteConnection *)v5 prepareSQLStatement:a2];
    if (a3 && (!a2 || !a2[8]))
    {
      [(NSSQLiteConnection *)v5 cacheCurrentDBStatementOn:a2];
    }

    return [v5 execute];
  }

  return result;
}

- (uint64_t)selectCountWithStatement:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2 && (a2[40] & 1) != 0)
    {
      return 0;
    }

    else
    {
      [(NSSQLiteConnection *)result bindTempTablesForStatementIfNecessary:a2];
      [(NSSQLiteConnection *)v3 prepareSQLStatement:a2];
      [v3 execute];
      return 1;
    }
  }

  return result;
}

- (void)setColumnsToFetch:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[7];
    if (v4 != a2)
    {

      result = a2;
      v3[7] = result;
    }
  }

  return result;
}

- (void)endFetchAndRecycleStatement:(uint64_t)a1
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_assert_queue_V2(v3);
    }

    context = objc_autoreleasePoolPush();
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = *(a1 + 16);
      if (v5)
      {
        if (*(v5 + 202))
        {
          v6 = *(a1 + 8);
          if (v6)
          {
            dispatch_assert_queue_V2(v6);
          }

          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v8 = *(a1 + 368);
          if (v8)
          {
            sqlite3_reset(v8);
          }

          else if (sqlite3_prepare_v3(*(a1 + 72), "SELECT name FROM tables_used(?) WHERE type = 'index'", -1, 0, (a1 + 368), 0))
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v34 = sqlite3_errmsg(*(a1 + 72));
              *buf = 136315138;
              v49 = v34;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to prepare statement to fetched used indexes: %s\n", buf, 0xCu);
            }

            v13 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              v35 = sqlite3_errmsg(*(a1 + 72));
              *buf = 136315138;
              v49 = v35;
              _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Failed to prepare statement to fetched used indexes: %s", buf, 0xCu);
            }

            goto LABEL_37;
          }

          if (sqlite3_bind_pointer(*(a1 + 368), 1, v4, "stmt-pointer", 0))
          {
            sqlite3_clear_bindings(*(a1 + 368));

            v9 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v33 = sqlite3_errmsg(*(a1 + 72));
              *buf = 136315138;
              v49 = v33;
              _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to bind statement pointer: %s\n", buf, 0xCu);
            }

            v10 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
            {
              v11 = sqlite3_errmsg(*(a1 + 72));
              *buf = 136315138;
              v49 = v11;
              _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Failed to bind statement pointer: %s", buf, 0xCu);
            }
          }

          else
          {
            v14 = objc_autoreleasePoolPush();
            while (1)
            {
              v15 = sqlite3_step(*(a1 + 368));
              if (v15 != 100)
              {
                break;
              }

              [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", sqlite3_column_text(*(a1 + 368), 0), context)}];
            }

            if (v15 == 101)
            {
              objc_autoreleasePoolPop(v14);
              if (sqlite3_clear_bindings(*(a1 + 368)))
              {
                v16 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v38 = sqlite3_errmsg(*(a1 + 72));
                  *buf = 136315138;
                  v49 = v38;
                  _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to clear bindings. %s\n", buf, 0xCu);
                }

                v17 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
                {
                  v39 = sqlite3_errmsg(*(a1 + 72));
                  *buf = 136315138;
                  v49 = v39;
                  _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Failed to clear bindings. %s", buf, 0xCu);
                }
              }

              v18 = v7;
              goto LABEL_38;
            }

            sqlite3_clear_bindings(*(a1 + 368));

            v19 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v36 = sqlite3_errmsg(*(a1 + 72));
              *buf = 136315138;
              v49 = v36;
              _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch used indexes. %s\n", buf, 0xCu);
            }

            v20 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              v37 = sqlite3_errmsg(*(a1 + 72));
              *buf = 136315138;
              v49 = v37;
              _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch used indexes. %s", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v14);
          }

LABEL_37:
          v18 = 0;
LABEL_38:
          v21 = sqlite3_stmt_status(*(a1 + 80), 4, 1);
          v22 = *(a1 + 88);
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v23 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (!v23)
          {
            goto LABEL_49;
          }

          v24 = v23;
          v25 = *v44;
          v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v26.i64[1] = v21;
          v42 = v26;
          do
          {
            v27 = 0;
            do
            {
              if (*v44 != v25)
              {
                objc_enumerationMutation(v18);
              }

              v28 = *(*(&v43 + 1) + 8 * v27);
              v29 = objc_autoreleasePoolPush();
              v30 = [*(a1 + 344) objectForKeyedSubscript:v28];
              if (v30)
              {
                v31 = v30;
              }

              else
              {
                v31 = -[NSSQLiteIndexStatistics initWithName:storeID:]([NSSQLiteIndexStatistics alloc], "initWithName:storeID:", v28, [*(a1 + 16) identifier]);
                [*(a1 + 344) setObject:v31 forKeyedSubscript:v28];

                if (!v31)
                {
                  goto LABEL_47;
                }
              }

              *&v31->_executionCount = vaddq_s64(*&v31->_executionCount, v42);
              v31->_rowCount += v22;
LABEL_47:
              objc_autoreleasePoolPop(v29);
              ++v27;
            }

            while (v24 != v27);
            v24 = [v18 countByEnumeratingWithState:&v43 objects:v47 count:16];
          }

          while (v24);
        }
      }
    }

LABEL_49:
    if ((*(a1 + 312) & 2) != 0)
    {
      [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
      *(a1 + 312) &= ~2u;
      *(a1 + 100) = 0;
      *(a1 + 92) = 0;
      *(a1 + 108) = 0;
    }

    if (a2)
    {
      [(NSSQLiteConnection *)a1 resetSQLStatement];
    }

    else
    {
      [(NSSQLiteConnection *)a1 releaseSQLStatement];
    }

    objc_autoreleasePoolPop(context);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)handleCorruptedDB:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSSQLiteConnection *)a1 _forceDisconnectOnError];
  if (+[NSSQLCore debugDefault]< 1)
  {
LABEL_20:
    v12 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 259, a2, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 32), *MEMORY[0x1E696A368], 0, *buf}]);
    objc_exception_throw(v12);
  }

  v4 = *(a1 + 42);
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (v4 == 1)
  {
    if (_pflogging_enable_oslog >= 1)
    {
      v6 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          *buf = 138412290;
          *&buf[4] = a2;
          goto LABEL_13;
        }
      }

      else if (v8)
      {
        *buf = 138412290;
        *&buf[4] = a2;
LABEL_13:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m", a2);
LABEL_19:
    objc_autoreleasePoolPop(v5);
    goto LABEL_20;
  }

  if (_pflogging_enable_oslog >= 1)
  {
    v9 = _pflogging_catastrophic_mode;
    v10 = _PFLogGetLogStream(1);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        *&buf[4] = a2;
        goto LABEL_17;
      }
    }

    else if (v11)
    {
      *buf = 138412290;
      *&buf[4] = a2;
LABEL_17:
      _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, "%@", a2);
  goto LABEL_19;
}

- (uint64_t)fetchResultSet:(uint64_t)a3 usingFetchPlan:
{
  v123 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_145;
  }

  v4 = result;
  v5 = *(result + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  v6 = *(a3 + 16);
  if (!v6)
  {
    v6 = 0x7FFFFFFF;
  }

  v114 = v6;
  v7 = *(a3 + 48);
  if (v7)
  {
    v110 = *(v7 + 42) >> 7;
  }

  else
  {
    v110 = 0;
  }

  v8 = *(a3 + 72);
  v116 = [*(a3 + 40) model];
  if (v114 < 1)
  {
    result = 0;
LABEL_143:
    *(a2 + 4) = result;
    if ((*(v4 + 312) & 2) == 0)
    {
      *(a2 + 48) |= 1u;
    }

LABEL_145:
    v105 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = 0;
  v10 = 0;
  v113 = v8 & 0x18;
  v11 = 0x1E6EC0000uLL;
  v112 = v8;
  while (1)
  {
    if ((*(v4 + 312) & 2) == 0)
    {
LABEL_139:
      if (v9 <= 0x40000000)
      {
        result = v9;
      }

      else
      {
        result = 0;
      }

      goto LABEL_143;
    }

    fetchResultSetPrepareNextRow(a2);
    v12 = *(a2 + 24);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 0;
      if ((v8 & 1) == 0)
      {
LABEL_13:
        v14 = *(a3 + 40);
        if (v14)
        {
          v15 = *(v14 + 184);
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v13 = *(*(a2 + 64) + 8 * v12) + *(a2 + 32);
      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v16 = sqlite3_column_int(*(v4 + 80), 0);
    if (!v16)
    {
      v106 = @"The database appears corrupt.  (invalid entity key)";
      goto LABEL_148;
    }

    v15 = v16;
    if (v16 == *(v4 + 92))
    {
      v14 = *(v4 + 104);
    }

    else
    {
      v14 = (*(a3 + 64))(v116, sel_entityForID_, v16);
      *(v4 + 104) = v14;
      *(v4 + 92) = v15;
    }

LABEL_20:
    *(v13 + 8) = v15;
    v118 = v9;
    v117 = v10;
    if (v113 != 16)
    {
      break;
    }

    *(v13 + 24) = 0;
    if ((v8 & 2) == 0)
    {
      plan_for_entity = _sql_read_only_fetch_plan_for_entity(v14);
      goto LABEL_27;
    }

LABEL_133:
    v101 = *(a2 + 28);
    if (v101 != -1)
    {
      v102 = *(*(a2 + 64) + 8 * v101);
      if (v102)
      {
        v103 = *(a2 + 32);
        v104 = v102 + *(a2 + 40);
        *(v104 + 4) = *(a2 + 24);
        *(v104 + 16) = v103;
      }
    }

    ++*(v4 + 88);
    v9 = v118 + 1;
    _execute(v4);
    v10 = v117 + 1;
    LOBYTE(v8) = v112;
    if (v117 + 1 == v114)
    {
      goto LABEL_139;
    }
  }

  v18 = sqlite3_column_int64(*(v4 + 80), 1);
  *(v13 + 24) = v18;
  if (!v18)
  {
    v106 = @"The database appears corrupt.  (invalid primary key)";
LABEL_148:
    [(NSSQLiteConnection *)v4 handleCorruptedDB:v106];
  }

  if ((v8 & 2) != 0)
  {
    goto LABEL_133;
  }

  plan_for_entity = _sql_fetch_plan_for_entity(v14);
LABEL_27:
  v19 = plan_for_entity;
  v20 = *plan_for_entity;
  if (*(a2 + 80) - *(a2 + 88) + *(a2 + 16) < v20)
  {
    fetchResultSetReallocCurrentRow(a2, v20);
  }

  v21 = v19[1];
  if (!v21)
  {
    goto LABEL_133;
  }

  v115 = v13;
  v22 = 0;
  v23 = v19 + 3;
  while (1)
  {
    if (*(v23 + 8) - 2 > 6)
    {
      v24 = 3;
    }

    else
    {
      v24 = qword_18592E738[(*(v23 + 8) - 2)];
    }

    v25 = ~v24;
    v26 = (v24 + *(a2 + 88)) & ~v24;
    if (*(a2 + 80) - v26 + *(a2 + 16) > 15)
    {
      *(a2 + 88) = v26;
    }

    else
    {
      fetchResultSetReallocCurrentRow(a2, 16);
      v27 = *(a2 + 80);
      v28 = (v24 + *(a2 + 88)) & v25;
      *(a2 + 88) = v28;
      if (v27 - v28 + *(a2 + 16) <= 15)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v90 = *(a2 + 80) - *(a2 + 88) + *(a2 + 16);
          *buf = 134218240;
          v120 = v90;
          v121 = 1024;
          v122 = 16;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: less space allocated for fetch result (%ld) than we asked for (%u)!\n", buf, 0x12u);
        }

        v30 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          v31 = *(a2 + 80) - *(a2 + 88) + *(a2 + 16);
          *buf = 134218240;
          v120 = v31;
          v121 = 1024;
          v122 = 16;
          _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: less space allocated for fetch result (%ld) than we asked for (%u)!", buf, 0x12u);
        }
      }
    }

    [*(v23 + 3) propertyDescription];
    v32 = *(v11 + 2592);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(*(v23 + 3) "propertyDescription")];
    }

    v33 = *(v23 + 8);
    if (v33 > 0x10)
    {
      goto LABEL_77;
    }

    if (((1 << v33) & 0x7270) != 0)
    {
      v34 = sqlite3_column_text(*(v4 + 80), *v23);
      v35 = v34;
      if (v23[1])
      {
        v36 = *(a2 + 88);
        v37 = (!v34 || !*v34) && sqlite3_column_type(*(v4 + 80), *v23) == 5;
        *v36 = v37;
        v42 = *(a2 + 88) + 1;
        *(a2 + 88) = v42;
        if (*v36)
        {
          goto LABEL_115;
        }

        *(a2 + 88) = (v42 + v24) & v25;
      }

      if (v35)
      {
        v43 = strlen(v35) + 1;
        v44 = *(a2 + 88);
        *v44 = v43;
        v45 = v44 + 1;
        *(a2 + 88) = v45;
        v46 = v43;
        if (*(a2 + 80) - v45 + *(a2 + 16) < v43)
        {
          fetchResultSetReallocCurrentRow(a2, v43);
          v45 = *(a2 + 88);
        }

        memcpy(v45, v35, v46);
        *(a2 + 88) += v46;
        goto LABEL_115;
      }

      v47 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_90;
      }

      v48 = _pflogging_catastrophic_mode;
      v49 = _PFLogGetLogStream(1);
      v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
      if (v48)
      {
        if (v50)
        {
          goto LABEL_130;
        }
      }

      else if (v50)
      {
LABEL_130:
        v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row (pk = %lld) for entity '%@' is missing mandatory text data for property '%@'", *(v115 + 24), objc_msgSend(objc_msgSend(_sqlEntityForEntityID(v116, *(v115 + 8)), "entityDescription"), "name"), objc_msgSend(objc_msgSend(*(v23 + 3), "propertyDescription"), "name")];
        *buf = 138412290;
        v120 = v100;
        _os_log_error_impl(&dword_18565F000, v49, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
      }

LABEL_90:
      v81 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row (pk = %lld) for entity '%@' is missing mandatory text data for property '%@'", *(v115 + 24), objc_msgSend(objc_msgSend(_sqlEntityForEntityID(v116, *(v115 + 8)), "entityDescription"), "name"), objc_msgSend(objc_msgSend(*(v23 + 3), "propertyDescription"), "name")];
      _NSCoreDataLog_console(1, "%@\n", v81);
      objc_autoreleasePoolPop(v47);
      v82 = *(a2 + 24);
      if ((v82 & 0x80000000) != 0)
      {
        v83 = 0;
      }

      else
      {
        v83 = *(*(a2 + 64) + 8 * v82) + *(a2 + 32);
      }

      v11 = 0x1E6EC0000;
      v21 = 0;
      *v83 = -1;
      *(v83 + 24) = 0;
      *(v83 + 8) = 0;
      --*a2;
      *(a2 + 88) = v83;
      --v118;
      goto LABEL_115;
    }

    if (((1 << v33) & 0x180) == 0)
    {
      break;
    }

    v38 = sqlite3_column_double(*(v4 + 80), *v23);
    v39 = v38;
    v40 = *(a2 + 88);
    if (v23[1])
    {
      v41 = v38 == 0.0 && sqlite3_column_type(*(v4 + 80), *v23) == 5;
      *v40 = v41;
      v86 = *(a2 + 88) + 1;
      *(a2 + 88) = v86;
      if (*v40)
      {
        goto LABEL_115;
      }

      v40 = ((v86 + v24) & v25);
    }

    *v40 = v39;
    *(a2 + 88) = v40 + 1;
LABEL_115:
    ++v22;
    v23 += 6;
    if (v22 >= v21)
    {
      goto LABEL_133;
    }
  }

  if (v33 != 16)
  {
LABEL_77:
    if (v33 - 2 >= 2)
    {
      if (v33 != 1)
      {
        goto LABEL_84;
      }

      v68 = v21;
      v73 = sqlite3_column_int(*(v4 + 80), *v23);
      v74 = v73;
      v75 = *(a2 + 88);
      if (v23[1])
      {
        if (v73)
        {
          v80 = 0;
        }

        else
        {
          v80 = sqlite3_column_type(*(v4 + 80), *v23) == 5;
        }

        *v75 = v80;
        v91 = *(a2 + 88) + 1;
        *(a2 + 88) = v91;
        v11 = 0x1E6EC0000;
        if (*v75)
        {
          goto LABEL_114;
        }

        v75 = ((v91 + v24) & v25);
      }

      else
      {
        v11 = 0x1E6EC0000;
      }

      *v75 = v74;
      v85 = v75 + 4;
    }

    else
    {
      v68 = v21;
      v69 = sqlite3_column_int64(*(v4 + 80), *v23);
      v70 = v69;
      v71 = *(a2 + 88);
      if (v23[1])
      {
        if (v69)
        {
          v72 = 0;
        }

        else
        {
          v72 = sqlite3_column_type(*(v4 + 80), *v23) == 5;
        }

        *v71 = v72;
        v84 = *(a2 + 88) + 1;
        *(a2 + 88) = v84;
        if (*v71)
        {
          goto LABEL_114;
        }

        v71 = ((v84 + v24) & v25);
      }

      *v71 = v70;
      v85 = v71 + 8;
    }

    *(a2 + 88) = v85;
LABEL_114:
    v21 = v68;
    goto LABEL_115;
  }

  if (!v110 || ([objc_msgSend(*(v23 + 3) "propertyDescription")] & 1) != 0 || (v51 = sqlite3_column_blob(*(v4 + 80), *v23), v52 = sqlite3_column_bytes(*(v4 + 80), *v23), v53 = (v52 - 1), v52 < 1))
  {
LABEL_84:
    v76 = sqlite3_column_bytes(*(v4 + 80), *v23);
    v77 = v76;
    v78 = *(a2 + 88);
    if (v23[1])
    {
      if (v76)
      {
        v79 = 0;
      }

      else
      {
        v79 = sqlite3_column_type(*(v4 + 80), *v23) == 5;
      }

      *v78 = v79;
      v87 = *(a2 + 88) + 1;
      *(a2 + 88) = v87;
      if (*v78)
      {
LABEL_108:
        v11 = 0x1E6EC0000;
        goto LABEL_115;
      }

      v78 = ((v87 + v24) & v25);
    }

    *v78 = v77;
    v88 = v78 + 4;
    *(a2 + 88) = v88;
    if (*(a2 + 80) - v88 + *(a2 + 16) < v77)
    {
      fetchResultSetReallocCurrentRow(a2, v77);
      v88 = *(a2 + 88);
    }

    v89 = sqlite3_column_blob(*(v4 + 80), *v23);
    memcpy(v88, v89, v77);
    *(a2 + 88) += v77;
    goto LABEL_108;
  }

  v54 = v52;
  v109 = v21;
  result = [MEMORY[0x1E696AC08] defaultManager];
  v55 = *v51;
  if (v55 == 1)
  {
    v61 = [_PFExternalReferenceData alloc];
    v92 = *(v4 + 16);
    if (v92)
    {
      v63 = (*(v92 + 200) >> 2) & 7;
    }

    else
    {
      v63 = 0;
    }

    v64 = v54;
    v65 = v51;
    v66 = 0;
    v67 = 0;
    goto LABEL_120;
  }

  if (v55 != 3)
  {
    v56 = [result stringWithFileSystemRepresentation:v51 + 1 length:{strnlen(v51 + 1, v53)}];
    v57 = [*(v4 + 16) externalDataReferencesDirectory];
    v58 = *(v4 + 16);
    if (v58)
    {
      if (!atomic_load(v58 + 21))
      {
        v107 = v57;
        [v58 externalDataReferencesDirectory];
        v57 = v107;
      }

      v58 = atomic_load(v58 + 22);
    }

    v108 = [v57 stringByAppendingPathComponent:v56];
    v60 = [v58 stringByAppendingPathComponent:v56];
    v61 = [_PFExternalReferenceData alloc];
    v62 = *(v4 + 16);
    if (v62)
    {
      v63 = (*(v62 + 200) >> 2) & 7;
    }

    else
    {
      v63 = 0;
    }

    v64 = v54;
    v65 = v51;
    v66 = v108;
    v67 = v60;
LABEL_120:
    v93 = [(_PFExternalReferenceData *)v61 initWithStoreBytes:v65 length:v64 externalLocation:v66 safeguardLocation:v67 protectionLevel:v63];
    v94 = [(_PFExternalReferenceData *)v93 length];
    v95 = v94;
    v96 = *(a2 + 88);
    if (v23[1])
    {
      if (v94)
      {
        v97 = 0;
      }

      else
      {
        v97 = sqlite3_column_type(*(v4 + 80), *v23) == 5;
      }

      *v96 = v97;
      v98 = *(a2 + 88) + 1;
      *(a2 + 88) = v98;
      if (!*v96)
      {
        v96 = ((v98 + v24) & v25);
        goto LABEL_126;
      }
    }

    else
    {
LABEL_126:
      *v96 = v95;
      v99 = v96 + 4;
      *(a2 + 88) = v99;
      if (*(a2 + 80) - v99 + *(a2 + 16) < v95)
      {
        fetchResultSetReallocCurrentRow(a2, v95);
        v99 = *(a2 + 88);
      }

      memcpy(v99, [(_PFExternalReferenceData *)v93 bytes], v95);
      *(a2 + 88) += v95;
    }

    v11 = 0x1E6EC0000;
    v21 = v109;
    goto LABEL_115;
  }

  __break(1u);
  return result;
}

- (uint64_t)fetchBufferResultSet:(uint64_t)a3 usingFetchPlan:
{
  v157 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_191;
  }

  v4 = result;
  v5 = *(result + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  v6 = *(a3 + 16);
  if (!v6)
  {
    v6 = 0x7FFFFFFF;
  }

  v139 = v6;
  v137 = *(a3 + 72);
  v133 = [*(a3 + 40) model];
  v7 = *(a3 + 48);
  if (v7)
  {
    v138 = *(v7 + 42) >> 7;
  }

  else
  {
    v138 = 0;
  }

  v8 = *(a3 + 40);
  if (v8)
  {
    v9 = *(v8 + 240);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 length];
  v11 = *(a3 + 40);
  if (v11)
  {
    v12 = *(v11 + 184);
  }

  else
  {
    v12 = 0;
  }

  v132 = a3;
  v143 = *(a3 + 64);
  v136 = *(a3 + 40);
  plan_for_entity = _sql_read_only_fetch_plan_for_entity(v11);
  v14 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v14);
  v141 = plan_for_entity;
  if (((InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * v10 + *plan_for_entity <= 0x800)
  {
    v16 = 2048;
  }

  else
  {
    v16 = ((InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * v10 + *plan_for_entity;
  }

  v155 = v16;
  v17 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v17 = malloc_default_zone();
  }

  v18 = malloc_type_zone_calloc(v17, 1uLL, v16, 0x856CF55FuLL);
  if (!v18)
  {
    v129 = [_NSCoreDataException exceptionWithName:134183 code:@"PF_CALLOC failed" reason:0 userInfo:?];
    objc_exception_throw(v129);
  }

  v19 = v18;
  if (v139 < 1)
  {
    v140 = 0;
    goto LABEL_186;
  }

  v140 = 0;
  v20 = 0;
  v135 = 8 * v10;
  v145 = v4;
  do
  {
    if ((*(v4 + 312) & 2) == 0)
    {
      break;
    }

    if ((v137 & 1) == 0)
    {
      goto LABEL_24;
    }

    v21 = sqlite3_column_int(*(v4 + 80), 0);
    v22 = v21;
    if (!v21)
    {
      [(NSSQLiteConnection *)v4 handleCorruptedDB:?];
    }

    v12 = v21;
    if (v21 != *(v4 + 92))
    {
      v136 = (*(v132 + 64))(v133, sel_entityForID_, v21);
      *(v4 + 104) = v136;
      *(v4 + 92) = v22;
      v23 = _sql_read_only_fetch_plan_for_entity(v136);
    }

    else
    {
LABEL_24:
      v23 = v141;
    }

    v24 = *(v23 + 4);
    bzero(v19 + 8, v155 - 8);
    *(v19 + 5) = 0;
    v142 = v12;
    *(v19 + 3) = v12;
    *(v19 + 4) = 0;
    bzero(v19 + 40, v135);
    v25 = &v19[v135 + 40];
    v148 = v24;
    v141 = v23;
    if (!v24)
    {
      v152 = 0;
LABEL_174:
      *(v19 + 5) = v152;
      bufferResultSetIngestRow(a2, v19, ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) - v19);
      ++*(v4 + 88);
      ++v140;
      goto LABEL_175;
    }

    v26 = 0;
    v150 = 0;
    v147 = 0;
    v151 = 0;
    v152 = 0;
    v27 = 0;
    v149 = v23 + 8;
    v154 = &v19[v135 + 40];
    v146 = v20;
    while (1)
    {
      v153 = v27;
      v28 = v149 + 24 * v26;
      v29 = ((v25 + 7) & 0xFFFFFFFFFFFFFFF8);
      v30 = *(v28 + 12);
      if (v29 - v25 >= 1)
      {
        *&v154[8 * (v27 - v10) - 8] += v29 - v25;
      }

      if (v19 - v29 + v155 <= 0xF)
      {
        v155 += 16;
        v31 = bufferResultSetRealloc(v19, &v155);
        v154 = &v31[v154 - v19];
        v29 = (&v31[v25 - v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        v19 = v31;
      }

      if (v26 >= 7 && (v150 & 1) != 0)
      {
        v32 = v151;
        if (!v151)
        {
          v32 = v143([*(v4 + 16) model], sel_entityForID_, v147);
        }

        v151 = v32;
        v33 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v32];
        v34 = [objc_msgSend(objc_msgSend(objc_msgSend(*(v28 + 16) "propertyDescription")];
        if (v34 < [v33 count])
        {
          v35 = [v33 objectAtIndexedSubscript:v34];
          if (v151)
          {
            v36 = [v151[5] objectForKey:v35];
          }

          else
          {
            v36 = 0;
          }

          v30 = [v36 sqlType];
        }
      }

      if (v30 > 0x10)
      {
        goto LABEL_87;
      }

      if (((1 << v30) & 0x7270) == 0)
      {
        if (((1 << v30) & 0x180) != 0)
        {
          v39 = sqlite3_column_double(*(v4 + 80), *(v28 + 4));
          v40 = v39;
          if ((*(v28 + 8) & 1) == 0)
          {
            goto LABEL_117;
          }

          if (v39 != 0.0)
          {
            *v29 = 0;
LABEL_117:
            *v29 = v40;
            v25 = v29 + 8;
            goto LABEL_124;
          }

          v85 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v85 == 5;
          if (v85 != 5)
          {
            goto LABEL_117;
          }

          goto LABEL_51;
        }

        if (v30 == 16)
        {
          if (v138)
          {
            if (([objc_msgSend(*(v28 + 16) "propertyDescription")] & 1) == 0)
            {
              v134 = sqlite3_column_blob(*(v4 + 80), *(v28 + 4));
              v56 = sqlite3_column_bytes(*(v4 + 80), *(v28 + 4));
              if (v56 >= 1)
              {
                v57 = [MEMORY[0x1E696AC08] defaultManager];
                v58 = *v134;
                if (v58 == 1)
                {
                  v103 = [_PFExternalReferenceData alloc];
                  v104 = *(v4 + 16);
                  if (v104)
                  {
                    v105 = (*(v104 + 200) >> 2) & 7;
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v70 = [(_PFExternalReferenceData *)v103 initWithStoreBytes:v134 length:v56 externalLocation:0 safeguardLocation:0 protectionLevel:v105];
                }

                else
                {
                  if (v58 == 3)
                  {
                    __break(1u);
                  }

                  v59 = [v57 stringWithFileSystemRepresentation:v134 + 1 length:{strnlen(v134 + 1, (v56 - 1))}];
                  v60 = [*(v4 + 16) externalDataReferencesDirectory];
                  v61 = *(v4 + 16);
                  if (v61)
                  {
                    if (!atomic_load((v61 + 168)))
                    {
                      [*(v4 + 16) externalDataReferencesDirectory];
                    }

                    v63 = v59;
                    v64 = atomic_load((v61 + 176));
                    v131 = v64;
                  }

                  else
                  {
                    v63 = v59;
                    v131 = 0;
                  }

                  v20 = v146;
                  v65 = v63;
                  v130 = [v60 stringByAppendingPathComponent:v63];
                  v66 = [v131 stringByAppendingPathComponent:v65];
                  v67 = [_PFExternalReferenceData alloc];
                  v68 = *(v4 + 16);
                  if (v68)
                  {
                    v69 = (*(v68 + 200) >> 2) & 7;
                  }

                  else
                  {
                    v69 = 0;
                  }

                  v70 = [(_PFExternalReferenceData *)v67 initWithStoreBytes:v134 length:v56 externalLocation:v130 safeguardLocation:v66 protectionLevel:v69];
                }

                v106 = v70;
                v107 = [(_PFExternalReferenceData *)v70 length];
                v108 = objc_opt_class();
                if ((((class_getInstanceSize(v108) + 7) & 0xFFFFFFFFFFFFFFF8) + v107) >> 31)
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Data is larger than 2GB" userInfo:0]);
                }

                v109 = [(_PFExternalReferenceData *)v106 length];
                v110 = v109;
                if ((*(v28 + 8) & 1) == 0)
                {
                  goto LABEL_159;
                }

                if (v109)
                {
                  *v29 = 0;
LABEL_159:
                  v112 = objc_opt_class();
                  v113 = ((class_getInstanceSize(v112) + 7) & 0xFFFFFFF8) + v110;
                  v114 = v19;
                  v115 = (v29 - v19);
                  if (v155 - v115 >= v113)
                  {
                    v19 = v114;
                  }

                  else
                  {
                    v155 += v113;
                    v116 = bufferResultSetRealloc(v114, &v155);
                    v29 = &v115[v116];
                    v154 = &v116[v154 - v114];
                    v19 = v116;
                  }

                  if (!v29)
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      *&buf[4] = v155;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: bufferResultSetRealloc failed to realloc buffer to %ld bytes\n", buf, 0xCu);
                    }

                    v127 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 134217984;
                      *&buf[4] = v155;
                      _os_log_fault_impl(&dword_18565F000, v127, OS_LOG_TYPE_FAULT, "CoreData: bufferResultSetRealloc failed to realloc buffer to %ld bytes", buf, 0xCu);
                    }

                    v128 = [_NSCoreDataException exceptionWithName:134183 code:@"realloc failed" reason:0 userInfo:?];
                    objc_exception_throw(v128);
                  }

                  *v29 = 0;
                  *(v29 + 3) = v110;
                  memcpy(v29 + 24, [(_PFExternalReferenceData *)v106 bytes], v110);

                  ++v152;
                  v25 = &v29[v110 + 24];
LABEL_125:
                  v42 = v153;
                  *&v154[8 * (v153 - v10)] = v25 - v29;
                  goto LABEL_126;
                }

                v111 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
                *v29 = v111 == 5;
                if (v111 != 5)
                {
                  goto LABEL_159;
                }

                goto LABEL_51;
              }
            }
          }

          goto LABEL_96;
        }

LABEL_87:
        if (v30 - 2 < 2)
        {
          v71 = sqlite3_column_int64(*(v4 + 80), *(v28 + 4));
          v72 = v71;
          if ((*(v28 + 8) & 1) == 0)
          {
            goto LABEL_109;
          }

          if (v71)
          {
            *v29 = 0;
LABEL_109:
            v81 = v29;
            if (*(v28 + 13) == 3)
            {
              v82 = [objc_msgSend(*(v28 + 16) "toOneRelationship")];
              if (v82)
              {
                v83 = *(v82 + 184);
              }

              else
              {
                v83 = 0;
              }

              *v29 = v83;
              v81 = (v29 + 8);
            }

            *v81 = v72;
            v25 = (v81 + 1);
            v84 = v147;
            if ((v150 & (v26 == 5)) != 0)
            {
              v84 = v72;
            }

            v147 = v84;
LABEL_124:
            ++v152;
            goto LABEL_125;
          }

          v80 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v80 == 5;
          if (v80 != 5)
          {
            goto LABEL_109;
          }

          goto LABEL_51;
        }

        if (v30 != 1)
        {
LABEL_96:
          v76 = sqlite3_column_bytes(*(v4 + 80), *(v28 + 4));
          v77 = v76;
          if ((*(v28 + 8) & 1) == 0)
          {
            goto LABEL_119;
          }

          if (v76)
          {
            *v29 = 0;
LABEL_119:
            v87 = objc_opt_class();
            v88 = ((class_getInstanceSize(v87) + 7) & 0xFFFFFFF8) + v77;
            v89 = v19;
            v90 = (v29 - v19);
            if (v155 - v90 >= v88)
            {
              v19 = v89;
            }

            else
            {
              v155 += v88;
              v91 = bufferResultSetRealloc(v89, &v155);
              v29 = &v90[v91];
              v154 = &v91[v154 - v89];
              v19 = v91;
            }

            if (!v29)
            {
              v123 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v155;
                _os_log_error_impl(&dword_18565F000, v123, OS_LOG_TYPE_ERROR, "CoreData: fault: bufferResultSetRealloc failed to realloc buffer to %ld bytes\n", buf, 0xCu);
              }

              v124 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
              {
                *buf = 134217984;
                *&buf[4] = v155;
                _os_log_fault_impl(&dword_18565F000, v124, OS_LOG_TYPE_FAULT, "CoreData: bufferResultSetRealloc failed to realloc buffer to %ld bytes", buf, 0xCu);
              }

              v125 = [_NSCoreDataException exceptionWithName:134183 code:@"realloc failed" reason:0 userInfo:?];
              objc_exception_throw(v125);
            }

            *v29 = 0;
            *(v29 + 3) = v77;
            v92 = sqlite3_column_blob(*(v4 + 80), *(v28 + 4));
            memcpy(v29 + 24, v92, v77);
            v25 = &v29[v77 + 24];
            goto LABEL_124;
          }

          v86 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v86 == 5;
          if (v86 != 5)
          {
            goto LABEL_119;
          }

          goto LABEL_51;
        }

        v73 = sqlite3_column_int(*(v4 + 80), *(v28 + 4));
        v74 = v73;
        v75 = *(v28 + 8);
        if (*(v28 + 13) != 4)
        {
          if ((v75 & 1) == 0)
          {
            goto LABEL_136;
          }

          if (v73)
          {
            *v29 = 0;
LABEL_136:
            *v29 = v74;
            if (v136)
            {
              v99 = *(v136 + 184) == 16001;
            }

            else
            {
              v99 = 0;
            }

            if (v26 != 3)
            {
              v99 = 0;
            }

            if (v74 != 2)
            {
              v99 = 0;
            }

            v150 |= v99;
            ++v152;
            v25 = v29 + 4;
            goto LABEL_125;
          }

          v98 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v98 == 5;
          if (v98 != 5)
          {
            goto LABEL_136;
          }

          goto LABEL_51;
        }

        if (v75)
        {
          if (v73)
          {
            *v29 = 0;
          }

          else
          {
            v93 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
            *v29 = v93 == 5;
            if (v93 == 5)
            {
              ++v26;
              v25 = v29;
              goto LABEL_125;
            }
          }
        }

        v94 = v19;
        *v29 = v74;
        v25 = v29 + 8;
        v95 = v149 + 24 * ++v26;
        v96 = sqlite3_column_int64(*(v4 + 80), *(v95 + 4));
        v97 = v96;
        if ((*(v95 + 8) & 1) == 0)
        {
          goto LABEL_148;
        }

        if (v96)
        {
          *v25 = 0;
          goto LABEL_148;
        }

        v100 = sqlite3_column_type(*(v4 + 80), *(v95 + 4));
        *v25 = v100 == 5;
        if (v100 == 5)
        {
          v101 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v102 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
LABEL_166:
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v102, OS_LOG_TYPE_ERROR, "CoreData: error: BufferAllocations found a bad Object ID\n", buf, 2u);
              }
            }

            else
            {
              v102 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_166;
              }
            }
          }

          _NSCoreDataLog_console(1, "BufferAllocations found a bad Object ID");
          objc_autoreleasePoolPop(v101);
        }

        else
        {
LABEL_148:
          *(v29 + 1) = v97;
          v25 = v29 + 16;
          ++v152;
        }

        v19 = v94;
        goto LABEL_125;
      }

      v37 = sqlite3_column_text(*(v4 + 80), *(v28 + 4));
      v38 = v37;
      if ((*(v28 + 8) & 1) == 0)
      {
        break;
      }

      if (v37 && *v37)
      {
        *v29 = 0;
        goto LABEL_53;
      }

      v41 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
      *v29 = v41 == 5;
      if (v41 != 5)
      {
        break;
      }

LABEL_51:
      v25 = v29;
      v42 = v153;
LABEL_126:
      ++v26;
      v27 = v42 + 1;
      if (v26 >= v148)
      {
        goto LABEL_174;
      }
    }

    if (v38)
    {
LABEL_53:
      objc_opt_self();
      LOBYTE(v43) = *v38;
      if (*v38)
      {
        v44 = 0;
        v45 = 0;
        do
        {
          if ((v43 & 0x80u) != 0)
          {
            v44 = 1;
          }

          v43 = v38[++v45];
        }

        while (v43);
        v46 = v44 == 0;
        if (v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = 0;
        }

        v48 = off_1E6EC0C60;
        if (!v46)
        {
          v48 = off_1E6EC0C68;
        }

        v49 = v45;
      }

      else
      {
        v49 = 0;
        v45 = 0;
        v47 = 0;
        v48 = off_1E6EC0C60;
      }

      v50 = v10;
      v51 = [(__objc2_class *)*v48 bufferOffset];
      v52 = v51 + (((v45 << 32) + 0x100000000) >> 32);
      if (v155 - (v29 - v19) >= v52)
      {
        v54 = v19;
      }

      else
      {
        v155 += v52;
        v53 = bufferResultSetRealloc(v19, &v155);
        v29 = &v53[v29 - v19];
        v154 = &v53[v154 - v19];
        v54 = v53;
      }

      if (v49 > 7 || (v47 & 1) != 0)
      {
        *v29 = -v47;
        *(v29 + 4) = v49;
        memcpy(&v29[v51], v38, v45);
        v55 = &v29[v51 + v45];
      }

      else
      {
        if ((*(a2 + 40) & 2) == 0)
        {
          *buf = 0;
          __memmove_chk();
          v4 = v145;
          if ((*buf & 0x8080808080808080) != 0)
          {
            v25 = v29;
            goto LABEL_101;
          }

          v78 = (8 * v45) | (*buf << 7) | 0x8000000000000002;
          v79 = *MEMORY[0x1E69E5910] ^ v78;
          if ((~v79 & 0xC000000000000007) == 0)
          {
            v19 = v54;
            goto LABEL_129;
          }

          v25 = v29;
          v78 = v79 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v79 & 7));
          v19 = v54;
          if (v78)
          {
LABEL_129:
            *v29 = v78;
            v25 = v29 + 8;
          }

LABEL_102:
          ++v152;
          v10 = v50;
          v20 = v146;
          goto LABEL_125;
        }

        memcpy(v29, v38, v45);
        v55 = &v29[v45];
      }

      *v55 = 0;
      v25 = v55 + 1;
      v4 = v145;
LABEL_101:
      v19 = v54;
      goto LABEL_102;
    }

    v117 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v118 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
LABEL_183:
          v121 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Row (pk = %ld) for entity '%@' is missing mandatory text data for property '%@'", 0, objc_msgSend(objc_msgSend(_sqlEntityForEntityID(v133, v142), "entityDescription"), "name"), objc_msgSend(objc_msgSend(*(v28 + 16), "propertyDescription"), "name")];
          *buf = 138412290;
          *&buf[4] = v121;
          _os_log_error_impl(&dword_18565F000, v118, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
        }
      }

      else
      {
        v118 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_183;
        }
      }
    }

    v119 = MEMORY[0x1E696AEC0];
    v120 = [objc_msgSend(_sqlEntityForEntityID(v133 v142)];
    _NSCoreDataLog_console(1, "%@\n", [v119 stringWithFormat:@"Row (pk = %ld) for entity '%@' is missing mandatory text data for property '%@'", 0, v120, objc_msgSend(objc_msgSend(*(v28 + 16), "propertyDescription"), "name")]);
    objc_autoreleasePoolPop(v117);
LABEL_175:
    v12 = v142;
    _execute(v4);
    ++v20;
  }

  while (v20 != v139);
LABEL_186:
  PF_FREE_OBJECT_ARRAY(v19);
  if (v140 <= 0x40000000)
  {
    result = v140;
  }

  else
  {
    result = 0;
  }

  if ((*(v4 + 312) & 2) == 0)
  {
    *(a2 + 40) |= 1u;
  }

LABEL_191:
  v122 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSecureDeleteMode:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      v2 = @"pragma secure_delete=1";
    }

    else
    {
      v2 = @"pragma secure_delete=0";
    }

    [(NSSQLiteConnection *)a1 _executeSQLString:v2];
  }
}

- (void)setExclusiveLockingMode:(BOOL)a3
{
  if (a3)
  {
    v4 = @"pragma locking_mode=EXCLUSIVE";
  }

  else
  {
    v4 = @"pragma locking_mode=NORMAL";
  }

  [(NSSQLiteConnection *)self _executeSQLString:v4];
  [(NSSQLiteConnection *)self beginTransaction];
  [(NSSQLiteConnection *)self commitTransaction];
  [(NSSQLiteConnection *)self endFetchAndRecycleStatement:?];
}

- (id)fetchTableNames
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 1);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    v3 = 0;
    v4 = 0;
    for (i = 3; (v3 & 1) == 0 && (i & 0x80000000) == 0; --i)
    {
      [(NSSQLiteConnection *)v1 connect];
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
      v6 = -[NSSQLiteAdapter newStatementWithSQLString:]([v1 adapter], @"SELECT TBL_NAME FROM SQLITE_MASTER WHERE TYPE = table ORDER BY TBL_NAME");
      v7 = [[NSSQLColumn alloc] initWithColumnName:@"TBL_NAME" sqlType:6];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      [(NSSQLiteConnection *)v1 prepareSQLStatement:v6];
      [v1 execute];
      [(NSSQLiteConnection *)v1 setColumnsToFetch:v8];
      while (1)
      {
        v9 = [(NSSQLiteConnection *)v1 newFetchedArray];
        v10 = v9;
        if (!v9)
        {
          break;
        }

        [v5 addObject:{objc_msgSend(objc_msgSend(v9, "objectAtIndex:", 0), "uppercaseString")}];
      }

      v3 = 1;
      [(NSSQLiteConnection *)v1 releaseSQLStatement];
      [(NSSQLiteConnection *)v1 setColumnsToFetch:?];
      *(v1 + 312) &= ~2u;
      *(v1 + 100) = 0;
      *(v1 + 92) = 0;
      *(v1 + 108) = 0;

      v4 = v5;
    }

    result = v4;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)fetchCreationSQLForType:(void *)a3 containing:
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = 0;
  v6 = 0;
  for (i = 3; (v5 & 1) == 0 && (i & 0x80000000) == 0; --i)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT TBL_NAME, SQL FROM SQLITE_MASTER WHERE TYPE = %@", a2];
    if ([a3 length])
    {
      [v9 appendFormat:@" AND SQL LIKE %%%@%%", a3];
    }

    [v9 appendString:@" ORDER BY TBL_NAME"];
    v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v9);
    v11 = [[NSSQLColumn alloc] initWithColumnName:@"TBL_NAME" sqlType:6];
    v12 = [[NSSQLColumn alloc] initWithColumnName:@"SQL" sqlType:6];
    v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, v12, 0}];

    [(NSSQLiteConnection *)a1 connect];
    [(NSSQLiteConnection *)a1 prepareSQLStatement:v10];
    [a1 execute];
    [(NSSQLiteConnection *)a1 setColumnsToFetch:v13];
    while (1)
    {
      v14 = [(NSSQLiteConnection *)a1 newFetchedArray];
      v15 = v14;
      if (!v14)
      {
        break;
      }

      if ([v14 count] == 2)
      {
        v16 = [v15 objectAtIndex:0];
        v17 = [v15 objectAtIndex:1];
        if ([v16 isNSString])
        {
          if ([v17 isNSString])
          {
            v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(v16, "uppercaseString"), objc_msgSend(v17, "uppercaseString"), 0}];
            [v8 addObject:v18];
          }
        }
      }
    }

    v5 = 1;
    v6 = v8;
    [(NSSQLiteConnection *)a1 releaseSQLStatement];
    [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
    *(a1 + 312) &= ~2u;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    *(a1 + 108) = 0;
  }

  result = v6;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)fetchTableCreationSQLContaining:(id)result
{
  if (result)
  {
    return [(NSSQLiteConnection *)result fetchCreationSQLForType:a2 containing:?];
  }

  return result;
}

- (uint64_t)_hasTableWithName:(int)a3 isTemp:
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      dispatch_assert_queue_V2(v5);
    }

    context = objc_autoreleasePoolPush();
    v6 = 0;
    v18 = 0;
    if ((*(a1 + 312) & 0x80) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    v8 = @"SQLITE_TEMP_MASTER";
    if (!a3)
    {
      v8 = @"SQLITE_MASTER";
    }

    v19 = v8;
    while ((v6 & 1) == 0 && (v7 & 0x80000000) == 0)
    {
      [(NSSQLiteConnection *)a1 connect];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT TBL_NAME FROM %@ WHERE TBL_NAME = '%@'", v19, a2];
      v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v9);

      v11 = [[NSSQLColumn alloc] initWithColumnName:@"TBL_NAME" sqlType:6];
      v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, 0}];

      [(NSSQLiteConnection *)a1 prepareSQLStatement:v10];
      [a1 execute];
      [(NSSQLiteConnection *)a1 setColumnsToFetch:v12];

      v13 = [(NSSQLiteConnection *)a1 newFetchedArray];
      if (v13)
      {
        v18 = 1;

        v14 = v10;
        v6 = 1;
      }

      else
      {
        v6 = 1;
        v14 = v10;
      }

      [(NSSQLiteConnection *)a1 releaseSQLStatement];
      [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
      *(a1 + 312) &= ~2u;
      *(a1 + 100) = 0;
      *(a1 + 92) = 0;
      *(a1 + 108) = 0;

      --v7;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v18 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (void)_createInsertStatementsForEntities:(void *)a1
{
  v62 = *MEMORY[0x1E69E9840];
  v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a2;
  v41 = [a2 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v41)
  {
    v40 = *v48;
    do
    {
      v3 = 0;
      do
      {
        if (*v48 != v40)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v44 = v3;
        v46 = *(*(&v47 + 1) + 8 * v3);
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = v46;
        if (v46)
        {
          while (v7)
          {
            v8 = v7;
            v7 = *(v7 + 168);
            if (v7 == v8)
            {
              v9 = *(v8 + 72);
              goto LABEL_10;
            }
          }
        }

        v9 = 0;
LABEL_10:
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = [v9 sortedArrayUsingFunction:sortColumnsByType context:0];
        v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (v11)
        {
          v12 = *v56;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v56 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v55 + 1) + 8 * i);
              [v5 addObject:{objc_msgSend(v14, "columnName")}];
              [v6 addObject:{objc_msgSend(v14, "columnName")}];
            }

            v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
          }

          while (v11);
        }

        v15 = [v5 componentsJoinedByString:{@", "}];
        v16 = [v46 tableName];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_DEFERRED_TEMP__%@", v16];
        if (v46 && (*(v46 + 160) || (v28 = *(v46 + 152)) != 0 && [v28 count]))
        {
          v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
          [v18 appendString:v17];
          [v18 appendString:@"."];
          [v18 appendString:@"Z_ENT"];
          [v18 appendString:@" = "];
          v19 = [objc_msgSend(objc_msgSend(v46 "entityDescription")];
          if (!v19)
          {
            goto LABEL_35;
          }

          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v20 = *(v46 + 152);
          v21 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (!v21)
          {
            goto LABEL_35;
          }

          v38 = v17;
          v39 = v15;
          v22 = 0;
          v23 = *v52;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v52 != v23)
              {
                objc_enumerationMutation(v20);
              }

              if (!v22)
              {
                v25 = *(*(&v51 + 1) + 8 * j);
                v26 = [objc_msgSend(v25 "name")];
                if (v25)
                {
                  v27 = v26;
                }

                else
                {
                  v27 = 0;
                }

                if (v27 == 1)
                {
                  v22 = v25[46];
                }

                else
                {
                  v22 = 0;
                }
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v21);
          v17 = v38;
          v15 = v39;
          if (!v22)
          {
LABEL_35:
            v22 = *(v46 + 184);
          }

          [v18 appendFormat:@"%d", v22];
        }

        else
        {
          v18 = 0;
        }

        v29 = [v6 componentsJoinedByString:{@", "}];
        v30 = v17;
        v31 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT INTO "];
        [v31 appendString:{objc_msgSend(v46, "tableName")}];
        objc_msgSend(v31, "appendString:", @" (");
        [v31 appendString:v15];
        [v31 appendString:@" SELECT "]);
        [v31 appendString:v29];
        [v31 appendString:@" FROM "];
        [v31 appendString:v30];
        if (v18)
        {
          [v31 appendString:v18];
        }

        v32 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v31);
        [(NSSQLiteAdapter *)v32 _useModel:v45];

        [v43 addObject:v32];
        if (v46)
        {
          if (![*(v46 + 152) count])
          {
            goto LABEL_46;
          }

          v33 = *(v46 + 152);
          goto LABEL_45;
        }

        if ([0 count])
        {
          v33 = 0;
LABEL_45:
          [v43 addObjectsFromArray:{-[NSSQLiteConnection _createInsertStatementsForEntities:](a1, v33)}];
        }

LABEL_46:
        v3 = v44 + 1;
      }

      while (v44 + 1 != v41);
      v34 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
      v41 = v34;
    }

    while (v34);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v43;
}

- (BOOL)finishDeferredLightweightMigration:(uint64_t)a1
{
  v330 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_assert_queue_V2(v3);
    }

    v252 = a1;
    if (+[NSSQLCore debugDefault]< 1)
    {
      v5 = +[NSMappingModel migrationDebugLevel];
      v6 = getprogname();
      v4 = v6;
      if (v5 < 1)
      {
        v251 = 0;
        if (!v6)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v4 = getprogname();
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v9 = @"with";
          }

          else
          {
            v9 = @"without";
          }

          *buf = 138412290;
          v325 = v9;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Deferred Lightweight Migration %@ all tasks\n", buf, 0xCu);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v11 = @"with";
          }

          else
          {
            v11 = @"without";
          }

          *buf = 138412290;
          v325 = v11;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Deferred Lightweight Migration %@ all tasks\n", buf, 0xCu);
        }
      }
    }

    if (a2)
    {
      v12 = @"with";
    }

    else
    {
      v12 = @"without";
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    _NSCoreDataLog_console(v13, "Deferred Lightweight Migration %@ all tasks", v12);
    objc_autoreleasePoolPop(v7);
    v251 = 1;
    if (!v4)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (!strncmp("assetsd", v4, 7uLL) || !strncmp("photolibraryd", v4, 0xDuLL))
    {
      v240 = 1;
      goto LABEL_31;
    }

LABEL_29:
    v240 = 0;
LABEL_31:
    v14 = 3;
    while (1)
    {
      v242 = v14 >= 0;
      if (v14 < 0)
      {
        goto LABEL_483;
      }

      v245 = v14;
      context = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)v252 connect];
      if (v252[9])
      {
        break;
      }

      v237 = 0;
LABEL_478:
      [(NSSQLiteConnection *)v252 endFetchAndRecycleStatement:?];
      objc_autoreleasePoolPop(context);
      v14 = v245 - 1;
      if (v237)
      {
        goto LABEL_483;
      }
    }

    v15 = [MEMORY[0x1E695DFA8] set];
    v16 = [(NSSQLiteConnection *)v252 fetchCreationSQLForType:0 containing:?];
    obj = [MEMORY[0x1E695DF70] array];
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v281 objects:v321 count:16];
    if (v17)
    {
      v18 = *v282;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v282 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v281 + 1) + 8 * i);
          if ([v20 count] == 2 && objc_msgSend(objc_msgSend(v20, "lastObject"), "containsString:", @"_DEFERRED_"))
          {
            [obj addObject:{objc_msgSend(v20, "firstObject")}];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v281 objects:v321 count:16];
      }

      while (v17);
    }

    v279 = 0u;
    v280 = 0u;
    v277 = 0u;
    v278 = 0u;
    v21 = [obj countByEnumeratingWithState:&v277 objects:v320 count:16];
    if (v21)
    {
      v247 = *v278;
      do
      {
        v22 = 0;
        do
        {
          if (*v278 != v247)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v277 + 1) + 8 * v22);
          v273 = 0u;
          v274 = 0u;
          v275 = 0u;
          v276 = 0u;
          v24 = [objc_msgSend(objc_msgSend(v252 "adapter")];
          if (v24)
          {
            v25 = *(v24 + 32);
          }

          else
          {
            v25 = 0;
          }

          v26 = [v25 countByEnumeratingWithState:&v273 objects:v319 count:16];
          if (v26)
          {
            v27 = *v274;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v274 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v273 + 1) + 8 * j);
                if (v29 && !*(v29 + 160) && [objc_msgSend(*(*(&v273 + 1) + 8 * j) "tableName")])
                {
                  [v15 addObject:v29];
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v273 objects:v319 count:16];
            }

            while (v26);
          }

          ++v22;
        }

        while (v22 != v21);
        v30 = [obj countByEnumeratingWithState:&v277 objects:v320 count:16];
        v21 = v30;
      }

      while (v30);
    }

    v243 = [v15 allObjects];
    if (![v243 count])
    {
LABEL_476:
      v237 = 1;
      goto LABEL_478;
    }

    obja = v243;
    if ((a2 & 1) == 0)
    {
      obja = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(v243, "firstObject")}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v32 = v31;
    v246 = [MEMORY[0x1E695DF90] dictionary];
    if (v251)
    {
      v33 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v34 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *v321 = 0;
            _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning lightweight migration on connection\n", v321, 2u);
          }
        }

        else
        {
          v35 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *v321 = 0;
            _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning lightweight migration on connection\n", v321, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v36 = 1;
      }

      else
      {
        v36 = 4;
      }

      _NSCoreDataLog_console(v36, "Beginning lightweight migration on connection");
      objc_autoreleasePoolPop(v33);
      if ((v240 & 1) == 0)
      {
LABEL_96:
        v41 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v42 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *v321 = 0;
              _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning creation of deferred schema migration statements\n", v321, 2u);
            }
          }

          else
          {
            v43 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *v321 = 0;
              _os_log_impl(&dword_18565F000, v43, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning creation of deferred schema migration statements\n", v321, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v44 = 1;
        }

        else
        {
          v44 = 4;
        }

        _NSCoreDataLog_console(v44, "Beginning creation of deferred schema migration statements");
        objc_autoreleasePoolPop(v41);
LABEL_107:
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v46 = v45;
        if (v251)
        {
          v47 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v48 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *v321 = 0;
                _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: error: Create alter table migration statements\n", v321, 2u);
              }
            }

            else
            {
              v49 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *v321 = 0;
                _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create alter table migration statements\n", v321, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v50 = 1;
          }

          else
          {
            v50 = 4;
          }

          _NSCoreDataLog_console(v50, "Create alter table migration statements");
          objc_autoreleasePoolPop(v47);
        }

        v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
        v287 = 0u;
        v288 = 0u;
        v285 = 0u;
        v286 = 0u;
        v52 = [obja countByEnumeratingWithState:&v285 objects:v322 count:16];
        if (v52)
        {
          v53 = *v286;
          do
          {
            for (k = 0; k != v52; ++k)
            {
              if (*v286 != v53)
              {
                objc_enumerationMutation(obja);
              }

              v55 = *(*(&v285 + 1) + 8 * k);
              v56 = [v55 tableName];
              v57 = -[NSSQLiteAdapter newRenameTableStatementFrom:to:]([v252 adapter], objc_msgSend(v55, "tableName"), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_DEFERRED_TEMP__%@", v56));
              [v51 addObject:v57];
            }

            v52 = [obja countByEnumeratingWithState:&v285 objects:v322 count:16];
          }

          while (v52);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v318[0] = @"Creation of alter table migration statements";
        v318[1] = [MEMORY[0x1E696AD98] numberWithDouble:v58 - v46];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v318, 2), @"1.1"}];
        if (v251)
        {
          v59 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v60 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                *v322 = 0;
                _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: Create create table migration statements\n", v322, 2u);
              }
            }

            else
            {
              v61 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                *v322 = 0;
                _os_log_impl(&dword_18565F000, v61, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create create table migration statements\n", v322, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v62 = 1;
          }

          else
          {
            v62 = 4;
          }

          _NSCoreDataLog_console(v62, "Create create table migration statements");
          objc_autoreleasePoolPop(v59);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v64 = v63;
        v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
        v291 = 0u;
        v292 = 0u;
        v289 = 0u;
        v290 = 0u;
        v66 = [obja countByEnumeratingWithState:&v289 objects:v323 count:16];
        if (v66)
        {
          v67 = *v290;
          do
          {
            for (m = 0; m != v66; ++m)
            {
              if (*v290 != v67)
              {
                objc_enumerationMutation(obja);
              }

              v69 = -[NSSQLiteAdapter newCreateTableStatementForEntity:]([v252 adapter], *(*(&v289 + 1) + 8 * m));
              [v65 addObject:v69];
            }

            v66 = [obja countByEnumeratingWithState:&v289 objects:v323 count:16];
          }

          while (v66);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v317[0] = @"Creation of create table migration statements";
        v317[1] = [MEMORY[0x1E696AD98] numberWithDouble:v70 - v64];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v317, 2), @"1.2"}];
        if (v251)
        {
          v71 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v72 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
              {
                *v323 = 0;
                _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: error: Create insert migration statements\n", v323, 2u);
              }
            }

            else
            {
              v73 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                *v323 = 0;
                _os_log_impl(&dword_18565F000, v73, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create insert migration statements\n", v323, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v74 = 1;
          }

          else
          {
            v74 = 4;
          }

          _NSCoreDataLog_console(v74, "Create insert migration statements");
          objc_autoreleasePoolPop(v71);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v76 = v75;
        v248 = [(NSSQLiteConnection *)v252 _createInsertStatementsForEntities:?];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v316[0] = @"Creation of insert migration statements";
        v316[1] = [MEMORY[0x1E696AD98] numberWithDouble:v77 - v76];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v316, 2), @"1.3"}];
        if (v251)
        {
          v78 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v79 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                *v323 = 0;
                _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: error: Create drop table migration statements\n", v323, 2u);
              }
            }

            else
            {
              v80 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *v323 = 0;
                _os_log_impl(&dword_18565F000, v80, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create drop table migration statements\n", v323, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v81 = 1;
          }

          else
          {
            v81 = 4;
          }

          _NSCoreDataLog_console(v81, "Create drop table migration statements");
          objc_autoreleasePoolPop(v78);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v83 = v82;
        v84 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
        v295 = 0u;
        v296 = 0u;
        v293 = 0u;
        v294 = 0u;
        v85 = [obja countByEnumeratingWithState:&v293 objects:buf count:16];
        if (v85)
        {
          v86 = *v294;
          do
          {
            for (n = 0; n != v85; ++n)
            {
              if (*v294 != v86)
              {
                objc_enumerationMutation(obja);
              }

              v88 = [*(*(&v293 + 1) + 8 * n) tableName];
              v89 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([v252 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_DEFERRED_TEMP__%@", v88));
              [v84 addObject:v89];
            }

            v85 = [obja countByEnumeratingWithState:&v293 objects:buf count:16];
          }

          while (v85);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v315[0] = @"Creation of drop table migration statements";
        v315[1] = [MEMORY[0x1E696AD98] numberWithDouble:v90 - v83];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v315, 2), @"1.4"}];
        if (v251)
        {
          v91 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v92 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v92, OS_LOG_TYPE_ERROR, "CoreData: error: Finished creating deferred schema migration statements\n", buf, 2u);
              }
            }

            else
            {
              v93 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v93, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished creating deferred schema migration statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v94 = 1;
          }

          else
          {
            v94 = 4;
          }

          _NSCoreDataLog_console(v94, "Finished creating deferred schema migration statements");
          objc_autoreleasePoolPop(v91);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v314[0] = @"Total preparation time for schema migration statements";
        v314[1] = [MEMORY[0x1E696AD98] numberWithDouble:v95 - v46];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v314, 2), @"1.0"}];
        if (v251)
        {
          v96 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v97 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v97, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning formal transaction\n", buf, 2u);
              }
            }

            else
            {
              v98 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v98, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning formal transaction\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v99 = 1;
          }

          else
          {
            v99 = 4;
          }

          _NSCoreDataLog_console(v99, "Beginning formal transaction");
          objc_autoreleasePoolPop(v96);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v101 = v100;
        v102 = v252[2];
        if (v102)
        {
          [*(v102 + 216) lock];
        }

        [(NSSQLiteConnection *)v252 beginTransaction];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v104 = v103;
        v313[0] = @"Beginning formal transaction";
        v313[1] = [MEMORY[0x1E696AD98] numberWithDouble:v103 - v101];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v313, 2), @"2.1"}];
        if (v251)
        {
          v105 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v106 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v106, OS_LOG_TYPE_ERROR, "CoreData: error: Execute alter table statements\n", buf, 2u);
              }
            }

            else
            {
              v107 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v107, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute alter table statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v108 = 1;
          }

          else
          {
            v108 = 4;
          }

          _NSCoreDataLog_console(v108, "Execute alter table statements");
          objc_autoreleasePoolPop(v105);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v110 = v109;
        v271 = 0u;
        v272 = 0u;
        v269 = 0u;
        v270 = 0u;
        v111 = [v51 countByEnumeratingWithState:&v269 objects:v312 count:16];
        if (v111)
        {
          v112 = *v270;
          do
          {
            for (ii = 0; ii != v111; ++ii)
            {
              if (*v270 != v112)
              {
                objc_enumerationMutation(v51);
              }

              v114 = *(*(&v269 + 1) + 8 * ii);
              if (v251)
              {
                v115 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v116 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v325 = v114;
                      _os_log_error_impl(&dword_18565F000, v116, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute alter table statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v117 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v325 = v114;
                      _os_log_impl(&dword_18565F000, v117, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute alter table statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v118 = 1;
                }

                else
                {
                  v118 = 4;
                }

                _NSCoreDataLog_console(v118, "  Execute alter table statement: %@", v114);
                objc_autoreleasePoolPop(v115);
              }

              [(NSSQLiteConnection *)v252 prepareAndExecuteSQLStatement:v114];
            }

            v111 = [v51 countByEnumeratingWithState:&v269 objects:v312 count:16];
          }

          while (v111);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v311[0] = @"Execute alter table statements";
        v311[1] = [MEMORY[0x1E696AD98] numberWithDouble:v119 - v110];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v311, 2), @"2.2"}];
        if (v251)
        {
          v120 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v121 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v121, OS_LOG_TYPE_ERROR, "CoreData: error: Execute create table statements\n", buf, 2u);
              }
            }

            else
            {
              v122 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v122, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute create table statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v123 = 1;
          }

          else
          {
            v123 = 4;
          }

          _NSCoreDataLog_console(v123, "Execute create table statements");
          objc_autoreleasePoolPop(v120);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v125 = v124;
        v267 = 0u;
        v268 = 0u;
        v265 = 0u;
        v266 = 0u;
        v126 = [v65 countByEnumeratingWithState:&v265 objects:v310 count:16];
        if (v126)
        {
          v127 = *v266;
          do
          {
            for (jj = 0; jj != v126; ++jj)
            {
              if (*v266 != v127)
              {
                objc_enumerationMutation(v65);
              }

              v129 = *(*(&v265 + 1) + 8 * jj);
              if (v251)
              {
                v130 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v131 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v325 = v129;
                      _os_log_error_impl(&dword_18565F000, v131, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute create table statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v132 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v325 = v129;
                      _os_log_impl(&dword_18565F000, v132, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute create table statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v133 = 1;
                }

                else
                {
                  v133 = 4;
                }

                _NSCoreDataLog_console(v133, "  Execute create table statement: %@", v129);
                objc_autoreleasePoolPop(v130);
              }

              [(NSSQLiteConnection *)v252 prepareAndExecuteSQLStatement:v129];
            }

            v126 = [v65 countByEnumeratingWithState:&v265 objects:v310 count:16];
          }

          while (v126);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v309[0] = @"Execute create table statements";
        v309[1] = [MEMORY[0x1E696AD98] numberWithDouble:v134 - v125];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v309, 2), @"2.3"}];
        if (v251)
        {
          v135 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v136 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v136, OS_LOG_TYPE_ERROR, "CoreData: error: Execute insert statements\n", buf, 2u);
              }
            }

            else
            {
              v137 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v137, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute insert statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v138 = 1;
          }

          else
          {
            v138 = 4;
          }

          _NSCoreDataLog_console(v138, "Execute insert statements");
          objc_autoreleasePoolPop(v135);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v140 = v139;
        v263 = 0u;
        v264 = 0u;
        v261 = 0u;
        v262 = 0u;
        v141 = [v248 countByEnumeratingWithState:&v261 objects:v308 count:16];
        if (v141)
        {
          v142 = *v262;
          do
          {
            for (kk = 0; kk != v141; ++kk)
            {
              if (*v262 != v142)
              {
                objc_enumerationMutation(v248);
              }

              v144 = *(*(&v261 + 1) + 8 * kk);
              if (v251)
              {
                v145 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v146 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v325 = v144;
                      _os_log_error_impl(&dword_18565F000, v146, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute insert statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v147 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v325 = v144;
                      _os_log_impl(&dword_18565F000, v147, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute insert statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v148 = 1;
                }

                else
                {
                  v148 = 4;
                }

                _NSCoreDataLog_console(v148, "  Execute insert statement: %@", v144);
                objc_autoreleasePoolPop(v145);
              }

              [(NSSQLiteConnection *)v252 prepareAndExecuteSQLStatement:v144];
            }

            v141 = [v248 countByEnumeratingWithState:&v261 objects:v308 count:16];
          }

          while (v141);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v307[0] = @"Execute insert statements";
        v307[1] = [MEMORY[0x1E696AD98] numberWithDouble:v149 - v140];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v307, 2), @"2.4"}];
        if (v251)
        {
          v150 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v151 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v151, OS_LOG_TYPE_ERROR, "CoreData: error: Execute drop table statements\n", buf, 2u);
              }
            }

            else
            {
              v152 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v152, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute drop table statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v153 = 1;
          }

          else
          {
            v153 = 4;
          }

          _NSCoreDataLog_console(v153, "Execute drop table statements");
          objc_autoreleasePoolPop(v150);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v155 = v154;
        v259 = 0u;
        v260 = 0u;
        v257 = 0u;
        v258 = 0u;
        v156 = [v84 countByEnumeratingWithState:&v257 objects:v306 count:16];
        if (v156)
        {
          v157 = *v258;
          do
          {
            for (mm = 0; mm != v156; ++mm)
            {
              if (*v258 != v157)
              {
                objc_enumerationMutation(v84);
              }

              v159 = *(*(&v257 + 1) + 8 * mm);
              if (v251)
              {
                v160 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v161 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v325 = v159;
                      _os_log_error_impl(&dword_18565F000, v161, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute drop table statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v162 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v325 = v159;
                      _os_log_impl(&dword_18565F000, v162, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute drop table statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v163 = 1;
                }

                else
                {
                  v163 = 4;
                }

                _NSCoreDataLog_console(v163, "  Execute drop table statement: %@", v159);
                objc_autoreleasePoolPop(v160);
              }

              [(NSSQLiteConnection *)v252 prepareAndExecuteSQLStatement:v159];
            }

            v156 = [v84 countByEnumeratingWithState:&v257 objects:v306 count:16];
          }

          while (v156);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v305[0] = @"Execute drop table statements";
        v305[1] = [MEMORY[0x1E696AD98] numberWithDouble:v164 - v155];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v305, 2), @"2.5"}];
        if (v251)
        {
          v165 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v166 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v166, OS_LOG_TYPE_ERROR, "CoreData: error: Execute create indexes statements\n", buf, 2u);
              }
            }

            else
            {
              v167 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v167, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute create indexes statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v168 = 1;
          }

          else
          {
            v168 = 4;
          }

          _NSCoreDataLog_console(v168, "Execute create indexes statements");
          objc_autoreleasePoolPop(v165);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v170 = v169;
        [(NSSQLiteConnection *)v252 _createIndexesForEntities:?];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v304[0] = @"Execute create indexes statements";
        v304[1] = [MEMORY[0x1E696AD98] numberWithDouble:v171 - v170];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v304, 2), @"2.6"}];
        if (v251)
        {
          v172 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v173 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v173, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v173, OS_LOG_TYPE_ERROR, "CoreData: error: Execute create trigger statements\n", buf, 2u);
              }
            }

            else
            {
              v174 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v174, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute create trigger statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v175 = 1;
          }

          else
          {
            v175 = 4;
          }

          _NSCoreDataLog_console(v175, "Execute create trigger statements");
          objc_autoreleasePoolPop(v172);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v177 = v176;
        v178 = [objc_msgSend(objc_msgSend(v252 "adapter")];
        if (v178)
        {
          v179 = *(v178 + 32);
        }

        else
        {
          v179 = 0;
        }

        [(NSSQLiteConnection *)v252 createTriggersForEntities:v179];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v303[0] = @"Execute create trigger statements";
        v303[1] = [MEMORY[0x1E696AD98] numberWithDouble:v180 - v177];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v303, 2), @"2.7"}];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v182 = v181;
        if (v251)
        {
          v183 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v184 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v184, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v184, OS_LOG_TYPE_ERROR, "CoreData: error: Updating metadata\n", buf, 2u);
              }
            }

            else
            {
              v185 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v185, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Updating metadata\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v186 = 1;
          }

          else
          {
            v186 = 4;
          }

          _NSCoreDataLog_console(v186, "Updating metadata");
          objc_autoreleasePoolPop(v183);
        }

        v187 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:-[NSSQLiteConnection fetchMetadata](v252)];
        if ((a2 & 1) != 0 || [v243 count] < 2)
        {
          [(__CFString *)v187 removeObjectForKey:@"NSPersistentStoreDeferredLightweightMigrationOptionKey"];
        }

        else
        {
          [(__CFString *)v187 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreDeferredLightweightMigrationOptionKey"];
        }

        [(NSSQLiteConnection *)v252 saveMetadata:v187];
        if (v251)
        {
          v188 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v189 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v189, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating metadata\n", buf, 2u);
              }
            }

            else
            {
              v190 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v190, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating metadata\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v191 = 1;
          }

          else
          {
            v191 = 4;
          }

          _NSCoreDataLog_console(v191, "Finished updating metadata");
          objc_autoreleasePoolPop(v188);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v193 = v192;
        v302[0] = @"Update store metadata";
        v302[1] = [MEMORY[0x1E696AD98] numberWithDouble:v192 - v182];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v302, 2), @"2.15"}];
        if (v251)
        {
          v194 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v195 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v195, OS_LOG_TYPE_ERROR, "CoreData: error: Committing formal transaction\n", buf, 2u);
              }
            }

            else
            {
              v196 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v196, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Committing formal transaction\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v197 = 1;
          }

          else
          {
            v197 = 4;
          }

          _NSCoreDataLog_console(v197, "Committing formal transaction");
          objc_autoreleasePoolPop(v194);
        }

        [(NSSQLiteConnection *)v252 commitTransaction];
        if (v251)
        {
          v198 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v199 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v199, OS_LOG_TYPE_ERROR, "CoreData: error: Finished committing formal transaction\n", buf, 2u);
              }
            }

            else
            {
              v200 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v200, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished committing formal transaction\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v201 = 1;
          }

          else
          {
            v201 = 4;
          }

          _NSCoreDataLog_console(v201, "Finished committing formal transaction");
          objc_autoreleasePoolPop(v198);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v203 = v202;
        v301[0] = @"Time for COMMIT";
        v301[1] = [MEMORY[0x1E696AD98] numberWithDouble:v202 - v193];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v301, 2), @"2.16"}];
        v300[0] = @"Total formal transaction time";
        v300[1] = [MEMORY[0x1E696AD98] numberWithDouble:v203 - v104];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v300, 2), @"2.0"}];
        if (v251)
        {
          v204 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v205 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v205, OS_LOG_TYPE_ERROR, "CoreData: error: Checkpointing WAL journal\n", buf, 2u);
              }
            }

            else
            {
              v206 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v206, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Checkpointing WAL journal\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v207 = 1;
          }

          else
          {
            v207 = 4;
          }

          _NSCoreDataLog_console(v207, "Checkpointing WAL journal");
          objc_autoreleasePoolPop(v204);
        }

        v208 = [(NSSQLiteConnection *)v252 copyRawIntegerRowsForSQL:?];
        if (v208)
        {
          CFRelease(v208);
        }

        v209 = v252[2];
        if (v209)
        {
          [*(v209 + 216) unlock];
        }

        if (v251)
        {
          v210 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v211 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v211, OS_LOG_TYPE_ERROR, "CoreData: error: Finished checkpointing WAL journal\n", buf, 2u);
              }
            }

            else
            {
              v212 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v212, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished checkpointing WAL journal\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v213 = 1;
          }

          else
          {
            v213 = 4;
          }

          _NSCoreDataLog_console(v213, "Finished checkpointing WAL journal");
          objc_autoreleasePoolPop(v210);
          v214 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v215 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v215, OS_LOG_TYPE_ERROR, "CoreData: error: Successfully completed deferred lightweight migration on connection\n", buf, 2u);
              }
            }

            else
            {
              v216 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v216, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Successfully completed deferred lightweight migration on connection\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v217 = 1;
          }

          else
          {
            v217 = 4;
          }

          _NSCoreDataLog_console(v217, "Successfully completed deferred lightweight migration on connection");
          objc_autoreleasePoolPop(v214);
          if ((v240 & 1) == 0)
          {
            goto LABEL_456;
          }

          v218 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v219 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v219, OS_LOG_TYPE_ERROR, "CoreData: error: Reset SQLite cache size\n", buf, 2u);
              }
            }

            else
            {
              v220 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v220, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Reset SQLite cache size\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v221 = 1;
          }

          else
          {
            v221 = 4;
          }

          _NSCoreDataLog_console(v221, "Reset SQLite cache size");
          objc_autoreleasePoolPop(v218);
        }

        else if ((v240 & 1) == 0)
        {
          goto LABEL_456;
        }

        [(NSSQLiteConnection *)v252 _executeSQLString:?];
LABEL_456:
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v223 = v222;
        v299[0] = @"Checkpoint time";
        v299[1] = [MEMORY[0x1E696AD98] numberWithDouble:v222 - v203];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v299, 2), @"3.0"}];
        v298[0] = @"Total migration time (on connection)";
        v298[1] = [MEMORY[0x1E696AD98] numberWithDouble:v223 - v32];
        [v246 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v298, 2), @"0.0"}];
        if (v251)
        {
          v224 = [objc_msgSend(v246 "allKeys")];
          v255 = 0u;
          v256 = 0u;
          v253 = 0u;
          v254 = 0u;
          v225 = [v224 countByEnumeratingWithState:&v253 objects:v297 count:16];
          if (v225)
          {
            v226 = *v254;
            do
            {
              for (nn = 0; nn != v225; ++nn)
              {
                if (*v254 != v226)
                {
                  objc_enumerationMutation(v224);
                }

                v228 = *(*(&v253 + 1) + 8 * nn);
                v229 = [v246 objectForKey:v228];
                v230 = [v229 firstObject];
                [objc_msgSend(v229 "lastObject")];
                v232 = v231;
                if (v231 > 0.01)
                {
                  v233 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v234 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        v325 = v228;
                        v326 = 2112;
                        v327 = v230;
                        v328 = 2048;
                        v329 = v232;
                        _os_log_error_impl(&dword_18565F000, v234, OS_LOG_TYPE_ERROR, "CoreData: error:     Deferred Migration step %@ '%@' took %2.2f seconds\n", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v235 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v325 = v228;
                        v326 = 2112;
                        v327 = v230;
                        v328 = 2048;
                        v329 = v232;
                        _os_log_impl(&dword_18565F000, v235, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:     Deferred Migration step %@ '%@' took %2.2f seconds\n", buf, 0x20u);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v236 = 1;
                  }

                  else
                  {
                    v236 = 4;
                  }

                  _NSCoreDataLog_console(v236, "    Deferred Migration step %@ '%@' took %2.2f seconds", v228, v230, *&v232);
                  objc_autoreleasePoolPop(v233);
                }
              }

              v225 = [v224 countByEnumeratingWithState:&v253 objects:v297 count:16];
            }

            while (v225);
          }
        }

        goto LABEL_476;
      }

      v37 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v38 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *v321 = 0;
            _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Increasing SQLite cache size to 148MB\n", v321, 2u);
          }
        }

        else
        {
          v39 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v321 = 0;
            _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Increasing SQLite cache size to 148MB\n", v321, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v40 = 1;
      }

      else
      {
        v40 = 4;
      }

      _NSCoreDataLog_console(v40, "Increasing SQLite cache size to 148MB");
      objc_autoreleasePoolPop(v37);
    }

    else if ((v240 & 1) == 0)
    {
      goto LABEL_107;
    }

    [(NSSQLiteConnection *)v252 _executeSQLString:?];
    if (!v251)
    {
      goto LABEL_107;
    }

    goto LABEL_96;
  }

  v242 = 0;
LABEL_483:
  v238 = *MEMORY[0x1E69E9840];
  return v242;
}

- (void)saveMetadata:(void *)a1
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_21;
  }

  v4 = a1[1];
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (([(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?]& 1) == 0)
  {
    [(NSSQLiteConnection *)a1 createMetadata];
  }

  if (([(__CFString *)a2 isNSDictionary]& 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = @"<null>";
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v30 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v32 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v30)
      {
        if (v32)
        {
          if (a2)
          {
            v39 = a2;
          }

          else
          {
            v39 = @"<null>";
          }

          *buf = 138412290;
          v44 = v39;
          goto LABEL_51;
        }
      }

      else if (v32)
      {
        if (a2)
        {
          v33 = a2;
        }

        else
        {
          v33 = @"<null>";
        }

        *buf = 138412290;
        v44 = v33;
LABEL_51:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: metadata is not a dictionary: %@\n", buf, 0xCu);
      }
    }

    if (a2)
    {
      v29 = a2;
    }

    _NSCoreDataLog_console(1, "metadata is not a dictionary: %@", v29);
    objc_autoreleasePoolPop(v28);
    v36 = *MEMORY[0x1E695D940];
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The metadata is not a dictionary: %@", v29, v41];
LABEL_55:
    v40 = [_NSCoreDataException exceptionWithName:v36 code:134030 reason:v38 userInfo:0];
    objc_exception_throw(v40);
  }

  v5 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"DELETE FROM %@ WHERE %@ = ?", @"Z_METADATA", @"Z_VERSION"));
  v6 = [NSSQLBindVariable alloc];
  v7 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v6, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithInt:1], 1, 0);
  [(NSSQLiteStatement *)v5 addBindVariable:v7];
  [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v5];

  v8 = [(__CFString *)a2 objectForKey:@"NSStoreUUID"];
  v9 = [(__CFString *)a2 mutableCopy];
  [v9 removeObjectForKey:@"NSStoreUUID"];
  v42 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v9 format:200 options:0 error:&v42];

  if (!v10 || ([(__CFString *)v10 isNSData]& 1) == 0)
  {

    v23 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v24 = _pflogging_catastrophic_mode;
      v25 = _PFLogGetLogStream(1);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        if (v26)
        {
          v34 = @"<null>";
          if (v10)
          {
            v34 = v10;
          }

          *buf = 138412290;
          v44 = v34;
          goto LABEL_39;
        }
      }

      else if (v26)
      {
        v27 = @"<null>";
        if (v10)
        {
          v27 = v10;
        }

        *buf = 138412290;
        v44 = v27;
LABEL_39:
        _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: failure writing metadata plist with data bytes: %@\n", buf, 0xCu);
      }
    }

    if (v10)
    {
      v35 = v10;
    }

    else
    {
      v35 = @"<null>";
    }

    _NSCoreDataLog_console(1, "failure writing metadata plist with data bytes: %@", v35);
    objc_autoreleasePoolPop(v23);
    v36 = *MEMORY[0x1E695D940];
    v37 = v42;
    if (!v42)
    {
      v37 = @"<null>";
    }

    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An error %@ occurred converting the metadata plist data: %@", v37, v35];
    goto LABEL_55;
  }

  v11 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"INSERT INTO %@ (%@, %@, %@) VALUES (?, ?, ?)", @"Z_METADATA", @"Z_VERSION", @"Z_UUID", @"Z_PLIST"));
  v12 = [[NSSQLBindVariable alloc] initWithValue:v8 sqlType:6 propertyDescription:0];
  v13 = [[NSSQLBindVariable alloc] initWithValue:v10 sqlType:10 propertyDescription:0];
  [(NSSQLiteStatement *)v11 addBindVariable:v7];
  [(NSSQLiteStatement *)v11 addBindVariable:v12];
  [(NSSQLiteStatement *)v11 addBindVariable:v13];
  [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v11];
  if (+[NSSQLCore debugDefault]>= 2)
  {
    v14 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v15 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = [(NSSQLBindVariable *)v7 value];
          *buf = 138412546;
          v44 = v16;
          v45 = 2112;
          v46 = v8;
          _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Saving new meta data; version = %@ ; UUID = %@\n", buf, 0x16u);
        }
      }

      else
      {
        v17 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(NSSQLBindVariable *)v7 value];
          *buf = 138412546;
          v44 = v18;
          v45 = 2112;
          v46 = v8;
          _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Saving new meta data; version = %@ ; UUID = %@\n", buf, 0x16u);
        }
      }
    }

    v19 = _pflogging_catastrophic_mode;
    v20 = [(NSSQLBindVariable *)v7 value];
    v21 = 4;
    if (v19)
    {
      v21 = 1;
    }

    _NSCoreDataLog_console(v21, "Saving new meta data; version = %@ ; UUID = %@", v20, v8);
    objc_autoreleasePoolPop(v14);
  }

LABEL_21:
  v22 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_dropTableWithName:(uint64_t)result
{
  v9 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = 0;
    for (i = 3; (v5 & 1) == 0 && (i & 0x80000000) == 0; --i)
    {
      [(NSSQLiteConnection *)v3 connect];
      if (*(v3 + 72))
      {
        [(NSSQLiteConnection *)v3 beginTransaction];
        v5 = 1;
        -[NSSQLiteConnection _executeSQLString:](v3, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", a2]);
        [(NSSQLiteConnection *)v3 commitTransaction];
      }

      else
      {
        v5 = 0;
      }

      [(NSSQLiteConnection *)v3 endFetchAndRecycleStatement:?];
    }

    result = v8;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_setSaveRequest:(id *)result
{
  if (result)
  {
    v3 = result;

    result = a2;
    v3[24] = result;
  }

  return result;
}

- (id)fetchCachedModel
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_24;
  }

  v1 = result;
  v2 = *(result + 1);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@", @"Z_CONTENT", @"Z_MODELCACHE"];
  if (![(NSSQLiteConnection *)v1 _hasTableWithName:0 isTemp:?])
  {
    result = 0;
    goto LABEL_24;
  }

  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = -[NSSQLiteAdapter newStatementWithSQLString:]([v1 adapter], v3);
  [(NSSQLiteConnection *)v1 prepareSQLStatement:v5];
  [v1 execute];
  v21 = [[NSSQLColumn alloc] initWithColumnName:@"Z_CONTENT" sqlType:10];
  -[NSSQLiteConnection setColumnsToFetch:](v1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1]);
  v6 = [(NSSQLiteConnection *)v1 newFetchedArray];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v15 = 0;
    goto LABEL_23;
  }

  v8 = [v7 objectAtIndex:0];
  if (v8 == NSKeyValueCoding_NullValue || (v9 = [v7 objectAtIndex:0], (v10 = v9) == 0))
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v11 = [v9 length];
  if (!v11)
  {
    goto LABEL_22;
  }

  memset(&stream, 0, sizeof(stream));
  if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
  {
    v18 = @"Could not initialize compression decoder.";
LABEL_26:
    v19 = [_NSCoreDataException exceptionWithName:134060 code:v18 reason:0 userInfo:?];
    objc_exception_throw(v19);
  }

  v12 = [MEMORY[0x1E695DF88] data];
  stream.src_ptr = [v10 bytes];
  stream.src_size = [v10 length];
  do
  {
    stream.dst_ptr = v22;
    stream.dst_size = 1024;
    v13 = compression_stream_process(&stream, 1);
    if (v13 > COMPRESSION_STATUS_END)
    {
      compression_stream_destroy(&stream);
      v18 = @"Failed to decompress model cache.";
      goto LABEL_26;
    }

    if (stream.dst_size != 1024)
    {
      [v12 appendBytes:v22 length:1024 - stream.dst_size];
    }
  }

  while (v13 == COMPRESSION_STATUS_OK);
  compression_stream_destroy(&stream);
  if (!v12)
  {
    goto LABEL_21;
  }

  v11 = [v12 length];
  if (v11)
  {
    v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v11 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v14 fromData:v12 error:0];
  }

LABEL_22:
  v15 = v11;
LABEL_23:

  [(NSSQLiteConnection *)v1 releaseSQLStatement];
  [(NSSQLiteConnection *)v1 setColumnsToFetch:?];
  *(v1 + 312) &= ~2u;
  *(v1 + 100) = 0;
  *(v1 + 92) = 0;
  *(v1 + 108) = 0;

  [v4 drain];
  v16 = 0;
  result = v15;
LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)saveCachedModel:(uint64_t)result
{
  v25 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (([(NSSQLiteConnection *)v3 _hasTableWithName:0 isTemp:?]& 1) != 0)
    {
      v6 = -[NSSQLiteAdapter newStatementWithSQLString:]([v3 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"DELETE FROM %@", @"Z_MODELCACHE"));
    }

    else
    {
      v6 = -[NSSQLiteAdapter newStatementWithSQLString:]([v3 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TABLE %@ (%@ BLOB)", @"Z_MODELCACHE", @"Z_CONTENT"));
    }

    [(NSSQLiteConnection *)v3 prepareAndExecuteSQLStatement:v6];

    v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
    v9 = v8;
    if (v8 && [v8 length])
    {
      memset(&stream, 0, sizeof(stream));
      if (compression_stream_init(&stream, COMPRESSION_STREAM_ENCODE, COMPRESSION_ZLIB))
      {
        v21 = @"Could not initialize compression encoder.";
      }

      else
      {
        v10 = [MEMORY[0x1E695DF88] data];
        stream.src_ptr = [v9 bytes];
        stream.src_size = [v9 length];
        while (1)
        {
          stream.dst_ptr = buf;
          stream.dst_size = 1024;
          v11 = compression_stream_process(&stream, 1);
          if (v11 > COMPRESSION_STATUS_END)
          {
            break;
          }

          if (stream.dst_size != 1024)
          {
            [v10 appendBytes:buf length:1024 - stream.dst_size];
          }

          if (v11)
          {
            compression_stream_destroy(&stream);
            goto LABEL_17;
          }
        }

        compression_stream_destroy(&stream);
        v21 = @"Failed to decompress model cache.";
      }

      v22 = [_NSCoreDataException exceptionWithName:134060 code:v21 reason:0 userInfo:?];
      objc_exception_throw(v22);
    }

    v10 = 0;
LABEL_17:
    v12 = v10;
    [v7 drain];
    v13 = v10;
    if (v13)
    {
      v14 = -[NSSQLiteAdapter newStatementWithSQLString:]([v3 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"INSERT INTO %@ (%@) VALUES (?)", @"Z_MODELCACHE", @"Z_CONTENT"));
      v15 = [[NSSQLBindVariable alloc] initWithValue:v13 sqlType:10 propertyDescription:0];
      [(NSSQLiteStatement *)v14 addBindVariable:v15];
      [(NSSQLiteConnection *)v3 prepareAndExecuteSQLStatement:v14];
      if (+[NSSQLCore debugDefault]>= 2)
      {
        v16 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Saving new model cache\n", buf, 2u);
            }
          }

          else
          {
            v18 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Saving new model cache\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v19 = 1;
        }

        else
        {
          v19 = 4;
        }

        _NSCoreDataLog_console(v19, "Saving new model cache");
        objc_autoreleasePoolPop(v16);
      }
    }

    result = [v5 drain];
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

- (sqlite3_int64)generatePrimaryKeysForEntity:(unsigned int)a3 batch:
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v54 = 0;
    goto LABEL_99;
  }

  v5 = a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if ((*(v5 + 40) & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"primary keys must be generated within a transaction" userInfo:0]);
  }

  if (a2)
  {
    v7 = *(a2 + 184);
  }

  else
  {
    v7 = 0;
  }

  v9 = (v5 + 112);
  v8 = *(v5 + 112);
  p_vtable = NSSQLStoreRequestContext.vtable;
  if (!v8)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT"];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v12 = *(v5 + 42);
      v13 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      if (_pflogging_enable_oslog > 0)
      {
        v15 = IsLogEnabled;
      }

      else
      {
        v15 = 0;
      }

      if (v12 == 1)
      {
        if (v15)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v19 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          v18 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }

        else
        {
          v18 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }
      }

      else if (v15)
      {
        if (_pflogging_catastrophic_mode)
        {
          v17 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v20 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }

        v18 = "%@";
      }

      else
      {
        v18 = "%@";
      }

      if (_pflogging_catastrophic_mode)
      {
        v21 = 1;
      }

      else
      {
        v21 = 6;
      }

      _NSCoreDataLog_console(v21, v18, v11);
      objc_autoreleasePoolPop(v13);
    }

    pzTail = 0;
    v22 = [v11 UTF8String];
    v23 = v11;
    [(NSSQLiteConnection *)v5 _ensureDatabaseOpen];
    v24 = sqlite3_prepare_v3(*(v5 + 72), v22, -1, 1u, (v5 + 112), &pzTail);
    if (!v24)
    {
      v8 = *v9;
      goto LABEL_35;
    }

    v75 = v24;
    v76 = sqlite3_errmsg(*(v5 + 72));
    if (+[NSSQLCore debugDefault]< 1)
    {
LABEL_126:
      *v9 = 0;
      v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
      v70 = *MEMORY[0x1E695D930];
      v83 = MEMORY[0x1E695DF20];
      v84 = MEMORY[0x1E696AD98];
      v85 = v75;
      goto LABEL_127;
    }

    v77 = *(v5 + 42);
    v78 = objc_autoreleasePoolPush();
    IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
    if (v77 == 1)
    {
      if (IsOSLogEnabled)
      {
        v80 = _pflogging_catastrophic_mode;
        v81 = _PFLogGetLogStream(1);
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
        if (v80)
        {
          if (v82)
          {
LABEL_120:
            *buf = 67109378;
            *&buf[4] = v75;
            *&buf[8] = 2080;
            *&buf[10] = v76;
            _os_log_error_impl(&dword_18565F000, v81, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
          }
        }

        else if (v82)
        {
          goto LABEL_120;
        }
      }

      _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_125:
      objc_autoreleasePoolPop(v78);
      goto LABEL_126;
    }

    if (IsOSLogEnabled)
    {
      v86 = _pflogging_catastrophic_mode;
      v87 = _PFLogGetLogStream(1);
      v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
      if (v86)
      {
        if (v88)
        {
LABEL_123:
          *buf = 67109378;
          *&buf[4] = v75;
          *&buf[8] = 2080;
          *&buf[10] = v76;
          _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
        }
      }

      else if (v88)
      {
        goto LABEL_123;
      }
    }

    _NSCoreDataLog_console(1, "(%d) %s");
    goto LABEL_125;
  }

LABEL_35:
  sqlite3_bind_int(v8, 1, v7);
  if (+[NSSQLCore debugDefault]>= 2)
  {
    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v26 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: getting max pk for entityID = %u\n", buf, 8u);
        }
      }

      else
      {
        v27 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: getting max pk for entityID = %u\n", buf, 8u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v28 = 1;
    }

    else
    {
      v28 = 4;
    }

    _NSCoreDataLog_console(v28, "getting max pk for entityID = %u", v7);
    objc_autoreleasePoolPop(v25);
  }

  v29 = sqlite3_step(*v9);
  if (v29 == 100)
  {
    v31 = sqlite3_column_int64(*v9, 0);
  }

  else
  {
    v30 = v29;
    v90 = (v5 + 112);
    if (v29 != 101)
    {
      sqlite3_reset(*v90);
      sqlite3_clear_bindings(*v90);
      v74 = *MEMORY[0x1E695D930];
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v30), @"NSSQLiteErrorDomain"}];
      v68 = @"Fetching maximum primary key failed";
      v67 = v74;
      goto LABEL_129;
    }

    v31 = [(NSSQLiteConnection *)v5 fetchMaxPrimaryKeyForEntity:a2];
    v32 = MEMORY[0x1E696AEC0];
    v33 = [a2 name];
    if (a2)
    {
      v34 = *(a2 + 160);
      if (v34)
      {
        v34 = *(v34 + 184);
      }
    }

    else
    {
      v34 = 0;
    }

    v9 = (v5 + 112);
    -[NSSQLiteConnection _executeSQLString:](v5, [v32 stringWithFormat:@"INSERT INTO %@(%@, %@, %@, %@) VALUES(%u, '%@', %u, %qd)", @"Z_PRIMARYKEY", @"Z_ENT", @"Z_NAME", @"Z_SUPER", @"Z_MAX", v7, v33, v34, v31]);
    p_vtable = (NSSQLStoreRequestContext + 24);
  }

  v35 = sqlite3_reset(*v9);
  sqlite3_clear_bindings(*v9);
  if (v35)
  {
    goto LABEL_114;
  }

  v36 = (v5 + 120);
  if (*(v5 + 120))
  {
    goto LABEL_83;
  }

  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = ? WHERE %@ = ? AND %@ = ?", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_ENT", @"Z_MAX"];
  if ([p_vtable + 447 debugDefault] < 1)
  {
    goto LABEL_82;
  }

  v38 = *(v5 + 42);
  v39 = objc_autoreleasePoolPush();
  _pflogInitialize(6);
  v40 = _NSCoreDataIsLogEnabled(6);
  if (_pflogging_enable_oslog > 0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v38 == 1)
  {
    if (v41)
    {
      v42 = a2;
      v43 = v5;
      if (_pflogging_catastrophic_mode)
      {
        v44 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v37;
          _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
        }
      }

      else
      {
        v47 = _PFLogGetLogStream(6);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v37;
          _os_log_impl(&dword_18565F000, v47, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
        }
      }

      v46 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
LABEL_77:
      v5 = v43;
      a2 = v42;
      goto LABEL_78;
    }

    v46 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
  }

  else
  {
    if (v41)
    {
      v42 = a2;
      v43 = v5;
      if (_pflogging_catastrophic_mode)
      {
        v45 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v37;
          _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v48 = _PFLogGetLogStream(6);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v37;
          _os_log_impl(&dword_18565F000, v48, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
        }
      }

      v46 = "%@";
      goto LABEL_77;
    }

    v46 = "%@";
  }

LABEL_78:
  if (_pflogging_catastrophic_mode)
  {
    v49 = 1;
  }

  else
  {
    v49 = 6;
  }

  _NSCoreDataLog_console(v49, v46, v37);
  objc_autoreleasePoolPop(v39);
LABEL_82:
  *buf = 0;
  v50 = [v37 UTF8String];
  v51 = v37;
  [(NSSQLiteConnection *)v5 _ensureDatabaseOpen];
  v52 = sqlite3_prepare_v3(*(v5 + 72), v50, -1, 1u, v36, buf);
  if (v52)
  {
    v35 = v52;
    *(v5 + 120) = 0;
LABEL_114:
    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v5 + 72))];
    v70 = *MEMORY[0x1E695D930];
    v83 = MEMORY[0x1E695DF20];
    v84 = MEMORY[0x1E696AD98];
    v85 = v35;
LABEL_127:
    v72 = [v84 numberWithInt:v85];
    v73 = v83;
    goto LABEL_128;
  }

LABEL_83:
  v53 = v31;
  if (v31 == -1)
  {
    v53 = [(NSSQLiteConnection *)v5 fetchMaxPrimaryKeyForEntity:a2];
  }

  v54 = v53 + a3;
  sqlite3_bind_int64(*v36, 1, v54);
  sqlite3_bind_int(*v36, 2, v7);
  sqlite3_bind_int64(*v36, 3, v31);
  if ([p_vtable + 447 debugDefault] >= 2)
  {
    v55 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v56 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *&buf[4] = v7;
          *&buf[8] = 2048;
          *&buf[10] = v31;
          v93 = 2048;
          v94 = v54;
          _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: updating max pk for entityID = %u with old = %qd and new = %qd\n", buf, 0x1Cu);
        }
      }

      else
      {
        v57 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v7;
          *&buf[8] = 2048;
          *&buf[10] = v31;
          v93 = 2048;
          v94 = v54;
          _os_log_impl(&dword_18565F000, v57, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: updating max pk for entityID = %u with old = %qd and new = %qd\n", buf, 0x1Cu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v58 = 1;
    }

    else
    {
      v58 = 4;
    }

    _NSCoreDataLog_console(v58, "updating max pk for entityID = %u with old = %qd and new = %qd", v7, v31, v54);
    objc_autoreleasePoolPop(v55);
  }

  v59 = sqlite3_step(*v36);
  v60 = sqlite3_reset(*v36);
  sqlite3_clear_bindings(*v36);
  if (v59 != 101)
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v5 + 72))];
    v64 = *MEMORY[0x1E695D930];
    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Updating max pk failed: %@", v63];
    v66 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v59), @"NSSQLiteErrorDomain"}];
    v67 = v64;
    v68 = v65;
    goto LABEL_129;
  }

  if (v60)
  {
    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v5 + 72))];
    v70 = *MEMORY[0x1E695D930];
    v71 = MEMORY[0x1E695DF20];
    v72 = [MEMORY[0x1E696AD98] numberWithInt:v60];
    v73 = v71;
LABEL_128:
    v66 = [v73 dictionaryWithObject:v72 forKey:@"NSSQLiteErrorDomain"];
    v67 = v70;
    v68 = v69;
LABEL_129:
    v89 = [_NSCoreDataException exceptionWithName:v67 code:134030 reason:v68 userInfo:v66];
    objc_exception_throw(v89);
  }

LABEL_99:
  v61 = *MEMORY[0x1E69E9840];
  return v54;
}

- (void)didCreateSchema
{
  if ((a1[312] & 0x40) != 0)
  {
    v3 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], @"pragma journal_mode=wal");
    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v3];
  }
}

- (uint64_t)recreateIndices
{
  v37 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    if (+[NSSQLCore debugDefault]>= 1)
    {
      v3 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: re-adding all missing indices\n", buf, 2u);
          }
        }

        else
        {
          v5 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: re-adding all missing indices\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      _NSCoreDataLog_console(v6, "re-adding all missing indices");
      objc_autoreleasePoolPop(v3);
    }

    v7 = [v1[2] model];
    v8 = [(NSSQLiteConnection *)v1 fetchCreationSQLForType:0 containing:?];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __37__NSSQLiteConnection_recreateIndices__block_invoke;
    v33[3] = &unk_1E6EC3F98;
    v33[4] = v9;
    [v8 enumerateObjectsUsingBlock:v33];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    if (v7)
    {
      v7 = v7[4];
    }

    v10 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v10)
    {
      obj = v7;
      v22 = *v30;
      do
      {
        v11 = 0;
        v23 = v10;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          v13 = [v1 adapter];
          if (v13)
          {
            v14 = [(NSSQLiteAdapter *)v13 newCreateIndexStatementsForEntity:v12 defaultIndicesOnly:0];
          }

          else
          {
            v14 = 0;
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
          v24 = v11;
          if (v15)
          {
            v16 = *v26;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v25 + 1) + 8 * i);
                if (([v9 containsObject:{objc_msgSend(objc_msgSend(v18, "sqlString"), "stringByReplacingOccurrencesOfString:withString:", @"IF NOT EXISTS ", &stru_1EF3F1768)}] & 1) == 0)
                {
                  [(NSSQLiteConnection *)v1 beginTransaction];
                  [(NSSQLiteConnection *)v1 prepareAndExecuteSQLStatement:v18];
                  [(NSSQLiteConnection *)v1 commitTransaction];
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
            }

            while (v15);
          }

          v11 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v19 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
        v10 = v19;
      }

      while (v19);
    }

    [(NSSQLiteConnection *)v1 endFetchAndRecycleStatement:?];

    if (v10)
    {
      objc_exception_rethrow();
    }

    result = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __37__NSSQLiteConnection_recreateIndices__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result == 2)
  {
    v5 = *(a1 + 32);
    v6 = [a2 objectAtIndexedSubscript:1];

    return [v5 addObject:v6];
  }

  return result;
}

- (void)scheduleWALCheckpointAfter:(double)a3 retry:
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3052000000;
    v9[3] = __Block_byref_object_copy__30;
    v9[4] = __Block_byref_object_dispose__30;
    v9[5] = a1;
    if (!*(a1 + 360))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__NSSQLiteConnection_scheduleWALCheckpointAfter_retry___block_invoke;
      block[3] = &unk_1E6EC3FC0;
      block[4] = v9;
      block[5] = a2;
      *&block[6] = a3;
      *(a1 + 360) = dispatch_block_create(0, block);
      v7 = dispatch_time(0, (a3 * 1000000000.0));
      dispatch_after(v7, *(a1 + 8), *(a1 + 360));
    }

    _Block_object_dispose(v9, 8);
  }
}

uint64_t __55__NSSQLiteConnection_scheduleWALCheckpointAfter_retry___block_invoke(uint64_t a1)
{
  _Block_release(*(*(*(*(a1 + 32) + 8) + 40) + 360));
  *(*(*(*(a1 + 32) + 8) + 40) + 360) = 0;
  v2 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: WAL checkpoint"];
  if (readFileSizeFromJournalHandle(*(*(*(*(a1 + 32) + 8) + 40) + 72)) > 0x800000)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (v3)
    {
      if ([(NSSQLiteConnection *)v3 _walCheckpointWithMode:?]- 5 <= 1)
      {
        v4 = *(a1 + 40);
        if (v4)
        {
          [(NSSQLiteConnection *)*(*(*(a1 + 32) + 8) + 40) scheduleWALCheckpointAfter:*(a1 + 48) retry:?];
        }
      }
    }
  }

  return [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v2];
}

- (uint64_t)hasIndexTrackingTable
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1E696AEC0];
    v3 = objc_opt_class();
    v4 = [v2 stringWithFormat:@"A%@", -[NSString uppercaseString](NSStringFromClass(v3), "uppercaseString")];

    return [(NSSQLiteConnection *)v1 _hasTableWithName:v4 isTemp:0];
  }

  return result;
}

- (void)dropIndexTrackingTable
{
  if (a1)
  {
    v2 = [a1 adapter];
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = [v3 stringWithFormat:@"A%@", -[NSString uppercaseString](NSStringFromClass(v4), "uppercaseString")];
    v6 = [(NSSQLiteAdapter *)v2 newDropTableStatementForTableNamed:v5];
    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v6];
  }
}

- (void)prepareInsertStatementForAncillaryEntity:(uint64_t)a1
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [(NSSQLiteConnection *)a1 statementCacheForEntity:a2];
  v5 = v4;
  if (v4)
  {
    insertStatementCache = v4->_insertStatementCache;
    if (insertStatementCache)
    {
      cachedSQLiteStatement = insertStatementCache->_cachedSQLiteStatement;
      if (cachedSQLiteStatement)
      {
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v8 = *(a1 + 42);
          v9 = objc_autoreleasePoolPush();
          _pflogInitialize(6);
          IsLogEnabled = _NSCoreDataIsLogEnabled(6);
          if (_pflogging_enable_oslog > 0)
          {
            v11 = IsLogEnabled;
          }

          else
          {
            v11 = 0;
          }

          if (v8 == 1)
          {
            if (v11)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v31 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }

              else
              {
                v21 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v31 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v21, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }
            }

            v22 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
          }

          else
          {
            if (v11)
            {
              if (_pflogging_catastrophic_mode)
              {
                v20 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v31 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v23 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v31 = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v23, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
                }
              }
            }

            v22 = "%@";
          }

          v24 = _pflogging_catastrophic_mode;
          v25 = [(NSSQLiteStatement *)insertStatementCache sqlString];
          v26 = 6;
          if (v24)
          {
            v26 = 1;
          }

          _NSCoreDataLog_console(v26, v22, v25);
          objc_autoreleasePoolPop(v9);
        }

        *(a1 + 48) = insertStatementCache;
        *(a1 + 80) = cachedSQLiteStatement;
        v27 = insertStatementCache;
        v28 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  v13 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a1 "adapter")];
  v29 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow a2)];
  v14 = -[NSSQLiteAdapter newStatementWithEntity:]([a1 adapter], a2);
  v15 = -[NSSQLiteAdapter newGeneratorWithStatement:]([a1 adapter], v14);
  v16 = [a2 name];
  if (v15)
  {
    [(_NSSQLGenerator *)v15 prepareInsertStatementWithRow:v29 includeConstraints:v16 == @"TRANSACTIONSTRING" includeOnConflict:0 onConflictKeys:NSArray_EmptyArray];
    v17 = v15[3];
    if (v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
    if (v14)
    {
LABEL_15:
      v18 = v14[4];
      if (v18 != v17)
      {

        v14[4] = [v17 copy];
      }
    }
  }

  [(NSSQLiteConnection *)a1 prepareSQLStatement:v14];
  [(NSSQLiteStatement *)*(a1 + 48) setCachedSQLiteStatement:a1 forConnection:?];
  [(NSSQLiteStatementCache *)v5 cacheInsertStatement:?];
  [(NSSQLiteConnection *)a1 addVMCachedStatement:?];

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasHistoryRows
{
  if (result)
  {
    return [(NSSQLiteConnection *)result _tableHasRows:?];
  }

  return result;
}

- (BOOL)_tableHasRows:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT count(*) FROM (SELECT 0 FROM %@ LIMIT 1)", a2];
  v4 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:v3];
  v5 = v4;
  if (v4)
  {
    v6 = CFArrayGetCount(v4) >= 1 && *CFArrayGetValueAtIndex(v5, 0) && *CFArrayGetValueAtIndex(v5, 1) > 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_dropKnownHistoryTrackingTables
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v17[0] = @"CHANGE";
    v17[1] = @"TRANSACTION";
    v17[2] = @"TRANSACTIONSTRING";
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    result = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v13;
      do
      {
        v4 = 0;
        do
        {
          if (*v13 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v12 + 1) + 8 * v4);
          v6 = [v1 adapter];
          v7 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:](v6, [MEMORY[0x1E696AEC0] stringWithFormat:@"A%@", v5]);
          [(NSSQLiteConnection *)v1 prepareAndExecuteSQLStatement:v7];

          v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ set %@=0 where %@ = '%@'", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_NAME", v5];
          v9 = -[NSSQLiteAdapter newStatementWithSQLString:]([v1 adapter], v8);

          [(NSSQLiteConnection *)v1 prepareAndExecuteSQLStatement:v9];
          ++v4;
        }

        while (v2 != v4);
        result = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)processSaveRequest:(sqlite3_int64)a1
{
  v213 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_252;
  }

  if (!a2)
  {
    obj = [(NSSQLSavePlan *)0 newInsertedRows];
    goto LABEL_244;
  }

  v2 = *(a2 + 96);
  obj = [(NSSQLSavePlan *)v2 newInsertedRows];
  if (!v2)
  {
LABEL_244:
    v137 = 0;
    v138 = 0;
    v157 = 0;
    goto LABEL_5;
  }

  v157 = [v2[6] mutableCopy];
  v137 = [v2[7] mutableCopy];
  v138 = v2[5];
LABEL_5:
  v133 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if (![obj count])
  {
    goto LABEL_28;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v4 = [obj countByEnumeratingWithState:&v170 objects:v201 count:16];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = *v171;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v171 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v170 + 1) + 8 * i);
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = [*(v8 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v9 = 0;
      }

      if ([v9 count])
      {
        v10 = *(a1 + 16);
        if (v10)
        {
          v11 = [*(v10 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
          if (v7)
          {
            goto LABEL_16;
          }

LABEL_20:
          v13 = 0;
        }

        else
        {
          v11 = 0;
          if (!v7)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (*(v7 + 16))
          {
            goto LABEL_20;
          }

          v12 = atomic_load((v7 + 40));
          v13 = [*(v12 + 16) _storeInfo1];
        }

        if ([v11 containsObject:{objc_msgSend(v13, "name")}])
        {
          continue;
        }
      }

      [v3 addObject:v7];
    }

    v4 = [obj countByEnumeratingWithState:&v170 objects:v201 count:16];
  }

  while (v4);
LABEL_25:
  if ([v3 count])
  {
    [v133 setValue:v3 forKey:@"inserted"];
  }

LABEL_28:
  if ([v157 count])
  {
    v135 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v157, "count")}];
    v153 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v150 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (a2)
    {
      v14 = *(a2 + 96);
    }

    else
    {
      v14 = 0;
    }

    v139 = [(NSSQLSavePlan *)v14 newCorrelationTableUpdates];
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    v15 = [v139 countByEnumeratingWithState:&v194 objects:v212 count:16];
    if (v15)
    {
      v16 = *v195;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v195 != v16)
          {
            objc_enumerationMutation(v139);
          }

          v18 = *(*(&v194 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          if (v18)
          {
            if (v18[2])
            {
              v193[0] = MEMORY[0x1E69E9820];
              v193[1] = 3221225472;
              v193[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke;
              v193[3] = &unk_1E6EC3FE8;
              v193[4] = a1;
              v193[5] = v153;
              v193[6] = v18;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateInsertsOIDsUsingBlock:v193];
            }

            if (v18[5])
            {
              v192[0] = MEMORY[0x1E69E9820];
              v192[1] = 3221225472;
              v192[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_2;
              v192[3] = &unk_1E6EC4010;
              v192[4] = a1;
              v192[5] = v153;
              v192[6] = v18;
              v192[7] = v150;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateReordersOIDsUsingBlock:v192];
            }

            if (v18[4])
            {
              v191[0] = MEMORY[0x1E69E9820];
              v191[1] = 3221225472;
              v191[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_3;
              v191[3] = &unk_1E6EC4010;
              v191[4] = a1;
              v191[5] = v153;
              v191[6] = v18;
              v191[7] = v150;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateMasterReordersOIDsUsingBlock:v191];
            }

            if (v18[3])
            {
              v190[0] = MEMORY[0x1E69E9820];
              v190[1] = 3221225472;
              v190[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_4;
              v190[3] = &unk_1E6EC3FE8;
              v190[4] = a1;
              v190[5] = v153;
              v190[6] = v18;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateDeletesOIDsUsingBlock:v190];
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v139 countByEnumeratingWithState:&v194 objects:v212 count:16];
      }

      while (v15);
    }

    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    if (a2 && (v20 = *(a2 + 96)) != 0)
    {
      v21 = *(v20 + 128);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v21 countByEnumeratingWithState:&v186 objects:v211 count:16];
    if (v22)
    {
      v23 = *v187;
      do
      {
        v24 = 0;
        do
        {
          if (*v187 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v186 + 1) + 8 * v24);
          v26 = objc_autoreleasePoolPush();
          v27 = [v153 objectForKey:v25];
          if (a2 && (v28 = *(a2 + 96)) != 0)
          {
            v29 = *(v28 + 128);
          }

          else
          {
            v29 = 0;
          }

          v30 = [v29 objectForKey:v25];
          if (v27)
          {
            [v27 unionSet:v30];
          }

          else
          {
            [v153 setValue:v30 forKey:v25];
          }

          objc_autoreleasePoolPop(v26);
          ++v24;
        }

        while (v22 != v24);
        v31 = [v21 countByEnumeratingWithState:&v186 objects:v211 count:16];
        v22 = v31;
      }

      while (v31);
    }

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v32 = [v153 countByEnumeratingWithState:&v182 objects:&v207 count:16];
    if (v32)
    {
      v33 = *v183;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v183 != v33)
          {
            objc_enumerationMutation(v153);
          }

          v35 = *(*(&v182 + 1) + 8 * k);
          v36 = objc_autoreleasePoolPush();
          v37 = _sqlEntityForEntityID([*(a1 + 16) model], objc_msgSend(objc_msgSend(objc_msgSend(v35, "componentsSeparatedByString:", @"-"), "firstObject"), "longLongValue"));
          v38 = +[_NSPersistentHistoryChange _propertyDataForEntity:withSetOfPropertyNames:](_NSPersistentHistoryChange, v37, [v153 objectForKey:v35]);
          [(NSSQLSaveChangesRequestContext *)a2 addDataMask:v38 forEntityKey:v35];

          objc_autoreleasePoolPop(v36);
        }

        v32 = [v153 countByEnumeratingWithState:&v182 objects:&v207 count:16];
      }

      while (v32);
    }

    if ([v150 count])
    {
      v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v150, "count")}];
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v40 = [v150 countByEnumeratingWithState:&v178 objects:&v203 count:16];
      if (!v40)
      {
        goto LABEL_103;
      }

      v144 = v40;
      v134 = v39;
      v141 = *v179;
      while (1)
      {
        for (m = 0; m != v144; m = m + 1)
        {
          if (*v179 != v141)
          {
            objc_enumerationMutation(v150);
          }

          v41 = *(*(&v178 + 1) + 8 * m);
          context = objc_autoreleasePoolPush();
          v42 = [v41 componentsSeparatedByString:@"-"];
          v43 = _sqlEntityForEntityID([*(a1 + 16) model], objc_msgSend(objc_msgSend(v42, "firstObject"), "longLongValue"));
          v44 = [v150 objectForKey:v41];
          if (a2 && [*(a2 + 144) objectForKey:v41])
          {
            v44 = [MEMORY[0x1E695DFA8] setWithSet:v44];
            [v44 addObjectsFromArray:{objc_msgSend(objc_msgSend(v153, "objectForKey:", v41), "allObjects")}];
          }

          v45 = [_NSPersistentHistoryChange _propertyDataForEntity:v43 withSetOfPropertyNames:v44];
          [(NSSQLSaveChangesRequestContext *)a2 addDataMask:v45 forEntityKey:v41];

          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v46 = [v157 countByEnumeratingWithState:&v174 objects:v202 count:16];
          if (!v46)
          {
            goto LABEL_97;
          }

          v47 = *v175;
          do
          {
            v48 = 0;
            do
            {
              if (*v175 != v47)
              {
                objc_enumerationMutation(v157);
              }

              v49 = *(*(&v174 + 1) + 8 * v48);
              if (v49 && (v50 = atomic_load(v49 + 5), (v51 = [*(v50 + 16) _storeInfo1]) != 0))
              {
                v52 = *(v51 + 184);
                if (!v43)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                v52 = 0;
                if (!v43)
                {
LABEL_95:
                  v53 = 0;
                  goto LABEL_90;
                }
              }

              v53 = v43[46];
LABEL_90:
              if (v52 == v53)
              {
                v54 = [objc_msgSend(v49 "objectID")];
                if (v54 == [objc_msgSend(v42 "lastObject")])
                {
                  goto LABEL_98;
                }
              }

              ++v48;
            }

            while (v46 != v48);
            v55 = [v157 countByEnumeratingWithState:&v174 objects:v202 count:16];
            v46 = v55;
          }

          while (v55);
LABEL_97:
          [v134 setValue:v44 forKey:v41];
LABEL_98:
          objc_autoreleasePoolPop(context);
        }

        v144 = [v150 countByEnumeratingWithState:&v178 objects:&v203 count:16];
        if (!v144)
        {
          v39 = v134;
          goto LABEL_103;
        }
      }
    }

    v39 = 0;
LABEL_103:

    if (![v39 count])
    {

      v39 = 0;
    }

    v154 = v39;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v56 = [v157 countByEnumeratingWithState:&v166 objects:v200 count:16];
    if (v56)
    {
      v57 = *v167;
      do
      {
        v58 = 0;
        do
        {
          if (*v167 != v57)
          {
            objc_enumerationMutation(v157);
          }

          v59 = *(*(&v166 + 1) + 8 * v58);
          v60 = objc_autoreleasePoolPush();
          v61 = *(a1 + 16);
          if (v61)
          {
            v62 = [*(v61 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
          }

          else
          {
            v62 = 0;
          }

          if ([v62 count])
          {
            v63 = *(a1 + 16);
            if (v63)
            {
              v64 = [*(v63 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
              if (v59)
              {
                goto LABEL_115;
              }

LABEL_119:
              v66 = 0;
            }

            else
            {
              v64 = 0;
              if (!v59)
              {
                goto LABEL_119;
              }

LABEL_115:
              if (*(v59 + 16))
              {
                goto LABEL_119;
              }

              v65 = atomic_load((v59 + 40));
              v66 = [*(v65 + 16) _storeInfo1];
            }

            if ([v64 containsObject:{objc_msgSend(v66, "name")}])
            {
              goto LABEL_128;
            }
          }

          v67 = MEMORY[0x1E696AEC0];
          if (v59)
          {
            v68 = atomic_load((v59 + 40));
            v69 = [*(v68 + 16) _storeInfo1];
            if (v69)
            {
              v70 = *(v69 + 184);
            }

            else
            {
              v70 = 0;
            }

            v71 = atomic_load((v59 + 40));
            v72 = [*(v71 + 16) _referenceData64];
          }

          else
          {
            v70 = 0;
            v72 = 0;
          }

          v73 = [v67 stringWithFormat:@"%u-%lld", v70, v72];
          if (a2 && [*(a2 + 144) objectForKey:v73])
          {
            [v135 addObject:v59];
          }

LABEL_128:
          objc_autoreleasePoolPop(v60);
          ++v58;
        }

        while (v56 != v58);
        v74 = [v157 countByEnumeratingWithState:&v166 objects:v200 count:16];
        v56 = v74;
      }

      while (v74);
    }

    if ([v135 count])
    {
      [v133 setValue:v135 forKey:@"updated"];
    }
  }

  else
  {
    v154 = 0;
  }

  if (![v137 count])
  {
    goto LABEL_170;
  }

  v151 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v137, "count")}];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v75 = [v137 countByEnumeratingWithState:&v162 objects:v199 count:16];
  if (!v75)
  {
    goto LABEL_165;
  }

  v76 = *v163;
  while (2)
  {
    v77 = 0;
    while (2)
    {
      if (*v163 != v76)
      {
        objc_enumerationMutation(v137);
      }

      v78 = *(*(&v162 + 1) + 8 * v77);
      v79 = objc_autoreleasePoolPush();
      v80 = *(a1 + 16);
      if (v80)
      {
        v81 = [*(v80 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v81 = 0;
      }

      if (![v81 count])
      {
        goto LABEL_153;
      }

      v82 = *(a1 + 16);
      if (v82)
      {
        v83 = [*(v82 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
        if (v78)
        {
          goto LABEL_147;
        }

LABEL_151:
        v85 = 0;
      }

      else
      {
        v83 = 0;
        if (!v78)
        {
          goto LABEL_151;
        }

LABEL_147:
        if (*(v78 + 16))
        {
          goto LABEL_151;
        }

        v84 = atomic_load((v78 + 40));
        v85 = [*(v84 + 16) _storeInfo1];
      }

      if (([v83 containsObject:{objc_msgSend(v85, "name")}] & 1) == 0)
      {
LABEL_153:
        v86 = MEMORY[0x1E696AEC0];
        if (v78)
        {
          v87 = atomic_load((v78 + 40));
          v88 = [*(v87 + 16) _storeInfo1];
          if (v88)
          {
            v89 = *(v88 + 184);
          }

          else
          {
            v89 = 0;
          }

          v90 = atomic_load((v78 + 40));
          v91 = [*(v90 + 16) _referenceData64];
        }

        else
        {
          v89 = 0;
          v91 = 0;
        }

        v92 = [v86 stringWithFormat:@"%u-%lld", v89, v91];
        if (a2)
        {
          v93 = v92;
          if ([*(a2 + 144) objectForKey:v92])
          {
            [v151 addObject:v78];
            [v154 removeObjectForKey:v93];
          }
        }
      }

      objc_autoreleasePoolPop(v79);
      if (v75 != ++v77)
      {
        continue;
      }

      break;
    }

    v94 = [v137 countByEnumeratingWithState:&v162 objects:v199 count:16];
    v75 = v94;
    if (v94)
    {
      continue;
    }

    break;
  }

LABEL_165:
  if ([v151 count])
  {
    v95 = [v133 objectForKey:@"updated"];
    if (v95)
    {
      [v95 addObjectsFromArray:{objc_msgSend(v151, "allObjects")}];
    }

    else
    {
      [v133 setValue:v151 forKey:@"updated"];
    }
  }

LABEL_170:
  if (![v138 count])
  {
    goto LABEL_193;
  }

  v96 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v138, "count")}];
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v97 = [v138 countByEnumeratingWithState:&v158 objects:v198 count:16];
  if (!v97)
  {
    goto LABEL_190;
  }

  v98 = *v159;
  while (2)
  {
    v99 = 0;
    while (2)
    {
      if (*v159 != v98)
      {
        objc_enumerationMutation(v138);
      }

      v100 = *(*(&v158 + 1) + 8 * v99);
      v101 = *(a1 + 16);
      if (v101)
      {
        v102 = [*(v101 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v102 = 0;
      }

      if (![v102 count])
      {
        goto LABEL_187;
      }

      v103 = *(a1 + 16);
      if (v103)
      {
        v104 = [*(v103 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
        if (v100)
        {
          goto LABEL_181;
        }

LABEL_185:
        v106 = 0;
      }

      else
      {
        v104 = 0;
        if (!v100)
        {
          goto LABEL_185;
        }

LABEL_181:
        if (*(v100 + 16))
        {
          goto LABEL_185;
        }

        v105 = atomic_load((v100 + 40));
        v106 = [*(v105 + 16) _storeInfo1];
      }

      if (([v104 containsObject:{objc_msgSend(v106, "name")}] & 1) == 0)
      {
LABEL_187:
        [v96 addObject:v100];
      }

      if (v97 != ++v99)
      {
        continue;
      }

      break;
    }

    v97 = [v138 countByEnumeratingWithState:&v158 objects:v198 count:16];
    if (v97)
    {
      continue;
    }

    break;
  }

LABEL_190:
  if ([v96 count])
  {
    [v133 setValue:v96 forKey:@"deleted"];
  }

LABEL_193:
  if ([v133 count])
  {
    v140 = [(NSSQLiteConnection *)a1 _insertTransactionStringsForRequestContext:a2];
    v107 = [(NSSQLiteConnection *)a1 _insertTransactionForRequestContext:a2 andStrings:v140];
    if ([v133 objectForKey:@"inserted"])
    {
      -[NSSQLiteConnection insertChanges:type:transactionID:context:](a1, [v133 objectForKey:@"inserted"], 0, v107, a2);
    }

    if ([v133 objectForKey:@"updated"])
    {
      -[NSSQLiteConnection insertChanges:type:transactionID:context:](a1, [v133 objectForKey:@"updated"], 1, v107, a2);
    }

    if ([v133 objectForKey:@"deleted"])
    {
      -[NSSQLiteConnection insertChanges:type:transactionID:context:](a1, [v133 objectForKey:@"deleted"], 2, v107, a2);
    }

    if ([v154 count])
    {
      v108 = *(a1 + 8);
      if (v108)
      {
        dispatch_assert_queue_V2(v108);
      }

      if ([v154 count])
      {
        v136 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        contexta = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
        v109 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](a1, contexta, [v154 count]);
        if (!v109)
        {
          v129 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
          objc_exception_throw(v129);
        }

        v110 = [v154 count];
        v210 = 0u;
        v209 = 0u;
        v208 = 0u;
        v207 = 0u;
        v111 = [v154 countByEnumeratingWithState:&v207 objects:v212 count:16];
        if (v111)
        {
          v145 = v111;
          v112 = v109 - v110;
          v142 = *v208;
          do
          {
            for (n = 0; n != v145; n = n + 1)
            {
              if (*v208 != v142)
              {
                objc_enumerationMutation(v154);
              }

              v113 = *(*(&v207 + 1) + 8 * n);
              v149 = objc_autoreleasePoolPush();
              v114 = [v113 componentsSeparatedByString:@"-"];
              [(NSSQLiteConnection *)a1 prepareInsertStatementForAncillaryEntity:?];
              v206 = 0u;
              v205 = 0u;
              v204 = 0u;
              v203 = 0u;
              v115 = [*(a1 + 48) bindVariables];
              v116 = [v115 countByEnumeratingWithState:&v203 objects:v211 count:16];
              ++v112;
              if (v116)
              {
                v117 = *v204;
                do
                {
                  v118 = 0;
                  do
                  {
                    if (*v204 != v117)
                    {
                      objc_enumerationMutation(v115);
                    }

                    v119 = *(*(&v203 + 1) + 8 * v118);
                    v120 = objc_autoreleasePoolPush();
                    if (![v119 index])
                    {
                      v121 = [v119 sqlType];
                      v122 = v112;
                      if (v121 == 2)
                      {
LABEL_221:
                        [v119 setInt64:v122];
                        goto LABEL_229;
                      }
                    }

                    if ([v119 index] != 1 && objc_msgSend(v119, "index") != 2)
                    {
                      if ([v119 index] == 3)
                      {
                        v123 = [v119 sqlType];
                        v122 = v107;
                        if (v123 == 2)
                        {
                          goto LABEL_221;
                        }
                      }

                      if ([v119 index] == 4)
                      {
                        v124 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
LABEL_224:
                        [v119 setValue:v124];
                        goto LABEL_229;
                      }

                      if ([v119 index] == 5)
                      {
                        if (a2)
                        {
                          v125 = [*(a2 + 144) objectForKey:v113];
                        }

                        else
                        {
                          v125 = 0;
                        }

                        [v119 setValue:v125];
                      }

                      else
                      {
                        if ([v119 index] == 6)
                        {
                          v124 = [v114 firstObject];
                          goto LABEL_224;
                        }

                        if ([v119 index] == 7)
                        {
                          v124 = [v114 lastObject];
                          goto LABEL_224;
                        }
                      }
                    }

LABEL_229:
                    objc_autoreleasePoolPop(v120);
                    ++v118;
                  }

                  while (v116 != v118);
                  v126 = [v115 countByEnumeratingWithState:&v203 objects:v211 count:16];
                  v116 = v126;
                }

                while (v126);
              }

              [a1 execute];
              if (!*(a1 + 80))
              {
                v127 = [(NSSQLiteConnection *)a1 statementCacheForEntity:?];
                [(NSSQLiteStatementCache *)v127 cacheInsertStatement:?];
              }

              [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
              [(NSSQLiteConnection *)a1 resetSQLStatement];
              objc_autoreleasePoolPop(v149);
            }

            v145 = [v154 countByEnumeratingWithState:&v207 objects:v212 count:16];
          }

          while (v145);
        }

        [v136 drain];
        v130 = 0;
      }
    }

    v131 = [MEMORY[0x1E696AD98] numberWithLongLong:v107];
    if (a2)
    {
      *(a2 + 72) = v131;
    }

    v128 = v140;
  }

  else
  {
    v128 = 0;
  }

LABEL_252:
  v132 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_insertTransactionStringsForRequestContext:(sqlite3_int64)a1
{
  if (a2 && (v4 = *(a2 + 32)) != 0 && (v4[42] & 0x80) != 0)
  {
    v5 = -[NSPersistentStoreCoordinator _xpcBundleIdentifier]([v4 persistentStoreCoordinator]);
    v11 = -[NSPersistentStoreCoordinator _xpcProcessName]([*(a2 + 32) persistentStoreCoordinator]);
    v7 = v11;
    v8 = v11 != 0;
    if (v5 == 0 && v8)
    {
      v5 = v11;
    }
  }

  else
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v6 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v7 = v6;
    v8 = v6 != 0;
    if (v5 == 0 && v8)
    {
      v5 = v6;
    }

    if (!a2)
    {
      v9 = [0 name];
      v10 = 0;
      goto LABEL_11;
    }
  }

  v9 = [*(a2 + 32) name];
  v10 = *(a2 + 32);
LABEL_11:
  v12 = [v10 transactionAuthor];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  v14 = v13;
  if (v5)
  {
    [v13 setValue:v5 forKey:@"BUNDLEIDTS"];
  }

  if (v8)
  {
    [v14 setValue:v7 forKey:@"PROCESSIDTS"];
  }

  if (v9)
  {
    [v14 setValue:v9 forKey:@"CONTEXTNAMETS"];
  }

  if (v12)
  {
    [v14 setValue:v12 forKey:@"AUTHORTS"];
  }

  v15 = [(NSSQLiteConnection *)a1 _transactionsStringAndPKsForStrings:v14];

  return v15;
}

- (uint64_t)_insertTransactionForRequestContext:(void *)a3 andStrings:
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
  v8 = [(NSSQLiteConnection *)a1 generatePrimaryKeysForEntity:v7 batch:1u];
  if (!v8)
  {
    v32 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys for transaction" reason:0 userInfo:?];
    objc_exception_throw(v32);
  }

  v9 = v8;
  v34 = v6;
  v35 = a1;
  [(NSSQLiteConnection *)a1 prepareInsertStatementForAncillaryEntity:v7];
  if (a2)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
  }

  if ([objc_msgSend(v10 "_queryGenerationToken")] && (!a2 ? (v11 = 0) : (v11 = *(a2 + 32)), (v12 = -[_NSQueryGenerationToken _generationalComponentForStore:](objc_msgSend(v11, "_queryGenerationToken"), *(a1 + 16))) == 0 ? (v13 = 0) : (v13 = *(v12 + 3)), objc_opt_class(), (objc_opt_isKindOfClass() & (v13 != 0)) == 1))
  {
    v37 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v13 + 8) length:48];
  }

  else
  {
    v37 = 0;
  }

  v14 = [a3 valueForKey:@"AUTHORTS"];
  v15 = [a3 valueForKey:@"BUNDLEIDTS"];
  v16 = [a3 valueForKey:@"CONTEXTNAMETS"];
  v36 = [a3 valueForKey:@"PROCESSIDTS"];
  v33 = v7;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [*(a1 + 48) bindVariables];
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v18)
  {
    v19 = *v39;
    do
    {
      v20 = 0;
      do
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v38 + 1) + 8 * v20);
        v22 = [v21 index];
        if (v22 <= 4)
        {
          v24 = v9;
          if (!v22)
          {
            goto LABEL_26;
          }

          v23 = v14;
          if (v22 == 3)
          {
            goto LABEL_25;
          }

          v23 = v15;
          if (v22 == 4)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v22 <= 10)
          {
            v23 = v16;
            if (v22 != 5)
            {
              if (v22 != 6)
              {
                goto LABEL_27;
              }

              v23 = v36;
            }

LABEL_25:
            v24 = [v23 longLongValue];
LABEL_26:
            [v21 setInt64:v24];
            goto LABEL_27;
          }

          if (v22 == 11)
          {
            if (v37)
            {
              [v21 setValue:v37];
            }
          }

          else if (v22 == 12)
          {
            v25 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            [v21 setValue:{objc_msgSend(v25, "numberWithDouble:")}];
          }
        }

LABEL_27:
        ++v20;
      }

      while (v18 != v20);
      v26 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
      v18 = v26;
    }

    while (v26);
  }

  [v35 execute];
  if (!*(v35 + 80))
  {
    v27 = [(NSSQLiteConnection *)v35 statementCacheForEntity:v33];
    [(NSSQLiteStatementCache *)v27 cacheInsertStatement:?];
  }

  v28 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_last_insert_rowid(*(v35 + 72))), "intValue"}];
  [(NSSQLiteConnection *)v35 _clearBindVariablesForInsertedRow];
  [(NSSQLiteConnection *)v35 resetSQLStatement];
  [v34 drain];
  v29 = 0;
  v30 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)insertChanges:(uint64_t)a3 type:(sqlite3_int64)a4 transactionID:(uint64_t)a5 context:
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (a3 == 2)
  {
    v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v54 = 0;
  }

  v7 = [objc_msgSend(*(a1 + 16) "options")];
  if ([v7 isNSDictionary])
  {
    v58 = [objc_msgSend(v7 valueForKey:{@"NSPersistentHistoryUseContextObjectsForDeletes", "BOOLValue"}];
  }

  else
  {
    v58 = 0;
  }

  v51 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v59 = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
  v8 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](a1, v59, [a2 count]);
  if (!v8)
  {
    v48 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
    objc_exception_throw(v48);
  }

  v9 = [a2 count];
  if (a5)
  {
    v52 = *(a5 + 32);
  }

  else
  {
    v52 = 0;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v10 = [a2 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v10)
  {
    v11 = v8 - v9;
    v55 = *v76;
    v56 = v10;
    v66 = a5;
    do
    {
      v63 = 0;
      do
      {
        if (*v76 != v55)
        {
          objc_enumerationMutation(a2);
        }

        v67 = *(*(&v75 + 1) + 8 * v63);
        context = objc_autoreleasePoolPush();
        if (!v67 || (*(v67 + 16) & 1) != 0)
        {
          v14 = 0;
        }

        else
        {
          v12 = atomic_load((v67 + 40));
          v13 = [*(v12 + 16) _storeInfo1];
          v14 = v13;
          if (v13)
          {
            v61 = 0;
            v68 = *(v13 + 184);
            goto LABEL_23;
          }
        }

        v68 = 0;
        v61 = 1;
LABEL_23:
        if (a3 == 2)
        {
          v65 = [v54 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v68)}];
          if (!v65)
          {
            v65 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v14];
            if (v61)
            {
              v15 = 0;
            }

            else
            {
              v15 = *(v14 + 184);
            }

            [v54 setObject:v65 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v15)}];
          }

          if ((([v65 count] != 0) & v58) == 1)
          {
            v16 = [v52 objectRegisteredForID:{objc_msgSend(v67, "objectID")}];
            if ([v16 isDeleted])
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
          v65 = 0;
        }

        [(NSSQLiteConnection *)a1 prepareInsertStatementForAncillaryEntity:v59];
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v18 = [*(a1 + 48) bindVariables];
        v19 = [v18 countByEnumeratingWithState:&v71 objects:v79 count:16];
        v60 = v14;
        ++v11;
        if (v19)
        {
          v20 = *v72;
          v21 = v67;
          if (v58)
          {
            v21 = v17;
          }

          v57 = v21;
          do
          {
            v22 = 0;
            do
            {
              if (*v72 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v71 + 1) + 8 * v22);
              v24 = objc_autoreleasePoolPush();
              if (![v23 index])
              {
                v25 = [v23 sqlType];
                v26 = v11;
                if (v25 == 2)
                {
LABEL_47:
                  [v23 setInt64:v26];
                  goto LABEL_51;
                }
              }

              if ([v23 index] != 1 && objc_msgSend(v23, "index") != 2)
              {
                if ([v23 index] == 3)
                {
                  v27 = [v23 sqlType];
                  v26 = a4;
                  if (v27 == 2)
                  {
                    goto LABEL_47;
                  }
                }

                if ([v23 index] == 4)
                {
                  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
LABEL_50:
                  [v23 setValue:v28];
                  goto LABEL_51;
                }

                if ([v23 index] == 5)
                {
                  if (a3 == 1)
                  {
                    v29 = v66;
                    v30 = objc_alloc(MEMORY[0x1E696AEC0]);
                    if (v67)
                    {
                      v31 = atomic_load((v67 + 40));
                      v32 = [*(v31 + 16) _referenceData64];
                    }

                    else
                    {
                      v32 = 0;
                    }

                    v33 = [v30 initWithFormat:@"%u-%lld", v68, v32];
                    if (v66)
                    {
                      v29 = [*(v66 + 144) objectForKey:v33];
                    }

                    [v23 setValue:v29];
                  }
                }

                else
                {
                  if ([v23 index] == 6)
                  {
                    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v68];
                    goto LABEL_50;
                  }

                  if ([v23 index] == 7)
                  {
                    v34 = MEMORY[0x1E696AD98];
                    if (v67)
                    {
                      v35 = atomic_load((v67 + 40));
                      v36 = [*(v35 + 16) _referenceData64];
                    }

                    else
                    {
                      v36 = 0;
                    }

                    v28 = [v34 numberWithLongLong:v36];
                    goto LABEL_50;
                  }

                  v37 = [objc_msgSend(v23 "propertyDescription")];
                  if (a3 == 2)
                  {
                    v38 = v37;
                    if ([v65 count])
                    {
                      if ([v38 containsString:@"TOMBSTONE"])
                      {
                        v39 = [objc_msgSend(v38 stringByReplacingOccurrencesOfString:@"TOMBSTONE" withString:{&stru_1EF3F1768), "intValue"}];
                        if (v39 < [v65 count])
                        {
                          v40 = [v65 objectAtIndexedSubscript:v39];
                          if (v61)
                          {
                            v41 = 0;
                          }

                          else
                          {
                            v41 = [*(v60 + 40) objectForKey:v40];
                          }

                          [v23 setSQLType:{objc_msgSend(v41, "sqlType")}];
                          if ([v41 sqlType] == 15 || objc_msgSend(v41, "sqlType") == 18)
                          {
                            [v23 setTombstonedPropertyDescription:{objc_msgSend(v41, "propertyDescription")}];
                          }

                          v42 = [v57 valueForKey:v40];
                          if (v42)
                          {
                            if ([objc_msgSend(v41 "propertyDescription")])
                            {
                              v43 = [v40 componentsSeparatedByString:@"."];
                              for (i = 1; [v43 count] > i; ++i)
                              {
                                v42 = [v42 objectForKey:{objc_msgSend(v43, "objectAtIndex:", i)}];
                              }
                            }

                            [v23 setValue:v42];
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_51:
              objc_autoreleasePoolPop(v24);
              ++v22;
            }

            while (v22 != v19);
            v45 = [v18 countByEnumeratingWithState:&v71 objects:v79 count:16];
            v19 = v45;
          }

          while (v45);
        }

        [a1 execute];
        if (!*(a1 + 80))
        {
          v46 = [(NSSQLiteConnection *)a1 statementCacheForEntity:v59];
          [(NSSQLiteStatementCache *)v46 cacheInsertStatement:?];
        }

        [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
        [(NSSQLiteConnection *)a1 resetSQLStatement];
        objc_autoreleasePoolPop(context);
        ++v63;
      }

      while (v63 != v56);
      v47 = [a2 countByEnumeratingWithState:&v75 objects:v80 count:16];
      v56 = v47;
    }

    while (v47);
  }

  [v51 drain];
  v49 = 0;

  v50 = *MEMORY[0x1E69E9840];
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    [v14 addObject:{objc_msgSend(v16, "name")}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 initWithObjects:{objc_msgSend(v19, "name"), 0}];
    [*(a1 + 40) setValue:v20 forKey:v12];
  }

  v21 = *(*(a1 + 32) + 16);
  v22 = [a3 entity];
  if (v21 && v22)
  {
    v23 = _sqlCoreLookupSQLEntityForEntityDescription(v21, v22);
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v23)
    {
      v23 = *(v23 + 184);
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = 0;
  }

  v35 = [v24 initWithFormat:@"%u-%lld", v23, objc_msgSend(a3, "_referenceData64")];
  v25 = [*(a1 + 40) objectForKey:?];
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 && (v28 = *(v27 + 8)) != 0)
    {
      v29 = *(v28 + 56);
    }

    else
    {
      v29 = 0;
    }

    [v26 addObject:{objc_msgSend(v29, "name")}];
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = *(a1 + 48);
    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 40) setValue:v34 forKey:v35];
  }
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    [v14 addObject:{objc_msgSend(v16, "name")}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 initWithObjects:{objc_msgSend(v19, "name"), 0}];
    [*(a1 + 56) setValue:v20 forKey:v12];
  }

  v21 = *(*(a1 + 32) + 16);
  v22 = [a3 entity];
  if (v21 && v22)
  {
    v23 = _sqlCoreLookupSQLEntityForEntityDescription(v21, v22);
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v23)
    {
      v23 = *(v23 + 184);
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = 0;
  }

  v35 = [v24 initWithFormat:@"%u-%lld", v23, objc_msgSend(a3, "_referenceData64")];
  v25 = [*(a1 + 40) objectForKey:?];
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 && (v28 = *(v27 + 8)) != 0)
    {
      v29 = *(v28 + 56);
    }

    else
    {
      v29 = 0;
    }

    [v26 addObject:{objc_msgSend(v29, "name")}];
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = *(a1 + 48);
    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 56) setValue:v34 forKey:v35];
  }
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15 && (v16 = *(v15 + 8)) != 0)
    {
      v17 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    [v14 addObject:{objc_msgSend(v17, "name")}];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E695DFA8]);
    v19 = *(a1 + 48);
    if (v19 && (v20 = *(v19 + 8)) != 0)
    {
      v21 = *(v20 + 56);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v18 initWithObjects:{objc_msgSend(v21, "name"), 0}];
    [*(a1 + 56) setValue:v22 forKey:v12];
  }

  v23 = *(*(a1 + 32) + 16);
  v24 = [a3 entity];
  if (v23 && v24)
  {
    v25 = _sqlCoreLookupSQLEntityForEntityDescription(v23, v24);
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v25)
    {
      v25 = *(v25 + 184);
    }
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = 0;
  }

  v35 = [v26 initWithFormat:@"%u-%lld", v25, objc_msgSend(a3, "_referenceData64")];
  v27 = [*(a1 + 40) objectForKey:?];
  if (v27)
  {
    v28 = v27;
    v29 = *(a1 + 48);
    if (v29)
    {
      v30 = *(v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    [v28 addObject:{objc_msgSend(v30, "name")}];
  }

  else
  {
    v31 = objc_alloc(MEMORY[0x1E695DFA8]);
    v32 = *(a1 + 48);
    if (v32)
    {
      v33 = *(v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v31 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 56) setValue:v34 forKey:v35];
  }
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    [v14 addObject:{objc_msgSend(v16, "name")}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 initWithObjects:{objc_msgSend(v19, "name"), 0}];
    [*(a1 + 40) setValue:v20 forKey:v12];
  }

  v21 = *(*(a1 + 32) + 16);
  v22 = [a3 entity];
  if (v21 && v22)
  {
    v23 = _sqlCoreLookupSQLEntityForEntityDescription(v21, v22);
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v23)
    {
      v23 = *(v23 + 184);
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = 0;
  }

  v35 = [v24 initWithFormat:@"%u-%lld", v23, objc_msgSend(a3, "_referenceData64")];
  v25 = [*(a1 + 40) objectForKey:?];
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 && (v28 = *(v27 + 8)) != 0)
    {
      v29 = *(v28 + 56);
    }

    else
    {
      v29 = 0;
    }

    [v26 addObject:{objc_msgSend(v29, "name")}];
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = *(a1 + 48);
    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 40) setValue:v34 forKey:v35];
  }
}

- (void)processInsertRequest:(uint64_t)a1
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1 || ((v4 = *(a1 + 16)) == 0 ? (v5 = 0) : (v5 = [*(v4 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"]), objc_msgSend(v5, "count") && ((v6 = *(a1 + 16)) == 0 ? (v7 = 0) : (v7 = objc_msgSend(*(v6 + 240), "objectForKey:", @"NSPersistentHistoryTrackingEntitiesToExclude")), (objc_msgSend(v7, "containsObject:", objc_msgSend(objc_msgSend(a2, "persistentStoreRequest"), "entityName")) & 1) != 0)))
  {
LABEL_75:
    v45 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2)
  {
    v8 = a2;
    v9 = a2[11];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v59 = a1;
  v10 = [(NSSQLiteConnection *)a1 gatherHistoryChangesFromTable:v9];
  v11 = [v10 valueForKey:@"inserts"];
  v12 = [v10 valueForKey:@"updates"];
  obj = v11;
  if (![v11 count] && !objc_msgSend(v12, "count"))
  {
    v37 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v70 = obj;
          v71 = 2112;
          v72 = v12;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Batch Insert resulted in no changes - %@ - %@\n", buf, 0x16u);
        }
      }

      else
      {
        v39 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v70 = obj;
          v71 = 2112;
          v72 = v12;
          _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_INFO, "CoreData: debug: Batch Insert resulted in no changes - %@ - %@\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v40 = 1;
    }

    else
    {
      v40 = 9;
    }

    _NSCoreDataLog_console(v40, "Batch Insert resulted in no changes - %@ - %@", obj, v12);
    objc_autoreleasePoolPop(v37);
    goto LABEL_75;
  }

  if (![v11 count] && objc_msgSend(v12, "count") && (-[NSSQLiteConnection hasAttributeChanges:](v12) & 1) == 0)
  {
    v35 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v70 = [v8 persistentStoreRequest];
          v71 = 2112;
          v72 = v12;
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: Batch Insert resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
        }
      }

      else
      {
        v41 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v70 = [v8 persistentStoreRequest];
          v71 = 2112;
          v72 = v12;
          _os_log_impl(&dword_18565F000, v41, OS_LOG_TYPE_INFO, "CoreData: debug: Batch Insert resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
        }
      }
    }

    v42 = _pflogging_catastrophic_mode == 0;
    v43 = [v8 persistentStoreRequest];
    v44 = 9;
    if (!v42)
    {
      v44 = 1;
    }

    _NSCoreDataLog_console(v44, "Batch Insert resulted in updates with no updated properties - %@ - %@", v43, v12);
    objc_autoreleasePoolPop(v35);
    goto LABEL_75;
  }

  v53 = v12;
  v51 = [(NSSQLiteConnection *)v59 _insertTransactionStringsForRequestContext:v8];
  v52 = v8;
  v13 = [(NSSQLiteConnection *)v59 _insertTransactionForRequestContext:v8 andStrings:v51];
  v14 = *(v59 + 8);
  if (v14)
  {
    dispatch_assert_queue_V2(v14);
  }

  if ([v11 count])
  {
    v50 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v57 = [objc_msgSend(objc_msgSend(*(v59 + 16) "ancillarySQLModels")];
    v15 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](v59, v57, [v11 count]);
    if (!v15)
    {
      v46 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
      objc_exception_throw(v46);
    }

    v16 = [v11 count];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v17 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
    if (v17)
    {
      v18 = v15 - v16;
      v55 = *v65;
      do
      {
        v19 = 0;
        v56 = v17;
        do
        {
          if (*v65 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v64 + 1) + 8 * v19);
          v21 = objc_autoreleasePoolPush();
          v22 = _sqlCoreLookupSQLEntityForEntityDescription(*(v59 + 16), [v20 entity]);
          if (v22)
          {
            v23 = *(v22 + 184);
          }

          else
          {
            v23 = 0;
          }

          [(NSSQLiteConnection *)v59 prepareInsertStatementForAncillaryEntity:v57];
          v58 = v19;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v24 = [*(v59 + 48) bindVariables];
          v25 = [v24 countByEnumeratingWithState:&v60 objects:v68 count:16];
          ++v18;
          if (v25)
          {
            v26 = *v61;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v61 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v60 + 1) + 8 * i);
                if (![v28 index])
                {
                  v29 = [v28 sqlType];
                  v30 = v18;
                  if (v29 == 2)
                  {
LABEL_35:
                    [v28 setInt64:v30];
                    continue;
                  }
                }

                if ([v28 index] != 1 && objc_msgSend(v28, "index") != 2)
                {
                  if ([v28 index] == 3)
                  {
                    v31 = [v28 sqlType];
                    v30 = v13;
                    if (v31 == 2)
                    {
                      goto LABEL_35;
                    }
                  }

                  if ([v28 index] == 4)
                  {
                    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
                  }

                  else if ([v28 index] == 6)
                  {
                    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
                  }

                  else
                  {
                    if ([v28 index] != 7)
                    {
                      continue;
                    }

                    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "_referenceData64")}];
                  }

                  [v28 setValue:v32];
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v60 objects:v68 count:16];
            }

            while (v25);
          }

          [v59 execute];
          if (!*(v59 + 80))
          {
            v33 = [(NSSQLiteConnection *)v59 statementCacheForEntity:v57];
            [(NSSQLiteStatementCache *)v33 cacheInsertStatement:?];
          }

          [(NSSQLiteConnection *)v59 _clearBindVariablesForInsertedRow];
          [(NSSQLiteConnection *)v59 resetSQLStatement];
          objc_autoreleasePoolPop(v21);
          v19 = v58 + 1;
        }

        while (v58 + 1 != v56);
        v34 = [obj countByEnumeratingWithState:&v64 objects:buf count:16];
        v17 = v34;
      }

      while (v34);
    }

    v47 = 0;
  }

  -[NSSQLiteConnection insertUpdates:transactionID:updatedAttributes:](v59, v53, v13, [objc_msgSend(objc_msgSend(objc_msgSend(v52 "persistentStoreRequest")]);
  v48 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
  if (v52)
  {
    v52[9] = v48;
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (uint64_t)gatherHistoryChangesFromTable:(uint64_t)a1
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v33 = 0;
    goto LABEL_42;
  }

  v3 = a1;
  if ([(NSSQLiteConnection *)a1 _tableHasRows:a2])
  {
    v45 = v3;
    v4 = -[NSSQLiteAdapter newStatementWithSQLString:]([v3 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT ENTITYID, PRIMEKEY, TYPE,  group_concat(ATTRIBUTENAME) FROM %@ GROUP BY ENTITYID, PRIMEKEY", a2));
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [[NSSQLColumn alloc] initWithColumnName:@"ENTITYID" sqlType:2];
    [v38 addObject:v5];

    v6 = [[NSSQLColumn alloc] initWithColumnName:@"PRIMEKEY" sqlType:2];
    [v38 addObject:v6];

    v7 = [[NSSQLColumn alloc] initWithColumnName:@"TYPE" sqlType:2];
    [v38 addObject:v7];

    v8 = [[NSSQLColumn alloc] initWithColumnName:@"ATTRIBUTENAME" sqlType:6];
    [v38 addObject:v8];

    [(NSSQLiteConnection *)v3 prepareSQLStatement:v4];
    [(NSSQLiteConnection *)v3 setColumnsToFetch:v38];
    [v3 execute];
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = v4;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v42, @"inserts", v39, @"updates", v40, @"deletes", 0}];
    while (1)
    {
      v9 = [(NSSQLiteConnection *)v3 newFetchedArray];
      if (!v9)
      {
        v34 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v41];

        v33 = v34;
        [(NSSQLiteConnection *)v3 releaseSQLStatement];
        [(NSSQLiteConnection *)v3 setColumnsToFetch:?];
        *(v3 + 312) &= ~2u;
        *(v3 + 100) = 0;
        *(v3 + 92) = 0;
        *(v3 + 108) = 0;

        goto LABEL_42;
      }

      v10 = v9;
      v11 = objc_autoreleasePoolPush();
      if ([v10 count] == 4)
      {
        break;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: incorrect number of results\n", buf, 2u);
      }

      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: incorrect number of results", buf, 2u);
      }

LABEL_35:

      objc_autoreleasePoolPop(v11);
    }

    v43 = [v10 objectAtIndex:0];
    v12 = [v43 unsignedLongValue];
    v13 = [v10 objectAtIndex:1];
    v14 = [v10 objectAtIndex:2];
    v44 = [v10 objectAtIndex:3];
    if (v12 >> 7 < 0x7D)
    {
      v19 = [objc_msgSend(*(v3 + 16) "model")];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v15 = [*(v3 + 16) ancillarySQLModels];
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v16)
      {
        v17 = *v47;
LABEL_9:
        v18 = 0;
        while (1)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [objc_msgSend(objc_msgSend(*(v45 + 16) "ancillarySQLModels")];
          if (v19)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v15 countByEnumeratingWithState:&v46 objects:v59 count:16];
            v19 = 0;
            if (v16)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v3 = v45;
    v22 = [*(v45 + 16) newObjectIDForEntity:v19 pk:{objc_msgSend(v13, "unsignedLongLongValue")}];
    if (v22)
    {
      v23 = [v14 longLongValue];
      v24 = v42;
      if (v23)
      {
        if ([v14 longLongValue] == 1)
        {
          if (v44)
          {
            v58[0] = v22;
            v58[1] = v44;
            [v39 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v58, 2)}];
LABEL_34:

            goto LABEL_35;
          }

          v31 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v22;
            _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: History Update for %@ without any updated columns.\n", buf, 0xCu);
          }

          v32 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_34;
          }

          *buf = 138412290;
          v51 = v22;
          v27 = v32;
          v28 = "CoreData: History Update for %@ without any updated columns.";
          v29 = 12;
LABEL_31:
          _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, v28, buf, v29);
          goto LABEL_34;
        }

        v30 = [v14 longLongValue];
        v24 = v40;
        if (v30 != 2)
        {
          goto LABEL_34;
        }
      }

      [v24 addObject:v22];
      goto LABEL_34;
    }

    v25 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v51 = v43;
      v52 = 2112;
      v53 = v13;
      v54 = 2112;
      v55 = v14;
      v56 = 2112;
      v57 = v44;
      _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to construct objectID for History Change: %@-%@-%@-%@\n", buf, 0x2Au);
    }

    v26 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    *buf = 138413058;
    v51 = v43;
    v52 = 2112;
    v53 = v13;
    v54 = 2112;
    v55 = v14;
    v56 = 2112;
    v57 = v44;
    v27 = v26;
    v28 = "CoreData: Unable to construct objectID for History Change: %@-%@-%@-%@";
    v29 = 42;
    goto LABEL_31;
  }

  v33 = MEMORY[0x1E695E0F8];
LABEL_42:
  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

- (uint64_t)hasAttributeChanges:(void *)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 lastObject];
        if ([v8 isNSString] && objc_msgSend(v8, "length"))
        {
          objc_autoreleasePoolPop(v7);
          result = 1;
          goto LABEL_12;
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)insertUpdates:(sqlite3_int64)a3 transactionID:(void *)a4 updatedAttributes:
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  if ([a2 count])
  {
    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v35 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v40 = [objc_msgSend(a4 valueForKey:{@"name", "componentsJoinedByString:", @", "}];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v7 = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (!v8)
    {
      goto LABEL_48;
    }

    v37 = v7;
    v38 = *v53;
    while (1)
    {
      v42 = 0;
      v39 = v8;
      do
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v52 + 1) + 8 * v42);
        context = objc_autoreleasePoolPush();
        v44 = [v9 firstObject];
        v10 = [v9 lastObject];
        v11 = v40;
        if ([v10 isNSString])
        {
          v11 = v10;
          if (![v10 length])
          {
            v11 = v40;
          }
        }

        v12 = [(NSSQLiteConnection *)a1 generatePrimaryKeysForEntity:v7 batch:1u];
        if (!v12)
        {
          v32 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
          objc_exception_throw(v32);
        }

        v13 = _sqlCoreLookupSQLEntityForEntityDescription(*(a1 + 16), [v44 entity]);
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + 184);
        }

        else
        {
          v15 = 0;
        }

        [(NSSQLiteConnection *)a1 prepareInsertStatementForAncillaryEntity:v7];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v16 = [*(a1 + 48) bindVariables];
        v17 = [v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
        v45 = v14;
        if (v17)
        {
          v18 = *v49;
          do
          {
            v19 = 0;
            do
            {
              if (*v49 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v48 + 1) + 8 * v19);
              if (![v20 index])
              {
                v21 = [v20 sqlType];
                v22 = v12;
                if (v21 == 2)
                {
LABEL_26:
                  [v20 setInt64:v22];
                  goto LABEL_38;
                }
              }

              if ([v20 index] != 1 && objc_msgSend(v20, "index") != 2)
              {
                if ([v20 index] == 3)
                {
                  v23 = [v20 sqlType];
                  v22 = a3;
                  if (v23 == 2)
                  {
                    goto LABEL_26;
                  }
                }

                v24 = [v20 index];
                v25 = v6;
                if (v24 == 4)
                {
                  goto LABEL_37;
                }

                if ([v20 index] != 5 || !v11)
                {
                  if ([v20 index] == 6)
                  {
                    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
                  }

                  else
                  {
                    if ([v20 index] != 7)
                    {
                      goto LABEL_38;
                    }

                    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v44, "_referenceData64")}];
                  }

                  v25 = v26;
LABEL_37:
                  [v20 setValue:v25];
                  goto LABEL_38;
                }

                v25 = [v46 objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%u-%@", v15, v11)}];
                if (v25)
                {
                  goto LABEL_37;
                }

                v27 = [v11 componentsSeparatedByString:{@", "}];
                v28 = +[_NSPersistentHistoryChange _propertyDataForEntity:withSetOfPropertyNames:](_NSPersistentHistoryChange, v45, [MEMORY[0x1E695DFD8] setWithArray:v27]);
                [v46 setObject:v28 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v15)}];
                [v20 setValue:v28];
              }

LABEL_38:
              ++v19;
            }

            while (v17 != v19);
            v29 = [v16 countByEnumeratingWithState:&v48 objects:v56 count:16];
            v17 = v29;
          }

          while (v29);
        }

        [a1 execute];
        v7 = v37;
        if (!*(a1 + 80))
        {
          v30 = [(NSSQLiteConnection *)a1 statementCacheForEntity:v37];
          [(NSSQLiteStatementCache *)v30 cacheInsertStatement:?];
        }

        [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
        [(NSSQLiteConnection *)a1 resetSQLStatement];
        objc_autoreleasePoolPop(context);
        ++v42;
      }

      while (v42 != v39);
      v31 = [a2 countByEnumeratingWithState:&v52 objects:v57 count:16];
      v8 = v31;
      if (!v31)
      {
LABEL_48:

        v33 = 0;
        break;
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)processUpdateRequest:(void *)a3 withOIDs:(void *)a4 forAttributes:
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1 || ((v8 = *(a1 + 16)) == 0 ? (v9 = 0) : (v9 = [*(v8 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"]), objc_msgSend(v9, "count") && ((v10 = *(a1 + 16)) == 0 ? (v11 = 0) : (v11 = objc_msgSend(*(v10 + 240), "objectForKey:", @"NSPersistentHistoryTrackingEntitiesToExclude")), (objc_msgSend(v11, "containsObject:", objc_msgSend(objc_msgSend(a2, "request"), "entityName")) & 1) != 0)))
  {
LABEL_24:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  if (![NSSQLiteConnection hasAttributeChanges:a3])
  {
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v24 = [a2 persistentStoreRequest];
          v25 = 2112;
          v26 = a3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Batch Update resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
        }
      }

      else
      {
        v17 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v24 = [a2 persistentStoreRequest];
          v25 = 2112;
          v26 = a3;
          _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_INFO, "CoreData: debug: Batch Update resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
        }
      }
    }

    v18 = _pflogging_catastrophic_mode;
    v19 = [a2 persistentStoreRequest];
    v20 = 9;
    if (v18)
    {
      v20 = 1;
    }

    _NSCoreDataLog_console(v20, "Batch Update resulted in updates with no updated properties - %@ - %@", v19, a3);
    objc_autoreleasePoolPop(v15);
    goto LABEL_24;
  }

  v22 = [(NSSQLiteConnection *)a1 _insertTransactionStringsForRequestContext:a2];
  v12 = [(NSSQLiteConnection *)a1 _insertTransactionForRequestContext:a2 andStrings:v22];
  [(NSSQLiteConnection *)a1 insertUpdates:a3 transactionID:v12 updatedAttributes:a4];
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
  if (a2)
  {
    a2[9] = v13;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_hasOldHistoryTrackingTables
{
  if (result)
  {
    v1 = result;
    if (([(NSSQLiteConnection *)result _hasOldHistoryTrackingTablesV0]& 1) != 0)
    {
      return 1;
    }

    else
    {

      return [(NSSQLiteConnection *)v1 _hasOldHistoryTrackingTablesV1];
    }
  }

  return result;
}

- (uint64_t)_hasOldHistoryTrackingTablesV0
{
  v1 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (([(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?]& 1) == 0 && ![(NSSQLiteConnection *)v1 _hasTableWithName:0 isTemp:?])
    {
LABEL_22:
      v1 = 0;
      goto LABEL_28;
    }

    errmsg = 0;
    v2 = objc_opt_new();
    if (!sqlite3_exec(*(v1 + 72), "select sql from sqlite_master where name = 'ZCHANGETRACK'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
    {
      if (![objc_msgSend(v2 "firstObject")] || !objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZBUNDLEID VARCHAR") || (objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCONTEXTNAME VARCHAR") & 1) == 0)
      {
        goto LABEL_26;
      }

      v3 = [objc_msgSend(v2 "firstObject")];

      if (v3)
      {
        v2 = objc_opt_new();
        if (!sqlite3_exec(*(v1 + 72), "select sql from sqlite_master where name = 'ZCHANGETRACKHISTORY'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
        {
          if ([objc_msgSend(v2 "firstObject")] && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKHISTORYENTITY INTEGER") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKHISTORYENTITYVERSION INTEGER") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKINGHISTORYTRANSACTIONID INTEGER") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKHISTORYTOMBSTONE BLOB"))
          {
            v1 = [objc_msgSend(v2 "firstObject")];
LABEL_27:

            goto LABEL_28;
          }

LABEL_26:
          v1 = 0;
          goto LABEL_27;
        }

        v4 = objc_autoreleasePoolPush();
        if (!_NSCoreDataIsOSLogEnabled(1))
        {
          goto LABEL_36;
        }

        v10 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          if (v12)
          {
            *buf = 136315138;
            v15 = errmsg;
LABEL_38:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 2 Exists - %s\n", buf, 0xCu);
          }
        }

        else if (v12)
        {
          *buf = 136315138;
          v15 = errmsg;
          goto LABEL_38;
        }

LABEL_36:
        _NSCoreDataLog_console(1, "Unable to determine if old history table 2 Exists - %s");
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      v6 = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 136315138;
          v15 = errmsg;
LABEL_30:
          _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 1 Exists - %s\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 136315138;
        v15 = errmsg;
        goto LABEL_30;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if old history table 1 Exists - %s");
LABEL_25:
    objc_autoreleasePoolPop(v4);
    goto LABEL_26;
  }

LABEL_28:
  v8 = *MEMORY[0x1E69E9840];
  return v1;
}

- (uint64_t)_hasOldHistoryTrackingTablesV1
{
  v1 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (([(NSSQLiteConnection *)a1 _hasTableWithName:0 isTemp:?]& 1) == 0 && ![(NSSQLiteConnection *)v1 _hasTableWithName:0 isTemp:?])
    {
LABEL_20:
      v1 = 0;
      goto LABEL_26;
    }

    errmsg = 0;
    v2 = objc_opt_new();
    if (!sqlite3_exec(*(v1 + 72), "select sql from sqlite_master where name = 'ZCHANGE'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
    {
      if (![objc_msgSend(v2 "firstObject")] || !objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETYPE INTEGER") || (objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCOLUMNS BLOB") & 1) == 0)
      {
        goto LABEL_24;
      }

      v3 = [objc_msgSend(v2 "firstObject")];

      if (v3)
      {
        v2 = objc_opt_new();
        if (!sqlite3_exec(*(v1 + 72), "select sql from sqlite_master where name = 'ZTRANSACTION'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
        {
          if ([objc_msgSend(v2 "firstObject")] && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCONTEXTNAME VARCHAR") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZPROCESSID VARCHAR"))
          {
            v1 = [objc_msgSend(v2 "firstObject")];
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:
          v1 = 0;
          goto LABEL_25;
        }

        v4 = objc_autoreleasePoolPush();
        if (!_NSCoreDataIsOSLogEnabled(1))
        {
          goto LABEL_34;
        }

        v10 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v10)
        {
          if (v12)
          {
            *buf = 136315138;
            v15 = errmsg;
LABEL_36:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 2 Exists - %s\n", buf, 0xCu);
          }
        }

        else if (v12)
        {
          *buf = 136315138;
          v15 = errmsg;
          goto LABEL_36;
        }

LABEL_34:
        _NSCoreDataLog_console(1, "Unable to determine if old history table 2 Exists - %s");
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      v6 = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 136315138;
          v15 = errmsg;
LABEL_28:
          _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 1 Exists - %s\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 136315138;
        v15 = errmsg;
        goto LABEL_28;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if old history table 1 Exists - %s");
LABEL_23:
    objc_autoreleasePoolPop(v4);
    goto LABEL_24;
  }

LABEL_26:
  v8 = *MEMORY[0x1E69E9840];
  return v1;
}

- (void)_dropOldHistoryTrackingTables
{
  if (a1)
  {
    if ([(NSSQLiteConnection *)a1 _hasOldHistoryTrackingTablesV0])
    {
      [(NSSQLiteConnection *)a1 _executeSQLString:?];
      [(NSSQLiteConnection *)a1 _executeSQLString:?];
    }

    if ([(NSSQLiteConnection *)a1 _hasOldHistoryTrackingTablesV1])
    {
      [(NSSQLiteConnection *)a1 _executeSQLString:?];

      [(NSSQLiteConnection *)a1 _executeSQLString:?];
    }
  }
}

- (BOOL)hasHistoryTransactionWithNumber:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [objc_msgSend(objc_msgSend(a1[2] "ancillarySQLModels")];
  v5 = v4;
  if (v4)
  {
    v6 = [*(v4 + 40) objectForKey:@"_pk"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT COUNT(Z_PK) FROM %@ WHERE %@ = %@", objc_msgSend(v5, "tableName"), objc_msgSend(v6, "columnName"), a2];
  v8 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v7];
  [(NSSQLiteConnection *)a1 prepareSQLStatement:v8];
  [a1 execute];
  v9 = [(NSSQLiteConnection *)a1 newFetchedArray];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectAtIndex:0];
    if (v11 == NSKeyValueCoding_NullValue)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 objectAtIndex:0];
    }

    v13 = [v12 integerValue] > 0;
  }

  else
  {
    v13 = 0;
  }

  [(NSSQLiteConnection *)a1 endFetchAndRecycleStatement:?];

  return v13;
}

- (BOOL)addTombstoneColumnsForRange:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [a1[2] model];
    [a1[2] options];
    v18 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v6 options:?];
    v7 = [v18 entityNamed:@"CHANGE"];
    v19 = v7 != 0;
    if (v7)
    {
      v8 = a2 >= a3;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = v7;
      do
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD Z%@%lu BLOB;", objc_msgSend(v9, "tableName"), @"TOMBSTONE", a2];
        v11 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v10);
        if (+[NSMappingModel migrationDebugLevel]>= 1)
        {
          v12 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v21 = v11;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Executing new tombstone column statement: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v14 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v21 = v11;
                _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing new tombstone column statement: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v15 = 1;
          }

          else
          {
            v15 = 4;
          }

          _NSCoreDataLog_console(v15, "Executing new tombstone column statement: %@", v11);
          objc_autoreleasePoolPop(v12);
        }

        [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v11];

        ++a2;
      }

      while (a3 != a2);
    }
  }

  else
  {
    v19 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v19;
}

- (uint64_t)numberOfTombstones
{
  v1 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [*(a1 + 16) model];
    [*(v1 + 16) options];
    v3 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v2 options:?];
    v4 = [v3 entityNamed:@"CHANGE"];
    if (!-[NSSQLiteConnection _hasTableWithName:isTemp:](v1, [v4 tableName], 0))
    {
      v1 = 0;
LABEL_22:

      goto LABEL_23;
    }

    errmsg = 0;
    v5 = objc_opt_new();
    if (!sqlite3_exec(*(v1 + 72), [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"select sql from sqlite_master where name = '%@'", objc_msgSend(v4, "tableName")), "UTF8String"], sqlite3Callback, v5, &errmsg) && objc_msgSend(v5, "count") == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [objc_msgSend(v5 "firstObject")];
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v9 += [*(*(&v18 + 1) + 8 * i) containsString:@"TOMBSTONE"];
          }

          v8 = [v6 countByEnumeratingWithState:&v18 objects:v25 count:16];
        }

        while (v8);
        v1 = v9;
        goto LABEL_21;
      }

LABEL_20:
      v1 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v13 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          *buf = 136315138;
          v24 = errmsg;
LABEL_25:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if tombstones for change table - %s\n", buf, 0xCu);
        }
      }

      else if (v15)
      {
        *buf = 136315138;
        v24 = errmsg;
        goto LABEL_25;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if tombstones for change table - %s", errmsg);
    objc_autoreleasePoolPop(v12);
    goto LABEL_20;
  }

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return v1;
}

- (BOOL)hasTransactionStringColumnsInTransactionTable
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v2 = [*(a1 + 16) model];
  [*(a1 + 16) options];
  v3 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v2 options:?];
  v4 = [v3 entityNamed:@"TRANSACTION"];
  v5 = 0;
  if (-[NSSQLiteConnection _hasTableWithName:isTemp:](a1, [v4 tableName], 0))
  {
    errmsg = 0;
    v6 = objc_opt_new();
    if (!sqlite3_exec(*(a1 + 72), [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"select sql from sqlite_master where name = '%@'", objc_msgSend(v4, "tableName")), "UTF8String"], sqlite3Callback, v6, &errmsg) && objc_msgSend(v6, "count") == 1)
    {
      v28[0] = @"AUTHORTS";
      v28[1] = @"BUNDLEIDTS";
      v28[2] = @"CONTEXTNAMETS";
      v28[3] = @"PROCESSIDTS";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [objc_msgSend(v6 "firstObject")];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v11 += [v7 containsObject:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "stringByReplacingCharactersInRange:withString:", 0, 1, &stru_1EF3F1768)}];
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
        }

        while (v10);
        v5 = v11 == 4;
        goto LABEL_20;
      }

LABEL_19:
      v5 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v14 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v15 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v17 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          *buf = 136315138;
          v26 = errmsg;
LABEL_24:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if tombstones for change table - %s\n", buf, 0xCu);
        }
      }

      else if (v17)
      {
        *buf = 136315138;
        v26 = errmsg;
        goto LABEL_24;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if tombstones for change table - %s", errmsg);
    objc_autoreleasePoolPop(v14);
    goto LABEL_19;
  }

LABEL_21:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)addTransactionStringColumnsToTransactionTable
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1[2] model];
    [a1[2] options];
    v14 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:v2 options:?];
    v3 = [v14 entityNamed:@"TRANSACTION"];
    v15 = v3 != 0;
    if (v3)
    {
      v4 = v3;
      v21[0] = @"AUTHORTS";
      v21[1] = @"BUNDLEIDTS";
      v21[2] = @"CONTEXTNAMETS";
      v21[3] = @"PROCESSIDTS";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          v9 = 0;
          do
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD Z%@ INTEGER;", objc_msgSend(v4, "tableName"), *(*(&v16 + 1) + 8 * v9)];
            v11 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v10);
            [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v11];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dropHistoryTrackingTables
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_msgSend(a1[2] "ancillarySQLModels")];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    if (v3)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([a1 adapter], objc_msgSend(v9, "tableName"));
          [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v11];

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(v2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)hasAncillaryEntitiesInHistory
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_msgSend(result[2] "ancillarySQLModels")];
    v3 = v2;
    if (v2)
    {
      v4 = [*(v2 + 40) objectForKey:@"ENTITY"];
      v5 = [v3[5] objectForKey:@"TRANSACTIONID"];
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(%@) FROM %@ WHERE %@ >= 16000", objc_msgSend(v5, "columnName"), objc_msgSend(v3, "tableName"), objc_msgSend(v4, "columnName")];
    v7 = [[NSSQLiteStatement alloc] initWithEntity:v3 sqlString:v6];
    [(NSSQLiteConnection *)v1 prepareSQLStatement:v7];
    [v1 execute];
    v8 = [(NSSQLiteConnection *)v1 newFetchedArray];
    v9 = v8;
    if (v8)
    {
      if ([v8 count])
      {
        v10 = [v9 objectAtIndex:0];
        if (v10 == NSKeyValueCoding_NullValue)
        {
          v11 = 0;
        }

        else
        {
          v11 = [v9 objectAtIndex:0];
        }

        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    [(NSSQLiteConnection *)v1 endFetchAndRecycleStatement:?];

    return v12;
  }

  return result;
}

- (void)dropHistoryBeforeTransactionID:(id *)a1
{
  if (a1)
  {
    v4 = [objc_msgSend(objc_msgSend(a1[2] "ancillarySQLModels")];
    v5 = [objc_msgSend(objc_msgSend(a1[2] "ancillarySQLModels")];
    v6 = v5;
    if (v5)
    {
      v7 = [*(v5 + 40) objectForKey:@"TRANSACTIONID"];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE Z_PK <= %@", objc_msgSend(v4, "tableName"), a2];
    v9 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v8);
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ <= %@", objc_msgSend(v6, "tableName"), objc_msgSend(v7, "columnName"), a2];
    v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], v11);
    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v9];
    [(NSSQLiteConnection *)a1 prepareAndExecuteSQLStatement:v10];
  }
}

- (void)processDeleteRequest:(sqlite3_int64)a1
{
  v83 = *MEMORY[0x1E69E9840];
  if (a1 && (v2 = a1, v3 = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")], v4 = -[NSSQLEntity tempTableName](v3), -[NSSQLiteConnection _hasTableWithName:isTemp:](v2, v4, 1)) && (v5 = -[NSSQLEntity tempTableName](v3), -[NSSQLiteConnection _tableHasRows:](v2, v5)))
  {
    v56 = [(NSSQLiteConnection *)v2 _insertTransactionStringsForRequestContext:a2];
    v58 = [(NSSQLiteConnection *)v2 _insertTransactionForRequestContext:a2 andStrings:v56];
    v6 = *(v2 + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    v57 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v7 = [objc_msgSend(objc_msgSend(*(v2 + 16) "ancillarySQLModels")];
    v8 = [(NSSQLEntity *)v7 tempTableName];
    if ([(NSSQLiteConnection *)v2 _tableHasRows:v8])
    {
      if (v7)
      {
        v9 = [*(v7 + 40) objectForKey:@"ENTITY"];
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v2 + 16);
      if (v10)
      {
        v11 = [*(v10 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v11 = 0;
      }

      p_vtable = (NSSQLStoreRequestContext + 24);
      v62 = v2;
      if ([v11 count])
      {
        v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
        v54 = v9;
        v55 = v7;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v14 = *(v2 + 16);
        if (v14)
        {
          obj = [*(v14 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
          v15 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
        }

        else
        {
          obj = 0;
          v15 = [0 countByEnumeratingWithState:&v75 objects:v82 count:16];
        }

        v16 = v15;
        if (v15)
        {
          v17 = 0;
          v18 = *v76;
          do
          {
            v19 = 0;
            do
            {
              if (*v76 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v75 + 1) + 8 * v19);
              v21 = [objc_msgSend(*(v2 + 16) "model")];
              if (!v21)
              {
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v2 = v62;
                v23 = [objc_msgSend(*(v62 + 16) "ancillarySQLModels")];
                v24 = [v23 countByEnumeratingWithState:&v71 objects:v81 count:16];
                if (!v24)
                {
                  goto LABEL_24;
                }

                v25 = *v72;
LABEL_28:
                v26 = 0;
                while (1)
                {
                  if (*v72 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v21 = [*(*(&v71 + 1) + 8 * v26) entityNamed:v20];
                  if (v21)
                  {
                    break;
                  }

                  if (v24 == ++v26)
                  {
                    v24 = [v23 countByEnumeratingWithState:&v71 objects:v81 count:16];
                    if (v24)
                    {
                      goto LABEL_28;
                    }

                    goto LABEL_23;
                  }
                }
              }

              v22 = *(v21 + 184);
              if (v17)
              {
                [v13 appendFormat:@", "];
              }

              [v13 appendFormat:@"%lld", v22];
              ++v17;
LABEL_23:
              v2 = v62;
LABEL_24:
              ++v19;
            }

            while (v19 != v16);
            v27 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
            v16 = v27;
          }

          while (v27);
        }

        [v13 appendFormat:@""]);
        v7 = v55;
        p_vtable = NSSQLStoreRequestContext.vtable;
        v28 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM %@ WHERE %@ IN %@", -[NSSQLEntity tempTableName](v55), objc_msgSend(v54, "columnName"), v13];
        v29 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v28];
        [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v29];
      }

      v30 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"UPDATE %@ SET Z%@ = %lld", -[NSSQLEntity tempTableName](v7), @"TRANSACTIONID", v58];
      v31 = [objc_alloc((p_vtable + 72)) initWithEntity:0 sqlString:v30];
      [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v31];

      v32 = [(NSSQLEntity *)v7 tempTableName];
      v33 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT count(*) FROM "];
      [v33 appendString:v32];
      v34 = [(NSSQLiteConnection *)v2 copyRawIntegerRowsForSQL:v33];
      v35 = v34;
      if (v34)
      {
        if (CFArrayGetCount(v34) >= 1 && *CFArrayGetValueAtIndex(v35, 0))
        {
          v36 = *CFArrayGetValueAtIndex(v35, 1);
        }

        else
        {
          LODWORD(v36) = -1;
        }

        obja = v36;
        CFRelease(v35);
      }

      else
      {
        obja = -1;
      }

      v38 = objc_alloc(MEMORY[0x1E696AD60]);
      if (v7)
      {
        v39 = *(v7 + 136);
      }

      else
      {
        v39 = 0;
      }

      v40 = [v38 initWithFormat:@"%@", objc_msgSend(v39, "columnName")];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v41 = [v7 attributeColumns];
      v42 = [v41 countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v42)
      {
        v43 = *v68;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v68 != v43)
            {
              objc_enumerationMutation(v41);
            }

            [v40 appendFormat:@", %@", objc_msgSend(*(*(&v67 + 1) + 8 * i), "columnName")];
          }

          v42 = [v41 countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v42);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = [v7 foreignKeyColumns];
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v79 count:16];
      if (v46)
      {
        v47 = *v64;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            [v40 appendFormat:@", %@", objc_msgSend(*(*(&v63 + 1) + 8 * j), "columnName")];
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v79 count:16];
        }

        while (v46);
      }

      v49 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"INSERT INTO %@ (%@) SELECT %@ FROM %@", objc_msgSend(v7, "tableName"), v40, v40, -[NSSQLEntity tempTableName](v7)];
      v50 = [objc_alloc((p_vtable + 72)) initWithEntity:0 sqlString:v49];
      [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v50];

      [(NSSQLiteConnection *)v2 generatePrimaryKeysForEntity:v7 batch:obja];
    }

    [v57 drain];
    v51 = 0;
    v52 = [MEMORY[0x1E696AD98] numberWithLongLong:v58];
    if (a2)
    {
      *(a2 + 72) = v52;
    }

    v53 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v37 = *MEMORY[0x1E69E9840];
  }
}

- (void)processMigrationRequestForHash:(uint64_t)a3 stageLabel:
{
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E696AEC0];
    if (a3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (stage: %@)", a3];
    }

    else
    {
      v8 = &stru_1EF3F1768;
    }

    v9 = [v7 stringWithFormat:@"com.apple.coredata.schemamigrator: lightweight migration from model with digest { %@ }%@", a2, v8];
    v10 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v11 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v12 = v11;
    if (v11)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v16 = v15;
    if (v14)
    {
      [v15 setValue:v14 forKey:@"BUNDLEIDTS"];
    }

    if (v12)
    {
      [v16 setValue:v12 forKey:@"PROCESSIDTS"];
    }

    if (v9)
    {
      [v16 setValue:v9 forKey:@"AUTHORTS"];
    }

    v17 = [(NSSQLiteConnection *)a1 _transactionsStringAndPKsForStrings:v16];

    [(NSSQLiteConnection *)a1 _insertTransactionForRequestContext:v17 andStrings:?];

    objc_autoreleasePoolPop(v6);
  }
}

- (void)processExternalDataReferenceFilesDeletedByRequest:(uint64_t)a1
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (([(NSSQLiteConnection *)a1 _hasTableWithName:1 isTemp:?]& 1) == 0 || ![(NSSQLiteConnection *)a1 _tableHasRows:?])
      {
        goto LABEL_32;
      }

      v4 = a2[16];
    }

    else
    {
      if (([(NSSQLiteConnection *)a1 _hasTableWithName:1 isTemp:?]& 1) == 0)
      {
        goto LABEL_32;
      }

      v9 = [(NSSQLiteConnection *)a1 _tableHasRows:?];
      v4 = 0;
      if (!v9)
      {
        goto LABEL_32;
      }
    }

    -[NSSQLiteConnection prepareSQLStatement:](a1, [objc_msgSend(v4 objectAtIndexedSubscript:{2), "objectAtIndexedSubscript:", 0}]);
    [a1 execute];
    v5 = [[NSSQLColumn alloc] initWithColumnName:@"externalRef" sqlType:16];
    v29[0] = v5;
    -[NSSQLiteConnection setColumnsToFetch:](a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1]);

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (1)
    {
      v7 = [(NSSQLiteConnection *)a1 newFetchedArray];
      v8 = v7;
      if (!v7)
      {
        break;
      }

      [v6 addObject:{objc_msgSend(v7, "objectAtIndexedSubscript:", 0)}];
    }

    [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
    *(a1 + 312) &= ~2u;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    *(a1 + 108) = 0;
    [(NSSQLiteConnection *)a1 releaseSQLStatement];
    if (v6)
    {
      if ([v6 count])
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          v13 = *v25;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v6);
              }

              v15 = *(*(&v24 + 1) + 8 * i);
              objc_opt_self();
              isKindOfClass = objc_opt_isKindOfClass();
              v17 = v11;
              if (isKindOfClass)
              {
                v18 = [v15 UUID];
                v17 = v10;
                if (!v18)
                {
                  continue;
                }
              }

              [v17 addObject:v15];
            }

            v12 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v12);
        }

        v19 = [v10 count];
        if (a2 && v19)
        {
          objc_setProperty_nonatomic(a2, v20, v10, 136);
        }

        v21 = [v11 count];
        if (a2 && v21)
        {
          objc_setProperty_nonatomic(a2, v22, v11, 144);
        }
      }
    }
  }

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_transactionsStringAndPKsForStrings:(sqlite3_int64)a1
{
  v53 = *MEMORY[0x1E69E9840];
  if ([a2 count])
  {
    v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = a2;
    obj = [a2 allKeys];
    v41 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v41)
    {
      v39 = *v44;
      v35 = *MEMORY[0x1E695D930];
      do
      {
        v4 = 0;
        do
        {
          if (*v44 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v43 + 1) + 8 * v4);
          v5 = [v40 objectForKey:?];
          v6 = [*(a1 + 336) objectForKey:v5];
          if (v6)
          {
            [v38 setValue:v6 forKey:v42];
          }

          else
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            v7 = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
            v8 = [(NSSQLiteConnection *)a1 generatePrimaryKeysForEntity:v7 batch:1u];
            if (!v8)
            {
              v30 = [_NSCoreDataException exceptionWithName:v35 code:134030 reason:@"unable to generate primary keys for transaction" userInfo:0];
              objc_exception_throw(v30);
            }

            [(NSSQLiteConnection *)a1 prepareInsertStatementForAncillaryEntity:v7];
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v9 = [*(a1 + 48) bindVariables];
            v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
            if (v10)
            {
              v11 = *v48;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v48 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v13 = *(*(&v47 + 1) + 8 * i);
                  v14 = [v13 index];
                  if (v14)
                  {
                    if (v14 == 3)
                    {
                      [v13 setValue:v5];
                    }
                  }

                  else
                  {
                    [v13 setInt64:v8];
                  }
                }

                v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
              }

              while (v10);
            }

            [a1 execute];
            v15 = *(a1 + 72);
            if (v15 && sqlite3_changes(v15) >= 1)
            {
              v16 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_last_insert_rowid(*(a1 + 72))), "copy"}];
            }

            else
            {
              v16 = 0;
            }

            if (!*(a1 + 80))
            {
              v17 = [(NSSQLiteConnection *)a1 statementCacheForEntity:v7];
              [(NSSQLiteStatementCache *)v17 cacheInsertStatement:?];
            }

            [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
            [(NSSQLiteConnection *)a1 resetSQLStatement];
            [v37 drain];
            v18 = 0;
            if (v16)
            {
              goto LABEL_40;
            }

            v19 = [objc_msgSend(objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
            v20 = v19;
            v21 = v19 ? [*(v19 + 40) objectForKey:@"NAME"] : 0;
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT Z_PK FROM %@ WHERE %@ = ?", objc_msgSend(v20, "tableName"), objc_msgSend(v21, "columnName")];
            v23 = [[NSSQLiteStatement alloc] initWithEntity:v20 sqlString:v22];
            v24 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v5, 5, [v21 attributeDescription]);
            [(NSSQLiteStatement *)v23 addBindVariable:v24];

            [(NSSQLiteConnection *)a1 prepareSQLStatement:v23];
            [a1 execute];
            v25 = [(NSSQLiteConnection *)a1 newFetchedArray];
            v26 = v25;
            if (v25)
            {
              if ([v25 count])
              {
                v27 = [v26 objectAtIndex:0];
                v28 = v27 == NSKeyValueCoding_NullValue ? 0 : [v26 objectAtIndex:0];
                v29 = v28;
              }

              else
              {
                v29 = 0;
              }
            }

            else
            {
              v29 = 0;
            }

            [(NSSQLiteConnection *)a1 endFetchAndRecycleStatement:?];

            v16 = [v29 copy];
            if (v16)
            {
LABEL_40:
              [*(a1 + 336) setValue:v16 forKey:v5];
              [v38 setValue:v16 forKey:v42];
            }
          }

          ++v4;
        }

        while (v4 != v41);
        v31 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        v41 = v31;
      }

      while (v31);
    }

    v32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v38];
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)prepareInsertStatementForEntity:(uint64_t)a1 includeConstraints:(void *)a2 includeOnConflict:(int)a3 onConflictKeys:(void *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = [(NSSQLiteConnection *)a1 statementCacheForEntity:a2];
  v9 = v8;
  if (v8)
  {
    batchInsertStatementCache = v8->_batchInsertStatementCache;
    if (batchInsertStatementCache)
    {
      cachedSQLiteStatement = batchInsertStatementCache->_cachedSQLiteStatement;
      if (cachedSQLiteStatement)
      {
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v12 = *(a1 + 42);
          v13 = objc_autoreleasePoolPush();
          _pflogInitialize(6);
          IsLogEnabled = _NSCoreDataIsLogEnabled(6);
          if (_pflogging_enable_oslog > 0)
          {
            v15 = IsLogEnabled;
          }

          else
          {
            v15 = 0;
          }

          if (v12 == 1)
          {
            if (v15)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v34 = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }

              else
              {
                v24 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v34 = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }
            }

            v25 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
          }

          else
          {
            if (v15)
            {
              if (_pflogging_catastrophic_mode)
              {
                v23 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v34 = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v26 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v34 = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v26, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
                }
              }
            }

            v25 = "%@";
          }

          v27 = _pflogging_catastrophic_mode;
          v28 = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
          v29 = 6;
          if (v27)
          {
            v29 = 1;
          }

          _NSCoreDataLog_console(v29, v25, v28);
          objc_autoreleasePoolPop(v13);
        }

        *(a1 + 48) = batchInsertStatementCache;
        *(a1 + 80) = cachedSQLiteStatement;
        v30 = batchInsertStatementCache;
        v31 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  v17 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a1 "adapter")];
  v32 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow a2)];
  v18 = -[NSSQLiteAdapter newStatementWithEntity:]([a1 adapter], a2);
  v19 = -[NSSQLiteAdapter newGeneratorWithStatement:]([a1 adapter], v18);
  [(_NSSQLGenerator *)v19 prepareInsertStatementWithRow:v32 includeConstraints:1 includeOnConflict:a3 onConflictKeys:a4];
  if (v19)
  {
    v20 = v19[3];
    if (v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
    if (v18)
    {
LABEL_15:
      v21 = v18[4];
      if (v21 != v20)
      {

        v18[4] = [v20 copy];
      }
    }
  }

  [(NSSQLiteConnection *)a1 prepareSQLStatement:v18];
  [(NSSQLiteStatement *)*(a1 + 48) setCachedSQLiteStatement:a1 forConnection:?];
  if ((a3 & 1) == 0)
  {
    [(NSSQLiteStatementCache *)v9 cacheBatchInsertStatement:?];
  }

  [(NSSQLiteConnection *)a1 addVMCachedStatement:?];

  v22 = *MEMORY[0x1E69E9840];
}

- (uint64_t)insertArray:(uint64_t)a3 forEntity:(char)a4 includeOnConflict:
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    dispatch_assert_queue_V2(v8);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke;
  v11[3] = &unk_1E6EC4060;
  v11[5] = a3;
  v11[6] = &v13;
  v11[4] = a1;
  v12 = a4;
  [a2 enumerateObjectsUsingBlock:v11];
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke_2;
  v2[3] = &unk_1E6EC4038;
  v2[4] = a2;
  v2[5] = v3;
  *(*(*(a1 + 48) + 8) + 24) += [(NSSQLiteConnection *)*(a1 + 32) insertDictionaryBlock:v2 forEntity:*(a1 + 40) includeOnConflict:*(a1 + 56)];
  _Block_object_dispose(v3, 8);
}

uint64_t __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if ((v2 & 1) == 0)
  {
    [a2 addEntriesFromDictionary:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v2;
}

- (uint64_t)insertDictionaryBlock:(id *)a3 forEntity:(int)a4 includeOnConflict:
{
  v68 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v41 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    obj = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v49, "count")}];
    v5 = 0;
    v43 = 0;
    while (1)
    {
      v44 = v5;
      if (v5)
      {
        break;
      }

      v48 = objc_autoreleasePoolPush();
      [v49 removeAllObjects];
      [obj removeAllObjects];
      v47 = (*(a2 + 16))(a2, v49);
      if ((v47 & 1) == 0)
      {
        v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v49];
        while ([v6 count])
        {
          context = objc_autoreleasePoolPush();
          v7 = [_PFRoutines anyObjectFromCollection:v6];
          v8 = [v6 objectForKey:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v9 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
            if (v9)
            {
              v10 = *v62;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v62 != v10)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v12 = *(*(&v61 + 1) + 8 * i);
                  v13 = objc_autoreleasePoolPush();
                  v14 = [v8 objectForKey:v12];
                  [v6 setObject:v14 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", v7, v12)}];
                  objc_autoreleasePoolPop(v13);
                }

                v9 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
              }

              while (v9);
            }
          }

          else
          {
            [obj setObject:v8 forKey:v7];
          }

          [v6 removeObjectForKey:v7];
          objc_autoreleasePoolPop(context);
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v15 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v15)
        {
          v16 = *v58;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v58 != v16)
              {
                objc_enumerationMutation(obj);
              }

              if (dword_1ED4BEEC8 == 1)
              {
                v18 = *(*(&v57 + 1) + 8 * j);
                if (!a3 || ![a3[5] objectForKey:*(*(&v57 + 1) + 8 * j)])
                {
                  v32 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(a3, "name"), @"NSValidationErrorObject", v18, @"NSValidationErrorKey", 0}];
                  v33 = [_NSCoreDataException exceptionWithName:1605 code:@"property not found for entity" reason:v32 userInfo:?];
                  objc_exception_throw(v33);
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v15);
        }

        v19 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](a1, [a3 rootEntity], 1u);
        if (!v19)
        {
          v37 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys for batch insert" reason:0 userInfo:?];
          objc_exception_throw(v37);
        }

        -[NSSQLiteConnection prepareInsertStatementForEntity:includeConstraints:includeOnConflict:onConflictKeys:](a1, a3, a4, [obj allKeys]);
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v20 = [*(a1 + 48) bindVariables];
        v21 = [v20 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v21)
        {
          v22 = *v54;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v54 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v53 + 1) + 8 * k);
              if ([v24 index])
              {
                if ([v24 index] == 2)
                {
                  [v24 setUnsignedInt:1];
                }

                else
                {
                  v25 = [v24 propertyDescription];
                  v26 = v25;
                  if (v25)
                  {
                    v27 = [obj objectForKey:{objc_msgSend(v25, "_qualifiedName")}];
                    if (!v27 || (v28 = objc_opt_class(), v28 == objc_opt_class()))
                    {
                      if ([v26 defaultValue])
                      {
                        if ([v26 _propertyType] == 7)
                        {
                          v29 = [v26 _buildDefaultValue];
                        }

                        else
                        {
                          v29 = [v26 defaultValue];
                        }

                        v30 = v29;
                      }

                      else
                      {
                        if (([v26 isOptional] & 1) == 0)
                        {
                          v34 = MEMORY[0x1E695DF90];
                          v35 = [a3 entityDescription];
                          v36 = [v26 name];
                          -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](1570, @"mandatory property not set", v26, v27, [v34 dictionaryWithObjectsAndKeys:{v35, @"NSValidationErrorObject", v36, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"NSValidationErrorValue", 0}]);
                        }

                        v30 = 0;
                      }

                      [v24 setValue:v30];
                    }

                    else
                    {
                      [NSSQLiteConnection _validateProperty:v26 withValue:v27];
                      [v24 setValue:v27];
                    }
                  }
                }
              }

              else
              {
                [v24 setInt64:v19];
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v21);
        }

        [a1 execute];
        v43 += sqlite3_changes(*(a1 + 72));
        if (!*(a1 + 80))
        {
          v31 = [(NSSQLiteConnection *)a1 statementCacheForEntity:a3];
          [(NSSQLiteStatementCache *)v31 cacheBatchInsertStatement:?];
        }

        [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
        [(NSSQLiteConnection *)a1 resetSQLStatement];
      }

      objc_autoreleasePoolPop(v48);
      v5 = v47;
    }

    [v41 drain];
    v38 = 0;
    if ((v44 & 1) == 0)
    {
      objc_exception_rethrow();
    }
  }

  else
  {
    v43 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v43;
}

- (void)_batchInsertThrowWithErrorCode:(int)a1 andMessage:(void *)a2 forKey:(void *)a3 andValue:(uint64_t)a4 additionalDetail:(uint64_t)a5
{
  v10 = MEMORY[0x1E695DF90];
  v11 = [a3 entity];
  v12 = [a3 name];
  if (!a4)
  {
    a4 = [MEMORY[0x1E695DFB0] null];
  }

  v13 = [v10 dictionaryWithObjectsAndKeys:{v11, @"NSValidationErrorObject", v12, @"NSValidationErrorKey", a4, @"NSValidationErrorValue", 0}];
  if ([a2 length])
  {
    [v13 setValue:a2 forKey:@"reason"];
  }

  v14 = [objc_msgSend(MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:a1 userInfo:{0), "localizedDescription"}];
  v15 = [objc_msgSend(objc_msgSend(a3 "entity")];
  v16 = [v15 localizedEntityNameForEntity:{objc_msgSend(a3, "entity")}];
  v17 = [v15 localizedPropertyNameForProperty:a3];
  if (v16 | v17)
  {
    v18 = v17;
    v19 = [v14 mutableCopyWithZone:0];
    v20 = v19;
    if (v16)
    {
      [v19 replaceOccurrencesOfString:@"%{ENTITY}@" withString:v16 options:2 range:{0, objc_msgSend(v19, "length")}];
    }

    if (v18)
    {
      [v20 replaceOccurrencesOfString:@"%{PROPERTY}@" withString:v18 options:2 range:{0, objc_msgSend(v20, "length")}];
    }

    v21 = v20;
    [v13 setObject:v20 forKey:*MEMORY[0x1E696A578]];
  }

  [v13 addEntriesFromDictionary:a5];
  v22 = [_NSCoreDataException exceptionWithName:a1 code:a2 reason:v13 userInfo:?];
  objc_exception_throw(v22);
}

- (uint64_t)_validateProperty:(void *)a1 withValue:(void *)a2
{
  v40 = a2;
  if ([a1 _propertyType] != 2)
  {
    v26 = [a1 _propertyType];
    v27 = MEMORY[0x1E696AEC0];
    if (v26 != 6)
    {
      v32 = objc_opt_class();
      v33 = [v27 stringWithFormat:@"Property (%@) is not supported with NSBatchInsertRequest", NSStringFromClass(v32)];
      [NSSQLiteConnection _batchInsertThrowWithErrorCode:v33 andMessage:a1 forKey:a2 andValue:0 additionalDetail:?];
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set value for derived attribute: property = %@; entity = %@; value = %@", objc_msgSend(a1, "name"), objc_msgSend(objc_msgSend(a1, "entity"), "name"), a2, v37];
LABEL_60:
    -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](1550, v7, a1, a2, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(a1, "name"), @"key", a2, @"value", 0}]);
  }

  v4 = [a1 attributeType];
  if (v4 > 599)
  {
    if (v4 <= 799)
    {
      if (v4 != 600)
      {
        if (v4 == 700 && ([a2 isNSString] & 1) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_22;
      }
    }

    else if (v4 != 800)
    {
      if (v4 == 900)
      {
        if ([a2 isNSDate])
        {
          goto LABEL_34;
        }
      }

      else if (v4 == 1000)
      {
        if ([a1 isFileBackedFuture])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_34;
          }
        }

        else if ([a2 isNSData])
        {
          goto LABEL_34;
        }
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v4 > 299)
  {
    if (v4 != 300 && v4 != 500)
    {
      goto LABEL_22;
    }

LABEL_21:
    if ([a2 isNSNumber])
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (v4 == 100 || v4 == 200)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ([a1 isFileBackedFuture])
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = [a1 name];
    v36 = objc_opt_class();
    v38 = a2;
    v35 = @"A class implementing the NSFileBackedFuture protocol";
LABEL_59:
    v7 = [v30 stringWithFormat:@"Unacceptable type of value for attribute: property = %@; desired type = %@; given type = %@; value = %@.", v31, v35, v36, v38];
    goto LABEL_60;
  }

  v5 = [a1 _attributeValueClass];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_34;
    }

    if ([a2 isNSNumber] && objc_msgSend(v6, "isSubclassOfClass:", objc_opt_class()))
    {
      v40 = [MEMORY[0x1E696AB90] decimalNumberWithString:{objc_msgSend(a2, "stringValue")}];
      goto LABEL_34;
    }

    v30 = MEMORY[0x1E696AEC0];
    v31 = [a1 name];
    v34 = [a1 attributeValueClassName];
    v36 = objc_opt_class();
    v38 = a2;
    v35 = v34;
    goto LABEL_59;
  }

  if (([a1 isTransient] & 1) == 0 && objc_msgSend(a1, "attributeType") != 1800)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot set value for attribute with undefined type: property = %@; entity = %@; value = %@", objc_msgSend(a1, "name"), objc_msgSend(a1, "entity"), a2, v37];
    goto LABEL_60;
  }

LABEL_34:
  v39 = 0;
  if (([a1 _nonPredicateValidateValue:&v40 forKey:objc_msgSend(a1 inObject:"name") error:{0, &v39}] & 1) == 0)
  {
    v28 = [v39 code];
    v29 = [v39 localizedDescription];
    -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](v28, v29, a1, v40, [v39 userInfo]);
  }

  v8 = [a1 _rawValidationPredicates];
  v9 = [a1 _rawValidationWarnings];
  result = [v8 count];
  if (result)
  {
    v11 = result;
    for (i = 0; v11 != i; ++i)
    {
      v13 = [v8 objectAtIndex:i];
      result = [v13 evaluateWithObject:v40];
      if ((result & 1) == 0)
      {
        v14 = [v9 objectAtIndex:i];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(v8, "objectAtIndex:", i), @"NSValidationErrorPredicate", 0}];
        if (!v14)
        {
          v16 = v40;
          v17 = 1550;
          goto LABEL_46;
        }

        if ([v14 isNSString])
        {
          v19 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "entity")];
          if (v19)
          {
            v18 = v19;
          }

          else
          {
            v18 = v14;
          }

          v16 = v40;
          v17 = 1550;
          goto LABEL_51;
        }

        if ([v14 isNSNumber])
        {
          v17 = [v14 intValue];
          v16 = v40;
LABEL_46:
          v18 = 0;
LABEL_51:
          [NSSQLiteConnection _batchInsertThrowWithErrorCode:v17 andMessage:v18 forKey:a1 andValue:v16 additionalDetail:v15];
        }

        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if ((result & 1) == 0)
        {
          v20 = [v14 intValue];
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal validation warning: property = %@; predicate/warning index = %lu; warning = %@.", objc_msgSend(a1, "name"), i, v14];
          v22 = v40;
          v23 = MEMORY[0x1E695DF20];
          v24 = [a1 name];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:i];
          -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](v20, v21, a1, v22, [v23 dictionaryWithObjectsAndKeys:{v24, @"NSValidationErrorKey", v25, @"index", v14, @"warning", v40, @"NSValidationErrorValue", 0}]);
        }
      }
    }
  }

  return result;
}

- (uint64_t)insertManagedObjectBlock:(void *)a3 forEntity:(int)a4 includeOnConflict:
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      dispatch_assert_queue_V2(v5);
    }

    v30 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v34 = 0;
    v31 = a3;
    while (1)
    {
      v6 = -[NSManagedObject initWithEntity:insertIntoManagedObjectContext:]([NSManagedObject alloc], "initWithEntity:insertIntoManagedObjectContext:", [a3 entityDescription], 0);
      v36 = v6;
      v7 = v6 ? [(NSManagedObject *)v6 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?]: 0;
      [(NSManagedObject *)v36 _setOriginalSnapshot__:v7];

      if ((*(a2 + 16))(a2, v36))
      {
        break;
      }

      v37 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](a1, [a3 rootEntity], 1u);
      if (!v37)
      {
        v26 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys for batch insert" reason:0 userInfo:?];
        objc_exception_throw(v26);
      }

      [NSSQLiteConnection prepareInsertStatementForEntity:a1 includeConstraints:a3 includeOnConflict:a4 onConflictKeys:[(NSDictionary *)[(NSManagedObject *)v36 changedValues] allKeys]];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v8 = [*(a1 + 48) bindVariables];
      v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v9)
      {
        v10 = *v40;
        obj = v8;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v40 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v39 + 1) + 8 * i);
            if ([v12 index])
            {
              if ([v12 index] == 2)
              {
                [v12 setUnsignedInt:1];
              }

              else
              {
                v13 = [v12 propertyDescription];
                v14 = v13;
                if (v13)
                {
                  v15 = [objc_msgSend(objc_msgSend(v13 "_qualifiedName")];
                  v16 = -[NSManagedObject valueForKey:](v36, "valueForKey:", [v15 firstObject]);
                  [v15 removeObjectAtIndex:0];
                  for (j = 0; j < [v15 count]; ++j)
                  {
                    v18 = [v15 objectAtIndex:j];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v16 = [v16 objectForKey:v18];
                    }
                  }

                  if (!v16 || (v19 = objc_opt_class(), v19 == objc_opt_class()))
                  {
                    if ([v14 defaultValue])
                    {
                      if ([v14 _propertyType] == 7)
                      {
                        v20 = [v14 _buildDefaultValue];
                      }

                      else
                      {
                        v20 = [v14 defaultValue];
                      }

                      v21 = v20;
                    }

                    else
                    {
                      if (([v14 isOptional] & 1) == 0)
                      {
                        v23 = MEMORY[0x1E695DF90];
                        v24 = [v31 entityDescription];
                        v25 = [v14 name];
                        -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](1570, @"mandatory property not set", v14, v16, [v23 dictionaryWithObjectsAndKeys:{v24, @"NSValidationErrorObject", v25, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"NSValidationErrorValue", 0}]);
                      }

                      v21 = 0;
                    }

                    [v12 setValue:v21];
                  }

                  else
                  {
                    [NSSQLiteConnection _validateProperty:v14 withValue:v16];
                    [v12 setValue:v16];
                  }
                }
              }
            }

            else
            {
              [v12 setInt64:v37];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v9);
      }

      [a1 execute];
      a3 = v31;
      v34 += sqlite3_changes(*(a1 + 72));
      if (!*(a1 + 80))
      {
        v22 = [(NSSQLiteConnection *)a1 statementCacheForEntity:v31];
        [(NSSQLiteStatementCache *)v22 cacheBatchInsertStatement:?];
      }

      [(NSSQLiteConnection *)a1 _clearBindVariablesForInsertedRow];
      [(NSSQLiteConnection *)a1 resetSQLStatement];
    }

    [v30 drain];
    v27 = 0;
  }

  else
  {
    v34 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)gatherObjectIDsFromTable:(uint64_t)a1
{
  v2 = a1;
  v9[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([(NSSQLiteConnection *)a1 _tableHasRows:a2])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT DISTINCT ENTITYID, PRIMEKEY FROM %@", a2];
      v5 = [[NSSQLColumn alloc] initWithColumnName:@"ENTITYID" sqlType:2];
      v6 = [[NSSQLColumn alloc] initWithColumnName:@"PRIMEKEY" sqlType:2];
      v9[0] = v5;
      v9[1] = v6;
      v2 = -[NSSQLiteConnection createArrayOfObjectIDsMatchingSelectStatement:forColumns:primaryKeyIndex:entityIDIndex:](v2, v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2], 1, 0);
    }

    else
    {
      v2 = NSArray_EmptyArray;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)createArrayOfObjectIDsMatchingSelectStatement:(void *)a3 forColumns:(uint64_t)a4 primaryKeyIndex:(uint64_t)a5 entityIDIndex:
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], a2);
  [(NSSQLiteConnection *)a1 prepareSQLStatement:v9];
  [(NSSQLiteConnection *)a1 setColumnsToFetch:a3];
  [a1 execute];
  v23 = v9;
  while (1)
  {
    v10 = [(NSSQLiteConnection *)a1 newFetchedArray];
    v11 = v10;
    if (!v10)
    {
      break;
    }

    if ([v10 count] == 2)
    {
      v12 = [v11 objectAtIndex:a4];
      v13 = [v11 objectAtIndex:a5];
      if ([v13 unsignedLongValue] >> 7 < 0x7D)
      {
        v18 = [objc_msgSend(*(a1 + 16) "model")];
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [objc_msgSend(*(a1 + 16) "ancillarySQLModels")];
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          v16 = *v26;
LABEL_7:
          v17 = 0;
          while (1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [*(*(&v25 + 1) + 8 * v17) entityForID:{objc_msgSend(v13, "unsignedLongValue")}];
            if (v18)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
              v18 = 0;
              if (v15)
              {
                goto LABEL_7;
              }

              break;
            }
          }
        }

        else
        {
          v18 = 0;
        }
      }

      v9 = v23;
      v19 = [*(a1 + 16) newObjectIDForEntity:v18 pk:{objc_msgSend(v12, "unsignedLongLongValue")}];
      [v24 addObject:v19];
    }
  }

  [(NSSQLiteConnection *)a1 releaseSQLStatement];
  [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
  *(a1 + 312) &= ~2u;
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;

  v20 = *MEMORY[0x1E69E9840];
  return v24;
}

- (uint64_t)_int64ResultForSQL:(uint64_t)a1
{
  v2 = [(NSSQLiteConnection *)a1 copyRawIntegerRowsForSQL:a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) && *CFArrayGetValueAtIndex(v3, 0))
  {
    v4 = *CFArrayGetValueAtIndex(v3, 1);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

- (uint64_t)percentageUsedByPersistentHistory
{
  v39 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [(NSSQLiteConnection *)result _int64ResultForSQL:?];
    v3 = [(NSSQLiteConnection *)v1 _int64ResultForSQL:?];
    v4 = v2 - v3;
    if (v2 - v3 < 1)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v34 = v2;
        v35 = 2048;
        v36 = v3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Percentage History calculation error. Total Pages - %lld  Free Pages - %lld\n", buf, 0x16u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v34 = v2;
        v35 = 2048;
        v36 = v3;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Percentage History calculation error. Total Pages - %lld  Free Pages - %lld", buf, 0x16u);
      }

      result = 0;
    }

    else
    {
      v5 = [objc_msgSend(*(v1 + 16) "ancillarySQLModels")];
      if (v5)
      {
        v5 = v5[4];
      }

      v6 = [v5 valueForKey:@"tableName"];
      v7 = [v6 count];
      v8 = 0x1E696A000uLL;
      if (v7)
      {
        v26 = v2 - v3;
        v27 = v3;
        v28 = v2;
        v9 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = [v6 countByEnumeratingWithState:&v29 objects:buf count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          v13 = 1;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v6);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              if ((v13 & 1) == 0)
              {
                [v9 appendString:{@", "}];
              }

              [v9 appendFormat:@"'%@'", v15];
              v13 = 0;
            }

            v11 = [v6 countByEnumeratingWithState:&v29 objects:buf count:16];
            v13 = 0;
          }

          while (v11);
        }

        [v9 appendString:@""]);
        v3 = v27;
        v2 = v28;
        v4 = v26;
        v8 = 0x1E696A000;
      }

      else
      {
        v9 = 0;
      }

      v18 = [objc_alloc(*(v8 + 3424)) initWithFormat:@"SELECT sum(pageno) FROM dbstat d, sqlite_master m WHERE d.name = m.name AND d.aggregate = TRUE"];
      v19 = v18;
      if (v9)
      {
        [v18 appendFormat:@" AND m.tbl_name IN %@", v9];
      }

      v20 = [(NSSQLiteConnection *)v1 _int64ResultForSQL:v19];

      v21 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v22 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v34 = v2;
            v35 = 2048;
            v36 = v3;
            v37 = 2048;
            v38 = v20;
            _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Percentage History: total pages - %lld, free pages - %lld, historyPages - %lld\n", buf, 0x20u);
          }
        }

        else
        {
          v23 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v34 = v2;
            v35 = 2048;
            v36 = v3;
            v37 = 2048;
            v38 = v20;
            _os_log_impl(&dword_18565F000, v23, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Percentage History: total pages - %lld, free pages - %lld, historyPages - %lld\n", buf, 0x20u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v24 = 1;
      }

      else
      {
        v24 = 4;
      }

      _NSCoreDataLog_console(v24, "Percentage History: total pages - %lld, free pages - %lld, historyPages - %lld", v2, v3, v20);
      objc_autoreleasePoolPop(v21);
      result = 100 * v20 / v4;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)registerMigrationUpdateFunctionWithMigrator:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (NSSQLiteRegisterMigrationFunctions(*(a1 + 72), pApp))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An internal error occurred while configuring migration functions in the SQLite database." userInfo:0]);
    }
  }

  return a1 != 0;
}

- (void)executeAttributeUniquenessCheckSQLStatement:(void *)a3 returningColumns:
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(NSSQLiteConnection *)a1 prepareSQLStatement:a2];
    [a1 execute];
    v7 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (v11 && *(v11 + 24) == 7)
          {
            [v7 addObject:*(*(&v15 + 1) + 8 * i)];
            if (*(v11 + 72))
            {
              [v7 addObject:?];
            }
          }

          else
          {
            [v7 addObject:*(*(&v15 + 1) + 8 * i)];
          }
        }

        v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(NSSQLiteConnection *)a1 setColumnsToFetch:v7];
    while (1)
    {
      v12 = [(NSSQLiteConnection *)a1 newFetchedArray];
      if (!v12)
      {
        break;
      }

      [v6 addObject:v12];
    }

    [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
    *(a1 + 312) &= ~2u;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    *(a1 + 108) = 0;
    [(NSSQLiteConnection *)a1 _finalizeStatement];
    [(NSSQLiteConnection *)a1 resetSQLStatement];
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)executeMulticolumnUniquenessCheckSQLStatement:(void *)a3 returningColumns:
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    [(NSSQLiteConnection *)a1 prepareSQLStatement:a2];
    [a1 execute];
    v7 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (v11 && *(v11 + 24) == 7)
          {
            [v7 addObject:*(*(&v15 + 1) + 8 * i)];
            if (*(v11 + 72))
            {
              [v7 addObject:?];
            }
          }

          else
          {
            [v7 addObject:*(*(&v15 + 1) + 8 * i)];
          }
        }

        v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(NSSQLiteConnection *)a1 setColumnsToFetch:v7];
    while (1)
    {
      v12 = [(NSSQLiteConnection *)a1 newFetchedArray];
      if (!v12)
      {
        break;
      }

      [v6 addObject:v12];
    }

    [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
    *(a1 + 312) &= ~2u;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    *(a1 + 108) = 0;
    [(NSSQLiteConnection *)a1 _finalizeStatement];
    [(NSSQLiteConnection *)a1 resetSQLStatement];
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)_adoptQueryGenerationWithSnapshot:(uint64_t)a1
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (a2)
  {
    if (!*(a1 + 72))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"database connection must not be nil here" userInfo:0]);
    }

    v5 = [a2 bytes];
    if (v5)
    {
      v6 = v5;
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v7 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218754;
              v24 = a1;
              v25 = 2112;
              v26 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:48];
              v27 = 2112;
              v28 = a2;
              v29 = 2048;
              v30 = v6;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: connection %p adopting snapshot:\n\tss value: %@\n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              v24 = a1;
              v25 = 2112;
              v26 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:48];
              v27 = 2112;
              v28 = a2;
              v29 = 2048;
              v30 = v6;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: connection %p adopting snapshot:\n\tss value: %@\n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
            }
          }
        }

        v12 = _pflogging_catastrophic_mode;
        v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:48];
        v14 = 4;
        if (v12)
        {
          v14 = 1;
        }

        _NSCoreDataLog_console(v14, "connection %p adopting snapshot:\n\tss value: %@\n\tpointer value:%@\n\tpointer: %p", a1, v13, a2, v6);
        objc_autoreleasePoolPop(v7);
      }

      while (1)
      {
        if (*(a1 + 16))
        {
          os_unfair_lock_lock_with_options();
        }

        a2 = sqlite3_snapshot_open(*(a1 + 72), "main", v6);
        v15 = *(a1 + 16);
        if (v15)
        {
          os_unfair_lock_unlock(v15 + 39);
        }

        if (a2 == 517 || a2 == 0)
        {
          break;
        }

        if (a2 != 5)
        {
          goto LABEL_33;
        }

        usleep(0x64u);
      }

      if (!a2)
      {
        goto LABEL_39;
      }

LABEL_33:
      v17 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_38;
      }

      v18 = _pflogging_catastrophic_mode;
      v19 = _PFLogGetLogStream(1);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (v20)
        {
          *buf = 134217984;
          v24 = a2;
LABEL_41:
          _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_open failed with %ld\n", buf, 0xCu);
        }
      }

      else if (v20)
      {
        *buf = 134217984;
        v24 = a2;
        goto LABEL_41;
      }

LABEL_38:
      _NSCoreDataLog_console(1, "sqlite3_snapshot_open failed with %ld", a2);
      objc_autoreleasePoolPop(v17);
      goto LABEL_39;
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: sqlite3_snapshot data was unexpectedly NULL\n", buf, 2u);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: sqlite3_snapshot data was unexpectedly NULL", buf, 2u);
    }

    a2 = 7;
  }

LABEL_39:
  v21 = *MEMORY[0x1E69E9840];
  return a2;
}

- (uint64_t)_registerNewQueryGenerationSnapshot:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_22;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if ([*(a1 + 328) count])
  {
    v5 = [*(a1 + 328) count];
    v6 = v5;
    if (v5)
    {
      v7 = 0;
      v8 = v5 - 1;
      while (1)
      {
        v9 = [a2 compare:{objc_msgSend(*(a1 + 328), "objectAtIndex:", v7)}];
        if (v9 < 0)
        {
          break;
        }

        if (v9)
        {
          if (v8 == v7)
          {
            [*(a1 + 328) addObject:a2];
          }

          if (v6 != ++v7)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      [*(a1 + 328) insertObject:a2 atIndex:v7];
      if (v7)
      {
        goto LABEL_19;
      }

      v10 = [(NSSQLiteConnection *)a1 _adoptQueryGenerationWithSnapshot:a2];
      v6 = v10;
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v16 = v10;
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v16 = v10;
        }

        goto LABEL_31;
      }

      goto LABEL_21;
    }
  }

  else
  {
    [(NSSQLiteConnection *)a1 beginReadTransaction];
    [*(a1 + 328) addObject:a2];
    v10 = [(NSSQLiteConnection *)a1 _adoptQueryGenerationWithSnapshot:a2];
    v6 = v10;
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v16 = v10;
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v16 = v10;
        }

LABEL_31:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _registerNewQueryGenerationSnapshot failed to adopt query generation with error %d\n", buf, 8u);
      }

LABEL_21:
      _NSCoreDataLog_console(1, "_registerNewQueryGenerationSnapshot failed to adopt query generation with error %d", v10);
      objc_autoreleasePoolPop(v11);
    }
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)registerCurrentQueryGenerationWithStore:(uint64_t)a3 retries:
{
  if (!a1)
  {
    return 0;
  }

  [(NSSQLiteConnection *)a1 connect];
  if ([(NSSQLiteConnection *)a1 _ensureWalFileExists]< 0)
  {
    return 14;
  }

  [(NSSQLiteConnection *)a1 beginReadTransaction];
  v10 = 0;
  v6 = [(NSSQLiteConnection *)a1 _currentQueryGenerationSnapshot:?];
  if (v6)
  {
    v7 = [(NSSQLCore *)a2 _registerNewQueryGenerationSnapshot:v6];
  }

  else
  {
    v7 = 0;
  }

  [(NSSQLiteConnection *)a1 rollbackTransaction];
  if (!v6)
  {
    if (v10)
    {
      v8 = [v10 code];
      if (a3)
      {
        if (v8 == 134181)
        {
          v7 = [(NSSQLiteConnection *)a1 registerCurrentQueryGenerationWithStore:a2 retries:0];
        }
      }
    }
  }

  return v7;
}

- (uint64_t)freeQueryGenerationWithIdentifier:(uint64_t)a1
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = *(a1 + 328);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__NSSQLiteConnection_freeQueryGenerationWithIdentifier___block_invoke;
    v28[3] = &unk_1E6EC4088;
    v28[4] = a2;
    v6 = [v5 indexOfObjectPassingTest:v28];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [*(a1 + 328) objectAtIndex:v6];
      v8 = v7;
      if (!v7 || atomic_fetch_add_explicit(v7 + 4, 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        v9 = *(a1 + 328);
        if (!v6)
        {
          if ([v9 count] < 2)
          {
            [*(a1 + 328) removeObject:v8];
            v17 = *(a1 + 16);
            if (v17)
            {
              [(NSGenerationalRowCache *)*(v17 + 136) removeRowCacheForGenerationWithIdentifier:v8];
            }

            v11 = 1;
          }

          else
          {
            for (i = 1; i < [*(a1 + 328) count]; ++i)
            {
              v16 = [*(a1 + 328) objectAtIndex:i];
              if (v16)
              {
                if (*(v16 + 16) > 0)
                {
                  break;
                }
              }
            }

            v18 = [*(a1 + 328) subarrayWithRange:{0, i}];
            v19 = [*(a1 + 328) copy];
            [*(a1 + 328) removeObjectsInRange:{0, i}];
            if ([*(a1 + 328) count] && -[NSSQLiteConnection _adoptQueryGenerationWithSnapshot:](a1, objc_msgSend(*(a1 + 328), "firstObject")))
            {
              v11 = 0;
              [*(a1 + 328) setArray:v19];
            }

            else
            {
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v20 = [v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
              if (v20)
              {
                v21 = *v25;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v25 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(a1 + 16);
                    if (v23)
                    {
                      [(NSGenerationalRowCache *)*(v23 + 136) removeRowCacheForGenerationWithIdentifier:?];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
                }

                while (v20);
              }

              v11 = [*(a1 + 328) count] == 0;
            }
          }

          goto LABEL_13;
        }

        if (v6 < [v9 count] - 1)
        {
          [*(a1 + 328) removeObject:v8];
        }

        v10 = *(a1 + 16);
        if (v10)
        {
          [(NSGenerationalRowCache *)*(v10 + 136) removeRowCacheForGenerationWithIdentifier:v8];
        }
      }

      v11 = 0;
LABEL_13:

      if (v11)
      {
        v12 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: WAL checkpoint"];
        [(NSSQLiteConnection *)a1 rollbackTransaction];
        [(NSSQLiteConnection *)a1 _performPostSaveTasks:0 andForceFullVacuum:?];
        [(NSSQLiteConnection *)a1 _ensureWalFileExists];
        [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v12];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)adoptQueryGenerationWithIdentifier:(uint64_t)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if ((*(v3 + 313) & 2) != 0)
    {
      goto LABEL_14;
    }

    v5 = sqlite3_snapshot_recover(*(v3 + 72), "main");
    if (!v5 || (v6 = v5, readFileSizeFromJournalHandle(*(v3 + 72)) < 1))
    {
      *(v3 + 312) |= 0x200u;
LABEL_14:
      result = [(NSSQLiteConnection *)v3 _adoptQueryGenerationWithSnapshot:a2];
      goto LABEL_15;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          v13 = v6;
LABEL_17:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_recover failed with %d\n", buf, 8u);
        }
      }

      else if (v10)
      {
        *buf = 67109120;
        v13 = v6;
        goto LABEL_17;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_snapshot_recover failed with %d", v6);
    objc_autoreleasePoolPop(v7);
    goto LABEL_14;
  }

LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reopenQueryGenerationWithIdentifier:(void *)a3 error:
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_18;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (!a2)
  {
    goto LABEL_47;
  }

  if (!*(a1 + 72))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"database connection must not be nil here" userInfo:0]);
  }

  v7 = *(a1 + 40);
  v8 = [a2 bytes];
  if (!v8)
  {
LABEL_18:
    a2 = 0;
    goto LABEL_47;
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    NSLog(@"connection %p attempting to reopen snapshot: %p", a1, v8);
  }

  if ((v7 & 1) == 0)
  {
    [(NSSQLiteConnection *)a1 beginReadTransaction];
  }

  if ((*(a1 + 313) & 2) == 0)
  {
    v9 = sqlite3_snapshot_recover(*(a1 + 72), "main");
    if (!v9 || readFileSizeFromJournalHandle(*(a1 + 72)) < 1)
    {
      *(a1 + 312) |= 0x200u;
      goto LABEL_22;
    }

    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_21;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = v9;
LABEL_51:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_recover failed with %d\n", buf, 8u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = v9;
        goto LABEL_51;
      }
    }

LABEL_21:
    _NSCoreDataLog_console(1, "sqlite3_snapshot_recover failed with %d", v9);
    objc_autoreleasePoolPop(v10);
    goto LABEL_22;
  }

  while (1)
  {
LABEL_22:
    if (*(a1 + 16))
    {
      os_unfair_lock_lock_with_options();
    }

    v12 = sqlite3_snapshot_open(*(a1 + 72), "main", v8);
    v13 = *(a1 + 16);
    if (v13)
    {
      os_unfair_lock_unlock(v13 + 39);
    }

    if (v12 == 517 || v12 == 0)
    {
      break;
    }

    if (v12 != 5)
    {
      goto LABEL_33;
    }

    usleep(0x64u);
  }

  if (v12)
  {
LABEL_33:
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_42;
    }

    if (_pflogging_catastrophic_mode)
    {
      v16 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 67109120;
      v22 = v12;
    }

    else
    {
      v16 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 67109120;
      v22 = v12;
    }

    _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: Attempt to reopen sqlite3_snapshot_open failed %d\n", buf, 8u);
LABEL_42:
    _NSCoreDataLog_console(1, "Attempt to reopen sqlite3_snapshot_open failed %d", v12);
    objc_autoreleasePoolPop(v15);
    if (a3)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v12), @"NSSQLiteErrorDomain", 0}];
      a2 = 0;
      *a3 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:134180 userInfo:v18];
      if (v7)
      {
        goto LABEL_47;
      }
    }

    else
    {
      a2 = 0;
      if (v7)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_46;
  }

  if ([(NSSQLCore *)*(a1 + 16) _registerNewQueryGenerationSnapshot:a2]< 0)
  {
    a2 = 0;
  }

  if ((v7 & 1) == 0)
  {
LABEL_46:
    [(NSSQLiteConnection *)a1 rollbackTransaction];
  }

LABEL_47:
  v19 = *MEMORY[0x1E69E9840];
  return a2;
}

- (uint64_t)_dropAllTriggers
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [(NSSQLiteConnection *)result fetchCreationSQLForType:0 containing:?];
    result = [v2 count];
    if (result)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v10;
        do
        {
          v5 = 0;
          do
          {
            if (*v10 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = *(*(&v9 + 1) + 8 * v5);
            if ([v6 count] == 2)
            {
              v7 = [objc_msgSend(v6 "lastObject")];
              if ([v7 count] >= 4)
              {
                if ([objc_msgSend(v7 objectAtIndexedSubscript:{2), "hasPrefix:", @"Z"}])
                {
                  -[NSSQLiteConnection _executeSQLString:](v1, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER %@", objc_msgSend(v7, "objectAtIndexedSubscript:", 2)]);
                }
              }
            }

            ++v5;
          }

          while (v3 != v5);
          result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v3 = result;
        }

        while (result);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_dropAllDATriggers
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [(NSSQLiteConnection *)result fetchCreationSQLForType:0 containing:?];
    result = [v2 count];
    if (result)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v11;
        do
        {
          v5 = 0;
          do
          {
            if (*v11 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = *(*(&v10 + 1) + 8 * v5);
            if ([v6 count] == 2)
            {
              v7 = [objc_msgSend(v6 "lastObject")];
              if ([v7 count] >= 4)
              {
                v8 = [v7 objectAtIndexedSubscript:2];
                if (([v8 hasPrefix:@"Z_DA_"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"Z") && (objc_msgSend(v8, "hasPrefix:", @"Z_RT_") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"ZT_") & 1) == 0 && ((objc_msgSend(v8, "hasSuffix:", @"INSERT") & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"UPDATE") & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"DELETE") & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"SET") & 1) != 0 || objc_msgSend(v8, "hasSuffix:", @"UNSET")))
                {
                  -[NSSQLiteConnection _executeSQLString:](v1, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER %@", v8]);
                }
              }
            }

            ++v5;
          }

          while (v3 != v5);
          result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v3 = result;
        }

        while (result);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)triggerUpdatedRowInTable:(uint64_t)a3 withEntityID:(uint64_t)a4 primaryKey:columnName:newValue:
{
  if (a1)
  {
    v6 = [objc_msgSend(*(a1 + 16) "model")];
    if (v6)
    {
      v7 = [*(a1 + 16) newObjectIDForEntity:v6 pk:a4];
      [*(a1 + 168) addObject:v7];
    }
  }
}

- (void)derivedAttributeUpdatedInsertedRowInTable:(uint64_t)a3 withEntityID:(uint64_t)a4 primaryKey:(uint64_t)a5 columnName:(uint64_t)a6 newValue:
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = [objc_msgSend(*(a1 + 16) "model")];
    if (v10)
    {
      v11 = [*(a1 + 16) newObjectIDForEntity:v10 pk:a4];
      v12 = *(a1 + 176);
      v14[0] = v11;
      v14[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a5];
      if (!a6)
      {
        a6 = [MEMORY[0x1E695DFB0] null];
      }

      v14[2] = a6;
      [v12 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 3)}];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)derivedAttributeUpdatedRowInTable:(uint64_t)a3 withEntityID:(uint64_t)a4 primaryKey:(uint64_t)a5 columnName:(uint64_t)a6 newValue:
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = [objc_msgSend(*(a1 + 16) "model")];
    if (v10)
    {
      v11 = [*(a1 + 16) newObjectIDForEntity:v10 pk:a4];
      v12 = *(a1 + 184);
      v14[0] = v11;
      v14[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a5];
      if (!a6)
      {
        a6 = [MEMORY[0x1E695DFB0] null];
      }

      v14[2] = a6;
      [v12 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 3)}];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)createArrayOfPrimaryKeysAndEntityIDsForRowsWithoutRecordMetadataWithEntity:(id *)a3 metadataEntity:
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v27 = 0;
    goto LABEL_18;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSSQLiteConnection *)a1 connect];
  if (a2)
  {
    v6 = a2[16];
    v7 = a2[17];
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    if (a3)
    {
LABEL_4:
      v26 = [a3[5] objectForKey:@"entityPK"];
      v8 = [a3[5] objectForKey:@"entityId"];
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_5;
    }
  }

  v26 = 0;
  v8 = 0;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (!v7 || !v26 || !v8)
  {
LABEL_22:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Missing one or more columns to query record metadata for missing rows" userInfo:0]);
  }

  v25 = [objc_msgSend(a2 "tableName")];
  v24 = [objc_msgSend(a2 "tableName")];
  v9 = [objc_msgSend(a3 "tableName")];
  v10 = [objc_msgSend(a3 "tableName")];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@, %@, %@, %@ FROM %@ LEFT JOIN %@ ON %@ = %@ AND %@ = %@", v25, v24, v9, v10, objc_msgSend(a2, "tableName"), objc_msgSend(a3, "tableName"), v25, v9, v24, v10];
  v12 = -[NSSQLiteAdapter newStatementWithSQLString:]([a1 adapter], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"SELECT %@, %@ FROM (%@) WHERE %@ IS NULL AND %@ IS NULL", objc_msgSend(v6, "columnName"), objc_msgSend(v7, "columnName"), v11, objc_msgSend(v26, "columnName"), objc_msgSend(v8, "columnName")));
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [[NSSQLColumn alloc] initWithColumnName:v25 sqlType:2];
  [v13 addObject:v14];

  v15 = [[NSSQLColumn alloc] initWithColumnName:v24 sqlType:2];
  [v13 addObject:v15];

  [(NSSQLiteConnection *)a1 _ensureDatabaseOpen];
  [(NSSQLiteConnection *)a1 _ensureNoStatementPrepared];
  [(NSSQLiteConnection *)a1 _ensureNoTransactionOpen];
  [(NSSQLiteConnection *)a1 _ensureNoFetchInProgress];
  [(NSSQLiteConnection *)a1 beginReadTransaction];
  [(NSSQLiteConnection *)a1 setColumnsToFetch:v13];
  [(NSSQLiteConnection *)a1 prepareSQLStatement:v12];
  [a1 execute];
  while (1)
  {
    v16 = [(NSSQLiteConnection *)a1 newFetchedArray];
    v17 = v16;
    if (!v16)
    {
      break;
    }

    if ([v16 count] == 2)
    {
      v18 = [v17 objectAtIndexedSubscript:0];
      v19 = [v17 objectAtIndexedSubscript:1];
      v30[0] = v18;
      v30[1] = v19;
      [v27 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 2)}];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v17;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Missing metadata query got an unexpected number of columns in the result: %@\n", buf, 0xCu);
      }

      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = v17;
        _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Missing metadata query got an unexpected number of columns in the result: %@", buf, 0xCu);
      }
    }
  }

  [(NSSQLiteConnection *)a1 releaseSQLStatement];
  [(NSSQLiteConnection *)a1 setColumnsToFetch:?];
  *(a1 + 312) &= ~2u;
  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  *(a1 + 108) = 0;
  [(NSSQLiteConnection *)a1 rollbackTransaction];

LABEL_18:
  v22 = *MEMORY[0x1E69E9840];
  return v27;
}

- (uint64_t)dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity:(uint64_t)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2)
    {
      if ([*(a2 + 208) count])
      {
LABEL_10:
        v7 = *(a2 + 216);
LABEL_11:
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity___block_invoke;
        v10[3] = &unk_1E6EC1510;
        v10[4] = v3;
        v10[5] = a2;
        result = [v7 enumerateObjectsUsingBlock:v10];
        goto LABEL_12;
      }

      v4 = *(a2 + 216);
    }

    else
    {
      v9 = [0 count];
      v4 = 0;
      v7 = 0;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    if ([v4 count])
    {
      goto LABEL_9;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Entity marked as needing unique constraint coalescing but does not appear to be uniqued: %@\n", buf, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v12 = a2;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Entity marked as needing unique constraint coalescing but does not appear to be uniqued: %@", buf, 0xCu);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_9:
      if (a2)
      {
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __77__NSSQLiteConnection_dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v5;
    if (v4)
    {
      v7 = v4[16];
    }

    else
    {
      v7 = 0;
    }

    [v5 addObject:v7];
    v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT %@, ", objc_msgSend(objc_msgSend(v6, "objectAtIndexedSubscript:", 0), "columnName")];
    v9 = objc_alloc(MEMORY[0x1E696AD60]);
    if (v4)
    {
      v10 = [v4[16] columnName];
      v11 = [v4[16] columnName];
      v12 = v4[16];
    }

    else
    {
      v10 = [0 columnName];
      v11 = [0 columnName];
      v12 = 0;
    }

    v13 = [v9 initWithFormat:@"SELECT COUNT(DISTINCT(%@)) AS COUNT, MIN(%@) AS %@, ", v10, v11, objc_msgSend(v12, "columnName")];
    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"GROUP BY "];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke;
    v19[3] = &unk_1E6EC40D8;
    v19[4] = v6;
    v19[5] = v13;
    v19[6] = v14;
    v19[7] = v8;
    [a2 enumerateObjectsUsingBlock:v19];
    [v13 appendFormat:@" FROM %@ %@ ORDER BY COUNT DESC", objc_msgSend(v4, "tableName"), v14];
    [v8 appendFormat:@" FROM (%@) WHERE COUNT > 1;", v13];
    v15 = [[NSSQLiteStatement alloc] initWithEntity:v4 sqlString:v8];
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSSQLiteConnection *)v2 prepareSQLStatement:v15];
    [v2 execute];
    [(NSSQLiteConnection *)v2 setColumnsToFetch:v6];
    while (1)
    {
      v17 = [(NSSQLiteConnection *)v2 newFetchedArray];
      if (!v17)
      {
        break;
      }

      [v16 addObject:v17];
    }

    [(NSSQLiteConnection *)v2 setColumnsToFetch:?];
    *(v2 + 312) &= ~2u;
    *(v2 + 100) = 0;
    *(v2 + 92) = 0;
    *(v2 + 108) = 0;
    [(NSSQLiteConnection *)v2 _finalizeStatement];
    [(NSSQLiteConnection *)v2 resetSQLStatement];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_2;
    v18[3] = &unk_1E6EC4100;
    v18[4] = v4;
    v18[5] = v6;
    v18[6] = v2;
    [v16 enumerateObjectsUsingBlock:v18];
  }
}

uint64_t __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke(id *a1, void *a2, uint64_t a3)
{
  [a1[4] addObject:a2];
  if (a3)
  {
    [a1[5] appendString:{@", "}];
    [a1[6] appendString:{@", "}];
    [a1[7] appendString:{@", "}];
  }

  [a1[5] appendString:{objc_msgSend(a2, "columnName")}];
  [a1[6] appendString:{objc_msgSend(a2, "columnName")}];
  v6 = a1[7];
  v7 = [a2 columnName];

  return [v6 appendString:v7];
}

void __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM %@ WHERE ", objc_msgSend(*(a1 + 32), "tableName")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_3;
  v6[3] = &unk_1E6EC1510;
  v6[4] = *(a1 + 40);
  v6[5] = v4;
  [a2 enumerateObjectsUsingBlock:v6];
  v5 = [[NSSQLiteStatement alloc] initWithEntity:*(a1 + 32) sqlString:v4];
  [(NSSQLiteConnection *)*(a1 + 48) prepareAndExecuteSQLStatement:v5];
}

void __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:?];
  if (a3)
  {
    [*(a1 + 40) appendString:@" AND "];
  }

  if ([a2 isNSString])
  {
    [*(a1 + 40) appendFormat:@"%@ = '%@'", objc_msgSend(v6, "columnName"), a2];
  }

  else if ([a2 isNSNumber])
  {
    [*(a1 + 40) appendFormat:@"%@ = %@", objc_msgSend(v6, "columnName"), a2];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit: Deduping for metadata entity doesn't know how to handle this type of object yet: %@ - %@\n", buf, 0x16u);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: CloudKit: Deduping for metadata entity doesn't know how to handle this type of object yet: %@ - %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)createArrayOfObjectIDsFromTableWithName:(void *)a3 usingPrimaryKeyColumn:(void *)a4 entityIDColumn:(void *)a5 matchingWhereClause:(uint64_t)a6 limit:(uint64_t)a7 offset:
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (!result)
  {
LABEL_9:
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v13 = result;
  if ([(NSSQLiteConnection *)result _tableHasRows:a2])
  {
    v14 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT %@, %@ FROM %@", objc_msgSend(a3, "columnName"), objc_msgSend(a4, "columnName"), a2];
    if ([a5 length])
    {
      [v14 appendFormat:@" WHERE %@", a5];
    }

    if ((a6 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
    {
      [v14 appendFormat:@" LIMIT %lu", a6];
      if ((a7 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
      {
        [v14 appendFormat:@" OFFSET %lu", a7];
      }
    }

    v18[0] = a3;
    v18[1] = a4;
    result = -[NSSQLiteConnection createArrayOfObjectIDsMatchingSelectStatement:forColumns:primaryKeyIndex:entityIDIndex:](v13, v14, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2], 0, 1);
    goto LABEL_9;
  }

  v16 = NSArray_EmptyArray;
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end