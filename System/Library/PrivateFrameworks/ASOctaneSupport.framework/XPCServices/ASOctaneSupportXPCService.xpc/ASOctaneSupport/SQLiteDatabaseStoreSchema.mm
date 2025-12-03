@interface SQLiteDatabaseStoreSchema
- (BOOL)column:(id)column existsInTable:(id)table;
- (BOOL)migrateToVersion:(int64_t)version usingBlock:(id)block;
- (BOOL)tableExists:(id)exists;
- (SQLiteDatabaseStoreSchema)initWithConnection:(id)connection schemaName:(id)name;
- (int64_t)currentSchemaVersion;
@end

@implementation SQLiteDatabaseStoreSchema

- (SQLiteDatabaseStoreSchema)initWithConnection:(id)connection schemaName:(id)name
{
  connectionCopy = connection;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = SQLiteDatabaseStoreSchema;
  v9 = [(SQLiteDatabaseStoreSchema *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_schemaName, name);
    connection = v10->_connection;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100011448;
    v13[3] = &unk_100278750;
    v14 = v10;
    [(SQLiteConnection *)connection performTransaction:v13];
  }

  return v10;
}

- (int64_t)currentSchemaVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011568;
  v5[3] = &unk_100278430;
  v5[4] = self;
  v5[5] = &v6;
  [(SQLiteConnection *)connection executeQuery:@"SELECT schema_version FROM schema_version WHERE schema_name = ?" withResults:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)column:(id)column existsInTable:(id)table
{
  columnCopy = column;
  tableCopy = table;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  tableCopy = [NSString stringWithFormat:@"PRAGMA table_info(%@)", tableCopy];
  connection = self->_connection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000116F8;
  v12[3] = &unk_1002784A8;
  v14 = &v15;
  v10 = columnCopy;
  v13 = v10;
  [(SQLiteConnection *)connection executeQuery:tableCopy withResults:v12];
  LOBYTE(connection) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return connection;
}

- (BOOL)migrateToVersion:(int64_t)version usingBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000118B0;
  v10[3] = &unk_1002787A0;
  v10[4] = self;
  v11 = blockCopy;
  versionCopy = version;
  v8 = blockCopy;
  LOBYTE(self) = [(SQLiteConnection *)connection performSavepoint:v10];

  return self;
}

- (BOOL)tableExists:(id)exists
{
  existsCopy = exists;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011AE8;
  v8[3] = &unk_100278430;
  v6 = existsCopy;
  v9 = v6;
  v10 = &v11;
  [(SQLiteConnection *)connection executeQuery:@"SELECT name FROM sqlite_master where name = ?" withResults:v8];
  LOBYTE(connection) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return connection;
}

@end