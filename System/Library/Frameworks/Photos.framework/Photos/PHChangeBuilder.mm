@interface PHChangeBuilder
+ (id)changeWithManagedObjectContext:(id)context library:(id)library options:(id)options transaction:(id)transaction;
+ (id)persistentChangeWithManagedObjectContext:(id)context library:(id)library options:(id)options transaction:(id)transaction enumerationContext:(id)enumerationContext;
- (BOOL)changeCountExeedsThreshold:(unint64_t)threshold;
- (PHChangeBuilder)initWithManagedObjectContext:(id)context library:(id)library options:(id)options enumerationContext:(id)enumerationContext;
- (id)_uuidForDeleteChange:(id)change uniquedObjectID:(id)d;
- (id)buildChange;
- (id)buildPersistentChange;
- (void)_recordChangedProperties:(id)properties forObjectID:(id)d;
- (void)_recordDeleteChange:(id)change withUniquedObjectID:(id)d;
- (void)_recordUpdateChange:(id)change withUniquedObjectID:(id)d;
- (void)recordChange:(id)change;
- (void)recordChangesInTransaction:(id)transaction;
- (void)recordTransaction:(id)transaction;
@end

@implementation PHChangeBuilder

- (id)buildPersistentChange
{
  buildChange = [(PHChangeBuilder *)self buildChange];
  v3 = [[PHPersistentChange alloc] initWithChange:buildChange];

  return v3;
}

- (id)buildChange
{
  v3 = [PHChange alloc];
  LOBYTE(v6) = self->_unknownMergeEvent;
  v4 = [(PHChange *)v3 initWithInsertedObjectIDs:self->_insertedObjectIDs updatedObjectIDs:self->_updatedObjectIDs deletedObjectIDs:self->_deletedObjectIDs deletedUuidsByObjectId:self->_deletedUuidsByObjectId deletedPrimaryLabelCodesByOID:self->_deletedPrimaryLabelCodesByObjectId changedAttributesByOID:self->_attributesByOID changedRelationshipsByOID:self->_relationshipsByOID unknownMergeEvent:v6 changeToken:self->_changeToken fetchOptions:self->_fetchOptions library:self->_library managedObjectContext:self->_context enumerationContext:self->_enumerationContext];

  return v4;
}

- (id)_uuidForDeleteChange:(id)change uniquedObjectID:(id)d
{
  changeCopy = change;
  dCopy = d;
  entity = [dCopy entity];
  name = [entity name];

  entityName = [MEMORY[0x1E69BE470] entityName];
  v10 = [name isEqualToString:entityName];

  if (v10)
  {
    tombstone = [changeCopy tombstone];
    v12 = [tombstone objectForKeyedSubscript:@"uuid"];
  }

  else
  {
    tombstone = [(objc_class *)[PHPhotoLibrary PHObjectClassForOID:?], "entityKeyForPropertyKey:", @"uuid"];
    tombstone2 = [changeCopy tombstone];
    v12 = [tombstone2 objectForKeyedSubscript:tombstone];
  }

  return v12;
}

- (void)_recordDeleteChange:(id)change withUniquedObjectID:(id)d
{
  changeCopy = change;
  dCopy = d;
  [(NSMutableSet *)self->_deletedObjectIDs addObject:dCopy];
  v7 = [(PHChangeBuilder *)self _uuidForDeleteChange:changeCopy uniquedObjectID:dCopy];
  [(NSMutableDictionary *)self->_deletedUuidsByObjectId _pl_setNonNilObject:v7 forKey:dCopy];
  entity = [dCopy entity];
  name = [entity name];

  entityName = [MEMORY[0x1E69BE470] entityName];
  v11 = [name isEqualToString:entityName];

  if (v11)
  {
    tombstone = [changeCopy tombstone];
    v13 = [tombstone valueForKey:@"primaryLabelCode"];

    if ([v13 unsignedIntValue])
    {
      [(NSMutableDictionary *)self->_deletedPrimaryLabelCodesByObjectId _pl_setNonNilObject:v13 forKey:dCopy];
    }
  }
}

- (void)_recordChangedProperties:(id)properties forObjectID:(id)d
{
  dCopy = d;
  allObjects = [properties allObjects];
  v7 = [allObjects _pl_map:&__block_literal_global_31345];
  [MEMORY[0x1E69BE6F8] recordChangedKeys:v7 forObjectID:dCopy inAttributesByOID:self->_attributesByOID relationshipsByOID:self->_relationshipsByOID];
}

- (void)_recordUpdateChange:(id)change withUniquedObjectID:(id)d
{
  updatedObjectIDs = self->_updatedObjectIDs;
  dCopy = d;
  changeCopy = change;
  [(NSMutableSet *)updatedObjectIDs addObject:dCopy];
  updatedProperties = [changeCopy updatedProperties];

  [(PHChangeBuilder *)self _recordChangedProperties:updatedProperties forObjectID:dCopy];
}

- (void)recordChange:(id)change
{
  changeCopy = change;
  changedObjectID = [changeCopy changedObjectID];
  v5 = [PHPhotoLibrary uniquedOID:changedObjectID];
  changeType = [changeCopy changeType];
  switch(changeType)
  {
    case 2:
      [(PHChangeBuilder *)self _recordDeleteChange:changeCopy withUniquedObjectID:v5];
      break;
    case 1:
      [(PHChangeBuilder *)self _recordUpdateChange:changeCopy withUniquedObjectID:v5];
      break;
    case 0:
      [(PHChangeBuilder *)self _recordInsertChange:changeCopy withUniquedObjectID:v5];
      break;
  }
}

- (void)recordChangesInTransaction:(id)transaction
{
  v25 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  [transactionCopy changes];
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
        changedObjectID = [v9 changedObjectID];
        if (changedObjectID)
        {
          [(PHChangeBuilder *)self recordChange:v9];
        }

        else
        {
          v12 = PLBackendGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            _pl_prettyDescription = [v9 _pl_prettyDescription];
            v14 = [transactionCopy _pl_prettyDescriptionWithIndent:1];
            *buf = 138412546;
            v21 = _pl_prettyDescription;
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

- (BOOL)changeCountExeedsThreshold:(unint64_t)threshold
{
  maximumChangeThreshold = [(PHPersistentChangeFetchOptions *)self->_fetchOptions maximumChangeThreshold];
  if (maximumChangeThreshold)
  {
    maximumChangeThreshold2 = [(PHPersistentChangeFetchOptions *)self->_fetchOptions maximumChangeThreshold];
    if (maximumChangeThreshold2)
    {
      v7 = maximumChangeThreshold2 >= threshold;
    }

    else
    {
      v7 = 1;
    }

    LOBYTE(maximumChangeThreshold) = !v7;
  }

  return maximumChangeThreshold;
}

- (void)recordTransaction:(id)transaction
{
  transactionCopy = transaction;
  context = self->_context;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PHChangeBuilder_recordTransaction___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
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

- (PHChangeBuilder)initWithManagedObjectContext:(id)context library:(id)library options:(id)options enumerationContext:(id)enumerationContext
{
  contextCopy = context;
  libraryCopy = library;
  optionsCopy = options;
  enumerationContextCopy = enumerationContext;
  v33.receiver = self;
  v33.super_class = PHChangeBuilder;
  v15 = [(PHChangeBuilder *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v16->_library, library);
    objc_storeStrong(&v16->_fetchOptions, options);
    objc_storeStrong(&v16->_enumerationContext, enumerationContext);
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

+ (id)persistentChangeWithManagedObjectContext:(id)context library:(id)library options:(id)options transaction:(id)transaction enumerationContext:(id)enumerationContext
{
  contextCopy = context;
  libraryCopy = library;
  optionsCopy = options;
  transactionCopy = transaction;
  enumerationContextCopy = enumerationContext;
  if (!transactionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHChangeBuilder.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];
  }

  token = [transactionCopy token];

  if (!token)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHChangeBuilder.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"transaction.token"}];
  }

  v28 = contextCopy;
  v29 = libraryCopy;
  v30 = optionsCopy;
  v31 = enumerationContextCopy;
  v32 = transactionCopy;
  v19 = transactionCopy;
  v20 = enumerationContextCopy;
  v21 = optionsCopy;
  v22 = libraryCopy;
  v23 = contextCopy;
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

+ (id)changeWithManagedObjectContext:(id)context library:(id)library options:(id)options transaction:(id)transaction
{
  contextCopy = context;
  libraryCopy = library;
  optionsCopy = options;
  transactionCopy = transaction;
  v9 = transactionCopy;
  v10 = optionsCopy;
  v11 = libraryCopy;
  v12 = contextCopy;
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