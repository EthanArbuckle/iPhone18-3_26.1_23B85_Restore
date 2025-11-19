@interface NSCKRecordZoneQuery
+ (NSManagedObject)zoneQueryForRecordType:(void *)a3 inZone:(uint64_t)a4 inStore:(void *)a5 managedObjectContext:(uint64_t)a6 error:;
+ (NSString)entityPath;
- (void)createQueryForUpdatingRecords;
@end

@implementation NSCKRecordZoneQuery

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (void)createQueryForUpdatingRecords
{
  v1 = a1;
  v12[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [v1 predicate];
    v4 = [v1 mostRecentRecordModificationDate];
    if (v3)
    {
      if (v4)
      {
        v5 = objc_alloc(MEMORY[0x1E696AB28]);
        v12[0] = [MEMORY[0x1E696AE18] predicateWithFormat:@"modificationDate > %@", objc_msgSend(v1, "mostRecentRecordModificationDate")];
        v12[1] = v3;
        v6 = [v5 initWithType:1 subpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 2)}];
      }

      else
      {
        v6 = v3;
      }
    }

    else
    {
      if (v4)
      {
        v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"modificationDate > %@", objc_msgSend(v1, "mostRecentRecordModificationDate")];
      }

      else
      {
        v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
      }

      v6 = v7;
    }

    v8 = v6;

    objc_autoreleasePoolPop(v2);
    v1 = [objc_alloc(getCloudKitCKQueryClass()) initWithRecordType:objc_msgSend(v1 predicate:{"recordType"), v8}];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modificationDate" ascending:1];
    [v1 setSortDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v11, 1)}];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

+ (NSManagedObject)zoneQueryForRecordType:(void *)a3 inZone:(uint64_t)a4 inStore:(void *)a5 managedObjectContext:(uint64_t)a6 error:
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneQuery entityPath]);
  -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordType = %@ AND recordZone = %@", a2, objc_msgSend(a3, "objectID")]);
  v16[0] = a4;
  -[NSFetchRequest setAffectedStores:](v11, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1]);
  v12 = [a5 executeFetchRequest:v11 error:a6];
  if (v12)
  {
    v13 = [v12 lastObject];
    if (!v13)
    {
      v13 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneQuery entityPath], a5);
      [(NSManagedObject *)v13 setRecordType:a2];
      [(NSManagedObject *)v13 setRecordZone:a3];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end