@interface PHLibraryScope
+ (BOOL)removePersonRulesOnActiveLibraryScopeWithPhotoLibrary:(id)library error:(id *)error;
+ (id)_estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:(BOOL)only options:(id)options error:(id *)error;
+ (id)entityKeyMap;
+ (id)fetchActiveLibraryScopeWithOptions:(id)options;
+ (id)fetchLibraryScopesWithLocalIdentifiers:(id)identifiers options:(id)options;
+ (id)fetchLibraryScopesWithOptions:(id)options;
+ (id)fetchPendingLibraryScopeInvitationWithOptions:(id)options;
+ (id)fetchPreviewLibraryScopeWithOptions:(id)options;
+ (id)localIdentifierWithUUID:(id)d;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
+ (unint64_t)estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:(BOOL)only imageCount:(unint64_t *)count videoCount:(unint64_t *)videoCount audioCount:(unint64_t *)audioCount itemCount:(unint64_t *)itemCount options:(id)options error:(id *)error;
+ (void)fetchLibraryScopeFromShareURL:(id)l ignoreExistingShare:(BOOL)share photoLibrary:(id)library completionHandler:(id)handler;
+ (void)fetchLibraryScopeFromShareURL:(id)l options:(id)options completionHandler:(id)handler;
+ (void)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithPhotoLibrary:(id)library completion:(id)completion;
- (PHLibraryScope)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (id)activateLibraryScopeWithCompletion:(id)completion;
- (id)markOnboardingPreviewAssetsByProcessingRulesWithCompletion:(id)completion;
- (void)acceptLibraryScopeWithCompletion:(id)completion;
- (void)deactivateLibraryScopeWithCompletion:(id)completion;
- (void)getCloudStatusCountsWithCompletionHandler:(id)handler;
- (void)publishLibraryScopeWithCompletionHandler:(id)handler;
- (void)refreshLibraryScopeWithCompletion:(id)completion;
- (void)removeParticipants:(id)participants exitSource:(int64_t)source completion:(id)completion;
- (void)startExitFromLibraryScopeWithRetentionPolicy:(int64_t)policy exitSource:(int64_t)source completion:(id)completion;
- (void)unsharePendingAssetsSharedToScope;
@end

@implementation PHLibraryScope

- (id)markOnboardingPreviewAssetsByProcessingRulesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:368 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  v8 = [PHUserFeedbackCalculator alloc];
  photoLibrary2 = [(PHObject *)self photoLibrary];
  v10 = [(PHUserFeedbackCalculator *)v8 initWithPhotoLibrary:photoLibrary2];

  personUUIDsWithNegativeFeedback = [(PHUserFeedbackCalculator *)v10 personUUIDsWithNegativeFeedback];
  cloudInternalClient = [assetsdClient cloudInternalClient];
  uuid = [(PHObject *)self uuid];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__PHLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithCompletion___block_invoke;
  v18[3] = &unk_1E75AAA50;
  v19 = completionCopy;
  v14 = completionCopy;
  v15 = [cloudInternalClient markOnboardingPreviewAssetsByProcessingRulesOnLibraryScope:uuid excludePersonUUIDs:personUUIDsWithNegativeFeedback completionHandler:v18];

  return v15;
}

void __77__PHLibraryScope_markOnboardingPreviewAssetsByProcessingRulesWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)unsharePendingAssetsSharedToScope
{
  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  scopeIdentifier = [(PHLibraryScope *)self scopeIdentifier];
  [cloudInternalClient unsharePendingAssetsSharedToScopeWithIdentifier:scopeIdentifier];
}

- (void)getCloudStatusCountsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  photoLibrary2 = [(PHObject *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary2 mainScopeIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PHLibraryScope_getCloudStatusCountsWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E75A85A8;
  v14 = handlerCopy;
  v11 = handlerCopy;
  [cloudInternalClient getLibraryScopeStatusCountsForScopeWithIdentifier:mainScopeIdentifier completionHandler:v13];
}

- (void)refreshLibraryScopeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  scopeIdentifier = [(PHLibraryScope *)self scopeIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PHLibraryScope_refreshLibraryScopeWithCompletion___block_invoke;
  v12[3] = &unk_1E75A8580;
  v13 = completionCopy;
  v10 = completionCopy;
  [cloudInternalClient refreshLibraryScopeWithIdentifier:scopeIdentifier completionHandler:v12];
}

- (void)removeParticipants:(id)participants exitSource:(int64_t)source completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = participantsCopy;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        uuid = [v18 uuid];

        if (uuid)
        {
          uuid2 = [v18 uuid];
          [v12 addObject:uuid2];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  cloudInternalClient = [assetsdClient cloudInternalClient];
  scopeIdentifier = [(PHLibraryScope *)self scopeIdentifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__PHLibraryScope_removeParticipants_exitSource_completion___block_invoke;
  v26[3] = &unk_1E75AAA50;
  v27 = completionCopy;
  v23 = completionCopy;
  [cloudInternalClient removeParticipantsWithParticipantUUIDs:v12 fromLibraryScopeWithIdentifier:scopeIdentifier retentionPolicy:0 exitSource:source completionHandler:v26];
}

void __59__PHLibraryScope_removeParticipants_exitSource_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)startExitFromLibraryScopeWithRetentionPolicy:(int64_t)policy exitSource:(int64_t)source completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  scopeIdentifier = [(PHLibraryScope *)self scopeIdentifier];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PHLibraryScope_startExitFromLibraryScopeWithRetentionPolicy_exitSource_completion___block_invoke;
  v16[3] = &unk_1E75AAA50;
  v17 = completionCopy;
  v14 = completionCopy;
  [cloudInternalClient startExitFromLibraryScopeWithIdentifier:scopeIdentifier retentionPolicy:policy exitSource:source completionHandler:v16];
}

void __85__PHLibraryScope_startExitFromLibraryScopeWithRetentionPolicy_exitSource_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)deactivateLibraryScopeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:314 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  uuid = [(PHObject *)self uuid];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__PHLibraryScope_deactivateLibraryScopeWithCompletion___block_invoke;
  v12[3] = &unk_1E75AAA50;
  v13 = completionCopy;
  v10 = completionCopy;
  [cloudInternalClient deactivateLibraryScope:uuid completionHandler:v12];
}

void __55__PHLibraryScope_deactivateLibraryScopeWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3, v4);
}

- (id)activateLibraryScopeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  uuid = [(PHObject *)self uuid];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__PHLibraryScope_activateLibraryScopeWithCompletion___block_invoke;
  v14[3] = &unk_1E75AAA50;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = [cloudInternalClient activateLibraryScope:uuid completionHandler:v14];

  return v11;
}

void __53__PHLibraryScope_activateLibraryScopeWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3, v4);
}

- (void)acceptLibraryScopeWithCompletion:(id)completion
{
  completionCopy = completion;
  uuid = [(PHObject *)self uuid];
  photoLibrary = [(PHObject *)self photoLibrary];
  [PHShare acceptShareWithUUID:uuid photoLibrary:photoLibrary completion:completionCopy];
}

- (void)publishLibraryScopeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  uuid = [(PHObject *)self uuid];
  photoLibrary = [(PHObject *)self photoLibrary];
  [PHShare publishShareWithUUID:uuid photoLibrary:photoLibrary completion:handlerCopy];
}

- (PHLibraryScope)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PHLibraryScope;
  v9 = [(PHObject *)&v37 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    title = v9->_title;
    v9->_title = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"ckShareData"];
    ckShareData = v9->_ckShareData;
    v9->_ckShareData = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v9->_status = [v16 integerValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"shareURL"];
    shareURL = v9->_shareURL;
    v9->_shareURL = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"scopeIdentifier"];
    scopeIdentifier = v9->_scopeIdentifier;
    v9->_scopeIdentifier = v19;

    v21 = [dictionaryCopy objectForKeyedSubscript:@"expiryDate"];
    expiryDate = v9->_expiryDate;
    v9->_expiryDate = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"trashedState"];
    v9->_trashedState = [v23 unsignedIntegerValue];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"localPublishState"];
    v9->_publishState = [v24 unsignedIntegerValue];

    v25 = [dictionaryCopy objectForKeyedSubscript:@"participantCloudUpdateState"];
    v9->_participantCloudUpdateState = [v25 unsignedIntegerValue];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"autoSharePolicy"];
    v9->_autoSharePolicy = [v26 unsignedIntegerValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"publicPermission"];
    v9->_publicPermission = [v27 unsignedIntegerValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"rulesData"];
    rulesData = v9->_rulesData;
    v9->_rulesData = v28;

    v9->_libraryScopeInLocalMode = [MEMORY[0x1E69BE4E8] libraryScopeScopeIdentifierWasCreatedInLocalOnlyMode:v9->_scopeIdentifier];
    v30 = [dictionaryCopy objectForKeyedSubscript:@"scopeSyncingState"];
    v9->_scopeSyncingState = [v30 unsignedIntegerValue];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"previewState"];
    v9->_previewState = [v31 unsignedIntegerValue];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"cloudPhotoCount"];
    v9->_cloudPhotoCount = [v32 unsignedIntegerValue];

    v33 = [dictionaryCopy objectForKeyedSubscript:@"cloudVideoCount"];
    v9->_cloudVideoCount = [v33 unsignedIntegerValue];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"cloudItemCount"];
    v9->_cloudItemCount = [v34 unsignedIntegerValue];

    v35 = [dictionaryCopy objectForKeyedSubscript:@"exitState"];
    v9->_exitState = [v35 unsignedIntegerValue];
  }

  return v9;
}

+ (BOOL)removePersonRulesOnActiveLibraryScopeWithPhotoLibrary:(id)library error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v7 = [PHLibraryScope fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];

  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    if ([firstObject autoSharePolicy] == 2)
    {
      librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
      v26 = firstObject;
      v10 = [PHLibraryScopeRule fetchLibraryScopeRulesForLibraryScope:firstObject options:librarySpecificFetchOptions2];

      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * i);
            personCondition = [v17 personCondition];

            if (personCondition)
            {
              [v17 removeConditionOfType:objc_opt_class()];
            }

            dateRangeCondition = [v17 dateRangeCondition];

            if (dateRangeCondition)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v14);
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __78__PHLibraryScope_removePersonRulesOnActiveLibraryScopeWithPhotoLibrary_error___block_invoke;
      v28[3] = &unk_1E75AAEB0;
      firstObject = v26;
      v29 = v26;
      v20 = v11;
      v30 = v20;
      v27 = 0;
      v21 = [libraryCopy performChangesAndWait:v28 error:&v27];
      v22 = v27;
      v23 = v22;
      if (error)
      {
        v24 = v22;
        *error = v23;
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

void __78__PHLibraryScope_removePersonRulesOnActiveLibraryScopeWithPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v2 = [PHLibraryScopeChangeRequest changeRequestForLibraryScope:*(a1 + 32)];
  if ([*(a1 + 40) count])
  {
    [v2 updateWithCustomRules:*(a1 + 40)];
  }

  else
  {
    [v2 setAutoSharePolicy:0];
  }
}

+ (id)_estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:(BOOL)only options:(id)options error:(id *)error
{
  onlyCopy = only;
  v22[2] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v8 = MEMORY[0x1E696AB28];
  if (onlyCopy)
  {
    predicateToIncludeOnlyContentContributedByCurrentUser = [MEMORY[0x1E69BE540] predicateToIncludeOnlyContentContributedByCurrentUser];
    v22[0] = predicateToIncludeOnlyContentContributedByCurrentUser;
    v10 = [MEMORY[0x1E69BE540] predicateForAssetSharingFilter:1];
    v22[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v12 = [v8 andPredicateWithSubpredicates:v11];
  }

  else
  {
    predicateToIncludeOnlyContentContributedByCurrentUser = [MEMORY[0x1E69BE540] predicateForAssetSharingFilter:1];
    v21 = predicateToIncludeOnlyContentContributedByCurrentUser;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v12 = [v8 andPredicateWithSubpredicates:v10];
  }

  if (v12)
  {
    [optionsCopy setShouldPrefetchCount:1];
    [optionsCopy setInternalPredicate:v12];
    v13 = [PHAsset fetchAssetsWithOptions:optionsCopy];
  }

  else
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"estimatedAssetCountToMoveForExitRetentionPolicy: generated predate is nil", *MEMORY[0x1E696A578]];
    v20 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v14 errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v16];
    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    v13 = 0;
  }

  return v13;
}

+ (unint64_t)estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:(BOOL)only imageCount:(unint64_t *)count videoCount:(unint64_t *)videoCount audioCount:(unint64_t *)audioCount itemCount:(unint64_t *)itemCount options:(id)options error:(id *)error
{
  v13 = [self _estimatedAssetCountToMoveForExitRetentionPolicyContributedOnly:only options:options error:error];
  v14 = v13;
  if (count)
  {
    *count = [v13 countOfAssetsWithMediaType:1];
  }

  if (videoCount)
  {
    *videoCount = [v14 countOfAssetsWithMediaType:2];
  }

  if (audioCount)
  {
    *audioCount = [v14 countOfAssetsWithMediaType:3];
  }

  if (itemCount)
  {
    *itemCount = [v14 countOfAssetsWithMediaType:0];
  }

  v15 = [v14 count];

  return v15;
}

+ (void)resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithPhotoLibrary:(id)library completion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  assetsdClient = [libraryCopy assetsdClient];
  cloudInternalClient = [assetsdClient cloudInternalClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__PHLibraryScope_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithPhotoLibrary_completion___block_invoke;
  v13[3] = &unk_1E75AAA50;
  v14 = completionCopy;
  v11 = completionCopy;
  [cloudInternalClient resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithCompletionHandler:v13];
}

void __102__PHLibraryScope_resetLocalOnlyLibraryScopesAndAllLibraryScopeAssetStatesWithPhotoLibrary_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = a2 == 0;
  v4 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3, v4);
}

+ (void)fetchLibraryScopeFromShareURL:(id)l ignoreExistingShare:(BOOL)share photoLibrary:(id)library completionHandler:(id)handler
{
  shareCopy = share;
  lCopy = l;
  libraryCopy = library;
  handlerCopy = handler;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:274 description:@"Valid PHPhotoLibrary must be specified"];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__PHLibraryScope_fetchLibraryScopeFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke;
  v17[3] = &unk_1E75A8558;
  v18 = libraryCopy;
  v19 = handlerCopy;
  v14 = libraryCopy;
  v15 = handlerCopy;
  [PHShare fetchShareFromShareURL:lCopy ignoreExistingShare:shareCopy photoLibrary:v14 completionHandler:v17];
}

void __99__PHLibraryScope_fetchLibraryScopeFromShareURL_ignoreExistingShare_photoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    v9 = [PHShare PHShareErrorFromError:v6];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v9 = [*(a1 + 32) librarySpecificFetchOptions];
    [v9 setIncludeExitingShares:1];
    [v9 setIncludeExpiredShares:1];
    [v9 setIncludeTrashedShares:1];
    v18[0] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = [PHLibraryScope fetchLibraryScopesWithLocalIdentifiers:v10 options:v9];
    v12 = [v11 firstObject];

    if (v12)
    {
      v7 = 0;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to fetch libraryScope with UUID %@", v5];
      v17 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v7 = [v13 errorWithDomain:@"PHPhotosErrorDomain" code:6003 userInfo:v15];
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (void)fetchLibraryScopeFromShareURL:(id)l options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  photoLibrary = [options photoLibrary];
  [self fetchLibraryScopeFromShareURL:lCopy ignoreExistingShare:0 photoLibrary:photoLibrary completionHandler:handlerCopy];
}

+ (id)fetchPendingLibraryScopeInvitationWithOptions:(id)options
{
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:262 description:@"Valid PHPhotoLibrary must be specified via fetch options"];
  }

  v7 = [PHObject authorizationAwareFetchResultWithOptions:optionsCopy fetchBlock:&__block_literal_global_140];

  return v7;
}

id __64__PHLibraryScope_fetchPendingLibraryScopeInvitationWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPendingLibraryScopeInvitationWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchPreviewLibraryScopeWithOptions:(id)options
{
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:254 description:@"Valid PHPhotoLibrary must be specified via fetch options"];
  }

  v7 = [PHObject authorizationAwareFetchResultWithOptions:optionsCopy fetchBlock:&__block_literal_global_138];

  return v7;
}

id __54__PHLibraryScope_fetchPreviewLibraryScopeWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForPreviewLibraryScopeWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchActiveLibraryScopeWithOptions:(id)options
{
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:246 description:@"Valid PHPhotoLibrary must be specified via fetch options"];
  }

  v7 = [PHObject authorizationAwareFetchResultWithOptions:optionsCopy fetchBlock:&__block_literal_global_136];

  return v7;
}

id __53__PHLibraryScope_fetchActiveLibraryScopeWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForActiveLibraryScopeWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchLibraryScopesWithOptions:(id)options
{
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:238 description:@"Valid PHPhotoLibrary must be specified via fetch options"];
  }

  v7 = [PHObject authorizationAwareFetchResultWithOptions:optionsCopy fetchBlock:&__block_literal_global_134];

  return v7;
}

id __48__PHLibraryScope_fetchLibraryScopesWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForLibraryScopesWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchLibraryScopesWithLocalIdentifiers:(id)identifiers options:(id)options
{
  identifiersCopy = identifiers;
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHLibraryScope.m" lineNumber:230 description:@"Valid PHPhotoLibrary must be specified via fetch options"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PHLibraryScope_fetchLibraryScopesWithLocalIdentifiers_options___block_invoke;
  v14[3] = &unk_1E75AB0E0;
  v15 = identifiersCopy;
  v10 = identifiersCopy;
  v11 = [PHObject authorizationAwareFetchResultWithOptions:optionsCopy fetchBlock:v14];

  return v11;
}

id __65__PHLibraryScope_fetchLibraryScopesWithLocalIdentifiers_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryforLibraryScopesWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)localIdentifierWithUUID:(id)d
{
  v4 = MEMORY[0x1E696AEC0];
  dCopy = d;
  identifierCode = [self identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", dCopy, identifierCode];

  return v7;
}

+ (id)transformValueExpression:(id)expression forKeyPath:(id)path
{
  expressionCopy = expression;
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PHLibraryScope_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_32787 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_32787, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_32788 containsObject:pathCopy])
  {
    v8 = expressionCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __54__PHLibraryScope_transformValueExpression_forKeyPath___block_invoke()
{
  v4[19] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"title";
  v4[1] = @"creationDate";
  v4[2] = @"ckShareData";
  v4[3] = @"uuid";
  v4[4] = @"status";
  v4[5] = @"shareURL";
  v4[6] = @"scopeIdentifier";
  v4[7] = @"expiryDate";
  v4[8] = @"trashedState";
  v4[9] = @"publishState";
  v4[10] = @"participantCloudUpdateState";
  v4[11] = @"autoSharePolicy";
  v4[12] = @"previewState";
  v4[13] = @"publicPermission";
  v4[14] = @"rulesData";
  v4[15] = @"cloudPhotoCount";
  v4[16] = @"cloudVideoCount";
  v4[17] = @"cloudItemCount";
  v4[18] = @"exitState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:19];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_32788;
  transformValueExpression_forKeyPath___passThroughSet_32788 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_32797;

  return v2;
}

void __30__PHLibraryScope_entityKeyMap__block_invoke()
{
  v45[20] = *MEMORY[0x1E69E9840];
  v18 = [PHEntityKeyMap alloc];
  v43 = @"title";
  v44[0] = @"title";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v45[0] = v23;
  v44[1] = @"creationDate";
  v42 = @"creationDate";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v45[1] = v22;
  v44[2] = @"ckShareData";
  v41 = @"ckShareData";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v45[2] = v21;
  v44[3] = @"uuid";
  v40 = @"uuid";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v45[3] = v20;
  v44[4] = @"status";
  v39 = @"status";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v45[4] = v19;
  v44[5] = @"shareURL";
  v38 = @"shareURL";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v45[5] = v17;
  v44[6] = @"scopeIdentifier";
  v37 = @"scopeIdentifier";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v45[6] = v16;
  v44[7] = @"expiryDate";
  v36 = @"expiryDate";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v45[7] = v15;
  v44[8] = @"trashedState";
  v35 = @"trashedState";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v45[8] = v14;
  v44[9] = @"localPublishState";
  v34 = @"publishState";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v45[9] = v13;
  v44[10] = @"participantCloudUpdateState";
  v33 = @"participantCloudUpdateState";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v45[10] = v12;
  v44[11] = @"autoSharePolicy";
  v32 = @"autoSharePolicy";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v45[11] = v0;
  v44[12] = @"scopeSyncingState";
  v31 = @"scopeSyncingState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v45[12] = v1;
  v44[13] = @"previewState";
  v30 = @"previewState";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v45[13] = v2;
  v44[14] = @"publicPermission";
  v29 = @"publicPermission";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v45[14] = v3;
  v44[15] = @"rulesData";
  v28 = @"rulesData";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v45[15] = v4;
  v44[16] = @"cloudPhotoCount";
  v27 = @"cloudPhotoCount";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v45[16] = v5;
  v44[17] = @"cloudVideoCount";
  v26 = @"cloudVideoCount";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v45[17] = v6;
  v44[18] = @"cloudItemCount";
  v25 = @"cloudItemCount";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v45[18] = v7;
  v44[19] = @"exitState";
  v24 = @"exitState";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v45[19] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:20];
  v10 = [(PHEntityKeyMap *)v18 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_32797;
  entityKeyMap_pl_once_object_15_32797 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)hint
{
  if (propertiesToFetchWithHint__onceToken_32805 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_32805, &__block_literal_global_32806);
  }

  v4 = propertiesToFetchWithHint__array_32807;

  return v4;
}

void __44__PHLibraryScope_propertiesToFetchWithHint___block_invoke()
{
  v3[21] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"title";
  v3[2] = @"creationDate";
  v3[3] = @"ckShareData";
  v3[4] = @"uuid";
  v3[5] = @"status";
  v3[6] = @"shareURL";
  v3[7] = @"scopeIdentifier";
  v3[8] = @"expiryDate";
  v3[9] = @"trashedState";
  v3[10] = @"localPublishState";
  v3[11] = @"participantCloudUpdateState";
  v3[12] = @"autoSharePolicy";
  v3[13] = @"scopeSyncingState";
  v3[14] = @"previewState";
  v3[15] = @"publicPermission";
  v3[16] = @"rulesData";
  v3[17] = @"cloudPhotoCount";
  v3[18] = @"cloudVideoCount";
  v3[19] = @"cloudItemCount";
  v3[20] = @"exitState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:21];
  v2 = propertiesToFetchWithHint__array_32807;
  propertiesToFetchWithHint__array_32807 = v1;
}

@end