@interface AKPrivateEmailStoreMigrator
- (void)_buildSchemaVersion1;
- (void)_migrateToSchemaVersion2;
- (void)_migrateToSchemaVersion3;
- (void)_migrateToSchemaVersion4;
- (void)_migrateToSchemaVersion5;
- (void)migrateSchemaFromVersion:(unint64_t)a3;
@end

@implementation AKPrivateEmailStoreMigrator

- (void)migrateSchemaFromVersion:(unint64_t)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = _AKLogHme();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    v5 = [(AKPrivateEmailStoreMigrator *)v11 storeName];
    v6 = _objc_retain(v5);
    sub_100024CD8(v12, v6, v9);
    _os_log_impl(&_mh_execute_header, log, type, "%@ Database Migration requested from version: %i", v12, 0x12u);
    _objc_release(v5);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  switch(v9)
  {
    case 0uLL:
      [(AKPrivateEmailStoreMigrator *)v11 _buildSchemaVersion1];
      goto LABEL_10;
    case 1uLL:
LABEL_10:
      [(AKPrivateEmailStoreMigrator *)v11 _migrateToSchemaVersion2];
      goto LABEL_11;
    case 2uLL:
LABEL_11:
      [(AKPrivateEmailStoreMigrator *)v11 _migrateToSchemaVersion3];
      goto LABEL_12;
    case 3uLL:
LABEL_12:
      [(AKPrivateEmailStoreMigrator *)v11 _migrateToSchemaVersion4];
      goto LABEL_13;
    case 4uLL:
LABEL_13:
      [(AKPrivateEmailStoreMigrator *)v11 _migrateToSchemaVersion5];
      break;
  }
}

- (void)_buildSchemaVersion1
{
  v12 = self;
  location[1] = a2;
  location[0] = _AKLogHme();
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v10;
    v8 = [(AKPrivateEmailStoreMigrator *)v12 storeName];
    v9 = _objc_retain(v8);
    sub_1000194D4(v13, v9);
    _os_log_impl(&_mh_execute_header, log, type, "Building %@ database with schema version: 1", v13, 0xCu);
    _objc_release(v8);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v12 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"CREATE TABLE IF NOT EXISTS emails (client_key TEXT PRIMARY KEY, email TEXT);"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v12 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"CREATE TABLE IF NOT EXISTS version (privateEmailListVersion TEXT PRIMARY KEY, db_version INTEGER);"];
  _objc_release(v3);
  v5 = [(AKStoreMigrator *)v12 executor];
  v4 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO version (privateEmailListVersion, db_version) VALUES('%@', '%i')", AKPrivateEmailInitialVersion, 1];
  [(AKSQLiteExecutor *)v5 performInsertQuery:?];
  _objc_release(v4);
  _objc_release(v5);
}

- (void)_migrateToSchemaVersion2
{
  v11 = self;
  v10[1] = a2;
  v10[0] = _AKLogHme();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v7 = [(AKPrivateEmailStoreMigrator *)v11 storeName];
    v8 = _objc_retain(v7);
    sub_1000194D4(v12, v8);
    _os_log_impl(&_mh_execute_header, log, type, "Migrating %@ database to schema version: 2", v12, 0xCu);
    _objc_release(v7);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  v2 = [(AKStoreMigrator *)v11 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"ALTER TABLE version ADD COLUMN protocol_version INTEGER"];
  _objc_release(v2);
  v4 = [(AKStoreMigrator *)v11 executor];
  v3 = [NSString stringWithFormat:@"UPDATE version SET protocol_version = %i, db_version = %i", AKPrivateEmailInitialProtocolVersion, 2];
  [(AKSQLiteExecutor *)v4 performQuery:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)_migrateToSchemaVersion3
{
  v43 = self;
  oslog[1] = a2;
  oslog[0] = _AKLogHme();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v22 = type;
    v23 = [(AKPrivateEmailStoreMigrator *)v43 storeName];
    v40 = _objc_retain(v23);
    sub_1000194D4(v47, v40);
    _os_log_impl(&_mh_execute_header, log, v22, "Migrating %@ database to schema version: 3", v47, 0xCu);
    _objc_release(v23);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(oslog, 0);
  v39 = +[NSMutableSet set];
  v38 = [NSString stringWithFormat:@"SELECT client_key FROM emails;"];
  v18 = [(AKStoreMigrator *)v43 executor];
  v17 = v38;
  v32 = _NSConcreteStackBlock;
  v33 = -1073741824;
  v34 = 0;
  v35 = sub_1000814CC;
  v36 = &unk_1003212B0;
  v37 = _objc_retain(v39);
  [(AKSQLiteExecutor *)v18 performQuery:v17 rowHandler:&v32];
  _objc_release(v18);
  v31 = +[NSMutableSet set];
  memset(__b, 0, sizeof(__b));
  obj = _objc_retain(v39);
  v20 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
  if (v20)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v20;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(__b[1] + 8 * v15);
      v28 = [AKStoreUtils hash:v30];
      if ([v39 containsObject:v28])
      {
        [v31 addObject:v30];
      }

      objc_storeStrong(&v28, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  _objc_release(obj);
  if (![v31 count])
  {
    goto LABEL_24;
  }

  memset(v26, 0, sizeof(v26));
  v11 = _objc_retain(v31);
  v12 = [v11 countByEnumeratingWithState:v26 objects:v45 count:16];
  if (v12)
  {
    v8 = *v26[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*v26[2] != v8)
      {
        objc_enumerationMutation(v11);
      }

      v27 = *(v26[1] + 8 * v9);
      v5 = [(AKStoreMigrator *)v43 executor];
      v4 = [NSString stringWithFormat:@"DELETE FROM emails WHERE client_key = '%@';", v27];
      v6 = [(AKSQLiteExecutor *)v5 performQuery:?];
      _objc_release(v4);
      _objc_release(v5);
      if (!v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [v11 countByEnumeratingWithState:v26 objects:v45 count:16];
        if (!v10)
        {
          goto LABEL_22;
        }
      }
    }

    v25 = _AKLogHme();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1000194D4(v44, v27);
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to delete key: %@", v44, 0xCu);
    }

    objc_storeStrong(&v25, 0);
    v24 = 1;
  }

  else
  {
LABEL_22:
    v24 = 0;
  }

  _objc_release(v11);
  if (!v24)
  {
LABEL_24:
    v3 = [(AKStoreMigrator *)v43 executor];
    v2 = [NSString stringWithFormat:@"UPDATE version SET protocol_version = %i, db_version = %i", AKPrivateEmailProtocolVersion2, 3];
    [(AKSQLiteExecutor *)v3 performQuery:?];
    _objc_release(v2);
    _objc_release(v3);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
}

- (void)_migrateToSchemaVersion4
{
  v11 = self;
  v10[1] = a2;
  v10[0] = _AKLogHme();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v6 = [(AKPrivateEmailStoreMigrator *)v11 storeName];
    v8 = _objc_retain(v6);
    sub_1000194D4(v12, v8);
    _os_log_impl(&_mh_execute_header, log, type, "Migrating %@ database to schema version: 4", v12, 0xCu);
    _objc_release(v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  v7 = [(AKStoreMigrator *)v11 executor];
  [(AKSQLiteExecutor *)v7 performQuery:@"PRAGMA foreign_keys=off"];
  [(AKSQLiteExecutor *)v7 performQuery:@"ALTER TABLE emails RENAME TO emails_orig"];
  [(AKSQLiteExecutor *)v7 performQuery:@"CREATE TABLE emails AS SELECT * FROM emails_orig"];
  [(AKSQLiteExecutor *)v7 performQuery:@"ALTER TABLE emails ADD COLUMN bundle_id TEXT"];
  [(AKSQLiteExecutor *)v7 performQuery:@"CREATE INDEX client_bundle_idx ON emails(client_key, bundle_id)"];
  [(AKSQLiteExecutor *)v7 performQuery:@"DROP TABLE emails_orig"];
  [(AKSQLiteExecutor *)v7 performQuery:@"PRAGMA foreign_keys=on"];
  v2 = v7;
  v3 = [NSString stringWithFormat:@"UPDATE version SET db_version = %i", 4];
  [(AKSQLiteExecutor *)v2 performQuery:?];
  _objc_release(v3);
  objc_storeStrong(&v7, 0);
}

- (void)_migrateToSchemaVersion5
{
  v11 = self;
  v10[1] = a2;
  v10[0] = _AKLogHme();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    v6 = [(AKPrivateEmailStoreMigrator *)v11 storeName];
    v8 = _objc_retain(v6);
    sub_1000194D4(v12, v8);
    _os_log_impl(&_mh_execute_header, log, type, "Migrating %@ database to schema version: 5", v12, 0xCu);
    _objc_release(v6);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  v7 = [(AKStoreMigrator *)v11 executor];
  [(AKSQLiteExecutor *)v7 performQuery:@"PRAGMA foreign_keys=off"];
  [(AKSQLiteExecutor *)v7 performQuery:@"ALTER TABLE emails RENAME TO emails_v4"];
  [(AKSQLiteExecutor *)v7 performQuery:@"CREATE TABLE emails (client_key TEXT PRIMARY KEY, email TEXT)"];
  [(AKSQLiteExecutor *)v7 performQuery:@"INSERT INTO emails (client_key, email) SELECT client_key, email FROM emails_v4"];
  [(AKSQLiteExecutor *)v7 performQuery:@"DROP TABLE emails_v4"];
  [(AKSQLiteExecutor *)v7 performQuery:@"PRAGMA foreign_keys=on"];
  v2 = v7;
  v3 = [NSString stringWithFormat:@"UPDATE version SET db_version = %i", 5];
  [(AKSQLiteExecutor *)v2 performQuery:?];
  _objc_release(v3);
  objc_storeStrong(&v7, 0);
}

@end