@interface ODRDatabaseExternalTransaction
- (ODRDatabaseExternalTransaction)initWithConnection:(id)a3;
@end

@implementation ODRDatabaseExternalTransaction

- (ODRDatabaseExternalTransaction)initWithConnection:(id)a3
{
  v7.receiver = self;
  v7.super_class = ODRDatabaseExternalTransaction;
  v3 = [(ODRDatabaseSession *)&v7 initWithConnection:a3];
  if (v3)
  {
    v4 = objc_alloc_init(ODRDatabaseChangeset);
    changeset = v3->_changeset;
    v3->_changeset = v4;
  }

  return v3;
}

@end