@interface ASUSQLiteSchemaMigration
- (ASUSQLiteSchemaMigration)initWithConnection:(id)connection;
- (void)_executeStatement:(int)statement canFailMigration:(void *)migration bindings:;
@end

@implementation ASUSQLiteSchemaMigration

- (ASUSQLiteSchemaMigration)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ASUSQLiteSchemaMigration;
  v6 = [(ASUSQLiteSchemaMigration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_success = 1;
  }

  return v7;
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
      v13 = 0;
      v10 = [v9 executeStatement:v7 error:&v13 bindings:migrationCopy];
      v11 = v13;
      v12 = v13;
      if (statement)
      {
        *(self + 24) &= v10;
      }

      if ((v10 & 1) == 0)
      {
        objc_storeStrong((self + 16), v11);
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

@end