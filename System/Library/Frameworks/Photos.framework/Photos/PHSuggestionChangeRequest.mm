@interface PHSuggestionChangeRequest
+ (id)changeRequestForSuggestion:(id)suggestion;
+ (id)creationRequestForSuggestion;
+ (id)creationRequestForSuggestionWithType:(unsigned __int16)type subtype:(unsigned __int16)subtype keyAssets:(id)assets representativeAssets:(id)representativeAssets creationDate:(id)date relevantUntilDate:(id)untilDate version:(int64_t)version;
+ (void)deleteSuggestions:(id)suggestions;
- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error;
- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error;
- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error;
- (NSString)context;
- (NSString)relatedCollectionUUID;
- (NSString)subtitle;
- (NSString)title;
- (PHObjectPlaceholder)placeholderForCreatedSuggestion;
- (PHSuggestionChangeRequest)initWithUUID:(id)d objectID:(id)iD;
- (PHSuggestionChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization;
- (id)actionData;
- (id)activationDate;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error;
- (id)creationDate;
- (id)endDate;
- (id)expungeDate;
- (id)featuresData;
- (id)initForNewObject;
- (id)relevantUntilDate;
- (id)startDate;
- (id)validateMutationsToManagedObject:(id)object;
- (int64_t)version;
- (unint64_t)availableFeatures;
- (unsigned)featuredState;
- (unsigned)notificationState;
- (unsigned)state;
- (unsigned)subtype;
- (unsigned)type;
- (void)_calculateAndSetExpungeDate;
- (void)encodeToXPCDict:(id)dict;
- (void)markActive;
- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)library;
- (void)setActionData:(id)data;
- (void)setActionProperties:(id)properties;
- (void)setActivationDate:(id)date;
- (void)setAvailableFeatures:(unint64_t)features;
- (void)setContext:(id)context;
- (void)setCreationDate:(id)date;
- (void)setEndDate:(id)date;
- (void)setExpungeDate:(id)date;
- (void)setFeaturedState:(unsigned __int16)state;
- (void)setFeaturesData:(id)data;
- (void)setFeaturesProperties:(id)properties;
- (void)setKeyAssets:(id)assets;
- (void)setNotificationState:(unsigned __int16)state;
- (void)setRelatedCollectionUUID:(id)d;
- (void)setRelevantUntilDate:(id)date;
- (void)setRepresentativeAssets:(id)assets;
- (void)setStartAndEndDatesWithKeyAssets:(id)assets representativeAssets:(id)representativeAssets;
- (void)setStartDate:(id)date;
- (void)setState:(unsigned __int16)state;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtype:(unsigned __int16)subtype;
- (void)setTitle:(id)title;
- (void)setType:(unsigned __int16)type;
- (void)setVersion:(int64_t)version;
@end

@implementation PHSuggestionChangeRequest

- (void)_calculateAndSetExpungeDate
{
  +[PHSuggestion lifetimeAfterBecomingActive];
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v3];
  [(PHSuggestionChangeRequest *)self setExpungeDate:v4];
}

- (BOOL)applyMutationsToManagedObject:(id)object photoLibrary:(id)library error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v31 = 0;
  v9 = [helper applyMutationsToManagedObject:objectCopy error:&v31];
  v10 = v31;

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];

  if (v9)
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      isMutated = [(PHChangeRequest *)self isMutated];
      *buf = 67109378;
      v33 = isMutated;
      v34 = 2112;
      v35 = mutations;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
    }

    v15 = objectCopy;
    keyAssetsHelper = [(PHSuggestionChangeRequest *)self keyAssetsHelper];
    mutableObjectIDsAndUUIDs = [keyAssetsHelper mutableObjectIDsAndUUIDs];

    v18 = 0x1E69BE000uLL;
    if (mutableObjectIDsAndUUIDs)
    {
      [keyAssetsHelper setAllowsInsert:1];
      [keyAssetsHelper setAllowsRemove:1];
      entityName = [MEMORY[0x1E69BE540] entityName];
      [keyAssetsHelper setDestinationEntityName:entityName];

      [keyAssetsHelper setIsDestinationObjectValid:&__block_literal_global_37965];
      relationshipName = [keyAssetsHelper relationshipName];
      v20 = [v15 mutableSetValueForKey:relationshipName];

      v30 = v10;
      LODWORD(relationshipName) = [keyAssetsHelper applyMutationsToManagedObject:v15 unorderedMutableChildren:v20 error:&v30];
      v22 = v30;

      representativeAssetsHelper = [(PHSuggestionChangeRequest *)self representativeAssetsHelper];
      if (!relationshipName)
      {
        goto LABEL_13;
      }

      v10 = v22;
      v18 = 0x1E69BE000;
    }

    else
    {
      representativeAssetsHelper = [(PHSuggestionChangeRequest *)self representativeAssetsHelper];
    }

    mutableObjectIDsAndUUIDs2 = [representativeAssetsHelper mutableObjectIDsAndUUIDs];

    if (mutableObjectIDsAndUUIDs2)
    {
      [representativeAssetsHelper setAllowsInsert:1];
      [representativeAssetsHelper setAllowsRemove:1];
      entityName2 = [*(v18 + 1344) entityName];
      [representativeAssetsHelper setDestinationEntityName:entityName2];

      [representativeAssetsHelper setIsDestinationObjectValid:&__block_literal_global_125];
      relationshipName = [representativeAssetsHelper relationshipName];
      v26 = [v15 mutableSetValueForKey:relationshipName];

      v29 = v10;
      LOBYTE(relationshipName) = [representativeAssetsHelper applyMutationsToManagedObject:v15 unorderedMutableChildren:v26 error:&v29];
      v22 = v29;
    }

    else
    {
      LOBYTE(relationshipName) = 1;
      v22 = v10;
    }

LABEL_13:

    v10 = v22;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  LOBYTE(relationshipName) = 0;
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((relationshipName & 1) == 0)
  {
    v27 = v10;
    *error = v10;
  }

LABEL_16:

  return relationshipName;
}

- (void)markActive
{
  [(PHSuggestionChangeRequest *)self setState:1];
  date = [MEMORY[0x1E695DF00] date];
  [(PHSuggestionChangeRequest *)self setActivationDate:date];

  [(PHSuggestionChangeRequest *)self _calculateAndSetExpungeDate];
}

- (void)setStartAndEndDatesWithKeyAssets:(id)assets representativeAssets:(id)representativeAssets
{
  v35 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  representativeAssetsCopy = representativeAssets;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [assetsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(assetsCopy);
        }

        creationDate = [*(*(&v29 + 1) + 8 * i) creationDate];
        if (!v11 || [v11 compare:creationDate] == 1)
        {
          v15 = creationDate;

          v11 = v15;
        }

        if (!v10 || [v10 compare:creationDate] == -1)
        {
          v16 = creationDate;

          v10 = v16;
        }
      }

      v9 = [assetsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = representativeAssetsCopy;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        creationDate2 = [*(*(&v25 + 1) + 8 * j) creationDate];
        if (!v11 || [v11 compare:creationDate2] == 1)
        {
          v23 = creationDate2;

          v11 = v23;
        }

        if (!v10 || [v10 compare:creationDate2] == -1)
        {
          v24 = creationDate2;

          v10 = v24;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  [(PHSuggestionChangeRequest *)self setStartDate:v11];
  [(PHSuggestionChangeRequest *)self setEndDate:v10];
}

- (void)setFeaturesProperties:(id)properties
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:properties requiringSecureCoding:1 error:&v6];
  v5 = v6;
  if (v4)
  {
    [(PHSuggestionChangeRequest *)self setFeaturesData:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = v5;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error archiving featuresProperties for Suggestion: %@", buf, 0xCu);
  }
}

- (void)setActionProperties:(id)properties
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:properties requiringSecureCoding:1 error:&v6];
  v5 = v6;
  if (v4)
  {
    [(PHSuggestionChangeRequest *)self setActionData:v4];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v8 = v5;
    _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error archiving actionProperties for Suggestion: %@", buf, 0xCu);
  }
}

- (void)setRepresentativeAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v7 = v4;
    [(PHChangeRequest *)self didMutate];
    representativeAssetsHelper = self->_representativeAssetsHelper;
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)representativeAssetsHelper setMutableObjectIDsAndUUIDs:v6];

    v4 = v7;
  }
}

- (void)setKeyAssets:(id)assets
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:assets];
  if (v4)
  {
    v7 = v4;
    [(PHChangeRequest *)self didMutate];
    keyAssetsHelper = self->_keyAssetsHelper;
    v6 = [v7 mutableCopy];
    [(PHRelationshipChangeRequestHelper *)keyAssetsHelper setMutableObjectIDsAndUUIDs:v6];

    v4 = v7;
  }
}

- (void)setRelatedCollectionUUID:(id)d
{
  dCopy = d;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dCopy)
  {
    [mutations setObject:dCopy forKeyedSubscript:@"relatedCollectionUUID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"relatedCollectionUUID"];
  }

  else
  {
    [mutations removeObjectForKey:@"relatedCollectionUUID"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"relatedCollectionUUID"];
  }
}

- (NSString)relatedCollectionUUID
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"relatedCollectionUUID"];

  return v5;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (contextCopy)
  {
    [mutations setObject:contextCopy forKeyedSubscript:@"suggestionContext"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"suggestionContext"];
  }

  else
  {
    [mutations removeObjectForKey:@"suggestionContext"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"suggestionContext"];
  }
}

- (NSString)context
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"suggestionContext"];

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

- (void)setFeaturesData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"featuresData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"featuresData"];
  }

  else
  {
    [mutations removeObjectForKey:@"featuresData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"featuresData"];
  }
}

- (id)featuresData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"featuresData"];

  return v5;
}

- (void)setActionData:(id)data
{
  dataCopy = data;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dataCopy)
  {
    [mutations setObject:dataCopy forKeyedSubscript:@"actionData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"actionData"];
  }

  else
  {
    [mutations removeObjectForKey:@"actionData"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"actionData"];
  }
}

- (id)actionData
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"actionData"];

  return v5;
}

- (void)setExpungeDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"expungeDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"expungeDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"expungeDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"expungeDate"];
  }
}

- (id)expungeDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"expungeDate"];

  return v5;
}

- (void)setRelevantUntilDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"relevantUntilDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"relevantUntilDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"relevantUntilDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"relevantUntilDate"];
  }
}

- (id)relevantUntilDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"relevantUntilDate"];

  return v5;
}

- (void)setActivationDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"activationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"activationDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"activationDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"activationDate"];
  }
}

- (id)activationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"activationDate"];

  return v5;
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"endDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"endDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"endDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"endDate"];
  }
}

- (id)endDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"endDate"];

  return v5;
}

- (void)setStartDate:(id)date
{
  dateCopy = date;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  v7 = mutations;
  if (dateCopy)
  {
    [mutations setObject:dateCopy forKeyedSubscript:@"startDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations removeObject:@"startDate"];
  }

  else
  {
    [mutations removeObjectForKey:@"startDate"];

    helper3 = [(PHChangeRequest *)self helper];
    nilMutations = [helper3 nilMutations];
    [nilMutations addObject:@"startDate"];
  }
}

- (id)startDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"startDate"];

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

- (id)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"creationDate"];

  return v5;
}

- (void)setAvailableFeatures:(unint64_t)features
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:features];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"availableFeatures"];
}

- (unint64_t)availableFeatures
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"availableFeatures"];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setVersion:(int64_t)version
{
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"version"];
}

- (int64_t)version
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"version"];

  shortValue = [v5 shortValue];
  return shortValue;
}

- (void)setFeaturedState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"featuredState"];
}

- (unsigned)featuredState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"featuredState"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setNotificationState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"notificationState"];
}

- (unsigned)notificationState
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"notificationState"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setState:(unsigned __int16)state
{
  stateCopy = state;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:stateCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"state"];
}

- (unsigned)state
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"state"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setSubtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:subtypeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"subtype"];
}

- (unsigned)subtype
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"subtype"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (void)setType:(unsigned __int16)type
{
  typeCopy = type;
  helper = [(PHChangeRequest *)self helper];
  [helper didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:typeCopy];
  helper2 = [(PHChangeRequest *)self helper];
  mutations = [helper2 mutations];
  [mutations setObject:v8 forKeyedSubscript:@"type"];
}

- (unsigned)type
{
  +[PHPhotoLibrary assertTransaction];
  helper = [(PHChangeRequest *)self helper];
  mutations = [helper mutations];
  v5 = [mutations objectForKey:@"type"];

  LOWORD(helper) = [v5 shortValue];
  return helper;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)library error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE828];
  libraryCopy = library;
  uuid = [(PHChangeRequest *)self uuid];
  v9 = [v6 insertIntoPhotoLibrary:libraryCopy withUUID:uuid];

  if (error && !v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create suggestion"];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v12];
  }

  return v9;
}

- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)library
{
  libraryCopy = library;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PHSuggestionChangeRequest_performTransactionCompletionHandlingInPhotoLibrary___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = libraryCopy;
  v5 = libraryCopy;
  [v5 performTransactionAndWait:v6];
}

void __80__PHSuggestionChangeRequest_performTransactionCompletionHandlingInPhotoLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v6 = [PHObject uuidFromLocalIdentifier:v2];

  v3 = [MEMORY[0x1E69BE828] suggestionWithUUID:v6 inPhotoLibrary:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 photoLibrary];
    [v4 updateCachedCounts:v5];
  }
}

- (id)validateMutationsToManagedObject:(id)object
{
  v25[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  if (!helper)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHSuggestionChangeRequest.m" lineNumber:137 description:@"PHChangeRequestHelper is unexpectedly nil"];
  }

  v7 = [helper validateMutationsToManagedObject:objectCopy];
  if ([v7 isSuccess] && -[PHSuggestionChangeRequest featuredState](self, "featuredState") == 1 && objc_msgSend(objectCopy, "type") != 3 && objc_msgSend(objectCopy, "type") != 5 && objc_msgSend(objectCopy, "type") != 4 && objc_msgSend(objectCopy, "type") != 7 && objc_msgSend(objectCopy, "type") != 6 && objc_msgSend(objectCopy, "type") != 10)
  {
    v8 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"FeaturedState can only be set on RecentInterest|Outstander|SmallMemory|Widget|Wallpaper type Suggestion";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v10 = [v8 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v9];

    v11 = [PHChangeRequest sanitizedFailureWithError:v10];

    v7 = v11;
  }

  if ([v7 isSuccess])
  {
    mutations = [helper mutations];
    v13 = [mutations objectForKeyedSubscript:@"relatedCollectionUUID"];

    if (v13)
    {
      type = [(PHSuggestionChangeRequest *)self type];
      if (type < 0xA || type == 11)
      {
        v15 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RelatedCollection isn't supported by type: %hu", -[PHSuggestionChangeRequest type](self, "type")];
        v23 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v18 = [v15 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v17];

        v19 = [PHChangeRequest sanitizedFailureWithError:v18];

        v7 = v19;
      }
    }
  }

  return v7;
}

- (BOOL)validateMutationsToManagedObject:(id)object error:(id *)error
{
  v5 = [(PHSuggestionChangeRequest *)self validateMutationsToManagedObject:object];
  v6 = [v5 resultWithError:error];
  LOBYTE(error) = v6 != 0;

  return error;
}

- (BOOL)allowMutationToManagedObject:(id)object propertyKey:(id)key error:(id *)error
{
  keyCopy = key;
  objectCopy = object;
  helper = [(PHChangeRequest *)self helper];
  v15 = 0;
  v11 = [helper allowMutationToManagedObject:objectCopy propertyKey:keyCopy error:&v15];

  v12 = v15;
  if (error && (v11 & 1) == 0)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

- (void)encodeToXPCDict:(id)dict
{
  dictCopy = dict;
  helper = [(PHChangeRequest *)self helper];
  [helper encodeToXPCDict:dictCopy];

  [(PHRelationshipChangeRequestHelper *)self->_keyAssetsHelper encodeToXPCDict:dictCopy];
  [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper encodeToXPCDict:dictCopy];
}

- (PHSuggestionChangeRequest)initWithXPCDict:(id)dict request:(id)request clientAuthorization:(id)authorization
{
  dictCopy = dict;
  requestCopy = request;
  authorizationCopy = authorization;
  v19.receiver = self;
  v19.super_class = PHSuggestionChangeRequest;
  v11 = [(PHChangeRequest *)&v19 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:dictCopy changeRequest:v11 request:requestCopy clientAuthorization:authorizationCopy];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      keyAssetsHelper = v11->_keyAssetsHelper;
      v11->_keyAssetsHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeSuggestionAssets" xpcDict:dictCopy changeRequestHelper:v11->super._helper];
      representativeAssetsHelper = v11->_representativeAssetsHelper;
      v11->_representativeAssetsHelper = v16;
    }
  }

  return v11;
}

- (PHSuggestionChangeRequest)initWithUUID:(id)d objectID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = PHSuggestionChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:dCopy objectID:iDCopy changeRequest:v8];
    helper = v8->super._helper;
    v8->super._helper = v9;

    v11 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssets" changeRequestHelper:v8->super._helper];
    keyAssetsHelper = v8->_keyAssetsHelper;
    v8->_keyAssetsHelper = v11;

    v13 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeSuggestionAssets" changeRequestHelper:v8->super._helper];
    representativeAssetsHelper = v8->_representativeAssetsHelper;
    v8->_representativeAssetsHelper = v13;
  }

  return v8;
}

- (id)initForNewObject
{
  v10.receiver = self;
  v10.super_class = PHSuggestionChangeRequest;
  v2 = [(PHChangeRequest *)&v10 init];
  if (v2)
  {
    v3 = [[PHChangeRequestHelper alloc] initForNewObjectWithChangeRequest:v2];
    helper = v2->super._helper;
    v2->super._helper = v3;

    v5 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssets" changeRequestHelper:v2->super._helper];
    keyAssetsHelper = v2->_keyAssetsHelper;
    v2->_keyAssetsHelper = v5;

    v7 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeSuggestionAssets" changeRequestHelper:v2->super._helper];
    representativeAssetsHelper = v2->_representativeAssetsHelper;
    v2->_representativeAssetsHelper = v7;
  }

  return v2;
}

- (PHObjectPlaceholder)placeholderForCreatedSuggestion
{
  helper = [(PHChangeRequest *)self helper];
  v4 = [helper placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

+ (void)deleteSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v4 = [(PHObjectDeleteRequest *)PHSuggestionDeleteRequest deleteRequestsForObjects:suggestionsCopy ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHSuggestionChangeRequest alloc];
    uuid = [suggestionCopy uuid];
    objectID = [suggestionCopy objectID];
    v7 = [(PHSuggestionChangeRequest *)v4 initWithUUID:uuid objectID:objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForSuggestion
{
  initForNewObject = [[PHSuggestionChangeRequest alloc] initForNewObject];

  return initForNewObject;
}

+ (id)creationRequestForSuggestionWithType:(unsigned __int16)type subtype:(unsigned __int16)subtype keyAssets:(id)assets representativeAssets:(id)representativeAssets creationDate:(id)date relevantUntilDate:(id)untilDate version:(int64_t)version
{
  subtypeCopy = subtype;
  typeCopy = type;
  untilDateCopy = untilDate;
  dateCopy = date;
  representativeAssetsCopy = representativeAssets;
  assetsCopy = assets;
  initForNewObject = [[PHSuggestionChangeRequest alloc] initForNewObject];
  [initForNewObject setState:0];
  [initForNewObject setType:typeCopy];
  [initForNewObject setSubtype:subtypeCopy];
  [initForNewObject setVersion:version];
  [initForNewObject setNotificationState:0];
  [initForNewObject setFeaturedState:0];
  [initForNewObject setCreationDate:dateCopy];

  [initForNewObject setRelevantUntilDate:untilDateCopy];
  [initForNewObject setKeyAssets:assetsCopy];
  [initForNewObject setRepresentativeAssets:representativeAssetsCopy];
  [initForNewObject setStartAndEndDatesWithKeyAssets:assetsCopy representativeAssets:representativeAssetsCopy];

  return initForNewObject;
}

@end