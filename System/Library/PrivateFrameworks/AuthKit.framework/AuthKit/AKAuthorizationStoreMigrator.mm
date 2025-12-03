@interface AKAuthorizationStoreMigrator
- (void)_buildSchemaVersion1;
- (void)_createV3Database;
- (void)_createV4Database;
- (void)_createV5Database;
- (void)_createV6Database;
- (void)_createV7Database;
- (void)_performInsertQueryIntoVersion:(unint64_t)version;
- (void)_upgradeToSchemaVersion2;
- (void)_upgradeToSchemaVersion3;
- (void)_upgradeToSchemaVersion4;
- (void)_upgradeToSchemaVersion5;
- (void)_upgradeToSchemaVersion6;
- (void)_upgradeToSchemaVersion7;
- (void)_upgradeToSchemaVersion8;
- (void)migrateSchemaFromVersion:(unint64_t)version;
@end

@implementation AKAuthorizationStoreMigrator

- (void)migrateSchemaFromVersion:(unint64_t)version
{
  selfCopy = self;
  v10 = a2;
  versionCopy = version;
  v8 = _AKLogSiwa();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    storeName = [(AKAuthorizationStoreMigrator *)selfCopy storeName];
    v6 = _objc_retain(storeName);
    sub_100024CD8(v12, v6, versionCopy);
    _os_log_impl(&_mh_execute_header, log, type, "%@ Database Migration requested from version: %i", v12, 0x12u);
    _objc_release(storeName);
    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&v8, 0);
  if (!versionCopy)
  {
    [(AKAuthorizationStoreMigrator *)selfCopy _buildSchemaVersion1];
    goto LABEL_12;
  }

  if (versionCopy - 1 <= 1)
  {
LABEL_12:
    [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion2];
    [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion3];
    goto LABEL_13;
  }

  switch(versionCopy)
  {
    case 3uLL:
LABEL_13:
      [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion4];
      goto LABEL_14;
    case 4uLL:
LABEL_14:
      [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion5];
      goto LABEL_15;
    case 5uLL:
LABEL_15:
      [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion6];
      goto LABEL_16;
    case 6uLL:
LABEL_16:
      [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion7];
      goto LABEL_17;
    case 7uLL:
LABEL_17:
      [(AKAuthorizationStoreMigrator *)selfCopy _upgradeToSchemaVersion8];
      break;
  }
}

- (void)_buildSchemaVersion1
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"CREATE TABLE IF NOT EXISTS authorized_teams (team_id TEXT PRIMARY KEY, uid TEXT, authorizedAppListVersion TEXT);"];
  _objc_release(executor);
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor2 performQuery:@"CREATE TABLE IF NOT EXISTS authorized_applications (client_id TEXT PRIMARY KEY, team_id TEXT, scopes TEXT, credential_state INTEGER);"];
  _objc_release(executor2);
  executor3 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor3 performQuery:@"CREATE TABLE IF NOT EXISTS version (authorizedAppListVersion TEXT PRIMARY KEY);"];
  _objc_release(executor3);
}

- (void)_upgradeToSchemaVersion2
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"ALTER TABLE version ADD COLUMN db_version INTEGER;"];
  _objc_release(executor);
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor2 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN authorizedAppListVersion TEXT"];
  _objc_release(executor2);
  executor3 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor3 performInsertQuery:@"UPDATE version SET authorizedAppListVersion = 'TEMPORARY';"];
  _objc_release(executor3);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:2];
}

- (void)_upgradeToSchemaVersion3
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"ALTER TABLE authorized_applications ADD COLUMN transfer_state TEXT"];
  _objc_release(executor);
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor2 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN primary_client_id TEXT"];
  _objc_release(executor2);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:3];
}

- (void)_upgradeToSchemaVersion4
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"ALTER TABLE authorized_applications ADD COLUMN origin TEXT;"];
  _objc_release(executor);
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor2 performQuery:@"DROP TABLE IF EXISTS version;"];
  _objc_release(executor2);
  executor3 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor3 performQuery:@"CREATE TABLE IF NOT EXISTS version (authorizedAppListVersion TEXT PRIMARY KEY, db_version INTEGER);"];
  _objc_release(executor3);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:4];
}

- (void)_upgradeToSchemaVersion5
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"CREATE TABLE IF NOT EXISTS authorized_primary_applications (client_id TEXT PRIMARY KEY, app_name TEXT, app_developer_name TEXT, has_eula BOOL, privacy_url TEXT);"];
  _objc_release(executor);
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor2 performQuery:@"ALTER TABLE authorized_applications ADD COLUMN creation_date INTEGER NOT NULL DEFAULT 0"];
  _objc_release(executor2);
  executor3 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor3 performQuery:@"ALTER TABLE authorized_teams ADD COLUMN private_email TEXT;"];
  _objc_release(executor3);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:5];
}

- (void)_upgradeToSchemaVersion6
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"DROP TABLE IF EXISTS authorized_primary_applications;"];
  _objc_release(executor);
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor2 performQuery:@"CREATE TABLE IF NOT EXISTS authorized_primary_applications (client_id TEXT PRIMARY KEY, app_name TEXT, app_developer_name TEXT);"];
  _objc_release(executor2);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:?];
  executor3 = [(AKStoreMigrator *)selfCopy executor];
  v4 = [NSString stringWithFormat:@"DELETE FROM version where db_version != %i", 6];
  [(AKSQLiteExecutor *)executor3 performQuery:?];
  _objc_release(v4);
  _objc_release(executor3);
}

- (void)_upgradeToSchemaVersion7
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"ALTER TABLE authorized_applications ADD COLUMN client_name TEXT;"];
  _objc_release(executor);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:?];
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  v3 = [NSString stringWithFormat:@"DELETE FROM version where db_version != %i", 7];
  [(AKSQLiteExecutor *)executor2 performQuery:?];
  _objc_release(v3);
  _objc_release(executor2);
}

- (void)_upgradeToSchemaVersion8
{
  selfCopy = self;
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
  executor = [(AKStoreMigrator *)selfCopy executor];
  [(AKSQLiteExecutor *)executor performQuery:@"ALTER TABLE authorized_primary_applications ADD COLUMN adam_id TEXT;"];
  _objc_release(executor);
  [(AKAuthorizationStoreMigrator *)selfCopy _performInsertQueryIntoVersion:?];
  executor2 = [(AKStoreMigrator *)selfCopy executor];
  v3 = [NSString stringWithFormat:@"DELETE FROM version where db_version != %i", 8];
  [(AKSQLiteExecutor *)executor2 performQuery:?];
  _objc_release(v3);
  _objc_release(executor2);
}

- (void)_performInsertQueryIntoVersion:(unint64_t)version
{
  executor = [(AKStoreMigrator *)self executor];
  version = [NSString stringWithFormat:@"INSERT OR REPLACE INTO version (authorizedAppListVersion, db_version) values ('TEMPORARY', '%i');", version];
  [(AKSQLiteExecutor *)executor performInsertQuery:?];
  _objc_release(version);
  _objc_release(executor);
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