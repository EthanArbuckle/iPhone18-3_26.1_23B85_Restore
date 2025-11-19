@interface PHMomentShare
+ (id)_fetchLocalMomentShareWithUUID:(id)a3 error:(id *)a4;
+ (id)entityKeyMap;
+ (id)fetchLocalMomentShareFromShareURL:(id)a3 error:(id *)a4 options:(id)a5;
+ (id)fetchMomentSharesOverlappingAssetCollection:(id)a3 options:(id)a4;
+ (id)invitedMomentSharesExpiringInDays:(unint64_t)a3;
+ (id)localIdentifierWithUUID:(id)a3;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
+ (void)fetchMomentShareFromShareURL:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (BOOL)shouldPromptUserToIgnoreBudgets;
- (BOOL)shouldSuggestShareBack;
- (NSString)description;
- (PHMomentShare)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (void)acceptMomentShareWithCompletion:(id)a3;
- (void)forceSyncMomentShareWithCompletion:(id)a3;
- (void)publishMomentShareWithCompletionHandler:(id)a3;
@end

@implementation PHMomentShare

+ (id)invitedMomentSharesExpiringInDays:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setDay:a3];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 dateByAddingComponents:v4 toDate:v6 options:0];

  v8 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  v9 = [v8 librarySpecificFetchOptions];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"expiryDate <= %@ AND (status == %d OR status == %d)", v7, 2, 3];
  [v9 setInternalPredicate:v10];
  v11 = [(PHAssetCollection *)PHMomentShare fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:v9];

  return v11;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PHMomentShare;
  v3 = [(PHAssetCollection *)&v10 description];
  v4 = [(PHMomentShare *)self scopeIdentifier];
  v5 = [(PHMomentShare *)self status]- 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E75A9988[v5];
  }

  v7 = v6;
  v8 = [v3 stringByAppendingFormat:@", scopeIdentifier: %@, status: %@", v4, v7];

  return v8;
}

- (void)publishMomentShareWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PHObject *)self photoLibrary];
  v8 = [v5 cplStatus];

  if ([v8 isExceedingQuota])
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:6008 userInfo:0];
    v7 = [PHShare PHShareErrorFromError:v6];
    v4[2](v4, 0, v7);
  }

  else
  {
    v6 = [(PHObject *)self uuid];
    v7 = [(PHObject *)self photoLibrary];
    [PHShare publishShareWithUUID:v6 photoLibrary:v7 completion:v4];
  }
}

- (void)forceSyncMomentShareWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PHObject *)self uuid];
  v6 = [(PHObject *)self photoLibrary];
  v7 = [v6 assetsdClient];

  v8 = [v7 cloudInternalClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PHMomentShare_forceSyncMomentShareWithCompletion___block_invoke;
  v10[3] = &unk_1E75AAA50;
  v11 = v4;
  v9 = v4;
  [v8 forceSyncMomentShare:v5 completionHandler:v10];
}

void __52__PHMomentShare_forceSyncMomentShareWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)acceptMomentShareWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(PHObject *)self uuid];
  v5 = [(PHObject *)self photoLibrary];
  [PHShare acceptShareWithUUID:v6 photoLibrary:v5 completion:v4];
}

- (BOOL)shouldSuggestShareBack
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v3 = [(PHObject *)self photoLibrary];
  v4 = [v3 photoLibrary];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PHMomentShare_shouldSuggestShareBack__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [v5 performBlockAndWait:v7];
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __39__PHMomentShare_shouldSuggestShareBack__block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) uuid];
  v2 = MEMORY[0x1E69BE5D0];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [v2 shareWithUUID:v13 includeTrashed:1 inManagedObjectContext:v3];

  if (v4)
  {
    v5 = [v4 originatingScopeIdentifier];
    if ([v5 length])
    {
      v6 = MEMORY[0x1E69BE5D0];
      v7 = [*(a1 + 40) managedObjectContext];
      v8 = [v6 shareWithScopeIdentifier:v5 includeTrashed:1 inManagedObjectContext:v7];

      if (v8)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    v9 = [v4 scopeIdentifier];
    if ([v9 length])
    {
      v10 = MEMORY[0x1E69BE5D0];
      v11 = [*(a1 + 40) managedObjectContext];
      v12 = [v10 momentShareWithOriginatingScopeIdentifier:v9 inManagedObjectContext:v11];

      if (v12)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }
  }
}

- (BOOL)shouldPromptUserToIgnoreBudgets
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(PHObject *)self photoLibrary];
  v4 = [v3 photoLibrary];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PHMomentShare_shouldPromptUserToIgnoreBudgets__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [v5 performBlockAndWait:v7];
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __48__PHMomentShare_shouldPromptUserToIgnoreBudgets__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = MEMORY[0x1E69BE5D0];
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v3 shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v4];

  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v5 estimateUploadSize] > 0xC800000;
  }

  else
  {
    v6 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Failed to find moment share with uuid %@ to estimate upload size.", &v7, 0xCu);
    }
  }
}

- (PHMomentShare)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v45.receiver = self;
  v45.super_class = PHMomentShare;
  v9 = [(PHAssetCollection *)&v45 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"title"];
    localizedTitle = v9->super._localizedTitle;
    v9->super._localizedTitle = v10;

    v12 = [v8 objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v12;

    v14 = [v8 objectForKeyedSubscript:@"shareURL"];
    shareURL = v9->_shareURL;
    v9->_shareURL = v14;

    v16 = [v8 objectForKeyedSubscript:@"status"];
    v9->_status = [v16 integerValue];

    v17 = [v8 objectForKeyedSubscript:@"trashedState"];
    v9->_trashedState = [v17 unsignedIntegerValue];

    v18 = [v8 objectForKeyedSubscript:@"assetCount"];
    v9->_assetCount = [v18 unsignedIntegerValue];

    v19 = [v8 objectForKeyedSubscript:@"photosCount"];
    v9->_photosCount = [v19 unsignedIntegerValue];

    v20 = [v8 objectForKeyedSubscript:@"videosCount"];
    v9->_videosCount = [v20 unsignedIntegerValue];

    v21 = [v8 objectForKeyedSubscript:@"cloudPhotoCount"];
    v9->_cloudPhotoCount = [v21 unsignedIntegerValue];

    v22 = [v8 objectForKeyedSubscript:@"cloudVideoCount"];
    v9->_cloudVideoCount = [v22 unsignedIntegerValue];

    v23 = [v8 objectForKeyedSubscript:@"scopeIdentifier"];
    scopeIdentifier = v9->_scopeIdentifier;
    v9->_scopeIdentifier = v23;

    v25 = [v8 objectForKeyedSubscript:@"startDate"];
    startDate = v9->super._startDate;
    v9->super._startDate = v25;

    v27 = [v8 objectForKeyedSubscript:@"endDate"];
    endDate = v9->super._endDate;
    v9->super._endDate = v27;

    v29 = [v8 objectForKeyedSubscript:@"expiryDate"];
    expiryDate = v9->_expiryDate;
    v9->_expiryDate = v29;

    v31 = [v8 objectForKeyedSubscript:@"ckShareData"];
    ckShareData = v9->_ckShareData;
    v9->_ckShareData = v31;

    v33 = [v8 objectForKeyedSubscript:@"thumbnailImageData"];
    thumbnailImageData = v9->_thumbnailImageData;
    v9->_thumbnailImageData = v33;

    v35 = [v8 objectForKeyedSubscript:@"previewData"];
    previewData = v9->_previewData;
    v9->_previewData = v35;

    v37 = [v8 objectForKeyedSubscript:@"shouldIgnoreBudgets"];
    v9->_shouldIgnoreBudgets = [v37 BOOLValue];

    v38 = [v8 objectForKeyedSubscript:@"shouldNotifyOnUploadCompletion"];
    v9->_shouldNotifyOnUploadCompletion = [v38 BOOLValue];

    v39 = [v8 objectForKeyedSubscript:@"localPublishState"];
    v9->_publishState = [v39 unsignedIntegerValue];

    v40 = [[PHMomentSharePreview alloc] initWithThumbnailImageData:v9->_thumbnailImageData previewData:v9->_previewData];
    preview = v9->_preview;
    v9->_preview = v40;

    v9->super._assetCollectionType = 7;
    v42 = [v8 objectForKeyedSubscript:@"publicPermission"];
    v9->_publicPermission = [v42 integerValue];

    v43 = [v8 objectForKeyedSubscript:@"compatibilityState"];
    v9->_containsEPPAssets = [v43 integerValue] == 1;
  }

  return v9;
}

+ (id)fetchMomentSharesOverlappingAssetCollection:(id)a3 options:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 startDate];
  if (!v8)
  {
    v9 = [v6 photoLibrary];
    v10 = [v9 librarySpecificFetchOptions];

    [v10 setFetchLimit:1];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v32[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [v10 setSortDescriptors:v12];

    v13 = [PHAsset fetchAssetsInAssetCollection:v6 options:v10];
    v14 = [v13 firstObject];

    v8 = [v14 creationDate];
  }

  v15 = [v6 endDate];
  if (!v15)
  {
    v16 = [v6 photoLibrary];
    v17 = [v16 librarySpecificFetchOptions];

    [v17 setFetchLimit:1];
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v31 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [v17 setSortDescriptors:v19];

    v20 = [PHAsset fetchAssetsInAssetCollection:v6 options:v17];
    v21 = [v20 firstObject];

    v15 = [v21 creationDate];
  }

  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate <= %@ && endDate >= %@", v15, v8];
  v23 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  v24 = [v23 librarySpecificFetchOptions];
  [v24 setPredicate:v22];
  v25 = [v7 photoLibrary];
  v26 = [v24 photoLibrary];

  if (v25 != v26)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:a1 file:@"PHMomentShare.m" lineNumber:438 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary == localOptions.photoLibrary"}];
  }

  [v24 mergeWithFetchOptions:v7];
  v27 = [(PHAssetCollection *)PHMomentShare fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:v24];

  return v27;
}

+ (id)_fetchLocalMomentShareWithUUID:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [PHMomentShare localIdentifierWithUUID:a3];
  v6 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v20[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v9 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v8 options:v7];

  if ([v9 count] == 1)
  {
    v10 = [v9 firstObject];
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BE900];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Moment share not found";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v11 ph_errorWithDomain:v12 code:100 userInfo:v13];
    v15 = [PHShare PHShareErrorFromError:v14];

    if (a4)
    {
      v16 = v15;
      *a4 = v15;
    }

    v10 = 0;
  }

  return v10;
}

+ (void)fetchMomentShareFromShareURL:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 photoLibrary];
  v14 = 0;
  v10 = [v9 openAndWaitWithUpgrade:0 error:&v14];
  v11 = v14;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__PHMomentShare_fetchMomentShareFromShareURL_options_completionHandler___block_invoke;
    v12[3] = &unk_1E75A9D80;
    v13 = v8;
    [PHShare fetchShareFromShareURL:v7 ignoreExistingShare:0 photoLibrary:v9 completionHandler:v12];
  }

  else
  {
    (*(v8 + 2))(v8, 0, v11);
  }
}

void __72__PHMomentShare_fetchMomentShareFromShareURL_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v7 = [PHShare PHShareErrorFromError:?];
    (*(v4 + 16))(v4, 0, v7);
  }

  else
  {
    v8 = 0;
    v5 = [PHMomentShare _fetchLocalMomentShareWithUUID:a2 error:&v8];
    v6 = v8;
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)fetchLocalMomentShareFromShareURL:(id)a3 error:(id *)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 photoLibrary];
  v36 = 0;
  v10 = [v9 openAndWaitWithUpgrade:0 error:&v36];
  v11 = v36;
  v12 = v11;
  if (v10)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__46233;
    v34 = __Block_byref_object_dispose__46234;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__46233;
    v28 = __Block_byref_object_dispose__46234;
    v29 = 0;
    v13 = [v9 photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__PHMomentShare_fetchLocalMomentShareFromShareURL_error_options___block_invoke;
    v19[3] = &unk_1E75A9D58;
    v20 = v7;
    v14 = v13;
    v21 = v14;
    v22 = &v30;
    v23 = &v24;
    [v14 performBlockAndWait:v19];
    v15 = v31[5];
    if (a4 && !v15)
    {
      *a4 = v25[5];
      v15 = v31[5];
    }

    v16 = v15;

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else if (a4)
  {
    v17 = v11;
    v16 = 0;
    *a4 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __65__PHMomentShare_fetchLocalMomentShareFromShareURL_error_options___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BE5D0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v2 shareWithShareURL:v3 includeTrashed:1 inManagedObjectContext:v4];

  if (v5)
  {
    if ([v5 trashedState] == 1)
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E69BE900];
      v21 = *MEMORY[0x1E696A578];
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v5 uuid];
      v10 = [v8 stringWithFormat:@"Moment share %@ found but it's trashed", v9];
      v22 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [v6 errorWithDomain:v7 code:101 userInfo:v11];

      v13 = [PHShare PHShareErrorFromError:v12];
      v14 = 56;
    }

    else
    {
      v12 = [v5 uuid];
      v15 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [*(a1 + 32) pl_redactedShareURL];
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_INFO, "Found local moment share with shareURL %{public}@ with uuid %@", buf, 0x16u);
      }

      v17 = *(*(a1 + 56) + 8);
      obj = *(v17 + 40);
      v13 = [PHMomentShare _fetchLocalMomentShareWithUUID:v12 error:&obj];
      objc_storeStrong((v17 + 40), obj);
      v14 = 48;
    }

    v18 = *(*(a1 + v14) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v13;
  }
}

+ (id)localIdentifierWithUUID:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 identifierCode];
  v7 = [v4 stringWithFormat:@"%@/L0/%@", v5, v6];

  return v7;
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PHMomentShare_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_46243 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_46243, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_46244 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __53__PHMomentShare_transformValueExpression_forKeyPath___block_invoke()
{
  v4[22] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"title";
  v4[1] = @"creationDate";
  v4[2] = @"uuid";
  v4[3] = @"shareURL";
  v4[4] = @"status";
  v4[5] = @"assetCount";
  v4[6] = @"photosCount";
  v4[7] = @"videosCount";
  v4[8] = @"cloudPhotoCount";
  v4[9] = @"cloudVideoCount";
  v4[10] = @"scopeIdentifier";
  v4[11] = @"startDate";
  v4[12] = @"endDate";
  v4[13] = @"expiryDate";
  v4[14] = @"ckShareData";
  v4[15] = @"thumbnailImageData";
  v4[16] = @"previewData";
  v4[17] = @"shouldIgnoreBudgets";
  v4[18] = @"shouldNotifyOnUploadCompletion";
  v4[19] = @"publishState";
  v4[20] = @"publicPermission";
  v4[21] = @"containsEPPAssets";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:22];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_46244;
  transformValueExpression_forKeyPath___passThroughSet_46244 = v2;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_15_46256;

  return v2;
}

void __29__PHMomentShare_entityKeyMap__block_invoke()
{
  v49[22] = *MEMORY[0x1E69E9840];
  v20 = [PHEntityKeyMap alloc];
  v47 = @"title";
  v48[0] = @"title";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v49[0] = v25;
  v48[1] = @"creationDate";
  v46 = @"creationDate";
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v49[1] = v24;
  v48[2] = @"uuid";
  v45 = @"uuid";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v49[2] = v23;
  v48[3] = @"shareURL";
  v44 = @"shareURL";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v49[3] = v22;
  v48[4] = @"status";
  v43 = @"status";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v49[4] = v21;
  v48[5] = @"assetCount";
  v42 = @"assetCount";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
  v49[5] = v19;
  v48[6] = @"photosCount";
  v41 = @"photosCount";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v49[6] = v18;
  v48[7] = @"videosCount";
  v40 = @"videosCount";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v49[7] = v17;
  v48[8] = @"cloudPhotoCount";
  v39 = @"cloudPhotoCount";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v49[8] = v16;
  v48[9] = @"cloudVideoCount";
  v38 = @"cloudVideoCount";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
  v49[9] = v15;
  v48[10] = @"scopeIdentifier";
  v37 = @"scopeIdentifier";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v49[10] = v14;
  v48[11] = @"startDate";
  v36 = @"startDate";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v49[11] = v13;
  v48[12] = @"endDate";
  v35 = @"endDate";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v49[12] = v12;
  v48[13] = @"expiryDate";
  v34 = @"expiryDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v49[13] = v0;
  v48[14] = @"ckShareData";
  v33 = @"ckShareData";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  v49[14] = v1;
  v48[15] = @"thumbnailImageData";
  v32 = @"thumbnailImageData";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v49[15] = v2;
  v48[16] = @"previewData";
  v31 = @"previewData";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v49[16] = v3;
  v48[17] = @"shouldIgnoreBudgets";
  v30 = @"shouldIgnoreBudgets";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v49[17] = v4;
  v48[18] = @"shouldNotifyOnUploadCompletion";
  v29 = @"shouldNotifyOnUploadCompletion";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v49[18] = v5;
  v48[19] = @"localPublishState";
  v28 = @"publishState";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v49[19] = v6;
  v48[20] = @"publicPermission";
  v27 = @"publicPermission";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v49[20] = v7;
  v48[21] = @"compatibilityState";
  v26 = @"containsEPPAssets";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v49[21] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:22];
  v10 = [(PHEntityKeyMap *)v20 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_15_46256;
  entityKeyMap_pl_once_object_15_46256 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  if (propertiesToFetchWithHint__onceToken_46264 != -1)
  {
    dispatch_once(&propertiesToFetchWithHint__onceToken_46264, &__block_literal_global_46265);
  }

  v4 = propertiesToFetchWithHint__array_46266;

  return v4;
}

void __43__PHMomentShare_propertiesToFetchWithHint___block_invoke()
{
  v3[24] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v3[0] = v0;
  v3[1] = @"title";
  v3[2] = @"creationDate";
  v3[3] = @"uuid";
  v3[4] = @"status";
  v3[5] = @"shareURL";
  v3[6] = @"assetCount";
  v3[7] = @"photosCount";
  v3[8] = @"videosCount";
  v3[9] = @"cloudPhotoCount";
  v3[10] = @"cloudVideoCount";
  v3[11] = @"scopeIdentifier";
  v3[12] = @"startDate";
  v3[13] = @"endDate";
  v3[14] = @"expiryDate";
  v3[15] = @"ckShareData";
  v3[16] = @"thumbnailImageData";
  v3[17] = @"previewData";
  v3[18] = @"shouldIgnoreBudgets";
  v3[19] = @"shouldNotifyOnUploadCompletion";
  v3[20] = @"trashedState";
  v3[21] = @"localPublishState";
  v3[22] = @"publicPermission";
  v3[23] = @"compatibilityState";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:24];
  v2 = propertiesToFetchWithHint__array_46266;
  propertiesToFetchWithHint__array_46266 = v1;
}

@end