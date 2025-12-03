@interface PHChange
+ (BOOL)isPublicPHObjectChangeClass:(Class)class;
+ (id)handlerQueue;
+ (id)mergePersistedChanges:(id)changes;
+ (id)publicPHObjectChangeClasses;
+ (void)pl_simulateChangeWithAssetContainerList:(id)list photoLibrary:(id)library handler:(id)handler;
- (BOOL)_changedRelationshipsContainChangeForRelationshipNames:(id)names objectID:(id)d;
- (BOOL)anyUpdatedObjectsWithChangedAttributes:(unint64_t)attributes ofEntity:(id)entity;
- (BOOL)anyUpdatedObjectsWithChangedRelationships:(unint64_t)relationships ofEntity:(id)entity;
- (BOOL)assetCloudLocalStateChangedForAsset:(id)asset;
- (BOOL)assetsOrDayGroupAssetsRelationshipChangedForHighlightWithLocalIdentifier:(id)identifier;
- (BOOL)containsChangesForEntityClass:(Class)class;
- (BOOL)containsChangesForEntityWithManagedEntityName:(id)name;
- (BOOL)contentOrThumbnailChangedForAsset:(id)asset;
- (BOOL)contentOrThumbnailChangedForPHAssetOID:(id)d;
- (BOOL)customUserAssetsChangedForPHMemoryOID:(id)d;
- (BOOL)deferredProcessingNeededChangedForPHAssetOID:(id)d;
- (BOOL)faceRelationshipChangedForPersonWithLocalIdentifier:(id)identifier;
- (BOOL)favoriteStateChangedForPHAssetOID:(id)d;
- (BOOL)hasRelationshipChangesForLocalIdentifier:(id)identifier;
- (BOOL)hiddenStateChangedForPHAssetOID:(id)d;
- (BOOL)highlightGroupRelationshipChangedForHighlightWithLocalIdentifier:(id)identifier;
- (BOOL)intersectsWithDetectionCriteria:(id)criteria managedObjectContext:(id)context;
- (BOOL)keyAssetPrivateOrDayGroupKeyAssetPrivateChangedForHighlightWithLocalIdentifier:(id)identifier;
- (BOOL)keyAssetSharedOrDayGroupKeyAssetSharedChangedForHighlightWithLocalIdentifier:(id)identifier;
- (BOOL)keyAssetsChangedForPHAssetCollectionOID:(id)d;
- (BOOL)keyFaceChangedForPersonOID:(id)d;
- (BOOL)membersOrAssetContainmentForSocialGroupChangedWithLocalIdentifier:(id)identifier;
- (BOOL)momentRelationshipChangedForHighlightWithLocalIdentifier:(id)identifier;
- (BOOL)packedBadgeAttributesChangedForPHAssetOID:(id)d;
- (BOOL)personRelationshipChangedForFaceWithLocalIdentifier:(id)identifier;
- (BOOL)trashedStateChangedForObjectID:(id)d;
- (BOOL)userCuratedAssetsChangedForPHMemoryOID:(id)d;
- (BOOL)userFeedbackRelationshipChangedForObject:(id)object;
- (PHChange)init;
- (PHChange)initWithChangedIdentifiers:(id)identifiers unknownMergeEvent:(BOOL)event changeToken:(id)token library:(id)library;
- (PHChange)initWithInsertedObjectIDs:(id)ds updatedObjectIDs:(id)iDs deletedObjectIDs:(id)objectIDs deletedUuidsByObjectId:(id)id deletedPrimaryLabelCodesByOID:(id)d changedAttributesByOID:(id)iD changedRelationshipsByOID:(id)oID unknownMergeEvent:(BOOL)self0 changeToken:(id)self1 fetchOptions:(id)self2 library:(id)self3 managedObjectContext:(id)self4 enumerationContext:(id)self5;
- (PHFetchResultChangeDetails)changeDetailsForFetchResult:(PHFetchResult *)object;
- (PHObjectChangeDetails)changeDetailsForObject:(PHObject *)object;
- (id)_changedLocalIdentifiersForEntityClass:(Class)class context:(id)context;
- (id)_changedLocalIdentifiersWithPublicChangesForEntityClass:(Class)class context:(id)context;
- (id)_deletedLocalIdentifiersForEntityClass:(Class)class context:(id)context;
- (id)_deletedObjectIDsMatchingEntities:(id)entities;
- (id)_deletedObjectIDsMatchingGraphNodeContainerType:(Class)type;
- (id)_entityNamesForEntities:(id)entities;
- (id)_fetchCombinedPublicResultsMapForEntityClass:(Class)class predicate:(id)predicate context:(id)context;
- (id)_fetchGraphNodeIDsWithRequiredPrimaryLabelCode:(Class)code changedObjectIDs:(id)ds;
- (id)_fetchUUIDMapForObjectIDs:(id)ds entityClass:(Class)class context:(id)context;
- (id)_formatEncodedDictionary:(id)dictionary withDecodeBlock:(id)block;
- (id)_formatedDeletedUUidsByObjectId;
- (id)_insertedOrUpdatedObjectIDsMatchingEntities:(id)entities;
- (id)_pl_prettyDescriptionWithIndent:(int64_t)indent;
- (id)_predicateForPublicResultsWithEntityClass:(Class)class objectIDs:(id)ds;
- (id)_preloadChangeDetailsWithClearCacheForFetchResults:(id)results inManagedObjectContext:(id)context;
- (id)_preloadChangeDetailsWithRefetchForFetchResults:(id)results inManagedObjectContext:(id)context;
- (id)_relationshipNamesForObjectID:(id)d entityClass:(Class)class;
- (id)_requiredLabelCodeNumberForContainerClass:(Class)class;
- (id)_retrieveLockingRestrictedUUIDsForUnresolvedAssetObjectIDsFrom:(id)from minusResolved:(id)resolved;
- (id)changedLocalIdentifiersForEntityClass:(Class)class context:(id)context;
- (id)changedPropertyNamesForLocalIdentifier:(id)identifier entityClass:(Class)class;
- (id)changedPropertyNamesForObject:(id)object;
- (id)changedPropertyNamesForObjectID:(id)d entityClass:(Class)class;
- (id)changedRelationshipNamesForLocalIdentifier:(id)identifier entityClass:(Class)class;
- (id)changedRelationshipNamesForObject:(id)object;
- (id)description;
- (id)retrieveUUIDsForAssetObjectIDs:(id)ds filterPredicate:(id)predicate;
- (unint64_t)totalChangeCount;
- (void)_prepareCachedValuesForEntity:(id)entity;
- (void)_propagatePropertyNamesToSubentityNames:(id)names moc:(id)moc;
- (void)_updateChangeHandlingValuesIfNeeded:(id)needed seedOidsByFetchResult:(id)result context:(id)context;
- (void)preloadChangeDetailsForFetchResults:(id)results inManagedObjectContext:(id)context debugEvent:(id)event handler:(id)handler;
- (void)preloadSimulatedChangeDetailsForManualFetchResults:(id)results handler:(id)handler;
@end

@implementation PHChange

+ (id)handlerQueue
{
  if (handlerQueue_onceToken != -1)
  {
    dispatch_once(&handlerQueue_onceToken, &__block_literal_global_188);
  }

  v3 = handlerQueue_handlerQueue;

  return v3;
}

- (PHChange)init
{
  v14.receiver = self;
  v14.super_class = PHChange;
  v2 = [(PHChange *)&v14 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    changeHandlingMap = v2->_changeHandlingMap;
    v2->_changeHandlingMap = strongToStrongObjectsMapTable;

    v5 = objc_opt_new();
    changeDetailsForObjects = v2->_changeDetailsForObjects;
    v2->_changeDetailsForObjects = v5;

    v7 = objc_opt_new();
    collectionChangeDetailsForObjects = v2->_collectionChangeDetailsForObjects;
    v2->_collectionChangeDetailsForObjects = v7;

    v9 = objc_opt_new();
    objectIDsByLocalIdentifier = v2->_objectIDsByLocalIdentifier;
    v2->_objectIDsByLocalIdentifier = v9;

    v11 = dispatch_queue_create("PHChange", 0);
    changeDetailIsolation = v2->_changeDetailIsolation;
    v2->_changeDetailIsolation = v11;
  }

  return v2;
}

+ (void)pl_simulateChangeWithAssetContainerList:(id)list photoLibrary:(id)library handler:(id)handler
{
  handlerCopy = handler;
  v8 = [PHFetchResult pl_fetchResultForAssetContainerList:list photoLibrary:library];
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__PHChange_PHAdoptionUtilities__pl_simulateChangeWithAssetContainerList_photoLibrary_handler___block_invoke;
  v12[3] = &unk_1E75A5878;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [v9 preloadSimulatedChangeDetailsForManualFetchResults:v10 handler:v12];
}

- (id)_formatEncodedDictionary:(id)dictionary withDecodeBlock:(id)block
{
  blockCopy = block;
  v6 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  dictionary = [v6 dictionary];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __53__PHChange__formatEncodedDictionary_withDecodeBlock___block_invoke;
  v16 = &unk_1E75A5DC0;
  v17 = dictionary;
  v18 = blockCopy;
  v9 = dictionary;
  v10 = blockCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [v9 copy];

  return v11;
}

void __53__PHChange__formatEncodedDictionary_withDecodeBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v12 = [v6 pl_shortURI];
  v7 = [v5 unsignedLongLongValue];

  v8 = *(a1 + 40);
  v9 = [v6 entity];

  v10 = [v9 name];
  v11 = (*(v8 + 16))(v8, v7, v10);

  [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
}

- (id)_formatedDeletedUUidsByObjectId
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  deletedUuidsByObjectId = self->_deletedUuidsByObjectId;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PHChange__formatedDeletedUUidsByObjectId__block_invoke;
  v7[3] = &unk_1E75A5D98;
  v5 = dictionary;
  v8 = v5;
  [(NSDictionary *)deletedUuidsByObjectId enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __43__PHChange__formatedDeletedUUidsByObjectId__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 pl_shortURI];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (id)_pl_prettyDescriptionWithIndent:(int64_t)indent
{
  v3 = pl_result_with_autoreleasepool();

  return v3;
}

id __44__PHChange__pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69BE3C8] prettyMultiLineDescriptionBuilderWithObject:*(a1 + 32) indent:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) _pl_map:&__block_literal_global_200];
  [v2 appendName:@"insertedObjectIDs" object:v3];

  v4 = [*(*(a1 + 32) + 16) _pl_map:&__block_literal_global_200];
  [v2 appendName:@"changedObjectIDs" object:v4];

  v5 = [*(*(a1 + 32) + 24) _pl_map:&__block_literal_global_200];
  [v2 appendName:@"deletedObjectIDs" object:v5];

  v6 = [*(a1 + 32) _formatedDeletedUUidsByObjectId];
  [v2 appendName:@"deletedUuidsByObjectId" object:v6];

  v7 = [*(a1 + 32) _formatEncodedDictionary:*(*(a1 + 32) + 32) withDecodeBlock:&__block_literal_global_216];
  [v2 appendName:@"changedAttributesByOID" object:v7];
  v8 = [*(a1 + 32) _formatEncodedDictionary:*(*(a1 + 32) + 40) withDecodeBlock:&__block_literal_global_221];
  [v2 appendName:@"changedRelationshipsByOID" object:v8];
  [v2 appendName:@"unknownMergeEvent" typeCode:"B" value:*(a1 + 32) + 104];
  [v2 appendName:@"changeToken" typeCode:"@" value:*(a1 + 32) + 176];
  v9 = [v2 build];

  return v9;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PHChange;
  v2 = [(PHChange *)&v4 description];

  return v2;
}

- (id)retrieveUUIDsForAssetObjectIDs:(id)ds filterPredicate:(id)predicate
{
  v36 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  predicateCopy = predicate;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [dsCopy mutableCopy];
  if ([(NSDictionary *)self->_deletedUuidsByObjectId count])
  {
    v27 = predicateCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = dsCopy;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [(NSDictionary *)self->_deletedUuidsByObjectId objectForKeyedSubscript:v15, v27];
          if (v16)
          {
            [dictionary setObject:v16 forKeyedSubscript:v15];
            [v9 removeObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v12);
    }

    predicateCopy = v27;
  }

  if ([v9 count])
  {
    library = self->_library;
    if (library)
    {
      assetsdClient = [(PHPhotoLibrary *)library assetsdClient];
      photoKitClient = [assetsdClient photoKitClient];

      changeHandlingPhotoLibrary = [(PHPhotoLibrary *)self->_library changeHandlingPhotoLibrary];
      managedObjectContext = [changeHandlingPhotoLibrary managedObjectContext];

      allObjects = [v9 allObjects];
      v28 = 0;
      v23 = [photoKitClient getUUIDsForAssetObjectIDs:allObjects filterPredicate:predicateCopy context:managedObjectContext error:&v28];
      v24 = v28;

      if (v23)
      {
        [dictionary addEntriesFromDictionary:v23];
      }

      else
      {
        v25 = PLPhotoKitGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = v24;
          _os_log_impl(&dword_19C86F000, v25, OS_LOG_TYPE_ERROR, "Failed to retrieve UUIDs for changed object IDs %@", buf, 0xCu);
        }
      }
    }
  }

  return dictionary;
}

- (id)changedRelationshipNamesForLocalIdentifier:(id)identifier entityClass:(Class)class
{
  v6 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  if (v6)
  {
    [(PHChange *)self _relationshipNamesForObjectID:v6 entityClass:class];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v7 = ;

  return v7;
}

- (id)changedRelationshipNamesForObject:(id)object
{
  objectCopy = object;
  objectID = [objectCopy objectID];
  v6 = objc_opt_class();

  v7 = [(PHChange *)self _relationshipNamesForObjectID:objectID entityClass:v6];

  return v7;
}

- (id)_relationshipNamesForObjectID:(id)d entityClass:(Class)class
{
  dCopy = d;
  managedEntityName = [(objc_class *)class managedEntityName];
  v8 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:dCopy];

  v9 = [MEMORY[0x1E69BE6F8] relationshipNamesForIndexValues:objc_msgSend(v8 entity:{"unsignedLongLongValue"), managedEntityName}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PHChange__relationshipNamesForObjectID_entityClass___block_invoke;
  v13[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8lu32l8;
  v13[4] = class;
  v10 = [v9 _pl_map:v13];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];

  return v11;
}

- (id)changedPropertyNamesForLocalIdentifier:(id)identifier entityClass:(Class)class
{
  v6 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  if (v6)
  {
    [(PHChange *)self changedPropertyNamesForObjectID:v6 entityClass:class];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v7 = ;

  return v7;
}

- (id)changedPropertyNamesForObject:(id)object
{
  objectCopy = object;
  objectID = [objectCopy objectID];
  v6 = objc_opt_class();

  v7 = [(PHChange *)self changedPropertyNamesForObjectID:objectID entityClass:v6];

  return v7;
}

- (id)changedPropertyNamesForObjectID:(id)d entityClass:(Class)class
{
  dCopy = d;
  managedEntityName = [(objc_class *)class managedEntityName];
  v8 = [(NSDictionary *)self->_changedAttributesByOID objectForKeyedSubscript:dCopy];

  v9 = [MEMORY[0x1E69BE6F8] attributeNamesForIndexValues:objc_msgSend(v8 entity:{"unsignedLongLongValue"), managedEntityName}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PHChange_changedPropertyNamesForObjectID_entityClass___block_invoke;
  v13[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8lu32l8;
  v13[4] = class;
  v10 = [v9 _pl_map:v13];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];

  return v11;
}

- (id)_fetchCombinedPublicResultsMapForEntityClass:(Class)class predicate:(id)predicate context:(id)context
{
  v64[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v37 = [(objc_class *)class entityKeyForPropertyKey:@"uuid"];
  v8 = MEMORY[0x1E695DF70];
  objectIDDescription = [MEMORY[0x1E69BE570] objectIDDescription];
  v64[0] = objectIDDescription;
  v64[1] = v37;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v33 = [v8 arrayWithArray:v10];

  managedObjectSupportsTrashedState = [(objc_class *)class managedObjectSupportsTrashedState];
  if (managedObjectSupportsTrashedState)
  {
    [v33 addObject:@"trashedState"];
    v34 = @"trashedState";
  }

  else
  {
    v34 = 0;
  }

  v11 = MEMORY[0x1E695D5E0];
  managedEntityName = [(objc_class *)class managedEntityName];
  v13 = [v11 fetchRequestWithEntityName:managedEntityName];

  [v13 setPredicate:predicateCopy];
  [v13 setPropertiesToFetch:v33];
  [v13 setResultType:2];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__14836;
  v57 = __Block_byref_object_dispose__14837;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__14836;
  v51 = __Block_byref_object_dispose__14837;
  v52 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __75__PHChange__fetchCombinedPublicResultsMapForEntityClass_predicate_context___block_invoke;
  v42[3] = &unk_1E75A9D58;
  v45 = &v47;
  v14 = contextCopy;
  v43 = v14;
  v15 = v13;
  v44 = v15;
  v46 = &v53;
  [v14 performBlockAndWait:v42];
  v29 = v14;
  v30 = v15;
  if (v48[5])
  {
    objectIDDescription2 = [MEMORY[0x1E69BE570] objectIDDescription];
    name = [objectIDDescription2 name];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v48[5];
    v19 = [obj countByEnumeratingWithState:&v38 objects:v59 count:16];
    if (v19)
    {
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:name];
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          v25 = [v22 objectForKeyedSubscript:v37];
          [dictionary2 setObject:v25 forKeyedSubscript:@"uuid"];

          if (managedObjectSupportsTrashedState)
          {
            v26 = [v22 objectForKeyedSubscript:v34];
            [dictionary2 setObject:v26 forKeyedSubscript:@"trashed"];
          }

          [dictionary setObject:dictionary2 forKeyedSubscript:v23];
        }

        v19 = [obj countByEnumeratingWithState:&v38 objects:v59 count:16];
      }

      while (v19);
    }
  }

  else
  {
    name = PLPhotoKitGetLog();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      v27 = v54[5];
      *buf = 138412546;
      v61 = v27;
      v62 = 2112;
      v63 = v15;
      _os_log_impl(&dword_19C86F000, name, OS_LOG_TYPE_ERROR, "Fetch error: %@ while fetching objectIDs with fetch request %@", buf, 0x16u);
    }

    dictionary = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  objc_autoreleasePoolPop(context);

  return dictionary;
}

void __75__PHChange__fetchCombinedPublicResultsMapForEntityClass_predicate_context___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_predicateForPublicResultsWithEntityClass:(Class)class objectIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_opt_new();
  [v7 setIncludeAssetSourceTypes:1];
  if ([(objc_class *)class managedObjectSupportsTrashedState])
  {
    [v7 setIncludeTrashedAssets:1];
  }

  if ([(objc_class *)class managedObjectSupportsHiddenState])
  {
    [v7 setIncludeHiddenAssets:1];
  }

  if ([(objc_class *)class managedObjectSupportsBursts])
  {
    [v7 setIncludeAllBurstAssets:1];
  }

  if (dsCopy)
  {
    dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];
  }

  else
  {
    dsCopy = 0;
  }

  fetchType = [(objc_class *)class fetchType];
  v10 = [PHQuery queryForType:fetchType withBasePredicate:dsCopy inLibrary:self->_library];

  [v10 setFetchOptions:v7];
  v11 = [v10 effectivePredicateForPHClass:class includingBasePredicate:dsCopy != 0];

  return v11;
}

- (id)_changedLocalIdentifiersWithPublicChangesForEntityClass:(Class)class context:(id)context
{
  v54[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(objc_class *)class objectIDsMatchingEntityFromObjectIDs:self->_insertedObjectIDs context:contextCopy];
  v8 = [(objc_class *)class objectIDsMatchingEntityFromObjectIDs:self->_changedObjectIDs context:contextCopy];
  if (v7)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFA8] set];
  }

  v10 = v9;
  if (v8)
  {
    [v9 unionSet:v8];
  }

  v45 = v8;
  managedEntityName = [(objc_class *)class managedEntityName];
  entityName = [MEMORY[0x1E69BE470] entityName];
  v41 = managedEntityName;
  LODWORD(managedEntityName) = [managedEntityName isEqualToString:entityName];

  if (managedEntityName)
  {
    v13 = [(PHChange *)self _fetchGraphNodeIDsWithRequiredPrimaryLabelCode:class changedObjectIDs:v10];
    [v10 intersectSet:v13];
  }

  v40 = [(PHChange *)self _predicateForPublicResultsWithEntityClass:class objectIDs:v10];
  v14 = [PHChange _fetchCombinedPublicResultsMapForEntityClass:"_fetchCombinedPublicResultsMapForEntityClass:predicate:context:" predicate:class context:?];
  v42 = v10;
  if (-[objc_class isEqual:](class, "isEqual:", objc_opt_class()) && (v15 = [v14 count], v15 < objc_msgSend(v10, "count")) && (-[PHPhotoLibrary photoLibraryBundle](self->_library, "photoLibraryBundle"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "connectionType"), v16, v17 == 1))
  {
    v18 = MEMORY[0x1E695DFD8];
    allKeys = [v14 allKeys];
    v20 = [v18 setWithArray:allKeys];
    v21 = [(PHChange *)self _retrieveLockingRestrictedUUIDsForUnresolvedAssetObjectIDsFrom:v10 minusResolved:v20];
  }

  else
  {
    v21 = 0;
  }

  v22 = [MEMORY[0x1E695DFA8] set];
  v23 = [MEMORY[0x1E695DFA8] set];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__PHChange__changedLocalIdentifiersWithPublicChangesForEntityClass_context___block_invoke;
  aBlock[3] = &unk_1E75A5CC0;
  classCopy = class;
  v39 = v14;
  v47 = v39;
  selfCopy = self;
  v24 = v23;
  v49 = v24;
  v25 = v22;
  v50 = v25;
  v37 = v21;
  v51 = v37;
  v26 = _Block_copy(aBlock);
  v43 = v7;
  v27 = [v7 _pl_map:v26];
  v28 = [v45 _pl_map:v26];
  v44 = contextCopy;
  v29 = [(PHChange *)self _deletedLocalIdentifiersForEntityClass:class context:contextCopy];
  if ([v25 count])
  {
    if (v29)
    {
      v30 = [v29 setByAddingObjectsFromSet:{v25, v37, v39}];

      v29 = v30;
    }

    else
    {
      v29 = [MEMORY[0x1E695DFD8] setWithSet:{v25, v37, v39}];
    }
  }

  if ([v24 count])
  {
    if (v27)
    {
      v31 = [v27 setByAddingObjectsFromSet:v24];

      v27 = v31;
    }

    else
    {
      v27 = [MEMORY[0x1E695DFD8] setWithSet:v24];
    }
  }

  v53[0] = @"PHInsertedLocalIdentifiersKey";
  v32 = v27;
  if (!v27)
  {
    v32 = [MEMORY[0x1E695DFD8] set];
  }

  v54[0] = v32;
  v53[1] = @"PHUpdatedLocalIdentifiersKey";
  v33 = v28;
  if (!v28)
  {
    v33 = [MEMORY[0x1E695DFD8] set];
  }

  v54[1] = v33;
  v53[2] = @"PHDeletedLocalIdentifiersKey";
  v34 = v29;
  if (!v29)
  {
    v34 = [MEMORY[0x1E695DFD8] set];
  }

  v54[2] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
  if (v29)
  {
    if (v28)
    {
      goto LABEL_29;
    }

LABEL_34:

    if (v27)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  if (!v28)
  {
    goto LABEL_34;
  }

LABEL_29:
  if (v27)
  {
    goto LABEL_30;
  }

LABEL_35:

LABEL_30:

  return v35;
}

NSObject *__76__PHChange__changedLocalIdentifiersWithPublicChangesForEntityClass_context___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  v5 = v4;
  if (!v4 || ([v4 objectForKeyedSubscript:@"uuid"], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [a1[8] objectForKeyedSubscript:v3];
    if (v15)
    {
      v8 = [a1[9] localIdentifierWithUUID:v15];
      [*(a1[5] + 14) setObject:v3 forKeyedSubscript:v8];
      if (![a1[5] trashedStateChangedForPHAssetOID:v3])
      {
LABEL_15:

        v7 = 0;
        goto LABEL_16;
      }

      v16 = [*(a1[5] + 21) trashedIdentifiersAsDeletes];
      v17 = [v16 containsObject:v8];

      if ((v17 & 1) == 0)
      {
        [a1[7] addObject:v8];
      }
    }

    else
    {
      v8 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138412290;
        v22 = v3;
        _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "Could not fetch valid uuid for the objectID: %@", &v21, 0xCu);
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [a1[9] localIdentifierWithUUID:v6];
  if (v8)
  {
    [*(a1[5] + 14) setObject:v3 forKeyedSubscript:v8];
    if ([a1[5] trashedStateChangedForPHAssetOID:v3])
    {
      v9 = [v5 objectForKeyedSubscript:@"trashed"];
      v10 = [v9 integerValue];
      v11 = *(a1[5] + 21);
      if (v10)
      {
        v12 = [v11 trashedIdentifiersAsDeletes];
        v13 = [v12 containsObject:v8];

        if ((v13 & 1) == 0)
        {
          v14 = 7;
LABEL_21:
          [a1[v14] addObject:v8];
        }
      }

      else
      {
        v19 = [v11 untrashedIdentifiersAsInserts];
        v20 = [v19 containsObject:v8];

        if ((v20 & 1) == 0)
        {
          v14 = 6;
          goto LABEL_21;
        }
      }

      v8 = 0;
    }
  }

LABEL_16:

  return v8;
}

- (id)_retrieveLockingRestrictedUUIDsForUnresolvedAssetObjectIDsFrom:(id)from minusResolved:(id)resolved
{
  v23 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  resolvedCopy = resolved;
  v8 = [MEMORY[0x1E695DFA8] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = fromCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (([resolvedCopy containsObject:{v14, v18}] & 1) == 0 && (-[PHChange trashedStateChangedForPHAssetOID:](self, "trashedStateChangedForPHAssetOID:", v14) || -[PHChange hiddenStateChangedForPHAssetOID:](self, "hiddenStateChangedForPHAssetOID:", v14)))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(PHChange *)self _predicateForPublicResultsWithEntityClass:objc_opt_class() objectIDs:0];
  v16 = [(PHChange *)self retrieveUUIDsForAssetObjectIDs:v8 filterPredicate:v15];

  return v16;
}

- (id)_fetchUUIDMapForObjectIDs:(id)ds entityClass:(Class)class context:(id)context
{
  v58[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E695D5E0];
  managedEntityName = [(objc_class *)class managedEntityName];
  v10 = [v8 fetchRequestWithEntityName:managedEntityName];

  [v10 setResultType:2];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];
  [v10 setPredicate:dsCopy];

  v12 = [(objc_class *)class entityKeyForPropertyKey:@"uuid"];
  objectIDDescription = [MEMORY[0x1E69BE570] objectIDDescription];
  v58[0] = objectIDDescription;
  v58[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  [v10 setPropertiesToFetch:v14];

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__14836;
  v51 = __Block_byref_object_dispose__14837;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__14836;
  v45 = __Block_byref_object_dispose__14837;
  v46 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __58__PHChange__fetchUUIDMapForObjectIDs_entityClass_context___block_invoke;
  v36[3] = &unk_1E75A9D58;
  v39 = &v41;
  v15 = contextCopy;
  v37 = v15;
  v16 = v10;
  v38 = v16;
  v40 = &v47;
  [v15 performBlockAndWait:v36];
  v29 = v16;
  if (v42[5])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objectIDDescription2 = [MEMORY[0x1E69BE570] objectIDDescription];
    name = [objectIDDescription2 name];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v42[5];
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v53 count:16];
    if (v21)
    {
      v22 = *v33;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v32 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:v12];
          v26 = [v24 objectForKeyedSubscript:name];
          [dictionary setObject:v25 forKeyedSubscript:v26];
        }

        v21 = [v20 countByEnumeratingWithState:&v32 objects:v53 count:16];
      }

      while (v21);
    }
  }

  else
  {
    name = PLPhotoKitGetLog();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      v27 = v48[5];
      *buf = 138412546;
      v55 = v27;
      v56 = 2112;
      v57 = dsCopy;
      _os_log_impl(&dword_19C86F000, name, OS_LOG_TYPE_ERROR, "Fetch error: %@ while fetching objectIDs: %@", buf, 0x16u);
    }

    dictionary = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  objc_autoreleasePoolPop(context);

  return dictionary;
}

void __58__PHChange__fetchUUIDMapForObjectIDs_entityClass_context___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_fetchGraphNodeIDsWithRequiredPrimaryLabelCode:(Class)code changedObjectIDs:(id)ds
{
  dsCopy = ds;
  v7 = [(PHChange *)self _requiredLabelCodeNumberForContainerClass:code];
  if (v7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v8 = [MEMORY[0x1E695DFA8] set];
    context = self->_context;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__PHChange__fetchGraphNodeIDsWithRequiredPrimaryLabelCode_changedObjectIDs___block_invoke;
    v15[3] = &unk_1E75AAE68;
    v10 = dsCopy;
    v16 = v10;
    selfCopy = self;
    v20 = &v21;
    v18 = v7;
    v11 = v8;
    v19 = v11;
    [(NSManagedObjectContext *)context performBlockAndWait:v15];
    if (*(v22 + 24))
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = dsCopy;
  }

  return v13;
}

void __76__PHChange__fetchGraphNodeIDsWithRequiredPrimaryLabelCode_changedObjectIDs___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BE470] fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setResultType:2];
  v15[0] = @"primaryLabelCode";
  v15[1] = @"objectID";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v2 setPropertiesToFetch:v4];

  [v2 setFetchBatchSize:100];
  v5 = *(*(a1 + 40) + 128);
  v12 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error fetching graphNodePrimaryLabelCodeDictionaries: %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PHChange__fetchGraphNodeIDsWithRequiredPrimaryLabelCode_changedObjectIDs___block_invoke_170;
  v9[3] = &unk_1E75A6430;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v6 enumerateObjectsUsingBlock:v9];
}

void __76__PHChange__fetchGraphNodeIDsWithRequiredPrimaryLabelCode_changedObjectIDs___block_invoke_170(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKeyedSubscript:@"objectID"];
  v4 = [v3 objectForKeyedSubscript:@"primaryLabelCode"];

  if ([v4 isEqualToNumber:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (id)_changedLocalIdentifiersForEntityClass:(Class)class context:(id)context
{
  v34[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [(objc_class *)class objectIDsMatchingEntityFromObjectIDs:self->_insertedObjectIDs context:contextCopy];
  v8 = [(objc_class *)class objectIDsMatchingEntityFromObjectIDs:self->_changedObjectIDs context:contextCopy];
  if (v7)
  {
    v9 = [v7 mutableCopy];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFA8] set];
  }

  v10 = v9;
  if (v8)
  {
    [v9 unionSet:v8];
  }

  managedEntityName = [(objc_class *)class managedEntityName];
  entityName = [MEMORY[0x1E69BE470] entityName];
  v26 = managedEntityName;
  LODWORD(managedEntityName) = [managedEntityName isEqualToString:entityName];

  if (managedEntityName)
  {
    v13 = [(PHChange *)self _fetchGraphNodeIDsWithRequiredPrimaryLabelCode:class changedObjectIDs:v10];
    [v10 intersectSet:v13];
  }

  v14 = [(PHChange *)self _fetchUUIDMapForObjectIDs:v10 entityClass:class context:contextCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PHChange__changedLocalIdentifiersForEntityClass_context___block_invoke;
  aBlock[3] = &unk_1E75A5C98;
  selfCopy = self;
  classCopy = class;
  v24 = v14;
  v30 = v24;
  v15 = _Block_copy(aBlock);
  v28 = v7;
  v16 = [v7 _pl_map:v15];
  v27 = v8;
  v17 = [v8 _pl_map:v15];
  v18 = [(PHChange *)self _deletedLocalIdentifiersForEntityClass:class context:contextCopy];
  v33[0] = @"PHInsertedLocalIdentifiersKey";
  v19 = v16;
  if (!v16)
  {
    v19 = [MEMORY[0x1E695DFD8] set];
  }

  v34[0] = v19;
  v33[1] = @"PHUpdatedLocalIdentifiersKey";
  v20 = v17;
  if (!v17)
  {
    v20 = [MEMORY[0x1E695DFD8] set];
  }

  v34[1] = v20;
  v33[2] = @"PHDeletedLocalIdentifiersKey";
  v21 = v18;
  if (!v18)
  {
    v21 = [MEMORY[0x1E695DFD8] set];
  }

  v34[2] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:{3, v24}];
  if (v18)
  {
    if (v17)
    {
      goto LABEL_16;
    }

LABEL_21:

    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v16)
  {
    goto LABEL_17;
  }

LABEL_22:

LABEL_17:

  return v22;
}

id __59__PHChange__changedLocalIdentifiersForEntityClass_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [*(a1 + 48) localIdentifierWithUUID:v4];
    if (v5)
    {
      [*(*(a1 + 40) + 112) setObject:v3 forKeyedSubscript:v5];
    }
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Could not fetch valid uuid for the objectID: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (id)changedLocalIdentifiersForEntityClass:(Class)class context:(id)context
{
  contextCopy = context;
  if (!contextCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (![(PHPersistentChangeFetchOptions *)self->_fetchOptions excludesPrivateChanges])
  {
    v7 = [(PHChange *)self _changedLocalIdentifiersForEntityClass:class context:contextCopy];
    goto LABEL_8;
  }

  if (![objc_opt_class() isPublicPHObjectChangeClass:class])
  {
LABEL_6:
    v8 = MEMORY[0x1E695E0F8];
    goto LABEL_9;
  }

  v7 = [(PHChange *)self _changedLocalIdentifiersWithPublicChangesForEntityClass:class context:contextCopy];
LABEL_8:
  v8 = v7;
LABEL_9:

  return v8;
}

- (id)_deletedObjectIDsMatchingGraphNodeContainerType:(Class)type
{
  v4 = [(PHChange *)self _requiredLabelCodeNumberForContainerClass:type];
  v5 = v4;
  if (v4)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __60__PHChange__deletedObjectIDsMatchingGraphNodeContainerType___block_invoke;
    v12 = &unk_1E75A5C70;
    selfCopy = self;
    v14 = v4;
    v6 = _Block_copy(&v9);
    selfCopy = [(NSSet *)self->_deletedObjectIDs _pl_filter:v6, v9, v10, v11, v12, selfCopy];
  }

  else
  {
    selfCopy = [MEMORY[0x1E695DFD8] set];
  }

  return selfCopy;
}

uint64_t __60__PHChange__deletedObjectIDsMatchingGraphNodeContainerType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 152) objectForKey:a2];
  v4 = [v3 isEqualToNumber:*(a1 + 40)];

  return v4;
}

- (id)_requiredLabelCodeNumberForContainerClass:(Class)class
{
  v11 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == class)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = 1000;
LABEL_8:
    v5 = [v6 numberWithUnsignedInt:v7];
    goto LABEL_9;
  }

  if (objc_opt_class() == class)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = 1100;
    goto LABEL_8;
  }

  v4 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    classCopy = class;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "No node container class for node with class: %@", &v9, 0xCu);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_deletedLocalIdentifiersForEntityClass:(Class)class context:(id)context
{
  contextCopy = context;
  if (contextCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    managedEntityName = [(objc_class *)class managedEntityName];
    entityName = [MEMORY[0x1E69BE470] entityName];
    v9 = [managedEntityName isEqualToString:entityName];

    if (v9)
    {
      [(PHChange *)self _deletedObjectIDsMatchingGraphNodeContainerType:class];
    }

    else
    {
      [(objc_class *)class objectIDsMatchingEntityFromObjectIDs:self->_deletedObjectIDs context:contextCopy];
    }
    v11 = ;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__PHChange__deletedLocalIdentifiersForEntityClass_context___block_invoke;
    v14[3] = &unk_1E75A5C48;
    v14[4] = self;
    v14[5] = class;
    v12 = _Block_copy(v14);
    v10 = [v11 _pl_map:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  return v10;
}

id __59__PHChange__deletedLocalIdentifiersForEntityClass_context___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = [*(a1 + 40) localIdentifierWithUUID:v4];
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "nil deleted uuid for objectID: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)containsChangesForEntityClass:(Class)class
{
  v45 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    managedEntityName = [(objc_class *)class managedEntityName];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    insertedObjectIDs = [(PHChange *)self insertedObjectIDs];
    v7 = [insertedObjectIDs countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(insertedObjectIDs);
        }

        entity = [*(*(&v38 + 1) + 8 * v10) entity];
        name = [entity name];
        v13 = [name isEqualToString:managedEntityName];

        if (v13)
        {
          goto LABEL_28;
        }

        if (v8 == ++v10)
        {
          v8 = [insertedObjectIDs countByEnumeratingWithState:&v38 objects:v44 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    insertedObjectIDs = [(PHChange *)self deletedObjectIDs];
    v14 = [insertedObjectIDs countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
LABEL_12:
      v17 = 0;
      while (1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(insertedObjectIDs);
        }

        entity2 = [*(*(&v34 + 1) + 8 * v17) entity];
        name2 = [entity2 name];
        v20 = [name2 isEqualToString:managedEntityName];

        if (v20)
        {
          goto LABEL_28;
        }

        if (v15 == ++v17)
        {
          v15 = [insertedObjectIDs countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v15)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    insertedObjectIDs = [(PHChange *)self updatedObjectIDs];
    v21 = [insertedObjectIDs countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
LABEL_20:
      v24 = 0;
      while (1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(insertedObjectIDs);
        }

        entity3 = [*(*(&v30 + 1) + 8 * v24) entity];
        name3 = [entity3 name];
        v27 = [name3 isEqualToString:managedEntityName];

        if (v27)
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [insertedObjectIDs countByEnumeratingWithState:&v30 objects:v42 count:16];
          if (v22)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }

LABEL_28:

      return 1;
    }

LABEL_26:
  }

  return self->_unknownMergeEvent;
}

- (BOOL)containsChangesForEntityWithManagedEntityName:(id)name
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  insertedObjectIDs = [(PHChange *)self insertedObjectIDs];
  v6 = [insertedObjectIDs countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(insertedObjectIDs);
      }

      entity = [*(*(&v37 + 1) + 8 * v9) entity];
      name = [entity name];
      v12 = [name isEqualToString:nameCopy];

      if (v12)
      {
        goto LABEL_26;
      }

      if (v7 == ++v9)
      {
        v7 = [insertedObjectIDs countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  insertedObjectIDs = [(PHChange *)self deletedObjectIDs];
  v13 = [insertedObjectIDs countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v34;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v34 != v15)
      {
        objc_enumerationMutation(insertedObjectIDs);
      }

      entity2 = [*(*(&v33 + 1) + 8 * v16) entity];
      name2 = [entity2 name];
      v19 = [name2 isEqualToString:nameCopy];

      if (v19)
      {
        goto LABEL_26;
      }

      if (v14 == ++v16)
      {
        v14 = [insertedObjectIDs countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  insertedObjectIDs = [(PHChange *)self updatedObjectIDs];
  v20 = [insertedObjectIDs countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v30 != v22)
      {
        objc_enumerationMutation(insertedObjectIDs);
      }

      entity3 = [*(*(&v29 + 1) + 8 * v23) entity];
      name3 = [entity3 name];
      v26 = [name3 isEqualToString:nameCopy];

      if (v26)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [insertedObjectIDs countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v21)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

LABEL_26:

    unknownMergeEvent = 1;
    goto LABEL_27;
  }

LABEL_25:

  unknownMergeEvent = self->_unknownMergeEvent;
LABEL_27:

  return unknownMergeEvent;
}

- (BOOL)intersectsWithDetectionCriteria:(id)criteria managedObjectContext:(id)context
{
  criteriaCopy = criteria;
  contextCopy = context;
  v8 = contextCopy;
  if (criteriaCopy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__PHChange_intersectsWithDetectionCriteria_managedObjectContext___block_invoke;
    v15[3] = &unk_1E75A5C20;
    v15[4] = self;
    v9 = contextCopy;
    v16 = v9;
    v17 = &v18;
    [criteriaCopy enumerateEntitiesAndAttributeIndexesUsingBlock:v15];
    if (v19[3])
    {
      v10 = 1;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PHChange_intersectsWithDetectionCriteria_managedObjectContext___block_invoke_2;
      v12[3] = &unk_1E75A5C20;
      v12[4] = self;
      v13 = v9;
      v14 = &v18;
      [criteriaCopy enumerateEntitiesAndRelationshipIndexesBlock:v12];
      v10 = *(v19 + 24);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __65__PHChange_intersectsWithDetectionCriteria_managedObjectContext___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = [MEMORY[0x1E695D5B8] entityForName:a2 inManagedObjectContext:a1[5]];
  LOBYTE(a3) = [v5 anyUpdatedObjectsWithChangedAttributes:a3 ofEntity:v6];

  *(*(a1[6] + 8) + 24) = a3;
}

void __65__PHChange_intersectsWithDetectionCriteria_managedObjectContext___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = [MEMORY[0x1E695D5B8] entityForName:a2 inManagedObjectContext:a1[5]];
  LOBYTE(a3) = [v5 anyUpdatedObjectsWithChangedRelationships:a3 ofEntity:v6];

  *(*(a1[6] + 8) + 24) = a3;
}

- (PHFetchResultChangeDetails)changeDetailsForFetchResult:(PHFetchResult *)object
{
  v3 = object;
  v4 = v3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14836;
  v12 = __Block_byref_object_dispose__14837;
  v13 = 0;
  if (v3)
  {
    v7 = v3;
    pl_dispatch_sync();

    v3 = v9[5];
  }

  if ([(PHFetchResult *)v3 hasDiffs])
  {
    v5 = v9[5];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__PHChange_changeDetailsForFetchResult___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 40) changeHandlingKey];
    if (v5)
    {
      v6 = [*(*(a1 + 32) + 96) objectForKey:v5];
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 32);
        if (*(v8 + 104))
        {
          v9 = 0;
        }

        else
        {
          v9 = *(v8 + 64);
        }

        v10 = v9;
        v11 = v7;
        v12 = [[PHFetchResultChangeDetails alloc] initWithFetchResult:*(a1 + 40) currentFetchResult:v11 sortedChangedIdentifiers:v10 unknownMergeEvent:*(*(a1 + 32) + 104)];

        v13 = *(*(a1 + 48) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        [*(*(*(a1 + 48) + 8) + 40) calculateDiffs];
        [*(*(a1 + 32) + 80) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
      }
    }

    MEMORY[0x1EEE66BB8]();
  }
}

- (PHObjectChangeDetails)changeDetailsForObject:(PHObject *)object
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14836;
  v10 = __Block_byref_object_dispose__14837;
  v11 = 0;
  v5 = object;
  pl_dispatch_sync();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__PHChange_changeDetailsForObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  if (v2)
  {
    v10 = v2;
    v3 = [*(*(a1 + 40) + 72) objectForKey:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!*(*(*(a1 + 48) + 8) + 40) && (([*(*(a1 + 40) + 24) containsObject:v10] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 16), "containsObject:", v10) & 1) != 0 || *(*(a1 + 40) + 104) == 1))
    {
      v6 = [[PHObjectChangeDetails alloc] initWithPHObject:*(a1 + 32)];
      v7 = *(*(a1 + 48) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      [*(*(a1 + 40) + 72) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v10];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)deferredProcessingNeededChangedForPHAssetOID:(id)d
{
  v15[1] = *MEMORY[0x1E69E9840];
  changedAttributesByOID = self->_changedAttributesByOID;
  dCopy = d;
  v6 = [(NSDictionary *)changedAttributesByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = MEMORY[0x1E69BE6F8];
  v15[0] = @"deferredProcessingNeeded";
  v9 = 1;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  entity = [dCopy entity];

  name = [entity name];
  v13 = [v8 indexValueForAttributeNames:v10 entity:name];

  if ((v13 & unsignedLongLongValue) == 0)
  {
    return self->_unknownMergeEvent;
  }

  return v9;
}

- (BOOL)_changedRelationshipsContainChangeForRelationshipNames:(id)names objectID:(id)d
{
  changedRelationshipsByOID = self->_changedRelationshipsByOID;
  dCopy = d;
  namesCopy = names;
  v9 = [(NSDictionary *)changedRelationshipsByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v9 unsignedLongLongValue];

  v11 = MEMORY[0x1E69BE6F8];
  entity = [dCopy entity];

  name = [entity name];
  v14 = [v11 indexValueForRelationshipNames:namesCopy entity:name];

  return (v14 & unsignedLongLongValue) != 0 || self->_unknownMergeEvent;
}

- (BOOL)customUserAssetsChangedForPHMemoryOID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"customUserAssets";
  v4 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  LOBYTE(self) = [(PHChange *)self _changedRelationshipsContainChangeForRelationshipNames:v6 objectID:dCopy, v8, v9];

  return self;
}

- (BOOL)userCuratedAssetsChangedForPHMemoryOID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"userCuratedAssets";
  v4 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  LOBYTE(self) = [(PHChange *)self _changedRelationshipsContainChangeForRelationshipNames:v6 objectID:dCopy, v8, v9];

  return self;
}

- (BOOL)keyAssetsChangedForPHAssetCollectionOID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = @"keyAssets";
  v4 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  LOBYTE(self) = [(PHChange *)self _changedRelationshipsContainChangeForRelationshipNames:v6 objectID:dCopy, v8, v9];

  return self;
}

- (BOOL)assetCloudLocalStateChangedForAsset:(id)asset
{
  v25[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  objectID = [assetCopy objectID];
  cloudLocalStateProperties = [assetCopy cloudLocalStateProperties];

  cloudMasterObjectID = [cloudLocalStateProperties cloudMasterObjectID];

  if (cloudMasterObjectID)
  {
    v8 = [(NSDictionary *)self->_changedAttributesByOID objectForKeyedSubscript:objectID];
    unsignedLongLongValue = [v8 unsignedLongLongValue];

    v9 = [(NSDictionary *)self->_changedAttributesByOID objectForKeyedSubscript:cloudMasterObjectID];
    unsignedLongLongValue2 = [v9 unsignedLongLongValue];

    v10 = MEMORY[0x1E69BE6F8];
    v25[0] = @"cloudLocalState";
    unknownMergeEvent = 1;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    entity = [objectID entity];
    name = [entity name];
    v15 = [v10 indexValueForAttributeNames:v12 entity:name];

    v16 = MEMORY[0x1E69BE6F8];
    v24 = @"cloudLocalState";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    entity2 = [cloudMasterObjectID entity];
    name2 = [entity2 name];
    v20 = [v16 indexValueForAttributeNames:v17 entity:name2];

    if (!(v15 & unsignedLongLongValue | v20 & unsignedLongLongValue2))
    {
      unknownMergeEvent = self->_unknownMergeEvent;
    }
  }

  else
  {
    unknownMergeEvent = 0;
  }

  return unknownMergeEvent;
}

- (BOOL)packedBadgeAttributesChangedForPHAssetOID:(id)d
{
  v15[1] = *MEMORY[0x1E69E9840];
  changedAttributesByOID = self->_changedAttributesByOID;
  dCopy = d;
  v6 = [(NSDictionary *)changedAttributesByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = MEMORY[0x1E69BE6F8];
  v15[0] = @"packedBadgeAttributes";
  v9 = 1;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  entity = [dCopy entity];

  name = [entity name];
  v13 = [v8 indexValueForAttributeNames:v10 entity:name];

  if ((v13 & unsignedLongLongValue) == 0)
  {
    return self->_unknownMergeEvent;
  }

  return v9;
}

- (BOOL)favoriteStateChangedForPHAssetOID:(id)d
{
  v15[1] = *MEMORY[0x1E69E9840];
  changedAttributesByOID = self->_changedAttributesByOID;
  dCopy = d;
  v6 = [(NSDictionary *)changedAttributesByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = MEMORY[0x1E69BE6F8];
  v15[0] = @"favorite";
  v9 = 1;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  entity = [dCopy entity];

  name = [entity name];
  v13 = [v8 indexValueForAttributeNames:v10 entity:name];

  if ((v13 & unsignedLongLongValue) == 0)
  {
    return self->_unknownMergeEvent;
  }

  return v9;
}

- (BOOL)hiddenStateChangedForPHAssetOID:(id)d
{
  v15[1] = *MEMORY[0x1E69E9840];
  changedAttributesByOID = self->_changedAttributesByOID;
  dCopy = d;
  v6 = [(NSDictionary *)changedAttributesByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = MEMORY[0x1E69BE6F8];
  v15[0] = @"hidden";
  v9 = 1;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  entity = [dCopy entity];

  name = [entity name];
  v13 = [v8 indexValueForAttributeNames:v10 entity:name];

  if ((v13 & unsignedLongLongValue) == 0)
  {
    return self->_unknownMergeEvent;
  }

  return v9;
}

- (BOOL)trashedStateChangedForObjectID:(id)d
{
  changedAttributesByOID = self->_changedAttributesByOID;
  dCopy = d;
  v6 = [(NSDictionary *)changedAttributesByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = MEMORY[0x1E69BE6F8];
  entity = [dCopy entity];

  name = [entity name];
  v11 = [v8 indexValueForAttributeNames:&unk_1F102DF88 entity:name];

  return (v11 & unsignedLongLongValue) != 0 || self->_unknownMergeEvent;
}

- (BOOL)contentOrThumbnailChangedForAsset:(id)asset
{
  objectID = [asset objectID];
  LOBYTE(self) = [(PHChange *)self contentOrThumbnailChangedForPHAssetOID:objectID];

  return self;
}

- (BOOL)contentOrThumbnailChangedForPHAssetOID:(id)d
{
  dCopy = d;
  if (!self->_unknownMergeEvent)
  {
    v6 = [(NSDictionary *)self->_changedAttributesByOID objectForKeyedSubscript:dCopy];
    unsignedLongLongValue = [v6 unsignedLongLongValue];

    if (!unsignedLongLongValue)
    {
      goto LABEL_12;
    }

    if (contentOrThumbnailChangedForPHAssetOID__onceToken != -1)
    {
      dispatch_once(&contentOrThumbnailChangedForPHAssetOID__onceToken, &__block_literal_global_14911);
    }

    entity = [dCopy entity];
    name = [entity name];

    entityName = [MEMORY[0x1E69BE540] entityName];
    if ([name isEqualToString:entityName])
    {
    }

    else
    {
      entityName2 = [MEMORY[0x1E69BE540] entityName];
      v11 = [name isEqualToString:entityName2];

      if (!v11)
      {
        v12 = [MEMORY[0x1E69BE6F8] indexValueForAttributeNames:contentOrThumbnailChangedForPHAssetOID__genericAssetAttributeNames entity:name];
        goto LABEL_11;
      }
    }

    v12 = contentOrThumbnailChangedForPHAssetOID__genericAssetContentAttributes;
LABEL_11:
    LOBYTE(unsignedLongLongValue) = (v12 & unsignedLongLongValue) != 0;

    goto LABEL_12;
  }

  LOBYTE(unsignedLongLongValue) = 1;
LABEL_12:

  return unsignedLongLongValue;
}

void __51__PHChange_contentOrThumbnailChangedForPHAssetOID___block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"adjustmentTimestamp";
  v5[1] = @"thumbnailIndex";
  v5[2] = @"avalanchePickType";
  v5[3] = @"deferredProcessingNeeded";
  v5[4] = @"videoKeyFrameValue";
  v5[5] = @"playbackStyle";
  v5[6] = @"compactSCSensitivityAnalysis";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v1 = contentOrThumbnailChangedForPHAssetOID__genericAssetAttributeNames;
  contentOrThumbnailChangedForPHAssetOID__genericAssetAttributeNames = v0;

  v2 = MEMORY[0x1E69BE6F8];
  v3 = contentOrThumbnailChangedForPHAssetOID__genericAssetAttributeNames;
  v4 = [MEMORY[0x1E69BE540] entityName];
  contentOrThumbnailChangedForPHAssetOID__genericAssetContentAttributes = [v2 indexValueForAttributeNames:v3 entity:v4];
}

- (BOOL)keyFaceChangedForPersonOID:(id)d
{
  v15[1] = *MEMORY[0x1E69E9840];
  changedRelationshipsByOID = self->_changedRelationshipsByOID;
  dCopy = d;
  v6 = [(NSDictionary *)changedRelationshipsByOID objectForKeyedSubscript:dCopy];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = MEMORY[0x1E69BE6F8];
  v15[0] = @"keyFace";
  v9 = 1;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  entity = [dCopy entity];

  name = [entity name];
  v13 = [v8 indexValueForRelationshipNames:v10 entity:name];

  if ((v13 & unsignedLongLongValue) == 0)
  {
    return self->_unknownMergeEvent;
  }

  return v9;
}

- (id)_preloadChangeDetailsWithClearCacheForFetchResults:(id)results inManagedObjectContext:(id)context
{
  resultsCopy = results;
  [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v9 = v8 = resultsCopy;
  v5 = resultsCopy;
  pl_dispatch_sync();
  v6 = v9;

  return v9;
}

void __86__PHChange__preloadChangeDetailsWithClearCacheForFetchResults_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 80) objectForKey:{v7, v13}];
        if (!v8)
        {
          v9 = [v7 copyWithOptions:&unk_1F102E5F0];
          v10 = *(a1 + 40);
          if (*(v10 + 104))
          {
            v11 = 0;
          }

          else
          {
            v11 = *(v10 + 64);
          }

          v12 = v11;
          v8 = [[PHFetchResultChangeDetails alloc] initWithFetchResult:v7 currentFetchResult:v9 sortedChangedIdentifiers:v12 unknownMergeEvent:*(*(a1 + 40) + 104)];
          [*(*(a1 + 40) + 80) setObject:v8 forKey:v7];
          [*(a1 + 48) addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

- (id)_preloadChangeDetailsWithRefetchForFetchResults:(id)results inManagedObjectContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DFA8] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = resultsCopy;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        query = [v13 query];
        combinedQueryGroupKey = [query combinedQueryGroupKey];

        if (combinedQueryGroupKey)
        {
          array = [dictionary objectForKeyedSubscript:combinedQueryGroupKey];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKeyedSubscript:combinedQueryGroupKey];
          }

          [array addObject:v13];
        }

        if ([v13 collectionFetchType] == 4)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __83__PHChange__preloadChangeDetailsWithRefetchForFetchResults_inManagedObjectContext___block_invoke;
  v28[3] = &unk_1E75A5BF8;
  v29 = contextCopy;
  v30 = dictionary2;
  v18 = dictionary2;
  v19 = contextCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v28];
  v20 = [v8 mutableCopy];
  [v20 minusSet:v7];
  [(PHChange *)self _updateChangeHandlingValuesIfNeeded:v20 seedOidsByFetchResult:v18 context:v19];
  [(PHChange *)self _updateChangeHandlingValuesIfNeeded:v7 seedOidsByFetchResult:v18 context:v19];
  [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v27 = v26 = v8;
  v21 = v8;
  pl_dispatch_sync();
  v22 = v27;

  return v27;
}

uint64_t __83__PHChange__preloadChangeDetailsWithRefetchForFetchResults_inManagedObjectContext___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([v8 count] >= 2)
  {
    v6 = [PHFetchResult fetchObjectIDsForCombinableFetchResults:v8 inManagedObjectContext:*(a1 + 32)];
    if (v6)
    {
      [*(a1 + 40) addEntriesFromDictionary:v6];
    }

    else
    {
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

void __83__PHChange__preloadChangeDetailsWithRefetchForFetchResults_inManagedObjectContext___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [*(*(a1 + 40) + 80) objectForKey:v6];
        if (!v7)
        {
          v8 = [v6 changeHandlingKey];
          if (v8)
          {
            v9 = [*(*(a1 + 40) + 96) objectForKey:v8];
          }

          else
          {
            v9 = 0;
          }

          v10 = *(a1 + 40);
          if (*(v10 + 104))
          {
            v11 = 0;
          }

          else
          {
            v11 = *(v10 + 64);
          }

          v12 = v11;
          v13 = v9;
          v7 = [[PHFetchResultChangeDetails alloc] initWithFetchResult:v6 currentFetchResult:v13 sortedChangedIdentifiers:v12 unknownMergeEvent:*(*(a1 + 40) + 104)];

          [*(*(a1 + 40) + 80) setObject:v7 forKey:v6];
          [*(a1 + 48) addObject:v7];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

- (void)_updateChangeHandlingValuesIfNeeded:(id)needed seedOidsByFetchResult:(id)result context:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  resultCopy = result;
  contextCopy = context;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [neededCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(neededCopy);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        changeHandlingKey = [v14 changeHandlingKey];
        if (changeHandlingKey)
        {
          v16 = [(NSMapTable *)self->_changeHandlingMap objectForKey:changeHandlingKey];
          if (!v16)
          {
            v17 = [resultCopy objectForKeyedSubscript:v14];
            v16 = [v14 changeHandlingValueUsingSeedOids:v17 withChange:self usingManagedObjectContext:contextCopy];
            [(NSMapTable *)self->_changeHandlingMap setObject:v16 forKey:changeHandlingKey];
          }
        }
      }

      v11 = [neededCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)_propagatePropertyNamesToSubentityNames:(id)names moc:(id)moc
{
  v32 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  mocCopy = moc;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = namesCopy;
  obj = [namesCopy allKeys];
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v26 = 0;
        v13 = PLSafeEntityForNameInManagedObjectContext();
        v14 = v26;
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PHChange.m" lineNumber:427 description:{@"Error fetching entityName:%@, moc:%@ error:%@", v11, mocCopy, v15}];
        }

        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __56__PHChange__propagatePropertyNamesToSubentityNames_moc___block_invoke;
        v23[3] = &unk_1E75A5BD0;
        v24 = v6;
        v25 = v12;
        v17 = v12;
        [v13 ph_enumerateSelfAndSubentities:v23];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }
}

void __56__PHChange__propagatePropertyNamesToSubentityNames_moc___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v5 = [v3 name];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [*(a1 + 40) unionSet:v6];
  }

  v7 = *(a1 + 32);
  v8 = [v15 name];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v12 = v11;

  [v12 unionSet:*(a1 + 40)];
  v13 = *(a1 + 32);
  v14 = [v15 name];
  [v13 setObject:v12 forKeyedSubscript:v14];
}

- (id)_deletedObjectIDsMatchingEntities:(id)entities
{
  v4 = [(PHChange *)self _entityNamesForEntities:entities];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v4 count])
  {
    deletedObjectIDs = [(PHChange *)self deletedObjectIDs];
    _addOIDsWithEntityNames(v5, deletedObjectIDs, v4);
  }

  return v5;
}

- (id)_insertedOrUpdatedObjectIDsMatchingEntities:(id)entities
{
  v4 = [(PHChange *)self _entityNamesForEntities:entities];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v4 count])
  {
    insertedObjectIDs = [(PHChange *)self insertedObjectIDs];
    _addOIDsWithEntityNames(v5, insertedObjectIDs, v4);

    updatedObjectIDs = [(PHChange *)self updatedObjectIDs];
    _addOIDsWithEntityNames(v5, updatedObjectIDs, v4);
  }

  return v5;
}

- (id)_entityNamesForEntities:(id)entities
{
  v19 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = entitiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __36__PHChange__entityNamesForEntities___block_invoke;
        v12[3] = &unk_1E75A5BA8;
        v13 = v4;
        [v10 ph_enumerateSelfAndSubentities:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

void __36__PHChange__entityNamesForEntities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  [v2 addObject:v3];
}

- (void)preloadChangeDetailsForFetchResults:(id)results inManagedObjectContext:(id)context debugEvent:(id)event handler:(id)handler
{
  v121 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  eventCopy = event;
  handlerCopy = handler;
  context = objc_autoreleasePoolPush();
  v9 = PLChangeHandlingGetLog();
  v10 = os_signpost_id_generate(v9);

  v11 = v9;
  v12 = v11;
  spid = v10;
  v73 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 134217984;
    selfCopy4 = [resultsCopy count];
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PreloadChangeDetails", "fetch results: %tu", buf, 0xCu);
  }

  v74 = v12;

  v85 = [MEMORY[0x1E695DFA8] set];
  v81 = [MEMORY[0x1E695DFA8] set];
  selfCopy5 = self;
  if (self->_unknownMergeEvent)
  {
    [v85 unionSet:resultsCopy];
    goto LABEL_56;
  }

  v82 = PFIsPhotosAppAnyPlatform();
  v86 = MEMORY[0x19EAF1E50]();
  v78 = [MEMORY[0x1E695DFA8] set];
  v79 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = resultsCopy;
  v14 = [obj countByEnumeratingWithState:&v102 objects:v120 count:16];
  if (v14)
  {
    v88 = *v103;
    do
    {
      v15 = 0;
      do
      {
        if (*v103 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v102 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 possibleChangesForChange:self propertiesFetchResult:0];
        if (v18)
        {
          if (v18 != 8 || ([v16 fetchedObjectIDs], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count") == 0, v19, v20))
          {
            query = [v16 query];
            fetchRequest = [query fetchRequest];
            entity = [fetchRequest entity];

            name = [entity name];
            filteringKeys = [query filteringKeys];
            v26 = filteringKeys;
            LOBYTE(v27) = v86;
            if (v82)
            {
              v27 = [filteringKeys containsObject:@"activeLibraryScopeParticipationState"] | v86;
            }

            if (contextCopy && v26 && (v27 & 1) != 0 && ([MEMORY[0x1E69BE6F8] includesToManyRelationship:v26 entity:name] & 1) == 0 && !objc_msgSend(query, "requiresFullRefetchForChange:", self))
            {
              name2 = [entity name];
              v29 = [v80 objectForKeyedSubscript:name2];

              if (!v29)
              {
                v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                name3 = [entity name];
                [v80 setObject:v29 forKeyedSubscript:name3];
              }

              [v29 unionSet:v26];
              [v78 addObject:v16];
              [v79 addObject:entity];
            }

            else
            {
              [v85 addObject:v16];
            }
          }

          else
          {
            [v81 addObject:v16];
          }
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v14 != v15);
      v31 = [obj countByEnumeratingWithState:&v102 objects:v120 count:16];
      v14 = v31;
    }

    while (v31);
  }

  v32 = [(PHChange *)self _insertedOrUpdatedObjectIDsMatchingEntities:v79];
  v87 = [(PHChange *)self _deletedObjectIDsMatchingEntities:v79];
  v89 = v32;
  if ([v32 count] >= 0x7D1)
  {
    v33 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v32 count];
      *buf = 134218754;
      selfCopy4 = self;
      v108 = 2048;
      v109 = v34;
      v110 = 2048;
      v111 = 2000;
      v112 = 2112;
      v113 = v32;
      _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_INFO, "PHChange:%p: preloadChangeDetails too many objects for second pass: %lu > %ld, refetching. objects:%@", buf, 0x2Au);
    }

    [v85 unionSet:v78];
    goto LABEL_55;
  }

  if ([v32 count] || objc_msgSend(v87, "count"))
  {
    [(PHChange *)self _propagatePropertyNamesToSubentityNames:v80 moc:contextCopy, spid];
    v35 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      _pl_prettyDescription = [v80 _pl_prettyDescription];
      *buf = 134218242;
      selfCopy4 = self;
      v108 = 2112;
      v109 = _pl_prettyDescription;
      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEBUG, "PHChange:%p: preloadChangeDetails propertiesToFetchByEntityName:%@", buf, 0x16u);
    }

    allObjects = [v89 allObjects];
    library = [(PHChange *)self library];
    v39 = [PHPropertyFetchingHelper fetchPropertiesForObjectIDs:allObjects propertyNamesByEntityName:v80 photoLibrary:library];

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v40 = v78;
    v41 = 0;
    v42 = [v40 countByEnumeratingWithState:&v98 objects:v119 count:16];
    if (!v42)
    {
LABEL_52:

      v50 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = [v85 count];
        v52 = [v81 count];
        *buf = 134218752;
        selfCopy4 = self;
        v108 = 2048;
        v109 = v51;
        v110 = 2048;
        v111 = v52;
        v112 = 2048;
        v113 = v41;
        _os_log_impl(&dword_19C86F000, v50, OS_LOG_TYPE_INFO, "PHChange:%p: preloadChangeDetails refetch:%lu clearCache:%lu avoidedRefetch:%lu", buf, 0x2Au);
      }

      goto LABEL_55;
    }

    v43 = *v99;
LABEL_40:
    v44 = 0;
    while (1)
    {
      if (*v99 != v43)
      {
        objc_enumerationMutation(v40);
      }

      v45 = *(*(&v98 + 1) + 8 * v44);
      v46 = objc_autoreleasePoolPush();
      v47 = [v45 possibleChangesForChange:self propertiesFetchResult:v39];
      if (v47 == 8)
      {
        fetchedObjectIDs = [v45 fetchedObjectIDs];
        v49 = [fetchedObjectIDs count] == 0;

        if (v49)
        {
LABEL_49:
          [v85 addObject:v45];
          goto LABEL_50;
        }

        [v81 addObject:v45];
      }

      else if (v47)
      {
        goto LABEL_49;
      }

      ++v41;
LABEL_50:
      objc_autoreleasePoolPop(v46);
      if (v42 == ++v44)
      {
        v42 = [v40 countByEnumeratingWithState:&v98 objects:v119 count:16];
        if (!v42)
        {
          goto LABEL_52;
        }

        goto LABEL_40;
      }
    }
  }

LABEL_55:

  selfCopy5 = self;
LABEL_56:
  v53 = [v85 copy];
  refetchedFetchResults = selfCopy5->_refetchedFetchResults;
  selfCopy5->_refetchedFetchResults = v53;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [eventCopy setPreloadTimestamp:?];
  [eventCopy setFetchResultsToRefetchCount:{objc_msgSend(v85, "count")}];
  [eventCopy setFetchResultsToClearCount:{objc_msgSend(v81, "count")}];
  v55 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v81, "count") + objc_msgSend(v85, "count")}];
  v56 = [(PHChange *)self _preloadChangeDetailsWithRefetchForFetchResults:v85 inManagedObjectContext:contextCopy];
  [v55 addObjectsFromArray:v56];

  v57 = [(PHChange *)self _preloadChangeDetailsWithClearCacheForFetchResults:v81 inManagedObjectContext:contextCopy];
  [v55 addObjectsFromArray:v57];

  v96 = 0;
  v97 = 0;
  v95 = 0;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v58 = v55;
  v59 = [v58 countByEnumeratingWithState:&v91 objects:v118 count:16];
  if (v59)
  {
    v60 = *v92;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v92 != v60)
        {
          objc_enumerationMutation(v58);
        }

        [*(*(&v91 + 1) + 8 * i) calculateDiffsAndAccumulateInsertedCount:&v97 updatedCount:&v96 deletedCount:&v95];
      }

      v59 = [v58 countByEnumeratingWithState:&v91 objects:v118 count:16];
    }

    while (v59);
  }

  v62 = v74;
  v63 = v62;
  if (v73 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v62))
  {
    v64 = [v58 count];
    v65 = v96;
    v66 = v97;
    v67 = v95;
    v68 = [v85 count];
    v69 = [v81 count];
    *buf = 134219264;
    selfCopy4 = v64;
    v108 = 2048;
    v109 = v66;
    v110 = 2048;
    v111 = v65;
    v112 = 2048;
    v113 = v67;
    v114 = 2048;
    v115 = v68;
    v116 = 2048;
    v117 = v69;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v63, OS_SIGNPOST_INTERVAL_END, spida, "PreloadChangeDetails", "change details: %tu, inserted: %tu, updated: %tu, deleted: %tu, refetch: %tu, clear: %tu", buf, 0x3Eu);
  }

  handlerCopy[2](handlerCopy, self);
  objc_autoreleasePoolPop(context);
}

- (void)preloadSimulatedChangeDetailsForManualFetchResults:(id)results handler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __71__PHChange_preloadSimulatedChangeDetailsForManualFetchResults_handler___block_invoke;
  v20 = &unk_1E75AB248;
  v21 = resultsCopy;
  selfCopy = self;
  v23 = array;
  v9 = resultsCopy;
  pl_dispatch_sync();
  v10 = +[PHChange handlerQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__PHChange_preloadSimulatedChangeDetailsForManualFetchResults_handler___block_invoke_3;
  v13[3] = &unk_1E75AA870;
  selfCopy2 = self;
  v16 = handlerCopy;
  v14 = v23;
  v11 = handlerCopy;
  v12 = v23;
  dispatch_async(v10, v13);
}

void __71__PHChange_preloadSimulatedChangeDetailsForManualFetchResults_handler___block_invoke(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__PHChange_preloadSimulatedChangeDetailsForManualFetchResults_handler___block_invoke_2;
  v3[3] = &unk_1E75A5B80;
  v1 = a1[4];
  v2 = a1[6];
  v3[4] = a1[5];
  v4 = v2;
  [v1 enumerateObjectsUsingBlock:v3];
}

uint64_t __71__PHChange_preloadSimulatedChangeDetailsForManualFetchResults_handler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) calculateDiffs];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

void __71__PHChange_preloadSimulatedChangeDetailsForManualFetchResults_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 80) objectForKey:?];
  if (!v3)
  {
    v3 = [[PHFetchResultChangeDetails alloc] initWithManualFetchResultAfterChanges:v4];
    [*(*(a1 + 32) + 80) setObject:v3 forKey:v4];
    [*(a1 + 40) addObject:v3];
  }
}

- (BOOL)anyUpdatedObjectsWithChangedRelationships:(unint64_t)relationships ofEntity:(id)entity
{
  entityCopy = entity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PHChange *)selfCopy _prepareCachedValuesForEntity:entityCopy];
  updatedObjectsChangedRelationshipsByEntityName = selfCopy->_updatedObjectsChangedRelationshipsByEntityName;
  name = [entityCopy name];
  v10 = [(NSMutableDictionary *)updatedObjectsChangedRelationshipsByEntityName objectForKeyedSubscript:name];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  objc_sync_exit(selfCopy);
  return (unsignedLongLongValue & relationships) != 0;
}

- (BOOL)anyUpdatedObjectsWithChangedAttributes:(unint64_t)attributes ofEntity:(id)entity
{
  entityCopy = entity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PHChange *)selfCopy _prepareCachedValuesForEntity:entityCopy];
  updatedObjectsChangedAttributesByEntityName = selfCopy->_updatedObjectsChangedAttributesByEntityName;
  name = [entityCopy name];
  v10 = [(NSMutableDictionary *)updatedObjectsChangedAttributesByEntityName objectForKeyedSubscript:name];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  objc_sync_exit(selfCopy);
  return (unsignedLongLongValue & attributes) != 0;
}

- (void)_prepareCachedValuesForEntity:(id)entity
{
  v29 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  name = [entityCopy name];
  v6 = [(NSMutableDictionary *)self->_updatedObjectsChangedAttributesByEntityName objectForKeyedSubscript:name];

  if (!v6)
  {
    v22 = name;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_changedObjectIDs;
    v7 = [(NSSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          entity = [v13 entity];
          v15 = [entity isKindOfEntity:entityCopy];

          if (v15)
          {
            v16 = [(NSDictionary *)self->_changedAttributesByOID objectForKeyedSubscript:v13];
            unsignedLongLongValue = [v16 unsignedLongLongValue];

            v10 |= unsignedLongLongValue;
            v18 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v13];
            unsignedLongLongValue2 = [v18 unsignedLongLongValue];

            v9 |= unsignedLongLongValue2;
          }
        }

        v8 = [(NSSet *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
    name = v22;
    [(NSMutableDictionary *)self->_updatedObjectsChangedAttributesByEntityName setObject:v20 forKeyedSubscript:v22];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    [(NSMutableDictionary *)self->_updatedObjectsChangedRelationshipsByEntityName setObject:v21 forKeyedSubscript:v22];
  }
}

- (unint64_t)totalChangeCount
{
  insertedObjectIDs = [(PHChange *)self insertedObjectIDs];
  v4 = [insertedObjectIDs count];

  updatedObjectIDs = [(PHChange *)self updatedObjectIDs];
  v6 = [updatedObjectIDs count];

  deletedObjectIDs = [(PHChange *)self deletedObjectIDs];
  v8 = [deletedObjectIDs count];

  return v6 + v4 + v8;
}

- (PHChange)initWithInsertedObjectIDs:(id)ds updatedObjectIDs:(id)iDs deletedObjectIDs:(id)objectIDs deletedUuidsByObjectId:(id)id deletedPrimaryLabelCodesByOID:(id)d changedAttributesByOID:(id)iD changedRelationshipsByOID:(id)oID unknownMergeEvent:(BOOL)self0 changeToken:(id)self1 fetchOptions:(id)self2 library:(id)self3 managedObjectContext:(id)self4 enumerationContext:(id)self5
{
  dsCopy = ds;
  iDsCopy = iDs;
  iDsCopy2 = iDs;
  objectIDsCopy = objectIDs;
  idCopy = id;
  dCopy = d;
  iDCopy = iD;
  oIDCopy = oID;
  tokenCopy = token;
  optionsCopy = options;
  libraryCopy = library;
  contextCopy = context;
  enumerationContextCopy = enumerationContext;
  v24 = [(PHChange *)self init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_insertedObjectIDs, ds);
    objc_storeStrong(&v25->_changedObjectIDs, iDsCopy);
    objc_storeStrong(&v25->_deletedObjectIDs, objectIDs);
    v26 = [idCopy copy];
    deletedUuidsByObjectId = v25->_deletedUuidsByObjectId;
    v25->_deletedUuidsByObjectId = v26;

    v28 = [dCopy copy];
    deletedPrimaryLabelCodesByObjectId = v25->_deletedPrimaryLabelCodesByObjectId;
    v25->_deletedPrimaryLabelCodesByObjectId = v28;

    objc_storeStrong(&v25->_changedAttributesByOID, iD);
    objc_storeStrong(&v25->_changedRelationshipsByOID, oID);
    v25->_unknownMergeEvent = event;
    objc_storeStrong(&v25->_changeToken, token);
    objc_storeStrong(&v25->_fetchOptions, options);
    objc_storeStrong(&v25->_context, context);
    objc_storeStrong(&v25->_enumerationContext, enumerationContext);
    objc_storeStrong(&v25->_library, library);
    v30 = objc_alloc(MEMORY[0x1E69BE808]);
    allObjects = [(NSSet *)v25->_changedObjectIDs allObjects];
    v32 = [v30 initWithChangedObjects:allObjects];
    sortedChangedObjectIDs = v25->_sortedChangedObjectIDs;
    v25->_sortedChangedObjectIDs = v32;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    updatedObjectsChangedAttributesByEntityName = v25->_updatedObjectsChangedAttributesByEntityName;
    v25->_updatedObjectsChangedAttributesByEntityName = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    updatedObjectsChangedRelationshipsByEntityName = v25->_updatedObjectsChangedRelationshipsByEntityName;
    v25->_updatedObjectsChangedRelationshipsByEntityName = dictionary2;
  }

  return v25;
}

- (PHChange)initWithChangedIdentifiers:(id)identifiers unknownMergeEvent:(BOOL)event changeToken:(id)token library:(id)library
{
  v10 = *MEMORY[0x1E695D320];
  libraryCopy = library;
  tokenCopy = token;
  identifiersCopy = identifiers;
  v14 = [identifiersCopy objectForKeyedSubscript:v10];
  v15 = [identifiersCopy objectForKeyedSubscript:*MEMORY[0x1E695D4C8]];
  v16 = [identifiersCopy objectForKeyedSubscript:*MEMORY[0x1E695D2F0]];
  v17 = [identifiersCopy objectForKeyedSubscript:*MEMORY[0x1E69BF120]];
  v18 = [identifiersCopy objectForKeyedSubscript:*MEMORY[0x1E69BF128]];

  LOBYTE(v21) = event;
  v19 = [(PHChange *)self initWithInsertedObjectIDs:v14 updatedObjectIDs:v15 deletedObjectIDs:v16 deletedUuidsByObjectId:0 deletedPrimaryLabelCodesByOID:0 changedAttributesByOID:v17 changedRelationshipsByOID:v18 unknownMergeEvent:v21 changeToken:tokenCopy fetchOptions:0 library:libraryCopy managedObjectContext:0 enumerationContext:0];

  return v19;
}

+ (id)mergePersistedChanges:(id)changes
{
  v69 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if ([changesCopy count])
  {
    if ([changesCopy count] == 1)
    {
      firstObject = [changesCopy firstObject];
    }

    else
    {
      v58 = [MEMORY[0x1E695DFA8] set];
      v52 = [MEMORY[0x1E695DFA8] set];
      v57 = [MEMORY[0x1E695DFA8] set];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      lastObject = [changesCopy lastObject];
      changeToken = [lastObject changeToken];

      lastObject2 = [changesCopy lastObject];
      context = [lastObject2 context];

      lastObject3 = [changesCopy lastObject];
      fetchOptions = [lastObject3 fetchOptions];

      lastObject4 = [changesCopy lastObject];
      library = [lastObject4 library];

      lastObject5 = [changesCopy lastObject];
      enumerationContext = [lastObject5 enumerationContext];

      context = objc_autoreleasePoolPush();
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v47 = changesCopy;
      obj = changesCopy;
      v12 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v64;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v64 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v63 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            if (([v16 hasIncrementalChanges] & 1) == 0)
            {
              changeToken2 = [v16 changeToken];

              context2 = [v16 context];

              objc_autoreleasePoolPop(v17);
              v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);

              v28 = v38;
              v39 = objc_alloc_init(MEMORY[0x1E695DF90]);

              v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
              dictionary6 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v53 = 1;
              changeToken = changeToken2;
              v35 = context2;
              v34 = v40;
              dictionary3 = v39;
              v57 = v28;
              dictionary5 = dictionary6;
              v58 = v28;
              goto LABEL_22;
            }

            insertedObjectIDs = [v16 insertedObjectIDs];
            [v58 unionSet:insertedObjectIDs];

            updatedObjectIDs = [v16 updatedObjectIDs];
            [v52 unionSet:updatedObjectIDs];

            deletedObjectIDs = [v16 deletedObjectIDs];
            [v57 unionSet:deletedObjectIDs];

            changedAttributesByOID = [v16 changedAttributesByOID];
            __34__PHChange_mergePersistedChanges___block_invoke(changedAttributesByOID, dictionary);
            changedRelationshipsByOID = [v16 changedRelationshipsByOID];
            __34__PHChange_mergePersistedChanges___block_invoke(changedRelationshipsByOID, dictionary2);
            deletedUuidsByObjectId = [v16 deletedUuidsByObjectId];
            [dictionary3 addEntriesFromDictionary:deletedUuidsByObjectId];

            deletedPrimaryLabelCodesByObjectId = [v16 deletedPrimaryLabelCodesByObjectId];
            [dictionary4 addEntriesFromDictionary:deletedPrimaryLabelCodesByObjectId];

            objc_autoreleasePoolPop(v17);
          }

          v13 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v25 = [v58 copy];
      [v58 minusSet:v57];
      [v52 minusSet:v57];
      [v52 minusSet:v58];
      obja = v25;
      [v57 minusSet:v25];
      dictionary5 = [MEMORY[0x1E695DF90] dictionary];
      dictionary6 = [MEMORY[0x1E695DF90] dictionary];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v28 = v52;
      v29 = [v28 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v60;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v60 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v59 + 1) + 8 * j);
            __34__PHChange_mergePersistedChanges___block_invoke_3(v33, dictionary, dictionary5);
            __34__PHChange_mergePersistedChanges___block_invoke_3(v33, dictionary2, dictionary6);
          }

          v30 = [v28 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v30);
      }

      v53 = 0;
      v34 = dictionary4;
      v35 = context;
LABEL_22:
      v55 = v34;
      objc_autoreleasePoolPop(context);
      LOBYTE(v42) = v53;
      firstObject = [[PHChange alloc] initWithInsertedObjectIDs:v58 updatedObjectIDs:v28 deletedObjectIDs:v57 deletedUuidsByObjectId:dictionary3 deletedPrimaryLabelCodesByOID:v34 changedAttributesByOID:dictionary5 changedRelationshipsByOID:dictionary6 unknownMergeEvent:v42 changeToken:changeToken fetchOptions:fetchOptions library:library managedObjectContext:v35 enumerationContext:enumerationContext];

      changesCopy = v47;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

void __34__PHChange_mergePersistedChanges___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__PHChange_mergePersistedChanges___block_invoke_2;
  v5[3] = &unk_1E75A5D08;
  v6 = v3;
  v4 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];
}

void __34__PHChange_mergePersistedChanges___block_invoke_3(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [a2 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 |= [*(*(&v15 + 1) + 8 * i) unsignedLongLongValue];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
    [v6 setObject:v14 forKeyedSubscript:v5];
  }
}

void __34__PHChange_mergePersistedChanges___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addObject:v5];
}

void __24__PHChange_handlerQueue__block_invoke()
{
  attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  if (PLIsForegroundApplication())
  {
    v0 = QOS_CLASS_USER_INITIATED;
  }

  else
  {
    v0 = QOS_CLASS_UTILITY;
  }

  v1 = dispatch_queue_attr_make_with_qos_class(attr, v0, 0);
  v2 = dispatch_queue_create("PHChange-queue", v1);
  v3 = handlerQueue_handlerQueue;
  handlerQueue_handlerQueue = v2;
}

+ (BOOL)isPublicPHObjectChangeClass:(Class)class
{
  publicPHObjectChangeClasses = [self publicPHObjectChangeClasses];
  LOBYTE(class) = [publicPHObjectChangeClasses containsObject:class];

  return class;
}

+ (id)publicPHObjectChangeClasses
{
  pl_dispatch_once();
  v2 = publicPHObjectChangeClasses_pl_once_object_29;

  return v2;
}

uint64_t __39__PHChange_publicPHObjectChangeClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  publicPHObjectChangeClasses_pl_once_object_29 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)membersOrAssetContainmentForSocialGroupChangedWithLocalIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  entity = [v4 entity];
  name = [entity name];

  v7 = [(NSDictionary *)self->_changedAttributesByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  v9 = MEMORY[0x1E69BE6F8];
  v18[0] = @"changeFlag2";
  unknownMergeEvent = 1;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v12 = [v9 indexValueForAttributeNames:v11 entity:name];

  v13 = MEMORY[0x1E69BE6F8];
  v17 = @"changeFlag4";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v15 = [v13 indexValueForAttributeNames:v14 entity:name];

  if (((v12 | v15) & unsignedLongLongValue) == 0)
  {
    unknownMergeEvent = self->_unknownMergeEvent;
  }

  return unknownMergeEvent;
}

- (BOOL)userFeedbackRelationshipChangedForObject:(id)object
{
  v14[1] = *MEMORY[0x1E69E9840];
  objectID = [object objectID];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:objectID];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"userFeedbacks";
  unknownMergeEvent = 1;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  entity = [objectID entity];
  name = [entity name];
  v12 = [v7 indexValueForRelationshipNames:v9 entity:name];

  if ((v12 & unsignedLongLongValue) == 0)
  {
    unknownMergeEvent = self->_unknownMergeEvent;
  }

  return unknownMergeEvent;
}

- (BOOL)keyAssetSharedOrDayGroupKeyAssetSharedChangedForHighlightWithLocalIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"keyAssetShared";
  v14[1] = @"dayGroupKeyAssetShared";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  entity = [v4 entity];
  name = [entity name];
  v11 = [v7 indexValueForRelationshipNames:v8 entity:name];

  v12 = (v11 & unsignedLongLongValue) != 0 || self->_unknownMergeEvent;
  return v12;
}

- (BOOL)keyAssetPrivateOrDayGroupKeyAssetPrivateChangedForHighlightWithLocalIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"keyAssetPrivate";
  v14[1] = @"dayGroupKeyAssetPrivate";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  entity = [v4 entity];
  name = [entity name];
  v11 = [v7 indexValueForRelationshipNames:v8 entity:name];

  v12 = (v11 & unsignedLongLongValue) != 0 || self->_unknownMergeEvent;
  return v12;
}

- (BOOL)assetsOrDayGroupAssetsRelationshipChangedForHighlightWithLocalIdentifier:(id)identifier
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"assets";
  v14[1] = @"dayGroupAssets";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  entity = [v4 entity];
  name = [entity name];
  v11 = [v7 indexValueForRelationshipNames:v8 entity:name];

  v12 = (v11 & unsignedLongLongValue) != 0 || self->_unknownMergeEvent;
  return v12;
}

- (BOOL)highlightGroupRelationshipChangedForHighlightWithLocalIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"childDayGroupPhotosHighlights";
  unknownMergeEvent = 1;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  entity = [v4 entity];
  name = [entity name];
  v12 = [v7 indexValueForRelationshipNames:v9 entity:name];

  if ((v12 & unsignedLongLongValue) == 0)
  {
    unknownMergeEvent = self->_unknownMergeEvent;
  }

  return unknownMergeEvent;
}

- (BOOL)momentRelationshipChangedForHighlightWithLocalIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"moments";
  unknownMergeEvent = 1;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  entity = [v4 entity];
  name = [entity name];
  v12 = [v7 indexValueForRelationshipNames:v9 entity:name];

  if ((v12 & unsignedLongLongValue) == 0)
  {
    unknownMergeEvent = self->_unknownMergeEvent;
  }

  return unknownMergeEvent;
}

- (BOOL)personRelationshipChangedForFaceWithLocalIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"personForFace";
  unknownMergeEvent = 1;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  entity = [v4 entity];
  name = [entity name];
  v12 = [v7 indexValueForRelationshipNames:v9 entity:name];

  if ((v12 & unsignedLongLongValue) == 0)
  {
    unknownMergeEvent = self->_unknownMergeEvent;
  }

  return unknownMergeEvent;
}

- (BOOL)faceRelationshipChangedForPersonWithLocalIdentifier:(id)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  v7 = MEMORY[0x1E69BE6F8];
  v14[0] = @"detectedFaces";
  unknownMergeEvent = 1;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  entity = [v4 entity];
  name = [entity name];
  v12 = [v7 indexValueForRelationshipNames:v9 entity:name];

  if ((v12 & unsignedLongLongValue) == 0)
  {
    unknownMergeEvent = self->_unknownMergeEvent;
  }

  return unknownMergeEvent;
}

- (BOOL)hasRelationshipChangesForLocalIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_objectIDsByLocalIdentifier objectForKeyedSubscript:identifier];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_changedRelationshipsByOID objectForKeyedSubscript:v4];
    unsignedLongLongValue = [v5 unsignedLongLongValue];

    if (unsignedLongLongValue)
    {
      unknownMergeEvent = 1;
    }

    else
    {
      unknownMergeEvent = self->_unknownMergeEvent;
    }
  }

  else
  {
    unknownMergeEvent = 0;
  }

  return unknownMergeEvent;
}

@end