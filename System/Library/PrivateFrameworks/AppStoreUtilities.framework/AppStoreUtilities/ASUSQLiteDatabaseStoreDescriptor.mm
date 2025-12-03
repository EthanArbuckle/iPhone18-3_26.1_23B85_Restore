@interface ASUSQLiteDatabaseStoreDescriptor
- (ASUSQLiteDatabaseStoreDescriptor)initWithSchemaName:(id)name tableNames:(id)names sessionClass:(Class)class transactionClass:(Class)transactionClass;
@end

@implementation ASUSQLiteDatabaseStoreDescriptor

- (ASUSQLiteDatabaseStoreDescriptor)initWithSchemaName:(id)name tableNames:(id)names sessionClass:(Class)class transactionClass:(Class)transactionClass
{
  nameCopy = name;
  namesCopy = names;
  v18.receiver = self;
  v18.super_class = ASUSQLiteDatabaseStoreDescriptor;
  v12 = [(ASUSQLiteDatabaseStoreDescriptor *)&v18 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    schemaName = v12->_schemaName;
    v12->_schemaName = v13;

    v15 = [namesCopy copy];
    tableNames = v12->_tableNames;
    v12->_tableNames = v15;

    v12->_sessionClass = class;
    v12->_transactionClass = transactionClass;
  }

  return v12;
}

@end