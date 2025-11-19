@interface NSCKRecordZoneMetadata
+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)a3 inDatabaseWithScope:(uint64_t)a4 forStore:(void *)a5 inContext:(int)a6 createIfMissing:(uint64_t)a7 error:;
+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)a3 inDatabaseWithScope:(uint64_t)a4 forStore:(void *)a5 inContext:(uint64_t)a6 error:;
+ (NSString)entityPath;
+ (id)countZonesInStore:(id)a3 matchingPredicate:(id)a4 withManagedObjectContext:(id)a5 error:(id *)a6;
+ (id)fetchZoneIDsAssignedToObjectsWithIDs:(id)a3 fromStore:(id)a4 inContext:(id)a5 error:(id *)a6;
- (BOOL)hasRecordZone;
- (BOOL)hasSubscription;
- (void)createRecordZoneID;
- (void)destroyEncodedShareData;
- (void)updateEncodedShareWithData:(id)a3;
@end

@implementation NSCKRecordZoneMetadata

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (BOOL)hasRecordZone
{
  v2 = [(NSCKRecordZoneMetadata *)self hasRecordZoneNum];

  return [v2 BOOLValue];
}

- (BOOL)hasSubscription
{
  v2 = [(NSCKRecordZoneMetadata *)self hasSubscriptionNum];

  return [v2 BOOLValue];
}

- (void)createRecordZoneID
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (![result ckRecordZoneName] || !objc_msgSend(v1, "ckOwnerName") || (result = objc_msgSend(objc_alloc(getCloudKitCKRecordZoneIDClass[0]()), "initWithZoneName:ownerName:", objc_msgSend(v1, "ckRecordZoneName"), objc_msgSend(v1, "ckOwnerName"))) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: createRecordZoneID called before object has an owner name and zone name: %@\n", &v5, 0xCu);
      }

      v3 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: createRecordZoneID called before object has an owner name and zone name: %@", &v5, 0xCu);
      }

      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)a3 inDatabaseWithScope:(uint64_t)a4 forStore:(void *)a5 inContext:(uint64_t)a6 error:
{
  objc_opt_self();

  return [NSCKRecordZoneMetadata zoneMetadataForZoneID:a2 inDatabaseWithScope:a3 forStore:a4 inContext:a5 createIfMissing:1 error:a6];
}

+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)a3 inDatabaseWithScope:(uint64_t)a4 forStore:(void *)a5 inContext:(int)a6 createIfMissing:(uint64_t)a7 error:
{
  v32[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a3 == 3)
  {
    if (([objc_msgSend(a2 "zoneName")] & 1) != 0 || (v12 = objc_msgSend(a2, "zoneName"), objc_msgSend(v12, "isEqualToString:", getCloudKitCKRecordZoneDefaultName[0]())))
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = a4;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to work with the core-data or default zone in the shared database: %@\n", buf, 0xCu);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = a4;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to work with the core-data or default zone in the shared database: %@", buf, 0xCu);
      }
    }
  }

  v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v32[0] = a4;
  -[NSFetchRequest setAffectedStores:](v15, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1]);
  v16 = MEMORY[0x1E696AE18];
  v17 = [a2 zoneName];
  v18 = [a2 ownerName];
  -[NSFetchRequest setPredicate:](v15, "setPredicate:", [v16 predicateWithFormat:@"%K = %@ AND %K = %@ AND database.databaseScopeNum = %@", @"ckRecordZoneName", v17, @"ckOwnerName", v18, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)]);
  v19 = [a5 executeFetchRequest:v15 error:a7];
  v20 = v19;
  if (v19)
  {
    if ([(NSManagedObject *)v19 count]>= 2)
    {
      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v29 = a2;
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: fault: Multiple zone entires discovered for a single record zone: %@\n%@\n", buf, 0x16u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v29 = a2;
        v30 = 2112;
        v31 = v20;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Multiple zone entires discovered for a single record zone: %@\n%@", buf, 0x16u);
      }
    }

    v20 = [(NSManagedObject *)v20 lastObject];
    if (!v20 && a6)
    {
      v23 = [NSCKDatabaseMetadata databaseMetadataForScope:a3 forStore:a4 inContext:a5 error:a7];
      if (v23)
      {
        v24 = v23;
        v20 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMetadata entityPath], a5);
        -[NSManagedObject setCkRecordZoneName:](v20, "setCkRecordZoneName:", [a2 zoneName]);
        -[NSManagedObject setCkOwnerName:](v20, "setCkOwnerName:", [a2 ownerName]);
        [(NSManagedObject *)v20 setDatabase:v24];
        [a5 assignObject:v20 toPersistentStore:a4];
      }

      else
      {
        v20 = 0;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)fetchZoneIDsAssignedToObjectsWithIDs:(id)a3 fromStore:(id)a4 inContext:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [PFCloudKitMetadataModel createMapOfEntityIDToPrimaryKeySetForObjectIDs:a3];
  v8 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v8)
  {
    v23 = a6;
    v24 = *v35;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        v11 = [obj objectForKey:v10];
        v12 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
        -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ and entityPK IN %@", v10, v11]);
        [(NSFetchRequest *)v12 setResultType:2];
        [(NSFetchRequest *)v12 setPropertiesToFetch:&unk_1EF43D510];
        [(NSFetchRequest *)v12 setPropertiesToGroupBy:&unk_1EF43D528];
        v44 = a4;
        -[NSFetchRequest setAffectedStores:](v12, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1]);
        v13 = [a5 executeFetchRequest:v12 error:&v38];
        v14 = v13;
        if (!v13)
        {
          if (v38)
          {
            if (v23)
            {
              *v23 = v38;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
              v41 = 1024;
              v42 = 172;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v20 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v40 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
              v41 = 1024;
              v42 = 172;
              _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }
          }

          v29 = 0;
          goto LABEL_25;
        }

        v28 = v9;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v30 objects:v43 count:16];
        if (v15)
        {
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(*(*(&v30 + 1) + 8 * i) ownerName:{"objectForKey:", @"recordZone.ckRecordZoneName", objc_msgSend(*(*(&v30 + 1) + 8 * i), "objectForKey:", @"recordZone.ckOwnerName"}];
              [v29 addObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
          }

          while (v15);
        }

        v9 = v28 + 1;
      }

      while (v28 + 1 != v8);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v21 = *MEMORY[0x1E69E9840];
  return v29;
}

+ (id)countZonesInStore:(id)a3 matchingPredicate:(id)a4 withManagedObjectContext:(id)a5 error:(id *)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v10 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  [(NSFetchRequest *)v10 setPredicate:a4];
  [(NSFetchRequest *)v10 setResultType:4];
  v21[0] = a3;
  -[NSFetchRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1]);
  v11 = [a5 executeFetchRequest:v10 error:&v16];
  if (!v11 || (result = [v11 lastObject]) == 0)
  {
    if (v16)
    {
      if (a6)
      {
        result = 0;
        *a6 = v16;
        goto LABEL_11;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
        v19 = 1024;
        v20 = 202;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
        v19 = 1024;
        v20 = 202;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    result = 0;
  }

LABEL_11:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateEncodedShareWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    if (![(NSCKRecordZoneMetadata *)self encodedShareAsset])
    {
      [(NSCKRecordZoneMetadata *)self setEncodedShareAsset:+[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMetadataEncodedShareAsset entityPath], [(NSManagedObject *)self managedObjectContext])];
      [(NSManagedObjectContext *)[(NSManagedObject *)self managedObjectContext] assignObject:[(NSCKRecordZoneMetadata *)self encodedShareAsset] toPersistentStore:[(NSManagedObjectID *)[(NSManagedObject *)self objectID] persistentStore]];
    }

    v5 = [(NSCKRecordZoneMetadata *)self encodedShareAsset];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 length];
      if (v7 <= 0x4000)
      {
        v8 = v4;
      }

      else
      {
        v8 = 0;
      }

      if (v7 <= 0x4000)
      {
        v4 = 0;
      }

      [v6 setBinaryData:v8];

      [v6 setExternalBinaryData:v4];
    }
  }

  else
  {

    [(NSCKRecordZoneMetadata *)self destroyEncodedShareData];
  }
}

- (void)destroyEncodedShareData
{
  if ([(NSCKRecordZoneMetadata *)self encodedShareAsset])
  {
    v3 = [(NSManagedObject *)self managedObjectContext];
    v4 = [(NSCKRecordZoneMetadata *)self encodedShareAsset];

    [(NSManagedObjectContext *)v3 deleteObject:v4];
  }
}

@end