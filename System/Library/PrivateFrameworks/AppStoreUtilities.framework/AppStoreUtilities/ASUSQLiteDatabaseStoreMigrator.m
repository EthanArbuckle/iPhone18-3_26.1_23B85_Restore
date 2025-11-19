@interface ASUSQLiteDatabaseStoreMigrator
- (ASUSQLiteDatabaseStoreMigrator)initWithConnection:(id)a3 tableNames:(id)a4;
- (void)_executeQuery:(char)a3 canFailMigration:(void *)a4 withResults:;
- (void)_executeStatement:(int)a3 canFailMigration:(void *)a4 bindings:;
@end

@implementation ASUSQLiteDatabaseStoreMigrator

- (ASUSQLiteDatabaseStoreMigrator)initWithConnection:(id)a3 tableNames:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ASUSQLiteDatabaseStoreMigrator;
  v9 = [(ASUSQLiteDatabaseStoreMigrator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    v11 = [v8 copy];
    tableNames = v10->_tableNames;
    v10->_tableNames = v11;

    v10->_success = 1;
  }

  return v10;
}

- (void)_executeStatement:(int)a3 canFailMigration:(void *)a4 bindings:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      v9 = *(a1 + 8);
      v12 = 0;
      v10 = [v9 executeStatement:v7 error:&v12 bindings:v8];
      v11 = v12;
      if ((v10 & 1) == 0 && a3)
      {
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }
}

- (void)_executeQuery:(char)a3 canFailMigration:(void *)a4 withResults:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1 && *(a1 + 24) == 1)
  {
    v10 = *(a1 + 8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__ASUSQLiteDatabaseStoreMigrator__executeQuery_canFailMigration_withResults___block_invoke;
    v11[3] = &unk_278C97CF0;
    v13 = a3;
    v11[4] = a1;
    v12 = v8;
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