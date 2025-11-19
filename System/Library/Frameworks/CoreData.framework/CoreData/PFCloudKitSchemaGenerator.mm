@interface PFCloudKitSchemaGenerator
+ (__CFString)representativeValueFor:(uint64_t)a1;
+ (void)newRepresentativeRecordForStaticFieldsInEntity:(uint64_t)a3 inZoneWithID:;
- (NSManagedObject)representativeObjectForEntity:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(void *)a5 cache:(int)a6 populate:(uint64_t)a7 error:;
- (PFCloudKitSchemaGenerator)initWithMirroringOptions:(id)a3 forStoreInMonitor:(id)a4;
- (uint64_t)createRepresentativeFileBackedFutureInContext:(uint64_t *)a1 error:(void *)a2;
- (uint64_t)newRepresentativeRecords:(uint64_t)a1;
- (uint64_t)populateRelationshipsOnObject:(uint64_t)a3 inStore:(uint64_t)a4 withCache:(uint64_t)a5 error:;
- (uint64_t)populateValuesOnObject:(uint64_t)a3 error:;
- (void)dealloc;
@end

@implementation PFCloudKitSchemaGenerator

- (PFCloudKitSchemaGenerator)initWithMirroringOptions:(id)a3 forStoreInMonitor:(id)a4
{
  v8.receiver = self;
  v8.super_class = PFCloudKitSchemaGenerator;
  v6 = [(PFCloudKitSchemaGenerator *)&v8 init];
  if (v6)
  {
    v6->_mirroringOptions = a3;
    v6->_storeMonitor = a4;
  }

  return v6;
}

- (void)dealloc
{
  self->_representativeFuture = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitSchemaGenerator;
  [(PFCloudKitSchemaGenerator *)&v3 dealloc];
}

- (uint64_t)newRepresentativeRecords:(uint64_t)a1
{
  v2 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__48;
    v16 = __Block_byref_object_dispose__48;
    v17 = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(v2 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PFCloudKitSchemaGenerator_newRepresentativeRecords___block_invoke;
    v11[3] = &unk_1E6EC5578;
    v11[6] = &v12;
    v11[7] = &v18;
    v11[4] = v2;
    v11[5] = v4;
    [(PFCloudKitStoreMonitor *)v5 performBlock:v11];
    if (*(v19 + 24) == 1)
    {
      v2 = [v4 copy];
LABEL_12:

      v13[5] = 0;
      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(&v18, 8);
      goto LABEL_13;
    }

    v6 = v13[5];
    if (v6)
    {
      if (a2)
      {
        v2 = 0;
        *a2 = v6;
        goto LABEL_12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSchemaGenerator.m";
        v24 = 1024;
        v25 = 124;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v23 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSchemaGenerator.m";
        v24 = 1024;
        v25 = 124;
        _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v2 = 0;
    goto LABEL_12;
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

void __54__PFCloudKitSchemaGenerator_newRepresentativeRecords___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 && (*(v2 + 21) & 1) != 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v3 = objc_alloc(MEMORY[0x1E696ABC0]);
    *(*(*(a1 + 48) + 8) + 40) = [v3 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:0];
  }

  else
  {
    v4 = [(PFCloudKitStoreMonitor *)v2 retainedMonitoredStore];
    v5 = [v4 configurationName];
    v6 = [(PFCloudKitStoreMonitor *)*(*(a1 + 32) + 16) newBackgroundContextForMonitoredCoordinator];
    [(NSManagedObjectContext *)v6 _setAllowAncillaryEntities:1];
    [(NSManagedObjectContext *)v6 setTransactionAuthor:@"NSCloudKitMirroringDelegate.schemaGenerator"];
    v7 = [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)v6 persistentStoreCoordinator] managedObjectModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PFCloudKitSchemaGenerator_newRepresentativeRecords___block_invoke_2;
    v8[3] = &unk_1E6EC5550;
    v8[4] = v5;
    v8[5] = v7;
    v8[6] = *(a1 + 32);
    v8[7] = v4;
    v8[8] = v6;
    v10 = *(a1 + 56);
    v9 = *(a1 + 40);
    [(NSManagedObjectContext *)v6 performBlockAndWait:v8];
  }
}

void __54__PFCloudKitSchemaGenerator_newRepresentativeRecords___block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [*(a1 + 32) length];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 entitiesForConfiguration:*(a1 + 32)];
  }

  else
  {
    v7 = [v6 entities];
  }

  v8 = v7;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (![(PFCloudKitSchemaGenerator *)*(a1 + 48) representativeObjectForEntity:*(a1 + 56) inStore:*(a1 + 64) withManagedObjectContext:v4 cache:1 populate:*(*(a1 + 80) + 8) + 40 error:?])
        {
          *(*(*(a1 + 88) + 8) + 24) = 0;
          v13 = *(*(*(a1 + 80) + 8) + 40);
          goto LABEL_14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    v14 = objc_alloc_init(PFCloudKitMetadataCache);
    v15 = [[PFCloudKitSerializer alloc] initWithMirroringOptions:*(*(a1 + 48) + 8) metadataCache:v14 recordNamePrefix:@"CD_FAKE_"];
    v16 = [objc_msgSend(*(a1 + 64) "insertedObjects")];
    v32 = v3;
    v33 = v2;
    if ([*(a1 + 64) obtainPermanentIDsForObjects:v16 error:*(*(a1 + 80) + 8) + 40])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v34 + 1) + 8 * j);
            v22 = objc_autoreleasePoolPush();
            if (v15 && (v23 = [(PFCloudKitSerializer *)v15 newCKRecordsFromObject:v21 fullyMaterializeRecords:1 includeRelationships:1 error:(*(*(a1 + 80) + 8) + 40)]) != 0)
            {
              v24 = v23;
              [*(a1 + 72) addObjectsFromArray:v23];
            }

            else
            {
              v25 = *(*(*(a1 + 80) + 8) + 40);
              v24 = 0;
            }

            objc_autoreleasePoolPop(v22);
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v18);
      }
    }

    else
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
      v26 = *(*(*(a1 + 80) + 8) + 40);
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v30 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412290;
        v43 = v30;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to acquire permanent objectIDs during schema generation: %@\n", buf, 0xCu);
      }

      v28 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v31 = *(*(*(a1 + 80) + 8) + 40);
        *buf = 138412290;
        v43 = v31;
        _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Failed to acquire permanent objectIDs during schema generation: %@", buf, 0xCu);
      }
    }

    v3 = v32;
    v2 = v33;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (NSManagedObject)representativeObjectForEntity:(uint64_t)a3 inStore:(void *)a4 withManagedObjectContext:(void *)a5 cache:(int)a6 populate:(uint64_t)a7 error:
{
  if (!a1)
  {
    return 0;
  }

  v14 = [a5 objectForKey:{objc_msgSend(a2, "name")}];
  if (v14)
  {
    if (!a6)
    {
      return v14;
    }
  }

  else
  {
    v14 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", [a2 name], a4);
    [a4 assignObject:v14 toPersistentStore:a3];
    [a5 setObject:v14 forKey:{objc_msgSend(a2, "name")}];
    if (!a6)
    {
      return v14;
    }
  }

  if (![(PFCloudKitSchemaGenerator *)a1 populateValuesOnObject:v14 error:a7])
  {
    return 0;
  }

  if (![(PFCloudKitSchemaGenerator *)a1 populateRelationshipsOnObject:v14 inStore:a3 withCache:a5 error:a7])
  {
    return 0;
  }

  return v14;
}

- (uint64_t)populateValuesOnObject:(uint64_t)a3 error:
{
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v6 = [objc_msgSend(a2 "entity")];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PFCloudKitSchemaGenerator_populateValuesOnObject_error___block_invoke;
    v9[3] = &unk_1E6EC55A0;
    v9[4] = a2;
    v9[5] = a1;
    v9[6] = &v10;
    v9[7] = a3;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (uint64_t)populateRelationshipsOnObject:(uint64_t)a3 inStore:(uint64_t)a4 withCache:(uint64_t)a5 error:
{
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v10 = [a2 entity];
    v11 = [a2 managedObjectContext];
    v12 = [v10 relationshipsByName];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__PFCloudKitSchemaGenerator_populateRelationshipsOnObject_inStore_withCache_error___block_invoke;
    v15[3] = &unk_1E6EC55C8;
    v15[4] = a2;
    v15[5] = a1;
    v15[6] = a3;
    v15[7] = v11;
    v15[8] = a4;
    v15[9] = &v16;
    v15[10] = a5;
    [v12 enumerateKeysAndObjectsUsingBlock:v15];
    v13 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t __58__PFCloudKitSchemaGenerator_populateValuesOnObject_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [PFCloudKitSerializer isPrivateAttribute:a3];
  if ((result & 1) == 0)
  {
    result = [a3 attributeType];
    if (result)
    {
      result = [a3 attributeType];
      if (result != 1800)
      {
        result = [a3 isTransient];
        if ((result & 1) == 0)
        {
          result = [*(a1 + 32) valueForKey:a2];
          if (!result)
          {
            if ([a3 isFileBackedFuture])
            {
              v9 = *(a1 + 40);
              [*(a1 + 32) managedObjectContext];
              v10 = [PFCloudKitSchemaGenerator createRepresentativeFileBackedFutureInContext:v9 error:*(a1 + 56)];
              v11 = v10;
              if (v10)
              {
                v14 = v10;
                v10 = [*(a1 + 32) setValue:v10 forKey:a2];
                v11 = v14;
              }

              else
              {
                *(*(*(a1 + 48) + 8) + 24) = 0;
                *a4 = 1;
              }

              return MEMORY[0x1EEE66BB8](v10, v11);
            }

            else
            {
              v12 = *(a1 + 32);
              v13 = [PFCloudKitSchemaGenerator representativeValueFor:a3];

              return [v12 setValue:v13 forKey:a2];
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)createRepresentativeFileBackedFutureInContext:(uint64_t *)a1 error:(void *)a2
{
  v2 = a1;
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v18 = 0;
    v3 = a1[3];
    if (v3)
    {
LABEL_3:
      v2 = v3;
LABEL_4:

      goto LABEL_5;
    }

    v7 = a1[2];
    if (v7 && (*(v7 + 21) & 1) != 0)
    {
      v8 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = [v8 initWithDomain:*MEMORY[0x1E696A250] code:134407 userInfo:0];
      v18 = v9;
    }

    else
    {
      v10 = [(PFCloudKitStoreMonitor *)v7 retainedMonitoredStore];
      v11 = [PFCloudKitSerializer generateCKAssetFileURLForObjectInStore:v10];
      v12 = [@"Some sample data generated by PFCloudKitSchemaGenerator for a representative file backed future" dataUsingEncoding:1];
      if ([v12 writeToURL:v11 options:0 error:&v18])
      {
        v13 = [_NSDataFileBackedFuture alloc];
        v2[3] = -[_NSDataFileBackedFuture initWithURL:UUID:size:](v13, v11, [MEMORY[0x1E696AFB0] UUID], objc_msgSend(v12, "length"));

        v3 = v2[3];
        goto LABEL_3;
      }

      v14 = v18;

      v9 = v18;
    }

    v15 = v9;
    if (v15)
    {
      if (a2)
      {
        v2 = 0;
        *a2 = v15;
        goto LABEL_4;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSchemaGenerator.m";
        v21 = 1024;
        v22 = 303;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitSchemaGenerator.m";
        v21 = 1024;
        v22 = 303;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v2 = 0;
    goto LABEL_4;
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (__CFString)representativeValueFor:(uint64_t)a1
{
  objc_opt_self();
  v3 = [a2 defaultValue];
  v4 = [a2 attributeType];
  if (v3)
  {
    return v3;
  }

  if (v4 <= 699)
  {
    if (v4 > 399)
    {
      if (v4 != 400 && v4 != 500 && v4 != 600)
      {
        goto LABEL_28;
      }

      return &unk_1EF43D8E8;
    }

    else
    {
      if (v4 != 100 && v4 != 200 && v4 != 300)
      {
        goto LABEL_28;
      }

      return &unk_1EF435EF0;
    }
  }

  if (v4 <= 999)
  {
    if (v4 == 700)
    {
      return @"An example core data string";
    }

    if (v4 == 800)
    {
      return MEMORY[0x1E695E118];
    }

    if (v4 != 900)
    {
      goto LABEL_28;
    }

    v7 = MEMORY[0x1E695DF00];

    return [v7 date];
  }

  else
  {
    if (v4 <= 1199)
    {
      if (v4 != 1000)
      {
        if (v4 == 1100)
        {
          v6 = MEMORY[0x1E696AFB0];

          return [v6 UUID];
        }

        goto LABEL_28;
      }

      if ([a2 isFileBackedFuture])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Invalid invocation of this method, it cannot generate a useful value for a file backed future.\n", v17, 2u);
        }

        v9 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          return 0;
        }

        *v16 = 0;
        v10 = "CoreData: Invalid invocation of this method, it cannot generate a useful value for a file backed future.";
        v11 = v16;
        goto LABEL_46;
      }

      goto LABEL_37;
    }

    if (v4 != 1200)
    {
      if (v4 == 1800)
      {
LABEL_37:

        return [@"Some example data" dataUsingEncoding:4];
      }

LABEL_28:
      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported attribute type\n", buf, 2u);
      }

      v9 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v14 = 0;
      v10 = "CoreData: Unsupported attribute type";
      v11 = &v14;
LABEL_46:
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, v10, v11, 2u);
      return 0;
    }

    v13 = MEMORY[0x1E695DFF8];

    return [v13 URLWithString:@"http://www.apple.com"];
  }
}

uint64_t __83__PFCloudKitSchemaGenerator_populateRelationshipsOnObject_inStore_withCache_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (![a3 isToMany])
  {
    v13 = [objc_msgSend(a3 "inverseRelationship")];
    result = [*(a1 + 32) valueForKey:a2];
    if (v13)
    {
      if (result)
      {
        return result;
      }

      result = -[PFCloudKitSchemaGenerator representativeObjectForEntity:inStore:withManagedObjectContext:cache:populate:error:](*(a1 + 40), [a3 destinationEntity], *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, *(a1 + 80));
      if (result)
      {
        v11 = result;
        v12 = *(a1 + 32);
        goto LABEL_10;
      }
    }

    else
    {
      if (result)
      {
        return result;
      }

      result = -[PFCloudKitSchemaGenerator representativeObjectForEntity:inStore:withManagedObjectContext:cache:populate:error:](*(a1 + 40), [a3 destinationEntity], *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, *(a1 + 80));
      if (!result)
      {
        return result;
      }

      v14 = result;
      [*(a1 + 32) setValue:result forKey:a2];
      result = [(PFCloudKitSchemaGenerator *)*(a1 + 40) populateValuesOnObject:v14 error:*(a1 + 80)];
      if (result)
      {
        result = [(PFCloudKitSchemaGenerator *)*(a1 + 40) populateRelationshipsOnObject:v14 inStore:*(a1 + 48) withCache:*(a1 + 64) error:*(a1 + 80)];
        if (result)
        {
          return result;
        }
      }
    }

LABEL_17:
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
    return result;
  }

  v8 = [*(a1 + 32) valueForKey:a2];
  if (v8)
  {
    result = [v8 count];
    if (result)
    {
      return result;
    }
  }

  result = -[PFCloudKitSchemaGenerator representativeObjectForEntity:inStore:withManagedObjectContext:cache:populate:error:](*(a1 + 40), [a3 destinationEntity], *(a1 + 48), *(a1 + 56), *(a1 + 64), 0, *(a1 + 80));
  if (!result)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E695DFA8] setWithObject:result];
  v12 = v10;
LABEL_10:

  return [v12 setValue:v11 forKey:a2];
}

+ (void)newRepresentativeRecordForStaticFieldsInEntity:(uint64_t)a3 inZoneWithID:
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = objc_alloc(getCloudKitCKRecordClass[0]());
  v6 = [v5 initWithRecordType:+[PFCloudKitSerializer recordTypeForEntity:](PFCloudKitSerializer zoneID:{a2), a3}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [objc_msgSend(a2 attributesByName];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 attributeType];
        if (v13 && v13 != 2000 && (+[PFCloudKitSerializer isVariableLengthAttributeType:](PFCloudKitSerializer, [v12 attributeType]) & 1) == 0)
        {
          v14 = [PFCloudKitSchemaGenerator representativeValueFor:v12];
          if ([v12 attributeType] == 1100)
          {
            v15 = [(__CFString *)v14 UUIDString];
            goto LABEL_13;
          }

          if ([v12 attributeType] == 1200)
          {
            v15 = [(__CFString *)v14 absoluteString];
LABEL_13:
            v14 = v15;
          }

          [v6 setObject:v14 forKey:{+[PFCloudKitSerializer applyCDPrefixToName:](PFCloudKitSerializer, objc_msgSend(v12, "name"))}];
          continue;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

@end