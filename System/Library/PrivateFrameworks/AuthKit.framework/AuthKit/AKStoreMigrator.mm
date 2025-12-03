@interface AKStoreMigrator
- (AKSQLiteExecutor)executor;
- (AKStoreMigrator)initWithExecutor:(id)executor;
- (id)storeName;
- (unint64_t)_schemaVersion;
- (unint64_t)currentSchemaVersion;
- (void)migrateSchemaFromVersion:(unint64_t)version;
- (void)migrateSchemaIfNecessary;
@end

@implementation AKStoreMigrator

- (AKStoreMigrator)initWithExecutor:(id)executor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, executor);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKStoreMigrator;
  v6 = [(AKStoreMigrator *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeWeak(&selfCopy->_executor, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)migrateSchemaIfNecessary
{
  selfCopy = self;
  v10 = a2;
  _schemaVersion = [(AKStoreMigrator *)self _schemaVersion];
  if (_schemaVersion != [(AKStoreMigrator *)selfCopy currentSchemaVersion])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_executor);
    v3 = _NSConcreteStackBlock;
    v4 = -1073741824;
    v5 = 0;
    v6 = sub_100167DC8;
    v7 = &unk_100323CC0;
    v8[0] = _objc_retain(selfCopy);
    v8[1] = _schemaVersion;
    [WeakRetained performTransactionBlockAndWait:&v3];
    _objc_release(WeakRetained);
    objc_storeStrong(v8, 0);
  }
}

- (unint64_t)_schemaVersion
{
  selfCopy = self;
  v23 = a2;
  integerValue = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 838860800;
  v18 = 48;
  v19 = sub_100003E54;
  v20 = sub_100011440;
  v21 = objc_alloc_init(NSMutableArray);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_executor);
  oslog[3] = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = sub_100168118;
  v13 = &unk_100323838;
  v14 = &v15;
  [WeakRetained performQuery:@"SELECT db_version FROM version;" rowHandler:?];
  _objc_release(WeakRetained);
  firstObject = [v16[5] firstObject];
  integerValue = [firstObject integerValue];
  _objc_release(firstObject);
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    storeName = [(AKStoreMigrator *)selfCopy storeName];
    location = _objc_retain(storeName);
    sub_100024CD8(v25, location, integerValue);
    _os_log_impl(&_mh_execute_header, oslog[0], type, "Current %@ database version: %i", v25, 0x12u);
    _objc_release(storeName);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(oslog, 0);
  v3 = integerValue;
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(&v21, 0);
  return v3;
}

- (void)migrateSchemaFromVersion:(unint64_t)version
{
  selfCopy = self;
  v5 = a2;
  versionCopy = version;
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    sub_10006A654(v7, versionCopy);
    _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Migration logic not present (from: %i)", v7, 8u);
  }

  objc_storeStrong(&oslog, 0);
}

- (unint64_t)currentSchemaVersion
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_error_impl(&_mh_execute_header, log, type, "Current schema version undefined!", v5, 2u);
  }

  objc_storeStrong(location, 0);
  return 0;
}

- (id)storeName
{
  location[2] = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = 16;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_error_impl(&_mh_execute_header, log, type, "Current store name undefined!", v5, 2u);
  }

  objc_storeStrong(location, 0);

  return @"<undefined>";
}

- (AKSQLiteExecutor)executor
{
  WeakRetained = objc_loadWeakRetained(&self->_executor);

  return WeakRetained;
}

@end