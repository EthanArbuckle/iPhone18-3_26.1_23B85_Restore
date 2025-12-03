@interface NSMemoryObjectStore
+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
- (NSMemoryObjectStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options;
@end

@implementation NSMemoryObjectStore

- (NSMemoryObjectStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options
{
  objc_opt_self();
  if (!l)
  {
    l = [MEMORY[0x1E695DFF8] URLWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"memory://%lx", self)}];
  }

  v16.receiver = self;
  v16.super_class = NSMemoryObjectStore;
  v11 = [(NSMappedObjectStore *)&v16 initWithPersistentStoreCoordinator:coordinator configurationName:name URL:l options:options];
  if (v11)
  {
    v12 = [options objectForKey:@"_NSInMemoryStoreArchivedData"];
    if (v12)
    {
      v13 = [[NSDictionaryStoreMap alloc] initWithStore:v11 fromArchivedData:v12];
    }

    else
    {
      v13 = [[NSDictionaryStoreMap alloc] initWithStore:v11];
    }

    v14 = v13;
    [(NSMappedObjectStore *)v11 _setMap:v13];
    -[NSMappedObjectStore setMetadata:](v11, "setMetadata:", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSPersistentStoreMap databaseUUID](v14), @"NSStoreUUID", @"InMemory", @"NSStoreType", 0}]);
  }

  return v11;
}

+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:0];
  }

  return 0;
}

+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:0];
  }

  return 0;
}

@end