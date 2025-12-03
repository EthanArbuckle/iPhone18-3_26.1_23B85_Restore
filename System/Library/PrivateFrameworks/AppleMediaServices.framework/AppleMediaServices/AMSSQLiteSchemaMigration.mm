@interface AMSSQLiteSchemaMigration
- (AMSSQLiteSchemaMigration)initWithConnection:(id)connection;
- (BOOL)_executeStatement:(id)statement canFailMigration:(BOOL)migration bindings:(id)bindings error:(id *)error;
@end

@implementation AMSSQLiteSchemaMigration

- (AMSSQLiteSchemaMigration)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = AMSSQLiteSchemaMigration;
  v6 = [(AMSSQLiteSchemaMigration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_success = 1;
  }

  return v7;
}

- (BOOL)_executeStatement:(id)statement canFailMigration:(BOOL)migration bindings:(id)bindings error:(id *)error
{
  if (!self->_success)
  {
    v12 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_10;
  }

  migrationCopy = migration;
  connection = self->_connection;
  v16 = 0;
  v10 = [(AMSSQLiteConnection *)connection executeStatement:statement error:&v16 bindings:bindings];
  v11 = v16;
  v12 = v16;
  if (migrationCopy)
  {
    self->_success &= v10;
  }

  if (!v10)
  {
    objc_storeStrong(&self->_error, v11);
    if (error)
    {
      v14 = v12;
      v13 = 0;
      *error = v12;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = 1;
LABEL_10:

  return v13;
}

@end