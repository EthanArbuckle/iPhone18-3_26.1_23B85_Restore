@interface ASUSQLiteSchemaMigration
- (ASUSQLiteSchemaMigration)initWithConnection:(id)a3;
- (void)_executeStatement:(int)a3 canFailMigration:(void *)a4 bindings:;
@end

@implementation ASUSQLiteSchemaMigration

- (ASUSQLiteSchemaMigration)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASUSQLiteSchemaMigration;
  v6 = [(ASUSQLiteSchemaMigration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v7->_success = 1;
  }

  return v7;
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
      v13 = 0;
      v10 = [v9 executeStatement:v7 error:&v13 bindings:v8];
      v11 = v13;
      v12 = v13;
      if (a3)
      {
        *(a1 + 24) &= v10;
      }

      if ((v10 & 1) == 0)
      {
        objc_storeStrong((a1 + 16), v11);
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

@end