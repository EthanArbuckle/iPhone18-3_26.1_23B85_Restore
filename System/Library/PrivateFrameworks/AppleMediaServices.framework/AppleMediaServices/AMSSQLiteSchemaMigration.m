@interface AMSSQLiteSchemaMigration
- (AMSSQLiteSchemaMigration)initWithConnection:(id)a3;
- (BOOL)_executeStatement:(id)a3 canFailMigration:(BOOL)a4 bindings:(id)a5 error:(id *)a6;
@end

@implementation AMSSQLiteSchemaMigration

- (AMSSQLiteSchemaMigration)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSSQLiteSchemaMigration;
  v6 = [(AMSSQLiteSchemaMigration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v7->_success = 1;
  }

  return v7;
}

- (BOOL)_executeStatement:(id)a3 canFailMigration:(BOOL)a4 bindings:(id)a5 error:(id *)a6
{
  if (!self->_success)
  {
    v12 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_10;
  }

  v7 = a4;
  connection = self->_connection;
  v16 = 0;
  v10 = [(AMSSQLiteConnection *)connection executeStatement:a3 error:&v16 bindings:a5];
  v11 = v16;
  v12 = v16;
  if (v7)
  {
    self->_success &= v10;
  }

  if (!v10)
  {
    objc_storeStrong(&self->_error, v11);
    if (a6)
    {
      v14 = v12;
      v13 = 0;
      *a6 = v12;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = 1;
LABEL_10:

  return v13;
}

@end