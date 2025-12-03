@interface PHMemoryChangeRequest
+ (BOOL)_shouldAcceptProposedAttributes:(id)attributes;
+ (id)_preferredAttributesForMemoryCreationFromObject:(id)object withSuccess:(BOOL)success title:(id)title subtitle:(id)subtitle error:(id)error proposedAttributes:(id)attributes;
+ (id)changeRequestForMemory:(id)memory;
+ (id)changeRequestForRemotelyViewedMemoryWithLocalIdentifier:(id)identifier;
+ (id)creationRequestForMemoryWithTitle:(id)title subtitle:(id)subtitle creationDate:(id)date category:(unint64_t)category subcategory:(unint64_t)subcategory representativeAssetUUIDs:(id)ds curatedAssetUUIDs:(id)iDs extendedCuratedAssetUUIDs:(id)self0 keyAssetUUID:(id)self1;
+ (id)creationRequestForMemoryWithTitle:(id)title subtitle:(id)subtitle creationDate:(id)date category:(unint64_t)category subcategory:(unint64_t)subcategory representativeAssets:(id)assets curatedAssets:(id)curatedAssets extendedCuratedAssets:(id)self0 keyAsset:(id)self1;
+ (id)preferredAttributesForMemoryCreationFromAssetCollection:(id)collection proposedAttributes:(id)attributes;
+ (id)preferredAttributesForMemoryCreationFromCollectionList:(id)list proposedAttributes:(id)attributes;
+ (id)preferredAttributesForMemoryCreationFromPeople:(id)people proposedAttributes:(id)attributes;
+ (id)validateMemoryTitle:(id)title error:(id *)error;
+ (int64_t)_titleFormatForProposedAttributes:(id)attributes;
+ (void)blockPerson:(id)person;
+ (void)blockPerson:(id)person withAsset:(id)asset;
+ (void)deleteMemories:(id)memories;
+ (void)unblockPersonsInMemoriesWithBlockedPersonFeature:(id)feature;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)isFavorite;
- (BOOL)isRejected;
- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
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
- (PHMemoryChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHMemoryChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (PHMemoryFeature)blacklistedFeature;
- (PHObjectPlaceholder)placeholderForCreatedMemory;
- (double)score;
- (id)_mutableCuratedAssetObjectIDsAndUUIDs;
- (id)_mutableExtendedCuratedAssetObjectIDsAndUUIDs;
- (id)_mutableKeyAssetObjectIDsAndUUIDs;
- (id)_mutableRepresentativeAssetObjectIDsAndUUIDs;
- (id)_validateAssetCounts;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
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
- (void)addCustomUserAssets:(id)assets;
- (void)encodeToXPCDict:(id)dict;
- (void)insertCustomUserAssets:(id)assets atIndexes:(id)indexes;
- (void)moveCustomUserAssetsAtIndexes:(id)indexes toIndex:(unint64_t)index;
- (void)removeCustomUserAssets:(id)assets;
- (void)removeCustomUserAssetsAtIndexes:(id)indexes;
- (void)removeUserAssets:(id)assets;
- (void)replaceCustomUserAssetsAtIndexes:(id)indexes withAssets:(id)assets;
- (void)setBlacklistedFeature:(id)feature;
- (void)setCategory:(unint64_t)category;
- (void)setCreationDate:(id)date;
- (void)setCreationType:(unsigned __int16)type;
- (void)setCustomUserAssets:(id)assets;
- (void)setFavorite:(BOOL)favorite;
- (void)setFeaturedState:(int64_t)state;
- (void)setGraphMemoryIdentifier:(id)identifier;
- (void)setKeyAsset:(id)asset;
- (void)setKeyAssetUUID:(id)d;
- (void)setLastEnrichmentDate:(id)date;
- (void)setLastMoviePlayedDate:(id)date;
- (void)setLastViewedDate:(id)date;
- (void)setMovieCuratedAssets:(id)assets;
- (void)setMovieData:(id)data;
- (void)setMovieStateData:(id)data forAsset:(id)asset;
- (void)setNotificationState:(unint64_t)state;
- (void)setPendingState:(unsigned __int16)state;
- (void)setPhotosGraphData:(id)data;
- (void)setPhotosGraphVersion:(int64_t)version;
- (void)setQueryHintObject:(id)object;
- (void)setQueryHintObjects:(id)objects;
- (void)setRejected:(BOOL)rejected;
- (void)setRepresentativeAssetUUIDs:(id)ds curatedAssetUUIDs:(id)iDs extendedCuratedAssetUUIDs:(id)uIDs keyAssetUUID:(id)d;
- (void)setRepresentativeAssets:(id)assets curatedAssets:(id)curatedAssets extendedCuratedAssets:(id)extendedCuratedAssets keyAsset:(id)asset;
- (void)setScore:(double)score;
- (void)setStoryColorGradeKind:(int64_t)kind;
- (void)setStorySerializedTitleCategory:(int64_t)category;
- (void)setStoryTitleCategory:(id)category;
- (void)setSubcategory:(unint64_t)subcategory;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUserCreated:(BOOL)created;
- (void)setUserCuratedAssets:(id)assets;
- (void)setUserEdited:(BOOL)edited;
- (void)setUserFeedback:(id)feedback;
- (void)setUserRemovedAssets:(id)assets;
- (void)undoUserRemoveForAssets:(id)assets;
@end

@implementation PHMemoryChangeRequest

- (NSString)description
{
  v19.receiver = self;
  v19.super_class = PHMemoryChangeRequest;
  v3 = [(PHMemoryChangeRequest *)&v19 description];
  title = [(PHMemoryChangeRequest *)self title];
  representativeAssetsHelper = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
  mutableObjectIDsAndUUIDs = [representativeAssetsHelper mutableObjectIDsAndUUIDs];
  v15 = [mutableObjectIDsAndUUIDs count];
  curatedAssetsHelper = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
  mutableObjectIDsAndUUIDs2 = [curatedAssetsHelper mutableObjectIDsAndUUIDs];
  v6 = [mutableObjectIDsAndUUIDs2 count];
  extendedCuratedAssetsHelper = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
  mutableObjectIDsAndUUIDs3 = [extendedCuratedAssetsHelper mutableObjectIDsAndUUIDs];
  v9 = [mutableObjectIDsAndUUIDs3 count];
  keyAssetHelper = [(PHMemoryChangeRequest *)self keyAssetHelper];
  mutableObjectIDsAndUUIDs4 = [keyAssetHelper mutableObjectIDsAndUUIDs];
  firstObject = [mutableObjectIDsAndUUIDs4 firstObject];
  v13 = [v3 stringByAppendingFormat:@" title=%@ representativeAssets=%d curatedAssets=%d extendedCuratedAssets=%d keyAsset=%@", title, v15, v6, v9, firstObject];

  return v13;
}

- (void)undoUserRemoveForAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareExistingUserRemovedAssetIDs];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_userRemovedAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)removeUserAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareExistingUserRemovedAssetIDs];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_userRemovedAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)setUserRemovedAssets:(id)assets
{
  v8 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
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
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)v3 originalObjectIDs];

  if (!originalObjectIDs)
  {
    if ([(PHChangeRequest *)self isNewRequest])
    {
      [(PHRelationshipChangeRequestHelper *)v3 setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
    }

    else
    {
      v5 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
      photoLibrary = [v5 photoLibrary];

      managedObjectContext = [photoLibrary managedObjectContext];
      array = [MEMORY[0x1E695DF70] array];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__PHMemoryChangeRequest__prepareExistingUserRemovedAssetIDs__block_invoke;
      v14[3] = &unk_1E75AB248;
      v15 = managedObjectContext;
      selfCopy = self;
      v17 = array;
      v9 = array;
      v10 = managedObjectContext;
      [v10 performBlockAndWait:v14];
      [(PHRelationshipChangeRequestHelper *)v3 setOriginalObjectIDs:v9];
    }
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)v3 mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)v3 originalObjectIDs];
    v13 = [originalObjectIDs2 mutableCopy];
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

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v165[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  managedObjectContext = [objectCopy managedObjectContext];
  v9 = PLSafeEntityForNameInManagedObjectContext();

  if (v9)
  {
    entity = [objectCopy entity];
    v11 = [entity isKindOfEntity:v9];

    errorCopy = error;
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

    if (self->_userEdited && [objectCopy pendingState] == 2)
    {
      v17 = PLMemoriesGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        objectID = [(PHObject *)self->_backingMemory objectID];
        *buf = 138543362;
        *v163 = objectID;
        _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "Promoting memory with id: %{public}@ to userEdit...", buf, 0xCu);
      }

      v154 = 0;
      v19 = [objectCopy promoteToUserEditedMemoryWithError:&v154];
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

    helper = [(PHChangeRequest *)self helper];
    mutations = [helper mutations];

    v24 = [mutations objectForKey:@"updatedMovieAssetState"];
    v25 = [mutations objectForKey:@"deletedMovieAssetState"];
    v26 = v25;
    if (!v11)
    {
      [(PHChangeRequest *)self isNewRequest];
      goto LABEL_74;
    }

    if (v24 | v25)
    {
      v27 = [objectCopy valueForKey:@"movieAssetState"];
      dictionary = [v27 mutableCopy];

      if (!dictionary)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v152[0] = MEMORY[0x1E69E9820];
      v152[1] = 3221225472;
      v152[2] = __74__PHMemoryChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke;
      v152[3] = &unk_1E75A5AD0;
      v29 = dictionary;
      v153 = v29;
      [v24 enumerateKeysAndObjectsUsingBlock:v152];
      v150[0] = MEMORY[0x1E69E9820];
      v150[1] = 3221225472;
      v150[2] = __74__PHMemoryChangeRequest_applyMutationsToManagedObject_photoLibrary_error___block_invoke_2;
      v150[3] = &unk_1E75A5AF8;
      v151 = v29;
      v30 = v29;
      [v26 enumerateObjectsUsingBlock:v150];
      [objectCopy setValue:v30 forKey:@"movieAssetState"];
      [mutations removeObjectForKey:@"updatedMovieAssetState"];
      [mutations removeObjectForKey:@"deletedMovieAssetState"];
    }

    v134 = v26;
    v135 = v24;
    isNewRequest = [(PHChangeRequest *)self isNewRequest];
    helper2 = [(PHChangeRequest *)self helper];
    v149 = v12;
    v33 = [helper2 applyMutationsToManagedObject:objectCopy error:&v149];
    v34 = v149;

    if (!v33)
    {
      v12 = v34;
LABEL_73:
      v26 = v134;
      v24 = v135;
LABEL_74:
      if (errorCopy)
      {
        v91 = v12;
        v13 = 0;
        *errorCopy = v12;
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
      isMutated = [(PHChangeRequest *)self isMutated];
      *buf = 67109378;
      *v163 = isMutated;
      *&v163[4] = 2112;
      *&v163[6] = mutations;
      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
    }

    if (self->_incrementPlayCount)
    {
      [objectCopy setPendingPlayCount:{objc_msgSend(objectCopy, "pendingPlayCount") + 1}];
    }

    if (self->_incrementShareCount)
    {
      [objectCopy setPendingShareCount:{objc_msgSend(objectCopy, "pendingShareCount") + 1}];
    }

    if (self->_incrementViewCount)
    {
      [objectCopy setPendingViewCount:{objc_msgSend(objectCopy, "pendingViewCount") + 1}];
    }

    if (self->_didSetUserCreated)
    {
      v37 = mutations;
      userCreated = self->_userCreated;
      v39 = [objectCopy userActionOptions] & 0xFFFE | userCreated;
      mutations = v37;
      [objectCopy setUserActionOptions:v39];
    }

    if ([(PHMemoryChangeRequest *)self creationType]== 1)
    {
      [objectCopy recalculateUserActionOptionsBit];
    }

    representativeAssetsHelper = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
    mutableObjectIDsAndUUIDs = [representativeAssetsHelper mutableObjectIDsAndUUIDs];
    v41 = [mutableObjectIDsAndUUIDs count];

    if (v41)
    {
      if (!isNewRequest)
      {
        v55 = MEMORY[0x1E696ABC0];
        v160 = *MEMORY[0x1E696A578];
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memories representative assets cannot be mutated"];
        v161 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
        v46 = [v55 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v57];

        curatedAssetsHelper = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
        goto LABEL_51;
      }

      v131 = isNewRequest;
      v42 = objectCopy;
      [representativeAssetsHelper setAllowsInsert:1];
      entityName = [MEMORY[0x1E69BE540] entityName];
      [representativeAssetsHelper setDestinationEntityName:entityName];

      [representativeAssetsHelper setIsDestinationObjectValid:&__block_literal_global_206];
      relationshipName = [representativeAssetsHelper relationshipName];
      v45 = [v42 mutableSetValueForKey:relationshipName];

      v148 = v34;
      LODWORD(relationshipName) = [representativeAssetsHelper applyMutationsToManagedObject:v42 unorderedMutableChildren:v45 error:&v148];

      v46 = v148;
      curatedAssetsHelper = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
      v34 = v46;
      if (!relationshipName)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v131 = isNewRequest;
      curatedAssetsHelper = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
    }

    mutableObjectIDsAndUUIDs2 = [curatedAssetsHelper mutableObjectIDsAndUUIDs];
    v49 = [mutableObjectIDsAndUUIDs2 count];

    if (!v49)
    {
      extendedCuratedAssetsHelper = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
      v46 = v34;
      goto LABEL_46;
    }

    if (v131)
    {
      v50 = objectCopy;
      [curatedAssetsHelper setAllowsInsert:1];
      entityName2 = [MEMORY[0x1E69BE540] entityName];
      [curatedAssetsHelper setDestinationEntityName:entityName2];

      [curatedAssetsHelper setIsDestinationObjectValid:&__block_literal_global_212];
      relationshipName2 = [curatedAssetsHelper relationshipName];
      v53 = [v50 mutableSetValueForKey:relationshipName2];

      v147 = v34;
      LODWORD(relationshipName2) = [curatedAssetsHelper applyMutationsToManagedObject:v50 unorderedMutableChildren:v53 error:&v147];

      v46 = v147;
      extendedCuratedAssetsHelper = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
      if (!relationshipName2)
      {
        goto LABEL_52;
      }

LABEL_46:
      v125 = extendedCuratedAssetsHelper;
      v126 = v46;
      mutableObjectIDsAndUUIDs3 = [extendedCuratedAssetsHelper mutableObjectIDsAndUUIDs];
      v59 = [mutableObjectIDsAndUUIDs3 count];

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

        v60 = objectCopy;
        [v125 setAllowsInsert:1];
        entityName3 = [MEMORY[0x1E69BE540] entityName];
        [v125 setDestinationEntityName:entityName3];

        [v125 setIsDestinationObjectValid:&__block_literal_global_217_13997];
        relationshipName3 = [v125 relationshipName];
        v63 = [v60 mutableSetValueForKey:relationshipName3];

        v146 = v126;
        v64 = [v125 applyMutationsToManagedObject:v60 unorderedMutableChildren:v63 error:&v146];

        v12 = v146;
        keyAssetHelper = [(PHMemoryChangeRequest *)self keyAssetHelper];
        if ((v64 & 1) == 0)
        {
          v70 = v125;
          goto LABEL_54;
        }

        v126 = v12;
      }

      else
      {
        keyAssetHelper = [(PHMemoryChangeRequest *)self keyAssetHelper];
      }

      mutableObjectIDsAndUUIDs4 = [keyAssetHelper mutableObjectIDsAndUUIDs];
      v94 = [mutableObjectIDsAndUUIDs4 count];

      if (v94)
      {
        [keyAssetHelper setAllowsInsert:1];
        entityName4 = [MEMORY[0x1E69BE540] entityName];
        [keyAssetHelper setDestinationEntityName:entityName4];

        [keyAssetHelper setIsDestinationObjectValid:&__block_literal_global_222];
        v145 = v126;
        LOBYTE(entityName4) = [keyAssetHelper applyMutationsToManagedObjectToOneRelationship:objectCopy error:&v145];
        v12 = v145;

        movieCuratedAssetsHelper = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
        if ((entityName4 & 1) == 0)
        {
          movieCuratedAssetsHelper2 = movieCuratedAssetsHelper;
          v70 = v125;
          goto LABEL_55;
        }

        v126 = v12;
      }

      else
      {
        movieCuratedAssetsHelper = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
      }

      v100 = movieCuratedAssetsHelper;
      mutableObjectIDsAndUUIDs5 = [movieCuratedAssetsHelper mutableObjectIDsAndUUIDs];

      v130 = curatedAssetsHelper;
      v132 = keyAssetHelper;
      movieCuratedAssetsHelper2 = v100;
      if (mutableObjectIDsAndUUIDs5)
      {
        v102 = objectCopy;
        [v100 setAllowsInsert:1];
        [v100 setAllowsRemove:1];
        entityName5 = [MEMORY[0x1E69BE540] entityName];
        [v100 setDestinationEntityName:entityName5];

        [v100 setIsDestinationObjectValid:&__block_literal_global_224];
        relationshipName4 = [v100 relationshipName];
        v105 = [v102 mutableSetValueForKey:relationshipName4];

        v144 = v126;
        v106 = [v100 applyMutationsToManagedObject:v102 unorderedMutableChildren:v105 error:&v144];

        v12 = v144;
        userCuratedAssetsHelper = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
        if ((v106 & 1) == 0)
        {
          userCuratedAssetsHelper2 = userCuratedAssetsHelper;
          v70 = v125;
          keyAssetHelper = v132;
          goto LABEL_56;
        }

        v126 = v12;
      }

      else
      {
        userCuratedAssetsHelper = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
      }

      v108 = userCuratedAssetsHelper;
      mutableObjectIDsAndUUIDs6 = [userCuratedAssetsHelper mutableObjectIDsAndUUIDs];

      userCuratedAssetsHelper2 = v108;
      if (mutableObjectIDsAndUUIDs6)
      {
        v110 = objectCopy;
        [v108 setAllowsInsert:1];
        [v108 setAllowsRemove:1];
        entityName6 = [MEMORY[0x1E69BE540] entityName];
        [v108 setDestinationEntityName:entityName6];

        [v108 setIsDestinationObjectValid:&__block_literal_global_226];
        relationshipName5 = [v108 relationshipName];
        v113 = [v110 mutableSetValueForKey:relationshipName5];

        v143 = v126;
        LOBYTE(relationshipName5) = [v108 applyMutationsToManagedObject:v110 unorderedMutableChildren:v113 error:&v143];

        v12 = v143;
        customUserAssetsHelper = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
        if ((relationshipName5 & 1) == 0)
        {
          v70 = v125;
          goto LABEL_57;
        }

        v126 = v12;
      }

      else
      {
        customUserAssetsHelper = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
      }

      mutableObjectIDsAndUUIDs7 = [customUserAssetsHelper mutableObjectIDsAndUUIDs];

      if (mutableObjectIDsAndUUIDs7)
      {
        v115 = objectCopy;
        [customUserAssetsHelper setAllowsInsert:1];
        [customUserAssetsHelper setAllowsRemove:1];
        [customUserAssetsHelper setAllowsMove:1];
        entityName7 = [MEMORY[0x1E69BE540] entityName];
        [customUserAssetsHelper setDestinationEntityName:entityName7];

        relationshipName6 = [customUserAssetsHelper relationshipName];
        v118 = [v115 mutableOrderedSetValueForKey:relationshipName6];

        v142 = v126;
        v119 = [customUserAssetsHelper applyMutationsToManagedObject:v115 orderedMutableChildren:v118 error:&v142];

        v12 = v142;
        userRemovedAssetsHelper = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
        if (!v119)
        {
          v73 = 0;
LABEL_105:
          v70 = v125;
LABEL_58:

          if (v73)
          {
            v74 = objectCopy;
            v75 = v74;
            v127 = mutations;
            if (self->_userFeedback)
            {
              v76 = MEMORY[0x1E69BE868];
              userFeedbacks = [v74 userFeedbacks];
              v78 = [v76 newestUserFeedbackInSet:userFeedbacks];

              if (!v78)
              {
                v79 = MEMORY[0x1E69BE868];
                managedObjectContext2 = [v75 managedObjectContext];
                uuid = [(PHUserFeedback *)self->_userFeedback uuid];
                v78 = [v79 insertIntoManagedObjectContext:managedObjectContext2 withUUID:uuid];

                [v78 setMemory:v75];
              }

              [v78 setType:{-[PHUserFeedback type](self->_userFeedback, "type")}];
              [v78 setFeature:{-[PHUserFeedback feature](self->_userFeedback, "feature")}];
              context = [(PHUserFeedback *)self->_userFeedback context];
              [v78 setContext:context];

              lastModifiedDate = [(PHUserFeedback *)self->_userFeedback lastModifiedDate];
              [v78 setLastModifiedDate:lastModifiedDate];
            }

            if (self->_didUnsetUserFeedback)
            {
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              userFeedbacks2 = [v75 userFeedbacks];
              v85 = [userFeedbacks2 countByEnumeratingWithState:&v137 objects:v155 count:16];
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
                      objc_enumerationMutation(userFeedbacks2);
                    }

                    v89 = *(*(&v137 + 1) + 8 * i);
                    managedObjectContext3 = [v75 managedObjectContext];
                    [managedObjectContext3 deleteObject:v89];
                  }

                  v86 = [userFeedbacks2 countByEnumeratingWithState:&v137 objects:v155 count:16];
                }

                while (v86);
              }

              mutations = v127;
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
        userRemovedAssetsHelper = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
      }

      mutableObjectIDsAndUUIDs8 = [userRemovedAssetsHelper mutableObjectIDsAndUUIDs];

      if (mutableObjectIDsAndUUIDs8)
      {
        v121 = objectCopy;
        [userRemovedAssetsHelper setAllowsInsert:1];
        [userRemovedAssetsHelper setAllowsRemove:1];
        [userRemovedAssetsHelper setAllowsMove:0];
        entityName8 = [MEMORY[0x1E69BE540] entityName];
        [userRemovedAssetsHelper setDestinationEntityName:entityName8];

        relationshipName7 = [userRemovedAssetsHelper relationshipName];
        v124 = [v121 mutableSetValueForKey:relationshipName7];

        v141 = v126;
        v73 = [userRemovedAssetsHelper applyMutationsToManagedObject:v121 unorderedMutableChildren:v124 error:&v141];

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
    v69 = v68 = curatedAssetsHelper;
    v46 = [v66 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v69];

    curatedAssetsHelper = v68;
LABEL_51:
    extendedCuratedAssetsHelper = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
LABEL_52:
    v70 = extendedCuratedAssetsHelper;
LABEL_53:
    keyAssetHelper = [(PHMemoryChangeRequest *)self keyAssetHelper];
    v12 = v46;
LABEL_54:
    movieCuratedAssetsHelper2 = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
LABEL_55:
    v130 = curatedAssetsHelper;
    userCuratedAssetsHelper2 = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
LABEL_56:
    v132 = keyAssetHelper;
    customUserAssetsHelper = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
LABEL_57:
    userRemovedAssetsHelper = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
    v73 = 0;
    goto LABEL_58;
  }

  v13 = 0;
LABEL_78:

  return v13;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  v24[21] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  if (![(PHMemoryChangeRequest *)self clientEntitledToMemoryMutation])
  {
    ph_genericEntitlementError = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];
    goto LABEL_9;
  }

  if (([keyCopy isEqualToString:@"updatedMovieAssetState"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"deletedMovieAssetState") & 1) == 0)
  {
    helper = [(PHChangeRequest *)self helper];
    v21 = 0;
    v14 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v21];
    ph_genericEntitlementError = v21;

    if (v14)
    {
      goto LABEL_5;
    }

LABEL_9:
    v12 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  ph_genericEntitlementError = 0;
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
  if (-[PHChangeRequest isNewRequest](self, "isNewRequest") || ([v11 containsObject:keyCopy] & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A578];
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid operation on property %@", keyCopy];
    v23 = keyCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:3300 userInfo:v17];

    v12 = 0;
    ph_genericEntitlementError = v18;
  }

  if (error)
  {
LABEL_15:
    if (!v12)
    {
      v19 = ph_genericEntitlementError;
      *error = ph_genericEntitlementError;
    }
  }

LABEL_17:

  return v12;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  creationDate = [(PHMemoryChangeRequest *)self creationDate];
  if (!creationDate)
  {
    creationDate = [MEMORY[0x1E695DF00] date];
  }

  v8 = MEMORY[0x1E69BE5A8];
  managedObjectContext = [libraryCopy managedObjectContext];
  uuid = [(PHChangeRequest *)self uuid];
  title = [(PHMemoryChangeRequest *)self title];
  subtitle = [(PHMemoryChangeRequest *)self subtitle];
  v13 = [v8 insertIntoContext:managedObjectContext withUUID:uuid title:title subtitle:subtitle creationDate:creationDate];

  if (error && !v13)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:0];
  }

  return v13;
}

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v18 = 0;
  v8 = [helper validateMutationsToManagedObject:objectCopy error:&v18];
  v9 = v18;

  if (v8)
  {
    _validateAssetCounts = [(PHMemoryChangeRequest *)self _validateAssetCounts];
    if (_validateAssetCounts)
    {
      v11 = _validateAssetCounts;
    }

    else
    {
      if ([objectCopy pendingState] != 3 || self->_userEdited)
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

  if (error)
  {
    v12 = v9;
    v13 = 0;
    *error = v9;
  }

  else
  {
    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (BOOL)validateInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  if (![(PHMemoryChangeRequest *)self clientEntitledToMemoryMutation])
  {
    ph_genericEntitlementError = [MEMORY[0x1E696ABC0] ph_genericEntitlementError];
LABEL_8:
    v11 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  title = [(PHMemoryChangeRequest *)self title];
  v15 = 0;
  v7 = [objc_opt_class() validateMemoryTitle:title error:&v15];
  ph_genericEntitlementError = v15;

  if (!v7)
  {
    goto LABEL_8;
  }

  _validateAssetCounts = [(PHMemoryChangeRequest *)self _validateAssetCounts];
  v10 = _validateAssetCounts;
  v11 = _validateAssetCounts == 0;
  if (_validateAssetCounts)
  {
    v12 = _validateAssetCounts;

    ph_genericEntitlementError = v12;
  }

  if (error)
  {
LABEL_9:
    if (!v11)
    {
      v13 = ph_genericEntitlementError;
      *error = ph_genericEntitlementError;
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
    integerValue = [(NSNumber *)customMaximumNumberOfAssetsForUnitTesting integerValue];
    integerValue2 = [(NSNumber *)self->_customMaximumNumberOfAssetsForUnitTesting integerValue];
  }

  else
  {
    integerValue2 = 5000;
    integerValue = 512;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  representativeAssetsHelper = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
  mutableObjectIDsAndUUIDs = [representativeAssetsHelper mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:mutableObjectIDsAndUUIDs];

  curatedAssetsHelper = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
  mutableObjectIDsAndUUIDs2 = [curatedAssetsHelper mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:mutableObjectIDsAndUUIDs2];

  extendedCuratedAssetsHelper = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
  mutableObjectIDsAndUUIDs3 = [extendedCuratedAssetsHelper mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:mutableObjectIDsAndUUIDs3];

  userCuratedAssetsHelper = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
  mutableObjectIDsAndUUIDs4 = [userCuratedAssetsHelper mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:mutableObjectIDsAndUUIDs4];

  movieCuratedAssetsHelper = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
  mutableObjectIDsAndUUIDs5 = [movieCuratedAssetsHelper mutableObjectIDsAndUUIDs];
  [v6 addObjectsFromArray:mutableObjectIDsAndUUIDs5];

  if ([v6 count] > integerValue)
  {
    v17 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A278];
    customUserAssetsHelper2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid number of total assets, count of unique assets: %lu maximum limit: %lu", objc_msgSend(v6, "count"), integerValue];
    v32[0] = customUserAssetsHelper2;
    mutableObjectIDsAndUUIDs7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v20 = [v17 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:mutableObjectIDsAndUUIDs7];
LABEL_8:

    goto LABEL_10;
  }

  customUserAssetsHelper = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
  mutableObjectIDsAndUUIDs6 = [customUserAssetsHelper mutableObjectIDsAndUUIDs];
  v23 = [mutableObjectIDsAndUUIDs6 count];

  if (v23 > integerValue2)
  {
    v24 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A278];
    v25 = MEMORY[0x1E696AEC0];
    customUserAssetsHelper2 = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
    mutableObjectIDsAndUUIDs7 = [customUserAssetsHelper2 mutableObjectIDsAndUUIDs];
    v26 = [v25 stringWithFormat:@"Invalid number of custom user assets, count of assets: %lu maximum limit: %lu", objc_msgSend(mutableObjectIDsAndUUIDs7, "count"), integerValue2];
    v30 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v24 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v27];

    goto LABEL_8;
  }

  v20 = 0;
LABEL_10:

  return v20;
}

- (void)setUserFeedback:(id)feedback
{
  feedbackCopy = feedback;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  userFeedback = self->_userFeedback;
  self->_userFeedback = feedbackCopy;

  if (!feedbackCopy)
  {
    self->_didUnsetUserFeedback = 1;
  }
}

- (void)setBlacklistedFeature:(id)feature
{
  featureCopy = feature;
  [(PHChangeRequest *)self didMutate];
  if (featureCopy)
  {
    helper4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:featureCopy requiringSecureCoding:1 error:0];
    helper = [(PHChangeRequest *)self helper];
    mutations = [helper mutations];
    [mutations setObject:helper4 forKeyedSubscript:@"blacklistedFeature"];

    helper2 = [(PHChangeRequest *)self helper];
    nilMutations = [helper2 nilMutations];
    [nilMutations removeObject:@"blacklistedFeature"];
  }

  else
  {
    helper3 = [(PHChangeRequest *)self helper];
    mutations2 = [helper3 mutations];
    [mutations2 removeObjectForKey:@"blacklistedFeature"];

    helper4 = [(PHChangeRequest *)self helper];
    helper2 = [helper4 nilMutations];
    [helper2 addObject:@"blacklistedFeature"];
  }
}

- (PHMemoryFeature)blacklistedFeature
{
  v12 = *MEMORY[0x1E69E9840];
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"blacklistedFeature"];

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

- (void)setQueryHintObjects:(id)objects
{
  v10 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v5 = [PHMemory assetListPredicateFromQueryHintObjects:objectsCopy];
  if (v5)
  {
    [(PHChangeRequest *)self didMutate];
    helper = [(PHChangeRequest *)self helper];
    mutations = [helper mutations];
    [mutations setObject:v5 forKey:@"assetListPredicate"];
  }

  else
  {
    helper = PLPhotoKitGetLog();
    if (os_log_type_enabled(helper, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = objectsCopy;
      _os_log_impl(&dword_19C86F000, helper, OS_LOG_TYPE_ERROR, "Unsupported queryHintObject %@ as assetListPredicate", &v8, 0xCu);
    }
  }
}

- (void)setQueryHintObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v4 = MEMORY[0x1E695DEC8];
  objectCopy2 = object;
  v6 = [v4 arrayWithObjects:&objectCopy count:1];

  [(PHMemoryChangeRequest *)self setQueryHintObjects:v6, objectCopy, v8];
}

- (void)moveCustomUserAssetsAtIndexes:(id)indexes toIndex:(unint64_t)index
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    v7 = [mutableObjectIDsAndUUIDs objectsAtIndexes:indexesCopy];
    [mutableObjectIDsAndUUIDs removeObjectsAtIndexes:indexesCopy];
    v8 = [indexesCopy count];
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{index, v8}];
    [mutableObjectIDsAndUUIDs insertObjects:v7 atIndexes:v9];
  }
}

- (void)replaceCustomUserAssetsAtIndexes:(id)indexes withAssets:(id)assets
{
  indexesCopy = indexes;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs replaceObjectsAtIndexes:indexesCopy withObjects:v6];
  }
}

- (void)removeCustomUserAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  if ([indexesCopy count])
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs removeObjectsAtIndexes:indexesCopy];
  }
}

- (void)removeCustomUserAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs removeObjectsInArray:v6];

    v4 = v6;
  }
}

- (void)insertCustomUserAssets:(id)assets atIndexes:(id)indexes
{
  indexesCopy = indexes;
  v6 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v6)
  {
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs insertObjects:v6 atIndexes:indexesCopy];
  }
}

- (void)addCustomUserAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v6 = v4;
    [(PHChangeRequestHelper *)self->super._helper didMutate];
    [(PHMemoryChangeRequest *)self _prepareCustomUserAssetIDsIfNeeded];
    mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];
    [mutableObjectIDsAndUUIDs addObjectsFromArray:v6];

    v4 = v6;
  }
}

- (void)setCustomUserAssets:(id)assets
{
  v8 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
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
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper originalObjectIDs];
  if (!originalObjectIDs)
  {
    backingMemory = self->_backingMemory;
    if (!backingMemory)
    {
      goto LABEL_7;
    }

    photoLibrary = [(PHObject *)self->_backingMemory photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    originalObjectIDs = [PHQuery queryForCustomUserAssetsInMemory:backingMemory options:librarySpecificFetchOptions];

    executeQuery = [originalObjectIDs executeQuery];
    customUserAssetsHelper = self->_customUserAssetsHelper;
    fetchedObjectIDs = [executeQuery fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)customUserAssetsHelper setOriginalObjectIDs:fetchedObjectIDs];

    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper originalObjectIDs];

    if (!originalObjectIDs2)
    {
      v11 = self->_customUserAssetsHelper;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(PHRelationshipChangeRequestHelper *)v11 setOriginalObjectIDs:v12];
    }
  }

LABEL_7:
  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_customUserAssetsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    v14 = self->_customUserAssetsHelper;
    originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)v14 originalObjectIDs];
    v15 = [originalObjectIDs3 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)v14 setMutableObjectIDsAndUUIDs:v15];
  }
}

- (void)setMovieStateData:(id)data forAsset:(id)asset
{
  dataCopy = data;
  assetCopy = asset;
  [(PHChangeRequest *)self didMutate];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];

  if (dataCopy)
  {
    dictionary = [mutations objectForKey:@"updatedMovieAssetState"];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [mutations setObject:dictionary forKey:@"updatedMovieAssetState"];
    }

    uuid = [assetCopy uuid];
    [dictionary setObject:dataCopy forKey:uuid];
  }

  else
  {
    dictionary = [mutations objectForKey:@"deletedMovieAssetState"];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF70] array];
      [mutations setObject:dictionary forKey:@"deletedMovieAssetState"];
    }

    uuid = [assetCopy uuid];
    [dictionary addObject:uuid];
  }
}

- (void)setUserCuratedAssets:(id)assets
{
  v26 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_userCuratedAssetsHelper originalObjectIDs];
  if (!originalObjectIDs)
  {
    if (!self->_backingMemory)
    {
      goto LABEL_5;
    }

    v6 = +[PHPhotoLibrary photoLibraryForCurrentTransaction];
    originalObjectIDs = [v6 librarySpecificFetchOptions];

    [originalObjectIDs setIncludeGuestAssets:1];
    v7 = [PHQuery queryForUserCuratedAssetsInMemory:self->_backingMemory options:originalObjectIDs];
    executeQuery = [v7 executeQuery];
    userCuratedAssetsHelper = self->_userCuratedAssetsHelper;
    fetchedObjectIDs = [executeQuery fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)userCuratedAssetsHelper setOriginalObjectIDs:fetchedObjectIDs];
  }

LABEL_5:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = assetsCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    array = 0;
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
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v18 = PLObjectIDOrUUIDFromPHObject(v17);
        [array addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    array = 0;
  }

  [(PHChangeRequest *)self didMutate];
  v19 = self->_userCuratedAssetsHelper;
  if (array)
  {
    [(PHRelationshipChangeRequestHelper *)v19 setMutableObjectIDsAndUUIDs:array];
  }

  else
  {
    array2 = [MEMORY[0x1E695DF70] array];
    [(PHRelationshipChangeRequestHelper *)v19 setMutableObjectIDsAndUUIDs:array2];
  }
}

- (void)setMovieCuratedAssets:(id)assets
{
  v25 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_movieCuratedAssetsHelper originalObjectIDs];
  if (!originalObjectIDs)
  {
    backingMemory = self->_backingMemory;
    if (!backingMemory)
    {
      goto LABEL_5;
    }

    originalObjectIDs = [PHQuery queryForMovieCuratedAssetsInMemory:backingMemory options:0];
    executeQuery = [originalObjectIDs executeQuery];
    movieCuratedAssetsHelper = self->_movieCuratedAssetsHelper;
    fetchedObjectIDs = [executeQuery fetchedObjectIDs];
    [(PHRelationshipChangeRequestHelper *)movieCuratedAssetsHelper setOriginalObjectIDs:fetchedObjectIDs];
  }

LABEL_5:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    array = 0;
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
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v17 = PLObjectIDOrUUIDFromPHObject(v16);
        [array addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  else
  {
    array = 0;
  }

  [(PHChangeRequest *)self didMutate];
  v18 = self->_movieCuratedAssetsHelper;
  if (array)
  {
    [(PHRelationshipChangeRequestHelper *)v18 setMutableObjectIDsAndUUIDs:array];
  }

  else
  {
    array2 = [MEMORY[0x1E695DF70] array];
    [(PHRelationshipChangeRequestHelper *)v18 setMutableObjectIDsAndUUIDs:array2];
  }
}

- (void)setKeyAssetUUID:(id)d
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
    [(PHChangeRequest *)self didMutate];
    _mutableKeyAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDs];
    v7[0] = dCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    [_mutableKeyAssetObjectIDsAndUUIDs addObjectsFromArray:v6];
  }
}

- (void)setRepresentativeAssetUUIDs:(id)ds curatedAssetUUIDs:(id)iDs extendedCuratedAssetUUIDs:(id)uIDs keyAssetUUID:(id)d
{
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  dCopy = d;
  if ([dsCopy count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableRepresentativeAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableRepresentativeAssetObjectIDsAndUUIDs];
    [_mutableRepresentativeAssetObjectIDsAndUUIDs addObjectsFromArray:dsCopy];
  }

  if ([iDsCopy count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableCuratedAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableCuratedAssetObjectIDsAndUUIDs];
    [_mutableCuratedAssetObjectIDsAndUUIDs addObjectsFromArray:iDsCopy];
  }

  if ([uIDsCopy count])
  {
    [(PHChangeRequest *)self didMutate];
    _mutableExtendedCuratedAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableExtendedCuratedAssetObjectIDsAndUUIDs];
    [_mutableExtendedCuratedAssetObjectIDsAndUUIDs addObjectsFromArray:uIDsCopy];
  }

  [(PHMemoryChangeRequest *)self setKeyAssetUUID:dCopy];
}

- (void)setKeyAsset:(id)asset
{
  assetCopy = asset;
  if (assetCopy)
  {
    [(PHChangeRequest *)self didMutate];
    array = [MEMORY[0x1E695DF70] array];
    v5 = PLObjectIDOrUUIDFromPHObject(assetCopy);
    [array addObject:v5];

    if (array)
    {
      _mutableKeyAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableKeyAssetObjectIDsAndUUIDs];
      [_mutableKeyAssetObjectIDsAndUUIDs addObjectsFromArray:array];
    }
  }
}

- (void)setRepresentativeAssets:(id)assets curatedAssets:(id)curatedAssets extendedCuratedAssets:(id)extendedCuratedAssets keyAsset:(id)asset
{
  v56 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  curatedAssetsCopy = curatedAssets;
  extendedCuratedAssetsCopy = extendedCuratedAssets;
  assetCopy = asset;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = [assetsCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    array = 0;
    v16 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        if (!array)
        {
          [(PHChangeRequest *)self didMutate];
          array = [MEMORY[0x1E695DF70] array];
        }

        v19 = PLObjectIDOrUUIDFromPHObject(v18);
        [array addObject:v19];
      }

      v14 = [assetsCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v14);
    if (array)
    {
      _mutableRepresentativeAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableRepresentativeAssetObjectIDsAndUUIDs];
      [_mutableRepresentativeAssetObjectIDsAndUUIDs addObjectsFromArray:array];
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = curatedAssetsCopy;
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
  array2 = v21;
  if (!v22)
  {
    goto LABEL_23;
  }

  v24 = v22;
  array2 = 0;
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
      if (!array2)
      {
        [(PHChangeRequest *)self didMutate];
        array2 = [MEMORY[0x1E695DF70] array];
      }

      v28 = PLObjectIDOrUUIDFromPHObject(v27);
      [array2 addObject:v28];
    }

    v24 = [v21 countByEnumeratingWithState:&v45 objects:v54 count:16];
  }

  while (v24);

  if (array2)
  {
    _mutableCuratedAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableCuratedAssetObjectIDsAndUUIDs];
    [_mutableCuratedAssetObjectIDsAndUUIDs addObjectsFromArray:array2];

LABEL_23:
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v30 = extendedCuratedAssetsCopy;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
  array3 = v30;
  if (!v31)
  {
LABEL_35:

    goto LABEL_36;
  }

  v33 = v31;
  v40 = assetCopy;
  array3 = 0;
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
      if (!array3)
      {
        [(PHChangeRequest *)self didMutate];
        array3 = [MEMORY[0x1E695DF70] array];
      }

      v37 = PLObjectIDOrUUIDFromPHObject(v36);
      [array3 addObject:v37];
    }

    v33 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
  }

  while (v33);

  assetCopy = v40;
  if (array3)
  {
    _mutableExtendedCuratedAssetObjectIDsAndUUIDs = [(PHMemoryChangeRequest *)self _mutableExtendedCuratedAssetObjectIDsAndUUIDs];
    [_mutableExtendedCuratedAssetObjectIDsAndUUIDs addObjectsFromArray:array3];

    goto LABEL_35;
  }

LABEL_36:
  [(PHMemoryChangeRequest *)self setKeyAsset:assetCopy];
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
  originalObjectIDs = [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper originalObjectIDs];

  if (!originalObjectIDs)
  {
    [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs = [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs)
  {
    representativeAssetsHelper = self->_representativeAssetsHelper;
    originalObjectIDs2 = [(PHRelationshipChangeRequestHelper *)representativeAssetsHelper originalObjectIDs];
    v7 = [originalObjectIDs2 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)representativeAssetsHelper setMutableObjectIDsAndUUIDs:v7];
  }

  originalObjectIDs3 = [(PHRelationshipChangeRequestHelper *)self->_curatedAssetsHelper originalObjectIDs];

  if (!originalObjectIDs3)
  {
    [(PHRelationshipChangeRequestHelper *)self->_curatedAssetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs2 = [(PHRelationshipChangeRequestHelper *)self->_curatedAssetsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs2)
  {
    curatedAssetsHelper = self->_curatedAssetsHelper;
    originalObjectIDs4 = [(PHRelationshipChangeRequestHelper *)curatedAssetsHelper originalObjectIDs];
    v12 = [originalObjectIDs4 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)curatedAssetsHelper setMutableObjectIDsAndUUIDs:v12];
  }

  originalObjectIDs5 = [(PHRelationshipChangeRequestHelper *)self->_extendedCuratedAssetsHelper originalObjectIDs];

  if (!originalObjectIDs5)
  {
    [(PHRelationshipChangeRequestHelper *)self->_extendedCuratedAssetsHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs3 = [(PHRelationshipChangeRequestHelper *)self->_extendedCuratedAssetsHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs3)
  {
    extendedCuratedAssetsHelper = self->_extendedCuratedAssetsHelper;
    originalObjectIDs6 = [(PHRelationshipChangeRequestHelper *)extendedCuratedAssetsHelper originalObjectIDs];
    v17 = [originalObjectIDs6 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)extendedCuratedAssetsHelper setMutableObjectIDsAndUUIDs:v17];
  }

  originalObjectIDs7 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper originalObjectIDs];

  if (!originalObjectIDs7)
  {
    [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper setOriginalObjectIDs:MEMORY[0x1E695E0F0]];
  }

  mutableObjectIDsAndUUIDs4 = [(PHRelationshipChangeRequestHelper *)self->_keyAssetHelper mutableObjectIDsAndUUIDs];

  if (!mutableObjectIDsAndUUIDs4)
  {
    keyAssetHelper = self->_keyAssetHelper;
    originalObjectIDs8 = [(PHRelationshipChangeRequestHelper *)keyAssetHelper originalObjectIDs];
    v21 = [originalObjectIDs8 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyAssetHelper setMutableObjectIDsAndUUIDs:v21];
  }
}

- (void)setStoryTitleCategory:(id)category
{
  SerializedTitleCategory = PFStoryTitleCategoryGetSerializedTitleCategory();

  [(PHMemoryChangeRequest *)self setStorySerializedTitleCategory:SerializedTitleCategory];
}

- (NSString)storyTitleCategory
{
  [(PHMemoryChangeRequest *)self storySerializedTitleCategory];

  return PFStoryValidatedTitleCategory();
}

- (void)setUserEdited:(BOOL)edited
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  self->_userEdited = edited;
  self->_didSetUserEdited = 1;
}

- (void)setUserCreated:(BOOL)created
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  self->_userCreated = created;
  self->_didSetUserCreated = 1;
}

- (void)setFeaturedState:(int64_t)state
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"featuredState"];
}

- (int64_t)featuredState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"featuredState"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setNotificationState:(unint64_t)state
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"notificationState"];
}

- (unint64_t)notificationState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"notificationState"];

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

- (void)setLastMoviePlayedDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"lastMoviePlayedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"lastMoviePlayedDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"lastMoviePlayedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"lastMoviePlayedDate"];
  }
}

- (NSDate)lastMoviePlayedDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"lastMoviePlayedDate"];

  return v5;
}

- (void)setLastViewedDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"lastViewedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"lastViewedDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"lastViewedDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"lastViewedDate"];
  }
}

- (NSDate)lastViewedDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"lastViewedDate"];

  return v5;
}

- (void)setPhotosGraphVersion:(int64_t)version
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:version];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"photosGraphVersion"];
}

- (int64_t)photosGraphVersion
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"photosGraphVersion"];

  longLongValue = [v5 longLongValue];
  return longLongValue;
}

- (void)setPhotosGraphData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"photosGraphData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"photosGraphData"];
  }

  else
  {
    [mutations removeObjectForKey:@"photosGraphData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"photosGraphData"];
  }
}

- (NSData)photosGraphData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"photosGraphData"];

  return v5;
}

- (void)setMovieData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"movieData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"movieData"];
  }

  else
  {
    [mutations removeObjectForKey:@"movieData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"movieData"];
  }
}

- (NSData)movieData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"movieData"];

  return v5;
}

- (void)setStorySerializedTitleCategory:(int64_t)category
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:category];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"storySerializedTitleCategory"];
}

- (int64_t)storySerializedTitleCategory
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"storySerializedTitleCategory"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setStoryColorGradeKind:(int64_t)kind
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:kind];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"storyColorGradeKind"];
}

- (int64_t)storyColorGradeKind
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"storyColorGradeKind"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setGraphMemoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (identifierCopy)
  {
    [mutations setObject:identifierCopy forKeyedSubscript:@"graphMemoryIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"graphMemoryIdentifier"];
  }

  else
  {
    [mutations removeObjectForKey:@"graphMemoryIdentifier"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"graphMemoryIdentifier"];
  }
}

- (NSString)graphMemoryIdentifier
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"graphMemoryIdentifier"];

  return v5;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (subtitleCopy)
  {
    [mutations setObject:subtitleCopy forKeyedSubscript:@"subtitle"];

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

- (NSString)subtitle
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subtitle"];

  return v5;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (titleCopy)
  {
    [mutations setObject:titleCopy forKeyedSubscript:@"title"];

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

- (NSString)title
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"title"];

  return v5;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"creationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"creationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"creationDate"];
  }
}

- (NSDate)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationDate"];

  return v5;
}

- (void)setScore:(double)score
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:score];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"score"];
}

- (double)score
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"score"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSubcategory:(unint64_t)subcategory
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:subcategory];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"subcategory"];
}

- (unint64_t)subcategory
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subcategory"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setCategory:(unint64_t)category
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:category];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"category"];
}

- (unint64_t)category
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"category"];

  intValue = [v5 intValue];
  return intValue;
}

- (void)setCreationType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"creationType"];
}

- (unsigned)creationType
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationType"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setPendingState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"pendingState"];
}

- (unsigned)pendingState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"pendingState"];

  LOWORD(helper) = [v5 intValue];
  return helper;
}

- (void)setFavorite:(BOOL)favorite
{
  favoriteCopy = favorite;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:favoriteCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"favorite"];
}

- (BOOL)isFavorite
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"favorite"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)setRejected:(BOOL)rejected
{
  rejectedCopy = rejected;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:rejectedCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"rejected"];
}

- (BOOL)isRejected
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"rejected"];

  LOBYTE(helper) = [v5 BOOLValue];
  return helper;
}

- (void)encodeToXPCDict:(id)dict
{
  v21 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  representativeAssetsHelper = [(PHMemoryChangeRequest *)self representativeAssetsHelper];
  [representativeAssetsHelper encodeToXPCDict:dictCopy];

  curatedAssetsHelper = [(PHMemoryChangeRequest *)self curatedAssetsHelper];
  [curatedAssetsHelper encodeToXPCDict:dictCopy];

  extendedCuratedAssetsHelper = [(PHMemoryChangeRequest *)self extendedCuratedAssetsHelper];
  [extendedCuratedAssetsHelper encodeToXPCDict:dictCopy];

  keyAssetHelper = [(PHMemoryChangeRequest *)self keyAssetHelper];
  [keyAssetHelper encodeToXPCDict:dictCopy];

  movieCuratedAssetsHelper = [(PHMemoryChangeRequest *)self movieCuratedAssetsHelper];
  [movieCuratedAssetsHelper encodeToXPCDict:dictCopy];

  userCuratedAssetsHelper = [(PHMemoryChangeRequest *)self userCuratedAssetsHelper];
  [userCuratedAssetsHelper encodeToXPCDict:dictCopy];

  customUserAssetsHelper = [(PHMemoryChangeRequest *)self customUserAssetsHelper];
  [customUserAssetsHelper encodeToXPCDict:dictCopy];

  userRemovedAssetsHelper = [(PHMemoryChangeRequest *)self userRemovedAssetsHelper];
  [userRemovedAssetsHelper encodeToXPCDict:dictCopy];

  if (self->_incrementPlayCount)
  {
    xpc_dictionary_set_BOOL(dictCopy, "incrementPlayCount", 1);
  }

  if (self->_incrementShareCount)
  {
    xpc_dictionary_set_BOOL(dictCopy, "incrementShareCount", 1);
  }

  if (self->_incrementViewCount)
  {
    xpc_dictionary_set_BOOL(dictCopy, "incrementViewCount", 1);
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

  xpc_dictionary_set_BOOL(dictCopy, "userFeedbackDataUnsetKey", self->_didUnsetUserFeedback);
  xpc_dictionary_set_BOOL(dictCopy, "userCreatedKey", self->_userCreated);
  xpc_dictionary_set_BOOL(dictCopy, "userCreatedDidSetKey", self->_userCreated);
  xpc_dictionary_set_BOOL(dictCopy, "userEditedKey", self->_userEdited);
  xpc_dictionary_set_BOOL(dictCopy, "userEditedDidSetKey", self->_userEdited);
  xpc_dictionary_set_int64(dictCopy, "customMaximumNumberOfAssetsForUnitTesting", [(NSNumber *)self->_customMaximumNumberOfAssetsForUnitTesting integerValue]);
}

- (PHMemoryChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  v52 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v49.receiver = self;
  v49.super_class = PHMemoryChangeRequest;
  v11 = [(PHChangeRequest *)&v49 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      representativeAssetsHelper = v11->_representativeAssetsHelper;
      v11->_representativeAssetsHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"curatedAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      curatedAssetsHelper = v11->_curatedAssetsHelper;
      v11->_curatedAssetsHelper = v16;

      v18 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"extendedCuratedAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      extendedCuratedAssetsHelper = v11->_extendedCuratedAssetsHelper;
      v11->_extendedCuratedAssetsHelper = v18;

      v20 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAsset" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      keyAssetHelper = v11->_keyAssetHelper;
      v11->_keyAssetHelper = v20;

      v22 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"movieCuratedAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      movieCuratedAssetsHelper = v11->_movieCuratedAssetsHelper;
      v11->_movieCuratedAssetsHelper = v22;

      v24 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userCuratedAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      userCuratedAssetsHelper = v11->_userCuratedAssetsHelper;
      v11->_userCuratedAssetsHelper = v24;

      v26 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"customUserAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      customUserAssetsHelper = v11->_customUserAssetsHelper;
      v11->_customUserAssetsHelper = v26;

      v11->_clientEntitledToMemoryMutation = [authorizationCopy photoKitEntitledFor:*MEMORY[0x1E69C0058]];
      v28 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"userRemovedAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      userRemovedAssetsHelper = v11->_userRemovedAssetsHelper;
      v11->_userRemovedAssetsHelper = v28;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__PHMemoryChangeRequest_initWithXPCDict_request_clientAuthorization___block_invoke;
      aBlock[3] = &unk_1E75AAEB0;
      v30 = v11;
      v47 = v30;
      v48 = requestCopy;
      v31 = _Block_copy(aBlock);
      v30->_incrementPlayCount = xpc_dictionary_get_BOOL(dictCopy, "incrementPlayCount");
      v30->_incrementShareCount = xpc_dictionary_get_BOOL(dictCopy, "incrementShareCount");
      v32 = xpc_dictionary_get_BOOL(dictCopy, "incrementViewCount");
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

      v38 = xpc_dictionary_get_BOOL(dictCopy, "userFeedbackDataUnsetKey");
      v30->_didUnsetUserFeedback = v38;
      if (v38)
      {
        v31[2](v31);
      }

      v39 = xpc_dictionary_get_BOOL(dictCopy, "userCreatedDidSetKey");
      v30->_didSetUserCreated = v39;
      if (v39)
      {
        v30->_userCreated = xpc_dictionary_get_BOOL(dictCopy, "userCreatedKey");
        v31[2](v31);
      }

      v40 = xpc_dictionary_get_BOOL(dictCopy, "userEditedDidSetKey");
      v30->_didSetUserEdited = v40;
      if (v40)
      {
        v30->_userEdited = xpc_dictionary_get_BOOL(dictCopy, "userEditedKey");
        v31[2](v31);
      }

      int64 = xpc_dictionary_get_int64(dictCopy, "customMaximumNumberOfAssetsForUnitTesting");
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

- (PHMemoryChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v22.receiver = self;
  v22.super_class = PHMemoryChangeRequest;
  v8 = [(PHChangeRequest *)&v22 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
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
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

+ (id)changeRequestForRemotelyViewedMemoryWithLocalIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setIncludePendingMemories:1];
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"localIdentifier == %@", identifierCopy];
  [v4 setPredicate:identifierCopy];

  v6 = [PHAssetCollection fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v4];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    v8 = [PHMemoryChangeRequest changeRequestForMemory:firstObject];
    [v8 incrementViewCount];
    if ([firstObject pendingState] == 1)
    {
      [v8 setPendingState:0];
    }

    PLSAggregateDictionaryAddValueForScalarKey();
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    clientName = [v8 clientName];
    [v9 setObject:clientName forKeyedSubscript:*MEMORY[0x1E69BFB88]];

    v11 = +[PHMemory stringForCategory:](PHMemory, "stringForCategory:", [firstObject category]);
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69BFB90]];

    v12 = +[PHMemory stringForSubcategory:](PHMemory, "stringForSubcategory:", [firstObject subcategory]);
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69BFB98]];

    PLSendCoreAnalyticEvent();
  }

  else
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEFAULT, "Cannot find memory for local identifier %@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

+ (void)unblockPersonsInMemoriesWithBlockedPersonFeature:(id)feature
{
  v22 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = featureCopy;
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
        blacklistedFeature = [v11 blacklistedFeature];
        type = [blacklistedFeature type];

        if (type != 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PHMemoryChangeRequest.m" lineNumber:987 description:@"Memory does not contain a blocked feature of type PHMemoryFeatureTypePeoplePerson."];
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
    [self deleteMemories:v5];
  }
}

+ (void)blockPerson:(id)person withAsset:(id)asset
{
  v24[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  assetCopy = asset;
  if (personCopy)
  {
    photoLibrary = [personCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v24[0] = @"PHAssetPropertySetIdentifier";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v9];

    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v23 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v11];

    [librarySpecificFetchOptions setFetchLimit:10];
    v12 = [PHAsset fetchAssetsForPerson:personCopy options:librarySpecificFetchOptions];
    fetchedObjects = [v12 fetchedObjects];
    v14 = fetchedObjects;
    if (assetCopy)
    {
      if (([fetchedObjects containsObject:assetCopy] & 1) == 0)
      {
        v15 = [v14 arrayByAddingObject:assetCopy];

        v14 = v15;
      }
    }

    else
    {
      firstObject = [fetchedObjects firstObject];
      if (!firstObject)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = personCopy;
          _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed blocking person %@, no representative asset found", buf, 0xCu);
        }

        assetCopy = 0;
        goto LABEL_8;
      }

      assetCopy = firstObject;
    }

    date = [MEMORY[0x1E695DF00] date];
    v18 = [PHMemoryChangeRequest creationRequestForMemoryWithTitle:@"_" subtitle:0 creationDate:date category:401 subcategory:204 representativeAssets:v14 curatedAssets:v14 extendedCuratedAssets:v14 keyAsset:assetCopy];

    [v18 setUserCreated:1];
    [v18 setPendingState:0];
    [v18 setRejected:1];
    localIdentifier = [personCopy localIdentifier];
    v20 = [PHMemoryFeature peopleMemoryFeatureWithPersonLocalIdentifier:localIdentifier];
    [v18 setBlacklistedFeature:v20];

LABEL_8:
  }
}

+ (void)blockPerson:(id)person
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (person)
  {
    personCopy = person;
    photoLibrary = [personCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v15[0] = @"PHFacePropertySetIdentifier";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v7];

    v8 = [PHFace fetchKeyFaceForPerson:personCopy options:librarySpecificFetchOptions];
    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v14 = @"PHAssetPropertySetIdentifier";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v10];

    [librarySpecificFetchOptions2 setFetchLimit:1];
    fetchedObjects = [v8 fetchedObjects];
    v12 = [PHAsset fetchAssetsForFaces:fetchedObjects options:librarySpecificFetchOptions2];
    firstObject = [v12 firstObject];

    [self blockPerson:personCopy withAsset:firstObject];
  }
}

+ (void)deleteMemories:(id)memories
{
  memoriesCopy = memories;
  v4 = [(PHObjectDeleteRequest *)PHMemoryDeleteRequest deleteRequestsForObjects:memoriesCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)validateMemoryTitle:(id)title error:(id *)error
{
  v5 = validateMemoryTitle_error__onceToken;
  titleCopy = title;
  if (v5 != -1)
  {
    dispatch_once(&validateMemoryTitle_error__onceToken, &__block_literal_global_14193);
  }

  v7 = [titleCopy stringByTrimmingCharactersInSet:validateMemoryTitle_error__characterSet];

  if ([v7 length])
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v8 = [MEMORY[0x1E696ABC0] ph_errorWithCode:3300 localizedDescription:@"Empty title unsupported"];
    v7 = 0;
    if (!error)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    v8 = v8;
    *error = v8;
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

+ (id)changeRequestForMemory:(id)memory
{
  memoryCopy = memory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHMemoryChangeRequest alloc];
    uuid = [memoryCopy uuid];
    objectID = [memoryCopy objectID];
    v7 = [(PHMemoryChangeRequest *)v4 initWithUUID:uuid objectID:objectID];

    [(PHMemoryChangeRequest *)v7 _setBackingMemory:memoryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_preferredAttributesForMemoryCreationFromObject:(id)object withSuccess:(BOOL)success title:(id)title subtitle:(id)subtitle error:(id)error proposedAttributes:(id)attributes
{
  successCopy = success;
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  titleCopy = title;
  subtitleCopy = subtitle;
  errorCopy = error;
  attributesCopy = attributes;
  v18 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];
  v19 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];
  integerValue = [v19 integerValue];

  v21 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeSubtitleKey"];

  if (successCopy)
  {
    if (!v18 || integerValue == 5)
    {
      v23 = titleCopy;

      integerValue = 5;
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

    v21 = subtitleCopy;
  }

  else
  {
    v22 = PLMemoriesGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = objectCopy;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEFAULT, "Failed to request preferred attributes for memory creation from %@: %@", &v27, 0x16u);
    }
  }

LABEL_11:
  v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  [v24 setObject:v18 forKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  [v24 setObject:v25 forKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];

  [v24 setObject:v21 forKeyedSubscript:@"PHMemoryCreationAttributeSubtitleKey"];

  return v24;
}

+ (int64_t)_titleFormatForProposedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];

  if (v4)
  {
    v5 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];
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

+ (BOOL)_shouldAcceptProposedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleKey"];

  if (v4)
  {
    v5 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeTitleCategoryKey"];
    integerValue = [v5 integerValue];

    if (integerValue == 5)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v7 = [attributesCopy objectForKeyedSubscript:@"PHMemoryCreationAttributeSubtitleKey"];
      LOBYTE(v4) = v7 != 0;
    }
  }

  return v4;
}

+ (id)preferredAttributesForMemoryCreationFromPeople:(id)people proposedAttributes:(id)attributes
{
  v35 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  attributesCopy = attributes;
  if ([self _shouldAcceptProposedAttributes:attributesCopy])
  {
    v8 = attributesCopy;
  }

  else
  {
    v9 = [self _titleFormatForProposedAttributes:attributesCopy];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(peopleCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = peopleCopy;
    v11 = peopleCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      photoLibrary = 0;
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
          if (!photoLibrary)
          {
            photoLibrary = [*(*(&v30 + 1) + 8 * i) photoLibrary];
          }

          localIdentifier = [v17 localIdentifier];
          [v10 addObject:localIdentifier];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    else
    {
      photoLibrary = 0;
    }

    v14PhotoLibrary = [photoLibrary photoLibrary];
    photoAnalysisClient = [v14PhotoLibrary photoAnalysisClient];

    v28 = 0;
    v29 = 0;
    v27 = 0;
    v21 = [photoAnalysisClient requestTitleForPersonLocalIdentifiers:v10 format:v9 title:&v29 subtitle:&v28 error:&v27];
    v22 = v29;
    v23 = v28;
    v24 = v27;
    v8 = [self _preferredAttributesForMemoryCreationFromObject:v11 withSuccess:v21 title:v22 subtitle:v23 error:v24 proposedAttributes:attributesCopy];

    peopleCopy = v26;
  }

  return v8;
}

+ (id)preferredAttributesForMemoryCreationFromCollectionList:(id)list proposedAttributes:(id)attributes
{
  listCopy = list;
  attributesCopy = attributes;
  if ([self _shouldAcceptProposedAttributes:attributesCopy])
  {
    v8 = attributesCopy;
  }

  else
  {
    v9 = [self _titleFormatForProposedAttributes:attributesCopy];
    photoLibrary = [listCopy photoLibrary];
    photoAnalysisClient = [photoLibrary photoAnalysisClient];

    localIdentifier = [listCopy localIdentifier];
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v13 = [photoAnalysisClient requestTitleForCollectionMomentListWithLocalIdentifier:localIdentifier format:v9 title:&v20 subtitle:&v19 error:&v18];
    v14 = v20;
    v15 = v19;
    v16 = v18;

    v8 = [self _preferredAttributesForMemoryCreationFromObject:listCopy withSuccess:v13 title:v14 subtitle:v15 error:v16 proposedAttributes:attributesCopy];
  }

  return v8;
}

+ (id)preferredAttributesForMemoryCreationFromAssetCollection:(id)collection proposedAttributes:(id)attributes
{
  collectionCopy = collection;
  attributesCopy = attributes;
  if ([self _shouldAcceptProposedAttributes:attributesCopy])
  {
    v8 = attributesCopy;
  }

  else
  {
    v9 = [self _titleFormatForProposedAttributes:attributesCopy];
    photoLibrary = [collectionCopy photoLibrary];
    v10PhotoLibrary = [photoLibrary photoLibrary];
    photoAnalysisClient = [v10PhotoLibrary photoAnalysisClient];

    localIdentifier = [collectionCopy localIdentifier];
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v14 = [photoAnalysisClient requestTitleForAssetCollectionWithLocalIdentifier:localIdentifier format:v9 title:&v21 subtitle:&v20 error:&v19];
    v15 = v21;
    v16 = v20;
    v17 = v19;

    v8 = [self _preferredAttributesForMemoryCreationFromObject:collectionCopy withSuccess:v14 title:v15 subtitle:v16 error:v17 proposedAttributes:attributesCopy];
  }

  return v8;
}

+ (id)creationRequestForMemoryWithTitle:(id)title subtitle:(id)subtitle creationDate:(id)date category:(unint64_t)category subcategory:(unint64_t)subcategory representativeAssetUUIDs:(id)ds curatedAssetUUIDs:(id)iDs extendedCuratedAssetUUIDs:(id)self0 keyAssetUUID:(id)self1
{
  dCopy = d;
  uIDsCopy = uIDs;
  iDsCopy = iDs;
  dsCopy = ds;
  dateCopy = date;
  subtitleCopy = subtitle;
  titleCopy = title;
  initForNewObject = [[PHMemoryChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:titleCopy];

  [initForNewObject setSubtitle:subtitleCopy];
  [initForNewObject setCreationDate:dateCopy];

  [initForNewObject setCategory:category];
  [initForNewObject setSubcategory:subcategory];
  [initForNewObject setRepresentativeAssetUUIDs:dsCopy curatedAssetUUIDs:iDsCopy extendedCuratedAssetUUIDs:uIDsCopy keyAssetUUID:dCopy];

  return initForNewObject;
}

+ (id)creationRequestForMemoryWithTitle:(id)title subtitle:(id)subtitle creationDate:(id)date category:(unint64_t)category subcategory:(unint64_t)subcategory representativeAssets:(id)assets curatedAssets:(id)curatedAssets extendedCuratedAssets:(id)self0 keyAsset:(id)self1
{
  assetCopy = asset;
  extendedCuratedAssetsCopy = extendedCuratedAssets;
  curatedAssetsCopy = curatedAssets;
  assetsCopy = assets;
  dateCopy = date;
  subtitleCopy = subtitle;
  titleCopy = title;
  initForNewObject = [[PHMemoryChangeRequest alloc] initForNewObject];
  [initForNewObject setTitle:titleCopy];

  [initForNewObject setSubtitle:subtitleCopy];
  [initForNewObject setCreationDate:dateCopy];

  [initForNewObject setCategory:category];
  [initForNewObject setSubcategory:subcategory];
  [initForNewObject setRepresentativeAssets:assetsCopy curatedAssets:curatedAssetsCopy extendedCuratedAssets:extendedCuratedAssetsCopy keyAsset:assetCopy];

  return initForNewObject;
}

@end