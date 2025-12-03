@interface NSCKDatabaseMetadata
+ (NSManagedObject)databaseMetadataForScope:(uint64_t)scope forStore:(void *)store inContext:(uint64_t)context error:;
+ (NSString)entityPath;
- (BOOL)hasSubscription;
- (int64_t)databaseScope;
- (void)setDatabaseScope:(int64_t)scope;
@end

@implementation NSCKDatabaseMetadata

- (BOOL)hasSubscription
{
  hasSubscriptionNum = [(NSCKDatabaseMetadata *)self hasSubscriptionNum];

  return [hasSubscriptionNum BOOLValue];
}

- (int64_t)databaseScope
{
  databaseScopeNum = [(NSCKDatabaseMetadata *)self databaseScopeNum];

  return [databaseScopeNum integerValue];
}

- (void)setDatabaseScope:(int64_t)scope
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:scope];

  [(NSCKDatabaseMetadata *)self setDatabaseScopeNum:v4];
}

+ (NSManagedObject)databaseMetadataForScope:(uint64_t)scope forStore:(void *)store inContext:(uint64_t)context error:
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKDatabaseMetadata entityPath]);
  v15[0] = scope;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1]);
  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"databaseScopeNum = %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2)]);
  [(NSFetchRequest *)v9 setPropertiesToFetch:&unk_1EF43D630];
  v10 = [store executeFetchRequest:v9 error:context];
  if (v10)
  {
    lastObject = [v10 lastObject];
    if (!lastObject)
    {
      lastObject = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKDatabaseMetadata entityPath], store);
      [(NSManagedObject *)lastObject setDatabaseScope:a2];
      objc_opt_self();
      if ((a2 - 1) > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_1E6EC45E8[a2 - 1];
      }

      [(NSManagedObject *)lastObject setDatabaseName:v12];
      [(NSManagedObject *)lastObject setHasSubscriptionNum:&unk_1EF435E18];
      [store assignObject:lastObject toPersistentStore:scope];
    }
  }

  else
  {
    lastObject = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return lastObject;
}

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

@end