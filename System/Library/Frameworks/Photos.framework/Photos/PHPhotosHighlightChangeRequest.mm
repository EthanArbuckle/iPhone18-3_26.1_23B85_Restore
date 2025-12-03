@interface PHPhotosHighlightChangeRequest
+ (id)changeRequestForPhotosHighlight:(id)highlight;
+ (void)deletePhotosHighlights:(id)highlights;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (NSDate)lastEnrichmentDate;
- (NSString)dateDescription;
- (NSString)dateDescriptionMixed;
- (NSString)dateDescriptionShared;
- (NSString)smartDescription;
- (NSString)smartDescriptionMixed;
- (NSString)smartDescriptionShared;
- (NSString)verboseSmartDescription;
- (NSString)verboseSmartDescriptionMixed;
- (NSString)verboseSmartDescriptionShared;
- (PHPhotosHighlightChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHPhotosHighlightChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (double)promotionScore;
- (id)_existentAssetObjectIDs;
- (id)_existentCuratedAssetObjectIDsForCurationType:(unsigned __int16)type;
- (id)_mutableAssetObjectIDsAndUUIDsForCurationType:(unsigned __int16)type;
- (id)_mutableKeyAssetObjectIDsAndUUIDsForShared:(BOOL)shared userEdited:(BOOL)edited;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)initForNewObject;
- (id)placeholderForCreatedPhotosHighlight;
- (signed)enrichmentVersion;
- (unint64_t)mood;
- (unsigned)_externalCurationTypeForInternalCurationType:(unsigned __int16)type;
- (unsigned)_internalCurationTypeForExternalCurationType:(unsigned __int16)type;
- (unsigned)enrichmentState;
- (unsigned)kind;
- (unsigned)mixedSharingCompositionKeyAssetRelationship;
- (unsigned)visibilityState;
- (unsigned)visibilityStateMixed;
- (unsigned)visibilityStateShared;
- (void)_initializeCurationHelpersWithHelper:(id)helper xpcDict:(id)dict;
- (void)clearCurationWithType:(unsigned __int16)type;
- (void)didEnrichHighlight;
- (void)encodeToXPCDict:(id)dict;
- (void)setAssets:(id)assets forCurationType:(unsigned __int16)type;
- (void)setDateDescription:(id)description;
- (void)setDateDescriptionMixed:(id)mixed;
- (void)setDateDescriptionShared:(id)shared;
- (void)setEnrichmentState:(unsigned __int16)state;
- (void)setEnrichmentVersion:(signed __int16)version;
- (void)setKeyAssetPrivate:(id)private userEdited:(BOOL)edited;
- (void)setKeyAssetShared:(id)shared userEdited:(BOOL)edited;
- (void)setKind:(unsigned __int16)kind;
- (void)setLastEnrichmentDate:(id)date;
- (void)setMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship;
- (void)setMood:(unint64_t)mood;
- (void)setPromotionScore:(double)score;
- (void)setSmartDescription:(id)description;
- (void)setSmartDescriptionMixed:(id)mixed;
- (void)setSmartDescriptionShared:(id)shared;
- (void)setVerboseSmartDescription:(id)description;
- (void)setVerboseSmartDescriptionMixed:(id)mixed;
- (void)setVerboseSmartDescriptionShared:(id)shared;
- (void)setVisibilityState:(unsigned __int16)state;
- (void)setVisibilityStateMixed:(unsigned __int16)mixed;
- (void)setVisibilityStateShared:(unsigned __int16)shared;
@end

@implementation PHPhotosHighlightChangeRequest

- (id)_existentCuratedAssetObjectIDsForCurationType:(unsigned __int16)type
{
  typeCopy = type;
  originalHighlight = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  v6 = originalHighlight;
  if (originalHighlight)
  {
    photoLibrary = [originalHighlight photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setHighlightCurationType:{-[PHPhotosHighlightChangeRequest _externalCurationTypeForInternalCurationType:](self, "_externalCurationTypeForInternalCurationType:", typeCopy)}];
    [librarySpecificFetchOptions setIncludeHiddenAssets:1];
    [librarySpecificFetchOptions setIncludeTrashedAssets:1];
    v9 = [PHQuery queryForCuratedAssetsInPhotosHighlight:v6 options:librarySpecificFetchOptions];
  }

  else
  {
    v9 = 0;
  }

  v10 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v9];

  return v10;
}

- (id)_existentAssetObjectIDs
{
  originalHighlight = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  v3 = originalHighlight;
  if (originalHighlight)
  {
    photoLibrary = [originalHighlight photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setHighlightCurationType:0];
    v6 = [PHQuery queryForAssetsInAssetCollection:v3 options:librarySpecificFetchOptions];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v6];

  return v7;
}

- (id)_mutableAssetObjectIDsAndUUIDsForCurationType:(unsigned __int16)type
{
  typeCopy = type;
  curationHelpersByCurationType = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  v7 = [curationHelpersByCurationType objectForKeyedSubscript:v6];

  if (v7)
  {
    originalObjectIDs = [v7 originalObjectIDs];

    if (!originalObjectIDs)
    {
      v9 = [(PHPhotosHighlightChangeRequest *)self _existentCuratedAssetObjectIDsForCurationType:typeCopy];
      [v7 setOriginalObjectIDs:v9];
    }

    mutableObjectIDsAndUUIDs = [v7 mutableObjectIDsAndUUIDs];

    if (!mutableObjectIDsAndUUIDs)
    {
      array = [MEMORY[0x1E695DF70] array];
      [v7 setMutableObjectIDsAndUUIDs:array];
    }

    mutableObjectIDsAndUUIDs2 = [v7 mutableObjectIDsAndUUIDs];
  }

  else
  {
    mutableObjectIDsAndUUIDs2 = 0;
  }

  return mutableObjectIDsAndUUIDs2;
}

- (id)_mutableKeyAssetObjectIDsAndUUIDsForShared:(BOOL)shared userEdited:(BOOL)edited
{
  sharedCopy = shared;
  v6 = [(PHPhotosHighlightChangeRequest *)self originalHighlight:shared];
  if (v6)
  {
    originalHighlight = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
    kind = [originalHighlight kind];
  }

  else
  {
    kind = [(PHPhotosHighlightChangeRequest *)self kind];
  }

  v9 = 0;
  if (kind > 1)
  {
    if (kind == 2)
    {
      v10 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__yearKeyAssetHelper;
      v11 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__yearKeyAssetSharedHelper;
    }

    else
    {
      if (kind != 3)
      {
        goto LABEL_16;
      }

      v10 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__dayGroupKeyAssetHelper;
      v11 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__dayGroupKeyAssetSharedHelper;
    }
  }

  else if (kind)
  {
    if (kind != 1)
    {
      goto LABEL_16;
    }

    v10 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__monthKeyAssetHelper;
    v11 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__monthKeyAssetSharedHelper;
  }

  else
  {
    v10 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__dayKeyAssetHelper;
    v11 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__dayKeyAssetSharedHelper;
  }

  if (sharedCopy)
  {
    v10 = v11;
  }

  v9 = *(&self->super.super.isa + *v10);
LABEL_16:
  originalObjectIDs = [v9 originalObjectIDs];

  if (!originalObjectIDs)
  {
    [v9 setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [v9 mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    originalObjectIDs2 = [v9 originalObjectIDs];
    v15 = [originalObjectIDs2 mutableCopy];
    [v9 setMutableObjectIDsAndUUIDs:v15];
  }

  mutableObjectIDsAndUUIDs2 = [v9 mutableObjectIDsAndUUIDs];

  return mutableObjectIDsAndUUIDs2;
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v80 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  libraryCopy = library;
  helper = [(PHChangeRequest *)self helper];
  v72 = 0;
  v11 = [helper applyMutationsToManagedObject:objectCopy error:&v72];
  v12 = v72;

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];

  if (!v11)
  {
    v22 = 0;
    if (!error)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v56 = libraryCopy;
  errorCopy = error;
  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    isMutated = [(PHChangeRequest *)self isMutated];
    *buf = 67109378;
    v77 = isMutated;
    v78 = 2112;
    v79 = mutations;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
  }

  v59 = mutations;

  v58 = objectCopy;
  v17 = objectCopy;
  selfCopy = self;
  curationHelpersByCurationType = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [curationHelpersByCurationType allKeys];
  v19 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v69;
    v22 = 1;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v68 + 1) + 8 * i);
        if ([v24 unsignedShortValue])
        {
          v25 = [curationHelpersByCurationType objectForKeyedSubscript:v24];
          [v25 setAllowsInsert:1];
          [v25 setAllowsRemove:1];
          entityName = [MEMORY[0x1E69BE540] entityName];
          [v25 setDestinationEntityName:entityName];

          [v25 setIsDestinationObjectValid:&__block_literal_global_149];
          relationshipName = [v25 relationshipName];
          v28 = [v17 mutableSetValueForKey:relationshipName];

          v67 = v12;
          v22 = [v25 applyMutationsToManagedObject:v17 unorderedMutableChildren:v28 error:&v67];
          v29 = v67;

          v12 = v29;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v20);
  }

  else
  {
    v22 = 1;
  }

  v30 = [v59 objectForKey:@"enrichmentState"];
  if (v30)
  {
  }

  else
  {
    v31 = [v59 objectForKey:@"enrichmentVersion"];

    if (!v31)
    {
      goto LABEL_21;
    }
  }

  photoLibrary = [v17 photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  backgroundJobService = [libraryServicesManager backgroundJobService];
  photoLibrary2 = [v17 photoLibrary];
  maskForFeatureAvailability = [MEMORY[0x1E69BE2B8] maskForFeatureAvailability];
  [backgroundJobService signalBackgroundProcessingNeededOnLibrary:photoLibrary2 workerTypes:maskForFeatureAvailability];

LABEL_21:
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obja = [(PHPhotosHighlightChangeRequest *)selfCopy dayKeyAssetHelper];
  v73[0] = obja;
  dayKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)selfCopy dayKeyAssetSharedHelper];
  v73[1] = dayKeyAssetSharedHelper;
  monthKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)selfCopy monthKeyAssetHelper];
  v73[2] = monthKeyAssetHelper;
  monthKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)selfCopy monthKeyAssetSharedHelper];
  v73[3] = monthKeyAssetSharedHelper;
  yearKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)selfCopy yearKeyAssetHelper];
  v73[4] = yearKeyAssetHelper;
  yearKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)selfCopy yearKeyAssetSharedHelper];
  v73[5] = yearKeyAssetSharedHelper;
  dayGroupKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)selfCopy dayGroupKeyAssetHelper];
  v73[6] = dayGroupKeyAssetHelper;
  dayGroupKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)selfCopy dayGroupKeyAssetSharedHelper];
  v73[7] = dayGroupKeyAssetSharedHelper;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:8];

  v44 = [v43 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v64;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(v43);
        }

        if (v22)
        {
          v48 = *(*(&v63 + 1) + 8 * j);
          mutableObjectIDsAndUUIDs = [v48 mutableObjectIDsAndUUIDs];

          if (mutableObjectIDsAndUUIDs)
          {
            [v48 setAllowsInsert:1];
            entityName2 = [MEMORY[0x1E69BE540] entityName];
            [v48 setDestinationEntityName:entityName2];

            [v48 setIsDestinationObjectValid:&__block_literal_global_147];
            v62 = v12;
            v22 = [v48 applyMutationsToManagedObjectToOneRelationship:v17 error:&v62];
            v51 = v62;

            v12 = v51;
          }

          else
          {
            v22 = 1;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      v45 = [v43 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v45);
  }

  error = errorCopy;
  objectCopy = v58;
  libraryCopy = v56;
  mutations = v59;
  if (errorCopy)
  {
LABEL_34:
    if ((v22 & 1) == 0)
    {
      v52 = v12;
      *error = v12;
    }
  }

LABEL_36:

  return v22 & 1;
}

- (void)didEnrichHighlight
{
  originalHighlight = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  highlightVersion = [originalHighlight highlightVersion];

  [(PHPhotosHighlightChangeRequest *)self setEnrichmentVersion:highlightVersion];
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE6B8];
  managedObjectContext = [library managedObjectContext];
  v8 = [v6 insertNewPhotosHighlightInManagedObjectContext:managedObjectContext error:error];

  uuid = [(PHChangeRequest *)self uuid];
  [v8 setUuid:uuid];

  managedObjectContext2 = [v8 managedObjectContext];
  v18[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = 0;
  v12 = [managedObjectContext2 obtainPermanentIDsForObjects:v11 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = v8;
  }

  else if (error)
  {
    v15 = v13;
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)placeholderForCreatedPhotosHighlight
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)setAssets:(id)assets forCurationType:(unsigned __int16)type
{
  typeCopy = type;
  assetsCopy = assets;
  v6 = [(PHPhotosHighlightChangeRequest *)self _internalCurationTypeForExternalCurationType:typeCopy];
  curationHelpersByCurationType = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
  v9 = [curationHelpersByCurationType objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assetsCopy];
    if (v10)
    {
      [(PHChangeRequest *)self didMutate];
      v11 = [(PHPhotosHighlightChangeRequest *)self _mutableAssetObjectIDsAndUUIDsForCurationType:v6];
      [v11 setArray:v10];
    }
  }
}

- (void)clearCurationWithType:(unsigned __int16)type
{
  v4 = [(PHPhotosHighlightChangeRequest *)self _internalCurationTypeForExternalCurationType:type];
  curationHelpersByCurationType = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v4];
  v8 = [curationHelpersByCurationType objectForKeyedSubscript:v6];

  if (v8)
  {
    [(PHChangeRequest *)self didMutate];
    v7 = [(PHPhotosHighlightChangeRequest *)self _mutableAssetObjectIDsAndUUIDsForCurationType:v4];
    [v7 removeAllObjects];
  }
}

- (unsigned)_externalCurationTypeForInternalCurationType:(unsigned __int16)type
{
  typeCopy = type;
  originalHighlight = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  if (originalHighlight)
  {
    originalHighlight2 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
    kind = [originalHighlight2 kind];
  }

  else
  {
    kind = [(PHPhotosHighlightChangeRequest *)self kind];
  }

  v8 = typeCopy == 5;
  if (typeCopy == 4)
  {
    v8 = 2;
  }

  if (kind != 3)
  {
    v8 = 0;
  }

  if (kind >= 3)
  {
    return v8;
  }

  else
  {
    return typeCopy;
  }
}

- (unsigned)_internalCurationTypeForExternalCurationType:(unsigned __int16)type
{
  typeCopy = type;
  originalHighlight = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  if (originalHighlight)
  {
    originalHighlight2 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
    kind = [originalHighlight2 kind];
  }

  else
  {
    kind = [(PHPhotosHighlightChangeRequest *)self kind];
  }

  if (typeCopy == 1)
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  if (typeCopy == 2)
  {
    v8 = 4;
  }

  if (kind != 3)
  {
    v8 = 0;
  }

  if (kind >= 3)
  {
    return v8;
  }

  else
  {
    return typeCopy;
  }
}

- (void)setKeyAssetShared:(id)shared userEdited:(BOOL)edited
{
  editedCopy = edited;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = PLObjectIDOrUUIDFromPHObject(shared);
  v7 = [(PHPhotosHighlightChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDsForShared:1 userEdited:editedCopy];
  v8 = v7;
  if (v6)
  {
    v10[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v8 addObjectsFromArray:v9];
  }

  else
  {
    [v7 removeAllObjects];
  }
}

- (void)setKeyAssetPrivate:(id)private userEdited:(BOOL)edited
{
  editedCopy = edited;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = PLObjectIDOrUUIDFromPHObject(private);
  [(PHChangeRequest *)self didMutate];
  v7 = [(PHPhotosHighlightChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDsForShared:0 userEdited:editedCopy];
  v8 = v7;
  if (v6)
  {
    v10[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v8 addObjectsFromArray:v9];
  }

  else
  {
    [v7 removeAllObjects];
  }
}

- (void)setVisibilityStateMixed:(unsigned __int16)mixed
{
  mixedCopy = mixed;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:mixedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"visibilityStateMixed"];
}

- (unsigned)visibilityStateMixed
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"visibilityStateMixed"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setVisibilityStateShared:(unsigned __int16)shared
{
  sharedCopy = shared;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:sharedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"visibilityStateShared"];
}

- (unsigned)visibilityStateShared
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"visibilityStateShared"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)relationship
{
  relationshipCopy = relationship;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:relationshipCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"mixedSharingCompositionKeyAssetRelationship"];
}

- (unsigned)mixedSharingCompositionKeyAssetRelationship
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"mixedSharingCompositionKeyAssetRelationship"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setVerboseSmartDescriptionMixed:(id)mixed
{
  mixedCopy = mixed;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (mixedCopy)
  {
    [mutations setObject:mixedCopy forKeyedSubscript:@"verboseSmartDescriptionMixed"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"verboseSmartDescriptionMixed"];
  }

  else
  {
    [mutations removeObjectForKey:@"verboseSmartDescriptionMixed"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"verboseSmartDescriptionMixed"];
  }
}

- (NSString)verboseSmartDescriptionMixed
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"verboseSmartDescriptionMixed"];

  return v5;
}

- (void)setVerboseSmartDescriptionShared:(id)shared
{
  sharedCopy = shared;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (sharedCopy)
  {
    [mutations setObject:sharedCopy forKeyedSubscript:@"verboseSmartDescriptionShared"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"verboseSmartDescriptionShared"];
  }

  else
  {
    [mutations removeObjectForKey:@"verboseSmartDescriptionShared"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"verboseSmartDescriptionShared"];
  }
}

- (NSString)verboseSmartDescriptionShared
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"verboseSmartDescriptionShared"];

  return v5;
}

- (void)setSmartDescriptionMixed:(id)mixed
{
  mixedCopy = mixed;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (mixedCopy)
  {
    [mutations setObject:mixedCopy forKeyedSubscript:@"subtitleMixed"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"subtitleMixed"];
  }

  else
  {
    [mutations removeObjectForKey:@"subtitleMixed"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"subtitleMixed"];
  }
}

- (NSString)smartDescriptionMixed
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subtitleMixed"];

  return v5;
}

- (void)setSmartDescriptionShared:(id)shared
{
  sharedCopy = shared;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (sharedCopy)
  {
    [mutations setObject:sharedCopy forKeyedSubscript:@"subtitleShared"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"subtitleShared"];
  }

  else
  {
    [mutations removeObjectForKey:@"subtitleShared"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"subtitleShared"];
  }
}

- (NSString)smartDescriptionShared
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subtitleShared"];

  return v5;
}

- (void)setDateDescriptionMixed:(id)mixed
{
  mixedCopy = mixed;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (mixedCopy)
  {
    [mutations setObject:mixedCopy forKeyedSubscript:@"titleMixed"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"titleMixed"];
  }

  else
  {
    [mutations removeObjectForKey:@"titleMixed"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"titleMixed"];
  }
}

- (NSString)dateDescriptionMixed
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"titleMixed"];

  return v5;
}

- (void)setDateDescriptionShared:(id)shared
{
  sharedCopy = shared;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (sharedCopy)
  {
    [mutations setObject:sharedCopy forKeyedSubscript:@"titleShared"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"titleShared"];
  }

  else
  {
    [mutations removeObjectForKey:@"titleShared"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"titleShared"];
  }
}

- (NSString)dateDescriptionShared
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"titleShared"];

  return v5;
}

- (void)setKind:(unsigned __int16)kind
{
  kindCopy = kind;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:kindCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"kind"];
}

- (unsigned)kind
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"kind"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setVisibilityState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"visibilityState"];
}

- (unsigned)visibilityState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"visibilityState"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setEnrichmentVersion:(signed __int16)version
{
  versionCopy = version;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:versionCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"enrichmentVersion"];
}

- (signed)enrichmentVersion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"enrichmentVersion"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setMood:(unint64_t)mood
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mood];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"mood"];
}

- (unint64_t)mood
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"mood"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setLastEnrichmentDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"lastEnrichmentDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"lastEnrichmentDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"lastEnrichmentDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"lastEnrichmentDate"];
  }
}

- (NSDate)lastEnrichmentDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"lastEnrichmentDate"];

  return v5;
}

- (void)setEnrichmentState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"enrichmentState"];
}

- (unsigned)enrichmentState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"enrichmentState"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setPromotionScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"promotionScore"];
}

- (double)promotionScore
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"promotionScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setVerboseSmartDescription:(id)description
{
  descriptionCopy = description;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (descriptionCopy)
  {
    [mutations setObject:descriptionCopy forKeyedSubscript:@"verboseSmartDescription"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"verboseSmartDescription"];
  }

  else
  {
    [mutations removeObjectForKey:@"verboseSmartDescription"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"verboseSmartDescription"];
  }
}

- (NSString)verboseSmartDescription
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"verboseSmartDescription"];

  return v5;
}

- (void)setSmartDescription:(id)description
{
  descriptionCopy = description;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (descriptionCopy)
  {
    [mutations setObject:descriptionCopy forKeyedSubscript:@"subtitle"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"subtitle"];
  }

  else
  {
    [mutations removeObjectForKey:@"subtitle"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"subtitle"];
  }
}

- (NSString)smartDescription
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subtitle"];

  return v5;
}

- (void)setDateDescription:(id)description
{
  descriptionCopy = description;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (descriptionCopy)
  {
    [mutations setObject:descriptionCopy forKeyedSubscript:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"title"];
  }

  else
  {
    [mutations removeObjectForKey:@"title"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"title"];
  }
}

- (NSString)dateDescription
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (void)encodeToXPCDict:(id)dict
{
  v29 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PHPhotosHighlightChangeRequest_encodeToXPCDict___block_invoke;
  aBlock[3] = &unk_1E75A3478;
  v5 = dictCopy;
  v27 = v5;
  v6 = _Block_copy(aBlock);
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:v5];

  dayKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)self dayKeyAssetHelper];
  v6[2](v6, dayKeyAssetHelper);

  monthKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)self monthKeyAssetHelper];
  v6[2](v6, monthKeyAssetHelper);

  yearKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)self yearKeyAssetHelper];
  v6[2](v6, yearKeyAssetHelper);

  dayGroupKeyAssetHelper = [(PHPhotosHighlightChangeRequest *)self dayGroupKeyAssetHelper];
  v6[2](v6, dayGroupKeyAssetHelper);

  dayKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)self dayKeyAssetSharedHelper];
  v6[2](v6, dayKeyAssetSharedHelper);

  monthKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)self monthKeyAssetSharedHelper];
  v6[2](v6, monthKeyAssetSharedHelper);

  yearKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)self yearKeyAssetSharedHelper];
  v6[2](v6, yearKeyAssetSharedHelper);

  dayGroupKeyAssetSharedHelper = [(PHPhotosHighlightChangeRequest *)self dayGroupKeyAssetSharedHelper];
  v6[2](v6, dayGroupKeyAssetSharedHelper);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  curationHelpersByCurationType = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  allValues = [curationHelpersByCurationType allValues];

  v18 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(allValues);
        }

        v6[2](v6, *(*(&v22 + 1) + 8 * v21++));
      }

      while (v19 != v21);
      v19 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v19);
  }
}

- (PHPhotosHighlightChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v31.receiver = self;
  v31.super_class = PHPhotosHighlightChangeRequest;
  v11 = [(PHChangeRequest *)&v31 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetPrivate" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      dayKeyAssetHelper = v11->_dayKeyAssetHelper;
      v11->_dayKeyAssetHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetPrivate" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      monthKeyAssetHelper = v11->_monthKeyAssetHelper;
      v11->_monthKeyAssetHelper = v16;

      v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetPrivate" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      yearKeyAssetHelper = v11->_yearKeyAssetHelper;
      v11->_yearKeyAssetHelper = v18;

      v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetPrivate" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      dayGroupKeyAssetHelper = v11->_dayGroupKeyAssetHelper;
      v11->_dayGroupKeyAssetHelper = v20;

      v22 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetShared" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      dayKeyAssetSharedHelper = v11->_dayKeyAssetSharedHelper;
      v11->_dayKeyAssetSharedHelper = v22;

      v24 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetShared" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      monthKeyAssetSharedHelper = v11->_monthKeyAssetSharedHelper;
      v11->_monthKeyAssetSharedHelper = v24;

      v26 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetShared" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      yearKeyAssetSharedHelper = v11->_yearKeyAssetSharedHelper;
      v11->_yearKeyAssetSharedHelper = v26;

      v28 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetShared" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      dayGroupKeyAssetSharedHelper = v11->_dayGroupKeyAssetSharedHelper;
      v11->_dayGroupKeyAssetSharedHelper = v28;

      [(PHPhotosHighlightChangeRequest *)v11 _initializeCurationHelpersWithHelper:v11->super._helper xpcDict:dictCopy];
    }
  }

  return v11;
}

- (PHPhotosHighlightChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v28.receiver = self;
  v28.super_class = PHPhotosHighlightChangeRequest;
  v8 = [(PHChangeRequest *)&v28 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetPrivate" changeRequestHelper:v8->super._helper];
    dayKeyAssetHelper = v8->_dayKeyAssetHelper;
    v8->_dayKeyAssetHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetPrivate" changeRequestHelper:v8->super._helper];
    monthKeyAssetHelper = v8->_monthKeyAssetHelper;
    v8->_monthKeyAssetHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetPrivate" changeRequestHelper:v8->super._helper];
    yearKeyAssetHelper = v8->_yearKeyAssetHelper;
    v8->_yearKeyAssetHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetPrivate" changeRequestHelper:v8->super._helper];
    dayGroupKeyAssetHelper = v8->_dayGroupKeyAssetHelper;
    v8->_dayGroupKeyAssetHelper = v17;

    v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetShared" changeRequestHelper:v8->super._helper];
    dayKeyAssetSharedHelper = v8->_dayKeyAssetSharedHelper;
    v8->_dayKeyAssetSharedHelper = v19;

    v21 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetShared" changeRequestHelper:v8->super._helper];
    monthKeyAssetSharedHelper = v8->_monthKeyAssetSharedHelper;
    v8->_monthKeyAssetSharedHelper = v21;

    v23 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetShared" changeRequestHelper:v8->super._helper];
    yearKeyAssetSharedHelper = v8->_yearKeyAssetSharedHelper;
    v8->_yearKeyAssetSharedHelper = v23;

    v25 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetShared" changeRequestHelper:v8->super._helper];
    dayGroupKeyAssetSharedHelper = v8->_dayGroupKeyAssetSharedHelper;
    v8->_dayGroupKeyAssetSharedHelper = v25;

    [(PHPhotosHighlightChangeRequest *)v8 _initializeCurationHelpersWithHelper:v8->super._helper xpcDict:0];
  }

  return v8;
}

- (id)initForNewObject
{
  v22.receiver = self;
  v22.super_class = PHPhotosHighlightChangeRequest;
  v2 = [(PHChangeRequest *)&v22 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetPrivate" changeRequestHelper:v2->super._helper];
    dayKeyAssetHelper = v2->_dayKeyAssetHelper;
    v2->_dayKeyAssetHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetPrivate" changeRequestHelper:v2->super._helper];
    monthKeyAssetHelper = v2->_monthKeyAssetHelper;
    v2->_monthKeyAssetHelper = v7;

    v9 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetPrivate" changeRequestHelper:v2->super._helper];
    yearKeyAssetHelper = v2->_yearKeyAssetHelper;
    v2->_yearKeyAssetHelper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetPrivate" changeRequestHelper:v2->super._helper];
    dayGroupKeyAssetHelper = v2->_dayGroupKeyAssetHelper;
    v2->_dayGroupKeyAssetHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetShared" changeRequestHelper:v2->super._helper];
    yearKeyAssetSharedHelper = v2->_yearKeyAssetSharedHelper;
    v2->_yearKeyAssetSharedHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetShared" changeRequestHelper:v2->super._helper];
    dayKeyAssetSharedHelper = v2->_dayKeyAssetSharedHelper;
    v2->_dayKeyAssetSharedHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetShared" changeRequestHelper:v2->super._helper];
    monthKeyAssetSharedHelper = v2->_monthKeyAssetSharedHelper;
    v2->_monthKeyAssetSharedHelper = v17;

    v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetShared" changeRequestHelper:v2->super._helper];
    dayGroupKeyAssetSharedHelper = v2->_dayGroupKeyAssetSharedHelper;
    v2->_dayGroupKeyAssetSharedHelper = v19;

    [(PHPhotosHighlightChangeRequest *)v2 _initializeCurationHelpersWithHelper:v2->super._helper xpcDict:0];
  }

  return v2;
}

- (void)_initializeCurationHelpersWithHelper:(id)helper xpcDict:(id)dict
{
  dictCopy = dict;
  v6 = MEMORY[0x1E695DF90];
  helperCopy = helper;
  v8 = objc_alloc_init(v6);
  v9 = [PHRelationshipChangeRequestHelper alloc];
  if (dictCopy)
  {
    v10 = [(PHRelationshipChangeRequestHelper *)v9 initWithRelationshipName:@"summaryAssets" xpcDict:dictCopy changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v10 forKeyedSubscript:&unk_1F102BD38];

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedAssets" xpcDict:dictCopy changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v11 forKeyedSubscript:&unk_1F102BD50];

    v12 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupAssets" xpcDict:dictCopy changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v12 forKeyedSubscript:&unk_1F102BD68];

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupExtendedAssets" xpcDict:dictCopy changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v13 forKeyedSubscript:&unk_1F102BD80];

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupSummaryAssets" xpcDict:dictCopy changeRequestHelper:helperCopy];
  }

  else
  {
    v15 = [(PHRelationshipChangeRequestHelper *)v9 initWithRelationshipName:@"summaryAssets" changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:&unk_1F102BD38];

    v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedAssets" changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v16 forKeyedSubscript:&unk_1F102BD50];

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupAssets" changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v17 forKeyedSubscript:&unk_1F102BD68];

    v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupExtendedAssets" changeRequestHelper:helperCopy];
    [(NSDictionary *)v8 setObject:v18 forKeyedSubscript:&unk_1F102BD80];

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupSummaryAssets" changeRequestHelper:helperCopy];
  }

  v19 = v14;

  [(NSDictionary *)v8 setObject:v19 forKeyedSubscript:&unk_1F102BD98];
  curationHelpersByCurationType = self->_curationHelpersByCurationType;
  self->_curationHelpersByCurationType = v8;
}

+ (void)deletePhotosHighlights:(id)highlights
{
  highlightsCopy = highlights;
  v4 = [(PHObjectDeleteRequest *)PHPhotosHighlightDeleteRequest deleteRequestsForObjects:highlightsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForPhotosHighlight:(id)highlight
{
  highlightCopy = highlight;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHPhotosHighlightChangeRequest alloc];
    uuid = [highlightCopy uuid];
    objectID = [highlightCopy objectID];
    v7 = [(PHPhotosHighlightChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHPhotosHighlightChangeRequest *)v7 setOriginalHighlight:highlightCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end