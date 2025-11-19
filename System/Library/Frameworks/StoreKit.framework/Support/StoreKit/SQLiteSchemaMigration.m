@interface SQLiteSchemaMigration
- (SQLiteSchemaMigration)initWithConnection:(id)a3;
- (void)_executeStatement:(id)a3 canFailMigration:(BOOL)a4 bindings:(id)a5;
@end

@implementation SQLiteSchemaMigration

- (SQLiteSchemaMigration)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SQLiteSchemaMigration;
  v6 = [(SQLiteSchemaMigration *)&v9 init];
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

@end