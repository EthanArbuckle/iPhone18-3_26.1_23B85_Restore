@interface ACDTransientDatabase
- (ACDTransientDatabase)init;
- (id)_addPersistentStoreWithType:(id)a3 configuration:(id)a4 URL:(id)a5 options:(id)a6 error:(id *)a7;
- (id)createConnection;
@end

@implementation ACDTransientDatabase

- (ACDTransientDatabase)init
{
  v12.receiver = self;
  v12.super_class = ACDTransientDatabase;
  v2 = [(ACDTransientDatabase *)&v12 init];
  if (v2)
  {
    v3 = _ACDManagedObjectModel();
    v4 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v3];
    persistentStoreCoordinator = v2->_persistentStoreCoordinator;
    v2->_persistentStoreCoordinator = v4;

    v6 = *MEMORY[0x277CBE170];
    v11 = 0;
    v7 = [(ACDTransientDatabase *)v2 _addPersistentStoreWithType:v6 configuration:0 URL:0 options:0 error:&v11];
    v8 = [(ACDTransientDatabase *)v2 createConnection];
    v9 = [[ACDDatabaseInitializer alloc] initWithDatabaseConnection:v8];
    [(ACDDatabaseInitializer *)v9 updateDefaultContentIfNecessary:0];
  }

  return v2;
}

- (id)_addPersistentStoreWithType:(id)a3 configuration:(id)a4 URL:(id)a5 options:(id)a6 error:(id *)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator addPersistentStoreWithType:v12 configuration:v13 URL:v14 options:v15 error:a7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)createConnection
{
  v2 = [[ACDDatabaseConnection alloc] initWithPersistentStoreCoordinator:self->_persistentStoreCoordinator];

  return v2;
}

@end