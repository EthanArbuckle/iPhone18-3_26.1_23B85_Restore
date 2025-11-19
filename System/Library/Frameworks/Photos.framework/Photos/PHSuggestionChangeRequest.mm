@interface PHSuggestionChangeRequest
+ (id)changeRequestForSuggestion:(id)a3;
+ (id)creationRequestForSuggestion;
+ (id)creationRequestForSuggestionWithType:(unsigned __int16)a3 subtype:(unsigned __int16)a4 keyAssets:(id)a5 representativeAssets:(id)a6 creationDate:(id)a7 relevantUntilDate:(id)a8 version:(int64_t)a9;
+ (void)deleteSuggestions:(id)a3;
- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5;
- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5;
- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4;
- (NSString)context;
- (NSString)relatedCollectionUUID;
- (NSString)subtitle;
- (NSString)title;
- (PHObjectPlaceholder)placeholderForCreatedSuggestion;
- (PHSuggestionChangeRequest)initWithUUID:(id)a3 objectID:(id)a4;
- (PHSuggestionChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5;
- (id)actionData;
- (id)activationDate;
- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4;
- (id)creationDate;
- (id)endDate;
- (id)expungeDate;
- (id)featuresData;
- (id)initForNewObject;
- (id)relevantUntilDate;
- (id)startDate;
- (id)validateMutationsToManagedObject:(id)a3;
- (int64_t)version;
- (unint64_t)availableFeatures;
- (unsigned)featuredState;
- (unsigned)notificationState;
- (unsigned)state;
- (unsigned)subtype;
- (unsigned)type;
- (void)_calculateAndSetExpungeDate;
- (void)encodeToXPCDict:(id)a3;
- (void)markActive;
- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)a3;
- (void)setActionData:(id)a3;
- (void)setActionProperties:(id)a3;
- (void)setActivationDate:(id)a3;
- (void)setAvailableFeatures:(unint64_t)a3;
- (void)setContext:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setEndDate:(id)a3;
- (void)setExpungeDate:(id)a3;
- (void)setFeaturedState:(unsigned __int16)a3;
- (void)setFeaturesData:(id)a3;
- (void)setFeaturesProperties:(id)a3;
- (void)setKeyAssets:(id)a3;
- (void)setNotificationState:(unsigned __int16)a3;
- (void)setRelatedCollectionUUID:(id)a3;
- (void)setRelevantUntilDate:(id)a3;
- (void)setRepresentativeAssets:(id)a3;
- (void)setStartAndEndDatesWithKeyAssets:(id)a3 representativeAssets:(id)a4;
- (void)setStartDate:(id)a3;
- (void)setState:(unsigned __int16)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtype:(unsigned __int16)a3;
- (void)setTitle:(id)a3;
- (void)setType:(unsigned __int16)a3;
- (void)setVersion:(int64_t)a3;
@end

@implementation PHSuggestionChangeRequest

- (void)_calculateAndSetExpungeDate
{
  +[PHSuggestion lifetimeAfterBecomingActive];
  v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v3];
  [(PHSuggestionChangeRequest *)self setExpungeDate:v4];
}

- (BOOL)applyMutationsToManagedObject:(id)a3 photoLibrary:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PHChangeRequest *)self helper];
  v31 = 0;
  v9 = [v8 applyMutationsToManagedObject:v7 error:&v31];
  v10 = v31;

  v11 = [(PHChangeRequest *)self helper];
  v12 = [v11 mutations];

  if (v9)
  {
    v13 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(PHChangeRequest *)self isMutated];
      *buf = 67109378;
      v33 = v14;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "##### isMutated %d mutations %@ will update", buf, 0x12u);
    }

    v15 = v7;
    v16 = [(PHSuggestionChangeRequest *)self keyAssetsHelper];
    v17 = [v16 mutableObjectIDsAndUUIDs];

    v18 = 0x1E69BE000uLL;
    if (v17)
    {
      [v16 setAllowsInsert:1];
      [v16 setAllowsRemove:1];
      v19 = [MEMORY[0x1E69BE540] entityName];
      [v16 setDestinationEntityName:v19];

      [v16 setIsDestinationObjectValid:&__block_literal_global_37965];
      v21 = [v16 relationshipName];
      v20 = [v15 mutableSetValueForKey:v21];

      v30 = v10;
      LODWORD(v21) = [v16 applyMutationsToManagedObject:v15 unorderedMutableChildren:v20 error:&v30];
      v22 = v30;

      v23 = [(PHSuggestionChangeRequest *)self representativeAssetsHelper];
      if (!v21)
      {
        goto LABEL_13;
      }

      v10 = v22;
      v18 = 0x1E69BE000;
    }

    else
    {
      v23 = [(PHSuggestionChangeRequest *)self representativeAssetsHelper];
    }

    v24 = [v23 mutableObjectIDsAndUUIDs];

    if (v24)
    {
      [v23 setAllowsInsert:1];
      [v23 setAllowsRemove:1];
      v25 = [*(v18 + 1344) entityName];
      [v23 setDestinationEntityName:v25];

      [v23 setIsDestinationObjectValid:&__block_literal_global_125];
      v21 = [v23 relationshipName];
      v26 = [v15 mutableSetValueForKey:v21];

      v29 = v10;
      LOBYTE(v21) = [v23 applyMutationsToManagedObject:v15 unorderedMutableChildren:v26 error:&v29];
      v22 = v29;
    }

    else
    {
      LOBYTE(v21) = 1;
      v22 = v10;
    }

LABEL_13:

    v10 = v22;
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  LOBYTE(v21) = 0;
  if (!a5)
  {
    goto LABEL_16;
  }

LABEL_14:
  if ((v21 & 1) == 0)
  {
    v27 = v10;
    *a5 = v10;
  }

LABEL_16:

  return v21;
}

- (void)markActive
{
  [(PHSuggestionChangeRequest *)self setState:1];
  v3 = [MEMORY[0x1E695DF00] date];
  [(PHSuggestionChangeRequest *)self setActivationDate:v3];

  [(PHSuggestionChangeRequest *)self _calculateAndSetExpungeDate];
}

- (void)setStartAndEndDatesWithKeyAssets:(id)a3 representativeAssets:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v6);
        }

        v14 = [*(*(&v29 + 1) + 8 * i) creationDate];
        if (!v11 || [v11 compare:v14] == 1)
        {
          v15 = v14;

          v11 = v15;
        }

        if (!v10 || [v10 compare:v14] == -1)
        {
          v16 = v14;

          v10 = v16;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
  v17 = v7;
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

        v22 = [*(*(&v25 + 1) + 8 * j) creationDate];
        if (!v11 || [v11 compare:v22] == 1)
        {
          v23 = v22;

          v11 = v23;
        }

        if (!v10 || [v10 compare:v22] == -1)
        {
          v24 = v22;

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

- (void)setFeaturesProperties:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v6];
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

- (void)setActionProperties:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v6];
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

- (void)setRepresentativeAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
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

- (void)setKeyAssets:(id)a3
{
  v4 = [PHRelationshipChangeRequestHelper objectIDsOrUUIDsFromPHObjects:a3];
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

- (void)setRelatedCollectionUUID:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"relatedCollectionUUID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"relatedCollectionUUID"];
  }

  else
  {
    [v6 removeObjectForKey:@"relatedCollectionUUID"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"relatedCollectionUUID"];
  }
}

- (NSString)relatedCollectionUUID
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"relatedCollectionUUID"];

  return v5;
}

- (void)setContext:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"suggestionContext"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"suggestionContext"];
  }

  else
  {
    [v6 removeObjectForKey:@"suggestionContext"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"suggestionContext"];
  }
}

- (NSString)context
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"suggestionContext"];

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

- (void)setFeaturesData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"featuresData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"featuresData"];
  }

  else
  {
    [v6 removeObjectForKey:@"featuresData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"featuresData"];
  }
}

- (id)featuresData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"featuresData"];

  return v5;
}

- (void)setActionData:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"actionData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"actionData"];
  }

  else
  {
    [v6 removeObjectForKey:@"actionData"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"actionData"];
  }
}

- (id)actionData
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"actionData"];

  return v5;
}

- (void)setExpungeDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"expungeDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"expungeDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"expungeDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"expungeDate"];
  }
}

- (id)expungeDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"expungeDate"];

  return v5;
}

- (void)setRelevantUntilDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"relevantUntilDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"relevantUntilDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"relevantUntilDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"relevantUntilDate"];
  }
}

- (id)relevantUntilDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"relevantUntilDate"];

  return v5;
}

- (void)setActivationDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"activationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"activationDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"activationDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"activationDate"];
  }
}

- (id)activationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"activationDate"];

  return v5;
}

- (void)setEndDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"endDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"endDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"endDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"endDate"];
  }
}

- (id)endDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"endDate"];

  return v5;
}

- (void)setStartDate:(id)a3
{
  v10 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 didMutate];

  v5 = [(PHChangeRequest *)self helper];
  v6 = [v5 mutations];
  v7 = v6;
  if (v10)
  {
    [v6 setObject:v10 forKeyedSubscript:@"startDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 removeObject:@"startDate"];
  }

  else
  {
    [v6 removeObjectForKey:@"startDate"];

    v8 = [(PHChangeRequest *)self helper];
    v9 = [v8 nilMutations];
    [v9 addObject:@"startDate"];
  }
}

- (id)startDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"startDate"];

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

- (id)creationDate
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"creationDate"];

  return v5;
}

- (void)setAvailableFeatures:(unint64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"availableFeatures"];
}

- (unint64_t)availableFeatures
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"availableFeatures"];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (void)setVersion:(int64_t)a3
{
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"version"];
}

- (int64_t)version
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"version"];

  v6 = [v5 shortValue];
  return v6;
}

- (void)setFeaturedState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"featuredState"];
}

- (unsigned)featuredState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"featuredState"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setNotificationState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"notificationState"];
}

- (unsigned)notificationState
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"notificationState"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"state"];
}

- (unsigned)state
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"state"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setSubtype:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"subtype"];
}

- (unsigned)subtype
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"subtype"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (void)setType:(unsigned __int16)a3
{
  v3 = a3;
  v5 = [(PHChangeRequest *)self helper];
  [v5 didMutate];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
  v6 = [(PHChangeRequest *)self helper];
  v7 = [v6 mutations];
  [v7 setObject:v8 forKeyedSubscript:@"type"];
}

- (unsigned)type
{
  +[PHPhotoLibrary assertTransaction];
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 mutations];
  v5 = [v4 objectForKey:@"type"];

  LOWORD(v3) = [v5 shortValue];
  return v3;
}

- (id)createManagedObjectForInsertIntoPhotoLibrary:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69BE828];
  v7 = a3;
  v8 = [(PHChangeRequest *)self uuid];
  v9 = [v6 insertIntoPhotoLibrary:v7 withUUID:v8];

  if (a4 && !v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create suggestion"];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v10 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v12];
  }

  return v9;
}

- (void)performTransactionCompletionHandlingInPhotoLibrary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__PHSuggestionChangeRequest_performTransactionCompletionHandlingInPhotoLibrary___block_invoke;
  v6[3] = &unk_1E75AAEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (id)validateMutationsToManagedObject:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PHChangeRequest *)self helper];
  if (!v6)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PHSuggestionChangeRequest.m" lineNumber:137 description:@"PHChangeRequestHelper is unexpectedly nil"];
  }

  v7 = [v6 validateMutationsToManagedObject:v5];
  if ([v7 isSuccess] && -[PHSuggestionChangeRequest featuredState](self, "featuredState") == 1 && objc_msgSend(v5, "type") != 3 && objc_msgSend(v5, "type") != 5 && objc_msgSend(v5, "type") != 4 && objc_msgSend(v5, "type") != 7 && objc_msgSend(v5, "type") != 6 && objc_msgSend(v5, "type") != 10)
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
    v12 = [v6 mutations];
    v13 = [v12 objectForKeyedSubscript:@"relatedCollectionUUID"];

    if (v13)
    {
      v14 = [(PHSuggestionChangeRequest *)self type];
      if (v14 < 0xA || v14 == 11)
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

- (BOOL)validateMutationsToManagedObject:(id)a3 error:(id *)a4
{
  v5 = [(PHSuggestionChangeRequest *)self validateMutationsToManagedObject:a3];
  v6 = [v5 resultWithError:a4];
  LOBYTE(a4) = v6 != 0;

  return a4;
}

- (BOOL)allowMutationToManagedObject:(id)a3 propertyKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PHChangeRequest *)self helper];
  v15 = 0;
  v11 = [v10 allowMutationToManagedObject:v9 propertyKey:v8 error:&v15];

  v12 = v15;
  if (a5 && (v11 & 1) == 0)
  {
    v13 = v12;
    *a5 = v12;
  }

  return v11;
}

- (void)encodeToXPCDict:(id)a3
{
  v5 = a3;
  v4 = [(PHChangeRequest *)self helper];
  [v4 encodeToXPCDict:v5];

  [(PHRelationshipChangeRequestHelper *)self->_keyAssetsHelper encodeToXPCDict:v5];
  [(PHRelationshipChangeRequestHelper *)self->_representativeAssetsHelper encodeToXPCDict:v5];
}

- (PHSuggestionChangeRequest)initWithXPCDict:(id)a3 request:(id)a4 clientAuthorization:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PHSuggestionChangeRequest;
  v11 = [(PHChangeRequest *)&v19 init];
  if (v11)
  {
    v12 = [[PHChangeRequestHelper alloc] initWithXPCDict:v8 changeRequest:v11 request:v9 clientAuthorization:v10];
    helper = v11->super._helper;
    v11->super._helper = v12;

    if (v12)
    {
      v14 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"keyAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      keyAssetsHelper = v11->_keyAssetsHelper;
      v11->_keyAssetsHelper = v14;

      v16 = [[PHRelationshipChangeRequestHelper alloc] initWithRelationshipName:@"representativeSuggestionAssets" xpcDict:v8 changeRequestHelper:v11->super._helper];
      representativeAssetsHelper = v11->_representativeAssetsHelper;
      v11->_representativeAssetsHelper = v16;
    }
  }

  return v11;
}

- (PHSuggestionChangeRequest)initWithUUID:(id)a3 objectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PHSuggestionChangeRequest;
  v8 = [(PHChangeRequest *)&v16 init];
  if (v8)
  {
    v9 = [[PHChangeRequestHelper alloc] initWithUUID:v6 objectID:v7 changeRequest:v8];
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
  v3 = [(PHChangeRequest *)self helper];
  v4 = [v3 placeholderForCreatedObjectWithClass:objc_opt_class() changeRequest:self];

  return v4;
}

+ (void)deleteSuggestions:(id)a3
{
  v5 = a3;
  v4 = [(PHObjectDeleteRequest *)PHSuggestionDeleteRequest deleteRequestsForObjects:v5 ofType:objc_opt_class() forSelector:a2];
}

+ (id)changeRequestForSuggestion:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [PHSuggestionChangeRequest alloc];
    v5 = [v3 uuid];
    v6 = [v3 objectID];
    v7 = [(PHSuggestionChangeRequest *)v4 initWithUUID:v5 objectID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)creationRequestForSuggestion
{
  v2 = [[PHSuggestionChangeRequest alloc] initForNewObject];

  return v2;
}

+ (id)creationRequestForSuggestionWithType:(unsigned __int16)a3 subtype:(unsigned __int16)a4 keyAssets:(id)a5 representativeAssets:(id)a6 creationDate:(id)a7 relevantUntilDate:(id)a8 version:(int64_t)a9
{
  v12 = a4;
  v13 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = [[PHSuggestionChangeRequest alloc] initForNewObject];
  [v18 setState:0];
  [v18 setType:v13];
  [v18 setSubtype:v12];
  [v18 setVersion:a9];
  [v18 setNotificationState:0];
  [v18 setFeaturedState:0];
  [v18 setCreationDate:v15];

  [v18 setRelevantUntilDate:v14];
  [v18 setKeyAssets:v17];
  [v18 setRepresentativeAssets:v16];
  [v18 setStartAndEndDatesWithKeyAssets:v17 representativeAssets:v16];

  return v18;
}

@end