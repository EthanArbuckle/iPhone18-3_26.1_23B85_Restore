@interface PHMemoryChangeRequest
+ (BOOL)_shouldAcceptProposedAttributes:(id)a3;
+ (id)_preferredAttributesForMemoryCreationFromObject:(id)a3 withSuccess:(BOOL)a4 title:(id)a5 subtitle:(id)a6 error:(id)a7 proposedAttributes:(id)a8;
+ (id)changeRequestForMemory:(id)a3;
+ (id)changeRequestForRemotelyViewedMemoryWithLocalIdentifier:(id)a3;
+ (id)creationRequestForMemoryWithTitle:(id)a3 subtitle:(id)a4 creationDate:(id)a5 category:(unint64_t)a6 subcategory:(unint64_t)a7 representativeAssetUUIDs:(id)a8 curatedAssetUUIDs:(id)a9 extendedCuratedAssetUUIDs:(id)a10 keyAssetUUID:(id)a11;
+ (id)creationRequestForMemoryWithTitle:(id)a3 subtitle:(id)a4 creationDate:(id)a5 category:(unint64_t)a6 subcategory:(unint64_t)a7 representativeAssets:(id)a8 curatedAssets:(id)a9 extendedCuratedAssets:(id)a10 keyAsset:(id)a11;
+ (id)preferredAttributesForMemoryCreationFromAssetCollection:(id)a3 proposedAttributes:(id)a4;
+ (id)preferredAttributesForMemoryCreationFromCollectionList:(id)a3 proposedAttributes:(id)a4;
+ (id)preferredAttributesForMemoryCreationFromPeople:(id)a3 proposedAttributes:(id)a4;
+ (id)validateMemoryTitle:(id)a3 error:(id *)a4;
+ (int64_t)_titleFormatForProposedAttributes:(id)a3;
+ (void)blockPerson:(id)a3;
+ (void)blockPerson:(id)a3 withAsset:(id)a4;
+ (void)deleteMemories:(id)a3;
+ (void)unblockPersonsInMemoriesWithBlockedPersonFeature:(id)a3;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)isFavorite;
- (BOOL)isRejected;
- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (NSData)movieData;
- (NSData)photosGraphData;
- (NSDate)creationDate;
- (NSDate)lastEnrichmentDate;
- (NSDate)lastMoviePlayedDate;
- (NSDate)lastViewedDate;
- (NSString)description;
- (NSString)graphMemoryIdentifier;
- (NSString)storyTitleCategory;
- (NSString)subtitle;
- (NSString)title;
- (PHMemoryChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHMemoryChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (PHMemoryFeature)blacklistedFeature;
- (PHObjectPlaceholder)placeholderForCreatedMemory;
- (double)score;
- (id)_mutableCuratedAssetObjectIDsAndUUIDs;
- (id)_mutableExtendedCuratedAssetObjectIDsAndUUIDs;
- (id)_mutableKeyAssetObjectIDsAndUUIDs;
- (id)_mutableRepresentativeAssetObjectIDsAndUUIDs;
- (id)_validateAssetCounts;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)initForNewObject;
- (int64_t)featuredState;
- (int64_t)photosGraphVersion;
- (int64_t)storyColorGradeKind;
- (int64_t)storySerializedTitleCategory;
- (unint64_t)category;
- (unint64_t)notificationState;
- (unint64_t)subcategory;
- (unsigned)creationType;
- (unsigned)pendingState;
- (void)_prepareAssetIDsIfNeeded;
- (void)_prepareCustomUserAssetIDsIfNeeded;
- (void)_prepareExistingUserRemovedAssetIDs;
- (void)addCustomUserAssets:(id)a3;
- (void)encodeToXPCDict:(id)a3;
- (void)insertCustomUserAssets:(id)a3 atIndexes:(id)a4;
- (void)moveCustomUserAssetsAtIndexes:(id)a3 toIndex:(unint64_t)a4;
- (void)removeCustomUserAssets:(id)a3;
- (void)removeCustomUserAssetsAtIndexes:(id)a3;
- (void)removeUserAssets:(id)a3;
- (void)replaceCustomUserAssetsAtIndexes:(id)a3 withAssets:(id)a4;
- (void)setBlacklistedFeature:(id)a3;
- (void)setCategory:(unint64_t)a3;
- (void)setCreationDate:(id)a3;
- (void)setCreationType:(unsigned __int16)a3;
- (void)setCustomUserAssets:(id)a3;
- (void)setFavorite:(BOOL)a3;
- (void)setFeaturedState:(int64_t)a3;
- (void)setGraphMemoryIdentifier:(id)a3;
- (void)setKeyAsset:(id)a3;
- (void)setKeyAssetUUID:(id)a3;
- (void)setLastEnrichmentDate:(id)a3;
- (void)setLastMoviePlayedDate:(id)a3;
- (void)setLastViewedDate:(id)a3;
- (void)setMovieCuratedAssets:(id)a3;
- (void)setMovieData:(id)a3;
- (void)setMovieStateData:(id)a3 forAsset:(id)a4;
- (void)setNotificationState:(unint64_t)a3;
- (void)setPendingState:(unsigned __int16)a3;
- (void)setPhotosGraphData:(id)a3;
- (void)setPhotosGraphVersion:(int64_t)a3;
- (void)setQueryHintObject:(id)a3;
- (void)setQueryHintObjects:(id)a3;
- (void)setRejected:(BOOL)a3;
- (void)setRepresentativeAssetUUIDs:(id)a3 curatedAssetUUIDs:(id)a4 extendedCuratedAssetUUIDs:(id)a5 keyAssetUUID:(id)a6;
- (void)setRepresentativeAssets:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 keyAsset:(id)a6;
- (void)setScore:(double)a3;
- (void)setStoryColorGradeKind:(int64_t)a3;
- (void)setStorySerializedTitleCategory:(int64_t)a3;
- (void)setStoryTitleCategory:(id)a3;
- (void)setSubcategory:(unint64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserCreated:(BOOL)a3;
- (void)setUserCuratedAssets:(id)a3;
- (void)setUserEdited:(BOOL)a3;
- (void)setUserFeedback:(id)a3;
- (void)setUserRemovedAssets:(id)a3;
- (void)undoUserRemoveForAssets:(id)a3;
@end

@implementation PHMemoryChangeRequest

- (NSString)description
{
  v19.receiver = self;
  v19.super_class = PHMemoryChangeRequest;
  v3 = [(PHMemoryChangeRequest *)&v19 description];
  v16 = [(PHMemoryChangeRequest *)self title];
  v18 = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
  v17 = [v18 mutableObjectIDsAndUUIDs];
  v15 = [v17 count];
  v4 = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
  v5 = [v4 mutableObjectIDsAndUUIDs];
  v6 = [v5 count];
  v7 = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
  v8 = [v7 mutableObjectIDsAndUUIDs];
  v9 = [v8 count];
  v10 = [(PHMemoryChangeRequest *)self keyAssetHelper];
  v11 = [v10 mutableObjectIDsAndUUIDs];
  v12 = [v11 firstObject];
  v13 = [v3 stringByAppendingFormat:@" title=%@ representativeAssets=%d curatedAssets=%d extendedCuratedAssets=%d keyAsset=%@", v16, v15, v6, v9, v12];

  return v13;
}

- (void)undoUserRemoveForAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareExistingUserRemovedAssetIDs];
    v5 = [(PHRelationshipChangeRequestHelper *)self->_userRemovedAssetsHelper mutableObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)removeUserAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareExistingUserRemovedAssetIDs];
    v5 = [(PHRelationshipChangeRequestHelper *)self->_userRemovedAssetsHelper mutableObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)setUserRemovedAssets:(id)a3
{
  v8 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  v4 = [v8 count];
  [(PHChangeRequestHelper *)self->super._helper didMutate];
  if (v4)
  {
    [(PHMemoryChangeRequest *)self _prepareExistingUserRemovedAssetIDs];
    userRemovedAssetsHelper = self->_userRemovedAssetsHelper;
    v6 = [v8 mutableCopy];
  }

  else
  {
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    userRemovedAssetsHelper = self->_userRemovedAssetsHelper;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v7 = v6;
  [(PHRelationshipChangeRequestHelper *)userRemovedAssetsHelper setMutableObjectIDsAndUUIDs:v6];
}

- (void)_prepareExistingUserRemovedAssetIDs
{
  v3 = self->_userRemovedAssetsHelper;
  v4 = [(PHRelationshipChangeRequestHelper *)v3 originalObjectIDs];

  if (!v4)
  {
    if ([(PHChangeRequest *)self isNewRequest])
    {
      [(PHRelationshipChangeRequestHelper *)v3 setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }

    else
    {
      v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
      v6 = [v5 photoLibrary];

      v7 = [v6 managedObjectContext];
      v8 = [MEMORY[0x1E695DF70] array];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__PHMemoryChangeRequest__prepareExistingUserRemovedAssetIDs__block_invoke;
      v14[3] = &unk_1E75AB248;
      v15 = v7;
      v16 = self;
      v17 = v8;
      v9 = v8;
      v10 = v7;
      [v10 performBlockAndWait:v14];
      [(PHRelationshipChangeRequestHelper *)v3 setOriginalObjectIDs:v9];
    }
  }

  v11 = [(PHRelationshipChangeRequestHelper *)v3 mutableObjectIDsAndUUIDs];

  if (!v11)
  {
    v12 = [(PHRelationshipChangeRequestHelper *)v3 originalObjectIDs];
    v13 = [v12 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)v3 setMutableObjectIDsAndUUIDs:v13];
  }
}

void __60__PHMemoryChangeRequest__prepareExistingUserRemovedAssetIDs__block_invoke(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [*(a1[5] + 32) objectID];
  v18 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v18];
  v5 = v18;

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 userRemovedAssets];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = a1[6];
          v12 = [*(*(&v14 + 1) + 8 * i) objectID];
          [v11 addObject:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1[5] + 32) objectID];
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Unable to load existing memory with id: %@, error: %@", buf, 0x16u);
    }
  }
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v165[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 managedObjectContext];
  v9 = PLSafeEntityForNameInManagedObjectContext();

  if (v9)
  {
    v10 = [v7 entity];
    v11 = [v10 isKindOfEntity:v9];

    v136 = a5;
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v164 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid collection type"];
      v165[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:&v164 count:1];
      v12 = [v14 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v16];
    }

    if (self->_userEdited && [v7 pendingState] == 2)
    {
      v17 = PLMemoriesGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(PHObject *)self->_backingMemory objectID];
        *buf = 138543362;
        *v163 = v18;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "Promoting memory with id: %{public}@ to userEdit...", buf, 0xCu);
      }

      v154 = 0;
      v19 = [v7 promoteToUserEditedMemoryWithError:&v154];
      v20 = v154;
      if ((v19 & 1) == 0)
      {
        v21 = PLMemoriesGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v163 = v20;
          _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "Failed to promote with error: %@", buf, 0xCu);
        }

        v11 = 0;
      }
    }

    v22 = [(PHChangeRequest *)self helper];
    v23 = [v22 mutations];

    v24 = [v23 objectForKey:@"updatedMovieAssetState"];
    v25 = [v23 objectForKey:@"deletedMovieAssetState"];
    v26 = v25;
    if (!v11)
    {
      [(PHChangeRequest *)self isNewRequest];
      goto LABEL_74;
    }

    if (v24 | v25)
    {
      v27 = [v7 valueForKey:@"movieAssetState"];
      v28 = [v27 mutableCopy];

      if (!v28)
      {
        v28 = [MEMORY[0x1E695DF90] dictionary];
      }

      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 3221225472;
      v152[2] = __74__PHMemoryChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke;
      v152[3] = &unk_1E75A5AD0;
      v29 = v28;
      v153 = v29;
      [v24 enumerateKeysAndObjectsUsingBlock:v152];
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = __74__PHMemoryChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke_2;
      v150[3] = &unk_1E75A5AF8;
      v151 = v29;
      v30 = v29;
      [v26 enumerateObjectsUsingBlock:v150];
      [v7 setValue:v30 forKey:@"movieAssetState"];
      [v23 removeObjectForKey:@"updatedMovieAssetState"];
      [v23 removeObjectForKey:@"deletedMovieAssetState"];
    }

    v134 = v26;
    v135 = v24;
    v31 = [(PHChangeRequest *)self isNewRequest];
    v32 = [(PHChangeRequest *)self helper];
    v149 = v12;
    v33 = [v32 applyMutationsToManagedObject:v7 error:&v149];
    v34 = v149;

    if (!v33)
    {
      v12 = v34;
LABEL_73:
      v26 = v134;
      v24 = v135;
LABEL_74:
      if (v136)
      {
        v91 = v12;
        v13 = 0;
        *v136 = v12;
      }

      else
      {
        v13 = 0;
      }

LABEL_77:

      goto LABEL_78;
    }

    v35 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [(PHChangeRequest *)self isMutated];
      *buf = 67109378;
      *v163 = v36;
      *&v163[4] = 2112;
      *&v163[6] = v23;
      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
    }

    if (self->_incrementPlayCount)
    {
      [v7 setPendingPlayCount:{objc_msgSend(v7, "pendingPlayCount") + 1}];
    }

    if (self->_incrementShareCount)
    {
      [v7 setPendingShareCount:{objc_msgSend(v7, "pendingShareCount") + 1}];
    }

    if (self->_incrementViewCount)
    {
      [v7 setPendingViewCount:{objc_msgSend(v7, "pendingViewCount") + 1}];
    }

    if (self->_didSetUserCreated)
    {
      v37 = v23;
      userCreated = self->_userCreated;
      v39 = [v7 userActionOptions] & 0xFFFE | userCreated;
      v23 = v37;
      [v7 setUserActionOptions:v39];
    }

    if ([(PHMemoryChangeRequest *)self creationType]== 1)
    {
      [v7 recalculateUserActionOptionsBit];
    }

    v133 = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
    v40 = [v133 mutableObjectIDsAndUUIDs];
    v41 = [v40 count];

    if (v41)
    {
      if (!v31)
      {
        v55 = MEMORY[0x1E696ABC0];
        v160 = *MEMORY[0x1E696A578];
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memories representative assets cannot be mutated"];
        v161 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v46 = [v55 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v57];

        v47 = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
        goto LABEL_51;
      }

      v131 = v31;
      v42 = v7;
      [v133 setAllowsInsert:1];
      v43 = [MEMORY[0x1E69BE540] entityName];
      [v133 setDestinationEntityName:v43];

      [v133 setIsDestinationObjectValid:&__block_literal_global_206];
      v44 = [v133 relationshipName];
      v45 = [v42 mutableSetValueForKey:v44];

      v148 = v34;
      LODWORD(v44) = [v133 applyMutationsToManagedObject:v42 unorderedMutableChildren:v45 error:&v148];

      v46 = v148;
      v47 = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
      v34 = v46;
      if (!v44)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v131 = v31;
      v47 = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
    }

    v48 = [v47 mutableObjectIDsAndUUIDs];
    v49 = [v48 count];

    if (!v49)
    {
      v54 = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
      v46 = v34;
      goto LABEL_46;
    }

    if (v131)
    {
      v50 = v7;
      [v47 setAllowsInsert:1];
      v51 = [MEMORY[0x1E69BE540] entityName];
      [v47 setDestinationEntityName:v51];

      [v47 setIsDestinationObjectValid:&__block_literal_global_212];
      v52 = [v47 relationshipName];
      v53 = [v50 mutableSetValueForKey:v52];

      v147 = v34;
      LODWORD(v52) = [v47 applyMutationsToManagedObject:v50 unorderedMutableChildren:v53 error:&v147];

      v46 = v147;
      v54 = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
      if (!v52)
      {
        goto LABEL_52;
      }

LABEL_46:
      v125 = v54;
      v126 = v46;
      v58 = [v54 mutableObjectIDsAndUUIDs];
      v59 = [v58 count];

      if (v59)
      {
        if (!v131)
        {
          v97 = MEMORY[0x1E696ABC0];
          v156 = *MEMORY[0x1E696A578];
          v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memories extended curated assets cannot be mutated"];
          v157 = v98;
          v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v46 = [v97 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v99];

          v70 = v125;
          goto LABEL_53;
        }

        v60 = v7;
        [v125 setAllowsInsert:1];
        v61 = [MEMORY[0x1E69BE540] entityName];
        [v125 setDestinationEntityName:v61];

        [v125 setIsDestinationObjectValid:&__block_literal_global_217_13997];
        v62 = [v125 relationshipName];
        v63 = [v60 mutableSetValueForKey:v62];

        v146 = v126;
        v64 = [v125 applyMutationsToManagedObject:v60 unorderedMutableChildren:v63 error:&v146];

        v12 = v146;
        v65 = [(PHMemoryChangeRequest *)self keyAssetHelper];
        if ((v64 & 1) == 0)
        {
          v70 = v125;
          goto LABEL_54;
        }

        v126 = v12;
      }

      else
      {
        v65 = [(PHMemoryChangeRequest *)self keyAssetHelper];
      }

      v93 = [v65 mutableObjectIDsAndUUIDs];
      v94 = [v93 count];

      if (v94)
      {
        [v65 setAllowsInsert:1];
        v95 = [MEMORY[0x1E69BE540] entityName];
        [v65 setDestinationEntityName:v95];

        [v65 setIsDestinationObjectValid:&__block_literal_global_222];
        v145 = v126;
        LOBYTE(v95) = [v65 applyMutationsToManagedObjectToOneRelationship:v7 error:&v145];
        v12 = v145;

        v96 = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
        if ((v95 & 1) == 0)
        {
          v129 = v96;
          v70 = v125;
          goto LABEL_55;
        }

        v126 = v12;
      }

      else
      {
        v96 = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
      }

      v100 = v96;
      v101 = [v96 mutableObjectIDsAndUUIDs];

      v130 = v47;
      v132 = v65;
      v129 = v100;
      if (v101)
      {
        v102 = v7;
        [v100 setAllowsInsert:1];
        [v100 setAllowsRemove:1];
        v103 = [MEMORY[0x1E69BE540] entityName];
        [v100 setDestinationEntityName:v103];

        [v100 setIsDestinationObjectValid:&__block_literal_global_224];
        v104 = [v100 relationshipName];
        v105 = [v102 mutableSetValueForKey:v104];

        v144 = v126;
        v106 = [v100 applyMutationsToManagedObject:v102 unorderedMutableChildren:v105 error:&v144];

        v12 = v144;
        v107 = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
        if ((v106 & 1) == 0)
        {
          v128 = v107;
          v70 = v125;
          v65 = v132;
          goto LABEL_56;
        }

        v126 = v12;
      }

      else
      {
        v107 = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
      }

      v108 = v107;
      v109 = [v107 mutableObjectIDsAndUUIDs];

      v128 = v108;
      if (v109)
      {
        v110 = v7;
        [v108 setAllowsInsert:1];
        [v108 setAllowsRemove:1];
        v111 = [MEMORY[0x1E69BE540] entityName];
        [v108 setDestinationEntityName:v111];

        [v108 setIsDestinationObjectValid:&__block_literal_global_226];
        v112 = [v108 relationshipName];
        v113 = [v110 mutableSetValueForKey:v112];

        v143 = v126;
        LOBYTE(v112) = [v108 applyMutationsToManagedObject:v110 unorderedMutableChildren:v113 error:&v143];

        v12 = v143;
        v71 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
        if ((v112 & 1) == 0)
        {
          v70 = v125;
          goto LABEL_57;
        }

        v126 = v12;
      }

      else
      {
        v71 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
      }

      v114 = [v71 mutableObjectIDsAndUUIDs];

      if (v114)
      {
        v115 = v7;
        [v71 setAllowsInsert:1];
        [v71 setAllowsRemove:1];
        [v71 setAllowsMove:1];
        v116 = [MEMORY[0x1E69BE540] entityName];
        [v71 setDestinationEntityName:v116];

        v117 = [v71 relationshipName];
        v118 = [v115 mutableOrderedSetValueForKey:v117];

        v142 = v126;
        v119 = [v71 applyMutationsToManagedObject:v115 orderedMutableChildren:v118 error:&v142];

        v12 = v142;
        v72 = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
        if (!v119)
        {
          v73 = 0;
LABEL_105:
          v70 = v125;
LABEL_58:

          if (v73)
          {
            v74 = v7;
            v75 = v74;
            v127 = v23;
            if (self->_userFeedback)
            {
              v76 = MEMORY[0x1E69BE868];
              v77 = [v74 userFeedbacks];
              v78 = [v76 newestUserFeedbackInSet:v77];

              if (!v78)
              {
                v79 = MEMORY[0x1E69BE868];
                v80 = [v75 managedObjectContext];
                v81 = [(PHUserFeedback *)self->_userFeedback uuid];
                v78 = [v79 insertIntoManagedObjectContext:v80 withUUID:v81];

                [v78 setMemory:v75];
              }

              [v78 setType:{-[PHUserFeedback type](self->_userFeedback, "type")}];
              [v78 setFeature:{-[PHUserFeedback feature](self->_userFeedback, "feature")}];
              v82 = [(PHUserFeedback *)self->_userFeedback context];
              [v78 setContext:v82];

              v83 = [(PHUserFeedback *)self->_userFeedback lastModifiedDate];
              [v78 setLastModifiedDate:v83];
            }

            if (self->_didUnsetUserFeedback)
            {
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v84 = [v75 userFeedbacks];
              v85 = [v84 countByEnumeratingWithState:&v137 objects:v155 count:16];
              if (v85)
              {
                v86 = v85;
                v87 = *v138;
                do
                {
                  for (i = 0; i != v86; ++i)
                  {
                    if (*v138 != v87)
                    {
                      objc_enumerationMutation(v84);
                    }

                    v89 = *(*(&v137 + 1) + 8 * i);
                    v90 = [v75 managedObjectContext];
                    [v90 deleteObject:v89];
                  }

                  v86 = [v84 countByEnumeratingWithState:&v137 objects:v155 count:16];
                }

                while (v86);
              }

              v23 = v127;
            }

            v13 = 1;
            v26 = v134;
            v24 = v135;
            goto LABEL_77;
          }

          goto LABEL_73;
        }

        v126 = v12;
      }

      else
      {
        v72 = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
      }

      v120 = [v72 mutableObjectIDsAndUUIDs];

      if (v120)
      {
        v121 = v7;
        [v72 setAllowsInsert:1];
        [v72 setAllowsRemove:1];
        [v72 setAllowsMove:0];
        v122 = [MEMORY[0x1E69BE540] entityName];
        [v72 setDestinationEntityName:v122];

        v123 = [v72 relationshipName];
        v124 = [v121 mutableSetValueForKey:v123];

        v141 = v126;
        v73 = [v72 applyMutationsToManagedObject:v121 unorderedMutableChildren:v124 error:&v141];

        v12 = v141;
      }

      else
      {
        v73 = 1;
        v12 = v126;
      }

      goto LABEL_105;
    }

    v66 = MEMORY[0x1E696ABC0];
    v158 = *MEMORY[0x1E696A578];
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memories curated assets cannot be mutated"];
    v159 = v67;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
    v69 = v68 = v47;
    v46 = [v66 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v69];

    v47 = v68;
LABEL_51:
    v54 = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
LABEL_52:
    v70 = v54;
LABEL_53:
    v65 = [(PHMemoryChangeRequest *)self keyAssetHelper];
    v12 = v46;
LABEL_54:
    v129 = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
LABEL_55:
    v130 = v47;
    v128 = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
LABEL_56:
    v132 = v65;
    v71 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
LABEL_57:
    v72 = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
    v73 = 0;
    goto LABEL_58;
  }

  v13 = 0;
LABEL_78:

  return v13;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v24[21] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(PHMemoryChangeRequest *)self clientEntitledToMemoryMutation])
  {
    v10 = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];
    goto LABEL_9;
  }

  if (([v9 isEqualToString:@"updatedMovieAssetState"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"deletedMovieAssetState") & 1) == 0)
  {
    v13 = [(PHChangeRequest *)self helper];
    v21 = 0;
    v14 = [v13 allowMutationToManagedObject:v8 propertyKey:v9 error:&v21];
    v10 = v21;

    if (v14)
    {
      goto LABEL_5;
    }

LABEL_9:
    v12 = 0;
    if (!a5)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v10 = 0;
LABEL_5:
  v24[0] = @"rejected";
  v24[1] = @"favorite";
  v24[2] = @"pendingState";
  v24[3] = @"movieData";
  v24[4] = @"score";
  v24[5] = @"photosGraphData";
  v24[6] = @"photosGraphVersion";
  v24[7] = @"lastViewedDate";
  v24[8] = @"lastMoviePlayedDate";
  v24[9] = @"lastEnrichmentDate";
  v24[10] = @"assetListPredicate";
  v24[11] = @"title";
  v24[12] = @"subtitle";
  v24[13] = @"graphMemoryIdentifier";
  v24[14] = @"storyColorGradeKind";
  v24[15] = @"storySerializedTitleCategory";
  v24[16] = @"notificationState";
  v24[17] = @"blacklistedFeature";
  v24[18] = @"featuredState";
  v24[19] = @"updatedMovieAssetState";
  v24[20] = @"deletedMovieAssetState";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:21];
  if (-[PHChangeRequest isNewRequest](self, "isNewRequest") || ([v11 containsObject:v9] & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", v9];
    v23 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v17];

    v12 = 0;
    v10 = v18;
  }

  if (a5)
  {
LABEL_15:
    if (!v12)
    {
      v19 = v10;
      *a5 = v10;
    }
  }

LABEL_17:

  return v12;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PHMemoryChangeRequest *)self creationDate];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF00] date];
  }

  v8 = MEMORY[0x1E69BE5A8];
  v9 = [v6 managedObjectContext];
  v10 = [(PHChangeRequest *)self uuid];
  v11 = [(PHMemoryChangeRequest *)self title];
  v12 = [(PHMemoryChangeRequest *)self subtitle];
  v13 = [v8 insertIntoContext:v9 withUUID:v10 title:v11 subtitle:v12 creationDate:v7];

  if (a4 && !v13)
  {
    *a4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v13;
}

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PHChangeRequest *)self helper];
  v18 = 0;
  v8 = [v7 validateMutationsToManagedObject:v6 error:&v18];
  v9 = v18;

  if (v8)
  {
    v10 = [(PHMemoryChangeRequest *)self _validateAssetCounts];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      if ([v6 pendingState] != 3 || self->_userEdited)
      {
        v13 = 1;
        goto LABEL_11;
      }

      v15 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A278];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Change request for user edited memory requires 'userEdited' to be true."];
      v20[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v11 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];

      v9 = v16;
    }

    v9 = v11;
  }

  if (a4)
  {
    v12 = v9;
    v13 = 0;
    *a4 = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  if (![(PHMemoryChangeRequest *)self clientEntitledToMemoryMutation])
  {
    v8 = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];
LABEL_8:
    v11 = 0;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = [(PHMemoryChangeRequest *)self title];
  v15 = 0;
  v7 = [objc_opt_class() validateMemoryTitle:v6 error:&v15];
  v8 = v15;

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = [(PHMemoryChangeRequest *)self _validateAssetCounts];
  v10 = v9;
  v11 = v9 == 0;
  if (v9)
  {
    v12 = v9;

    v8 = v12;
  }

  if (a4)
  {
LABEL_9:
    if (!v11)
    {
      v13 = v8;
      *a4 = v8;
    }
  }

LABEL_11:

  return v11;
}

- (id)_validateAssetCounts
{
  v32[1] = *MEMORY[0x1E69E9840];
  customMaximumNumberOfAssetsForUnitTesting = self->_customMaximumNumberOfAssetsForUnitTesting;
  if (customMaximumNumberOfAssetsForUnitTesting)
  {
    v4 = [(NSNumber *)customMaximumNumberOfAssetsForUnitTesting integerValue];
    v5 = [(NSNumber *)self->_customMaximumNumberOfAssetsForUnitTesting integerValue];
  }

  else
  {
    v5 = 5000;
    v4 = 512;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
  v8 = [v7 mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:v8];

  v9 = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
  v10 = [v9 mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:v10];

  v11 = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
  v12 = [v11 mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:v12];

  v13 = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
  v14 = [v13 mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:v14];

  v15 = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
  v16 = [v15 mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:v16];

  if ([v6 count] > v4)
  {
    v17 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A278];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of total assets, count of unique assets: %lu maximum limit: %lu", objc_msgSend(v6, "count"), v4];
    v32[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v20 = [v17 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v19];
LABEL_8:

    goto LABEL_10;
  }

  v21 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
  v22 = [v21 mutableObjectIDsAndUUIDs];
  v23 = [v22 count];

  if (v23 > v5)
  {
    v24 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v25 = MEMORY[0x1E696AEC0];
    v18 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
    v19 = [v18 mutableObjectIDsAndUUIDs];
    v26 = [v25 stringWithFormat:@"Invalid number of custom user assets, count of assets: %lu maximum limit: %lu", objc_msgSend(v19, "count"), v5];
    v30 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v24 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v27];

    goto LABEL_8;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (void)setUserFeedback:(id)a3
{
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  userFeedback = self->_userFeedback;
  self->_userFeedback = v4;

  if (!v4)
  {
    self->_didUnsetUserFeedback = 1;
  }
}

- (void)setBlacklistedFeature:(id)a3
{
  v11 = a3;
  [(PHChangeRequest *)self didMutate];
  if (v11)
  {
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    v5 = [(PHChangeRequest *)self helper];
    v6 = [v5 mutations];
    [v6 setObject:v4 forKeyedSubscript:@"blacklistedFeature"];

    v7 = [(PHChangeRequest *)self helper];
    v8 = [v7 nilMutations];
    [v8 removeObject:@"blacklistedFeature"];
  }

  else
  {
    v9 = [(PHChangeRequest *)self helper];
    v10 = [v9 mutations];
    [v10 removeObjectForKey:@"blacklistedFeature"];

    v4 = [(PHChangeRequest *)self helper];
    v7 = [v4 nilMutations];
    [v7 addObject:@"blacklistedFeature"];
  }
}

- (PHMemoryFeature)blacklistedFeature
{
  v12 = *MEMORY[0x1E69E9840];
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"blacklistedFeature"];

  if (v5)
  {
    v9 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v9];
    v7 = v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v7;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed unarchiving blacklisted feature, error %@", buf, 0xCu);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setQueryHintObjects:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PHMemory assetListPredicateFromQueryHintObjects:v4];
  if (v5)
  {
    [(PHChangeRequest *)self didMutate];
    v6 = [(PHChangeRequest *)self helper];
    v7 = [v6 mutations];
    [v7 setObject:v5 forKey:@"assetListPredicate"];
  }

  else
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Unsupported queryHintObject %@ as assetListPredicate", &v8, 0xCu);
    }
  }
}

- (void)setQueryHintObject:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(PHMemoryChangeRequest *)self setQueryHintObjects:v6, v7, v8];
}

- (void)moveCustomUserAssetsAtIndexes:(id)a3 toIndex:(unint64_t)a4
{
  v10 = a3;
  if ([v10 count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    v6 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    v7 = [v6 objectsAtIndexes:v10];
    [v6 removeObjectsAtIndexes:v10];
    v8 = [v10 count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a4, v8}];
    [v6 insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceCustomUserAssetsAtIndexes:(id)a3 withAssets:(id)a4
{
  v8 = a3;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a4];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    v7 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [v7 replaceObjectsAtIndexes:v8 withObjects:v6];
  }
}

- (void)removeCustomUserAssetsAtIndexes:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    v4 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [v4 removeObjectsAtIndexes:v5];
  }
}

- (void)removeCustomUserAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    v5 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [v5 removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)insertCustomUserAssets:(id)a3 atIndexes:(id)a4
{
  v8 = a4;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    v7 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [v7 insertObjects:v6 atIndexes:v8];
  }
}

- (void)addCustomUserAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    v5 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [v5 addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)setCustomUserAssets:(id)a3
{
  v8 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
  v4 = [v8 count];
  [(PHChangeRequestHelper *)self->super._helper didMutate];
  [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
  customUserAssetsHelper = self->_customUserAssetsHelper;
  if (v4)
  {
    v6 = [v8 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v7 = v6;
  [(PHRelationshipChangeRequestHelper *)customUserAssetsHelper setMutableObjectIDsAndUUIDs:v6];
}

- (void)_prepareCustomUserAssetIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper originalObjectIDs];
  if (!v3)
  {
    backingMemory = self->_backingMemory;
    if (!backingMemory)
    {
      goto LABEL_7;
    }

    v5 = [(PHObject *)self->_backingMemory photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];
    v3 = [PHQuery queryForCustomUserAssetsInMemory:backingMemory options:v6];

    v7 = [v3 executeQuery];
    customUserAssetsHelper = self->_customUserAssetsHelper;
    v9 = [v7 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)customUserAssetsHelper setOriginalObjectIDs:v9];

    v10 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper originalObjectIDs];

    if (!v10)
    {
      v11 = self->_customUserAssetsHelper;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PHRelationshipChangeRequestHelper *)v11 setOriginalObjectIDs:v12];
    }
  }

LABEL_7:
  v13 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];

  if (!v13)
  {
    v14 = self->_customUserAssetsHelper;
    v16 = [(PHRelationshipChangeRequestHelper *)v14 originalObjectIDs];
    v15 = [v16 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)v14 setMutableObjectIDsAndUUIDs:v15];
  }
}

- (void)setMovieStateData:(id)a3 forAsset:(id)a4
{
  v11 = a3;
  v6 = a4;
  [(PHChangeRequest *)self didMutate];
  v7 = [(PHChangeRequest *)self helper];
  v8 = [v7 mutations];

  if (v11)
  {
    v9 = [v8 objectForKey:@"updatedMovieAssetState"];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v8 setObject:v9 forKey:@"updatedMovieAssetState"];
    }

    v10 = [v6 uuid];
    [v9 setObject:v11 forKey:v10];
  }

  else
  {
    v9 = [v8 objectForKey:@"deletedMovieAssetState"];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF70] array];
      [v8 setObject:v9 forKey:@"deletedMovieAssetState"];
    }

    v10 = [v6 uuid];
    [v9 addObject:v10];
  }
}

- (void)setUserCuratedAssets:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHRelationshipChangeRequestHelper *)self->_userCuratedAssetsHelper originalObjectIDs];
  if (!v5)
  {
    if (!self->_backingMemory)
    {
      goto LABEL_5;
    }

    v6 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    v5 = [v6 librarySpecificFetchOptions];

    [v5 setIncludeGuestAssets:1];
    v7 = [PHQuery queryForUserCuratedAssetsInMemory:self->_backingMemory options:v5];
    v8 = [v7 executeQuery];
    userCuratedAssetsHelper = self->_userCuratedAssetsHelper;
    v10 = [v8 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)userCuratedAssetsHelper setOriginalObjectIDs:v10];
  }

LABEL_5:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if (!v14)
        {
          v14 = [MEMORY[0x1E695DF70] array];
        }

        v18 = PLObjectIDOrUUIDFromPHObject(v17);
        [v14 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [(PHChangeRequest *)self didMutate];
  v19 = self->_userCuratedAssetsHelper;
  if (v14)
  {
    [(PHRelationshipChangeRequestHelper *)v19 setMutableObjectIDsAndUUIDs:v14];
  }

  else
  {
    v20 = [MEMORY[0x1E695DF70] array];
    [(PHRelationshipChangeRequestHelper *)v19 setMutableObjectIDsAndUUIDs:v20];
  }
}

- (void)setMovieCuratedAssets:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHRelationshipChangeRequestHelper *)self->_movieCuratedAssetsHelper originalObjectIDs];
  if (!v5)
  {
    backingMemory = self->_backingMemory;
    if (!backingMemory)
    {
      goto LABEL_5;
    }

    v5 = [PHQuery queryForMovieCuratedAssetsInMemory:backingMemory options:0];
    v7 = [v5 executeQuery];
    movieCuratedAssetsHelper = self->_movieCuratedAssetsHelper;
    v9 = [v7 fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)movieCuratedAssetsHelper setOriginalObjectIDs:v9];
  }

LABEL_5:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (!v13)
        {
          v13 = [MEMORY[0x1E695DF70] array];
        }

        v17 = PLObjectIDOrUUIDFromPHObject(v16);
        [v13 addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  [(PHChangeRequest *)self didMutate];
  v18 = self->_movieCuratedAssetsHelper;
  if (v13)
  {
    [(PHRelationshipChangeRequestHelper *)v18 setMutableObjectIDsAndUUIDs:v13];
  }

  else
  {
    v19 = [MEMORY[0x1E695DF70] array];
    [(PHRelationshipChangeRequestHelper *)v18 setMutableObjectIDsAndUUIDs:v19];
  }
}

- (void)setKeyAssetUUID:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    [(PHChangeRequest *)self didMutate];
    v5 = [(PHMemoryChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDs];
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    [v5 addObjectsFromArray:v6];
  }
}

- (void)setRepresentativeAssetUUIDs:(id)a3 curatedAssetUUIDs:(id)a4 extendedCuratedAssetUUIDs:(id)a5 keyAssetUUID:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v16 count])
  {
    [(PHChangeRequest *)self didMutate];
    v13 = [(PHMemoryChangeRequest *)self _mutableRepresentativeAssetObjectIDsAndUUIDs];
    [v13 addObjectsFromArray:v16];
  }

  if ([v10 count])
  {
    [(PHChangeRequest *)self didMutate];
    v14 = [(PHMemoryChangeRequest *)self _mutableCuratedAssetObjectIDsAndUUIDs];
    [v14 addObjectsFromArray:v10];
  }

  if ([v11 count])
  {
    [(PHChangeRequest *)self didMutate];
    v15 = [(PHMemoryChangeRequest *)self _mutableExtendedCuratedAssetObjectIDsAndUUIDs];
    [v15 addObjectsFromArray:v11];
  }

  [(PHMemoryChangeRequest *)self setKeyAssetUUID:v12];
}

- (void)setKeyAsset:(id)a3
{
  v7 = a3;
  if (v7)
  {
    [(PHChangeRequest *)self didMutate];
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = PLObjectIDOrUUIDFromPHObject(v7);
    [v4 addObject:v5];

    if (v4)
    {
      v6 = [(PHMemoryChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDs];
      [v6 addObjectsFromArray:v4];
    }
  }
}

- (void)setRepresentativeAssets:(id)a3 curatedAssets:(id)a4 extendedCuratedAssets:(id)a5 keyAsset:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v39 = a5;
  v12 = a6;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        if (!v15)
        {
          [(PHChangeRequest *)self didMutate];
          v15 = [MEMORY[0x1E695DF70] array];
        }

        v19 = PLObjectIDOrUUIDFromPHObject(v18);
        [v15 addObject:v19];
      }

      v14 = [v10 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v14);
    if (v15)
    {
      v20 = [(PHMemoryChangeRequest *)self _mutableRepresentativeAssetObjectIDsAndUUIDs];
      [v20 addObjectsFromArray:v15];
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
  v23 = v21;
  if (!v22)
  {
    goto LABEL_23;
  }

  v24 = v22;
  v23 = 0;
  v25 = *v46;
  do
  {
    for (j = 0; j != v24; ++j)
    {
      if (*v46 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v45 + 1) + 8 * j);
      if (!v23)
      {
        [(PHChangeRequest *)self didMutate];
        v23 = [MEMORY[0x1E695DF70] array];
      }

      v28 = PLObjectIDOrUUIDFromPHObject(v27);
      [v23 addObject:v28];
    }

    v24 = [v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
  }

  while (v24);

  if (v23)
  {
    v29 = [(PHMemoryChangeRequest *)self _mutableCuratedAssetObjectIDsAndUUIDs];
    [v29 addObjectsFromArray:v23];

LABEL_23:
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = v39;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
  v32 = v30;
  if (!v31)
  {
LABEL_35:

    goto LABEL_36;
  }

  v33 = v31;
  v40 = v12;
  v32 = 0;
  v34 = *v42;
  do
  {
    for (k = 0; k != v33; ++k)
    {
      if (*v42 != v34)
      {
        objc_enumerationMutation(v30);
      }

      v36 = *(*(&v41 + 1) + 8 * k);
      if (!v32)
      {
        [(PHChangeRequest *)self didMutate];
        v32 = [MEMORY[0x1E695DF70] array];
      }

      v37 = PLObjectIDOrUUIDFromPHObject(v36);
      [v32 addObject:v37];
    }

    v33 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
  }

  while (v33);

  v12 = v40;
  if (v32)
  {
    v38 = [(PHMemoryChangeRequest *)self _mutableExtendedCuratedAssetObjectIDsAndUUIDs];
    [v38 addObjectsFromArray:v32];

    goto LABEL_35;
  }

LABEL_36:
  [(PHMemoryChangeRequest *)self setKeyAsset:v12];
}

- (id)_mutableKeyAssetObjectIDsAndUUIDs
{
  [(PHMemoryChangeRequest *)self _prepareAssetIDsIfNeeded];
  keyAssetHelper = self->_keyAssetHelper;

  return [(PHRelationshipChangeRequestHelper *)keyAssetHelper mutableObjectIDsAndUUIDs];
}

- (id)_mutableExtendedCuratedAssetObjectIDsAndUUIDs
{
  [(PHMemoryChangeRequest *)self _prepareAssetIDsIfNeeded];
  extendedCuratedAssetsHelper = self->_extendedCuratedAssetsHelper;

  return [(PHRelationshipChangeRequestHelper *)extendedCuratedAssetsHelper mutableObjectIDsAndUUIDs];
}

- (id)_mutableCuratedAssetObjectIDsAndUUIDs
{
  [(PHMemoryChangeRequest *)self _prepareAssetIDsIfNeeded];
  curatedAssetsHelper = self->_curatedAssetsHelper;

  return [(PHRelationshipChangeRequestHelper *)curatedAssetsHelper mutableObjectIDsAndUUIDs];
}

- (id)_mutableRepresentativeAssetObjectIDsAndUUIDs
{
  [(PHMemoryChangeRequest *)self _prepareAssetIDsIfNeeded];
  representativeAssetsHelper = self->_representativeAssetsHelper;

  return [(PHRelationshipChangeRequestHelper *)representativeAssetsHelper mutableObjectIDsAndUUIDs];
}

- (void)_prepareAssetIDsIfNeeded
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper originalObjectIDs];

  if (!v3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v4 = [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper mutableObjectIDsAndUUIDs];

  if (!v4)
  {
    representativeAssetsHelper = self->_representativeAssetsHelper;
    v6 = [(PHRelationshipChangeRequestHelper *)representativeAssetsHelper originalObjectIDs];
    v7 = [v6 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)representativeAssetsHelper setMutableObjectIDsAndUUIDs:v7];
  }

  v8 = [(PHRelationshipChangeRequestHelper *)self->_curatedAssetsHelper originalObjectIDs];

  if (!v8)
  {
    [(PHRelationshipChangeRequestHelper *)self->_curatedAssetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v9 = [(PHRelationshipChangeRequestHelper *)self->_curatedAssetsHelper mutableObjectIDsAndUUIDs];

  if (!v9)
  {
    curatedAssetsHelper = self->_curatedAssetsHelper;
    v11 = [(PHRelationshipChangeRequestHelper *)curatedAssetsHelper originalObjectIDs];
    v12 = [v11 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)curatedAssetsHelper setMutableObjectIDsAndUUIDs:v12];
  }

  v13 = [(PHRelationshipChangeRequestHelper *)self->_extendedCuratedAssetsHelper originalObjectIDs];

  if (!v13)
  {
    [(PHRelationshipChangeRequestHelper *)self->_extendedCuratedAssetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v14 = [(PHRelationshipChangeRequestHelper *)self->_extendedCuratedAssetsHelper mutableObjectIDsAndUUIDs];

  if (!v14)
  {
    extendedCuratedAssetsHelper = self->_extendedCuratedAssetsHelper;
    v16 = [(PHRelationshipChangeRequestHelper *)extendedCuratedAssetsHelper originalObjectIDs];
    v17 = [v16 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)extendedCuratedAssetsHelper setMutableObjectIDsAndUUIDs:v17];
  }

  v18 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper originalObjectIDs];

  if (!v18)
  {
    [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  v19 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];

  if (!v19)
  {
    keyAssetHelper = self->_keyAssetHelper;
    v22 = [(PHRelationshipChangeRequestHelper *)keyAssetHelper originalObjectIDs];
    v21 = [v22 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyAssetHelper setMutableObjectIDsAndUUIDs:v21];
  }
}

- (void)setStoryTitleCategory:(id)a3
{
  SerializedTitleCategory = PFStoryTitleCategoryGetSerializedTitleCategory();

  [(PHMemoryChangeRequest *)self setStorySerializedTitleCategory:SerializedTitleCategory];
}

- (NSString)storyTitleCategory
{
  [(PHMemoryChangeRequest *)self storySerializedTitleCategory];

  return PFStoryValidatedTitleCategory();
}

- (void)setUserEdited:(BOOL)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  self->_userEdited = a3;
  self->_didSetUserEdited = 1;
}

- (void)setUserCreated:(BOOL)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  self->_userCreated = a3;
  self->_didSetUserCreated = 1;
}

- (void)setFeaturedState:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"featuredState"];
}

- (int64_t)featuredState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"featuredState"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setNotificationState:(unint64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"notificationState"];
}

- (unint64_t)notificationState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"notificationState"];

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

- (void)setLastMoviePlayedDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"lastMoviePlayedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"lastMoviePlayedDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"lastMoviePlayedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"lastMoviePlayedDate"];
  }
}

- (NSDate)lastMoviePlayedDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"lastMoviePlayedDate"];

  return v5;
}

- (void)setLastViewedDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"lastViewedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"lastViewedDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"lastViewedDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"lastViewedDate"];
  }
}

- (NSDate)lastViewedDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"lastViewedDate"];

  return v5;
}

- (void)setPhotosGraphVersion:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"photosGraphVersion"];
}

- (int64_t)photosGraphVersion
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"photosGraphVersion"];

  v6 = [v5 longLongValue];
  return v6;
}

- (void)setPhotosGraphData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"photosGraphData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"photosGraphData"];
  }

  else
  {
    [v6 removeObjectForKey:@"photosGraphData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"photosGraphData"];
  }
}

- (NSData)photosGraphData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"photosGraphData"];

  return v5;
}

- (void)setMovieData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"movieData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"movieData"];
  }

  else
  {
    [v6 removeObjectForKey:@"movieData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"movieData"];
  }
}

- (NSData)movieData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"movieData"];

  return v5;
}

- (void)setStorySerializedTitleCategory:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"storySerializedTitleCategory"];
}

- (int64_t)storySerializedTitleCategory
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"storySerializedTitleCategory"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setStoryColorGradeKind:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"storyColorGradeKind"];
}

- (int64_t)storyColorGradeKind
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"storyColorGradeKind"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setGraphMemoryIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"graphMemoryIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"graphMemoryIdentifier"];
  }

  else
  {
    [v6 removeObjectForKey:@"graphMemoryIdentifier"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"graphMemoryIdentifier"];
  }
}

- (NSString)graphMemoryIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"graphMemoryIdentifier"];

  return v5;
}

- (void)setSubtitle:(id)a3
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

- (NSString)subtitle
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subtitle"];

  return v5;
}

- (void)setTitle:(id)a3
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

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"title"];

  return v5;
}

- (void)setCreationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"creationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"creationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationDate"];

  return v5;
}

- (void)setScore:(double)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"score"];
}

- (double)score
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"score"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSubcategory:(unint64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"subcategory"];
}

- (unint64_t)subcategory
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subcategory"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setCategory:(unint64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"category"];
}

- (unint64_t)category
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"category"];

  v6 = [v5 intValue];
  return v6;
}

- (void)setCreationType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"creationType"];
}

- (unsigned)creationType
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationType"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setPendingState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"pendingState"];
}

- (unsigned)pendingState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"pendingState"];

  LOWORD(v3) = [v5 intValue];
  return v3;
}

- (void)setFavorite:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"favorite"];
}

- (BOOL)isFavorite
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"favorite"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)setRejected:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"rejected"];
}

- (BOOL)isRejected
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"rejected"];

  LOBYTE(v3) = [v5 BOOLValue];
  return v3;
}

- (void)encodeToXPCDict:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 encodeToXPCDict:v4];

  v6 = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
  [v6 encodeToXPCDict:v4];

  v7 = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
  [v7 encodeToXPCDict:v4];

  v8 = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
  [v8 encodeToXPCDict:v4];

  v9 = [(PHMemoryChangeRequest *)self keyAssetHelper];
  [v9 encodeToXPCDict:v4];

  v10 = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
  [v10 encodeToXPCDict:v4];

  v11 = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
  [v11 encodeToXPCDict:v4];

  v12 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
  [v12 encodeToXPCDict:v4];

  v13 = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
  [v13 encodeToXPCDict:v4];

  if (self->_incrementPlayCount)
  {
    xpc_dictionary_set_BOOL(v4, "incrementPlayCount", 1);
  }

  if (self->_incrementShareCount)
  {
    xpc_dictionary_set_BOOL(v4, "incrementShareCount", 1);
  }

  if (self->_incrementViewCount)
  {
    xpc_dictionary_set_BOOL(v4, "incrementViewCount", 1);
  }

  userFeedback = self->_userFeedback;
  if (userFeedback)
  {
    v18 = 0;
    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:userFeedback requiringSecureCoding:1 error:&v18];
    v16 = v18;
    if (v15)
    {
      PLXPCDictionarySetData();
    }

    else
    {
      v17 = PLPhotoKitGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v16;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "Failed to encode userFeedback object: %@", buf, 0xCu);
      }
    }
  }

  xpc_dictionary_set_BOOL(v4, "userFeedbackDataUnsetKey", self->_didUnsetUserFeedback);
  xpc_dictionary_set_BOOL(v4, "userCreatedKey", self->_userCreated);
  xpc_dictionary_set_BOOL(v4, "userCreatedDidSetKey", self->_userCreated);
  xpc_dictionary_set_BOOL(v4, "userEditedKey", self->_userEdited);
  xpc_dictionary_set_BOOL(v4, "userEditedDidSetKey", self->_userEdited);
  xpc_dictionary_set_int64(v4, "customMaximumNumberOfAssetsForUnitTesting", [(NSNumber *)self->_customMaximumNumberOfAssetsForUnitTesting integerValue]);
}

- (PHMemoryChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v49.receiver = self;
  v49.super_class = PHMemoryChangeRequest;
  v11 = [(PHChangeRequest *)&v49 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      representativeAssetsHelper = v11->_representativeAssetsHelper;
      v11->_representativeAssetsHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"curatedAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      curatedAssetsHelper = v11->_curatedAssetsHelper;
      v11->_curatedAssetsHelper = v16;

      v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedCuratedAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      extendedCuratedAssetsHelper = v11->_extendedCuratedAssetsHelper;
      v11->_extendedCuratedAssetsHelper = v18;

      v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAsset" xpcDict:v8 changeRequestHelper:v11->super._helper];
      keyAssetHelper = v11->_keyAssetHelper;
      v11->_keyAssetHelper = v20;

      v22 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"movieCuratedAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      movieCuratedAssetsHelper = v11->_movieCuratedAssetsHelper;
      v11->_movieCuratedAssetsHelper = v22;

      v24 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userCuratedAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      userCuratedAssetsHelper = v11->_userCuratedAssetsHelper;
      v11->_userCuratedAssetsHelper = v24;

      v26 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customUserAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      customUserAssetsHelper = v11->_customUserAssetsHelper;
      v11->_customUserAssetsHelper = v26;

      v11->_clientEntitledToMemoryMutation = [v10 photoKitEntitledFor:*MEMORY[0x1E69C0058]];
      v28 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userRemovedAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      userRemovedAssetsHelper = v11->_userRemovedAssetsHelper;
      v11->_userRemovedAssetsHelper = v28;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PHMemoryChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
      aBlock[3] = &unk_1E75AAEB0;
      v30 = v11;
      v47 = v30;
      v48 = v9;
      v31 = _Block_copy(aBlock);
      v30->_incrementPlayCount = xpc_dictionary_get_BOOL(v8, "incrementPlayCount");
      v30->_incrementShareCount = xpc_dictionary_get_BOOL(v8, "incrementShareCount");
      v32 = xpc_dictionary_get_BOOL(v8, "incrementViewCount");
      v30->_incrementViewCount = v32;
      if (v30->_incrementPlayCount || v30->_incrementShareCount || v32)
      {
        v31[2](v31);
      }

      v33 = PLDataFromXPCDictionary();
      if (v33)
      {
        v45 = 0;
        v34 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v33 error:&v45];
        v35 = v45;
        userFeedback = v30->_userFeedback;
        v30->_userFeedback = v34;

        if (v30->_userFeedback)
        {
          v31[2](v31);
        }

        else
        {
          v37 = PLPhotoKitGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v35;
            _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEFAULT, "Failed to decode userFeedback object: %@", buf, 0xCu);
          }
        }
      }

      v38 = xpc_dictionary_get_BOOL(v8, "userFeedbackDataUnsetKey");
      v30->_didUnsetUserFeedback = v38;
      if (v38)
      {
        v31[2](v31);
      }

      v39 = xpc_dictionary_get_BOOL(v8, "userCreatedDidSetKey");
      v30->_didSetUserCreated = v39;
      if (v39)
      {
        v30->_userCreated = xpc_dictionary_get_BOOL(v8, "userCreatedKey");
        v31[2](v31);
      }

      v40 = xpc_dictionary_get_BOOL(v8, "userEditedDidSetKey");
      v30->_didSetUserEdited = v40;
      if (v40)
      {
        v30->_userEdited = xpc_dictionary_get_BOOL(v8, "userEditedKey");
        v31[2](v31);
      }

      int64 = xpc_dictionary_get_int64(v8, "customMaximumNumberOfAssetsForUnitTesting");
      if (int64 >= 1)
      {
        v42 = [MEMORY[0x1E696AD98] numberWithLongLong:int64];
        customMaximumNumberOfAssetsForUnitTesting = v30->_customMaximumNumberOfAssetsForUnitTesting;
        v30->_customMaximumNumberOfAssetsForUnitTesting = v42;
      }
    }
  }

  return v11;
}

uint64_t __69__PHMemoryChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setMutated:1];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 recordUpdateRequest:v3];
}

- (PHMemoryChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = PHMemoryChangeRequest;
  v8 = [(PHChangeRequest *)&v22 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAsset" changeRequestHelper:v8->super._helper];
    keyAssetHelper = v8->_keyAssetHelper;
    v8->_keyAssetHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"movieCuratedAssets" changeRequestHelper:v8->super._helper];
    movieCuratedAssetsHelper = v8->_movieCuratedAssetsHelper;
    v8->_movieCuratedAssetsHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userCuratedAssets" changeRequestHelper:v8->super._helper];
    userCuratedAssetsHelper = v8->_userCuratedAssetsHelper;
    v8->_userCuratedAssetsHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customUserAssets" changeRequestHelper:v8->super._helper];
    customUserAssetsHelper = v8->_customUserAssetsHelper;
    v8->_customUserAssetsHelper = v17;

    v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userRemovedAssets" changeRequestHelper:v8->super._helper];
    userRemovedAssetsHelper = v8->_userRemovedAssetsHelper;
    v8->_userRemovedAssetsHelper = v19;
  }

  return v8;
}

- (id)initForNewObject
{
  v22.receiver = self;
  v22.super_class = PHMemoryChangeRequest;
  v2 = [(PHChangeRequest *)&v22 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAsset" changeRequestHelper:v2->super._helper];
    keyAssetHelper = v2->_keyAssetHelper;
    v2->_keyAssetHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeAssets" changeRequestHelper:v2->super._helper];
    representativeAssetsHelper = v2->_representativeAssetsHelper;
    v2->_representativeAssetsHelper = v7;

    v9 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"curatedAssets" changeRequestHelper:v2->super._helper];
    curatedAssetsHelper = v2->_curatedAssetsHelper;
    v2->_curatedAssetsHelper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedCuratedAssets" changeRequestHelper:v2->super._helper];
    extendedCuratedAssetsHelper = v2->_extendedCuratedAssetsHelper;
    v2->_extendedCuratedAssetsHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"movieCuratedAssets" changeRequestHelper:v2->super._helper];
    movieCuratedAssetsHelper = v2->_movieCuratedAssetsHelper;
    v2->_movieCuratedAssetsHelper = v13;

    v15 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userCuratedAssets" changeRequestHelper:v2->super._helper];
    userCuratedAssetsHelper = v2->_userCuratedAssetsHelper;
    v2->_userCuratedAssetsHelper = v15;

    v17 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customUserAssets" changeRequestHelper:v2->super._helper];
    customUserAssetsHelper = v2->_customUserAssetsHelper;
    v2->_customUserAssetsHelper = v17;

    v19 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userRemovedAssets" changeRequestHelper:v2->super._helper];
    userRemovedAssetsHelper = v2->_userRemovedAssetsHelper;
    v2->_userRemovedAssetsHelper = v19;
  }

  return v2;
}

- (PHObjectPlaceholder)placeholderForCreatedMemory
{
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

+ (id)changeRequestForRemotelyViewedMemoryWithLocalIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setIncludePendingMemories:1];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"localIdentifier == %@", v3];
  [v4 setPredicate:v5];

  v6 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];
  if ([v6 count])
  {
    v7 = [v6 firstObject];
    v8 = [PHMemoryChangeRequest changeRequestForMemory:v7];
    [v8 incrementViewCount];
    if ([v7 pendingState] == 1)
    {
      [v8 setPendingState:0];
    }

    PLSAggregateDictionaryAddValueForScalarKey();
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v10 = [v8 clientName];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69BFB88]];

    v11 = +[PHMemory stringForCategory:](PHMemory, "stringForCategory:", [v7 category]);
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69BFB90]];

    v12 = +[PHMemory stringForSubcategory:](PHMemory, "stringForSubcategory:", [v7 subcategory]);
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BFB98]];

    PLSendCoreAnalyticEvent();
  }

  else
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "Cannot find memory for local identifier %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (void)unblockPersonsInMemoriesWithBlockedPersonFeature:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = [v11 blacklistedFeature];
        v13 = [v12 type];

        if (v13 != 1)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:a1 file:@"PHMemoryChangeRequest.m" lineNumber:987 description:@"Memory does not contain a blocked feature of type PHMemoryFeatureTypePeoplePerson."];
        }

        if ([v11 category] == 401)
        {
          [v5 addObject:v11];
        }

        else
        {
          v14 = [PHMemoryChangeRequest changeRequestForMemory:v11];
          [v14 setBlacklistedFeature:0];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [a1 deleteMemories:v5];
  }
}

+ (void)blockPerson:(id)a3 withAsset:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 photoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v24[0] = @"PHAssetPropertySetIdentifier";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v8 setFetchPropertySets:v9];

    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v23 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v8 setSortDescriptors:v11];

    [v8 setFetchLimit:10];
    v12 = [PHAsset fetchAssetsForPerson:v5 options:v8];
    v13 = [v12 fetchedObjects];
    v14 = v13;
    if (v6)
    {
      if (([v13 containsObject:v6] & 1) == 0)
      {
        v15 = [v14 arrayByAddingObject:v6];

        v14 = v15;
      }
    }

    else
    {
      v16 = [v13 firstObject];
      if (!v16)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v5;
          _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed blocking person %@, no representative asset found", buf, 0xCu);
        }

        v6 = 0;
        goto LABEL_8;
      }

      v6 = v16;
    }

    v17 = [MEMORY[0x1E695DF00] date];
    v18 = [PHMemoryChangeRequest creationRequestForMemoryWithTitle:@"_" subtitle:0 creationDate:v17 category:401 subcategory:204 representativeAssets:v14 curatedAssets:v14 extendedCuratedAssets:v14 keyAsset:v6];

    [v18 setUserCreated:1];
    [v18 setPendingState:0];
    [v18 setRejected:1];
    v19 = [v5 localIdentifier];
    v20 = [PHMemoryFeature peopleMemoryFeatureWithPersonLocalIdentifier:v19];
    [v18 setBlacklistedFeature:v20];

LABEL_8:
  }
}

+ (void)blockPerson:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [v4 photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];
    v15[0] = @"PHFacePropertySetIdentifier";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v6 setFetchPropertySets:v7];

    v8 = [PHFace fetchKeyFaceForPerson:v4 options:v6];
    v9 = [v5 librarySpecificFetchOptions];
    v14 = @"PHAssetPropertySetIdentifier";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v9 setFetchPropertySets:v10];

    [v9 setFetchLimit:1];
    v11 = [v8 fetchedObjects];
    v12 = [PHAsset fetchAssetsForFaces:v11 options:v9];
    v13 = [v12 firstObject];

    [a1 blockPerson:v4 withAsset:v13];
  }
}

+ (void)deleteMemories:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHMemoryDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)validateMemoryTitle:(id)a3 error:(id *)a4
{
  v5 = validateMemoryTitle_error__onceToken;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&validateMemoryTitle_error__onceToken, &__block_literal_global_14193);
  }

  v7 = [v6 stringByTrimmingCharactersInSet:validateMemoryTitle_error__characterSet];

  if ([v7 length])
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v8 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Empty title unsupported"];
    v7 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    v8 = v8;
    *a4 = v8;
  }

LABEL_9:

  return v7;
}

void __51__PHMemoryChangeRequest_validateMemoryTitle_error___block_invoke()
{
  v2 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  [v2 removeCharactersInString:@" "];
  v0 = [v2 copy];
  v1 = validateMemoryTitle_error__characterSet;
  validateMemoryTitle_error__characterSet = v0;
}

+ (id)changeRequestForMemory:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHMemoryChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHMemoryChangeRequest *)v4 initWithUUID:v5 objectID:v6];

    [(PHMemoryChangeRequest *)v7 _setBackingMemory:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_preferredAttributesForMemoryCreationFromObject:(id)a3 withSuccess:(BOOL)a4 title:(id)a5 subtitle:(id)a6 error:(id)a7 proposedAttributes:(id)a8
{
  v12 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = [v17 objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];
  v19 = [v17 objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];
  v20 = [v19 integerValue];

  v21 = [v17 objectForKeyedSubscript:@"PHMemoryCreationAttributeSubtitleKey"];

  if (v12)
  {
    if (!v18 || v20 == 5)
    {
      v23 = v14;

      v20 = 5;
      v18 = v23;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else if (v21)
    {
      goto LABEL_11;
    }

    v21 = v15;
  }

  else
  {
    v22 = PLMemoriesGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "Failed to request preferred attributes for memory creation from %@: %@", &v27, 0x16u);
    }
  }

LABEL_11:
  v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v24 setObject:v18 forKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
  [v24 setObject:v25 forKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];

  [v24 setObject:v21 forKeyedSubscript:@"PHMemoryCreationAttributeSubtitleKey"];

  return v24;
}

+ (int64_t)_titleFormatForProposedAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];
    if ([v5 integerValue] == 5)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

+ (BOOL)_shouldAcceptProposedAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];
    v6 = [v5 integerValue];

    if (v6 == 5)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [v3 objectForKeyedSubscript:@"PHMemoryCreationAttributeSubtitleKey"];
      LOBYTE(v4) = v7 != 0;
    }
  }

  return v4;
}

+ (id)preferredAttributesForMemoryCreationFromPeople:(id)a3 proposedAttributes:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _shouldAcceptProposedAttributes:v7])
  {
    v8 = v7;
  }

  else
  {
    v9 = [a1 _titleFormatForProposedAttributes:v7];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          if (!v14)
          {
            v14 = [*(*(&v30 + 1) + 8 * i) photoLibrary];
          }

          v18 = [v17 localIdentifier];
          [v10 addObject:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v19 = [v14 photoLibrary];
    v20 = [v19 photoAnalysisClient];

    v28 = 0;
    v29 = 0;
    v27 = 0;
    v21 = [v20 requestTitleForPersonLocalIdentifiers:v10 format:v9 title:&v29 subtitle:&v28 error:&v27];
    v22 = v29;
    v23 = v28;
    v24 = v27;
    v8 = [a1 _preferredAttributesForMemoryCreationFromObject:v11 withSuccess:v21 title:v22 subtitle:v23 error:v24 proposedAttributes:v7];

    v6 = v26;
  }

  return v8;
}

+ (id)preferredAttributesForMemoryCreationFromCollectionList:(id)a3 proposedAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _shouldAcceptProposedAttributes:v7])
  {
    v8 = v7;
  }

  else
  {
    v9 = [a1 _titleFormatForProposedAttributes:v7];
    v10 = [v6 photoLibrary];
    v11 = [v10 photoAnalysisClient];

    v12 = [v6 localIdentifier];
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v13 = [v11 requestTitleForCollectionMomentListWithLocalIdentifier:v12 format:v9 title:&v20 subtitle:&v19 error:&v18];
    v14 = v20;
    v15 = v19;
    v16 = v18;

    v8 = [a1 _preferredAttributesForMemoryCreationFromObject:v6 withSuccess:v13 title:v14 subtitle:v15 error:v16 proposedAttributes:v7];
  }

  return v8;
}

+ (id)preferredAttributesForMemoryCreationFromAssetCollection:(id)a3 proposedAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _shouldAcceptProposedAttributes:v7])
  {
    v8 = v7;
  }

  else
  {
    v9 = [a1 _titleFormatForProposedAttributes:v7];
    v10 = [v6 photoLibrary];
    v11 = [v10 photoLibrary];
    v12 = [v11 photoAnalysisClient];

    v13 = [v6 localIdentifier];
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v14 = [v12 requestTitleForAssetCollectionWithLocalIdentifier:v13 format:v9 title:&v21 subtitle:&v20 error:&v19];
    v15 = v21;
    v16 = v20;
    v17 = v19;

    v8 = [a1 _preferredAttributesForMemoryCreationFromObject:v6 withSuccess:v14 title:v15 subtitle:v16 error:v17 proposedAttributes:v7];
  }

  return v8;
}

+ (id)creationRequestForMemoryWithTitle:(id)a3 subtitle:(id)a4 creationDate:(id)a5 category:(unint64_t)a6 subcategory:(unint64_t)a7 representativeAssetUUIDs:(id)a8 curatedAssetUUIDs:(id)a9 extendedCuratedAssetUUIDs:(id)a10 keyAssetUUID:(id)a11
{
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[PHMemoryChangeRequest alloc] initForNewObject];
  [v23 setTitle:v22];

  [v23 setSubtitle:v21];
  [v23 setCreationDate:v20];

  [v23 setCategory:a6];
  [v23 setSubcategory:a7];
  [v23 setRepresentativeAssetUUIDs:v19 curatedAssetUUIDs:v18 extendedCuratedAssetUUIDs:v17 keyAssetUUID:v16];

  return v23;
}

+ (id)creationRequestForMemoryWithTitle:(id)a3 subtitle:(id)a4 creationDate:(id)a5 category:(unint64_t)a6 subcategory:(unint64_t)a7 representativeAssets:(id)a8 curatedAssets:(id)a9 extendedCuratedAssets:(id)a10 keyAsset:(id)a11
{
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[PHMemoryChangeRequest alloc] initForNewObject];
  [v23 setTitle:v22];

  [v23 setSubtitle:v21];
  [v23 setCreationDate:v20];

  [v23 setCategory:a6];
  [v23 setSubcategory:a7];
  [v23 setRepresentativeAssets:v19 curatedAssets:v18 extendedCuratedAssets:v17 keyAsset:v16];

  return v23;
}

@end