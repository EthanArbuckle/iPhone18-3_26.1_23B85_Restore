@interface SQLiteDatabaseStoreMigrator
- (SQLiteDatabaseStoreMigrator)initWithConnection:(id)connection;
- (void)_executeQuery:(id)query canFailMigration:(BOOL)migration withResults:(id)results;
- (void)_executeStatement:(id)statement canFailMigration:(BOOL)migration bindings:(id)bindings;
@end

@implementation SQLiteDatabaseStoreMigrator

- (SQLiteDatabaseStoreMigrator)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = SQLiteDatabaseStoreMigrator;
  v6 = [(SQLiteDatabaseStoreMigrator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_success = 1;
  }

  return v7;
}

- (void)_executeStatement:(id)statement canFailMigration:(BOOL)migration bindings:(id)bindings
{
  if (self->_success)
  {
    migrationCopy = migration;
    connection = self->_connection;
    v11 = 0;
    v8 = [(SQLiteConnection *)connection executeStatement:statement error:&v11 bindings:bindings];
    v9 = v11;
    v10 = v11;
    if (migrationCopy)
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

- (void)_executeQuery:(id)query canFailMigration:(BOOL)migration withResults:(id)results
{
  resultsCopy = results;
  v9 = resultsCopy;
  if (self->_success)
  {
    connection = self->_connection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006848;
    v11[3] = &unk_100278118;
    migrationCopy = migration;
    v11[4] = self;
    v12 = resultsCopy;
    [(SQLiteConnection *)connection executeQuery:query withResults:v11];
  }
}

@end