@interface NSCKDatabaseMetadata
+ (NSManagedObject)databaseMetadataForScope:(uint64_t)a3 forStore:(void *)a4 inContext:(uint64_t)a5 error:;
+ (NSString)entityPath;
- (BOOL)hasSubscription;
- (int64_t)databaseScope;
- (void)setDatabaseScope:(int64_t)a3;
@end

@implementation NSCKDatabaseMetadata

- (BOOL)hasSubscription
{
  v2 = [(NSCKDatabaseMetadata *)self hasSubscriptionNum];

  return [v2 BOOLValue];
}

- (int64_t)databaseScope
{
  v2 = [(NSCKDatabaseMetadata *)self databaseScopeNum];

  return [v2 integerValue];
}

- (void)setDatabaseScope:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  [(NSCKDatabaseMetadata *)self setDatabaseScopeNum:v4];
}

+ (NSManagedObject)databaseMetadataForScope:(uint64_t)a3 forStore:(void *)a4 inContext:(uint64_t)a5 error:
{
  v15[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKDatabaseMetadata entityPath]);
  v15[0] = a3;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1]);
  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"databaseScopeNum = %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2)]);
  [(NSFetchRequest *)v9 setPropertiesToFetch:&unk_1EF43D630];
  v10 = [a4 executeFetchRequest:v9 error:a5];
  if (v10)
  {
    v11 = [v10 lastObject];
    if (!v11)
    {
      v11 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKDatabaseMetadata entityPath], a4);
      [(NSManagedObject *)v11 setDatabaseScope:a2];
      objc_opt_self();
      if ((a2 - 1) > 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = off_1E6EC45E8[a2 - 1];
      }

      [(NSManagedObject *)v11 setDatabaseName:v12];
      [(NSManagedObject *)v11 setHasSubscriptionNum:&unk_1EF435E18];
      [a4 assignObject:v11 toPersistentStore:a3];
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

@end