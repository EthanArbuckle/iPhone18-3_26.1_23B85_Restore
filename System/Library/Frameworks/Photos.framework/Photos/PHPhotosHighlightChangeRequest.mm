@interface PHPhotosHighlightChangeRequest
+ (id)changeRequestForPhotosHighlight:(id)a3;
+ (void)deletePhotosHighlights:(id)a3;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
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
- (PHPhotosHighlightChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHPhotosHighlightChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (double)promotionScore;
- (id)_existentAssetObjectIDs;
- (id)_existentCuratedAssetObjectIDsForCurationType:(unsigned __int16)a3;
- (id)_mutableAssetObjectIDsAndUUIDsForCurationType:(unsigned __int16)a3;
- (id)_mutableKeyAssetObjectIDsAndUUIDsForShared:(BOOL)a3 userEdited:(BOOL)a4;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (id)placeholderForCreatedPhotosHighlight;
- (signed)enrichmentVersion;
- (unint64_t)mood;
- (unsigned)_externalCurationTypeForInternalCurationType:(unsigned __int16)a3;
- (unsigned)_internalCurationTypeForExternalCurationType:(unsigned __int16)a3;
- (unsigned)enrichmentState;
- (unsigned)kind;
- (unsigned)mixedSharingCompositionKeyAssetRelationship;
- (unsigned)visibilityState;
- (unsigned)visibilityStateMixed;
- (unsigned)visibilityStateShared;
- (void)_initializeCurationHelpersWithHelper:(id)a3 xpcDict:(id)a4;
- (void)clearCurationWithType:(unsigned __int16)a3;
- (void)didEnrichHighlight;
- (void)encodeToXPCDict:(id)a3;
- (void)setAssets:(id)a3 forCurationType:(unsigned __int16)a4;
- (void)setDateDescription:(id)a3;
- (void)setDateDescriptionMixed:(id)a3;
- (void)setDateDescriptionShared:(id)a3;
- (void)setEnrichmentState:(unsigned __int16)a3;
- (void)setEnrichmentVersion:(signed __int16)a3;
- (void)setKeyAssetPrivate:(id)a3 userEdited:(BOOL)a4;
- (void)setKeyAssetShared:(id)a3 userEdited:(BOOL)a4;
- (void)setKind:(unsigned __int16)a3;
- (void)setLastEnrichmentDate:(id)a3;
- (void)setMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)a3;
- (void)setMood:(unint64_t)a3;
- (void)setPromotionScore:(double)a3;
- (void)setSmartDescription:(id)a3;
- (void)setSmartDescriptionMixed:(id)a3;
- (void)setSmartDescriptionShared:(id)a3;
- (void)setVerboseSmartDescription:(id)a3;
- (void)setVerboseSmartDescriptionMixed:(id)a3;
- (void)setVerboseSmartDescriptionShared:(id)a3;
- (void)setVisibilityState:(unsigned __int16)a3;
- (void)setVisibilityStateMixed:(unsigned __int16)a3;
- (void)setVisibilityStateShared:(unsigned __int16)a3;
@end

@implementation PHPhotosHighlightChangeRequest

- (id)_existentCuratedAssetObjectIDsForCurationType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    [v8 setHighlightCurationType:{-[PHPhotosHighlightChangeRequest _externalCurationTypeForInternalCurationType:](self, "_externalCurationTypeForInternalCurationType:", v3)}];
    [v8 setIncludeHiddenAssets:1];
    [v8 setIncludeTrashedAssets:1];
    v9 = [PHQuery queryForCuratedAssetsInPhotosHighlight:v6 options:v8];
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
  v2 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setHighlightCurationType:0];
    v6 = [PHQuery queryForAssetsInAssetCollection:v3 options:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PHRelationshipChangeRequestHelper existentObjectIDsUsingQuery:v6];

  return v7;
}

- (id)_mutableAssetObjectIDsAndUUIDsForCurationType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 originalObjectIDs];

    if (!v8)
    {
      v9 = [(PHPhotosHighlightChangeRequest *)self _existentCuratedAssetObjectIDsForCurationType:v3];
      [v7 setOriginalObjectIDs:v9];
    }

    v10 = [v7 mutableObjectIDsAndUUIDs];

    if (!v10)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      [v7 setMutableObjectIDsAndUUIDs:v11];
    }

    v12 = [v7 mutableObjectIDsAndUUIDs];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_mutableKeyAssetObjectIDsAndUUIDsForShared:(BOOL)a3 userEdited:(BOOL)a4
{
  v4 = a3;
  v6 = [(PHPhotosHighlightChangeRequest *)self originalHighlight:a3];
  if (v6)
  {
    v7 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
    v8 = [v7 kind];
  }

  else
  {
    v8 = [(PHPhotosHighlightChangeRequest *)self kind];
  }

  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v10 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__yearKeyAssetHelper;
      v11 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__yearKeyAssetSharedHelper;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_16;
      }

      v10 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__dayGroupKeyAssetHelper;
      v11 = &OBJC_IVAR___PHPhotosHighlightChangeRequest__dayGroupKeyAssetSharedHelper;
    }
  }

  else if (v8)
  {
    if (v8 != 1)
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

  if (v4)
  {
    v10 = v11;
  }

  v9 = *(&self->super.super.isa + *v10);
LABEL_16:
  v12 = [v9 originalObjectIDs];

  if (!v12)
  {
    [v9 setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v13 = [v9 mutableObjectIDsAndUUIDs];

  if (!v13)
  {
    v14 = [v9 originalObjectIDs];
    v15 = [v14 mutableCopy];
    [v9 setMutableObjectIDsAndUUIDs:v15];
  }

  v16 = [v9 mutableObjectIDsAndUUIDs];

  return v16;
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PHChangeRequest *)self helper];
  v72 = 0;
  v11 = [v10 applyMutationsToManagedObject:v8 error:&v72];
  v12 = v72;

  v13 = [(PHChangeRequest *)self helper];
  v14 = [v13 mutations];

  if (!v11)
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v56 = v9;
  v57 = a5;
  v15 = PLPhotoKitGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(PHChangeRequest *)self isMutated];
    *buf = 67109378;
    v77 = v16;
    v78 = 2112;
    v79 = v14;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
  }

  v59 = v14;

  v58 = v8;
  v17 = v8;
  v55 = self;
  v18 = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [v18 allKeys];
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
          v25 = [v18 objectForKeyedSubscript:v24];
          [v25 setAllowsInsert:1];
          [v25 setAllowsRemove:1];
          v26 = [MEMORY[0x1E69BE540] entityName];
          [v25 setDestinationEntityName:v26];

          [v25 setIsDestinationObjectValid:&__block_literal_global_149];
          v27 = [v25 relationshipName];
          v28 = [v17 mutableSetValueForKey:v27];

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

  v32 = [v17 photoLibrary];
  v33 = [v32 libraryServicesManager];
  v34 = [v33 backgroundJobService];
  v35 = [v17 photoLibrary];
  v36 = [MEMORY[0x1E69BE2B8] maskForFeatureAvailability];
  [v34 signalBackgroundProcessingNeededOnLibrary:v35 workerTypes:v36];

LABEL_21:
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obja = [(PHPhotosHighlightChangeRequest *)v55 dayKeyAssetHelper];
  v73[0] = obja;
  v54 = [(PHPhotosHighlightChangeRequest *)v55 dayKeyAssetSharedHelper];
  v73[1] = v54;
  v37 = [(PHPhotosHighlightChangeRequest *)v55 monthKeyAssetHelper];
  v73[2] = v37;
  v38 = [(PHPhotosHighlightChangeRequest *)v55 monthKeyAssetSharedHelper];
  v73[3] = v38;
  v39 = [(PHPhotosHighlightChangeRequest *)v55 yearKeyAssetHelper];
  v73[4] = v39;
  v40 = [(PHPhotosHighlightChangeRequest *)v55 yearKeyAssetSharedHelper];
  v73[5] = v40;
  v41 = [(PHPhotosHighlightChangeRequest *)v55 dayGroupKeyAssetHelper];
  v73[6] = v41;
  v42 = [(PHPhotosHighlightChangeRequest *)v55 dayGroupKeyAssetSharedHelper];
  v73[7] = v42;
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
          v49 = [v48 mutableObjectIDsAndUUIDs];

          if (v49)
          {
            [v48 setAllowsInsert:1];
            v50 = [MEMORY[0x1E69BE540] entityName];
            [v48 setDestinationEntityName:v50];

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

  a5 = v57;
  v8 = v58;
  v9 = v56;
  v14 = v59;
  if (v57)
  {
LABEL_34:
    if ((v22 & 1) == 0)
    {
      v52 = v12;
      *a5 = v12;
    }
  }

LABEL_36:

  return v22 & 1;
}

- (void)didEnrichHighlight
{
  v3 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  v4 = [v3 highlightVersion];

  [(PHPhotosHighlightChangeRequest *)self setEnrichmentVersion:v4];
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE6B8];
  v7 = [a3 managedObjectContext];
  v8 = [v6 insertNewPhotosHighlightInManagedObjectContext:v7 error:a4];

  v9 = [(PHChangeRequest *)self uuid];
  [v8 setUuid:v9];

  v10 = [v8 managedObjectContext];
  v18[0] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17 = 0;
  v12 = [v10 obtainPermanentIDsForObjects:v11 error:&v17];
  v13 = v17;

  if (v12)
  {
    v14 = v8;
  }

  else if (a4)
  {
    v15 = v13;
    v14 = 0;
    *a4 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)placeholderForCreatedPhotosHighlight
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

- (void)setAssets:(id)a3 forCurationType:(unsigned __int16)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(PHPhotosHighlightChangeRequest *)self _internalCurationTypeForExternalCurationType:v4];
  v7 = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:v12];
    if (v10)
    {
      [(PHChangeRequest *)self didMutate];
      v11 = [(PHPhotosHighlightChangeRequest *)self _mutableAssetObjectIDsAndUUIDsForCurationType:v6];
      [v11 setArray:v10];
    }
  }
}

- (void)clearCurationWithType:(unsigned __int16)a3
{
  v4 = [(PHPhotosHighlightChangeRequest *)self _internalCurationTypeForExternalCurationType:a3];
  v5 = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v4];
  v8 = [v5 objectForKeyedSubscript:v6];

  if (v8)
  {
    [(PHChangeRequest *)self didMutate];
    v7 = [(PHPhotosHighlightChangeRequest *)self _mutableAssetObjectIDsAndUUIDsForCurationType:v4];
    [v7 removeAllObjects];
  }
}

- (unsigned)_externalCurationTypeForInternalCurationType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  if (v5)
  {
    v6 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
    v7 = [v6 kind];
  }

  else
  {
    v7 = [(PHPhotosHighlightChangeRequest *)self kind];
  }

  v8 = v3 == 5;
  if (v3 == 4)
  {
    v8 = 2;
  }

  if (v7 != 3)
  {
    v8 = 0;
  }

  if (v7 >= 3)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

- (unsigned)_internalCurationTypeForExternalCurationType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
  if (v5)
  {
    v6 = [(PHPhotosHighlightChangeRequest *)self originalHighlight];
    v7 = [v6 kind];
  }

  else
  {
    v7 = [(PHPhotosHighlightChangeRequest *)self kind];
  }

  if (v3 == 1)
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  if (v3 == 2)
  {
    v8 = 4;
  }

  if (v7 != 3)
  {
    v8 = 0;
  }

  if (v7 >= 3)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

- (void)setKeyAssetShared:(id)a3 userEdited:(BOOL)a4
{
  v4 = a4;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = PLObjectIDOrUUIDFromPHObject(a3);
  v7 = [(PHPhotosHighlightChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDsForShared:1 userEdited:v4];
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

- (void)setKeyAssetPrivate:(id)a3 userEdited:(BOOL)a4
{
  v4 = a4;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = PLObjectIDOrUUIDFromPHObject(a3);
  [(PHChangeRequest *)self didMutate];
  v7 = [(PHPhotosHighlightChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDsForShared:0 userEdited:v4];
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

- (void)setVisibilityStateMixed:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"visibilityStateMixed"];
}

- (unsigned)visibilityStateMixed
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"visibilityStateMixed"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setVisibilityStateShared:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"visibilityStateShared"];
}

- (unsigned)visibilityStateShared
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"visibilityStateShared"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setMixedSharingCompositionKeyAssetRelationship:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"mixedSharingCompositionKeyAssetRelationship"];
}

- (unsigned)mixedSharingCompositionKeyAssetRelationship
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"mixedSharingCompositionKeyAssetRelationship"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setVerboseSmartDescriptionMixed:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"verboseSmartDescriptionMixed"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"verboseSmartDescriptionMixed"];
  }

  else
  {
    [v6 removeObjectForKey:@"verboseSmartDescriptionMixed"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"verboseSmartDescriptionMixed"];
  }
}

- (NSString)verboseSmartDescriptionMixed
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"verboseSmartDescriptionMixed"];

  return v5;
}

- (void)setVerboseSmartDescriptionShared:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"verboseSmartDescriptionShared"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"verboseSmartDescriptionShared"];
  }

  else
  {
    [v6 removeObjectForKey:@"verboseSmartDescriptionShared"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"verboseSmartDescriptionShared"];
  }
}

- (NSString)verboseSmartDescriptionShared
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"verboseSmartDescriptionShared"];

  return v5;
}

- (void)setSmartDescriptionMixed:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"subtitleMixed"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"subtitleMixed"];
  }

  else
  {
    [v6 removeObjectForKey:@"subtitleMixed"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"subtitleMixed"];
  }
}

- (NSString)smartDescriptionMixed
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subtitleMixed"];

  return v5;
}

- (void)setSmartDescriptionShared:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"subtitleShared"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"subtitleShared"];
  }

  else
  {
    [v6 removeObjectForKey:@"subtitleShared"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"subtitleShared"];
  }
}

- (NSString)smartDescriptionShared
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subtitleShared"];

  return v5;
}

- (void)setDateDescriptionMixed:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"titleMixed"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"titleMixed"];
  }

  else
  {
    [v6 removeObjectForKey:@"titleMixed"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"titleMixed"];
  }
}

- (NSString)dateDescriptionMixed
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"titleMixed"];

  return v5;
}

- (void)setDateDescriptionShared:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"titleShared"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"titleShared"];
  }

  else
  {
    [v6 removeObjectForKey:@"titleShared"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"titleShared"];
  }
}

- (NSString)dateDescriptionShared
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"titleShared"];

  return v5;
}

- (void)setKind:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"kind"];
}

- (unsigned)kind
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"kind"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setVisibilityState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"visibilityState"];
}

- (unsigned)visibilityState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"visibilityState"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setEnrichmentVersion:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"enrichmentVersion"];
}

- (signed)enrichmentVersion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"enrichmentVersion"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setMood:(unint64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"mood"];
}

- (unint64_t)mood
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"mood"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setLastEnrichmentDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"lastEnrichmentDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"lastEnrichmentDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"lastEnrichmentDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"lastEnrichmentDate"];
  }
}

- (NSDate)lastEnrichmentDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"lastEnrichmentDate"];

  return v5;
}

- (void)setEnrichmentState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"enrichmentState"];
}

- (unsigned)enrichmentState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"enrichmentState"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setPromotionScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"promotionScore"];
}

- (double)promotionScore
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"promotionScore"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setVerboseSmartDescription:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"verboseSmartDescription"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"verboseSmartDescription"];
  }

  else
  {
    [v6 removeObjectForKey:@"verboseSmartDescription"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"verboseSmartDescription"];
  }
}

- (NSString)verboseSmartDescription
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"verboseSmartDescription"];

  return v5;
}

- (void)setSmartDescription:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"subtitle"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"subtitle"];
  }

  else
  {
    [v6 removeObjectForKey:@"subtitle"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"subtitle"];
  }
}

- (NSString)smartDescription
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subtitle"];

  return v5;
}

- (void)setDateDescription:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"title"];
  }

  else
  {
    [v6 removeObjectForKey:@"title"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"title"];
  }
}

- (NSString)dateDescription
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (void)encodeToXPCDict:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__PHPhotosHighlightChangeRequest_encodeToXPCDict___block_invoke;
  aBlock[3] = &unk_1E75A3478;
  v5 = v4;
  v27 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(PHChangeRequest *)self helper];
  [v7 encodeToXPCDict:v5];

  v8 = [(PHPhotosHighlightChangeRequest *)self dayKeyAssetHelper];
  v6[2](v6, v8);

  v9 = [(PHPhotosHighlightChangeRequest *)self monthKeyAssetHelper];
  v6[2](v6, v9);

  v10 = [(PHPhotosHighlightChangeRequest *)self yearKeyAssetHelper];
  v6[2](v6, v10);

  v11 = [(PHPhotosHighlightChangeRequest *)self dayGroupKeyAssetHelper];
  v6[2](v6, v11);

  v12 = [(PHPhotosHighlightChangeRequest *)self dayKeyAssetSharedHelper];
  v6[2](v6, v12);

  v13 = [(PHPhotosHighlightChangeRequest *)self monthKeyAssetSharedHelper];
  v6[2](v6, v13);

  v14 = [(PHPhotosHighlightChangeRequest *)self yearKeyAssetSharedHelper];
  v6[2](v6, v14);

  v15 = [(PHPhotosHighlightChangeRequest *)self dayGroupKeyAssetSharedHelper];
  v6[2](v6, v15);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [(PHPhotosHighlightChangeRequest *)self curationHelpersByCurationType];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v17);
        }

        v6[2](v6, *(*(&v22 + 1) + 8 * v21++));
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v19);
  }
}

- (PHPhotosHighlightChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = PHPhotosHighlightChangeRequest;
  v11 = [(PHChangeRequest *)&v31 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetPrivate" xpcDict:v8 changeRequestHelper:v11->super._helper];
      dayKeyAssetHelper = v11->_dayKeyAssetHelper;
      v11->_dayKeyAssetHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetPrivate" xpcDict:v8 changeRequestHelper:v11->super._helper];
      monthKeyAssetHelper = v11->_monthKeyAssetHelper;
      v11->_monthKeyAssetHelper = v16;

      v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetPrivate" xpcDict:v8 changeRequestHelper:v11->super._helper];
      yearKeyAssetHelper = v11->_yearKeyAssetHelper;
      v11->_yearKeyAssetHelper = v18;

      v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetPrivate" xpcDict:v8 changeRequestHelper:v11->super._helper];
      dayGroupKeyAssetHelper = v11->_dayGroupKeyAssetHelper;
      v11->_dayGroupKeyAssetHelper = v20;

      v22 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssetShared" xpcDict:v8 changeRequestHelper:v11->super._helper];
      dayKeyAssetSharedHelper = v11->_dayKeyAssetSharedHelper;
      v11->_dayKeyAssetSharedHelper = v22;

      v24 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"monthKeyAssetShared" xpcDict:v8 changeRequestHelper:v11->super._helper];
      monthKeyAssetSharedHelper = v11->_monthKeyAssetSharedHelper;
      v11->_monthKeyAssetSharedHelper = v24;

      v26 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"yearKeyAssetShared" xpcDict:v8 changeRequestHelper:v11->super._helper];
      yearKeyAssetSharedHelper = v11->_yearKeyAssetSharedHelper;
      v11->_yearKeyAssetSharedHelper = v26;

      v28 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupKeyAssetShared" xpcDict:v8 changeRequestHelper:v11->super._helper];
      dayGroupKeyAssetSharedHelper = v11->_dayGroupKeyAssetSharedHelper;
      v11->_dayGroupKeyAssetSharedHelper = v28;

      [(PHPhotosHighlightChangeRequest *)v11 _initializeCurationHelpersWithHelper:v11->super._helper xpcDict:v8];
    }
  }

  return v11;
}

- (PHPhotosHighlightChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = PHPhotosHighlightChangeRequest;
  v8 = [(PHChangeRequest *)&v28 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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

- (void)_initializeCurationHelpersWithHelper:(id)a3 xpcDict:(id)a4
{
  v21 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [PHRelationshipChangeRequestHelper alloc];
  if (v21)
  {
    v10 = [(PHRelationshipChangeRequestHelper *)v9 initWithRelationshipName:@"summaryAssets" xpcDict:v21 changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v10 forKeyedSubscript:&unk_1F102BD38];

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedAssets" xpcDict:v21 changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v11 forKeyedSubscript:&unk_1F102BD50];

    v12 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupAssets" xpcDict:v21 changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v12 forKeyedSubscript:&unk_1F102BD68];

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupExtendedAssets" xpcDict:v21 changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v13 forKeyedSubscript:&unk_1F102BD80];

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupSummaryAssets" xpcDict:v21 changeRequestHelper:v7];
  }

  else
  {
    v15 = [(PHRelationshipChangeRequestHelper *)v9 initWithRelationshipName:@"summaryAssets" changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:&unk_1F102BD38];

    v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedAssets" changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v16 forKeyedSubscript:&unk_1F102BD50];

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupAssets" changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v17 forKeyedSubscript:&unk_1F102BD68];

    v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupExtendedAssets" changeRequestHelper:v7];
    [(NSDictionary *)v8 setObject:v18 forKeyedSubscript:&unk_1F102BD80];

    v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"dayGroupSummaryAssets" changeRequestHelper:v7];
  }

  v19 = v14;

  [(NSDictionary *)v8 setObject:v19 forKeyedSubscript:&unk_1F102BD98];
  curationHelpersByCurationType = self->_curationHelpersByCurationType;
  self->_curationHelpersByCurationType = v8;
}

+ (void)deletePhotosHighlights:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHPhotosHighlightDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForPhotosHighlight:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHPhotosHighlightChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHPhotosHighlightChangeRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHPhotosHighlightChangeRequest *)v7 setOriginalHighlight:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end