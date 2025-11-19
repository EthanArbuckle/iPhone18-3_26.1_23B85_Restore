@interface NSPersistentStoreCoordinatorMigrationContext
- (NSPersistentStoreCoordinatorMigrationContext)initWithStoreURL:(id)a3 type:(id)a4 options:(id)a5;
- (void)dealloc;
@end

@implementation NSPersistentStoreCoordinatorMigrationContext

- (NSPersistentStoreCoordinatorMigrationContext)initWithStoreURL:(id)a3 type:(id)a4 options:(id)a5
{
  v10.receiver = self;
  v10.super_class = NSPersistentStoreCoordinatorMigrationContext;
  v8 = [(NSPersistentStoreCoordinatorMigrationContext *)&v10 init];
  if (v8)
  {
    v8->_storeURL = a3;
    v8->_storeType = a4;
    v8->_options = a5;
  }

  return v8;
}

- (void)dealloc
{
  self->_configurationName = 0;

  self->_destinationConfigurationForCloudKitValidation = 0;
  self->_metadata = 0;

  self->_migratedStore = 0;
  self->_stagedMigrationManager = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentStoreCoordinatorMigrationContext;
  [(NSPersistentStoreCoordinatorMigrationContext *)&v3 dealloc];
}

@end