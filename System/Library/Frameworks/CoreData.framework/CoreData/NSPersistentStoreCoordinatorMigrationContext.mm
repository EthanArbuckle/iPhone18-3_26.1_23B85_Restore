@interface NSPersistentStoreCoordinatorMigrationContext
- (NSPersistentStoreCoordinatorMigrationContext)initWithStoreURL:(id)l type:(id)type options:(id)options;
- (void)dealloc;
@end

@implementation NSPersistentStoreCoordinatorMigrationContext

- (NSPersistentStoreCoordinatorMigrationContext)initWithStoreURL:(id)l type:(id)type options:(id)options
{
  v10.receiver = self;
  v10.super_class = NSPersistentStoreCoordinatorMigrationContext;
  v8 = [(NSPersistentStoreCoordinatorMigrationContext *)&v10 init];
  if (v8)
  {
    v8->_storeURL = l;
    v8->_storeType = type;
    v8->_options = options;
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