@interface ASUSQLiteDatabaseStoreMigrator
- (ASUSQLiteDatabaseStoreMigrator)initWithConnection:(id)connection tableNames:(id)names;
- (void)_executeQuery:(char)query canFailMigration:(void *)migration withResults:;
- (void)_executeStatement:(int)statement canFailMigration:(void *)migration bindings:;
@end

@implementation ASUSQLiteDatabaseStoreMigrator

- (ASUSQLiteDatabaseStoreMigrator)initWithConnection:(id)connection tableNames:(id)names
{
  connectionCopy = connection;
  namesCopy = names;
  v14.receiver = self;
  v14.super_class = ASUSQLiteDatabaseStoreMigrator;
  v9 = [(ASUSQLiteDatabaseStoreMigrator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = [namesCopy copy];
    tableNames = v10->_tableNames;
    v10->_tableNames = v11;

    v10->_success = 1;
  }

  return v10;
}

- (void)_executeStatement:(int)statement canFailMigration:(void *)migration bindings:
{
  v7 = a2;
  migrationCopy = migration;
  if (self)
  {
    if (*(self + 24) == 1)
    {
      v9 = *(self + 8);
      v12 = 0;
      v10 = [v9 executeStatement:v7 error:&v12 bindings:migrationCopy];
      v11 = v12;
      if ((v10 & 1) == 0 && statement)
      {
        *(self + 24) = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }
}

- (void)_executeQuery:(char)query canFailMigration:(void *)migration withResults:
{
  v7 = a2;
  migrationCopy = migration;
  v9 = migrationCopy;
  if (self && *(self + 24) == 1)
  {
    v10 = *(self + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__ASUSQLiteDatabaseStoreMigrator__executeQuery_canFailMigration_withResults___block_invoke;
    v11[3] = &unk_278C97CF0;
    queryCopy = query;
    v11[4] = self;
    v12 = migrationCopy;
    [v10 executeQuery:v7 withResults:v11];
  }
}

uint64_t __77__ASUSQLiteDatabaseStoreMigrator__executeQuery_canFailMigration_withResults___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 24) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

@end