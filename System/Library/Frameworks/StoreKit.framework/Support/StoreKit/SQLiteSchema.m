@interface SQLiteSchema
- (BOOL)column:(id)a3 existsInTable:(id)a4;
- (BOOL)migrateToVersion:(int64_t)a3 usingBlock:(id)a4;
- (BOOL)tableExists:(id)a3;
- (SQLiteSchema)initWithConnection:(id)a3;
- (int64_t)currentUserVersion;
- (void)_setUserVersion:(int64_t)a3;
@end

@implementation SQLiteSchema

- (SQLiteSchema)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteSchema;
  v6 = [(SQLiteSchema *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (BOOL)column:(id)a3 existsInTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  connection = self->_connection;
  v9 = [NSString stringWithFormat:@"PRAGMA table_info(%@)", v7];;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100031BA8;
  v12[3] = &unk_100381070;
  v14 = &v15;
  v10 = v6;
  v13 = v10;
  [(SQLiteConnection *)connection executeQuery:v9 withResults:v12];

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
  v5[2] = sub_100031D78;
  v5[3] = &unk_100381098;
  v5[4] = &v6;
  [(SQLiteConnection *)connection executeQuery:@"PRAGMA user_version;" withResults:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)migrateToVersion:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  connection = self->_connection;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031EA0;
  v10[3] = &unk_1003810C0;
  v10[4] = self;
  v13 = a3;
  v8 = v6;
  v11 = v8;
  v12 = &v14;
  [(SQLiteConnection *)connection performTransaction:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (BOOL)tableExists:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  connection = self->_connection;
  v6 = [NSString stringWithFormat:@"SELECT name FROM sqlite_master where name = '%@'", v4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032178;
  v8[3] = &unk_100381098;
  v8[4] = &v9;
  [(SQLiteConnection *)connection executeQuery:v6 withResults:v8];

  LOBYTE(connection) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return connection;
}

- (void)_setUserVersion:(int64_t)a3
{
  v4 = [NSString stringWithFormat:@"PRAGMA user_version = %lld", a3];;
  [(SQLiteConnection *)self->_connection executeStatement:v4 error:0];
}

@end