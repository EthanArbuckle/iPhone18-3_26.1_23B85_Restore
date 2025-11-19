@interface PHSearchFeedbackDiagnostics
+ (id)_diagnosticsFilename;
+ (id)collectDiagnosticsForLibrary:(id)a3 resultJSON:(id)a4 onScreenAssets:(id)a5 toPath:(id)a6;
+ (id)collectDiagnosticsForLibrary:(id)a3 toPath:(id)a4;
+ (id)jsonForSearchQueryResult:(id)a3;
+ (id)saveDiagnostics:(id)a3 toPath:(id)a4;
+ (id)saveSearchUIDiagnosticDetails:(id)a3 photoLibrary:(id)a4 queue:(id)a5;
+ (void)assertIfNotCorrectConfiguration;
+ (void)purgeSearchUIDiagnosticDetailsForPhotoLibrary:(id)a3 queue:(id)a4;
- (BOOL)_writeToPath:(id)a3;
- (PHSearchFeedbackDiagnostics)init;
- (PHSearchFeedbackDiagnostics)initWithPhotoLibrary:(id)a3;
- (PHSearchFeedbackDiagnostics)initWithPhotoLibrary:(id)a3 resultJSON:(id)a4 onScreenAssets:(id)a5;
- (PHSearchFeedbackDiagnostics)initWithPhotoLibrary:(id)a3 resultJSON:(id)a4 onScreenAssets:(id)a5 startTime:(double)a6;
- (id)_assetThumbnailPathsForAssets:(id)a3 photoLibrary:(id)a4;
- (id)_deviceInfoJSON;
- (id)_fetchAssets:(id)a3 photoLibrary:(id)a4;
- (id)_indexSummaryJSONForPhotoLibrary:(id)a3;
- (id)_indexingContextForPhotoLibrary:(id)a3;
- (id)_jsonDateFormatter;
- (id)_resultAttributesJSONForAssets:(id)a3 photoLibrary:(id)a4;
- (id)_spotlightClientStateStatusForPhotoLibrary:(id)a3;
- (void)_collectPhotosAppOnScreenSearchDetailsWithHandler:(id)a3;
- (void)_writeJSONObject:(id)a3 toPath:(id)a4;
@end

@implementation PHSearchFeedbackDiagnostics

- (void)_collectPhotosAppOnScreenSearchDetailsWithHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHSearchFeedbackDiagnostics.m" lineNumber:547 description:{@"Invalid parameter not satisfying: %@", @"replyHandler"}];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__53748;
  v35 = __Block_byref_object_dispose__53749;
  v36 = MEMORY[0x1E695E0F8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__53748;
  v6 = MEMORY[0x1E695E0F0];
  v29 = __Block_byref_object_dispose__53749;
  v30 = MEMORY[0x1E695E0F0];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = MEMORY[0x1E69BE720];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__PHSearchFeedbackDiagnostics__collectPhotosAppOnScreenSearchDetailsWithHandler___block_invoke;
  v23[3] = &unk_1E75AB320;
  v9 = v7;
  v24 = v9;
  v10 = [v8 diagnosticsAgentWithErrorHandler:v23];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__PHSearchFeedbackDiagnostics__collectPhotosAppOnScreenSearchDetailsWithHandler___block_invoke_229;
  v19[3] = &unk_1E75AB348;
  v21 = &v31;
  v22 = &v25;
  v11 = v9;
  v20 = v11;
  v12 = MEMORY[0x1E695E0F8];
  [v10 postNotificationWithName:@"PHSearchFeedbackQueryDetailsRequestNotification" userInfo:MEMORY[0x1E695E0F8] resultHandler:v19];
  v13 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v11, v13))
  {
    v14 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Error. Timed out waiting for Photos to return active search query. Unable to get details for active search query.", buf, 2u);
    }
  }

  if (v32[5])
  {
    v15 = v32[5];
  }

  else
  {
    v15 = v12;
  }

  if (v26[5])
  {
    v16 = v26[5];
  }

  else
  {
    v16 = v6;
  }

  v5[2](v5, v15, v16);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __81__PHSearchFeedbackDiagnostics__collectPhotosAppOnScreenSearchDetailsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSearchBackendFeedbackDiagnosticsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_ERROR, "Diagnostics agent error: %@", &v5, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __81__PHSearchFeedbackDiagnostics__collectPhotosAppOnScreenSearchDetailsWithHandler___block_invoke_229(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSearchBackendFeedbackDiagnosticsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEFAULT, "Got response from Photos app: %@", &v13, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"PHSearchFeedbackQueryResult"];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Missing query result details from Photos app response.", &v13, 2u);
    }
  }

  v9 = [v3 objectForKeyedSubscript:@"PHSearchFeedbackOnScreenAssets"];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v12 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Missing on screen assets from Photos app response.", &v13, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_writeJSONObject:(id)a3 toPath:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:3 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    v12 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to encode json data for object: %@, error: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v13 = v8;
  v10 = [v7 writeToFile:v6 options:1 error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0)
  {
    v12 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_ERROR, "Failed to write json data to path: %@, error: %@", buf, 0x16u);
    }

    v9 = v11;
LABEL_8:

    v11 = v9;
  }
}

- (id)_spotlightClientStateStatusForPhotoLibrary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 wellKnownPhotoLibraryIdentifier];
  if (v4 != 3)
  {
    v6 = v4;
    v7 = [v3 photoLibrary];
    v8 = [v7 globalValues];
    v9 = [v8 searchIndexSpotlightClientStateData];

    v10 = [v9 result];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__53748;
    v32 = __Block_byref_object_dispose__53749;
    v33 = 0;
    v11 = [MEMORY[0x1E69BE810] domainIdentifierForPhotoLibraryIdentifier:v6];
    if ([MEMORY[0x1E69BE810] spotlightPrivateIndexEnabled] && objc_msgSend(MEMORY[0x1E69BE810], "shouldUseSpotlightPrivateIndexForLibraryIdentifier:", v6))
    {
      v12 = objc_alloc(MEMORY[0x1E6964E38]);
      v13 = [v3 pathManager];
      v14 = [v13 spotlightSearchIndexPath];
      v15 = [v12 initWithName:v11 protectionClass:0 path:v14];

      if (v15)
      {
LABEL_6:
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        v17 = [MEMORY[0x1E69BE810] photosBundleIdentifier];
        v22 = MEMORY[0x1E69E9820];
        v23 = 3221225472;
        v24 = __74__PHSearchFeedbackDiagnostics__spotlightClientStateStatusForPhotoLibrary___block_invoke;
        v25 = &unk_1E75AB2F8;
        v27 = &v28;
        v18 = v16;
        v26 = v18;
        [v15 fetchLastClientStateWithProtectionClass:0 forBundleID:v17 clientStateName:v11 options:32 completionHandler:&v22];

        v19 = dispatch_time(0, 10000000000);
        if (dispatch_group_wait(v18, v19))
        {
          v20 = PLSearchBackendFeedbackDiagnosticsGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v15;
            _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_ERROR, "Error. Timed out waiting for Spotlight to return client state. Unable to determine if Spotlight client state is valid. Spotlight index: %@\n", buf, 0xCu);
          }

          v5 = @"Undefined";
        }

        else if ([v10 isEqualToData:{v29[5], v22, v23, v24, v25}])
        {
          v5 = @"In Sync";
        }

        else if ([v29[5] length])
        {
          v5 = @"Out of Sync";
        }

        else
        {
          v5 = @"Missing";
        }

LABEL_20:
        _Block_object_dispose(&v28, 8);

        goto LABEL_21;
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E6964E78]) initWithName:v11];
      if (v15)
      {
        goto LABEL_6;
      }
    }

    v18 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_ERROR, "Failed to open Spotlight index.", buf, 2u);
    }

    v5 = @"Unknown";
    goto LABEL_20;
  }

  v5 = @"N/A";
LABEL_21:

  return v5;
}

void __74__PHSearchFeedbackDiagnostics__spotlightClientStateStatusForPhotoLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (v7)
  {
    v8 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Error fetching client state. Error: %@\n", &v9, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)_indexingContextForPhotoLibrary:(id)a3
{
  v4 = MEMORY[0x1E69BE788];
  v5 = a3;
  v6 = [v4 locale];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = objc_alloc_init(MEMORY[0x1E69BE798]);
  v9 = objc_alloc_init(MEMORY[0x1E69BE7A0]);
  v10 = objc_alloc_init(MEMORY[0x1E69BE790]);
  v11 = [v5 photoLibrary];

  v12 = [v11 pathManager];
  v20 = 0;
  v13 = [v12 internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:0 error:&v20];
  v14 = v20;

  v19 = v14;
  v15 = [objc_alloc(MEMORY[0x1E6999148]) initExistingDB:v13 error:&v19];
  v16 = v19;

  v17 = [objc_alloc(MEMORY[0x1E69BE7A8]) initWithSceneTaxonomyProvider:v9 csuTaxonomyObjectStore:v15 locale:v6 calendar:v7 indexDateFormatter:v8 countrySynonymProvider:v10 delegate:self];

  return v17;
}

- (id)_jsonDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZZZ"];
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v3];

  return v2;
}

- (id)_deviceInfoJSON
{
  v14[4] = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v13[0] = @"buildVersion";
  v4 = v2;
  if (!v2)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"currentLocale";
  v5 = [v3 localeIdentifier];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v6;
  v13[2] = @"currentLanguageCode";
  v7 = [v3 languageCode];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v8;
  v13[3] = @"currentRegionCode";
  v9 = [v3 regionCode];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v2)
  {
  }

  return v11;
}

- (id)_fetchAssets:(id)a3 photoLibrary:(id)a4
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 librarySpecificFetchOptions];
  v11[0] = @"PHAssetPropertySetIdentifier";
  v11[1] = @"PHAssetPropertySetCore";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v6 setFetchPropertySets:v7];

  [v6 setIncludeGuestAssets:1];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v5];

  [v6 setInternalPredicate:v8];
  v9 = [PHAsset fetchAssetsWithOptions:v6];

  return v9;
}

- (id)_assetThumbnailPathsForAssets:(id)a3 photoLibrary:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [PHAssetResource assetResourcesForAsset:v10 includeDerivatives:1];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v27;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v27 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v26 + 1) + 8 * j);
                if ([v17 type] == 102)
                {
                  v18 = [v10 uuid];
                  if (v18)
                  {
                    v19 = [v17 privateFileURL];
                    v20 = [v19 path];
                    if (v20)
                    {
                      [v25 setObject:v20 forKeyedSubscript:v18];
                    }

                    else
                    {
                      v21 = [MEMORY[0x1E695DFB0] null];
                      [v25 setObject:v21 forKeyedSubscript:v18];
                    }
                  }

                  else
                  {
                    v19 = PLSearchBackendFeedbackDiagnosticsGetLog();
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v35 = 0;
                      v36 = 2112;
                      v37 = v10;
                      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "nil file path for asset uuid: %{public}@, asset: %@", buf, 0x16u);
                    }
                  }

                  goto LABEL_24;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v26 objects:v38 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v7);
    }

    v22 = [v25 copy];
    v4 = v24;
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  return v22;
}

- (id)_indexSummaryJSONForPhotoLibrary:(id)a3
{
  v53[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(PHSearchFeedbackDiagnostics *)self _deviceInfoJSON];
  [v6 setObject:v7 forKeyedSubscript:@"deviceInfo"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isReadyForAnalysis")}];
  [v6 setObject:v8 forKeyedSubscript:@"isReadyForAnalysis"];

  v51[1] = 0;
  v50 = objc_alloc_init(PHFeatureAvailabilityReadOptions);
  v9 = [v5 featureAvailabilityForFeature:3 readOptions:? error:?];
  v10 = 0;
  v11 = v10;
  if (!v9)
  {
    goto LABEL_13;
  }

  v47 = v10;
  v52[0] = @"available";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isAvailable")}];
  v53[0] = v46;
  v52[1] = @"fractionComplete";
  v12 = MEMORY[0x1E696AD98];
  [v9 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
  v45 = [v12 numberWithDouble:?];
  v53[1] = v45;
  v52[2] = @"dateComputed";
  v13 = [v9 dateComputed];
  v49 = self;
  if (v13)
  {
    v14 = [(PHSearchFeedbackDiagnostics *)self _jsonDateFormatter];
    v44 = [v9 dateComputed];
    v15 = [v14 stringFromDate:?];
  }

  else
  {
    v15 = [MEMORY[0x1E695DFB0] null];
    v14 = v15;
  }

  v48 = v5;
  v53[2] = v15;
  v52[3] = @"dateSearchIndexSnapshotLastUpdated";
  v16 = [v9 dateSearchIndexSnapshotLastUpdated];
  if (v16)
  {
    v3 = [(PHSearchFeedbackDiagnostics *)v49 _jsonDateFormatter];
    v5 = [v9 dateSearchIndexSnapshotLastUpdated];
    [v3 stringFromDate:v5];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v17 = ;
  v53[3] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];
  if (v16)
  {

    v17 = v3;
  }

  if (v13)
  {
  }

  v5 = v48;
  self = v49;
  v11 = v47;
  if (!v18)
  {
LABEL_13:
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:v18 forKeyedSubscript:@"featureAvailability"];

  v19 = [v5 photoLibrary];
  v20 = [v19 pathManager];
  v51[0] = v11;
  v21 = [v20 internalDirectoryWithSubType:6 additionalPathComponents:0 createIfNeeded:0 error:v51];
  v22 = v51[0];

  v23 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = [v23 fileExistsAtPath:v21 isDirectory:0];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:v24];
  [v6 setObject:v25 forKeyedSubscript:@"isCSUTaxonomyAvailable"];

  v26 = PLSearchSemanticSearchQueriesSupported();
  v27 = PLSearchSemanticSearchIndexingSupported();
  v28 = [MEMORY[0x1E696AD98] numberWithBool:v26];
  [v6 setObject:v28 forKeyedSubscript:@"isSemanticSearchQueriesSupported"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:v27];
  [v6 setObject:v29 forKeyedSubscript:@"isSemanticSearchIndexingSupported"];

  v30 = [v19 globalValues];
  v31 = [v30 searchIndexingEntityToRebuild];

  if (v31)
  {
    if (v31 == 1 && ([v19 globalValues], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "searchIndexRebuildResumeMarker"), v33 = objc_claimAutoreleasedReturnValue(), v33, v32, !v33))
    {
      v34 = @"not started";
    }

    else
    {
      v34 = @"in progress";
    }
  }

  else
  {
    v34 = @"finished";
  }

  [v6 setObject:v34 forKeyedSubscript:@"rebuildStatus"];
  v35 = [v19 globalValues];
  v36 = [v35 searchIndexVersion];
  if (v36)
  {
    [v6 setObject:v36 forKeyedSubscript:@"searchIndexVersion"];
  }

  else
  {
    v37 = [MEMORY[0x1E695DFB0] null];
    [v6 setObject:v37 forKeyedSubscript:@"searchIndexVersion"];
  }

  v38 = [v19 globalValues];
  v39 = [v38 searchIndexLocaleIdentifier];
  if (v39)
  {
    [v6 setObject:v39 forKeyedSubscript:@"searchIndexLocaleIdentifier"];
  }

  else
  {
    v40 = [MEMORY[0x1E695DFB0] null];
    [v6 setObject:v40 forKeyedSubscript:@"searchIndexLocaleIdentifier"];
  }

  v41 = [(PHSearchFeedbackDiagnostics *)self _spotlightClientStateStatusForPhotoLibrary:v5];
  if (v41)
  {
    [v6 setObject:v41 forKeyedSubscript:@"spotlightClientStateStatus"];
  }

  else
  {
    v42 = [MEMORY[0x1E695DFB0] null];
    [v6 setObject:v42 forKeyedSubscript:@"spotlightClientStateStatus"];
  }

  return v6;
}

- (id)_resultAttributesJSONForAssets:(id)a3 photoLibrary:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 localIdentifier];
          v23 = 0;
          v15 = [v6 searchDebugInformationForAssetLocalIdentifier:v14 redacted:1 error:&v23];
          v16 = v23;

          v17 = [v13 uuid];
          if (v17)
          {
            v18 = v15 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            v19 = PLSearchBackendFeedbackDiagnosticsGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v29 = v17;
              _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Failed to get search attributes for asset UUID: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            [v7 setObject:v15 forKeyedSubscript:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v10);
    }

    v20 = [v7 copy];
    v5 = v22;
  }

  else
  {
    v20 = MEMORY[0x1E695E0F8];
  }

  return v20;
}

- (BOOL)_writeToPath:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v24];
  v7 = v24;

  if ((v6 & 1) == 0)
  {
    v9 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    v26 = v4;
    v10 = "Failed to create Photos Search Feedback diagnostics directory at path: %@";
    v11 = v9;
    v12 = 12;
LABEL_21:
    _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_25;
  }

  if (self->_queryResultJSON)
  {
    v8 = [v4 stringByAppendingPathComponent:@"Search Result Details.json"];
    [(PHSearchFeedbackDiagnostics *)self _writeJSONObject:self->_queryResultJSON toPath:v8];
  }

  else
  {
    v8 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Missing query result data.", buf, 2u);
    }
  }

  if (self->_resultAttributesJSON)
  {
    v13 = [v4 stringByAppendingPathComponent:@"On-Screen Search Result Details.json"];
    [(PHSearchFeedbackDiagnostics *)self _writeJSONObject:self->_resultAttributesJSON toPath:v13];
  }

  else
  {
    v13 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Missing result attributes data.", buf, 2u);
    }
  }

  if (self->_indexStatusJSON)
  {
    v14 = [v4 stringByAppendingPathComponent:@"Search Index Details.json"];
    [(PHSearchFeedbackDiagnostics *)self _writeJSONObject:self->_indexStatusJSON toPath:v14];
  }

  else
  {
    v14 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_ERROR, "Missing search index status.", buf, 2u);
    }
  }

  if (!self->_assetThumbnailPaths)
  {
    v9 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v10 = "Missing asset thumbnails.";
    v11 = v9;
    v12 = 2;
    goto LABEL_21;
  }

  v9 = [v4 stringByAppendingPathComponent:@"On-Screen Search Result Thumbnails"];
  v15 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = v7;
  v16 = [v15 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v23];
  v17 = v23;

  if (v16)
  {
    assetThumbnailPaths = self->_assetThumbnailPaths;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__PHSearchFeedbackDiagnostics__writeToPath___block_invoke;
    v21[3] = &unk_1E75AB2C0;
    v22 = v9;
    [(NSDictionary *)assetThumbnailPaths enumerateKeysAndObjectsUsingBlock:v21];
    v19 = v22;
  }

  else
  {
    v19 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Failed to create directory for thumbnails at path: %@", buf, 0xCu);
    }
  }

  v7 = v17;
LABEL_25:

  return v6;
}

void __44__PHSearchFeedbackDiagnostics__writeToPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 pathExtension];
  v8 = [v5 stringByAppendingPathExtension:v7];

  v9 = [*(a1 + 32) stringByAppendingPathComponent:v8];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v11 = [v10 copyItemAtPath:v6 toPath:v9 error:&v14];
  v12 = v14;

  if ((v11 & 1) == 0)
  {
    v13 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Failed to copy thumbnail for asset UUID: %{public}@ fromPath: %@, toPath: %@", buf, 0x20u);
    }
  }
}

- (PHSearchFeedbackDiagnostics)initWithPhotoLibrary:(id)a3 resultJSON:(id)a4 onScreenAssets:(id)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  [v8 timeIntervalSinceReferenceDate];
  v12 = [(PHSearchFeedbackDiagnostics *)self initWithPhotoLibrary:v11 resultJSON:v10 onScreenAssets:v9 startTime:?];

  return v12;
}

- (PHSearchFeedbackDiagnostics)initWithPhotoLibrary:(id)a3 resultJSON:(id)a4 onScreenAssets:(id)a5 startTime:(double)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PHSearchFeedbackDiagnostics *)self init];
  if (v13)
  {
    v14 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v40) = 0;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "Collecting Photos Search Feedback diagnostics...", &v40, 2u);
    }

    v15 = MEMORY[0x1E69BE4E8];
    v16 = [v10 photoLibrary];
    v17 = [v16 managedObjectContext];
    v18 = [v15 activeLibraryScopeInManagedObjectContext:v17];
    v13->_isSharedLibraryEnabled = v18 != 0;

    v19 = [(PHSearchFeedbackDiagnostics *)v13 _fetchAssets:v12 photoLibrary:v10];
    v20 = _GuardValidJSON(v11);
    v21 = v20;
    v22 = MEMORY[0x1E695E0F8];
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v13->_queryResultJSON, v23);

    v24 = [(PHSearchFeedbackDiagnostics *)v13 _resultAttributesJSONForAssets:v19 photoLibrary:v10];
    v25 = _GuardValidJSON(v24);
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v22;
    }

    objc_storeStrong(&v13->_resultAttributesJSON, v27);

    v28 = [(PHSearchFeedbackDiagnostics *)v13 _assetThumbnailPathsForAssets:v19 photoLibrary:v10];
    v29 = _GuardValidJSON(v28);
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v22;
    }

    objc_storeStrong(&v13->_assetThumbnailPaths, v31);

    v32 = [(PHSearchFeedbackDiagnostics *)v13 _indexSummaryJSONForPhotoLibrary:v10];
    v33 = _GuardValidJSON(v32);
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v22;
    }

    objc_storeStrong(&v13->_indexStatusJSON, v35);

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v37 = v36;
    v38 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 134218242;
      v41 = (v37 - a6) * 1000.0;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEFAULT, "Generated Photos Search Feedback diagnostics in in %0.4fms, %@", &v40, 0x16u);
    }
  }

  return v13;
}

- (PHSearchFeedbackDiagnostics)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  +[PHSearchFeedbackDiagnostics assertIfNotCorrectConfiguration];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__53748;
  v20 = __Block_byref_object_dispose__53749;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__53748;
  v14 = __Block_byref_object_dispose__53749;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PHSearchFeedbackDiagnostics_initWithPhotoLibrary___block_invoke;
  v9[3] = &unk_1E75AB298;
  v9[4] = &v16;
  v9[5] = &v10;
  [(PHSearchFeedbackDiagnostics *)self _collectPhotosAppOnScreenSearchDetailsWithHandler:v9];
  v7 = [(PHSearchFeedbackDiagnostics *)self initWithPhotoLibrary:v4 resultJSON:v17[5] onScreenAssets:v11[5] startTime:v6];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7;
}

void __52__PHSearchFeedbackDiagnostics_initWithPhotoLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (PHSearchFeedbackDiagnostics)init
{
  v10.receiver = self;
  v10.super_class = PHSearchFeedbackDiagnostics;
  v2 = [(PHSearchFeedbackDiagnostics *)&v10 init];
  v3 = v2;
  if (v2)
  {
    queryResultJSON = v2->_queryResultJSON;
    v5 = MEMORY[0x1E695E0F8];
    v2->_queryResultJSON = MEMORY[0x1E695E0F8];

    resultAttributesJSON = v3->_resultAttributesJSON;
    v3->_resultAttributesJSON = v5;

    indexStatusJSON = v3->_indexStatusJSON;
    v3->_indexStatusJSON = v5;

    assetThumbnailPaths = v3->_assetThumbnailPaths;
    v3->_assetThumbnailPaths = v5;
  }

  return v3;
}

+ (void)assertIfNotCorrectConfiguration
{
  if ((PFOSVariantHasInternalDiagnostics() & 1) == 0)
  {
    v2 = _PFAssertFailHandler();
    +[(PHSearchFeedbackDiagnostics *)v2];
  }
}

+ (id)_diagnosticsFilename
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyyMMdd-HHmmss"];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x1E695DF00] now];
  v5 = [v2 stringFromDate:v4];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-T%@", @"photos-search-feedback-diagnostics", v5];

  return v6;
}

+ (id)jsonForSearchQueryResult:(id)a3
{
  if (a3)
  {
    v4 = [a3 redactedJSONDictionary];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

+ (id)saveDiagnostics:(id)a3 toPath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [a1 _diagnosticsFilename];
    v9 = [v7 stringByAppendingPathComponent:v8];
    if ([v6 _writeToPath:v9])
    {
      v10 = PLSearchBackendFeedbackDiagnosticsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEFAULT, "Saved Photos Search Feedback diagnostics to: %@", &v14, 0xCu);
      }

      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v8 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_ERROR, "Empty destination path. Unable to collect diagnostics.", &v14, 2u);
    }

    v12 = 0;
  }

  return v12;
}

+ (id)collectDiagnosticsForLibrary:(id)a3 toPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  +[PHSearchFeedbackDiagnostics assertIfNotCorrectConfiguration];
  if ([v7 length])
  {
    v8 = [[PHSearchFeedbackDiagnostics alloc] initWithPhotoLibrary:v6];
    v9 = [a1 saveDiagnostics:v8 toPath:v7];
  }

  else
  {
    v10 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_ERROR, "Empty destination path. Unable to collect diagnostics.", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)collectDiagnosticsForLibrary:(id)a3 resultJSON:(id)a4 onScreenAssets:(id)a5 toPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v13 length])
  {
    v14 = [[PHSearchFeedbackDiagnostics alloc] initWithPhotoLibrary:v10 resultJSON:v11 onScreenAssets:v12];
    v15 = [a1 saveDiagnostics:v14 toPath:v13];
  }

  else
  {
    v16 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_ERROR, "Empty destination path. Unable to collect diagnostics.", v18, 2u);
    }

    v15 = 0;
  }

  return v15;
}

+ (void)purgeSearchUIDiagnosticDetailsForPhotoLibrary:(id)a3 queue:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 urlForApplicationDataFolderIdentifier:15 error:0];
  v7 = PLSearchBackendFeedbackDiagnosticsGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to reach %@ for purging", buf, 0xCu);
  }

  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PHSearchFeedbackDiagnostics_purgeSearchUIDiagnosticDetailsForPhotoLibrary_queue___block_invoke;
    block[3] = &unk_1E75AB270;
    v9 = v6;
    dispatch_async(v5, block);
  }
}

void __83__PHSearchFeedbackDiagnostics_purgeSearchUIDiagnosticDetailsForPhotoLibrary_queue___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 contentsOfDirectoryAtURL:*(a1 + 32) includingPropertiesForKeys:0 options:0 error:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v17 = 0;
        v12 = [v11 removeItemAtURL:v10 error:&v17];
        v13 = v17;

        if ((v12 & 1) == 0)
        {
          v14 = PLSearchBackendFeedbackDiagnosticsGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v10];
            *buf = v16;
            v23 = v15;
            v24 = 2112;
            v25 = v13;
            _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEFAULT, "Unable to delete file at path %@ - error: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

+ (id)saveSearchUIDiagnosticDetails:(id)a3 photoLibrary:(id)a4 queue:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696AFB0];
  v11 = a4;
  v12 = [v10 UUID];
  v13 = [v12 UUIDString];
  v14 = [v9 stringWithFormat:@"%@.txt", v13];

  v15 = PLSearchBackendFeedbackDiagnosticsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEFAULT, "Writing blob file to disk...", buf, 2u);
  }

  v16 = [v11 urlForApplicationDataFolderIdentifier:15 error:0];

  v17 = PLSearchBackendFeedbackDiagnosticsGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v16;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to reach %@", buf, 0xCu);
  }

  if (v16)
  {
    v18 = [v16 URLByAppendingPathComponent:v14];
    v19 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v18];
    v20 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_19C86F000, v20, OS_LOG_TYPE_DEFAULT, "Attempting to create %@", buf, 0xCu);
    }

    if (v18)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__PHSearchFeedbackDiagnostics_saveSearchUIDiagnosticDetails_photoLibrary_queue___block_invoke;
      block[3] = &unk_1E75AB248;
      v28 = v7;
      v29 = v18;
      v30 = v19;
      dispatch_async(v8, block);

      v21 = v28;
    }

    else
    {
      v21 = PLSearchBackendFeedbackDiagnosticsGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19C86F000, v21, OS_LOG_TYPE_ERROR, "Could not create file url", buf, 2u);
      }
    }
  }

  else
  {
    v19 = PLSearchBackendFeedbackDiagnosticsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v19, OS_LOG_TYPE_ERROR, "Could not to reach application url", buf, 2u);
    }

    v18 = 0;
  }

  v22 = [v18 absoluteString];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_1F0FC60C8;
  }

  v25 = v24;

  return v24;
}

void __80__PHSearchFeedbackDiagnostics_saveSearchUIDiagnosticDetails_photoLibrary_queue___block_invoke(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v14 = 0;
  v4 = [v2 writeToURL:v3 atomically:1 encoding:4 error:&v14];
  v5 = v14;
  v6 = PLSearchBackendFeedbackDiagnosticsGetLog();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[6];
      *buf = 138412290;
      v16 = v8;
      v9 = "Successfully wrote blob data to: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_19C86F000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = a1[6];
    *buf = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v5;
    v9 = "Could not write file to path: %@ because of: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

@end