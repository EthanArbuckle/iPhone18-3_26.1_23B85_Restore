@interface PHSuggestion
+ (BOOL)hasPersonLocalIdentifierInContextForSuggestionSubype:(unsigned __int16)a3;
+ (id)allFeaturedStateEnabledSuggestionTypes;
+ (id)availableSuggestionTypeInfosWithOptions:(id)a3 photoLibrary:(id)a4;
+ (id)entityKeyMap;
+ (id)fetchAllFeaturedStateEnabledSuggestionsWithOptions:(id)a3;
+ (id)fetchPredicateForSharingFilter:(unsigned __int16)a3;
+ (id)fetchRecentInterestSuggestionsForAsset:(id)a3;
+ (id)fetchSuggestionsWithState:(unsigned __int16)a3 ofType:(unsigned __int16)a4 subtype:(unsigned __int16)a5 withOptions:(id)a6;
+ (id)fetchSuggestionsWithState:(unsigned __int16)a3 ofType:(unsigned __int16)a4 withOptions:(id)a5;
+ (id)fetchSuggestionsWithState:(unsigned __int16)a3 withOptions:(id)a4;
+ (id)fetchWallpaperSuggestionsWithFeaturedState:(unsigned __int16)a3 withOptions:(id)a4;
+ (id)fetchWidgetSuggestionsWithFeaturedState:(unsigned __int16)a3 withOptions:(id)a4;
+ (id)localIdentifierWithUUID:(id)a3;
+ (id)predicateForAllAmbientSuggestions;
+ (id)predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper;
+ (id)predicateForAllFeaturedStateEnabledSuggestionTypesForWidget;
+ (id)predicateForAllNonMeAmbientSuggestions;
+ (id)predicateForAllShuffleWallpaperAlbumSuggestions;
+ (id)predicateForAllShuffleWallpaperSuggestions;
+ (id)predicateForAllTopWallpaperSuggestions;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)suggestionInfosWithOptions:(id)a3 photoLibrary:(id)a4;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (id)transientSuggestionWithInfo:(id)a3 photoLibrary:(id)a4;
- (BOOL)containsUnverifiedPersons;
- (NSDictionary)actionProperties;
- (NSDictionary)featuresProperties;
- (NSString)relatedCollectionUUID;
- (PHSuggestion)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)assets;
- (id)debugDescription;
- (id)description;
- (id)predicateForAllAssets;
- (id)predicateForAllMomentsFromRepresentativeAssets;
@end

@implementation PHSuggestion

- (id)assets
{
  assets = self->_assets;
  if (assets)
  {
    v3 = assets;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PHSuggestion;
    v3 = [(PHAssetCollection *)&v5 assets];
  }

  return v3;
}

- (BOOL)containsUnverifiedPersons
{
  v2 = [(PHSuggestion *)self featuresProperties];
  v3 = [v2 objectForKeyedSubscript:@"containsUnverifiedPersons"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(PHSuggestion *)self description];
  v5 = [v3 stringWithString:v4];

  v6 = [(PHSuggestion *)self actionProperties];
  [v5 appendFormat:@"\nactionProperties: %@", v6];

  v7 = [(PHSuggestion *)self featuresProperties];
  [v5 appendFormat:@"\nfeaturesProperties: %@", v7];

  return v5;
}

- (id)description
{
  v21.receiver = self;
  v21.super_class = PHSuggestion;
  v3 = [(PHAssetCollection *)&v21 description];
  v4 = [(PHSuggestion *)self type]- 1;
  if (v4 > 0xD)
  {
    v5 = @"Unknown Type";
  }

  else
  {
    v5 = off_1E75A94A8[v4];
  }

  v6 = v5;
  v7 = PHSuggestionStringWithSubtype([(PHSuggestion *)self subtype]);
  v8 = [(PHSuggestion *)self state];
  if (v8 > 4)
  {
    v9 = @"Unknown State";
  }

  else
  {
    v9 = off_1E75A9518[v8];
  }

  v10 = [(PHSuggestion *)self notificationState];
  v11 = @"Unknown State";
  if (v10 <= 2)
  {
    v11 = off_1E75A9540[v10];
  }

  v12 = [(PHSuggestion *)self featuredState];
  v13 = @"Currently Featured";
  if (v12 != 1)
  {
    v13 = @"Unknown State";
  }

  if (!v12)
  {
    v13 = @"Not Featured";
  }

  v14 = v13;
  v15 = [(PHSuggestion *)self version];
  v16 = [(PHSuggestion *)self creationDate];
  v17 = [(PHSuggestion *)self relevantUntilDate];
  v18 = [(PHSuggestion *)self activationDate];
  v19 = [v3 stringByAppendingFormat:@", type: %@, subtype: %@, state: %@, notificationState: %@, featuredState: %@ version: %ld, created: %@, onlyRelevantUntil: %@, activationDate: %@", v6, v7, v9, v11, v14, v15, v16, v17, v18];

  return v19;
}

- (NSString)relatedCollectionUUID
{
  v4 = [(PHSuggestion *)self type];
  if (v4 < 9 || v4 <= 0xE && ((1 << v4) & 0x6800) != 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHSuggestion.m" lineNumber:775 description:{@"%s cannot be called on %hu type Suggestion", "-[PHSuggestion relatedCollectionUUID]", -[PHSuggestion type](self, "type")}];
  }

  relatedCollectionUUID = self->_relatedCollectionUUID;

  return relatedCollectionUUID;
}

- (NSDictionary)featuresProperties
{
  v21 = *MEMORY[0x1E69E9840];
  featuresProperties = self->_featuresProperties;
  if (!featuresProperties)
  {
    if (self->_featuresData)
    {
      v17 = MEMORY[0x1E696ACD0];
      v4 = MEMORY[0x1E695DFD8];
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
      featuresData = self->_featuresData;
      v18 = 0;
      v13 = [v17 unarchivedObjectOfClasses:v11 fromData:featuresData error:&v18];
      v14 = v18;
      v15 = self->_featuresProperties;
      self->_featuresProperties = v13;

      if (!self->_featuresProperties)
      {
        self->_featuresProperties = MEMORY[0x1E695E0F8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v14;
          _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving featuresData from Suggestion: %@", buf, 0xCu);
        }
      }

      featuresProperties = self->_featuresProperties;
    }

    else
    {
      featuresProperties = 0;
    }
  }

  return featuresProperties;
}

- (NSDictionary)actionProperties
{
  v19 = *MEMORY[0x1E69E9840];
  actionProperties = self->_actionProperties;
  if (!actionProperties)
  {
    if (self->_actionData)
    {
      v4 = MEMORY[0x1E696ACD0];
      v5 = MEMORY[0x1E695DFD8];
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
      actionData = self->_actionData;
      v16 = 0;
      v12 = [v4 unarchivedObjectOfClasses:v10 fromData:actionData error:&v16];
      v13 = v16;
      v14 = self->_actionProperties;
      self->_actionProperties = v12;

      if (!self->_actionProperties)
      {
        self->_actionProperties = MEMORY[0x1E695E0F8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v13;
          _os_log_error_impl(&dword_19C86F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving actionData from Suggestion: %@", buf, 0xCu);
        }
      }

      actionProperties = self->_actionProperties;
    }

    else
    {
      actionProperties = 0;
    }
  }

  return actionProperties;
}

- (id)predicateForAllMomentsFromRepresentativeAssets
{
  v3 = MEMORY[0x1E69BE828];
  v4 = [(PHObject *)self objectID];
  v5 = [(PHObject *)self photoLibrary];
  v6 = [v5 managedObjectContextForCurrentQueueQoS];
  v7 = [v3 predicateForAllMomentsFromRepresentativeAssetsInSuggestion:v4 managedObjectContext:v6];

  return v7;
}

- (id)predicateForAllAssets
{
  v3 = MEMORY[0x1E69BE828];
  v4 = [(PHObject *)self objectID];
  v5 = [(PHObject *)self photoLibrary];
  v6 = [v5 managedObjectContextForCurrentQueueQoS];
  v7 = [v3 predicateForAllAssetsInSuggestion:v4 managedObjectContext:v6];

  return v7;
}

- (PHSuggestion)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v49.receiver = self;
  v49.super_class = PHSuggestion;
  v9 = [(PHAssetCollection *)&v49 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"type"];
    v11 = [v10 integerValue] - 1;
    if (v11 > 0xDu)
    {
      v12 = 0;
    }

    else
    {
      v12 = word_19CB29B20[v11];
    }

    v9->_type = v12;

    v13 = [v8 objectForKeyedSubscript:@"subtype"];
    v9->_subtype = PHSuggestionSubtypeForCPLSuggestionSubtype([v13 integerValue]);

    v14 = [v8 objectForKeyedSubscript:@"state"];
    v15 = [v14 integerValue];
    if ((v15 - 1) >= 4)
    {
      LOWORD(v15) = 0;
    }

    v9->_state = v15;

    v16 = [v8 objectForKeyedSubscript:@"notificationState"];
    v17 = [v16 integerValue];
    if (v17 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17 == 1;
    }

    v9->_notificationState = v18;

    v19 = [v8 objectForKeyedSubscript:@"featuredState"];
    v9->_featuredState = [v19 integerValue] != 0;

    v20 = [v8 objectForKeyedSubscript:@"version"];
    v9->_version = [v20 integerValue];

    v21 = [v8 objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v21;

    v23 = [v8 objectForKeyedSubscript:@"startDate"];
    startDate = v9->super._startDate;
    v9->super._startDate = v23;

    v25 = [v8 objectForKeyedSubscript:@"endDate"];
    endDate = v9->super._endDate;
    v9->super._endDate = v25;

    v27 = [v8 objectForKeyedSubscript:@"activationDate"];
    activationDate = v9->_activationDate;
    v9->_activationDate = v27;

    v29 = [v8 objectForKeyedSubscript:@"relevantUntilDate"];
    relevantUntilDate = v9->_relevantUntilDate;
    v9->_relevantUntilDate = v29;

    v31 = [v8 objectForKeyedSubscript:@"expungeDate"];
    expungeDate = v9->_expungeDate;
    v9->_expungeDate = v31;

    v33 = [v8 objectForKeyedSubscript:@"actionData"];
    actionData = v9->_actionData;
    v9->_actionData = v33;

    v35 = [v8 objectForKeyedSubscript:@"featuresData"];
    featuresData = v9->_featuresData;
    v9->_featuresData = v35;

    v37 = [v8 objectForKeyedSubscript:@"subtitle"];
    subtitle = v9->_subtitle;
    v9->_subtitle = v37;

    v39 = [v8 objectForKeyedSubscript:@"suggestionContext"];
    context = v9->_context;
    v9->_context = v39;

    v41 = [v8 objectForKeyedSubscript:@"relatedCollectionUUID"];
    relatedCollectionUUID = v9->_relatedCollectionUUID;
    v9->_relatedCollectionUUID = v41;

    v43 = [v8 objectForKeyedSubscript:@"cachedCount"];
    v9->_approximateCount = [v43 integerValue];

    v44 = [v8 objectForKeyedSubscript:@"cachedPhotosCount"];
    v9->_approximatePhotosCount = [v44 integerValue];

    v45 = [v8 objectForKeyedSubscript:@"cachedVideosCount"];
    v9->_approximateVideosCount = [v45 integerValue];

    v9->super._assetCollectionType = 8;
    v46 = [v8 objectForKeyedSubscript:@"sharingComposition"];
    v9->_sharingComposition = [v46 unsignedIntegerValue];

    v47 = [v8 objectForKeyedSubscript:@"availableFeatures"];
    v9->_availableFeatures = [v47 unsignedIntegerValue];
  }

  return v9;
}

+ (id)suggestionInfosWithOptions:(id)a3 photoLibrary:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 photoAnalysisClient];
  v11 = 0;
  v7 = [v6 requestSuggestionInfosWithOptions:v5 error:&v11];

  v8 = v11;
  if (!v7)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "suggestionInfosWithOptions encountered error:%@", buf, 0xCu);
    }
  }

  return v7;
}

+ (id)availableSuggestionTypeInfosWithOptions:(id)a3 photoLibrary:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 photoAnalysisClient];
  v11 = 0;
  v7 = [v6 requestAvailableSuggestionTypeInfosWithOptions:v5 error:&v11];

  v8 = v11;
  if (!v7)
  {
    v9 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_ERROR, "suggesterInfosWithOptions encountered error:%@", buf, 0xCu);
    }
  }

  return v7;
}

+ (id)transientSuggestionWithInfo:(id)a3 photoLibrary:(id)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];
  [v8 setObject:v10 forKeyedSubscript:@"uuid"];

  v11 = [v5 objectForKeyedSubscript:@"type"];
  if (v11)
  {
    [v8 setObject:v11 forKeyedSubscript:@"type"];
  }

  v12 = [v5 objectForKeyedSubscript:@"subtype"];
  if (v12)
  {
    [v8 setObject:v12 forKeyedSubscript:@"subtype"];
  }

  v13 = [v5 objectForKeyedSubscript:@"title"];
  if (v13)
  {
    [v8 setObject:v13 forKeyedSubscript:@"title"];
  }

  v14 = [v5 objectForKeyedSubscript:@"subtitle"];
  if (v14)
  {
    [v8 setObject:v14 forKeyedSubscript:@"subtitle"];
  }

  v34 = v11;
  v15 = [v5 objectForKeyedSubscript:@"context"];
  v30 = v15;
  if (v15)
  {
    [v8 setObject:v15 forKeyedSubscript:@"suggestionContext"];
    v28 = [v5 objectForKeyedSubscript:@"relatedCollectionUUID"];
    [v8 setObject:? forKeyedSubscript:?];
  }

  else
  {
    v28 = [v5 objectForKeyedSubscript:@"relatedCollectionUUID"];
  }

  v16 = [v5 objectForKeyedSubscript:{@"creationDate", v28}];
  if (v16)
  {
    [v8 setObject:v16 forKeyedSubscript:@"creationDate"];
  }

  v17 = [v5 objectForKeyedSubscript:@"universalStartDate"];
  if (v17)
  {
    [v8 setObject:v17 forKeyedSubscript:@"startDate"];
  }

  v31 = v14;
  v32 = v13;
  v33 = v12;
  v18 = [v5 objectForKeyedSubscript:@"universalEndDate"];
  if (v18)
  {
    [v8 setObject:v18 forKeyedSubscript:@"endDate"];
  }

  v19 = [[PHSuggestion alloc] initWithFetchDictionary:v8 propertyHint:-1 photoLibrary:v7];
  v20 = [PHFetchOptions fetchOptionsWithPhotoLibrary:v7 orObject:0];

  v21 = [v5 objectForKeyedSubscript:@"keyAssetUUID"];
  v22 = [(PHObject *)PHAsset localIdentifierWithUUID:v21];

  v35[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v24 = [PHAsset fetchAssetsWithLocalIdentifiers:v23 options:v20];
  v25 = [v24 fetchedObjects];
  assets = v19->_assets;
  v19->_assets = v25;

  return v19;
}

+ (id)fetchRecentInterestSuggestionsForAsset:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = MEMORY[0x1E696AE18];
  v8 = [a1 allFeaturedStateEnabledSuggestionTypesForWidget];
  v9 = [v7 predicateWithFormat:@"%K IN (%@)", @"type", v8];
  [v6 setPredicate:v9];

  v14[0] = v4;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [PHQuery queryForAssetCollectionsContainingAssets:v10 withType:8 options:v6];

  v12 = [v11 executeQuery];

  return v12;
}

+ (id)fetchWallpaperSuggestionsWithFeaturedState:(unsigned __int16)a3 withOptions:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PHSuggestion_fetchWallpaperSuggestionsWithFeaturedState_withOptions___block_invoke;
  v6[3] = &__block_descriptor_42_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v6[4] = a1;
  v7 = a3;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v6];

  return v4;
}

id __71__PHSuggestion_fetchWallpaperSuggestionsWithFeaturedState_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allFeaturedStateEnabledSuggestionTypesForWallpaper];
  v6 = [PHQuery queryForSuggestionsWithFeaturedState:*(a1 + 40) types:v5 options:v4];

  v7 = [v6 executeQuery];

  return v7;
}

+ (id)fetchWidgetSuggestionsWithFeaturedState:(unsigned __int16)a3 withOptions:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PHSuggestion_fetchWidgetSuggestionsWithFeaturedState_withOptions___block_invoke;
  v6[3] = &__block_descriptor_42_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v6[4] = a1;
  v7 = a3;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v6];

  return v4;
}

id __68__PHSuggestion_fetchWidgetSuggestionsWithFeaturedState_withOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allFeaturedStateEnabledSuggestionTypesForWidget];
  v6 = [PHQuery queryForSuggestionsWithFeaturedState:*(a1 + 40) types:v5 options:v4];

  v7 = [v6 executeQuery];

  return v7;
}

+ (id)fetchAllFeaturedStateEnabledSuggestionsWithOptions:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PHSuggestion_fetchAllFeaturedStateEnabledSuggestionsWithOptions___block_invoke;
  v5[3] = &__block_descriptor_40_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v5[4] = a1;
  v3 = [PHObject authorizationAwareFetchResultWithOptions:a3 fetchBlock:v5];

  return v3;
}

id __67__PHSuggestion_fetchAllFeaturedStateEnabledSuggestionsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 allFeaturedStateEnabledSuggestionTypes];
  v5 = [PHQuery queryForSuggestionsWithTypes:v4 options:v3];

  v6 = [v5 executeQuery];

  return v6;
}

+ (id)fetchSuggestionsWithState:(unsigned __int16)a3 ofType:(unsigned __int16)a4 subtype:(unsigned __int16)a5 withOptions:(id)a6
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PHSuggestion_fetchSuggestionsWithState_ofType_subtype_withOptions___block_invoke;
  v8[3] = &__block_descriptor_38_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v6 = [PHObject authorizationAwareFetchResultWithOptions:a6 fetchBlock:v8];

  return v6;
}

id __69__PHSuggestion_fetchSuggestionsWithState_ofType_subtype_withOptions___block_invoke(unsigned __int16 *a1, uint64_t a2)
{
  v2 = [PHQuery queryForSuggestionsWithState:a1[16] type:a1[17] subtype:a1[18] options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchSuggestionsWithState:(unsigned __int16)a3 ofType:(unsigned __int16)a4 withOptions:(id)a5
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PHSuggestion_fetchSuggestionsWithState_ofType_withOptions___block_invoke;
  v7[3] = &__block_descriptor_36_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v8 = a3;
  v9 = a4;
  v5 = [PHObject authorizationAwareFetchResultWithOptions:a5 fetchBlock:v7];

  return v5;
}

id __61__PHSuggestion_fetchSuggestionsWithState_ofType_withOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForSuggestionsWithState:*(a1 + 32) type:*(a1 + 34) subtype:0 options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchSuggestionsWithState:(unsigned __int16)a3 withOptions:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PHSuggestion_fetchSuggestionsWithState_withOptions___block_invoke;
  v6[3] = &__block_descriptor_34_e39___PHFetchResult_16__0__PHFetchOptions_8l;
  v7 = a3;
  v4 = [PHObject authorizationAwareFetchResultWithOptions:a4 fetchBlock:v6];

  return v4;
}

id __54__PHSuggestion_fetchSuggestionsWithState_withOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForSuggestionsWithState:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

id __44__PHSuggestion_fetchSuggestionsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForSuggestionsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)allFeaturedStateEnabledSuggestionTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [a1 allFeaturedStateEnabledSuggestionTypesForWidget];
  [v3 addObjectsFromArray:v4];

  v5 = [a1 allFeaturedStateEnabledSuggestionTypesForWallpaper];
  [v3 addObjectsFromArray:v5];

  [v3 addObject:&unk_1F102D7C0];

  return v3;
}

+ (id)predicateForAllNonMeAmbientSuggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 8];
  v11[0] = v4;
  v5 = MEMORY[0x1E696AE18];
  v6 = [a1 allNonMeAmbientSuggestionSubtypes];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"subtype", v6];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForAllAmbientSuggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 8];
  v11[0] = v4;
  v5 = MEMORY[0x1E696AE18];
  v6 = [a1 allAmbientSuggestionSubtypes];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"subtype", v6];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForAllShuffleWallpaperAlbumSuggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 6];
  v11[0] = v4;
  v5 = MEMORY[0x1E696AE18];
  v6 = [a1 allShuffleWallpaperAlbumSuggestionSubtypes];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"subtype", v6];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForAllShuffleWallpaperSuggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 6];
  v11[0] = v4;
  v5 = MEMORY[0x1E696AE18];
  v6 = [a1 allShuffleWallpaperSuggestionSubtypes];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"subtype", v6];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForAllTopWallpaperSuggestions
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"type", 6];
  v11[0] = v4;
  v5 = MEMORY[0x1E696AE18];
  v6 = [a1 allTopWallpaperSuggestionSubtypes];
  v7 = [v5 predicateWithFormat:@"%K IN %@", @"subtype", v6];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];

  return v9;
}

+ (BOOL)hasPersonLocalIdentifierInContextForSuggestionSubype:(unsigned __int16)a3
{
  result = 1;
  if ((a3 - 602) > 0x33 || ((1 << (a3 - 90)) & 0xC000000000003) == 0)
  {
    return (a3 - 803) < 3;
  }

  return result;
}

+ (id)predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [a1 allFeaturedStateEnabledSuggestionTypesForWallpaper];
  v4 = [v2 predicateWithFormat:@"%K IN %@", @"type", v3];

  return v4;
}

+ (id)predicateForAllFeaturedStateEnabledSuggestionTypesForWidget
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [a1 allFeaturedStateEnabledSuggestionTypesForWidget];
  v4 = [v2 predicateWithFormat:@"%K IN %@", @"type", v3];

  return v4;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PHSuggestion_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_40319 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_40319, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_40320 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __52__PHSuggestion_transformValueExpression_forKeyPath___block_invoke()
{
  v4[21] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"uuid";
  v4[1] = @"type";
  v4[2] = @"subtype";
  v4[3] = @"state";
  v4[4] = @"notificationState";
  v4[5] = @"featuredState";
  v4[6] = @"version";
  v4[7] = @"creationDate";
  v4[8] = @"startDate";
  v4[9] = @"endDate";
  v4[10] = @"activationDate";
  v4[11] = @"relevantUntilDate";
  v4[12] = @"expungeDate";
  v4[13] = @"title";
  v4[14] = @"subtitle";
  v4[15] = @"context";
  v4[16] = @"estimatedAssetCount";
  v4[17] = @"estimatedPhotosCount";
  v4[18] = @"estimatedVideosCount";
  v4[19] = @"sharingComposition";
  v4[20] = @"availableFeatures";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:21];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_40320;
  transformValueExpression_forKeyPath___passThroughSet_40320 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_40331;

  return v2;
}

void __28__PHSuggestion_entityKeyMap__block_invoke()
{
  v47[21] = *MEMORY[0x1E69E9840];
  v19 = [PHEntityKeyMap alloc];
  v45 = @"uuid";
  v46[0] = @"uuid";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v47[0] = v24;
  v46[1] = @"type";
  v44 = @"type";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v47[1] = v23;
  v46[2] = @"subtype";
  v43 = @"subtype";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v47[2] = v22;
  v46[3] = @"state";
  v42 = @"state";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v47[3] = v21;
  v46[4] = @"notificationState";
  v41 = @"notificationState";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v47[4] = v20;
  v46[5] = @"featuredState";
  v40 = @"featuredState";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v47[5] = v18;
  v46[6] = @"version";
  v39 = @"version";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v47[6] = v17;
  v46[7] = @"creationDate";
  v38 = @"creationDate";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v47[7] = v16;
  v46[8] = @"startDate";
  v37 = @"startDate";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v47[8] = v15;
  v46[9] = @"endDate";
  v36 = @"endDate";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v47[9] = v14;
  v46[10] = @"activationDate";
  v35 = @"activationDate";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v47[10] = v13;
  v46[11] = @"relevantUntilDate";
  v34 = @"relevantUntilDate";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v47[11] = v12;
  v46[12] = @"expungeDate";
  v33 = @"expungeDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v47[12] = v0;
  v46[13] = @"title";
  v32[0] = @"title";
  v32[1] = @"localizedTitle";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v47[13] = v1;
  v46[14] = @"subtitle";
  v31[0] = @"subtitle";
  v31[1] = @"localizedSubtitle";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v47[14] = v2;
  v46[15] = @"suggestionContext";
  v30 = @"context";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v47[15] = v3;
  v46[16] = @"cachedCount";
  v29 = @"estimatedAssetCount";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v47[16] = v4;
  v46[17] = @"cachedPhotosCount";
  v28 = @"estimatedPhotosCount";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v47[17] = v5;
  v46[18] = @"cachedVideosCount";
  v27 = @"estimatedVideosCount";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v47[18] = v6;
  v46[19] = @"sharingComposition";
  v26 = @"sharingComposition";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v47[19] = v7;
  v46[20] = @"availableFeatures";
  v25 = @"availableFeatures";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v47[20] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:21];
  v10 = [(PHEntityKeyMap *)v19 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_40331;
  entityKeyMap_pl_once_object_15_40331 = v10;
}

+ (id)fetchPredicateForSharingFilter:(unsigned __int16)a3
{
  if (!a3)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"sharingComposition", a3, v3];

    return v5;
  }

  if (a3 == 1)
  {
    *&a3 = 1;
    goto LABEL_4;
  }

  v5 = 0;

  return v5;
}

+ (id)localIdentifierWithUUID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", v5, v6];

  return v7;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PHSuggestion_propertiesToFetchWithHint___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (propertiesToFetchWithHint__onceToken_40351 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_40351, block);
  }

  v3 = propertiesToFetchWithHint__array_40352;

  return v3;
}

void __42__PHSuggestion_propertiesToFetchWithHint___block_invoke()
{
  v4[25] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"type";
  v4[3] = @"subtype";
  v4[4] = @"state";
  v4[5] = @"notificationState";
  v4[6] = @"featuredState";
  v4[7] = @"version";
  v4[8] = @"creationDate";
  v4[9] = @"startDate";
  v4[10] = @"endDate";
  v4[11] = @"activationDate";
  v4[12] = @"relevantUntilDate";
  v4[13] = @"expungeDate";
  v4[14] = @"title";
  v4[15] = @"subtitle";
  v4[16] = @"suggestionContext";
  v4[17] = @"relatedCollectionUUID";
  v4[18] = @"actionData";
  v4[19] = @"featuresData";
  v4[20] = @"cachedCount";
  v4[21] = @"cachedPhotosCount";
  v4[22] = @"cachedVideosCount";
  v4[23] = @"sharingComposition";
  v4[24] = @"availableFeatures";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:25];
  v3 = propertiesToFetchWithHint__array_40352;
  propertiesToFetchWithHint__array_40352 = v2;
}

@end