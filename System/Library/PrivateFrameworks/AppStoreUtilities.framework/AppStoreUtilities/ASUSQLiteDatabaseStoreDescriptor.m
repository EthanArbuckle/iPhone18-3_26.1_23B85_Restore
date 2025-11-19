@interface ASUSQLiteDatabaseStoreDescriptor
- (ASUSQLiteDatabaseStoreDescriptor)initWithSchemaName:(id)a3 tableNames:(id)a4 sessionClass:(Class)a5 transactionClass:(Class)a6;
@end

@implementation ASUSQLiteDatabaseStoreDescriptor

- (ASUSQLiteDatabaseStoreDescriptor)initWithSchemaName:(id)a3 tableNames:(id)a4 sessionClass:(Class)a5 transactionClass:(Class)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = ASUSQLiteDatabaseStoreDescriptor;
  v12 = [(ASUSQLiteDatabaseStoreDescriptor *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    schemaName = v12->_schemaName;
    v12->_schemaName = v13;

    v15 = [v11 copy];
    tableNames = v12->_tableNames;
    v12->_tableNames = v15;

    v12->_sessionClass = a5;
    v12->_transactionClass = a6;
  }

  return v12;
}

@end