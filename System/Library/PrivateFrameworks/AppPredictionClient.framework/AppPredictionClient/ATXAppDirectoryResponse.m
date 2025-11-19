@interface ATXAppDirectoryResponse
+ (BOOL)_canUseSuggestedApp:(id)a3 includeRemoteApps:(BOOL)a4;
- (ATXAppDirectoryResponse)initWithSuggestionLayout:(id)a3 includeRemoteApps:(BOOL)a4 recentApps:(id)a5 hiddenApps:(id)a6 otherAppsOnScreen:(id)a7 numAppsToPredict:(unint64_t)a8 error:(id)a9;
- (ATXAppDirectoryResponse)initWithoutDedupingForRecents:(id)a3 predictedApps:(id)a4 hiddenApps:(id)a5 error:(id)a6;
- (NSArray)recentAppsVisible;
- (id)_minuteZeroResponse;
- (id)proactiveSuggestionForIdentity:(id)a3;
- (id)uuidForBundleId:(id)a3;
- (id)uuidForIdentities:(id)a3;
- (id)uuidForIdentity:(id)a3;
- (id)uuidsForBundleIds:(id)a3;
@end

@implementation ATXAppDirectoryResponse

- (NSArray)recentAppsVisible
{
  v2 = [(ATXAppDirectoryResponse *)self recentApps];
  v3 = [v2 count];
  if (v3 >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 subarrayWithRange:{0, v4}];

  return v5;
}

- (id)_minuteZeroResponse
{
  v2 = [[ATXAssetsABHelper alloc] initWithAssetsForResource:@"_ATXAppPredictorDayZero" ofType:@"plist" specifiedABGroup:0];
  v3 = [(ATXAssetsABHelper *)v2 abGroupContents];
  v4 = [ATXClient dayZeroBundleIdsAndScoresFromDayZeroParameters:v3];
  v5 = [v4 allKeys];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ATXAppDirectoryResponse__minuteZeroResponse__block_invoke;
  v9[3] = &unk_1E80C17F0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 sortedArrayUsingComparator:v9];

  return v7;
}

uint64_t __46__ATXAppDirectoryResponse__minuteZeroResponse__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v8 compare:v7];
  return v9;
}

+ (BOOL)_canUseSuggestedApp:(id)a3 includeRemoteApps:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!ATXIsRemoteAppBundleId() || v4)
  {
    v6 = ATXBundleIdForRemoteBundleId();
    v7 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v4 = [v7 containsObject:v6] ^ 1;
  }

  return v4;
}

- (ATXAppDirectoryResponse)initWithSuggestionLayout:(id)a3 includeRemoteApps:(BOOL)a4 recentApps:(id)a5 hiddenApps:(id)a6 otherAppsOnScreen:(id)a7 numAppsToPredict:(unint64_t)a8 error:(id)a9
{
  v66 = a4;
  v14 = a9;
  v75 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v71.receiver = self;
  v71.super_class = ATXAppDirectoryResponse;
  v20 = [(ATXAppDirectoryResponse *)&v71 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_30;
  }

  objc_storeStrong(&v20->_suggestionLayout, a3);
  v62 = [v16 _pas_mappedArrayWithTransform:&__block_literal_global_13];
  v22 = [v62 appIdentitiesFromBundleIDs];
  recentAppIdentities = v21->_recentAppIdentities;
  v21->_recentAppIdentities = v22;

  v24 = [ATXAppDirectoryCategory alloc];
  v25 = [v17 appIdentitiesFromBundleIDs];
  v26 = [(ATXAppDirectoryCategory *)v24 initWithCategoryID:7 appIdentities:v25];
  hiddenAppsCategory = v21->_hiddenAppsCategory;
  v21->_hiddenAppsCategory = v26;

  v65 = objc_opt_new();
  v28 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  if (v28)
  {
    v29 = v28;
    v30 = [v28 BOOLValue];

    if (!v30)
    {
      predictedAppIdentities = v21->_predictedAppIdentities;
      v21->_predictedAppIdentities = MEMORY[0x1E695E0F0];
      goto LABEL_23;
    }
  }

  v57 = v19;
  v58 = v18;
  v59 = v17;
  v60 = v16;
  v64 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v61 = v15;
  v31 = [v15 allSuggestionsInLayout];
  v32 = [v31 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = *v68;
  do
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v68 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v67 + 1) + 8 * i);
      v37 = [v36 executableSpecification];
      if ([v37 executableType] == 1)
      {
        v38 = [v36 executableSpecification];
        v39 = [v38 executableObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v41 = [v36 executableSpecification];
          v42 = [v41 executableObject];

          if ([objc_opt_class() _canUseSuggestedApp:v42 includeRemoteApps:v66])
          {
            [(NSArray *)v64 addObject:v42];
            [v65 setObject:v36 forKey:v42];
          }

          goto LABEL_16;
        }
      }

      else
      {
      }

      v42 = __atxlog_handle_app_library();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v73 = v36;
        _os_log_fault_impl(&dword_1BF549000, v42, OS_LOG_TYPE_FAULT, "ATXAppDirectoryResponse received suggestion that was not of type app: %@", buf, 0xCu);
      }

LABEL_16:
    }

    v33 = [v31 countByEnumeratingWithState:&v67 objects:v74 count:16];
  }

  while (v33);
LABEL_18:

  objc_autoreleasePoolPop(context);
  v43 = [(ATXAppDirectoryResponse *)v21 recentAppsVisible];
  predictedAppIdentities = v64;
  [(NSArray *)v64 removeObjectsInArray:v43];

  v18 = v58;
  [(NSArray *)v64 removeObjectsInArray:v58];
  v45 = [(NSArray *)v64 count];
  if (v45 >= a8)
  {
    v46 = a8;
  }

  else
  {
    v46 = v45;
  }

  v47 = [(NSArray *)v64 subarrayWithRange:0, v46];
  v48 = [v47 appIdentitiesFromBundleIDs];
  v49 = v21->_predictedAppIdentities;
  v21->_predictedAppIdentities = v48;

  v16 = v60;
  v15 = v61;
  v17 = v59;
  v14 = a9;
  v19 = v57;
LABEL_23:

  v50 = [v65 copy];
  bundleIdToSuggestionMapping = v21->_bundleIdToSuggestionMapping;
  v21->_bundleIdToSuggestionMapping = v50;

  if (v19)
  {
    objc_storeStrong(&v21->_error, v14);
  }

  p_error = &v21->_error;
  if (v21->_error)
  {
    v53 = __atxlog_handle_app_library();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [ATXAppDirectoryResponse initWithSuggestionLayout:v53 includeRemoteApps:? recentApps:? hiddenApps:? otherAppsOnScreen:? numAppsToPredict:? error:?];
    }

    v54 = *p_error;
    *p_error = 0;
  }

LABEL_30:
  return v21;
}

- (ATXAppDirectoryResponse)initWithoutDedupingForRecents:(id)a3 predictedApps:(id)a4 hiddenApps:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXAppDirectoryResponse;
  v14 = [(ATXAppDirectoryResponse *)&v24 init];
  if (v14)
  {
    v15 = [v10 appIdentitiesFromBundleIDs];
    recentAppIdentities = v14->_recentAppIdentities;
    v14->_recentAppIdentities = v15;

    v17 = [ATXAppDirectoryCategory alloc];
    v18 = [v12 appIdentitiesFromBundleIDs];
    v19 = [(ATXAppDirectoryCategory *)v17 initWithCategoryID:7 appIdentities:v18];
    hiddenAppsCategory = v14->_hiddenAppsCategory;
    v14->_hiddenAppsCategory = v19;

    v21 = [v11 appIdentitiesFromBundleIDs];
    predictedAppIdentities = v14->_predictedAppIdentities;
    v14->_predictedAppIdentities = v21;

    objc_storeStrong(&v14->_error, a6);
  }

  return v14;
}

- (id)uuidsForBundleIds:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ATXAppDirectoryResponse_uuidsForBundleIds___block_invoke;
  v5[3] = &unk_1E80C1838;
  v5[4] = self;
  v3 = [a3 _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __45__ATXAppDirectoryResponse_uuidsForBundleIds___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:a2];
  v3 = [v2 uuid];

  return v3;
}

- (id)uuidForBundleId:(id)a3
{
  v3 = [(NSDictionary *)self->_bundleIdToSuggestionMapping objectForKey:a3];
  v4 = [v3 uuid];

  return v4;
}

- (id)proactiveSuggestionForIdentity:(id)a3
{
  bundleIdToSuggestionMapping = self->_bundleIdToSuggestionMapping;
  v4 = [a3 bundleIDWithRelevantPrefix];
  v5 = [(NSDictionary *)bundleIdToSuggestionMapping objectForKey:v4];

  return v5;
}

- (id)uuidForIdentities:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ATXAppDirectoryResponse_uuidForIdentities___block_invoke;
  v5[3] = &unk_1E80C1860;
  v5[4] = self;
  v3 = [a3 _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __45__ATXAppDirectoryResponse_uuidForIdentities___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [a2 bundleIDWithRelevantPrefix];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 uuid];

  return v5;
}

- (id)uuidForIdentity:(id)a3
{
  bundleIdToSuggestionMapping = self->_bundleIdToSuggestionMapping;
  v4 = [a3 bundleIDWithRelevantPrefix];
  v5 = [(NSDictionary *)bundleIdToSuggestionMapping objectForKey:v4];
  v6 = [v5 uuid];

  return v6;
}

- (void)initWithSuggestionLayout:(uint64_t *)a1 includeRemoteApps:(NSObject *)a2 recentApps:hiddenApps:otherAppsOnScreen:numAppsToPredict:error:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXAppDirectoryResponse: Attempt to create a response with error %@. Scrubbing the error from the response to allow display of the error-free parts of the response", &v3, 0xCu);
}

@end