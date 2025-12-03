@interface SQLiteSchema
- (BOOL)column:(id)column existsInTable:(id)table;
- (BOOL)migrateToVersion:(int64_t)version usingBlock:(id)block;
- (BOOL)tableExists:(id)exists;
- (SQLiteSchema)initWithConnection:(id)connection;
- (int64_t)currentUserVersion;
- (void)_setUserVersion:(int64_t)version;
@end

@implementation SQLiteSchema

- (SQLiteSchema)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = SQLiteSchema;
  v6 = [(SQLiteSchema *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)column:(id)column existsInTable:(id)table
{
  columnCopy = column;
  tableCopy = table;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  connection = self->_connection;
  tableCopy = [NSString stringWithFormat:@"PRAGMA table_info(%@)", tableCopy];;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AE70;
  v12[3] = &unk_1002784A8;
  v14 = &v15;
  v10 = columnCopy;
  v13 = v10;
  [(SQLiteConnection *)connection executeQuery:tableCopy withResults:v12];

  LOBYTE(connection) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return connection;
}

- (int64_t)currentUserVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = self->_connection;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B040;
  v5[3] = &unk_1002784D0;
  v5[4] = &v6;
  [(SQLiteConnection *)connection executeQuery:@"PRAGMA user_version;" withResults:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)migrateToVersion:(int64_t)version usingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  connection = self->_connection;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B168;
  v10[3] = &unk_1002784F8;
  v10[4] = self;
  versionCopy = version;
  v8 = blockCopy;
  v11 = v8;
  v12 = &v14;
  [(SQLiteConnection *)connection performTransaction:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (BOOL)tableExists:(id)exists
{
  existsCopy = exists;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  connection = self->_connection;
  existsCopy = [NSString stringWithFormat:@"SELECT name FROM sqlite_master where name = '%@'", existsCopy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B440;
  v8[3] = &unk_1002784D0;
  v8[4] = &v9;
  [(SQLiteConnection *)connection executeQuery:existsCopy withResults:v8];

  LOBYTE(connection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return connection;
}

- (void)_setUserVersion:(int64_t)version
{
  version = [NSString stringWithFormat:@"PRAGMA user_version = %lld", version];;
  [(SQLiteConnection *)self->_connection executeStatement:version error:0];
}

@end