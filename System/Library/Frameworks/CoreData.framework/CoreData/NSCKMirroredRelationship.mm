@interface NSCKMirroredRelationship
+ (BOOL)updateMirroredRelationshipsMatchingRecords:(uint64_t)a3 forStore:(void *)a4 withManagedObjectContext:(uint64_t)a5 usingBlock:(void *)a6 error:;
+ (NSManagedObject)insertMirroredRelationshipForManyToMany:(uint64_t)a3 inZoneWithMetadata:(uint64_t)a4 inStore:(void *)a5 withManagedObjectContext:;
+ (NSString)entityPath;
+ (id)fetchMirroredRelationshipsMatchingRelatingRecords:(void *)a3 andRelatingRecordIDs:(uint64_t)a4 fromStore:(void *)a5 inManagedObjectContext:(void *)a6 error:;
+ (id)markRelationshipsForDeletedRecordIDs:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(void *)a5 error:;
+ (uint64_t)countMirroredRelationshipsInStore:(uint64_t)a3 matchingPredicate:(uint64_t)a4 withManagedObjectContext:(id *)a5 error:;
+ (uint64_t)fetchMirroredRelationshipsMatchingPredicate:(uint64_t)a3 fromStore:(void *)a4 inManagedObjectContext:(uint64_t)a5 error:;
+ (uint64_t)fetchPendingMirroredRelationshipsInStore:(void *)a3 withManagedObjectContext:(void *)a4 error:;
+ (uint64_t)purgeMirroredRelationshipsWithRecordIDs:(uint64_t)a3 fromStore:(void *)a4 withManagedObjectContext:(void *)a5 error:;
+ (void)mirroredRelationshipForManyToMany:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(uint64_t)a5 error:;
- (BOOL)isPendingBool;
- (BOOL)isUploadedBool;
- (BOOL)needsDeleteBool;
- (BOOL)updateRelationshipValueUsingImportContext:(void *)a3 andManagedObjectContext:(int)a4 isDelete:(uint64_t *)a5 error:;
- (void)createRecordID;
- (void)createRecordIDForRecord;
- (void)createRecordIDForRelatedRecord;
- (void)destroySystemFieldsData;
- (void)updateSystemFieldsWithData:(id)a3;
@end

@implementation NSCKMirroredRelationship

- (BOOL)isPendingBool
{
  v2 = [(NSCKMirroredRelationship *)self isPending];

  return [v2 BOOLValue];
}

- (BOOL)needsDeleteBool
{
  v2 = [(NSCKMirroredRelationship *)self needsDelete];

  return [v2 BOOLValue];
}

- (BOOL)isUploadedBool
{
  v2 = [(NSCKMirroredRelationship *)self isUploaded];

  return [v2 BOOLValue];
}

- (void)createRecordID
{
  v1 = a1;
  if (a1)
  {
    v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([a1 recordZone]);
    if (v2)
    {
      v1 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v1 zoneID:{"ckRecordID"), v2}];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)createRecordIDForRecord
{
  v1 = a1;
  if (a1)
  {
    v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([a1 recordZone]);
    if (v2)
    {
      v1 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v1 zoneID:{"recordName"), v2}];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)createRecordIDForRelatedRecord
{
  v1 = a1;
  if (a1)
  {
    v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([a1 recordZone]);
    if (v2)
    {
      v1 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v1 zoneID:{"relatedRecordName"), v2}];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (BOOL)updateRelationshipValueUsingImportContext:(void *)a3 andManagedObjectContext:(int)a4 isDelete:(uint64_t *)a5 error:
{
  v34 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_28;
  }

  v9 = result;
  v10 = [objc_msgSend(a3 "persistentStoreCoordinator")];
  v11 = [objc_msgSend(objc_msgSend(objc_msgSend(v10 "entitiesByName")];
  v12 = [(NSCKMirroredRelationship *)v9 createRecordIDForRecord];
  v13 = [(NSCKMirroredRelationship *)v9 createRecordIDForRelatedRecord];
  v14 = [objc_msgSend(v11 "entity")];
  if (a2)
  {
    v15 = [objc_msgSend(*(a2 + 64) objectForKey:{v14), "objectForKey:", v12}];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_msgSend(objc_msgSend(v11 "inverseRelationship")];
  if (a2)
  {
    v17 = [objc_msgSend(*(a2 + 64) objectForKey:{v16), "objectForKey:", v13}];
    if (v15)
    {
      v18 = v17;
      if (v17)
      {
        v19 = [a3 objectWithID:v15];
        v20 = [a3 objectWithID:v18];
        v21 = [objc_msgSend(v19 valueForKey:{objc_msgSend(v11, "name")), "mutableCopy"}];
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        if (a4)
        {
          [v21 removeObject:v20];
        }

        else
        {
          [v21 addObject:v20];
        }

        [v19 setValue:v21 forKey:{objc_msgSend(v11, "name")}];

        v22 = 0;
        v23 = 1;
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_16:
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A250];
    v26 = 134413;
    goto LABEL_17;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_15:
  v24 = MEMORY[0x1E696ABC0];
  v25 = *MEMORY[0x1E696A250];
  v26 = 134412;
LABEL_17:
  v22 = [v24 errorWithDomain:v25 code:v26 userInfo:0];
  v23 = 0;
LABEL_18:

  if (v23)
  {
    result = 1;
    goto LABEL_28;
  }

  if (v22)
  {
    if (a5)
    {
      result = 0;
      *a5 = v22;
      goto LABEL_28;
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v30 = 136315394;
    v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
    v32 = 1024;
    v33 = 145;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v30, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v30 = 136315394;
    v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
    v32 = 1024;
    v33 = 145;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v30, 0x12u);
    goto LABEL_27;
  }

LABEL_28:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)fetchMirroredRelationshipsMatchingRelatingRecords:(void *)a3 andRelatingRecordIDs:(uint64_t)a4 fromStore:(void *)a5 inManagedObjectContext:(void *)a6 error:
{
  v59 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v50 = 0;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v9)
  {
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = [v8 objectForKey:{objc_msgSend(v12, "zoneID")}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v13 forKey:{objc_msgSend(v12, "zoneID")}];
        }

        [v13 addObject:{objc_msgSend(v12, "recordName")}];
      }

      v9 = [a3 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v9);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [a2 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v14)
  {
    v15 = *v43;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(*(&v42 + 1) + 8 * j);
        v18 = [v8 objectForKey:{objc_msgSend(objc_msgSend(v17, "recordID"), "zoneID")}];
        if (!v18)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v18 forKey:{objc_msgSend(objc_msgSend(v17, "recordID"), "zoneID")}];
        }

        [v18 addObject:{objc_msgSend(objc_msgSend(v17, "recordID"), "recordName")}];
      }

      v14 = [a2 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v14);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = [v8 countByEnumeratingWithState:&v38 objects:v56 count:16];
  if (v19)
  {
    v20 = *v39;
LABEL_21:
    v21 = 0;
    while (1)
    {
      if (*v39 != v20)
      {
        objc_enumerationMutation(v8);
      }

      v22 = *(*(&v38 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      v24 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
      v25 = [v8 objectForKey:v22];
      -[NSFetchRequest setPredicate:](v24, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"(ckRecordID IN %@ OR recordName IN %@ OR relatedRecordName IN %@) AND recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", v25, v25, v25, objc_msgSend(v22, "zoneName"), objc_msgSend(v22, "ownerName")]);
      v55 = a4;
      -[NSFetchRequest setAffectedStores:](v24, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1]);
      [(NSFetchRequest *)v24 setRelationshipKeyPathsForPrefetching:&unk_1EF43D6C0];
      [(NSFetchRequest *)v24 setReturnsObjectsAsFaults:0];
      v26 = [a5 executeFetchRequest:v24 error:&v50];
      if (v26)
      {
        [v37 addObjectsFromArray:v26];
      }

      else
      {
        v27 = v50;

        v37 = 0;
      }

      objc_autoreleasePoolPop(v23);
      if (!v26)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v8 countByEnumeratingWithState:&v38 objects:v56 count:16];
        if (v19)
        {
          goto LABEL_21;
        }

        break;
      }
    }
  }

  if (!v37)
  {
    v28 = v50;
    if (v28)
    {
      if (a6)
      {
        v37 = 0;
        *a6 = v28;
        goto LABEL_39;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v52 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v53 = 1024;
        v54 = 203;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v30 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v52 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v53 = 1024;
        v54 = 203;
        _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v37 = 0;
  }

LABEL_39:

  v50 = 0;
  v31 = v37;
  v32 = *MEMORY[0x1E69E9840];
  return v37;
}

+ (uint64_t)fetchPendingMirroredRelationshipsInStore:(void *)a3 withManagedObjectContext:(void *)a4 error:
{
  v18[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v13 = 0;
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v18[0] = a2;
  -[NSFetchRequest setAffectedStores:](v7, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1]);
  -[NSFetchRequest setPredicate:](v7, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"isPending == 1"]);
  v8 = [a3 executeFetchRequest:v7 error:&v13];
  if (!v8)
  {
    if (v13)
    {
      if (a4)
      {
        *a4 = v13;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v16 = 1024;
        v17 = 224;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v16 = 1024;
        v17 = 224;
        _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)mirroredRelationshipForManyToMany:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(uint64_t)a5 error:
{
  v20[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v20[0] = a3;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1]);
  if (a2)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
  }

  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordID = %@", objc_msgSend(v10, "recordName")]);
  result = [a4 executeFetchRequest:v9 error:a5];
  if (result)
  {
    v12 = result;
    if ([result count] >= 2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = a2;
        v18 = 2112;
        v19 = v12;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found more than one mirrored relationship matching a many to many: %@\n%@\n", buf, 0x16u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v17 = a2;
        v18 = 2112;
        v19 = v12;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Found more than one mirrored relationship matching a many to many: %@\n%@", buf, 0x16u);
      }
    }

    result = [v12 lastObject];
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSManagedObject)insertMirroredRelationshipForManyToMany:(uint64_t)a3 inZoneWithMetadata:(uint64_t)a4 inStore:(void *)a5 withManagedObjectContext:
{
  objc_opt_self();
  v9 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKMirroredRelationship entityPath], a5);
  [a5 assignObject:v9 toPersistentStore:a4];
  if (a2)
  {
    -[NSManagedObject setCkRecordID:](v9, "setCkRecordID:", [*(a2 + 32) recordName]);
    v10 = *(a2 + 16);
  }

  else
  {
    -[NSManagedObject setCkRecordID:](v9, "setCkRecordID:", [0 recordName]);
    v10 = 0;
  }

  -[NSManagedObject setCdEntityName:](v9, "setCdEntityName:", [objc_msgSend(v10 "entity")]);
  if (a2)
  {
    -[NSManagedObject setRecordName:](v9, "setRecordName:", [*(a2 + 48) recordName]);
    v11 = *(a2 + 24);
  }

  else
  {
    -[NSManagedObject setRecordName:](v9, "setRecordName:", [0 recordName]);
    v11 = 0;
  }

  -[NSManagedObject setRelatedEntityName:](v9, "setRelatedEntityName:", [objc_msgSend(v11 "entity")]);
  if (a2)
  {
    -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [*(a2 + 56) recordName]);
    v12 = *(a2 + 16);
  }

  else
  {
    -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [0 recordName]);
    v12 = 0;
  }

  -[NSManagedObject setRelationshipName:](v9, "setRelationshipName:", [v12 name]);
  v13 = MEMORY[0x1E695E110];
  [(NSManagedObject *)v9 setIsPending:MEMORY[0x1E695E110]];
  [(NSManagedObject *)v9 setIsUploaded:v13];
  [(NSManagedObject *)v9 setNeedsDelete:v13];
  [(NSManagedObject *)v9 setRecordZone:a3];
  return v9;
}

+ (uint64_t)purgeMirroredRelationshipsWithRecordIDs:(uint64_t)a3 fromStore:(void *)a4 withManagedObjectContext:(void *)a5 error:
{
  v62 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v52 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v9)
  {
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [v8 objectForKey:{objc_msgSend(v12, "zoneID")}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v13 forKey:{objc_msgSend(v12, "zoneID")}];
        }

        [v13 addObject:{objc_msgSend(v12, "recordName")}];
      }

      v9 = [a2 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v9);
  }

  v14 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v60 = a3;
  -[NSFetchRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1]);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [v8 countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v15)
  {
    v16 = *v45;
LABEL_12:
    v17 = 0;
    while (1)
    {
      if (*v45 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v44 + 1) + 8 * v17);
      v19 = [v8 objectForKey:v18];
      -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"((recordZone.ckRecordZoneName = %@) AND (recordZone.ckOwnerName = %@) AND (ckRecordID IN %@))", objc_msgSend(v18, "zoneName"), objc_msgSend(v18, "ownerName"), v19]);
      v20 = [a4 executeFetchRequest:v14 error:&v52];
      v21 = v20;
      if (!v20)
      {
        goto LABEL_34;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v22 = [v20 countByEnumeratingWithState:&v40 objects:v58 count:16];
      if (v22)
      {
        v23 = *v41;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v41 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [a4 deleteObject:*(*(&v40 + 1) + 8 * j)];
          }

          v22 = [v21 countByEnumeratingWithState:&v40 objects:v58 count:16];
        }

        while (v22);
      }

      if (++v17 == v15)
      {
        v15 = [v8 countByEnumeratingWithState:&v44 objects:v59 count:16];
        if (v15)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"(needsDelete = 1 AND isUploaded = 1)"]);
  v25 = [a4 executeFetchRequest:v14 error:&v52];
  v26 = v25;
  if (!v25)
  {
LABEL_34:
    v30 = 0;
    goto LABEL_35;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = [v25 countByEnumeratingWithState:&v36 objects:v57 count:16];
  if (v27)
  {
    v28 = *v37;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [a4 deleteObject:*(*(&v36 + 1) + 8 * k)];
      }

      v27 = [v26 countByEnumeratingWithState:&v36 objects:v57 count:16];
    }

    while (v27);
  }

  v30 = 1;
LABEL_35:

  if ((v30 & 1) == 0)
  {
    if (v52)
    {
      if (a5)
      {
        *a5 = v52;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v55 = 1024;
        v56 = 363;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v32 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v54 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v55 = 1024;
        v56 = 363;
        _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v30;
}

+ (id)markRelationshipsForDeletedRecordIDs:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(void *)a5 error:
{
  v63 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v54 = 0;
  if ([a2 count])
  {
    v36 = a5;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v10)
    {
      v11 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v50 + 1) + 8 * i);
          v14 = [v9 objectForKey:{objc_msgSend(v13, "zoneID")}];
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v9 setObject:v14 forKey:{objc_msgSend(v13, "zoneID")}];
          }

          [v14 addObject:{objc_msgSend(v13, "recordName")}];
        }

        v10 = [a2 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v10);
    }

    v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
    v61 = a3;
    -[NSFetchRequest setAffectedStores:](v15, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1]);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = [v9 countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v16)
    {
      v39 = *v47;
      v17 = MEMORY[0x1E695E118];
      v18 = MEMORY[0x1E695E110];
      v37 = v15;
LABEL_13:
      v19 = 0;
      v38 = v16;
      while (1)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(v9);
        }

        v41 = v19;
        v20 = *(*(&v46 + 1) + 8 * v19);
        v21 = [v9 objectForKey:v20];
        -[NSFetchRequest setPredicate:](v15, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"((recordZone.ckRecordZoneName = %@) AND (recordZone.ckOwnerName = %@) AND ((recordName IN %@) OR (relatedRecordName IN %@))) OR needsDelete = 1", objc_msgSend(v20, "zoneName"), objc_msgSend(v20, "ownerName"), v21, v21]);
        v22 = [a4 executeFetchRequest:v15 error:&v54];
        v23 = v22;
        if (!v22)
        {
          break;
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v24 = [v22 countByEnumeratingWithState:&v42 objects:v59 count:16];
        if (v24)
        {
          v25 = *v43;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v42 + 1) + 8 * j);
              v28 = [(NSCKMirroredRelationship *)v27 createRecordID];
              [v8 addObject:v28];

              [v27 setNeedsDelete:v17];
              [v27 setIsUploaded:v18];
            }

            v24 = [v23 countByEnumeratingWithState:&v42 objects:v59 count:16];
          }

          while (v24);
        }

        v19 = v41 + 1;
        v15 = v37;
        if (v41 + 1 == v38)
        {
          v16 = [v9 countByEnumeratingWithState:&v46 objects:v60 count:16];
          if (v16)
          {
            goto LABEL_13;
          }

          goto LABEL_26;
        }
      }

      if (v54)
      {
        if (v36)
        {
          v29 = 0;
          *v36 = v54;
          goto LABEL_38;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v56 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
          v57 = 1024;
          v58 = 417;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v56 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
          v57 = 1024;
          v58 = 417;
          _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v29 = 0;
    }

    else
    {
LABEL_26:
      v29 = [v8 copy];
    }

LABEL_38:

    v35 = *MEMORY[0x1E69E9840];
    return v29;
  }

  else
  {
    v30 = NSSet_EmptySet;
    v31 = *MEMORY[0x1E69E9840];

    return v30;
  }
}

+ (BOOL)updateMirroredRelationshipsMatchingRecords:(uint64_t)a3 forStore:(void *)a4 withManagedObjectContext:(uint64_t)a5 usingBlock:(void *)a6 error:
{
  v60 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v52 = 0;
  obj = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:a2 andRelatingRecordIDs:MEMORY[0x1E695E0F0] fromStore:a3 inManagedObjectContext:a4 error:&v52];
  if (!obj)
  {
LABEL_32:
    if (v52)
    {
      if (a6)
      {
        result = 0;
        *a6 = v52;
        goto LABEL_40;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v55 = 1024;
        v56 = 487;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v34 = _PFLogGetLogStream(17);
      result = os_log_type_enabled(v34, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        goto LABEL_40;
      }

      *buf = 136315394;
      v54 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
      v55 = 1024;
      v56 = 487;
      _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    result = 0;
    goto LABEL_40;
  }

  v36 = a6;
  v38 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = [a2 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        if ([objc_msgSend(v17 recordType])
        {
          [v12 setObject:v17 forKey:{objc_msgSend(v17, "recordID")}];
          [v11 addObject:{objc_msgSend(v17, "recordID")}];
        }

        else
        {
          v18 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v54 = v17;
            _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempted to update a mirrored relationship with a non-mirrored-relationship record: %@\n", buf, 0xCu);
          }

          v19 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v54 = v17;
            _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Attempted to update a mirrored relationship with a non-mirrored-relationship record: %@", buf, 0xCu);
          }
        }
      }

      v14 = [a2 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v14);
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v44 + 1) + 8 * j);
        v26 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(objc_msgSend(v25 ownerName:{"recordZone"), "ckRecordZoneName"), objc_msgSend(objc_msgSend(v25, "recordZone"), "ckOwnerName")}];
        v27 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v25 zoneID:{"ckRecordID"), v26}];
        [v20 setObject:v25 forKey:v27];
        [v11 addObject:v27];
      }

      v22 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v28 = [v11 countByEnumeratingWithState:&v40 objects:v57 count:{16, v36}];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    while (2)
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v11);
        }

        if (!(*(v38 + 16))(v38, [v20 objectForKey:*(*(&v40 + 1) + 8 * k)], objc_msgSend(v12, "objectForKey:", *(*(&v40 + 1) + 8 * k)), &v52))
        {

          a6 = v37;
          goto LABEL_32;
        }
      }

      v29 = [v11 countByEnumeratingWithState:&v40 objects:v57 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_40:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)fetchMirroredRelationshipsMatchingPredicate:(uint64_t)a3 fromStore:(void *)a4 inManagedObjectContext:(uint64_t)a5 error:
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v12[0] = a3;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1]);
  [(NSFetchRequest *)v9 setFetchBatchSize:1000];
  [(NSFetchRequest *)v9 setPredicate:a2];
  result = [a4 executeFetchRequest:v9 error:a5];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

+ (uint64_t)countMirroredRelationshipsInStore:(uint64_t)a3 matchingPredicate:(uint64_t)a4 withManagedObjectContext:(id *)a5 error:
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  [(NSFetchRequest *)v9 setPredicate:a3];
  [(NSFetchRequest *)v9 setResultType:4];
  v13[0] = a2;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1]);
  if (!a4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = [(NSManagedObjectContext *)a4 _countForFetchRequest_:v9 error:a5];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    result = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    goto LABEL_6;
  }

  result = 0;
LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)updateSystemFieldsWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    if (![(NSCKMirroredRelationship *)self systemFieldsAsset])
    {
      [(NSCKMirroredRelationship *)self setSystemFieldsAsset:+[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKMirroredRelationshipSystemFieldsAsset entityPath], [(NSManagedObject *)self managedObjectContext])];
      -[NSManagedObjectContext assignObject:toPersistentStore:](-[NSManagedObject managedObjectContext](self, "managedObjectContext"), "assignObject:toPersistentStore:", [objc_opt_self() systemFieldsAsset], -[NSManagedObjectID persistentStore](-[NSManagedObject objectID](self, "objectID"), "persistentStore"));
    }

    v5 = [(NSCKMirroredRelationship *)self systemFieldsAsset];
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

    [(NSCKMirroredRelationship *)self destroySystemFieldsData];
  }
}

- (void)destroySystemFieldsData
{
  if ([(NSCKMirroredRelationship *)self systemFieldsAsset])
  {
    v3 = [(NSManagedObject *)self managedObjectContext];
    v4 = [(NSCKMirroredRelationship *)self systemFieldsAsset];

    [(NSManagedObjectContext *)v3 deleteObject:v4];
  }
}

@end