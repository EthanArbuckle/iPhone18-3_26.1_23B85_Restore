@interface AKAuthorizationStoreMigrator
- (void)_buildSchemaVersion1;
- (void)_createV3Database;
- (void)_createV4Database;
- (void)_createV5Database;
- (void)_createV6Database;
- (void)_createV7Database;
- (void)_performInsertQueryIntoVersion:(unint64_t)a3;
- (void)_upgradeToSchemaVersion2;
- (void)_upgradeToSchemaVersion3;
- (void)_upgradeToSchemaVersion4;
- (void)_upgradeToSchemaVersion5;
- (void)_upgradeToSchemaVersion6;
- (void)_upgradeToSchemaVersion7;
- (void)_upgradeToSchemaVersion8;
- (void)migrateSchemaFromVersion:(unint64_t)a3;
@end

@implementation AKAuthorizationStoreMigrator

- (void)migrateSchemaFromVersion:(unint64_t)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = _AKLogSiwa();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    v5 = [(AKAuthorizationStoreMigrator *)v11 storeName];
    v6 = _objc_retain(v5);
    sub_100024CD8(v12, v6, v9);
    _os_log_impl(&_mh_execute_header, log, type, "%@ Database Migration requested from version: %i", v12, 0x12u);
    _objc_release(v5);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  if (!v9)
  {
    [(AKAuthorizationStoreMigrator *)v11 _buildSchemaVersion1];
    goto LABEL_12;
  }

  if (v9 - 1 <= 1)
  {
LABEL_12:
    [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion2];
    [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion3];
    goto LABEL_13;
  }

  switch(v9)
  {
    case 3uLL:
LABEL_13:
      [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion4];
      goto LABEL_14;
    case 4uLL:
LABEL_14:
      [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion5];
      goto LABEL_15;
    case 5uLL:
LABEL_15:
      [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion6];
      goto LABEL_16;
    case 6uLL:
LABEL_16:
      [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion7];
      goto LABEL_17;
    case 7uLL:
LABEL_17:
      [(AKAuthorizationStoreMigrator *)v11 _upgradeToSchemaVersion8];
      break;
  }
}

- (void)_buildSchemaVersion1
{
  v10 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v6 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Building database with schema version: 1", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"CREATE TABLE IF NOT EXISTS authorized_teams (team_id TEXT PRIMARY KEY, uid TEXT, authorizedAppListVersion TEXT);"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"CREATE TABLE IF NOT EXISTS authorized_applications (client_id TEXT PRIMARY KEY, team_id TEXT, scopes TEXT, credential_state INTEGER);"];
  _objc_release(v3);
  v4 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v4 performQuery:@"CREATE TABLE IF NOT EXISTS version (authorizedAppListVersion TEXT PRIMARY KEY);"];
  _objc_release(v4);
}

- (void)_upgradeToSchemaVersion2
{
  v10 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v6 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Upgrading database to schema version: 2", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"ALTER TABLE version ADD COLUMN db_version INTEGER;"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN authorizedAppListVersion TEXT"];
  _objc_release(v3);
  v4 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v4 performInsertQuery:@"UPDATE version SET authorizedAppListVersion = 'TEMPORARY';"];
  _objc_release(v4);
  [(AKAuthorizationStoreMigrator *)v10 _performInsertQueryIntoVersion:2];
}

- (void)_upgradeToSchemaVersion3
{
  v9 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v7;
    sub_10001CEEC(v6);
    _os_log_impl(&_mh_execute_header, log, type, "Upgrading database to schema version: 3", v6, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v9 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN transfer_state TEXT"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v9 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN primary_client_id TEXT"];
  _objc_release(v3);
  [(AKAuthorizationStoreMigrator *)v9 _performInsertQueryIntoVersion:3];
}

- (void)_upgradeToSchemaVersion4
{
  v10 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v6 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Upgrading database to schema version: 4", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN origin TEXT;"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"DROP TABLE IF EXISTS version;"];
  _objc_release(v3);
  v4 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v4 performQuery:@"CREATE TABLE IF NOT EXISTS version (authorizedAppListVersion TEXT PRIMARY KEY, db_version INTEGER);"];
  _objc_release(v4);
  [(AKAuthorizationStoreMigrator *)v10 _performInsertQueryIntoVersion:4];
}

- (void)_upgradeToSchemaVersion5
{
  v10 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v6 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Upgrading database to schema version: 5", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"CREATE TABLE IF NOT EXISTS authorized_primary_applications (client_id TEXT PRIMARY KEY, app_name TEXT, app_developer_name TEXT, has_eula BOOL, privacy_url TEXT);"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN creation_date INTEGER NOT NULL DEFAULT 0"];
  _objc_release(v3);
  v4 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v4 performQuery:@"ALTER TABLE authorized_teams ADD COLUMN private_email TEXT;"];
  _objc_release(v4);
  [(AKAuthorizationStoreMigrator *)v10 _performInsertQueryIntoVersion:5];
}

- (void)_upgradeToSchemaVersion6
{
  v11 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v7 = v9;
    sub_10001CEEC(v8);
    _os_log_impl(&_mh_execute_header, log, v7, "Upgrading database to schema version: 6", v8, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v11 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"DROP TABLE IF EXISTS authorized_primary_applications;"];
  _objc_release(v2);
  v3 = [(AKStoreMigrator *)v11 executor];
  [(AKSQLiteExecutor *)v3 performQuery:@"CREATE TABLE IF NOT EXISTS authorized_primary_applications (client_id TEXT PRIMARY KEY, app_name TEXT, app_developer_name TEXT);"];
  _objc_release(v3);
  [(AKAuthorizationStoreMigrator *)v11 _performInsertQueryIntoVersion:?];
  v5 = [(AKStoreMigrator *)v11 executor];
  v4 = [NSString stringWithFormat:@"DELETE FROM version where db_version != %i", 6];
  [(AKSQLiteExecutor *)v5 performQuery:?];
  _objc_release(v4);
  _objc_release(v5);
}

- (void)_upgradeToSchemaVersion7
{
  v10 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v6 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Upgrading database to schema version: 7", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN client_name TEXT;"];
  _objc_release(v2);
  [(AKAuthorizationStoreMigrator *)v10 _performInsertQueryIntoVersion:?];
  v4 = [(AKStoreMigrator *)v10 executor];
  v3 = [NSString stringWithFormat:@"DELETE FROM version where db_version != %i", 7];
  [(AKSQLiteExecutor *)v4 performQuery:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)_upgradeToSchemaVersion8
{
  v10 = self;
  location[1] = a2;
  location[0] = _AKLogSiwa();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v6 = v8;
    sub_10001CEEC(v7);
    _os_log_impl(&_mh_execute_header, log, v6, "Upgrading database to schema version: 8", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = [(AKStoreMigrator *)v10 executor];
  [(AKSQLiteExecutor *)v2 performQuery:@"ALTER TABLE authorized_primary_applications ADD COLUMN adam_id TEXT;"];
  _objc_release(v2);
  [(AKAuthorizationStoreMigrator *)v10 _performInsertQueryIntoVersion:?];
  v4 = [(AKStoreMigrator *)v10 executor];
  v3 = [NSString stringWithFormat:@"DELETE FROM version where db_version != %i", 8];
  [(AKSQLiteExecutor *)v4 performQuery:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)_performInsertQueryIntoVersion:(unint64_t)a3
{
  v4 = [(AKStoreMigrator *)self executor];
  v3 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO version (authorizedAppListVersion, db_version) values ('TEMPORARY', '%i');", a3];
  [(AKSQLiteExecutor *)v4 performInsertQuery:?];
  _objc_release(v3);
  _objc_release(v4);
}

- (void)_createV3Database
{
  [(AKAuthorizationStoreMigrator *)self _buildSchemaVersion1];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion2];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion3];
}

- (void)_createV4Database
{
  [(AKAuthorizationStoreMigrator *)self _buildSchemaVersion1];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion2];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion3];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion4];
}

- (void)_createV5Database
{
  [(AKAuthorizationStoreMigrator *)self _buildSchemaVersion1];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion2];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion3];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion4];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion5];
}

- (void)_createV6Database
{
  [(AKAuthorizationStoreMigrator *)self _buildSchemaVersion1];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion2];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion3];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion4];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion5];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion6];
}

- (void)_createV7Database
{
  [(AKAuthorizationStoreMigrator *)self _buildSchemaVersion1];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion2];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion3];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion4];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion5];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion6];
  [(AKAuthorizationStoreMigrator *)self _upgradeToSchemaVersion7];
}

@end