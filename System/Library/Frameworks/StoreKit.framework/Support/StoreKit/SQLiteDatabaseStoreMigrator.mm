@interface SQLiteDatabaseStoreMigrator
- (SQLiteDatabaseStoreMigrator)initWithConnection:(id)a3;
- (void)_executeQuery:(id)a3 canFailMigration:(BOOL)a4 withResults:(id)a5;
- (void)_executeStatement:(id)a3 canFailMigration:(BOOL)a4 bindings:(id)a5;
@end

@implementation SQLiteDatabaseStoreMigrator

- (SQLiteDatabaseStoreMigrator)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteDatabaseStoreMigrator;
  v6 = [(SQLiteDatabaseStoreMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v7->_success = 1;
  }

  return v7;
}

- (void)_executeStatement:(id)a3 canFailMigration:(BOOL)a4 bindings:(id)a5
{
  if (self->_success)
  {
    v5 = a4;
    connection = self->_connection;
    v11 = 0;
    v8 = [(SQLiteConnection *)connection executeStatement:a3 error:&v11 bindings:a5];
    v9 = v11;
    v10 = v11;
    if (v5)
    {
      self->_success &= v8;
    }

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_error, v9);
    }
  }

  else
  {
    v10 = 0;
  }
}

- (void)_executeQuery:(id)a3 canFailMigration:(BOOL)a4 withResults:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (self->_success)
  {
    connection = self->_connection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100023EC8;
    v11[3] = &unk_100380978;
    v13 = a4;
    v11[4] = self;
    v12 = v8;
    [(SQLiteConnection *)connection executeQuery:a3 withResults:v11];
  }
}

@end