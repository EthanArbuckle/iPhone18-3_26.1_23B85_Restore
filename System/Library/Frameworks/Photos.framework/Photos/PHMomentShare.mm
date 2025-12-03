@interface PHMomentShare
+ (id)_fetchLocalMomentShareWithUUID:(id)d error:(id *)error;
+ (id)entityKeyMap;
+ (id)fetchLocalMomentShareFromShareURL:(id)l error:(id *)error options:(id)options;
+ (id)fetchMomentSharesOverlappingAssetCollection:(id)collection options:(id)options;
+ (id)invitedMomentSharesExpiringInDays:(unint64_t)days;
+ (id)localIdentifierWithUUID:(id)d;
+ (id)propertiesToFetchWithHint:(unint64_t)hint;
+ (id)transformValueExpression:(id)expression forKeyPath:(id)path;
+ (void)fetchMomentShareFromShareURL:(id)l options:(id)options completionHandler:(id)handler;
- (BOOL)shouldPromptUserToIgnoreBudgets;
- (BOOL)shouldSuggestShareBack;
- (NSString)description;
- (PHMomentShare)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library;
- (void)acceptMomentShareWithCompletion:(id)completion;
- (void)forceSyncMomentShareWithCompletion:(id)completion;
- (void)publishMomentShareWithCompletionHandler:(id)handler;
@end

@implementation PHMomentShare

+ (id)invitedMomentSharesExpiringInDays:(unint64_t)days
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v4 setDay:days];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [currentCalendar dateByAddingComponents:v4 toDate:date options:0];

  v8 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [v8 librarySpecificFetchOptions];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"expiryDate <= %@ AND (status == %d OR status == %d)", v7, 2, 3];
  [librarySpecificFetchOptions setInternalPredicate:v10];
  v11 = [(PHAssetCollection *)PHMomentShare fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];

  return v11;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PHMomentShare;
  v3 = [(PHAssetCollection *)&v10 description];
  scopeIdentifier = [(PHMomentShare *)self scopeIdentifier];
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
  v8 = [v3 stringByAppendingFormat:@", scopeIdentifier: %@, status: %@", scopeIdentifier, v7];

  return v8;
}

- (void)publishMomentShareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  photoLibrary = [(PHObject *)self photoLibrary];
  cplStatus = [photoLibrary cplStatus];

  if ([cplStatus isExceedingQuota])
  {
    uuid = [MEMORY[0x1E696ABC0] errorWithDomain:@"PHPhotosErrorDomain" code:6008 userInfo:0];
    photoLibrary2 = [PHShare PHShareErrorFromError:uuid];
    handlerCopy[2](handlerCopy, 0, photoLibrary2);
  }

  else
  {
    uuid = [(PHObject *)self uuid];
    photoLibrary2 = [(PHObject *)self photoLibrary];
    [PHShare publishShareWithUUID:uuid photoLibrary:photoLibrary2 completion:handlerCopy];
  }
}

- (void)forceSyncMomentShareWithCompletion:(id)completion
{
  completionCopy = completion;
  uuid = [(PHObject *)self uuid];
  photoLibrary = [(PHObject *)self photoLibrary];
  assetsdClient = [photoLibrary assetsdClient];

  cloudInternalClient = [assetsdClient cloudInternalClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PHMomentShare_forceSyncMomentShareWithCompletion___block_invoke;
  v10[3] = &unk_1E75AAA50;
  v11 = completionCopy;
  v9 = completionCopy;
  [cloudInternalClient forceSyncMomentShare:uuid completionHandler:v10];
}

void __52__PHMomentShare_forceSyncMomentShareWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [PHShare PHShareErrorFromError:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)acceptMomentShareWithCompletion:(id)completion
{
  completionCopy = completion;
  uuid = [(PHObject *)self uuid];
  photoLibrary = [(PHObject *)self photoLibrary];
  [PHShare acceptShareWithUUID:uuid photoLibrary:photoLibrary completion:completionCopy];
}

- (BOOL)shouldSuggestShareBack
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  photoLibrary = [(PHObject *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PHMomentShare_shouldSuggestShareBack__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v7[4] = self;
  v5 = v3PhotoLibrary;
  v8 = v5;
  v9 = &v10;
  [v5 performBlockAndWait:v7];
  LOBYTE(v3PhotoLibrary) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v3PhotoLibrary;
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
  photoLibrary = [(PHObject *)self photoLibrary];
  v3PhotoLibrary = [photoLibrary photoLibrary];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PHMomentShare_shouldPromptUserToIgnoreBudgets__block_invoke;
  v7[3] = &unk_1E75AA3F8;
  v7[4] = self;
  v5 = v3PhotoLibrary;
  v8 = v5;
  v9 = &v10;
  [v5 performBlockAndWait:v7];
  LOBYTE(v3PhotoLibrary) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v3PhotoLibrary;
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

- (PHMomentShare)initWithFetchDictionary:(id)dictionary propertyHint:(unint64_t)hint photoLibrary:(id)library
{
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = PHMomentShare;
  v9 = [(PHAssetCollection *)&v45 initWithFetchDictionary:dictionaryCopy propertyHint:hint photoLibrary:library];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    localizedTitle = v9->super._localizedTitle;
    v9->super._localizedTitle = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"shareURL"];
    shareURL = v9->_shareURL;
    v9->_shareURL = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v9->_status = [v16 integerValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"trashedState"];
    v9->_trashedState = [v17 unsignedIntegerValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"assetCount"];
    v9->_assetCount = [v18 unsignedIntegerValue];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"photosCount"];
    v9->_photosCount = [v19 unsignedIntegerValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"videosCount"];
    v9->_videosCount = [v20 unsignedIntegerValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"cloudPhotoCount"];
    v9->_cloudPhotoCount = [v21 unsignedIntegerValue];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"cloudVideoCount"];
    v9->_cloudVideoCount = [v22 unsignedIntegerValue];

    v23 = [dictionaryCopy objectForKeyedSubscript:@"scopeIdentifier"];
    scopeIdentifier = v9->_scopeIdentifier;
    v9->_scopeIdentifier = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    startDate = v9->super._startDate;
    v9->super._startDate = v25;

    v27 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    endDate = v9->super._endDate;
    v9->super._endDate = v27;

    v29 = [dictionaryCopy objectForKeyedSubscript:@"expiryDate"];
    expiryDate = v9->_expiryDate;
    v9->_expiryDate = v29;

    v31 = [dictionaryCopy objectForKeyedSubscript:@"ckShareData"];
    ckShareData = v9->_ckShareData;
    v9->_ckShareData = v31;

    v33 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailImageData"];
    thumbnailImageData = v9->_thumbnailImageData;
    v9->_thumbnailImageData = v33;

    v35 = [dictionaryCopy objectForKeyedSubscript:@"previewData"];
    previewData = v9->_previewData;
    v9->_previewData = v35;

    v37 = [dictionaryCopy objectForKeyedSubscript:@"shouldIgnoreBudgets"];
    v9->_shouldIgnoreBudgets = [v37 BOOLValue];

    v38 = [dictionaryCopy objectForKeyedSubscript:@"shouldNotifyOnUploadCompletion"];
    v9->_shouldNotifyOnUploadCompletion = [v38 BOOLValue];

    v39 = [dictionaryCopy objectForKeyedSubscript:@"localPublishState"];
    v9->_publishState = [v39 unsignedIntegerValue];

    v40 = [[PHMomentSharePreview alloc] initWithThumbnailImageData:v9->_thumbnailImageData previewData:v9->_previewData];
    preview = v9->_preview;
    v9->_preview = v40;

    v9->super._assetCollectionType = 7;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"publicPermission"];
    v9->_publicPermission = [v42 integerValue];

    v43 = [dictionaryCopy objectForKeyedSubscript:@"compatibilityState"];
    v9->_containsEPPAssets = [v43 integerValue] == 1;
  }

  return v9;
}

+ (id)fetchMomentSharesOverlappingAssetCollection:(id)collection options:(id)options
{
  v32[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  optionsCopy = options;
  startDate = [collectionCopy startDate];
  if (!startDate)
  {
    photoLibrary = [collectionCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
    v32[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v12];

    v13 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions];
    firstObject = [v13 firstObject];

    startDate = [firstObject creationDate];
  }

  endDate = [collectionCopy endDate];
  if (!endDate)
  {
    photoLibrary2 = [collectionCopy photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

    [librarySpecificFetchOptions2 setFetchLimit:1];
    v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v31 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [librarySpecificFetchOptions2 setSortDescriptors:v19];

    v20 = [PHAsset fetchAssetsInAssetCollection:collectionCopy options:librarySpecificFetchOptions2];
    firstObject2 = [v20 firstObject];

    endDate = [firstObject2 creationDate];
  }

  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate <= %@ && endDate >= %@", endDate, startDate];
  v23 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions3 = [v23 librarySpecificFetchOptions];
  [librarySpecificFetchOptions3 setPredicate:v22];
  photoLibrary3 = [optionsCopy photoLibrary];
  photoLibrary4 = [librarySpecificFetchOptions3 photoLibrary];

  if (photoLibrary3 != photoLibrary4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMomentShare.m" lineNumber:438 description:{@"Invalid parameter not satisfying: %@", @"options.photoLibrary == localOptions.photoLibrary"}];
  }

  [librarySpecificFetchOptions3 mergeWithFetchOptions:optionsCopy];
  v27 = [(PHAssetCollection *)PHMomentShare fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions3];

  return v27;
}

+ (id)_fetchLocalMomentShareWithUUID:(id)d error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [PHMomentShare localIdentifierWithUUID:d];
  v6 = +[PHPhotoLibrary sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [v6 librarySpecificFetchOptions];

  v20[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v9 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v8 options:librarySpecificFetchOptions];

  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
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

    if (error)
    {
      v16 = v15;
      *error = v15;
    }

    firstObject = 0;
  }

  return firstObject;
}

+ (void)fetchMomentShareFromShareURL:(id)l options:(id)options completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  photoLibrary = [options photoLibrary];
  v14 = 0;
  v10 = [photoLibrary openAndWaitWithUpgrade:0 error:&v14];
  v11 = v14;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__PHMomentShare_fetchMomentShareFromShareURL_options_completionHandler___block_invoke;
    v12[3] = &unk_1E75A9D80;
    v13 = handlerCopy;
    [PHShare fetchShareFromShareURL:lCopy ignoreExistingShare:0 photoLibrary:photoLibrary completionHandler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
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

+ (id)fetchLocalMomentShareFromShareURL:(id)l error:(id *)error options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  photoLibrary = [optionsCopy photoLibrary];
  v36 = 0;
  v10 = [photoLibrary openAndWaitWithUpgrade:0 error:&v36];
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
    v9PhotoLibrary = [photoLibrary photoLibrary];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__PHMomentShare_fetchLocalMomentShareFromShareURL_error_options___block_invoke;
    v19[3] = &unk_1E75A9D58;
    v20 = lCopy;
    v14 = v9PhotoLibrary;
    v21 = v14;
    v22 = &v30;
    v23 = &v24;
    [v14 performBlockAndWait:v19];
    v15 = v31[5];
    if (error && !v15)
    {
      *error = v25[5];
      v15 = v31[5];
    }

    v16 = v15;

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }

  else if (error)
  {
    v17 = v11;
    v16 = 0;
    *error = v12;
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
  block[2] = __53__PHMomentShare_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (transformValueExpression_forKeyPath__onceToken_46243 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_46243, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_46244 containsObject:pathCopy])
  {
    v8 = expressionCopy;
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

+ (id)propertiesToFetchWithHint:(unint64_t)hint
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