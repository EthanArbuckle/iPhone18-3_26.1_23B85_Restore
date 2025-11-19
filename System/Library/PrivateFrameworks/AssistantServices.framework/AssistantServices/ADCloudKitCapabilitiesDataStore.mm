@interface ADCloudKitCapabilitiesDataStore
- (ADCloudKitCapabilitiesDataStore)initWithHelper:(id)a3;
- (id)_addMissingColumnsForTable:(id)a3 withDescription:(id)a4 inDatabase:(id)a5;
- (id)_databasePath;
- (id)_fetchSQLiteRecordsOwnedByLocalDeviceFromTable:(id)a3;
- (id)_preparedDatabaseWithError:(id *)a3;
- (void)_deleteSQLiteRecordsWithCriterion:(id)a3 inTable:(id)a4;
- (void)_writeSQLiteRecords:(id)a3 toTable:(id)a4;
- (void)fetchDeviceTypesForAllLanguages:(id)a3;
- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4;
- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6;
- (void)synchronizeWithCompletion:(id)a3;
@end

@implementation ADCloudKitCapabilitiesDataStore

- (void)fetchDeviceTypesForLanguage:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (void)fetchDeviceTypesForAllLanguages:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0, 0);
  }
}

- (void)mergeDataWithModifiedRecords:(id)a3 deletedRecordIDs:(id)a4 containsAllChanges:(BOOL)a5 completion:(id)a6
{
  v16 = a6;
  helper = self->_helper;
  v10 = a4;
  v11 = a3;
  v12 = [(_ADCloudKitCapabilitiesDataStoreHelper *)helper tableDescription];
  v13 = [v12 name];

  v14 = [(_ADCloudKitCapabilitiesDataStoreHelper *)self->_helper sqliteRecordsForCKRecords:v11];

  [(ADCloudKitCapabilitiesDataStore *)self _writeSQLiteRecords:v14 toTable:v13];
  v15 = [(_ADCloudKitCapabilitiesDataStoreHelper *)self->_helper deletionCriterionForCKRecordIDs:v10];

  [(ADCloudKitCapabilitiesDataStore *)self _deleteSQLiteRecordsWithCriterion:v15 inTable:v13];
  if (v16)
  {
    v16[2](v16, 0);
  }
}

- (void)synchronizeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[ADCloudKitManager sharedManager];
  v7 = [(_ADCloudKitCapabilitiesDataStoreHelper *)self->_helper recordZoneName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001BE504;
  v10[3] = &unk_10051D600;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v6 saveRecordsWithDictionary:v9 inZone:v7 completion:v10];
}

- (void)_deleteSQLiteRecordsWithCriterion:(id)a3 inTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [(ADCloudKitCapabilitiesDataStore *)self _preparedDatabaseWithError:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v15 = v9;
    v11 = [v8 deleteFromTableWithName:v7 indexedBy:0 criterion:v6 error:&v15];
    v12 = v15;

    if ((v11 & 1) == 0)
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[ADCloudKitCapabilitiesDataStore _deleteSQLiteRecordsWithCriterion:inTable:]";
        v19 = 2112;
        v20 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to delete database records due to error %@", buf, 0x16u);
      }
    }

    v10 = v12;
  }

  else
  {
    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[ADCloudKitCapabilitiesDataStore _deleteSQLiteRecordsWithCriterion:inTable:]";
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Failed to prepare database: %@", buf, 0x16u);
    }
  }
}

- (void)_writeSQLiteRecords:(id)a3 toTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v42 = 0;
  v8 = [(ADCloudKitCapabilitiesDataStore *)self _preparedDatabaseWithError:&v42];
  v9 = v42;
  v10 = v9;
  if (v8)
  {
    v41 = v9;
    v11 = [v8 beginTransactionWithError:&v41];
    v12 = v41;

    if (v11)
    {
      v31 = v12;
      v13 = [v6 mutableCopy];
      if ([v13 count])
      {
        v32 = v13;
        do
        {
          context = objc_autoreleasePoolPush();
          if ([v13 count] >= 0x11)
          {
            v14 = [v13 subarrayWithRange:{0, 16}];
            [v13 removeObjectsInRange:{0, 16}];
          }

          else
          {
            v14 = [v13 copy];
            [v13 removeAllObjects];
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v51 count:16];
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

                v20 = *(*(&v37 + 1) + 8 * v19);
                v36 = 0;
                v21 = [v8 insertIntoTableWithName:v7 record:v20 error:&v36];
                v22 = v36;
                if ((v21 & 1) == 0)
                {
                  v23 = AFSiriLogContextAnalytics;
                  if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v44 = "[ADCloudKitCapabilitiesDataStore _writeSQLiteRecords:toTable:]";
                    v45 = 2112;
                    v46 = v20;
                    v47 = 2112;
                    v48 = v7;
                    v49 = 2112;
                    v50 = v22;
                    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Failed to insert event record %@ into %@ table due to error %@", buf, 0x2Au);
                  }
                }

                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v37 objects:v51 count:16];
            }

            while (v17);
          }

          objc_autoreleasePoolPop(context);
          v13 = v32;
        }

        while ([v32 count]);
      }

      v35 = v31;
      v24 = [v8 commitTransactionWithError:&v35];
      v10 = v35;

      if ((v24 & 1) == 0)
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v44 = "[ADCloudKitCapabilitiesDataStore _writeSQLiteRecords:toTable:]";
          v45 = 2112;
          v46 = v10;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to commit database transaction due to error %@", buf, 0x16u);
        }

        v34 = 0;
        v26 = [v8 rollbackTransactionWithError:&v34];
        v27 = v34;
        if ((v26 & 1) == 0)
        {
          v28 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v44 = "[ADCloudKitCapabilitiesDataStore _writeSQLiteRecords:toTable:]";
            v45 = 2112;
            v46 = v27;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s Failed to rollback database transaction due to error %@", buf, 0x16u);
          }
        }
      }
    }

    else
    {
      v30 = AFSiriLogContextAnalytics;
      if (os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "[ADCloudKitCapabilitiesDataStore _writeSQLiteRecords:toTable:]";
        v45 = 2112;
        v46 = v12;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Failed to begin database transaction due to error %@", buf, 0x16u);
      }

      v10 = v12;
    }
  }

  else
  {
    v29 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "[ADCloudKitCapabilitiesDataStore _writeSQLiteRecords:toTable:]";
      v45 = 2112;
      v46 = v10;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Failed to prepare database: %@", buf, 0x16u);
    }
  }
}

- (id)_fetchSQLiteRecordsOwnedByLocalDeviceFromTable:(id)a3
{
  v4 = a3;
  v20 = 0;
  v5 = [(ADCloudKitCapabilitiesDataStore *)self _preparedDatabaseWithError:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = +[ADDeviceCircleManager sharedInstance];
    v8 = [v7 localPeerInfo];
    v9 = [v8 idsDeviceUniqueIdentifier];

    v10 = [SiriCoreSQLiteQueryCriterion isQueryCriterionWithColumnName:@"device_id" value:v9 negation:0];
    v11 = sub_1001BEF1C(v4, @"device_id");
    v12 = [(_ADCloudKitCapabilitiesDataStoreHelper *)self->_helper recordBuilder];
    v19 = v6;
    v13 = [v5 selectRecordsFromTableWithName:v4 columnNames:0 behavior:0 indexedBy:v11 criterion:v10 order:0 range:0 recordBuilder:v12 error:&v19];
    v14 = v19;

    if (v14)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[ADCloudKitCapabilitiesDataStore _fetchSQLiteRecordsOwnedByLocalDeviceFromTable:]";
        v23 = 2112;
        v24 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failed to select database records due to error %@", buf, 0x16u);
      }

      v16 = 0;
    }

    else
    {
      v16 = v13;
    }
  }

  else
  {
    v17 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[ADCloudKitCapabilitiesDataStore _fetchSQLiteRecordsOwnedByLocalDeviceFromTable:]";
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Error preparing the database: %@", buf, 0x16u);
    }

    v16 = 0;
    v14 = v6;
  }

  return v16;
}

- (id)_addMissingColumnsForTable:(id)a3 withDescription:(id)a4 inDatabase:(id)a5
{
  v7 = a3;
  v8 = a4;
  v44 = a5;
  v9 = [v7 columns];
  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v43 = v7;
  v11 = [v7 columns];
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v54 + 1) + 8 * i) name];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v13);
  }

  v17 = [v8 columns];
  v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = v8;
  v19 = [v8 columns];
  v20 = [v19 countByEnumeratingWithState:&v50 objects:v67 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v50 + 1) + 8 * j);
        v25 = [v24 name];
        v26 = [v10 containsObject:v25];

        if ((v26 & 1) == 0)
        {
          [v18 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v50 objects:v67 count:16];
    }

    while (v21);
  }

  v27 = [v43 name];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v28 = v18;
  v29 = [v28 countByEnumeratingWithState:&v46 objects:v66 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v47;
    while (2)
    {
      v33 = 0;
      v34 = v31;
      do
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v35 = *(*(&v46 + 1) + 8 * v33);
        v45 = v34;
        v36 = [v44 alterTableWithName:v27 addColumn:v35 error:&v45];
        v31 = v45;

        if ((v36 & 1) == 0)
        {
          v37 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            v40 = v37;
            v41 = [v35 name];
            *buf = 136315906;
            v59 = "[ADCloudKitCapabilitiesDataStore _addMissingColumnsForTable:withDescription:inDatabase:]";
            v60 = 2112;
            v61 = v41;
            v62 = 2112;
            v63 = v27;
            v64 = 2112;
            v65 = v31;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%s Failed to add column '%@' to '%@' table with error %@", buf, 0x2Au);
          }

          v38 = v31;

          goto LABEL_31;
        }

        v33 = v33 + 1;
        v34 = v31;
      }

      while (v30 != v33);
      v30 = [v28 countByEnumeratingWithState:&v46 objects:v66 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v31 = 0;
  }

  v38 = v31;
LABEL_31:

  return v38;
}

- (id)_preparedDatabaseWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  database = self->_database;
  if (database)
  {
LABEL_4:
    v6 = database;
    goto LABEL_57;
  }

  v7 = [(ADCloudKitCapabilitiesDataStore *)self _databasePath];
  v8 = AFSiriLogContextDaemon;
  v55 = a3;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
    v65 = 2112;
    v66 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s path: %@", buf, 0x16u);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v10;
    v10 = [[SiriCoreSQLiteDatabase alloc] initWithPath:v7 dataProtectionClass:2 options:3];

    v61 = 0;
    v13 = [v10 openWithError:&v61];
    v14 = v61;
    if (v13)
    {
      v15 = +[NSFileManager defaultManager];
      v16 = [v15 fileExistsAtPath:v7];

      v17 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
        v65 = 2112;
        v66 = v7;
        v67 = 1024;
        LODWORD(v68) = v16;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Database created at %@: %d", buf, 0x1Cu);
        if (v14)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

LABEL_13:
      if (v14)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v18 = AFSiriLogContextAnalytics;
    if (!os_log_type_enabled(AFSiriLogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315906;
    v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
    v65 = 2048;
    v66 = v11;
    v67 = 2112;
    v68 = v7;
    v69 = 2112;
    v70 = v14;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Failed to open capabilities database (retry #%tu) at path %@ with error %@.", buf, 0x2Au);
    if (v14)
    {
      goto LABEL_17;
    }

LABEL_14:
    v60 = 0;
    v19 = [v10 performIntegrityCheckWithError:&v60];
    v14 = v60;
    if ((v19 & 1) == 0 && (v20 = AFSiriLogContextDaemon, os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR)))
    {
      *buf = 136315906;
      v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
      v65 = 2048;
      v66 = v11;
      v67 = 2112;
      v68 = v7;
      v69 = 2112;
      v70 = v14;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed to perform integrity check on capabilities database (retry #%tu) at path %@ with error %@.", buf, 0x2Au);
      if (!v14)
      {
        goto LABEL_35;
      }
    }

    else if (!v14)
    {
      goto LABEL_35;
    }

LABEL_17:
    [v10 closeWithError:0];
    if (SiriCoreSQLiteDatabaseIsErrorUnrecoverable() && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 fileExistsAtPath:v7], v21, v22))
    {
      v23 = +[NSFileManager defaultManager];
      v59 = v14;
      v24 = [v23 removeItemAtPath:v7 error:&v59];
      v9 = v59;

      if ((v24 & 1) == 0)
      {
        v25 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
          v65 = 2048;
          v66 = v11;
          v67 = 2112;
          v68 = v7;
          v69 = 2112;
          v70 = v9;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Failed to remove database (retry #%tu) at path %@ due to %@.", buf, 0x2Au);
        }
      }
    }

    else
    {
      v9 = v14;
    }

    v11 = (v11 + 1);
  }

  while (v11 != 3);
  if (!v9)
  {
LABEL_35:
    v28 = [(_ADCloudKitCapabilitiesDataStoreHelper *)self->_helper tableDescription];
    v29 = [v28 name];
    v30 = [v10 fetchTableWithName:v29 error:0];

    if (v30)
    {
      v31 = [(ADCloudKitCapabilitiesDataStore *)self _addMissingColumnsForTable:v30 withDescription:v28 inDatabase:v10];
      v32 = v31;
      v33 = v55;
      if (!v55 || !v31)
      {
LABEL_40:
        v54 = v30;
        v56 = v28;
        v53 = [SiriCoreSQLiteTableDescription alloc];
        v35 = [SiriCoreSQLiteColumnDescription uniqueTextColumnWithName:@"capabilities_type"];
        v62[0] = v35;
        v36 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"last_sync_date" type:@"REAL" constraints:0];
        v62[1] = v36;
        v37 = [[SiriCoreSQLiteColumnDescription alloc] initWithName:@"last_sync_os" type:@"TEXT" constraints:0];
        v62[2] = v37;
        v38 = [NSArray arrayWithObjects:v62 count:3];
        v39 = [v53 initWithName:@"metadata" columns:v38 constraints:0];

        v40 = v39;
        v41 = [v39 name];
        v42 = [v10 fetchTableWithName:v41 error:0];

        if (v42)
        {
          v43 = [(ADCloudKitCapabilitiesDataStore *)self _addMissingColumnsForTable:v42 withDescription:v39 inDatabase:v10];

          if (v33)
          {
            v44 = v56;
            v45 = v54;
            if (!v43)
            {
              goto LABEL_46;
            }

LABEL_54:
            v51 = v43;
            *v33 = v43;
LABEL_55:

            goto LABEL_56;
          }
        }

        else
        {
          v57 = v32;
          v46 = [v10 createTable:v39 error:&v57];
          v43 = v57;

          if ((v46 & 1) == 0)
          {
            v50 = AFSiriLogContextDaemon;
            v44 = v56;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
              v65 = 2112;
              v66 = @"device_capabilities";
              v67 = 2112;
              v68 = v43;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s Failed to create '%@' table with error %@", buf, 0x20u);
            }

            v45 = v54;
            if (!v33)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          }
        }

        v44 = v56;
        v45 = v54;
LABEL_46:
        [(_ADCloudKitCapabilitiesDataStoreHelper *)self->_helper createIndicesForTableInDatabase:v10];
        v47 = self->_database;
        self->_database = v10;

        database = self->_database;
        goto LABEL_4;
      }
    }

    else
    {
      v58 = 0;
      v34 = [v10 createTable:v28 error:&v58];
      v32 = v58;
      v33 = v55;
      if (v34)
      {
        goto LABEL_40;
      }

      v48 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
        v65 = 2112;
        v66 = @"device_capabilities";
        v67 = 2112;
        v68 = v32;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s Failed to create '%@' table with error %@", buf, 0x20u);
        if (!v55)
        {
          goto LABEL_50;
        }
      }

      else if (!v55)
      {
LABEL_50:

        goto LABEL_56;
      }
    }

    v49 = v32;
    *v33 = v32;
    goto LABEL_50;
  }

  v26 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v64 = "[ADCloudKitCapabilitiesDataStore _preparedDatabaseWithError:]";
    v65 = 2112;
    v66 = v9;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s Failed to prepare analytics database due to %@.", buf, 0x16u);
  }

  if (a3)
  {
    v27 = v9;
    *a3 = v9;
  }

LABEL_56:
  v6 = 0;
LABEL_57:

  return v6;
}

- (id)_databasePath
{
  v2 = +[ADAudioFileWriter _savedAudioFilesDirectory]_0();
  v3 = [v2 URLByAppendingPathComponent:@"capabilities.db"];
  v4 = [v3 path];

  return v4;
}

- (ADCloudKitCapabilitiesDataStore)initWithHelper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADCloudKitCapabilitiesDataStore;
  v6 = [(ADCloudKitCapabilitiesDataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_helper, a3);
  }

  return v7;
}

@end