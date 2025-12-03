@interface PFCloudKitStoreComparer
+ (id)trimExcessiveValuesForLog:(id)log;
- (BOOL)compareAttributesOnObject:(id)object toObject:(id)toObject error:(id *)error;
- (BOOL)compareCloudKitMetadataOfStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareContentOfStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareDatabaseScopeAndIdentityInStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareObjectsInStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareRelationshipsOfRecordID:(id)d withStoreObject:(id)object andOtherObject:(id)otherObject error:(id *)error;
- (BOOL)ensureContentsMatch:(id *)match;
- (BOOL)ensureContentsOfRecordStorageMatchForStorage:(id)storage andOtherStore:(id)store error:(id *)error;
- (BOOL)ensureContentsOfStore:(id)store matchContentsOfStore:(id)ofStore error:(id *)error;
- (BOOL)ensureMirroredRelationshipsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error;
- (BOOL)ensureMoveReceiptsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error;
- (BOOL)ensureRecordMetadataMatchesForRecordID:(id)d inStore:(id)store andOtherStore:(id)otherStore error:(id *)error;
- (BOOL)ensureStoresAgreeOnCloudKitTables:(id)tables error:(id *)error;
- (BOOL)isValue:(id)value equalToValue:(id)toValue forAttribute:(id)attribute;
- (BOOL)validateValue:(id)value againstOtherValue:(id)otherValue forIgnoredAttribute:(id)attribute;
- (PFCloudKitStoreComparer)initWithStore:(id)store otherStore:(id)otherStore;
- (id)getObjectMatchingRecordID:(id)d fromStore:(id)store withManagedObjectContext:(id)context;
- (id)getRecordIDsForRelationship:(id)relationship onObject:(id)object;
- (void)dealloc;
@end

@implementation PFCloudKitStoreComparer

- (PFCloudKitStoreComparer)initWithStore:(id)store otherStore:(id)otherStore
{
  v8.receiver = self;
  v8.super_class = PFCloudKitStoreComparer;
  v6 = [(PFCloudKitStoreComparer *)&v8 init];
  if (v6)
  {
    v6->_cache = [[PFCloudKitStoreComparisonCache alloc] initWithStore:store otherStore:otherStore];
    v6->_archivingUtilities = objc_alloc_init(PFCloudKitArchivingUtilities);
    v6->_onlyCompareSharedZones = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitStoreComparer;
  [(PFCloudKitStoreComparer *)&v3 dealloc];
}

- (BOOL)ensureContentsMatch:(id *)match
{
  store = [(PFCloudKitStoreComparisonCache *)self->_cache store];
  otherStore = [(PFCloudKitStoreComparisonCache *)self->_cache otherStore];

  return [(PFCloudKitStoreComparer *)self ensureContentsOfStore:store matchContentsOfStore:otherStore error:match];
}

- (BOOL)ensureContentsOfStore:(id)store matchContentsOfStore:(id)ofStore error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  v26 = 0;
  if ([objc_msgSend(store "URL")])
  {
    goto LABEL_2;
  }

  if ([store isCloudKitEnabled])
  {
    v10 = 1;
  }

  else
  {
    v10 = [objc_msgSend(objc_msgSend(store "options")];
  }

  if ([ofStore isCloudKitEnabled])
  {
    v11 = 1;
  }

  else
  {
    v11 = [objc_msgSend(objc_msgSend(ofStore "options")];
  }

  if (v10 == v11)
  {
    v35[0] = store;
    v35[1] = ofStore;
    if (!-[PFCloudKitStoreComparer ensureStoresAgreeOnCloudKitTables:error:](self, "ensureStoresAgreeOnCloudKitTables:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2], &v26) || !-[PFCloudKitStoreComparer compareContentOfStore:toStore:error:](self, "compareContentOfStore:toStore:error:", store, ofStore, &v26))
    {
LABEL_15:
      v14 = v26;
      if (!v26)
      {
        goto LABEL_16;
      }

LABEL_22:
      if (error)
      {
        LOBYTE(v9) = 0;
        *error = v14;
        goto LABEL_25;
      }

LABEL_24:
      LOBYTE(v9) = 0;
      goto LABEL_25;
    }

    mirroringDelegate = [store mirroringDelegate];
    mirroringDelegate2 = [ofStore mirroringDelegate];
    if (mirroringDelegate && mirroringDelegate2)
    {
      if (![(PFCloudKitStoreComparer *)self compareCloudKitMetadataOfStore:store toStore:ofStore error:&v26])
      {
        goto LABEL_15;
      }

LABEL_2:
      LOBYTE(v9) = 1;
      goto LABEL_25;
    }

    if (!(mirroringDelegate | mirroringDelegate2))
    {
      goto LABEL_2;
    }

    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A250];
    v33 = *MEMORY[0x1E696A588];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stores don't match because they do not have the same mirroring configuration:\n%@ - %@\n%@ - %@", store, mirroringDelegate, ofStore, mirroringDelegate2];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v20 = v23;
    v21 = v24;
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v31 = *MEMORY[0x1E696A588];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stores don't match because they do not have the same mirroring options:\n%@ - %@\n%@ - %@", store, objc_msgSend(store, "options"), ofStore, objc_msgSend(ofStore, "options")];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v20 = v17;
    v21 = v18;
  }

  v14 = [v20 errorWithDomain:v21 code:134060 userInfo:v19];
  v26 = v14;
  if (v14)
  {
    goto LABEL_22;
  }

LABEL_16:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v29 = 1024;
    v30 = 123;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v16 = _PFLogGetLogStream(17);
  v9 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (v9)
  {
    *buf = 136315394;
    v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v29 = 1024;
    v30 = 123;
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_24;
  }

LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)getObjectMatchingRecordID:(id)d fromStore:(id)store withManagedObjectContext:(id)context
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__47;
  v12 = __Block_byref_object_dispose__47;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PFCloudKitStoreComparer_getObjectMatchingRecordID_fromStore_withManagedObjectContext___block_invoke;
  v7[3] = &unk_1E6EC2638;
  v7[4] = self;
  v7[5] = d;
  v7[7] = context;
  v7[8] = &v8;
  v7[6] = store;
  [context performBlockAndWait:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __88__PFCloudKitStoreComparer_getObjectMatchingRecordID_fromStore_withManagedObjectContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectIDForRecordID:*(a1 + 40) inStore:*(a1 + 48)];
  if (v2)
  {
    *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 56) objectWithID:v2];
    if ([objc_msgSend(objc_msgSend(*(*(*(a1 + 64) + 8) + 40) "entity")])
    {
      v3 = [*(*(*(a1 + 64) + 8) + 40) valueForKey:@"ckRecordID"];
      if ([v3 length])
      {
        v4 = [*(*(a1 + 32) + 16) objectIDForIdentifier:v3 inStore:*(a1 + 48)];
        if ([objc_msgSend(*(a1 + 40) "recordName")])
        {
          if (([objc_msgSend(*(*(*(a1 + 64) + 8) + 40) "objectID")] & 1) == 0)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v17 = [*(*(*(a1 + 64) + 8) + 40) objectID];
              v18 = 138412546;
              v19 = v17;
              v20 = 2112;
              v21 = v4;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Record name appears to point to two different objects: %@ / %@\n", &v18, 0x16u);
            }

            v6 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
            {
              v7 = [*(*(*(a1 + 64) + 8) + 40) objectID];
              v18 = 138412546;
              v19 = v7;
              v20 = 2112;
              v21 = v4;
              v8 = "CoreData: Record name appears to point to two different objects: %@ / %@";
              v9 = v6;
LABEL_15:
              _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, v8, &v18, 0x16u);
            }
          }
        }

        else
        {
          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v13 = *(a1 + 40);
            v14 = *(*(*(a1 + 64) + 8) + 40);
            v18 = 138412546;
            v19 = v13;
            v20 = 2112;
            v21 = v14;
            _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: fault: Record name does not match recordID, even though our metadata linked this row with '%@': %@\n", &v18, 0x16u);
          }

          v11 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v15 = *(a1 + 40);
            v16 = *(*(*(a1 + 64) + 8) + 40);
            v18 = 138412546;
            v19 = v15;
            v20 = 2112;
            v21 = v16;
            v8 = "CoreData: Record name does not match recordID, even though our metadata linked this row with '%@': %@";
            v9 = v11;
            goto LABEL_15;
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)compareContentOfStore:(id)store toStore:(id)toStore error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  if ([objc_msgSend(store "URL")])
  {
    goto LABEL_2;
  }

  if (![(PFCloudKitStoreComparisonCache *)self->_cache populate:&v40]|| ![(PFCloudKitStoreComparer *)self compareDatabaseScopeAndIdentityInStore:store toStore:toStore error:&v40]|| ![(PFCloudKitStoreComparer *)self compareObjectsInStore:store toStore:toStore error:&v40])
  {
    goto LABEL_26;
  }

  if (![(PFCloudKitStoreComparisonCache *)self->_cache checkCloudKitMetadata])
  {
    goto LABEL_2;
  }

  cache = self->_cache;
  if (!self->_onlyCompareSharedZones)
  {
    v19 = [(PFCloudKitStoreComparisonCache *)cache mtmKeysForStore:store];
    v20 = [(PFCloudKitStoreComparisonCache *)self->_cache mtmKeysForStore:toStore];
    if ([v19 isEqualToSet:v20])
    {
      goto LABEL_2;
    }

    v21 = [v19 mutableCopy];
    [v21 minusSet:v20];
    v22 = [v20 mutableCopy];
    [v22 minusSet:v19];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mirrored relationships don't match for stores:\nStore has these extra keys: %@\n%@\nOther Store has these extra keys: %@\n%@", objc_msgSend(store, "URL"), objc_msgSend(objc_msgSend(v21, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_), objc_msgSend(toStore, "URL"), objc_msgSend(objc_msgSend(v22, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_)];
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A250];
    v48 = *MEMORY[0x1E696A588];
    v49[0] = v23;
    v26 = MEMORY[0x1E695DF20];
    v27 = v49;
    v28 = &v48;
LABEL_25:
    v40 = [v24 errorWithDomain:v25 code:134060 userInfo:{objc_msgSend(v26, "dictionaryWithObjects:forKeys:count:", v27, v28, 1)}];

LABEL_26:
    if (v40)
    {
      if (error)
      {
        LOBYTE(v9) = 0;
        *error = v40;
        goto LABEL_34;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v43 = 1024;
        v44 = 228;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v33 = _PFLogGetLogStream(17);
      v9 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);
      if (!v9)
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v42 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
      v43 = 1024;
      v44 = 228;
      _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    LOBYTE(v9) = 0;
    goto LABEL_34;
  }

  v11 = [(PFCloudKitStoreComparisonCache *)cache sharedZoneIDsForStore:store];
  if (![v11 isEqualToSet:{-[PFCloudKitStoreComparisonCache sharedZoneIDsForStore:](self->_cache, "sharedZoneIDsForStore:", toStore)}])
  {
    v29 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle skewed shares yet.\n", buf, 2u);
    }

    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle skewed shares yet.", buf, 2u);
    }

    goto LABEL_2;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (!v12)
  {
LABEL_2:
    LOBYTE(v9) = 1;
    goto LABEL_34;
  }

  v13 = v12;
  v14 = *v37;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v36 + 1) + 8 * i);
      v17 = [(PFCloudKitStoreComparisonCache *)self->_cache mtmKeysForRecordZone:v16 inStore:store];
      v18 = [(PFCloudKitStoreComparisonCache *)self->_cache mtmKeysForRecordZone:v16 inStore:toStore];
      if (([v17 isEqualToSet:v18] & 1) == 0)
      {
        v21 = [v17 mutableCopy];
        [v21 minusSet:v18];
        v22 = [v18 mutableCopy];
        [v22 minusSet:v17];
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mirrored relationships don't match for stores:\nStore has these extra keys: %@\n%@\nOther Store has these extra keys: %@\n%@", objc_msgSend(store, "URL"), objc_msgSend(objc_msgSend(v21, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_), objc_msgSend(toStore, "URL"), objc_msgSend(objc_msgSend(v22, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_)];
        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A250];
        v45 = *MEMORY[0x1E696A588];
        v46 = v31;
        v26 = MEMORY[0x1E695DF20];
        v27 = &v46;
        v28 = &v45;
        goto LABEL_25;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v36 objects:v47 count:16];
    LOBYTE(v9) = 1;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_34:
  v34 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)compareDatabaseScopeAndIdentityInStore:(id)store toStore:(id)toStore error:(id *)error
{
  v36[3] = *MEMORY[0x1E69E9840];
  v9 = -[PFCloudKitStoreComparisonCache databaseScopeForStoreWithIdentifier:](self->_cache, "databaseScopeForStoreWithIdentifier:", [store identifier]);
  v10 = -[PFCloudKitStoreComparisonCache databaseScopeForStoreWithIdentifier:](self->_cache, "databaseScopeForStoreWithIdentifier:", [toStore identifier]);
  if (self->_onlyCompareSharedZones || (v11 = v10, v9 == v10))
  {
    LOBYTE(v19) = 1;
    if (self->_onlyCompareSharedZones || v9 == 1)
    {
      goto LABEL_17;
    }

    v20 = -[PFCloudKitStoreComparisonCache identityRecordNameForStoreWithIdentifier:](self->_cache, "identityRecordNameForStoreWithIdentifier:", [store identifier]);
    v21 = -[PFCloudKitStoreComparisonCache identityRecordNameForStoreWithIdentifier:](self->_cache, "identityRecordNameForStoreWithIdentifier:", [toStore identifier]);
    if (v20 == v21 || (v22 = v21, ([(__CFString *)v20 isEqualToString:v21]& 1) != 0))
    {
      LOBYTE(v19) = 1;
      goto LABEL_17;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v33[0] = *MEMORY[0x1E696A588];
    v34[0] = @"Store identity record names do not match.";
    v33[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-identity", objc_msgSend(store, "identifier")];
    if (v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = @"nil";
    }

    v34[1] = v26;
    v33[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-identity", objc_msgSend(toStore, "identifier")];
    if (v22)
    {
      v27 = v22;
    }

    else
    {
      v27 = @"nil";
    }

    v34[2] = v27;
    v15 = MEMORY[0x1E695DF20];
    v16 = v34;
    v17 = v33;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v35[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-scope", objc_msgSend(store, "identifier")];
    v36[0] = (softLinkCKDatabaseScopeString[0])(v9);
    v35[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-scope", objc_msgSend(toStore, "identifier")];
    v14 = (softLinkCKDatabaseScopeString[0])(v11);
    v35[2] = *MEMORY[0x1E696A588];
    v36[1] = v14;
    v36[2] = @"CloudKit database scope doesn't match.";
    v15 = MEMORY[0x1E695DF20];
    v16 = v36;
    v17 = v35;
  }

  v18 = [v12 errorWithDomain:v13 code:134060 userInfo:{objc_msgSend(v15, "dictionaryWithObjects:forKeys:count:", v16, v17, 3)}];
  if (v18)
  {
    if (error)
    {
      LOBYTE(v19) = 0;
      *error = v18;
      goto LABEL_17;
    }

LABEL_16:
    LOBYTE(v19) = 0;
    goto LABEL_17;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v31 = 1024;
    v32 = 273;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v24 = _PFLogGetLogStream(17);
  v19 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v19)
  {
    *buf = 136315394;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v31 = 1024;
    v32 = 273;
    _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_16;
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)compareObjectsInStore:(id)store toStore:(id)toStore error:(id *)error
{
  v84[3] = *MEMORY[0x1E69E9840];
  v71 = 0;
  v9 = [(PFCloudKitStoreComparisonCache *)self->_cache identifiersForStore:?];
  v10 = [(PFCloudKitStoreComparisonCache *)self->_cache identifiersForStore:toStore];
  v11 = [(PFCloudKitStoreComparisonCache *)self->_cache recordIdsForStore:store];
  v12 = [(PFCloudKitStoreComparisonCache *)self->_cache recordIdsForStore:toStore];
  v66 = [(PFCloudKitStoreComparisonCache *)self->_cache sharedZoneIDsForStore:store];
  toStoreCopy = toStore;
  v62 = v12;
  v63 = [(PFCloudKitStoreComparisonCache *)self->_cache sharedZoneIDsForStore:toStore];
  v65 = v11;
  if (!self->_onlyCompareSharedZones)
  {
    v30 = [v9 count];
    if (v30 == [v10 count])
    {
      if ([v11 isEqualToSet:v12])
      {
        goto LABEL_2;
      }

      v31 = [v11 mutableCopy];
      [v31 minusSet:v12];
      v19 = [v12 mutableCopy];
      [v19 minusSet:v11];
      v59 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A250];
      v83[0] = *MEMORY[0x1E696A588];
      v32 = MEMORY[0x1E696AEC0];
      identifier = [store identifier];
      v34 = [v65 count];
      identifier2 = [toStoreCopy identifier];
      v52 = [v12 count];
      v36 = v32;
      v11 = v65;
      v84[0] = [v36 stringWithFormat:@"Stores do not contain the same record names. (%@:%lu / %@:%lu)", identifier, v34, identifier2, v52];
      v83[1] = [store identifier];
      v84[1] = v31;
      v83[2] = [toStoreCopy identifier];
      v84[2] = v19;
      v71 = [v59 errorWithDomain:v57 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v84, v83, 3)}];
    }

    else
    {
      v56 = [v9 mutableCopy];
      [v56 minusSet:v10];
      v55 = [v10 mutableCopy];
      [v55 minusSet:v9];
      v54 = [v11 mutableCopy];
      [v54 minusSet:v12];
      v19 = [v12 mutableCopy];
      [v19 minusSet:v11];
      v60 = MEMORY[0x1E696ABC0];
      v58 = *MEMORY[0x1E696A250];
      v81[0] = *MEMORY[0x1E696A588];
      v37 = MEMORY[0x1E696AEC0];
      identifier3 = [store identifier];
      v39 = [v9 count];
      identifier4 = [toStoreCopy identifier];
      v53 = [v10 count];
      v41 = v37;
      v11 = v65;
      v82[0] = [v41 stringWithFormat:@"Stores do not contain the same identifiers. (%@:%lu / %@:%lu)", identifier3, v39, identifier4, v53];
      v81[1] = [store identifier];
      v82[1] = v56;
      v81[2] = [toStoreCopy identifier];
      v82[2] = v55;
      v81[3] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-RecordIDs", objc_msgSend(store, "identifier")];
      v82[3] = v54;
      v81[4] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-RecordIDs", objc_msgSend(toStoreCopy, "identifier")];
      v82[4] = v19;
      v71 = [v60 errorWithDomain:v58 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v82, v81, 5)}];
    }

LABEL_38:

    v29 = 0;
    goto LABEL_39;
  }

LABEL_2:
  if ([v11 count] && (v69 = 0u, v70 = 0u, v67 = 0u, v68 = 0u, (v13 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v67, v80, 16)) != 0))
  {
    v14 = v13;
    v15 = *v68;
    errorCopy = error;
    do
    {
      v16 = 0;
      do
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v67 + 1) + 8 * v16);
        if (!self->_onlyCompareSharedZones || [v66 containsObject:{objc_msgSend(*(*(&v67 + 1) + 8 * v16), "zoneID")}] && objc_msgSend(v63, "containsObject:", objc_msgSend(v17, "zoneID")))
        {
          v18 = [(PFCloudKitStoreComparer *)self getObjectMatchingRecordID:v17 fromStore:store withManagedObjectContext:[(PFCloudKitStoreComparisonCache *)self->_cache storeMoc]];
          v19 = [objc_msgSend(objc_msgSend(v18 "entity")];
          if (!v18)
          {
            v42 = MEMORY[0x1E696ABC0];
            v43 = *MEMORY[0x1E696A250];
            v72 = *MEMORY[0x1E696A588];
            store = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve object with recordID '%@' from store %@", v17, store];
            v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&store forKeys:&v72 count:1];
            v45 = v43;
            v11 = v65;
            v71 = [v42 errorWithDomain:v45 code:134060 userInfo:v44];
            error = errorCopy;
            goto LABEL_38;
          }

          v20 = [(PFCloudKitStoreComparer *)self getObjectMatchingRecordID:v17 fromStore:toStoreCopy withManagedObjectContext:[(PFCloudKitStoreComparisonCache *)self->_cache otherStoreMoc]];
          if (!v20)
          {
            v46 = MEMORY[0x1E696ABC0];
            v47 = *MEMORY[0x1E696A250];
            v74 = *MEMORY[0x1E696A588];
            toStoreCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to retrieve object with recordID '%@' from store %@", v17, toStoreCopy];
            v71 = [v46 errorWithDomain:v47 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &toStoreCopy, &v74, 1)}];
LABEL_37:

            error = errorCopy;
            v11 = v65;
            goto LABEL_38;
          }

          entity = [v18 entity];
          if (entity)
          {
            v22 = *(entity + 160);
          }

          else
          {
            v22 = 0;
          }

          entity2 = [v20 entity];
          if (entity2)
          {
            v24 = *(entity2 + 160);
          }

          else
          {
            v24 = 0;
          }

          if (v22 != v24)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v77 = v18;
              v78 = 2112;
              v79 = v20;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Objects appear to be from different entities:\nStore: %@\nOther Store: %@\n", buf, 0x16u);
            }

            v26 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v77 = v18;
              v78 = 2112;
              v79 = v20;
              _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Objects appear to be from different entities:\nStore: %@\nOther Store: %@", buf, 0x16u);
            }
          }

          if (![(PFCloudKitStoreComparer *)self compareAttributesOnObject:v18 toObject:v20 error:&v71])
          {
            goto LABEL_37;
          }

          v27 = [(PFCloudKitStoreComparer *)self compareRelationshipsOfRecordID:v17 withStoreObject:v18 andOtherObject:v20 error:&v71];

          v11 = v65;
          if (!v27)
          {
            v29 = 0;
            error = errorCopy;
            goto LABEL_39;
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v28 = [v11 countByEnumeratingWithState:&v67 objects:v80 count:16];
      v14 = v28;
      v29 = 1;
      error = errorCopy;
    }

    while (v28);
  }

  else
  {
    v29 = 1;
  }

LABEL_39:

  if (!v29)
  {
    if (v71)
    {
      if (error)
      {
        *error = v71;
      }
    }

    else
    {
      v48 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v77 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v78 = 1024;
        LODWORD(v79) = 403;
        _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v49 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v77 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v78 = 1024;
        LODWORD(v79) = 403;
        _os_log_fault_impl(&dword_18565F000, v49, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v50 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)compareAttributesOnObject:(id)object toObject:(id)toObject error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy__47;
  v55 = __Block_byref_object_dispose__47;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3052000000;
  v48 = __Block_byref_object_copy__47;
  v49 = __Block_byref_object_dispose__47;
  v50 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [objc_msgSend(objc_msgSend(object "entity")];
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v65 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v38 = *v42;
  do
  {
    v9 = 0;
    do
    {
      if (*v42 != v38)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v41 + 1) + 8 * v9);
      v11 = [objc_msgSend(objc_msgSend(v10 "userInfo")];
      managedObjectContext = [object managedObjectContext];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke;
      v40[3] = &unk_1E6EC23F0;
      v40[5] = v10;
      v40[6] = &v51;
      v40[4] = object;
      [managedObjectContext performBlockAndWait:v40];
      managedObjectContext2 = [toObject managedObjectContext];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke_2;
      v39[3] = &unk_1E6EC23F0;
      v39[5] = v10;
      v39[6] = &v45;
      v39[4] = toObject;
      [managedObjectContext2 performBlockAndWait:v39];
      v14 = v52[5];
      if (v11)
      {
        if (![(PFCloudKitStoreComparer *)self validateValue:v14 againstOtherValue:v46[5] forIgnoredAttribute:v10])
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = [objc_msgSend(v10 "entity")];
          name = [v10 name];
          v27 = [PFCloudKitStoreComparer trimExcessiveValuesForLog:v52[5]];
          v28 = [v24 stringWithFormat:@"Ignored attribute (%@:%@) appears to have been synced:\nValue: %@\nOther value: %@", v25, name, v27, +[PFCloudKitStoreComparer trimExcessiveValuesForLog:](PFCloudKitStoreComparer, "trimExcessiveValuesForLog:", v46[5])];
          v29 = MEMORY[0x1E696ABC0];
          v63 = *MEMORY[0x1E696A588];
          v64 = v28;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v31 = [v29 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v30];
LABEL_24:
          v17 = v31;
          v18 = 0;
          goto LABEL_25;
        }

LABEL_12:

        v52[5] = 0;
        v46[5] = 0;
        goto LABEL_13;
      }

      v15 = v46[5];
      if (v14)
      {
        if (!v15 || ![PFCloudKitStoreComparer isValue:"isValue:equalToValue:forAttribute:" equalToValue:? forAttribute:?])
        {
LABEL_19:
          v19 = MEMORY[0x1E696ABC0];
          v20 = *MEMORY[0x1E696A588];
          v62[0] = @"Attribute values do not match.";
          v61[0] = v20;
          v61[1] = @"storeObjectID";
          v62[1] = [object objectID];
          v61[2] = @"otherStoreObjectID";
          v62[2] = [toObject objectID];
          v61[3] = [MEMORY[0x1E696AEC0] stringWithFormat:@"store-%@", objc_msgSend(v10, "name")];
          v21 = v52[5];
          if (!v21)
          {
            v21 = @"nil";
          }

          v62[3] = v21;
          v61[4] = [MEMORY[0x1E696AEC0] stringWithFormat:@"otherStore-%@", objc_msgSend(v10, "name")];
          v22 = v46[5];
          if (!v22)
          {
            v22 = @"nil";
          }

          v62[4] = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:5];
          v31 = [v19 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v23];
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_13:
      ++v9;
    }

    while (v8 != v9);
    v16 = [v7 countByEnumeratingWithState:&v41 objects:v65 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_18:
  v17 = 0;
  v18 = 1;
LABEL_25:

  v52[5] = 0;
  v46[5] = 0;
  if (!v18)
  {
    if (v17)
    {
      if (error)
      {
        *error = v17;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v59 = 1024;
        v60 = 468;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v33 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v58 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v59 = 1024;
        v60 = 468;
        _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);
  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

id __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) valueForKey:{objc_msgSend(*(a1 + 40), "name")}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

id __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) valueForKey:{objc_msgSend(*(a1 + 40), "name")}];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (BOOL)isValue:(id)value equalToValue:(id)toValue forAttribute:(id)attribute
{
  v58 = *MEMORY[0x1E69E9840];
  attributeType = [attribute attributeType];
  if (attributeType <= 699)
  {
    if (attributeType <= 299)
    {
      if (!attributeType)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Not sure what to do with undefined attributes\n", buf, 2u);
        }

        v36 = _PFLogGetLogStream(17);
        v16 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);
        if (!v16)
        {
          goto LABEL_69;
        }

        *buf = 0;
        v32 = "CoreData: Not sure what to do with undefined attributes";
        v33 = v36;
        v34 = 2;
        goto LABEL_61;
      }

      if (attributeType != 100 && attributeType != 200)
      {
        goto LABEL_53;
      }
    }

    else if (attributeType > 499)
    {
      if (attributeType != 500 && attributeType != 600)
      {
        goto LABEL_53;
      }
    }

    else if (attributeType != 300 && attributeType != 400)
    {
      goto LABEL_53;
    }

LABEL_22:
    v15 = *MEMORY[0x1E69E9840];

    LOBYTE(v16) = [value isEqualToNumber:toValue];
    return v16;
  }

  if (attributeType > 1099)
  {
    if (attributeType <= 1799)
    {
      if (attributeType != 1100)
      {
        if (attributeType != 1200)
        {
          goto LABEL_53;
        }

        absoluteString = [value absoluteString];
        absoluteString2 = [toValue absoluteString];
        v12 = *MEMORY[0x1E69E9840];
        toValueCopy = absoluteString2;
        valueCopy = absoluteString;
        goto LABEL_65;
      }

      goto LABEL_73;
    }

    if (attributeType != 1800)
    {
      if (attributeType == 2100)
      {
        elements = [attribute elements];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v18 = [elements countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v50;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v50 != v20)
              {
                objc_enumerationMutation(elements);
              }

              v22 = *(*(&v49 + 1) + 8 * i);
              v23 = [value valueForKey:{objc_msgSend(v22, "name")}];
              v24 = [toValue valueForKey:{objc_msgSend(v22, "name")}];
              if (v23)
              {
                v25 = v24 == 0;
              }

              else
              {
                v25 = 1;
              }

              if (v25)
              {
                if (v23 | v24)
                {
                  goto LABEL_62;
                }
              }

              else if (![(PFCloudKitStoreComparer *)self isValue:v23 equalToValue:v24 forAttribute:v22])
              {
                goto LABEL_62;
              }
            }

            v19 = [elements countByEnumeratingWithState:&v49 objects:v53 count:16];
            LOBYTE(v16) = 1;
          }

          while (v19);
        }

        else
        {
          LOBYTE(v16) = 1;
        }

        goto LABEL_69;
      }

LABEL_53:
      v29 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        attributeType2 = [attribute attributeType];
        _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown attribute type: %lu\n", buf, 0xCu);
      }

      v30 = _PFLogGetLogStream(17);
      v16 = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);
      if (v16)
      {
        attributeType3 = [attribute attributeType];
        *buf = 134217984;
        attributeType2 = attributeType3;
        v32 = "CoreData: Unknown attribute type: %lu";
        v33 = v30;
        v34 = 12;
        goto LABEL_61;
      }

LABEL_69:
      v38 = *MEMORY[0x1E69E9840];
      return v16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_50:
      v28 = *MEMORY[0x1E69E9840];

      LOBYTE(v16) = [value isEqualToData:toValue];
      return v16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_64:
      v37 = *MEMORY[0x1E69E9840];
      valueCopy = value;
      toValueCopy = toValue;
LABEL_65:

      LOBYTE(v16) = [valueCopy isEqualToString:toValueCopy];
      return v16;
    }

    getCloudKitCKRecordClass[0]();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recordID = [value recordID];
      recordID2 = [toValue recordID];
      v41 = *MEMORY[0x1E69E9840];
      toValueCopy2 = recordID2;
      valueCopy2 = recordID;
LABEL_74:

      LOBYTE(v16) = [valueCopy2 isEqual:toValueCopy2];
      return v16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_73:
      v44 = *MEMORY[0x1E69E9840];
      valueCopy2 = value;
      toValueCopy2 = toValue;
      goto LABEL_74;
    }

    v45 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      attributeType2 = objc_opt_class();
      v56 = 2112;
      attributeCopy2 = attribute;
      _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown value type '%@' for attribute: %@\n", buf, 0x16u);
    }

    v46 = _PFLogGetLogStream(17);
    v16 = os_log_type_enabled(v46, OS_LOG_TYPE_FAULT);
    if (!v16)
    {
      goto LABEL_69;
    }

    v47 = objc_opt_class();
    *buf = 138412546;
    attributeType2 = v47;
    v56 = 2112;
    attributeCopy2 = attribute;
    v32 = "CoreData: Unknown value type '%@' for attribute: %@";
    v33 = v46;
    v34 = 22;
LABEL_61:
    _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, v32, buf, v34);
LABEL_62:
    LOBYTE(v16) = 0;
    goto LABEL_69;
  }

  if (attributeType <= 899)
  {
    if (attributeType != 700)
    {
      if (attributeType != 800)
      {
        goto LABEL_53;
      }

      goto LABEL_22;
    }

    goto LABEL_64;
  }

  if (attributeType != 900)
  {
    if (attributeType != 1000)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v27 = *MEMORY[0x1E69E9840];

  LOBYTE(v16) = [value isEqualToDate:toValue];
  return v16;
}

- (BOOL)validateValue:(id)value againstOtherValue:(id)otherValue forIgnoredAttribute:(id)attribute
{
  result = 1;
  if (value)
  {
    if (otherValue)
    {
      return ![PFCloudKitStoreComparer isValue:"isValue:equalToValue:forAttribute:" equalToValue:? forAttribute:?];
    }
  }

  return result;
}

- (BOOL)compareRelationshipsOfRecordID:(id)d withStoreObject:(id)object andOtherObject:(id)otherObject error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  v40 = [objc_msgSend(object "objectID")];
  otherObjectCopy = otherObject;
  v39 = [objc_msgSend(otherObject "objectID")];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  objectCopy = object;
  obj = [objc_msgSend(objc_msgSend(object "entity")];
  v10 = [obj countByEnumeratingWithState:&v48 objects:v66 count:16];
  if (!v10)
  {
LABEL_30:
    LOBYTE(v32) = 1;
    goto LABEL_40;
  }

  v11 = v10;
  v12 = 0;
  v45 = *v49;
  v43 = *MEMORY[0x1E696A250];
  v42 = *MEMORY[0x1E696A588];
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v49 != v45)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v48 + 1) + 8 * v13);
    if ([objc_msgSend(objc_msgSend(v14 "userInfo")])
    {
      v15 = 1;
    }

    else
    {
      v15 = [objc_msgSend(objc_msgSend(objc_msgSend(v14 "inverseRelationship")];
    }

    v16 = [(PFCloudKitStoreComparer *)self getRecordIDsForRelationship:v14 onObject:objectCopy];
    v17 = [(PFCloudKitStoreComparer *)self getRecordIDsForRelationship:v14 onObject:otherObjectCopy];
    if (![v16 isEqualToSet:v17])
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Relationship doesn't match for object with record name (%@): %@\nStore: %@\nOther Store: %@", objc_msgSend(v14, "name"), d, objc_msgSend(objc_msgSend(v16, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v17, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31)];
      v24 = MEMORY[0x1E696ABC0];
      v56 = v42;
      v57 = v23;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v57;
      v27 = &v56;
LABEL_21:
      v12 = [v24 errorWithDomain:v43 code:134060 userInfo:{objc_msgSend(v25, "dictionaryWithObjects:forKeys:count:", v26, v27, 1)}];
      v22 = 0;
      goto LABEL_23;
    }

    if (v15)
    {
      break;
    }

    if (![v14 isToMany] || !objc_msgSend(objc_msgSend(v14, "inverseRelationship"), "isToMany") || !-[PFCloudKitStoreComparisonCache checkCloudKitMetadata](self->_cache, "checkCloudKitMetadata"))
    {
      v22 = 1;
      goto LABEL_23;
    }

    v38 = v12;
    v18 = -[PFCloudKitStoreComparisonCache recordIDsRelatedToRecordID:byRelationshipNamed:inStore:](self->_cache, "recordIDsRelatedToRecordID:byRelationshipNamed:inStore:", d, [v14 name], v40);
    v19 = -[PFCloudKitStoreComparisonCache recordIDsRelatedToRecordID:byRelationshipNamed:inStore:](self->_cache, "recordIDsRelatedToRecordID:byRelationshipNamed:inStore:", d, [v14 name], v39);
    v20 = [v18 count];
    if (v20 != [v16 count] || (objc_msgSend(v16, "isEqualToSet:", v18) & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mirrored relationships don't match actual record for '%@' in %@\nObject: %@\nMirrored Relationships: %@", d, objc_msgSend(v40, "URL"), objc_msgSend(objc_msgSend(v16, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v18, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31)];
      v24 = MEMORY[0x1E696ABC0];
      v62 = v42;
      v63 = v28;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v63;
      v27 = &v62;
      goto LABEL_21;
    }

    v21 = [v19 count];
    if (v21 != [v17 count] || (objc_msgSend(v19, "isEqualToSet:", v17) & 1) == 0)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mirrored relationships don't match actual record for '%@' in %@\nObject: %@\nMirrored Relationships: %@", d, objc_msgSend(v39, "URL"), objc_msgSend(objc_msgSend(v17, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v19, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31)];
      v24 = MEMORY[0x1E696ABC0];
      v60 = v42;
      v61 = v29;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v61;
      v27 = &v60;
      goto LABEL_21;
    }

    if (([v18 isEqualToSet:v19] & 1) == 0)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mirrored relationships don't match for object with record name (%@): \nStore: %@\nOther Store: %@", d, objc_msgSend(objc_msgSend(v18, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v19, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31)];
      v24 = MEMORY[0x1E696ABC0];
      v58 = v42;
      v59 = v30;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v59;
      v27 = &v58;
      goto LABEL_21;
    }

    v22 = 1;
    v12 = v38;
LABEL_23:

    if (!v22)
    {
      goto LABEL_32;
    }

    if (v11 == ++v13)
    {
      v31 = [obj countByEnumeratingWithState:&v48 objects:v66 count:16];
      v11 = v31;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_3;
    }
  }

  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ignored relationship (%@:%@) appears to have been synced:\nValue: %@\nOther value: %@", objc_msgSend(objc_msgSend(v14, "entity"), "name"), objc_msgSend(v14, "name"), v16, v17];
  v64 = v42;
  v65 = v33;
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v43 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v65, &v64, 1)}];
LABEL_32:
  if (v12)
  {
    if (error)
    {
      LOBYTE(v32) = 0;
      *error = v12;
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v54 = 1024;
    v55 = 646;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v35 = _PFLogGetLogStream(17);
  v32 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);
  if (v32)
  {
    *buf = 136315394;
    v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v54 = 1024;
    v55 = 646;
    _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
LABEL_39:
    LOBYTE(v32) = 0;
  }

LABEL_40:
  v36 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)getRecordIDsForRelationship:(id)relationship onObject:(id)object
{
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  managedObjectContext = [object managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke;
  v10[3] = &unk_1E6EC2920;
  v10[4] = object;
  v10[5] = relationship;
  v10[6] = v7;
  v10[7] = self;
  [managedObjectContext performBlockAndWait:v10];
  return v7;
}

uint64_t __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:{objc_msgSend(*(a1 + 40), "name")}];
  if ([*(a1 + 40) isToMany])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke_2;
    v7[3] = &unk_1E6EC5428;
    v3 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v8 = *(a1 + 48);
    v9 = v3;
    return [v2 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    result = [*(*(a1 + 56) + 16) recordIDForObjectID:{objc_msgSend(v2, "objectID")}];
    if (result)
    {
      v5 = result;
      v6 = *(a1 + 48);

      return [v6 addObject:v5];
    }
  }

  return result;
}

void __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addObject:{objc_msgSend(*(*(a1 + 40) + 16), "recordIDForObjectID:", objc_msgSend(a2, "objectID"))}];
  if (![*(*(a1 + 40) + 16) checkCloudKitMetadata])
  {
    goto LABEL_9;
  }

  if (![objc_msgSend(*(a1 + 48) "inverseRelationship")])
  {
    goto LABEL_9;
  }

  v4 = [*(*(a1 + 40) + 16) mirroredRelationshipForObject:*(a1 + 56) relatedToObject:a2 byRelationship:*(a1 + 48)];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  if (([objc_msgSend(objc_msgSend(*(a1 + 48) "userInfo")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 48), "inverseRelationship"), "userInfo"), "objectForKey:", @"NSCloudKitMirroringDelegateIgnoredPropertyKey"), "BOOLValue"))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v5;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationship for ignored relationship: %@\n", &v21, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v21 = 138412290;
    v22 = v5;
    v11 = "CoreData: Found mirrored relationship for ignored relationship: %@";
    v13 = v7;
    v14 = 12;
LABEL_27:
    _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, v11, &v21, v14);
    goto LABEL_9;
  }

  if ([v5 isUploadedBool])
  {
    if ([v5 needsDeleteBool])
    {
      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationship that's marked deleted but the objects are linked.\n", &v21, 2u);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v21) = 0;
        v11 = "CoreData: Found mirrored relationship that's marked deleted but the objects are linked.";
LABEL_20:
        v13 = v10;
        v14 = 2;
        goto LABEL_27;
      }
    }

    else if ([v5 isPendingBool])
    {
      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(a1 + 48) name];
        v20 = *(a1 + 56);
        v21 = 138412802;
        v22 = v19;
        v23 = 2112;
        v24 = v20;
        v25 = 2112;
        v26 = a2;
        _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: fault: Found pending mirrored relationship for linked objects (%@).\n%@\n%@\n", &v21, 0x20u);
      }

      v16 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = [*(a1 + 48) name];
        v18 = *(a1 + 56);
        v21 = 138412802;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        v25 = 2112;
        v26 = a2;
        v11 = "CoreData: Found pending mirrored relationship for linked objects (%@).\n%@\n%@";
        v13 = v16;
        v14 = 32;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationship not marked uploaded, but this method is supposed to make sure store contents are equal, so shouldn't it be?\n", &v21, 2u);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v21) = 0;
      v11 = "CoreData: Found mirrored relationship not marked uploaded, but this method is supposed to make sure store contents are equal, so shouldn't it be?";
      goto LABEL_20;
    }
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)ensureStoresAgreeOnCloudKitTables:(id)tables error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v4 = [tables countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v4)
  {
    v5 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(tables);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v43 = 1;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __67__PFCloudKitStoreComparer_ensureStoresAgreeOnCloudKitTables_error___block_invoke;
        v34[3] = &unk_1E6EC3778;
        v34[4] = buf;
        v8 = [[NSSQLBlockRequestContext alloc] initWithBlock:v34 context:0 sqlCore:v7];
        [(NSSQLCore *)v7 dispatchRequest:v8 withRetries:0];
        [v29 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*&buf[8] + 24)), objc_msgSend(v7, "identifier")}];

        _Block_object_dispose(buf, 8);
      }

      v4 = [tables countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v4);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  allKeys = [v29 allKeys];
  v10 = 0;
  v11 = [allKeys countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = [v29 objectForKey:*(*(&v30 + 1) + 8 * j)];
        v15 = v14;
        if (v10)
        {
          bOOLValue = [v10 BOOLValue];
          if (bOOLValue != [v15 BOOLValue])
          {
            v17 = objc_alloc(MEMORY[0x1E696ABC0]);
            v39 = *MEMORY[0x1E696A588];
            v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stores disagree about whether or not CloudKit metadata tables are present: %@\n%@", tables, v29];
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v19 = [v17 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v18];
            v20 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          v10 = v14;
          -[PFCloudKitStoreComparisonCache _setCheckCloudKitMetadata:](self->_cache, "_setCheckCloudKitMetadata:", [v10 BOOLValue]);
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v11);
  }

  v19 = 0;
  v20 = 1;
LABEL_20:

  if (!v20)
  {
    v21 = v19;
    if (v21)
    {
      if (error)
      {
        *error = v21;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 744;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 744;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __67__PFCloudKitStoreComparer_ensureStoresAgreeOnCloudKitTables_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  result = [objc_msgSend(v4 "ancillarySQLModels")];
  if (result)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = *(result + 32);
    result = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          if (!a2)
          {
            result = [v10 tableName];
            goto LABEL_16;
          }

          v11 = *(a2 + 24);
          result = [v10 tableName];
          if (!v11)
          {
            goto LABEL_16;
          }

          result = [(NSSQLiteConnection *)v11 _hasTableWithName:0 isTemp:?];
          if (!result)
          {
            goto LABEL_16;
          }

          ++v9;
        }

        while (v7 != v9);
        result = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v7 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)compareCloudKitMetadataOfStore:(id)store toStore:(id)toStore error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (![(PFCloudKitStoreComparer *)self ensureMirroredRelationshipsMatchForStore:store otherStore:toStore error:&v16]|| ![(PFCloudKitStoreComparer *)self ensureMoveReceiptsMatchForStore:store otherStore:toStore error:&v16])
  {
    v10 = v16;
    v11 = v16;
    if (v11)
    {
      if (error)
      {
        v9 = 0;
        *error = v11;
        goto LABEL_12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v19 = 1024;
        v20 = 771;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v13 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v19 = 1024;
        v20 = 771;
        _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)ensureMoveReceiptsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error
{
  selfCopy = self;
  v88 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3052000000;
  v69 = __Block_byref_object_copy__47;
  v70 = __Block_byref_object_dispose__47;
  v8 = [(PFCloudKitStoreComparisonCache *)self->_cache recordIdsForStore:?];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v62 objects:v87 count:16];
  if (v9)
  {
    v48 = *v63;
    v43 = *MEMORY[0x1E696A250];
    v44 = *MEMORY[0x1E696A588];
    storeCopy = store;
    v47 = selfCopy;
    otherStoreCopy = otherStore;
LABEL_3:
    v10 = 0;
    v49 = v9;
    while (1)
    {
      if (*v63 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v62 + 1) + 8 * v10);
      v12 = [(PFCloudKitStoreComparisonCache *)selfCopy->_cache metadataForObjectWithID:[(PFCloudKitStoreComparisonCache *)selfCopy->_cache objectIDForRecordID:v11 inStore:store]];
      v13 = [(PFCloudKitStoreComparisonCache *)selfCopy->_cache metadataForObjectWithID:[(PFCloudKitStoreComparisonCache *)selfCopy->_cache objectIDForRecordID:v11 inStore:otherStore]];
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v84 = __Block_byref_object_copy__47;
      v85 = __Block_byref_object_dispose__47;
      v86 = 0;
      managedObjectContext = [v12 managedObjectContext];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke;
      v61[3] = &unk_1E6EC3D28;
      v61[4] = v12;
      v61[5] = v14;
      v61[6] = selfCopy;
      v61[7] = buf;
      v61[8] = &v66;
      v61[9] = &v72;
      [managedObjectContext performBlockAndWait:v61];
      if (*(v73 + 24) == 1)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v55 = 0;
        v56 = &v55;
        v57 = 0x3052000000;
        v58 = __Block_byref_object_copy__47;
        v59 = __Block_byref_object_dispose__47;
        v60 = 0;
        managedObjectContext2 = [v13 managedObjectContext];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke_2;
        v54[3] = &unk_1E6EC3D28;
        v54[4] = v13;
        v54[5] = v16;
        v54[7] = &v55;
        v54[6] = v47;
        v54[8] = &v66;
        v54[9] = &v72;
        [managedObjectContext2 performBlockAndWait:v54];
        v18 = [v14 count];
        if (v18 == [v16 count])
        {
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          allKeys = [v14 allKeys];
          v20 = [allKeys countByEnumeratingWithState:&v50 objects:v82 count:16];
          if (v20)
          {
            v21 = *v51;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v51 != v21)
                {
                  objc_enumerationMutation(allKeys);
                }

                v23 = *(*(&v50 + 1) + 8 * i);
                if (([objc_msgSend(v14 objectForKeyedSubscript:{v23), "isEqualToDate:", objc_msgSend(v16, "objectForKeyedSubscript:", v23)}] & 1) == 0)
                {
                  *(v73 + 24) = 0;
                  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
                  otherStore = otherStoreCopy;
                  v80[0] = v44;
                  v80[1] = @"recordID";
                  v81[0] = @"Move receipt dates don't match.";
                  v81[1] = v11;
                  v80[2] = @"movedRecordName";
                  v81[2] = v23;
                  v80[3] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-receipts", objc_msgSend(storeCopy, "identifier")];
                  v81[3] = v14;
                  v80[4] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-receipts", objc_msgSend(otherStoreCopy, "identifier")];
                  v81[4] = v16;
                  v25 = [v26 initWithDomain:v43 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v81, v80, 5)}];
                  goto LABEL_19;
                }
              }

              v20 = [allKeys countByEnumeratingWithState:&v50 objects:v82 count:16];
              otherStore = otherStoreCopy;
              if (v20)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          *(v73 + 24) = 0;
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v78[0] = v44;
          v78[1] = @"recordID";
          v79[0] = @"Move receipts don't match.";
          v79[1] = v11;
          v78[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-receipts", objc_msgSend(store, "identifier")];
          v79[2] = v14;
          v78[3] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-receipts", objc_msgSend(otherStore, "identifier")];
          v79[3] = v16;
          v25 = [v24 initWithDomain:v43 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v79, v78, 4)}];
LABEL_19:
          v67[5] = v25;
        }

        store = storeCopy;
        if (*(v73 + 24) == 1)
        {
          v27 = *(*&buf[8] + 40);
          if (v27 != v56[5])
          {
            v28 = [objc_msgSend(v27 "recordID")];
            if (![v28 isEqual:{objc_msgSend(objc_msgSend(v56[5], "recordID"), "recordName")}] || (v29 = objc_msgSend(objc_msgSend(objc_msgSend(*(*&buf[8] + 40), "recordID"), "zoneID"), "zoneName"), (objc_msgSend(v29, "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(v56[5], "recordID"), "zoneID"), "zoneName")) & 1) == 0))
            {
              *(v73 + 24) = 0;
              v30 = objc_alloc(MEMORY[0x1E696ABC0]);
              v76[0] = v44;
              v76[1] = @"recordID";
              v77[0] = @"Shares don't match for record zone.";
              v77[1] = v11;
              v76[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-share", objc_msgSend(storeCopy, "identifier")];
              v31 = *(*&buf[8] + 40);
              if (!v31)
              {
                v31 = @"nil";
              }

              v77[2] = v31;
              v76[3] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-share", objc_msgSend(otherStore, "identifier")];
              v32 = v56[5];
              if (!v32)
              {
                v32 = @"nil";
              }

              v77[3] = v32;
              v33 = [v30 initWithDomain:v43 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v77, v76, 4)}];
              v67[5] = v33;
            }
          }
        }

        v56[5] = 0;
        _Block_object_dispose(&v55, 8);
        selfCopy = v47;
      }

      *(*&buf[8] + 40) = 0;
      v34 = *(v73 + 24);
      _Block_object_dispose(buf, 8);
      if (!v34)
      {
        break;
      }

      if (++v10 == v49)
      {
        v9 = [obj countByEnumeratingWithState:&v62 objects:v87 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v73[3] & 1) == 0)
  {
    v38 = v67[5];
    if (v38)
    {
      if (error)
      {
        *error = v38;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 881;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v40 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 881;
        _os_log_fault_impl(&dword_18565F000, v40, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v67[5] = 0;
  v35 = *(v73 + 24);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

void __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) moveReceipts];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) setObject:objc_msgSend(*(*(&v16 + 1) + 8 * v6) forKey:{"movedAt"), objc_msgSend(*(*(&v16 + 1) + 8 * v6), "recordName")}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v7 = -[NSCKRecordZoneMetadata createRecordZoneID]([*(a1 + 32) recordZone]);
  v8 = *(*(a1 + 48) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "recordZone")];
  if (v9)
  {
    v10 = v9;
    if ([objc_msgSend(v9 "binaryData")])
    {
      v11 = [v10 binaryData];
    }

    else
    {
      v11 = [v10 externalBinaryData];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 56) + 8) + 40) = [(PFCloudKitArchivingUtilities *)v8 shareFromEncodedData:v12 inZoneWithID:v7 error:(*(*(a1 + 64) + 8) + 40)];
  v13 = *(*(*(a1 + 64) + 8) + 40);
  if (v13)
  {
    v14 = v13;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) moveReceipts];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) setObject:objc_msgSend(*(*(&v16 + 1) + 8 * v6) forKey:{"movedAt"), objc_msgSend(*(*(&v16 + 1) + 8 * v6), "recordName")}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v7 = -[NSCKRecordZoneMetadata createRecordZoneID]([*(a1 + 32) recordZone]);
  v8 = *(*(a1 + 48) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "recordZone")];
  if (v9)
  {
    v10 = v9;
    if ([objc_msgSend(v9 "binaryData")])
    {
      v11 = [v10 binaryData];
    }

    else
    {
      v11 = [v10 externalBinaryData];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 56) + 8) + 40) = [(PFCloudKitArchivingUtilities *)v8 shareFromEncodedData:v12 inZoneWithID:v7 error:(*(*(a1 + 64) + 8) + 40)];
  v13 = *(*(*(a1 + 64) + 8) + 40);
  if (v13)
  {
    v14 = v13;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)ensureMirroredRelationshipsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy__47;
  v39 = __Block_byref_object_dispose__47;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v55[0] = store;
  v55[1] = otherStore;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v56 count:16];
  if (v9)
  {
    v10 = *v28;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v27 + 1) + 8 * v11);
      v13 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      -[NSManagedObjectContext setPersistentStoreCoordinator:](v13, "setPersistentStoreCoordinator:", [v12 _persistentStoreCoordinator]);
      [(NSManagedObjectContext *)v13 _setAllowAncillaryEntities:1];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __85__PFCloudKitStoreComparer_ensureMirroredRelationshipsMatchForStore_otherStore_error___block_invoke;
      v26[3] = &unk_1E6EC5450;
      v26[4] = v12;
      v26[5] = self;
      v26[6] = v13;
      v26[7] = store;
      v26[8] = otherStore;
      v26[9] = &v45;
      v26[10] = &v41;
      v26[11] = &v31;
      v26[12] = &v35;
      [(NSManagedObjectContext *)v13 performBlockAndWait:v26];

      if (!*(v32 + 24))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v56 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(v32 + 24) != 1)
  {
    errorCopy2 = error;
    v18 = v36[5];
    goto LABEL_14;
  }

  v14 = v46[3];
  v15 = v42[3];
  if (v14 != v15)
  {
    v19 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A588];
    errorCopy2 = error;
    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Stores don't have the same number of mirrored relationships: %lu / %lu", v14, v15];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v18 = [v19 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v20];
LABEL_14:
    if (v18)
    {
      if (errorCopy2)
      {
        v16 = 0;
        *errorCopy2 = v18;
        goto LABEL_22;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v51 = 1024;
        v52 = 952;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v51 = 1024;
        v52 = 952;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v16 = 0;
    goto LABEL_22;
  }

  v16 = 1;
LABEL_22:

  v36[5] = 0;
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

id __85__PFCloudKitStoreComparer_ensureMirroredRelationshipsMatchForStore_otherStore_error___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v20[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1]);
  [(NSFetchRequest *)v2 setResultType:4];
  v3 = *(a1 + 40);
  if (*(v3 + 8) == 1)
  {
    v4 = [*(v3 + 16) sharedZoneIDsForStore:*(a1 + 32)];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [v5 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * v9++), "zoneName")}];
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName IN %@", v5]);
  }

  v14 = 0;
  result = [*(a1 + 48) executeFetchRequest:v2 error:&v14];
  if (result)
  {
    v11 = *(a1 + 32);
    if (v11 == *(a1 + 56))
    {
      result = [objc_msgSend(result "lastObject")];
      v12 = *(a1 + 72);
      goto LABEL_16;
    }

    if (v11 == *(a1 + 64))
    {
      result = [objc_msgSend(result "lastObject")];
      v12 = *(a1 + 80);
LABEL_16:
      *(*(v12 + 8) + 24) = result;
    }
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    result = v14;
    *(*(*(a1 + 96) + 8) + 40) = result;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)ensureRecordMetadataMatchesForRecordID:(id)d inStore:(id)store andOtherStore:(id)otherStore error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v10 = [(PFCloudKitStoreComparisonCache *)self->_cache metadataForRecordID:d inStore:store];
  v11 = [(PFCloudKitStoreComparisonCache *)self->_cache metadataForRecordID:d inStore:otherStore];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (v10 | v11)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Hmmmm I think something changed around this method because the metadata should have been verified for equivalent entries by now.\n", buf, 2u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Hmmmm I think something changed around this method because the metadata should have been verified for equivalent entries by now.", buf, 2u);
      }
    }

    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v30 = __Block_byref_object_copy__47;
  v31 = __Block_byref_object_dispose__47;
  v32 = 0;
  managedObjectContext = [v10 managedObjectContext];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke;
  v27[3] = &unk_1E6EC1860;
  v27[4] = v10;
  v27[5] = buf;
  [managedObjectContext performBlockAndWait:v27];
  v17 = [(PFCloudKitArchivingUtilities *)self->_archivingUtilities recordFromEncodedData:&v28 error:?];

  *(*&buf[8] + 40) = 0;
  if (v17)
  {
    managedObjectContext2 = [v12 managedObjectContext];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke_2;
    v26[3] = &unk_1E6EC1860;
    v26[4] = v12;
    v26[5] = buf;
    [managedObjectContext2 performBlockAndWait:v26];
    v19 = [(PFCloudKitArchivingUtilities *)self->_archivingUtilities recordFromEncodedData:&v28 error:?];

    *(*&buf[8] + 40) = 0;
    v20 = v19 && -[PFCloudKitStoreComparer ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:](self, "ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:", v17, v19, &v28) && -[PFCloudKitStoreComparer ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:](self, "ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:", [v17 encryptedValues], objc_msgSend(v19, "encryptedValues"), &v28);
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(buf, 8);
  if (v20)
  {
LABEL_19:
    LOBYTE(v21) = 1;
    goto LABEL_20;
  }

  if (v28)
  {
    if (error)
    {
      LOBYTE(v21) = 0;
      *error = v28;
      goto LABEL_20;
    }

LABEL_28:
    LOBYTE(v21) = 0;
    goto LABEL_20;
  }

  v23 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    *&buf[12] = 1024;
    *&buf[14] = 1011;
    _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v24 = _PFLogGetLogStream(17);
  v21 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v21)
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    *&buf[12] = 1024;
    *&buf[14] = 1011;
    _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_28;
  }

LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

id __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) encodedRecordAsset];
  if (v2)
  {
    v3 = v2;
    if ([objc_msgSend(v2 "binaryData")])
    {
      v2 = [v3 binaryData];
    }

    else
    {
      v2 = [v3 externalBinaryData];
    }
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) encodedRecordAsset];
  if (v2)
  {
    v3 = v2;
    if ([objc_msgSend(v2 "binaryData")])
    {
      v2 = [v3 binaryData];
    }

    else
    {
      v2 = [v3 externalBinaryData];
    }
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)ensureContentsOfRecordStorageMatchForStorage:(id)storage andOtherStore:(id)store error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(storage, "allKeys")}];
  [v8 addObjectsFromArray:{objc_msgSend(store, "allKeys")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  errorCopy = error;
  v11 = *v28;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if (([v13 isEqualToString:@"_PFFakeCKDatabaseAncestorRecordKey"] & 1) == 0)
      {
        v14 = [storage objectForKeyedSubscript:v13];
        v15 = [store objectForKeyedSubscript:v13];
        if (v14 != v15)
        {
          v16 = v15;
          getCloudKitCKAssetClass();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            getCloudKitCKAssetClass();
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && ([(__CFString *)v14 isEqual:v16]& 1) == 0)
            {
              v18 = *MEMORY[0x1E696A250];
              v35[0] = @"mismatchField";
              v35[1] = @"value";
              v19 = @"nil";
              if (v14)
              {
                v20 = v14;
              }

              else
              {
                v20 = @"nil";
              }

              v36[0] = v13;
              v36[1] = v20;
              v35[2] = @"oValue";
              if (v16)
              {
                v19 = v16;
              }

              v36[2] = v19;
              v21 = [MEMORY[0x1E696ABC0] errorWithDomain:v18 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v36, v35, 3)}];

              if (v21)
              {
                if (errorCopy)
                {
                  LOBYTE(v17) = 0;
                  *errorCopy = v21;
                  goto LABEL_27;
                }
              }

              else
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
                  v33 = 1024;
                  v34 = 1075;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                }

                v23 = _PFLogGetLogStream(17);
                v17 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);
                if (!v17)
                {
                  goto LABEL_27;
                }

                *buf = 136315394;
                v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
                v33 = 1024;
                v34 = 1075;
                _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }

              LOBYTE(v17) = 0;
              goto LABEL_27;
            }
          }
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_13:

  LOBYTE(v17) = 1;
LABEL_27:
  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)trimExcessiveValuesForLog:(id)log
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([log length] >= 0x101)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [log substringToIndex:255];
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [log fileURL]) && objc_msgSend(log, "length") >= 0x101)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [log subdataWithRange:{0, 255}];
LABEL_9:
      result = [v4 stringWithFormat:@"Trimmed: %@", v5];
      if (result)
      {
        return result;
      }
    }
  }

  logCopy = log;

  return logCopy;
}

@end