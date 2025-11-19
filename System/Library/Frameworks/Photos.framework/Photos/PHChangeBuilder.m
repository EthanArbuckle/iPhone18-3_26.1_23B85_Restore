@interface PHChangeBuilder
+ (id)changeWithManagedObjectContext:(id)a3 library:(id)a4 options:(id)a5 transaction:(id)a6;
+ (id)persistentChangeWithManagedObjectContext:(id)a3 library:(id)a4 options:(id)a5 transaction:(id)a6 enumerationContext:(id)a7;
- (BOOL)changeCountExeedsThreshold:(unint64_t)a3;
- (PHChangeBuilder)initWithManagedObjectContext:(id)a3 library:(id)a4 options:(id)a5 enumerationContext:(id)a6;
- (id)_uuidForDeleteChange:(id)a3 uniquedObjectID:(id)a4;
- (id)buildChange;
- (id)buildPersistentChange;
- (void)_recordChangedProperties:(id)a3 forObjectID:(id)a4;
- (void)_recordDeleteChange:(id)a3 withUniquedObjectID:(id)a4;
- (void)_recordUpdateChange:(id)a3 withUniquedObjectID:(id)a4;
- (void)recordChange:(id)a3;
- (void)recordChangesInTransaction:(id)a3;
- (void)recordTransaction:(id)a3;
@end

@implementation PHChangeBuilder

- (id)buildPersistentChange
{
  v2 = [(PHChangeBuilder *)self buildChange];
  v3 = [[PHPersistentChange alloc] initWithChange:v2];

  return v3;
}

- (id)buildChange
{
  v3 = [PHChange alloc];
  LOBYTE(v6) = self->_unknownMergeEvent;
  v4 = [(PHChange *)v3 initWithInsertedObjectIDs:self->_insertedObjectIDs updatedObjectIDs:self->_updatedObjectIDs deletedObjectIDs:self->_deletedObjectIDs deletedUuidsByObjectId:self->_deletedUuidsByObjectId deletedPrimaryLabelCodesByOID:self->_deletedPrimaryLabelCodesByObjectId changedAttributesByOID:self->_attributesByOID changedRelationshipsByOID:self->_relationshipsByOID unknownMergeEvent:v6 changeToken:self->_changeToken fetchOptions:self->_fetchOptions library:self->_library managedObjectContext:self->_context enumerationContext:self->_enumerationContext];

  return v4;
}

- (id)_uuidForDeleteChange:(id)a3 uniquedObjectID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 entity];
  v8 = [v7 name];

  v9 = [MEMORY[0x1E69BE470] entityName];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [v5 tombstone];
    v12 = [v11 objectForKeyedSubscript:@"uuid"];
  }

  else
  {
    v11 = [(objc_class *)[PHPhotoLibrary PHObjectClassForOID:?], "entityKeyForPropertyKey:", @"uuid"];
    v13 = [v5 tombstone];
    v12 = [v13 objectForKeyedSubscript:v11];
  }

  return v12;
}

- (void)_recordDeleteChange:(id)a3 withUniquedObjectID:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(NSMutableSet *)self->_deletedObjectIDs addObject:v6];
  v7 = [(PHChangeBuilder *)self _uuidForDeleteChange:v14 uniquedObjectID:v6];
  [(NSMutableDictionary *)self->_deletedUuidsByObjectId _pl_setNonNilObject:v7 forKey:v6];
  v8 = [v6 entity];
  v9 = [v8 name];

  v10 = [MEMORY[0x1E69BE470] entityName];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = [v14 tombstone];
    v13 = [v12 valueForKey:@"primaryLabelCode"];

    if ([v13 unsignedIntValue])
    {
      [(NSMutableDictionary *)self->_deletedPrimaryLabelCodesByObjectId _pl_setNonNilObject:v13 forKey:v6];
    }
  }
}

- (void)_recordChangedProperties:(id)a3 forObjectID:(id)a4
{
  v6 = a4;
  v8 = [a3 allObjects];
  v7 = [v8 _pl_map:&__block_literal_global_31345];
  [MEMORY[0x1E69BE6F8] recordChangedKeys:v7 forObjectID:v6 inAttributesByOID:self->_attributesByOID relationshipsByOID:self->_relationshipsByOID];
}

- (void)_recordUpdateChange:(id)a3 withUniquedObjectID:(id)a4
{
  updatedObjectIDs = self->_updatedObjectIDs;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)updatedObjectIDs addObject:v7];
  v9 = [v8 updatedProperties];

  [(PHChangeBuilder *)self _recordChangedProperties:v9 forObjectID:v7];
}

- (void)recordChange:(id)a3
{
  v7 = a3;
  v4 = [v7 changedObjectID];
  v5 = [PHPhotoLibrary uniquedOID:v4];
  v6 = [v7 changeType];
  switch(v6)
  {
    case 2:
      [(PHChangeBuilder *)self _recordDeleteChange:v7 withUniquedObjectID:v5];
      break;
    case 1:
      [(PHChangeBuilder *)self _recordUpdateChange:v7 withUniquedObjectID:v5];
      break;
    case 0:
      [(PHChangeBuilder *)self _recordInsertChange:v7 withUniquedObjectID:v5];
      break;
  }
}

- (void)recordChangesInTransaction:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3;
  [v15 changes];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 changedObjectID];
        if (v11)
        {
          [(PHChangeBuilder *)self recordChange:v9];
        }

        else
        {
          v12 = PLBackendGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = [v9 _pl_prettyDescription];
            v14 = [v15 _pl_prettyDescriptionWithIndent:1];
            *buf = 138412546;
            v21 = v13;
            v22 = 2112;
            v23 = v14;
            _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_FAULT, "PHChangeBuilder: changedObjectID is nil\n%@%@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }
}

- (BOOL)changeCountExeedsThreshold:(unint64_t)a3
{
  v5 = [(PHPersistentChangeFetchOptions *)self->_fetchOptions maximumChangeThreshold];
  if (v5)
  {
    v6 = [(PHPersistentChangeFetchOptions *)self->_fetchOptions maximumChangeThreshold];
    if (v6)
    {
      v7 = v6 >= a3;
    }

    else
    {
      v7 = 1;
    }

    LOBYTE(v5) = !v7;
  }

  return v5;
}

- (void)recordTransaction:(id)a3
{
  v4 = a3;
  context = self->_context;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PHChangeBuilder_recordTransaction___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSManagedObjectContext *)context performBlockAndWait:v7];
}

void __37__PHChangeBuilder_recordTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) token];
  v3 = [PHPersistentChangeToken tokenWithPersistentHistoryToken:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v8 = [*(a1 + 40) changes];
  v6 = [*(a1 + 32) changeCountExeedsThreshold:{objc_msgSend(v8, "count")}];
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 recordNonIncrementalChanges];
  }

  else
  {
    [v7 recordChangesInTransaction:*(a1 + 40)];
  }
}

- (PHChangeBuilder)initWithManagedObjectContext:(id)a3 library:(id)a4 options:(id)a5 enumerationContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33.receiver = self;
  v33.super_class = PHChangeBuilder;
  v15 = [(PHChangeBuilder *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, a3);
    objc_storeStrong(&v16->_library, a4);
    objc_storeStrong(&v16->_fetchOptions, a5);
    objc_storeStrong(&v16->_enumerationContext, a6);
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    insertedObjectIDs = v16->_insertedObjectIDs;
    v16->_insertedObjectIDs = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    updatedObjectIDs = v16->_updatedObjectIDs;
    v16->_updatedObjectIDs = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deletedObjectIDs = v16->_deletedObjectIDs;
    v16->_deletedObjectIDs = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deletedUuidsByObjectId = v16->_deletedUuidsByObjectId;
    v16->_deletedUuidsByObjectId = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributesByOID = v16->_attributesByOID;
    v16->_attributesByOID = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    relationshipsByOID = v16->_relationshipsByOID;
    v16->_relationshipsByOID = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deletedPrimaryLabelCodesByObjectId = v16->_deletedPrimaryLabelCodesByObjectId;
    v16->_deletedPrimaryLabelCodesByObjectId = v29;

    v31 = v16;
  }

  return v16;
}

+ (id)persistentChangeWithManagedObjectContext:(id)a3 library:(id)a4 options:(id)a5 transaction:(id)a6 enumerationContext:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v16)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PHChangeBuilder.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
  }

  v18 = [v16 token];

  if (!v18)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PHChangeBuilder.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"transaction.token"}];
  }

  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v17;
  v32 = v16;
  v19 = v16;
  v20 = v17;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = pl_result_with_autoreleasepool();

  return v24;
}

id __107__PHChangeBuilder_persistentChangeWithManagedObjectContext_library_options_transaction_enumerationContext___block_invoke(void *a1)
{
  v2 = [[PHChangeBuilder alloc] initWithManagedObjectContext:a1[4] library:a1[5] options:a1[6] enumerationContext:a1[7]];
  [(PHChangeBuilder *)v2 recordTransaction:a1[8]];
  v3 = [(PHChangeBuilder *)v2 buildPersistentChange];

  return v3;
}

+ (id)changeWithManagedObjectContext:(id)a3 library:(id)a4 options:(id)a5 transaction:(id)a6
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v9 = v18;
  v10 = v17;
  v11 = v16;
  v12 = v15;
  v13 = pl_result_with_autoreleasepool();

  return v13;
}

id __78__PHChangeBuilder_changeWithManagedObjectContext_library_options_transaction___block_invoke(void *a1)
{
  v2 = [[PHChangeBuilder alloc] initWithManagedObjectContext:a1[4] library:a1[5] options:a1[6] enumerationContext:0];
  [(PHChangeBuilder *)v2 recordTransaction:a1[7]];
  v3 = [(PHChangeBuilder *)v2 buildChange];

  return v3;
}

@end