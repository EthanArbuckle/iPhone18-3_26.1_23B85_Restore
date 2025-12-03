@interface ODRDatabaseExternalTransaction
- (ODRDatabaseExternalTransaction)initWithConnection:(id)connection;
@end

@implementation ODRDatabaseExternalTransaction

- (ODRDatabaseExternalTransaction)initWithConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = ODRDatabaseExternalTransaction;
  v3 = [(ODRDatabaseSession *)&v7 initWithConnection:connection];
  if (v3)
  {
    v4 = objc_alloc_init(ODRDatabaseChangeset);
    changeset = v3->_changeset;
    v3->_changeset = v4;
  }

  return v3;
}

@end