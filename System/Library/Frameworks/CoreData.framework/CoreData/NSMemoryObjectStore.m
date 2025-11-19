@interface NSMemoryObjectStore
+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)metadataForPersistentStoreWithURL:(id)a3 options:(id)a4 error:(id *)a5;
- (NSMemoryObjectStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6;
@end

@implementation NSMemoryObjectStore

- (NSMemoryObjectStore)initWithPersistentStoreCoordinator:(id)a3 configurationName:(id)a4 URL:(id)a5 options:(id)a6
{
  objc_opt_self();
  if (!a5)
  {
    a5 = [MEMORY[0x1E695DFF8] URLWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"memory://%lx", self)}];
  }

  v16.receiver = self;
  v16.super_class = NSMemoryObjectStore;
  v11 = [(NSMappedObjectStore *)&v16 initWithPersistentStoreCoordinator:a3 configurationName:a4 URL:a5 options:a6];
  if (v11)
  {
    v12 = [a6 objectForKey:@"_NSInMemoryStoreArchivedData"];
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

+ (BOOL)setMetadata:(id)a3 forPersistentStoreWithURL:(id)a4 options:(id)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:0];
  }

  return 0;
}

+ (id)metadataForPersistentStoreWithURL:(id)a3 options:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:0];
  }

  return 0;
}

@end