@interface NSCKRecordMetadata
+ (NSManagedObject)metadataForRecord:(void *)a3 inManagedObjectContext:(uint64_t)a4 fromStore:(void *)a5 error:;
+ (NSString)entityPath;
+ (id)batchUpdateMetadataMatchingEntityIdsAndPKs:(uint64_t)a3 withUpdates:(uint64_t)a4 inStore:(uint64_t)a5 withManagedObjectContext:(void *)a6 error:;
+ (id)createMapOfMetadataMatchingObjectIDs:(void *)a3 inStore:(void *)a4 inManagedObjectContext:(void *)a5 error:;
+ (id)encodeRecord:(id)a3 error:(id *)a4;
+ (id)insertMetadataForObject:(id)a3 setRecordName:(BOOL)a4 inZoneWithID:(id)a5 recordNamePrefix:(id)a6 error:(id *)a7;
+ (id)metadataForObjectIDs:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(void *)a5 error:;
+ (id)metadataForRecordIDs:(void *)a3 fromStore:(void *)a4 inManagedObjectContext:(id *)a5 error:;
+ (id)recordFromEncodedData:(id)a3 error:(id *)a4;
+ (uint64_t)countRecordMetadataInStore:(uint64_t)a3 matchingPredicate:(uint64_t)a4 withManagedObjectContext:(id *)a5 error:;
+ (uint64_t)createMapOfMetadataMatchingRecords:(void *)a3 andRecordIDs:(void *)a4 inStore:(void *)a5 withManagedObjectContext:(id *)a6 error:;
+ (uint64_t)createObjectIDForEntityID:(void *)a3 primaryKey:(void *)a4 inSQLCore:;
+ (uint64_t)createObjectIDFromMetadataDictionary:(void *)a3 inSQLCore:;
+ (uint64_t)metadataForObject:(void *)a3 inManagedObjectContext:(void *)a4 error:;
+ (uint64_t)purgeRecordMetadataWithRecordIDs:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(id *)a5 error:;
+ (void)enumerateRecordMetadataDictionariesMatchingObjectIDs:(void *)a3 withProperties:(void *)a4 inStore:(void *)a5 withManagedObjectContext:(uint64_t)a6 block:;
- (BOOL)mergeMoveReceiptsWithData:(id)a3 error:(id *)a4;
- (id)createEncodedMoveReceiptData:(id *)a3;
- (id)createRecordFromSystemFields;
- (uint64_t)createRecordID;
- (void)bindRelatedObjectToStoreIfPossible:(void *)a1;
- (void)createObjectIDForLinkedRow;
- (void)destroyEncodedRecord;
- (void)destroySystemFields;
- (void)updateEncodedRecordWithData:(id)a3;
- (void)updateSystemFieldsWithData:(id)a3;
@end

@implementation NSCKRecordMetadata

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  return [v2 stringWithFormat:@"%@/%@", v3, NSStringFromClass(v4)];
}

- (uint64_t)createRecordID
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_12:
    v3 = 0;
    goto LABEL_13;
  }

  if (![a1 recordZone])
  {
LABEL_8:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: createRecordID called before the record has the necessary properties: %@\n", &v8, 0xCu);
    }

    v5 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_fault_impl(&dword_18565F000, v5, OS_LOG_TYPE_FAULT, "CoreData: createRecordID called before the record has the necessary properties: %@", &v8, 0xCu);
    }

    goto LABEL_12;
  }

  v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([a1 recordZone]);
  if (!v2 || ![a1 ckRecordName])
  {

    goto LABEL_8;
  }

  v3 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(a1 zoneID:{"ckRecordName"), v2}];

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)createRecordFromSystemFields
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NSCKRecordMetadata *)self systemFieldsAsset];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_msgSend(v3 "binaryData")] ? objc_msgSend(v4, "binaryData") : objc_msgSend(v4, "externalBinaryData");
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
      v7 = [objc_alloc(getCloudKitCKRecordClass[0]()) initWithCoder:v6];
      if ([-[NSCKRecordMetadata ckRecordName](self "ckRecordName")])
      {
        if ([objc_msgSend(v7 "recordType")])
        {
          goto LABEL_18;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v18 = 138412802;
          *&v18[4] = [(NSCKRecordMetadata *)self ckRecordName];
          *&v18[12] = 2112;
          *&v18[14] = [v7 recordID];
          *&v18[22] = 2112;
          v19 = self;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSCKRecordMetadata: System fields record type doesn't match new schema: %@\n%@\n%@\n", v18, 0x20u);
        }

        v9 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_17:

          v7 = 0;
LABEL_18:
          [v6 finishDecoding];

          goto LABEL_19;
        }

        v16 = [(NSCKRecordMetadata *)self ckRecordName];
        v17 = [v7 recordID];
        *v18 = 138412802;
        *&v18[4] = v16;
        *&v18[12] = 2112;
        *&v18[14] = v17;
        *&v18[22] = 2112;
        v19 = self;
        v12 = "CoreData: NSCKRecordMetadata: System fields record type doesn't match new schema: %@\n%@\n%@";
      }

      else
      {
        v8 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *v18 = 138412802;
          *&v18[4] = [(NSCKRecordMetadata *)self ckRecordName];
          *&v18[12] = 2112;
          *&v18[14] = [v7 recordID];
          *&v18[22] = 2112;
          v19 = self;
          _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: NCKRecordMetadata: System fields record name doesn't match row: %@\n%@\n%@\n", v18, 0x20u);
        }

        v9 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_17;
        }

        v10 = [(NSCKRecordMetadata *)self ckRecordName];
        v11 = [v7 recordID];
        *v18 = 138412802;
        *&v18[4] = v10;
        *&v18[12] = 2112;
        *&v18[14] = v11;
        *&v18[22] = 2112;
        v19 = self;
        v12 = "CoreData: NCKRecordMetadata: System fields record name doesn't match row: %@\n%@\n%@";
      }

      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, v12, v18, 0x20u);
      goto LABEL_17;
    }
  }

  v7 = 0;
LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)createObjectIDForLinkedRow
{
  if (result)
  {
    v1 = result;
    v2 = [result entityId];
    v3 = [v1 entityPK];
    v4 = [objc_msgSend(v1 "objectID")];

    return [NSCKRecordMetadata createObjectIDForEntityID:v2 primaryKey:v3 inSQLCore:v4];
  }

  return result;
}

+ (uint64_t)createObjectIDForEntityID:(void *)a3 primaryKey:(void *)a4 inSQLCore:
{
  v26 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 unsignedLongValue];
  v8 = [a3 integerValue];
  if (!v7)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = a4;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID: called before the record has the necessary properties (entityID): %@\n", &v22, 0xCu);
    }

    v14 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v22 = 138412290;
    v23 = a4;
    v15 = "CoreData: Cannot create objectID: called before the record has the necessary properties (entityID): %@";
    v16 = v14;
    v17 = 12;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = _sqlCoreLookupSQLEntityForEntityID(a4, v7);
  if (!v10)
  {
    v18 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      v23 = a2;
      v24 = 2112;
      v25 = a4;
      _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID. Unable to find entity with id '%@' in store '%@'\n", &v22, 0x16u);
    }

    v19 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v22 = 138412546;
    v23 = a2;
    v24 = 2112;
    v25 = a4;
    v15 = "CoreData: Cannot create objectID. Unable to find entity with id '%@' in store '%@'";
LABEL_19:
    v16 = v19;
    v17 = 22;
LABEL_20:
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, v15, &v22, v17);
LABEL_21:
    v21 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (v9 < 1)
  {
    v20 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      v23 = a2;
      v24 = 2112;
      v25 = a4;
      _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: Cannot create objectID: called before the record has the necessary properties (primaryKey): %@ / %@\n", &v22, 0x16u);
    }

    v19 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    v22 = 138412546;
    v23 = a2;
    v24 = 2112;
    v25 = a4;
    v15 = "CoreData: Cannot create objectID: called before the record has the necessary properties (primaryKey): %@ / %@";
    goto LABEL_19;
  }

  v11 = *MEMORY[0x1E69E9840];

  return [a4 newObjectIDForEntity:v10 pk:v9];
}

+ (uint64_t)createObjectIDFromMetadataDictionary:(void *)a3 inSQLCore:
{
  objc_opt_self();
  v5 = [a2 objectForKey:@"entityId"];
  v6 = [a2 objectForKey:@"entityPK"];

  return [NSCKRecordMetadata createObjectIDForEntityID:v5 primaryKey:v6 inSQLCore:a3];
}

+ (uint64_t)metadataForObject:(void *)a3 inManagedObjectContext:(void *)a4 error:
{
  v23[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v18 = 0;
  v23[0] = [a2 objectID];
  v7 = +[NSCKRecordMetadata metadataForObjectIDs:inStore:withManagedObjectContext:error:](NSCKRecordMetadata, [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1], objc_msgSend(objc_msgSend(a2, "objectID"), "persistentStore"), a3, &v18);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 lastObject];
    if ([v8 count] >= 2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_msgSend(a2 "description")];
        v17 = [objc_msgSend(v8 "description")];
        *buf = 136315394;
        v20 = v16;
        v21 = 2080;
        v22 = v17;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found more than one instance of NSCKRecordMetadata for object: %s\n%s\n", buf, 0x16u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = [objc_msgSend(a2 "description")];
        v13 = [objc_msgSend(v8 "description")];
        *buf = 136315394;
        v20 = v12;
        v21 = 2080;
        v22 = v13;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Found more than one instance of NSCKRecordMetadata for object: %s\n%s", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (a4 && v18)
  {
    *a4 = v18;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)metadataForObjectIDs:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(void *)a5 error:
{
  v36[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v30 = 0;
  v25 = [PFCloudKitMetadataModel createMapOfEntityIDToPrimaryKeySetForObjectIDs:a2];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  v36[0] = a3;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v25 allKeys];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v11)
  {
    v12 = *v27;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [v25 objectForKey:v14];
      -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ and entityPK in %@", v14, v16]);
      [(NSFetchRequest *)v9 setFetchBatchSize:500];
      v17 = [a4 executeFetchRequest:v9 error:&v30];
      if (v17)
      {
        [v8 addObjectsFromArray:v17];
      }

      else
      {
        v18 = v30;

        v8 = 0;
      }

      objc_autoreleasePoolPop(v15);
      if (!v17)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!v8)
  {
    v21 = v30;
    if (v21)
    {
      if (a5)
      {
        *a5 = v21;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v33 = 1024;
        v34 = 178;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v33 = 1024;
        v34 = 178;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v30 = 0;
  result = v8;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)createMapOfMetadataMatchingObjectIDs:(void *)a3 inStore:(void *)a4 inManagedObjectContext:(void *)a5 error:
{
  v79[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v71 = 0;
  v8 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  context = a3;
  v79[0] = a3;
  -[NSFetchRequest setAffectedStores:](v8, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:1]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v51 = v8;
  v52 = a4;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [a2 countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v10)
  {
    v11 = *v68;
    do
    {
      v12 = 0;
      do
      {
        if (*v68 != v11)
        {
          objc_enumerationMutation(a2);
        }

        v13 = *(*(&v67 + 1) + 8 * v12);
        if ([v13 isTemporaryID])
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v23 = [objc_msgSend(v13 "description")];
            *buf = 136315138;
            v73 = v23;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Somehow got a temporary objectID for export: %s\n", buf, 0xCu);
          }

          v15 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            v16 = [objc_msgSend(v13 "description")];
            *buf = 136315138;
            v73 = v16;
            _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Somehow got a temporary objectID for export: %s", buf, 0xCu);
          }
        }

        else
        {
          v17 = _sqlEntityForEntityDescription([context model], objc_msgSend(v13, "entity"));
          if (v17)
          {
            v18 = *(v17 + 184);
          }

          else
          {
            v18 = 0;
          }

          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v18];
          v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v13, "_referenceData64")}];
          v21 = [v58 objectForKey:v19];
          if (!v21)
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v58 setObject:v21 forKey:v19];
          }

          [v21 addObject:v20];

          v22 = [v9 objectForKey:v19];
          if (!v22)
          {
            v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v9 setObject:v22 forKey:v19];
          }

          [v22 setObject:v13 forKey:v20];
        }

        ++v12;
      }

      while (v10 != v12);
      v24 = [a2 countByEnumeratingWithState:&v67 objects:v78 count:16];
      v10 = v24;
    }

    while (v24);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v25 = [v58 allKeys];
  v26 = [v25 countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v26)
  {
    v54 = *v64;
    v28 = v51;
    v27 = v52;
    v50 = v25;
LABEL_24:
    v29 = 0;
    v53 = v26;
    while (1)
    {
      if (*v64 != v54)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v63 + 1) + 8 * v29);
      contexta = objc_autoreleasePoolPush();
      v31 = [v58 objectForKey:v30];
      -[NSFetchRequest setPredicate:](v28, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ and entityPK in %@", v30, v31]);
      [(NSFetchRequest *)v28 setFetchBatchSize:500];
      v32 = [v27 executeFetchRequest:v28 error:&v71];
      v33 = v32;
      if (v32)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v34 = [v32 countByEnumeratingWithState:&v59 objects:v76 count:16];
        if (v34)
        {
          v35 = *v60;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v60 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v59 + 1) + 8 * i);
              v38 = [objc_msgSend(v9 objectForKey:{objc_msgSend(v37, "entityId")), "objectForKey:", objc_msgSend(v37, "entityPK")}];
              if (v38)
              {
                [v7 setObject:v37 forKey:v38];
              }

              else
              {
                v39 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v41 = [objc_msgSend(v37 "description")];
                  *buf = 136315138;
                  v73 = v41;
                  _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: fault: Exporter got record metadata back but doesn't have a corresponding objectID: %s\n", buf, 0xCu);
                }

                v40 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                {
                  v42 = [objc_msgSend(v37 "description")];
                  *buf = 136315138;
                  v73 = v42;
                  _os_log_fault_impl(&dword_18565F000, v40, OS_LOG_TYPE_FAULT, "CoreData: Exporter got record metadata back but doesn't have a corresponding objectID: %s", buf, 0xCu);
                }
              }
            }

            v34 = [v33 countByEnumeratingWithState:&v59 objects:v76 count:16];
          }

          while (v34);
          v28 = v51;
          v27 = v52;
          v25 = v50;
        }

        v26 = v53;
      }

      else
      {
        v43 = v71;

        v7 = 0;
      }

      objc_autoreleasePoolPop(contexta);
      if (!v33)
      {
        break;
      }

      if (++v29 == v26)
      {
        v26 = [v25 countByEnumeratingWithState:&v63 objects:v77 count:16];
        if (v26)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  if (!v7)
  {
    v44 = v71;
    if (v44)
    {
      if (a5)
      {
        v7 = 0;
        *a5 = v44;
        goto LABEL_56;
      }
    }

    else
    {
      v45 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v73 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v74 = 1024;
        v75 = 248;
        _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v46 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v73 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v74 = 1024;
        v75 = 248;
        _os_log_fault_impl(&dword_18565F000, v46, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v7 = 0;
  }

LABEL_56:

  v71 = 0;
  v47 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (NSManagedObject)metadataForRecord:(void *)a3 inManagedObjectContext:(uint64_t)a4 fromStore:(void *)a5 error:
{
  v32[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v27 = 0;
  v9 = objc_autoreleasePoolPush();
  v10 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v10, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordName = %@ and recordZone.ckRecordZoneName = %@ and recordZone.ckOwnerName = %@", objc_msgSend(objc_msgSend(a2, "recordID"), "recordName"), objc_msgSend(objc_msgSend(objc_msgSend(a2, "recordID"), "zoneID"), "zoneName"), objc_msgSend(objc_msgSend(objc_msgSend(a2, "recordID"), "zoneID"), "ownerName")]);
  v32[0] = a4;
  -[NSFetchRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1]);
  v11 = [a3 executeFetchRequest:v10 error:&v27];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 lastObject];
    if ([v12 count] < 2)
    {
      goto LABEL_6;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_msgSend(a2 "description")];
      v24 = [objc_msgSend(v12 "description")];
      *buf = 136315394;
      v29 = v23;
      v30 = 2080;
      v31 = v24;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found more than one instance of NSCKRecordMetadata for record: %s\n%s\n", buf, 0x16u);
    }

    v15 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
LABEL_6:
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v25 = [objc_msgSend(a2 "description")];
    v26 = [objc_msgSend(v12 "description")];
    *buf = 136315394;
    v29 = v25;
    v30 = 2080;
    v31 = v26;
    _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Found more than one instance of NSCKRecordMetadata for record: %s\n%s", buf, 0x16u);
    if (!v13)
    {
LABEL_7:
      v13 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordMetadata entityPath], a3);
      -[NSManagedObject setCkRecordName:](v13, "setCkRecordName:", [objc_msgSend(a2 "recordID")]);
      [a3 assignObject:v13 toPersistentStore:a4];
      v16 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_9:
  v17 = v27;
  objc_autoreleasePoolPop(v9);
  if (v27)
  {
    v18 = v27;
    if (v18)
    {
      if (a5)
      {
        *a5 = v18;
      }
    }

    else
    {
      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v30 = 1024;
        LODWORD(v31) = 294;
        _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v30 = 1024;
        LODWORD(v31) = 294;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  result = v13;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)metadataForRecordIDs:(void *)a3 fromStore:(void *)a4 inManagedObjectContext:(id *)a5 error:
{
  v73 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v56 = a3;
  v6 = [a3 mirroringDelegate];
  if (!v6)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = v56;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempting to query cloudkit metadata without a mirroring delegate: %@\n", buf, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v67 = v56;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Attempting to query cloudkit metadata without a mirroring delegate: %@", buf, 0xCu);
    }
  }

  v65 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = [a2 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (!v11)
  {
    v50 = 1;
    goto LABEL_27;
  }

  v12 = *v62;
  v50 = 1;
  do
  {
    v13 = 0;
    do
    {
      if (*v62 != v12)
      {
        objc_enumerationMutation(a2);
      }

      v14 = *(*(&v61 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [v14 zoneID];
      v17 = [v9 objectForKey:v16];
      if (!v17)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [v9 setObject:v17 forKey:v16];
      }

      [v17 addObject:{objc_msgSend(v14, "recordName")}];

      if ([v10 objectForKey:v16])
      {
        goto LABEL_18;
      }

      if (v6)
      {
        v18 = *(v6 + 8);
      }

      else
      {
        v18 = 0;
      }

      v19 = +[NSCKRecordZoneMetadata zoneMetadataForZoneID:inDatabaseWithScope:forStore:inContext:error:](NSCKRecordZoneMetadata, v16, [v18 databaseScope], v56, a4, &v65);
      if (v19)
      {
        v65 = 0;
        [v10 setObject:-[NSManagedObject objectID](v19 forKey:{"objectID"), v16}];
LABEL_18:
        v20 = 1;
        goto LABEL_19;
      }

      v21 = v65;
      v20 = 0;
      v50 = 0;
LABEL_19:
      objc_autoreleasePoolPop(v15);
      if (!v20)
      {
        goto LABEL_27;
      }

      ++v13;
    }

    while (v11 != v13);
    v22 = [a2 countByEnumeratingWithState:&v61 objects:v72 count:16];
    v11 = v22;
  }

  while (v22);
LABEL_27:
  v23 = v65;
  if (v50)
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v25 = [v9 allKeys];
    v26 = [v25 countByEnumeratingWithState:&v57 objects:v71 count:16];
    obja = v24;
    if (v26)
    {
      v49 = v25;
      v27 = *v58;
      v28 = 1;
      while (2)
      {
        v51 = v28;
        for (i = 0; i != v26; ++i)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v49);
          }

          v30 = *(*(&v57 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          v32 = [v10 objectForKey:v30];
          v33 = [v9 objectForKey:v30];
          v34 = v33;
          if (v32)
          {
            v35 = v33 == 0;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            v36 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v67 = v30;
              _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid query for record metadata (by recordIDs): %@ returned no metadata or record names\n", buf, 0xCu);
            }

            v37 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v67 = v30;
              _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: Invalid query for record metadata (by recordIDs): %@ returned no metadata or record names", buf, 0xCu);
            }
          }

          v38 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
          v70 = v56;
          -[NSFetchRequest setAffectedStores:](v38, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1]);
          -[NSFetchRequest setPredicate:](v38, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone = %@ AND ckRecordName in %@", v32, v34]);
          v39 = [a4 executeFetchRequest:v38 error:&v65];
          if (v39)
          {
            v65 = 0;
            [obja addObjectsFromArray:v39];
          }

          else
          {
            v40 = v65;
            v51 = 0;
          }

          objc_autoreleasePoolPop(v31);
          if (!v39)
          {
            LOBYTE(v28) = v51;
            goto LABEL_52;
          }
        }

        v26 = [v49 countByEnumeratingWithState:&v57 objects:v71 count:16];
        v28 = v51;
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v28) = 1;
    }

LABEL_52:
    v41 = obja;
    v42 = v65;
    if (v28)
    {
      v43 = [obja copy];
      v52 = 1;
      goto LABEL_55;
    }
  }

  else
  {
    v41 = 0;
  }

  v43 = 0;
  v52 = 0;
LABEL_55:

  if ((v52 & 1) == 0)
  {
    if (v65)
    {
      if (a5)
      {
        *a5 = v65;
      }
    }

    else
    {
      v44 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v68 = 1024;
        v69 = 385;
        _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v45 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v67 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v68 = 1024;
        v69 = 385;
        _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  result = v43;
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

+ (uint64_t)createMapOfMetadataMatchingRecords:(void *)a3 andRecordIDs:(void *)a4 inStore:(void *)a5 withManagedObjectContext:(id *)a6 error:
{
  v91 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v64 = a4;
  v8 = [a4 mirroringDelegate];
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v83 = v64;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempting to query cloudkit metadata without a mirroring delegate: %@\n", buf, 0xCu);
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v83 = v64;
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Attempting to query cloudkit metadata without a mirroring delegate: %@", buf, 0xCu);
    }

    v9 = 0;
  }

  context = [v9 databaseScope];
  v81 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v15 = [a3 countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v15)
  {
    v16 = *v78;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v78 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v77 + 1) + 8 * i);
        v19 = [v18 zoneID];
        v20 = [v13 objectForKey:v19];
        if (!v20)
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v13 setObject:v20 forKey:v19];
        }

        [v20 addObject:{objc_msgSend(v18, "recordName")}];

        if (![v14 objectForKey:v19])
        {
          v21 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v19 inDatabaseWithScope:context forStore:v64 inContext:a5 error:&v81];
          if (!v21)
          {
            goto LABEL_63;
          }

          [v14 setObject:-[NSManagedObject objectID](v21 forKey:{"objectID"), v19}];
        }
      }

      v15 = [a3 countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v15);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v22 = [a2 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v22)
  {
    v23 = *v74;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v74 != v23)
        {
          objc_enumerationMutation(a2);
        }

        v25 = *(*(&v73 + 1) + 8 * j);
        v26 = [objc_msgSend(v25 "recordID")];
        v27 = [v13 objectForKey:v26];
        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v13 setObject:v27 forKey:v26];
        }

        [v27 addObject:{objc_msgSend(objc_msgSend(v25, "recordID"), "recordName")}];

        if (![v14 objectForKey:v26])
        {
          v28 = [NSCKRecordZoneMetadata zoneMetadataForZoneID:v26 inDatabaseWithScope:context forStore:v64 inContext:a5 error:&v81];
          if (!v28)
          {
            goto LABEL_63;
          }

          [v14 setObject:-[NSManagedObject objectID](v28 forKey:{"objectID"), v26}];
        }
      }

      v22 = [a2 countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v22);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v29 = [v13 allKeys];
  v30 = [v29 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (v30)
  {
    v31 = *v70;
    v58 = 1;
    v55 = *v70;
    v56 = v29;
LABEL_34:
    v32 = 0;
    obja = v30;
    while (1)
    {
      if (*v70 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v33 = *(*(&v69 + 1) + 8 * v32);
      contexta = objc_autoreleasePoolPush();
      v34 = [v14 objectForKey:v33];
      v35 = [v13 objectForKey:v33];
      v36 = v35;
      if (v34)
      {
        v37 = v35 == 0;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        v38 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = v33;
          _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid query for record metadata (by recordIDs): %@ returned no metadata or record names\n", buf, 0xCu);
        }

        v39 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v83 = v33;
          _os_log_fault_impl(&dword_18565F000, v39, OS_LOG_TYPE_FAULT, "CoreData: Invalid query for record metadata (by recordIDs): %@ returned no metadata or record names", buf, 0xCu);
        }
      }

      v40 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
      v87 = v64;
      -[NSFetchRequest setAffectedStores:](v40, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1]);
      -[NSFetchRequest setPredicate:](v40, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone = %@ AND ckRecordName in %@", v34, v36]);
      v41 = [a5 executeFetchRequest:v40 error:&v81];
      v42 = v41;
      if (v41)
      {
        v81 = 0;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v43 = [v41 countByEnumeratingWithState:&v65 objects:v86 count:16];
        if (v43)
        {
          v44 = *v66;
          do
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v66 != v44)
              {
                objc_enumerationMutation(v42);
              }

              v46 = *(*(&v65 + 1) + 8 * k);
              v47 = [(NSCKRecordMetadata *)v46 createRecordID];
              [v12 setObject:v46 forKey:v47];
            }

            v43 = [v42 countByEnumeratingWithState:&v65 objects:v86 count:16];
          }

          while (v43);
          v31 = v55;
          v29 = v56;
        }
      }

      else
      {
        v48 = v81;
        v58 = 0;
      }

      objc_autoreleasePoolPop(contexta);
      if (!v42)
      {
        break;
      }

      if (++v32 == obja)
      {
        v30 = [v29 countByEnumeratingWithState:&v69 objects:v88 count:16];
        if (v30)
        {
          goto LABEL_34;
        }

        break;
      }
    }
  }

  else
  {
    v58 = 1;
  }

  v49 = v81;
  if ((v58 & 1) == 0)
  {
LABEL_63:
    if (v81)
    {
      if (a6)
      {
        v50 = 0;
        *a6 = v81;
        goto LABEL_71;
      }
    }

    else
    {
      v51 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v84 = 1024;
        v85 = 499;
        _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v52 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v84 = 1024;
        v85 = 499;
        _os_log_fault_impl(&dword_18565F000, v52, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v50 = 0;
    goto LABEL_71;
  }

  v50 = [v12 copy];
LABEL_71:

  v53 = *MEMORY[0x1E69E9840];
  return v50;
}

+ (id)insertMetadataForObject:(id)a3 setRecordName:(BOOL)a4 inZoneWithID:(id)a5 recordNamePrefix:(id)a6 error:(id *)a7
{
  v9 = a4;
  v58 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v43 = 0;
  v44 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v11 = [a3 managedObjectContext];
  v12 = [objc_msgSend(a3 "objectID")];
  v13 = [v12 mirroringDelegate];
  if (v13)
  {
    v14 = *(v13 + 8);
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v53) = 138412290;
      *(&v53 + 4) = v12;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempting to query cloudkit metadata without a mirroring delegate: %@\n", &v53, 0xCu);
    }

    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v53) = 138412290;
      *(&v53 + 4) = v12;
      _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Attempting to query cloudkit metadata without a mirroring delegate: %@", &v53, 0xCu);
    }

    v14 = 0;
  }

  v17 = [v14 databaseScope];
  v18 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordMetadata entityPath], v11);
  v19 = [objc_msgSend(objc_msgSend(a3 "entity")];
  if (v19)
  {
    v20 = [a3 managedObjectContext];
    *&v53 = MEMORY[0x1E69E9820];
    *(&v53 + 1) = 3221225472;
    v54 = __117__NSCKRecordMetadata_insertMetadataForObject_usingMetadataContext_setRecordName_inZoneWithID_recordNamePrefix_error___block_invoke;
    v55 = &unk_1E6EC1860;
    v56 = a3;
    v57 = &v38;
    [v20 performBlockAndWait:&v53];
  }

  if (!v39[5])
  {
    if ([a6 length])
    {
      v21 = [objc_msgSend(a3 "entity")];
      v22 = [a6 stringByAppendingFormat:@"%@_%@", v21, objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")];
    }

    else
    {
      v22 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    }

    v23 = v22;
    v39[5] = v23;
    if (v19)
    {
      if (v9)
      {
        v24 = [a3 managedObjectContext];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __117__NSCKRecordMetadata_insertMetadataForObject_usingMetadataContext_setRecordName_inZoneWithID_recordNamePrefix_error___block_invoke_2;
        v37[3] = &unk_1E6EC1330;
        v37[4] = a3;
        v37[5] = &v38;
        [v24 performBlockAndWait:v37];
      }
    }
  }

  [v11 assignObject:v18 toPersistentStore:v12];
  [(NSManagedObject *)v18 setCkRecordName:v39[5]];
  v25 = MEMORY[0x1E696AD98];
  v26 = _sqlEntityForEntityDescription([v12 model], objc_msgSend(objc_msgSend(a3, "objectID"), "entity"));
  if (v26)
  {
    v27 = *(v26 + 184);
  }

  else
  {
    v27 = 0;
  }

  -[NSManagedObject setEntityId:](v18, "setEntityId:", [v25 numberWithUnsignedInt:v27]);
  -[NSManagedObject setEntityPK:](v18, "setEntityPK:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(a3, "objectID"), "_referenceData64")}]);
  [(NSManagedObject *)v18 setRecordZone:[NSCKRecordZoneMetadata zoneMetadataForZoneID:a5 inDatabaseWithScope:v17 forStore:v12 inContext:v11 error:&v44]];
  if (![(NSManagedObject *)v18 recordZone])
  {
    [v11 deleteObject:v18];
    v28 = objc_autoreleasePoolPush();
    Stream = __PFCloudKitLoggingGetStream();
    v30 = Stream;
    if (__ckLoggingOverride == 17)
    {
      v31 = OS_LOG_TYPE_FAULT;
    }

    else
    {
      v31 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(Stream, v31))
    {
      *buf = 136315906;
      v46 = "+[NSCKRecordMetadata insertMetadataForObject:usingMetadataContext:setRecordName:inZoneWithID:recordNamePrefix:error:]";
      v47 = 1024;
      v48 = 579;
      v49 = 2112;
      v50 = a3;
      v51 = 2112;
      v52 = v44;
      _os_log_impl(&dword_18565F000, v30, v31, "CoreData+CloudKit: %s(%d): Failed to get a metadata zone while creating metadata for object: %@\n%@", buf, 0x26u);
    }

    v18 = 0;
    objc_autoreleasePoolPop(v28);
  }

  v39[5] = 0;
  if (!v18)
  {
    if (v44)
    {
      if (a7)
      {
        *a7 = v44;
      }
    }

    else
    {
      v34 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v47 = 1024;
        v48 = 586;
        _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v35 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v46 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v47 = 1024;
        v48 = 586;
        _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  _Block_object_dispose(&v38, 8);
  v32 = *MEMORY[0x1E69E9840];
  return v18;
}

id __117__NSCKRecordMetadata_insertMetadataForObject_usingMetadataContext_setRecordName_inZoneWithID_recordNamePrefix_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) valueForKey:@"ckRecordID"];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (uint64_t)purgeRecordMetadataWithRecordIDs:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(id *)a5 error:
{
  v55 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v46 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v9)
  {
    v10 = *v43;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        v13 = [v8 objectForKey:{objc_msgSend(v12, "zoneID")}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v13 forKey:{objc_msgSend(v12, "zoneID")}];
        }

        [v13 addObject:{objc_msgSend(v12, "recordName")}];
      }

      v9 = [a2 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v9);
  }

  v14 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  v53 = a3;
  -[NSFetchRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = [v8 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v15)
  {
    v32 = 1;
    v33 = *v39;
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v39 != v33)
      {
        objc_enumerationMutation(v8);
      }

      v17 = *(*(&v38 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [v8 objectForKey:v17];
      -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"((recordZone.ckRecordZoneName = %@) AND (recordZone.ckOwnerName = %@) AND (ckRecordName IN %@)) OR (needsCloudDelete = 1 AND needsUpload = 0)", objc_msgSend(v17, "zoneName"), objc_msgSend(v17, "ownerName"), v19]);
      v20 = [a4 executeFetchRequest:v14 error:&v46];
      v21 = v20;
      if (v20)
      {
        v46 = 0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v22 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
        if (v22)
        {
          v23 = *v35;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v35 != v23)
              {
                objc_enumerationMutation(v21);
              }

              [a4 deleteObject:*(*(&v34 + 1) + 8 * j)];
            }

            v22 = [v21 countByEnumeratingWithState:&v34 objects:v51 count:16];
          }

          while (v22);
        }
      }

      else
      {
        v25 = v46;
        v32 = 0;
      }

      objc_autoreleasePoolPop(v18);
      if (!v21)
      {
        break;
      }

      if (++v16 == v15)
      {
        v15 = [v8 countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v15)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  else
  {
    v32 = 1;
  }

  v26 = v46;

  if ((v32 & 1) == 0)
  {
    if (v46)
    {
      if (a5)
      {
        *a5 = v46;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v49 = 1024;
        v50 = 635;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v28 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v48 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v49 = 1024;
        v50 = 635;
        _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v32 & 1;
}

+ (uint64_t)countRecordMetadataInStore:(uint64_t)a3 matchingPredicate:(uint64_t)a4 withManagedObjectContext:(id *)a5 error:
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
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

+ (id)batchUpdateMetadataMatchingEntityIdsAndPKs:(uint64_t)a3 withUpdates:(uint64_t)a4 inStore:(uint64_t)a5 withManagedObjectContext:(void *)a6 error:
{
  v34[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__4;
  v24 = __Block_byref_object_dispose__4;
  v25 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = [[NSBatchUpdateRequest alloc] initWithEntityName:+[NSCKRecordMetadata entityPath]];
  v34[0] = a4;
  -[NSPersistentStoreRequest setAffectedStores:](v12, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1]);
  [(NSBatchUpdateRequest *)v12 setPropertiesToUpdate:a3];
  [(NSBatchUpdateRequest *)v12 setResultType:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __116__NSCKRecordMetadata_batchUpdateMetadataMatchingEntityIdsAndPKs_withUpdates_inStore_withManagedObjectContext_error___block_invoke;
  v19[3] = &unk_1E6EC1810;
  v19[4] = v12;
  v19[5] = a5;
  v19[6] = a4;
  v19[7] = v11;
  v19[8] = &v20;
  v19[9] = &v26;
  [a2 enumerateKeysAndObjectsUsingBlock:v19];
  if ((v27[3] & 1) == 0)
  {

    v13 = v21[5];
    if (v13)
    {
      if (a6)
      {
        v11 = 0;
        *a6 = v13;
        goto LABEL_10;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v32 = 1024;
        v33 = 792;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v32 = 1024;
        v33 = 792;
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v11 = 0;
  }

LABEL_10:

  v21[5] = 0;
  v16 = v11;
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __116__NSCKRecordMetadata_batchUpdateMetadataMatchingEntityIdsAndPKs_withUpdates_inStore_withManagedObjectContext_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  [*(a1 + 32) setPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"entityId = %@ AND entityPK IN %@", a2, a3)}];
  v9 = [objc_msgSend(*(a1 + 40) executeRequest:*(a1 + 32) error:{*(*(a1 + 64) + 8) + 40), "result"}];
  if (!v9)
  {
    *a4 = 1;
LABEL_13:
    *(*(*(a1 + 72) + 8) + 24) = 0;
    v19 = *(*(*(a1 + 64) + 8) + 40);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
  -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v10]);
  [(NSFetchRequest *)v11 setPropertiesToFetch:&unk_1EF43D3F0];
  v26[0] = *(a1 + 48);
  -[NSFetchRequest setAffectedStores:](v11, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1]);
  [(NSFetchRequest *)v11 setReturnsObjectsAsFaults:0];
  v12 = [*(a1 + 40) executeFetchRequest:v11 error:*(*(a1 + 64) + 8) + 40];
  if (!v12)
  {
    *a4 = 1;
    goto LABEL_13;
  }

  v13 = v12;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(NSCKRecordMetadata *)*(*(&v21 + 1) + 8 * i) createObjectIDForLinkedRow];
        [*(a1 + 56) addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

LABEL_14:
  objc_autoreleasePoolPop(v8);
  v20 = *MEMORY[0x1E69E9840];
}

+ (void)enumerateRecordMetadataDictionariesMatchingObjectIDs:(void *)a3 withProperties:(void *)a4 inStore:(void *)a5 withManagedObjectContext:(uint64_t)a6 block:
{
  v70 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_self();
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = a2;
  v10 = [a2 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    do
    {
      v13 = 0;
      do
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * v13);
        v15 = MEMORY[0x1E696AD98];
        v16 = _sqlEntityForEntityDescription([a4 model], objc_msgSend(v14, "entity"));
        if (v16)
        {
          v17 = *(v16 + 184);
        }

        else
        {
          v17 = 0;
        }

        v18 = [v15 numberWithUnsignedInt:v17];
        v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v14, "_referenceData64")}];
        v20 = [v9 objectForKey:v18];
        if (!v20)
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v9 setObject:v20 forKey:v18];
        }

        [v20 addObject:v19];

        ++v13;
      }

      while (v11 != v13);
      v21 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      v11 = v21;
    }

    while (v21);
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v23 = [a3 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = 0;
  v26 = *v59;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v59 != v26)
      {
        objc_enumerationMutation(a3);
      }

      v28 = *(*(&v58 + 1) + 8 * i);
      [v22 addObject:v28];
      v25 |= [v28 isEqualToString:@"objectID"];
    }

    v24 = [a3 countByEnumeratingWithState:&v58 objects:v68 count:16];
  }

  while (v24);
  if ((v25 & 1) == 0)
  {
LABEL_22:
    [v22 addObject:@"objectID"];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = [v9 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (obja)
  {
    v42 = 0;
    v44 = *v55;
    do
    {
      for (j = 0; j != obja; j = j + 1)
      {
        if (*v55 != v44)
        {
          objc_enumerationMutation(v9);
        }

        v30 = *(*(&v54 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
        [(NSFetchRequest *)v32 setResultType:2];
        [(NSFetchRequest *)v32 setFetchBatchSize:1000];
        [(NSFetchRequest *)v32 setPropertiesToFetch:v22];
        v33 = [v9 objectForKey:v30];
        -[NSFetchRequest setPredicate:](v32, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ AND entityPK IN %@", v30, v33]);
        v53 = 0;
        v34 = [a5 executeFetchRequest:v32 error:&v53];
        if (v34)
        {
          v35 = v34;
          v53 = 0;
          v52 = 0;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v36 = [v34 countByEnumeratingWithState:&v48 objects:v66 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v49;
LABEL_31:
            v39 = 0;
            while (1)
            {
              if (*v49 != v38)
              {
                objc_enumerationMutation(v35);
              }

              (*(a6 + 16))(a6, *(*(&v48 + 1) + 8 * v39), 0, &v52);
              if (v52)
              {
                break;
              }

              if (v37 == ++v39)
              {
                v37 = [v35 countByEnumeratingWithState:&v48 objects:v66 count:16];
                if (v37)
                {
                  goto LABEL_31;
                }

                break;
              }
            }
          }
        }

        else if (!v42)
        {
          v42 = v53;
        }

        objc_autoreleasePoolPop(v31);
      }

      obja = [v9 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (obja);
  }

  else
  {
    v42 = 0;
  }

  v40 = v42;

  v41 = *MEMORY[0x1E69E9840];
}

- (id)createEncodedMoveReceiptData:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [[NSCKRecordMetadataReceiptArchive alloc] initWithReceiptsToEncode:[(NSCKRecordMetadata *)self moveReceipts]];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
  if (v7)
  {

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v10 = v14;

    objc_autoreleasePoolPop(v5);
    v11 = v14;
    if (v11)
    {
      if (a3)
      {
        *a3 = v11;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v17 = 1024;
        v18 = 902;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v13 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v17 = 1024;
        v18 = 902;
        _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)mergeMoveReceiptsWithData:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v7 = [(NSManagedObjectID *)[(NSManagedObject *)self objectID] persistentStore];
  v8 = [(NSManagedObject *)self managedObjectContext];
  if (!v7)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = self;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to merge move receipts before assigning a record metadata to a store: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v35 = self;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to merge move receipts before assigning a record metadata to a store: %@", buf, 0xCu);
    }
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v33];
  if (v12)
  {
    v27 = v7;
    v13 = v8;
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [(NSCKRecordMetadata *)self moveReceipts];
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v29 + 1) + 8 * i) createRecordIDForMovedRecord];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v17);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __54__NSCKRecordMetadata_mergeMoveReceiptsWithData_error___block_invoke;
    v28[3] = &unk_1E6EC1838;
    v28[4] = v14;
    v28[5] = v13;
    v8 = v13;
    v7 = v27;
    v28[6] = self;
    v28[7] = v27;
    [v12 enumerateArchivedRecordIDsUsingBlock:v28];

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v23 = v33;
    objc_autoreleasePoolPop(v11);
    v24 = v33;
    if (v24)
    {
      if (a4)
      {
        *a4 = v24;
      }
    }

    else
    {
      v25 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v36 = 1024;
        v37 = 956;
        _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v26 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v35 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v36 = 1024;
        v37 = 956;
        _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v33 = 0;
  v21 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

uint64_t __54__NSCKRecordMetadata_mergeMoveReceiptsWithData_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    v7 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMoveReceipt entityPath], *(a1 + 40));
    [(NSManagedObject *)v7 setRecordMetadata:*(a1 + 48)];
    [(NSManagedObject *)v7 setMovedAt:a3];
    [(NSManagedObject *)v7 setNeedsCloudDelete:0];
    -[NSManagedObject setZoneName:](v7, "setZoneName:", [objc_msgSend(a2 "zoneID")]);
    -[NSManagedObject setOwnerName:](v7, "setOwnerName:", [objc_msgSend(a2 "zoneID")]);
    -[NSManagedObject setRecordName:](v7, "setRecordName:", [a2 recordName]);
    [*(a1 + 40) assignObject:v7 toPersistentStore:*(a1 + 56)];
    v8 = *(a1 + 32);

    return [v8 addObject:a2];
  }

  return result;
}

+ (id)encodeRecord:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v16];
  if (!v7 || (v8 = [v7 compressedDataUsingAlgorithm:0 error:&v16]) == 0)
  {
    v10 = v16;
    objc_autoreleasePoolPop(v6);
    v11 = v16;
    if (v11)
    {
      if (a4)
      {
        v9 = 0;
        *a4 = v11;
        goto LABEL_12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v19 = 1024;
        v20 = 986;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v13 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v19 = 1024;
        v20 = 986;
        _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v9 = 0;
    goto LABEL_12;
  }

  v9 = v8;
  objc_autoreleasePoolPop(v6);
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)recordFromEncodedData:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [a3 decompressedDataUsingAlgorithm:0 error:&v18];
  if (!v7 || (v8 = v7, v9 = MEMORY[0x1E696ACD0], getCloudKitCKRecordClass[0](), (v10 = [v9 unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v18]) == 0))
  {
    v12 = v18;
    objc_autoreleasePoolPop(v6);
    v13 = v18;
    if (v13)
    {
      if (a4)
      {
        v11 = 0;
        *a4 = v13;
        goto LABEL_12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v21 = 1024;
        v22 = 1012;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordMetadata.m";
        v21 = 1024;
        v22 = 1012;
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

  v11 = v10;
  objc_autoreleasePoolPop(v6);
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)updateSystemFieldsWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    if (![(NSCKRecordMetadata *)self systemFieldsAsset])
    {
      [(NSCKRecordMetadata *)self setSystemFieldsAsset:+[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordMetadataSystemFieldsAsset entityPath], [(NSManagedObject *)self managedObjectContext])];
      [(NSCKRecordMetadata *)self bindRelatedObjectToStoreIfPossible:?];
    }

    v5 = [(NSCKRecordMetadata *)self systemFieldsAsset];
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

    [(NSCKRecordMetadata *)self destroySystemFields];
  }
}

- (void)bindRelatedObjectToStoreIfPossible:(void *)a1
{
  if (a1)
  {
    v4 = [objc_msgSend(a1 "objectID")];
    if (v4)
    {
      v5 = v4;
      [objc_msgSend(a1 "managedObjectContext")];
      v4 = v5;
    }
  }
}

- (void)destroySystemFields
{
  if ([(NSCKRecordMetadata *)self systemFieldsAsset])
  {
    v3 = [(NSManagedObject *)self managedObjectContext];
    v4 = [(NSCKRecordMetadata *)self systemFieldsAsset];

    [(NSManagedObjectContext *)v3 deleteObject:v4];
  }
}

- (void)updateEncodedRecordWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    if (![(NSCKRecordMetadata *)self encodedRecordAsset])
    {
      [(NSCKRecordMetadata *)self setEncodedRecordAsset:+[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordMetadataEncodedRecordAsset entityPath], [(NSManagedObject *)self managedObjectContext])];
      [(NSCKRecordMetadata *)self bindRelatedObjectToStoreIfPossible:?];
    }

    v5 = [(NSCKRecordMetadata *)self encodedRecordAsset];
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

    [(NSCKRecordMetadata *)self destroyEncodedRecord];
  }
}

- (void)destroyEncodedRecord
{
  if ([(NSCKRecordMetadata *)self encodedRecordAsset])
  {
    v3 = [(NSManagedObject *)self managedObjectContext];
    v4 = [(NSCKRecordMetadata *)self encodedRecordAsset];

    [(NSManagedObjectContext *)v3 deleteObject:v4];
  }
}

@end