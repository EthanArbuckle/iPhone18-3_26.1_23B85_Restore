@interface MKPlaceCollectionImageProvider
+ (id)sharedInstance;
- (BOOL)isJoeColorManuallyCuratedForCuratedCollection:(id)a3;
- (BOOL)requiresGradientOperationForSource:(int64_t)a3;
- (CGSize)desiredSizeFromFrameSize:(CGSize)a3;
- (MKPlaceCollectionImageProvider)init;
- (id)joeColorForCompactCollection:(id)a3 usingCarouselContext:(int64_t)a4;
- (id)joeColorForCuratedCollection:(id)a3;
- (id)photoInfoWithPhoto:(id)a3 desiredSize:(CGSize)a4;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)cancelAllOperationsForCompactImageSource:(int64_t)a3;
- (void)cancelAllOperationsForImageSource:(int64_t)a3;
- (void)checkQueuesForCollectionSource:(int64_t)a3;
- (void)checkQueuesForCompactCollectionSource:(int64_t)a3;
- (void)loadCoverImageWithGuideLocation:(id)a3 size:(CGSize)a4 usingImageSource:(int64_t)a5 completion:(id)a6;
- (void)loadGradientCoverImageWithCuratedCollection:(id)a3 size:(CGSize)a4 contentSizeCategory:(id)a5 usingImageSource:(int64_t)a6 completion:(id)a7;
@end

@implementation MKPlaceCollectionImageProvider

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "[!]Cache %@ is evicting: %@", &v8, 0x16u);
  }
}

- (id)joeColorForCompactCollection:(id)a3 usingCarouselContext:(int64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4 == 0;
  }

  v8 = [v6 photosForType:{-[MKPlaceCollectionImageProvider photoTypeForImageSource:](self, "photoTypeForImageSource:", v7)}];
  v9 = [v8 firstObject];

  v10 = [v9 backgroundJoeColor];
  if (!v10 || ([MEMORY[0x1E69DC888] _maps_colorFromHexString:v10], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v6 title];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "JoeColor is missing background color string for guide location: %@", &v15, 0xCu);
    }

    v11 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  return v11;
}

- (BOOL)isJoeColorManuallyCuratedForCuratedCollection:(id)a3
{
  v3 = [a3 photos];
  v4 = [v3 firstObject];
  v5 = [v4 isBackgroundJoeColorCurated];

  return v5;
}

- (id)joeColorForCuratedCollection:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photos];
  v5 = [v4 firstObject];
  v6 = [v5 backgroundJoeColor];

  if (!v6 || ([MEMORY[0x1E69DC888] _maps_colorFromHexString:v6], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 collectionTitle];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_ERROR, "JoeColor is missing background color string for collection: %@", &v11, 0xCu);
    }

    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  return v7;
}

- (id)photoInfoWithPhoto:(id)a3 desiredSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(MKPlaceCollectionImageProvider *)self optionsForCollectionCells];
  v9 = [(MKPlaceCollectionImageProvider *)self photoInfoWithPhoto:v7 desiredSize:v8 usingOptions:width, height];

  return v9;
}

- (CGSize)desiredSizeFromFrameSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = +[MKSystemController sharedInstance];
  [v5 screenScale];
  v7 = v6;

  v8 = width * v7;
  v9 = height * v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)cancelAllOperationsForCompactImageSource:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = @"CompactCollection_SearchHome";
  if (a3 == 1)
  {
    v4 = @"CompactCollection_CitySelector";
  }

  if (a3 == 2)
  {
    v5 = @"CompactCollection_GuidesHome";
  }

  else
  {
    v5 = v4;
  }

  v6 = [(MKPlaceCollectionImageProvider *)self downloadOperationsPair];
  v7 = [v6 objectForKey:v5];

  v8 = [(MKPlaceCollectionImageProvider *)self gradientOperationsPair];
  v9 = [v8 objectForKey:v5];

  v10 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_INFO, "Cancelling ALL download and gradient operations for source: %@", &v11, 0xCu);
  }

  [v7 cancelAllOperations];
  [v9 cancelAllOperations];
}

- (void)cancelAllOperationsForImageSource:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) > 0xA)
  {
    v4 = @"SeeAll";
  }

  else
  {
    v4 = off_1E76C9888[a3 - 1];
  }

  v5 = [(MKPlaceCollectionImageProvider *)self downloadOperationsPair];
  v6 = [v5 objectForKey:v4];

  v7 = [(MKPlaceCollectionImageProvider *)self gradientOperationsPair];
  v8 = [v7 objectForKey:v4];

  v9 = MKGetCuratedCollectionsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_INFO, "Cancelling ALL download and gradient operations for source: %@", &v10, 0xCu);
  }

  [v6 cancelAllOperations];
  [v8 cancelAllOperations];
}

- (void)loadCoverImageWithGuideLocation:(id)a3 size:(CGSize)a4 usingImageSource:(int64_t)a5 completion:(id)a6
{
  v7 = a3;
  v10 = a6;
  v8 = v10;
  v9 = v7;
  geo_isolate_sync();
}

void __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke(uint64_t a1)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  [*(a1 + 32) desiredSizeFromFrameSize:{*(a1 + 56), *(a1 + 64)}];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 40) photosForType:{objc_msgSend(*v2, "photoTypeForImageSource:", *(a1 + 72))}];
  v34 = [v7 firstObject];

  v8 = [*v2 photoInfoWithPhoto:v34 desiredSize:*(*v2 + 4) usingOptions:{v4, v6}];
  v9 = [v8 url];
  v10 = [v9 absoluteString];
  v11 = [*(a1 + 40) title];
  if (v9)
  {
    v12 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v48 = v10;
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_DEBUG, "Requesting image for ID: %@", buf, 0xCu);
    }

    v13 = [*(a1 + 32) downloadedImagesCache];
    v14 = [v13 objectForKey:v10];

    if (v14)
    {
      v15 = MKGetCuratedCollectionsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v48 = v14;
        v49 = 2112;
        v50 = v9;
        v51 = 2112;
        v52 = v11;
        _os_log_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_DEBUG, "[✔]Guide location image Cache Hit. \nImage: %@ \n Photo URL: %@ \nGuide Location: %@", buf, 0x20u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke_53;
      block[3] = &unk_1E76CDA20;
      v43 = *(a1 + 48);
      v16 = v14;
      v42 = v16;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v17 = v43;
    }

    else
    {
      [*(a1 + 32) checkQueuesForCompactCollectionSource:*(a1 + 72)];
      v24 = [MEMORY[0x1E695DF00] date];
      objc_initWeak(buf, *(a1 + 32));
      v25 = [MKPlaceCollectionImageDownloadOperation alloc];
      v26 = [*(a1 + 32) downloadedImagesCache];
      v27 = [(MKPlaceCollectionImageDownloadOperation *)v25 initWithUrl:v9 downloadCache:v26 cacheId:v10];

      v28 = [*(a1 + 32) downloadOperationsPair];
      v29 = v28;
      v30 = *(a1 + 72);
      v31 = @"CompactCollection_SearchHome";
      if (v30 == 1)
      {
        v31 = @"CompactCollection_CitySelector";
      }

      if (v30 == 2)
      {
        v32 = @"CompactCollection_GuidesHome";
      }

      else
      {
        v32 = v31;
      }

      v33 = [v28 objectForKey:v32];

      [v33 addOperation:v27];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke_2;
      v35[3] = &unk_1E76C9818;
      objc_copyWeak(&v40, buf);
      v36 = v9;
      v37 = v11;
      v17 = v24;
      v38 = v17;
      v39 = *(a1 + 48);
      [(MKPlaceCollectionImageDownloadOperation *)v27 setCompletionBlock:v35];

      objc_destroyWeak(&v40);
      objc_destroyWeak(buf);
      v16 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No image for guide location: %@", v11];
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = MKErrorDomain;
    v53 = @"Reason";
    v54[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v21 = [v18 initWithDomain:v19 code:1 userInfo:v20];

    v22 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v21;
      _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_ERROR, "[!!]Error downloading image: %@", buf, 0xCu);
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke_52;
    v44[3] = &unk_1E76CDA20;
    v23 = *(a1 + 48);
    v45 = v21;
    v46 = v23;
    v17 = v21;
    dispatch_async(MEMORY[0x1E69E96A0], v44);
  }
}

void __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained downloadedImagesCache];
  v4 = [*(a1 + 32) absoluteString];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) absoluteString];
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138413058;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2048;
      v35 = v11;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "[⌛]Completed download for \nImage: %@ \nPhotoURL: %@ \nGuide Location: %@ \nDuration: %f seconds", buf, 0x2Au);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke_54;
    block[3] = &unk_1E76CDA20;
    v25 = *(a1 + 56);
    v24 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v12 = v25;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image download failed for Guide Location. \nURL: %@. \nGuide Location: %@", *(a1 + 32), *(a1 + 40)];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = MKErrorDomain;
    v26 = @"Reason";
    v27 = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v13 initWithDomain:v14 code:1 userInfo:v15];

    v17 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_ERROR, "[!!]Error downloading image: %@", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __99__MKPlaceCollectionImageProvider_loadCoverImageWithGuideLocation_size_usingImageSource_completion___block_invoke_58;
    v20[3] = &unk_1E76CDA20;
    v18 = *(a1 + 56);
    v21 = v16;
    v22 = v18;
    v19 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }
}

- (void)loadGradientCoverImageWithCuratedCollection:(id)a3 size:(CGSize)a4 contentSizeCategory:(id)a5 usingImageSource:(int64_t)a6 completion:(id)a7
{
  v9 = a3;
  v13 = a5;
  v14 = a7;
  v10 = v13;
  v11 = v14;
  v12 = v9;
  geo_isolate_sync();
}

void __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke(uint64_t a1)
{
  v81[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) desiredSizeFromFrameSize:{*(a1 + 64), *(a1 + 72)}];
  v3 = v2;
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) photos];
  v8 = [v7 firstObject];
  v58 = [v6 photoInfoWithPhoto:v8 desiredSize:{v3, v5}];

  v9 = [v58 url];
  v57 = [*(a1 + 40) collectionTitle];
  if (v9)
  {
    v10 = [*(a1 + 32) requiresGradientOperationForSource:*(a1 + 80)];
    v11 = [v9 absoluteString];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v9 path];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 80)];
    v15 = [v12 stringWithFormat:@"[Url:%@ Source:%@ preferredContentSizeCategory:%@]", v13, v14, *(a1 + 48)];

    v16 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v75 = v15;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_DEBUG, "Requesting image for ID: %@", buf, 0xCu);
    }

    v17 = [*(a1 + 32) downloadedImagesCache];
    v18 = [v17 objectForKey:v11];

    if ((v18 == 0) | v10 & 1)
    {
      if (v10 && ([*(a1 + 32) gradientImagesCache], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKey:", v15), v20 = objc_claimAutoreleasedReturnValue(), v19, v20))
      {
        v21 = MKGetCuratedCollectionsLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v75 = v15;
          _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_DEBUG, "[✔]Gradient Cache Hit. Image ID: %@", buf, 0xCu);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_34;
        block[3] = &unk_1E76CDA20;
        v22 = *(a1 + 56);
        v66 = v20;
        v67 = v22;
        v23 = v20;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        [*(a1 + 32) checkQueuesForCollectionSource:*(a1 + 80)];
        v53 = [MEMORY[0x1E695DF00] date];
        objc_initWeak(&location, *(a1 + 32));
        v31 = MKGetCuratedCollectionsLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = [v9 absoluteString];
          *buf = 138412546;
          v75 = v32;
          v76 = 2112;
          v77 = v57;
          _os_log_impl(&dword_1A2EA0000, v31, OS_LOG_TYPE_INFO, "[X]Cache Miss. Downloading and applying Gradient to Image for \nUrl: %@. \nCollection: %@", buf, 0x16u);
        }

        v33 = [MKPlaceCollectionImageDownloadOperation alloc];
        v34 = [*(a1 + 32) downloadedImagesCache];
        v56 = [(MKPlaceCollectionImageDownloadOperation *)v33 initWithUrl:v9 downloadCache:v34 cacheId:v11];

        v35 = [*(a1 + 32) downloadOperationsPair];
        v36 = v35;
        v37 = *(a1 + 80) - 1;
        if (v37 > 0xA)
        {
          v38 = @"SeeAll";
        }

        else
        {
          v38 = off_1E76C9888[v37];
        }

        v52 = [v35 objectForKey:v38];

        if (v10)
        {
          v54 = [MKPlaceCollectionImageGradientOperation alloc];
          v51 = *(a1 + 48);
          v39 = [*(a1 + 40) collectionTitle];
          v40 = [*(a1 + 32) downloadedImagesCache];
          v41 = [*(a1 + 32) gradientImagesCache];
          v42 = [*(a1 + 32) isRTL];
          [*(a1 + 32) screenScale];
          v55 = [(MKPlaceCollectionImageGradientOperation *)v54 initWithUrl:v9 size:v51 contentSizeCategory:v39 name:v40 downloadCache:v41 gradientCache:v42 isRTL:v3 screenScale:v5 cacheId:v43, v15];

          v44 = [*(a1 + 32) gradientOperationsPair];
          v45 = v44;
          v46 = *(a1 + 80) - 1;
          if (v46 > 0xA)
          {
            v47 = @"SeeAll";
          }

          else
          {
            v47 = off_1E76C9888[v46];
          }

          v48 = [v44 objectForKey:v47];

          [(MKPlaceCollectionImageGradientOperation *)v55 addDependency:v56];
        }

        else
        {
          v55 = 0;
          v48 = 0;
        }

        [v52 addOperation:v56];
        if (v10)
        {
          [v48 addOperation:v55];
          v49 = v61;
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_38;
          v61[3] = &unk_1E76C97F0;
          v50 = &v63;
          objc_copyWeak(&v63, &location);
          v61[4] = v15;
          v61[5] = v9;
          v61[6] = v57;
          v61[7] = v53;
          v62 = *(a1 + 56);
          [(MKPlaceCollectionImageGradientOperation *)v55 setCompletionBlock:v61];
        }

        else
        {
          v49 = v59;
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_2;
          v59[3] = &unk_1E76C9818;
          v50 = &v60;
          objc_copyWeak(&v60, &location);
          v59[4] = v9;
          v59[5] = v57;
          v59[6] = v53;
          v59[7] = *(a1 + 56);
          [(MKPlaceCollectionImageDownloadOperation *)v56 setCompletionBlock:v59];
        }

        objc_destroyWeak(v50);
        objc_destroyWeak(&location);
        v23 = v53;
      }
    }

    else
    {
      v30 = MKGetCuratedCollectionsLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v75 = v18;
        v76 = 2112;
        v77 = v9;
        v78 = 2112;
        v79 = v57;
        _os_log_impl(&dword_1A2EA0000, v30, OS_LOG_TYPE_DEBUG, "[✔]Collection image Cache Hit. \nImage: %@ \n Photo URL: %@ \nCollection: %@", buf, 0x20u);
      }

      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_33;
      v68[3] = &unk_1E76CDA20;
      v70 = *(a1 + 56);
      v69 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], v68);

      v23 = v70;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No image for collection: %@", v57];
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v25 = MKErrorDomain;
    v80 = @"Reason";
    v81[0] = v11;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v27 = [v24 initWithDomain:v25 code:1 userInfo:v26];

    v28 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v75 = v27;
      _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_ERROR, "[!!]Error applying gradient to image: %@", buf, 0xCu);
    }

    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_29;
    v71[3] = &unk_1E76CDA20;
    v29 = *(a1 + 56);
    v72 = v27;
    v73 = v29;
    v15 = v27;
    dispatch_async(MEMORY[0x1E69E96A0], v71);

    v18 = v73;
  }
}

void __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_38(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained gradientImagesCache];
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = [v4 copy];

  if (v5)
  {
    v6 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 40) absoluteString];
      v8 = *(a1 + 48);
      v9 = [MEMORY[0x1E695DF00] date];
      [v9 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138413058;
      v28 = v5;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v8;
      v33 = 2048;
      v34 = v10;
      _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "[⌛]Completed applying gradient to \nImage: %@ \nPhotoURL: %@ \nCollection: %@ \nDuration: %f seconds", buf, 0x2Au);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_39;
    block[3] = &unk_1E76CDA20;
    v24 = *(a1 + 64);
    v23 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v11 = v24;
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image gradient failed for Collection \nURL: %@. \n Collection: %@", *(a1 + 40), *(a1 + 48)];
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = MKErrorDomain;
    v25 = @"Reason";
    v26 = v11;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [v12 initWithDomain:v13 code:1 userInfo:v14];

    v16 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_1A2EA0000, v16, OS_LOG_TYPE_ERROR, "[!!]Error blurring image: %@", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_43;
    v19[3] = &unk_1E76CDA20;
    v17 = *(a1 + 64);
    v20 = v15;
    v21 = v17;
    v18 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }
}

void __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained downloadedImagesCache];
  v4 = [*(a1 + 32) absoluteString];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 copy];

  if (v6)
  {
    v7 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) absoluteString];
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138413058;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2048;
      v35 = v11;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "[⌛]Completed download for \nImage: %@ \nPhotoURL: %@ \nCollection: %@ \nDuration: %f seconds", buf, 0x2Au);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_44;
    block[3] = &unk_1E76CDA20;
    v25 = *(a1 + 56);
    v24 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v12 = v25;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image download failed for Collection. \nURL: %@. \nGuide Location: %@", *(a1 + 32), *(a1 + 40)];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = MKErrorDomain;
    v26 = @"Reason";
    v27 = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v13 initWithDomain:v14 code:1 userInfo:v15];

    v17 = MKGetCuratedCollectionsLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_1A2EA0000, v17, OS_LOG_TYPE_ERROR, "[!!]Error downloading image: %@", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __131__MKPlaceCollectionImageProvider_loadGradientCoverImageWithCuratedCollection_size_contentSizeCategory_usingImageSource_completion___block_invoke_48;
    v20[3] = &unk_1E76CDA20;
    v18 = *(a1 + 56);
    v21 = v16;
    v22 = v18;
    v19 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }
}

- (BOOL)requiresGradientOperationForSource:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = [&unk_1F16121E0 containsObject:v3];

  return v4 ^ 1;
}

- (void)checkQueuesForCompactCollectionSource:(int64_t)a3
{
  v4 = @"CompactCollection_SearchHome";
  if (a3 == 1)
  {
    v4 = @"CompactCollection_CitySelector";
  }

  if (a3 == 2)
  {
    v5 = @"CompactCollection_GuidesHome";
  }

  else
  {
    v5 = v4;
  }

  v6 = [(MKPlaceCollectionImageProvider *)self downloadOperationsPair];
  v10 = [v6 objectForKey:v5];

  v7 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MKPlaceCompactCollectionImageProvider.downloadOperationQueue.%@", v5];
    [v11 setName:v8];

    [v11 setQualityOfService:25];
    v9 = [(MKPlaceCollectionImageProvider *)self downloadOperationsPair];
    [v9 setObject:v11 forKey:v5];

    v7 = v11;
  }
}

- (void)checkQueuesForCollectionSource:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    v5 = @"SeeAll";
  }

  else
  {
    v5 = off_1E76C9888[a3 - 1];
  }

  v6 = [(MKPlaceCollectionImageProvider *)self downloadOperationsPair];
  v13 = [v6 objectForKey:v5];

  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MKPlaceCollectionImageProvider.downloadOperationQueue.%@", v5];
    [v13 setName:v7];

    [v13 setQualityOfService:25];
    v8 = [(MKPlaceCollectionImageProvider *)self downloadOperationsPair];
    [v8 setObject:v13 forKey:v5];
  }

  if ([(MKPlaceCollectionImageProvider *)self requiresGradientOperationForSource:a3])
  {
    v9 = [(MKPlaceCollectionImageProvider *)self gradientOperationsPair];
    v10 = [v9 objectForKey:v5];

    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MKPlaceCollectionImageProvider.gradientOperationQueue.%@", v5];
      [v10 setName:v11];

      [v10 setQualityOfService:25];
      v12 = [(MKPlaceCollectionImageProvider *)self gradientOperationsPair];
      [v12 setObject:v10 forKey:v5];
    }
  }
}

- (MKPlaceCollectionImageProvider)init
{
  v20.receiver = self;
  v20.super_class = MKPlaceCollectionImageProvider;
  v2 = [(MKPlaceCollectionImageProvider *)&v20 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    helperQueue = v2->_helperQueue;
    v2->_helperQueue = v3;

    v5 = [objc_alloc(MEMORY[0x1E69A21D8]) initWithAllowSmaller:1 cropStyle:4 format:0];
    optionsForCollectionCells = v2->_optionsForCollectionCells;
    v2->_optionsForCollectionCells = v5;

    v7 = [objc_alloc(MEMORY[0x1E69A21D8]) initWithAllowSmaller:1 cropStyle:0 format:0];
    optionsForCityBricks = v2->_optionsForCityBricks;
    v2->_optionsForCityBricks = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    gradientImagesCache = v2->_gradientImagesCache;
    v2->_gradientImagesCache = v9;

    [(NSCache *)v2->_gradientImagesCache setDelegate:v2];
    [(NSCache *)v2->_gradientImagesCache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v2->_gradientImagesCache setEvictsObjectsWithDiscardedContent:0];
    v11 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    downloadedImagesCache = v2->_downloadedImagesCache;
    v2->_downloadedImagesCache = v11;

    [(NSCache *)v2->_downloadedImagesCache setDelegate:v2];
    [(NSCache *)v2->_downloadedImagesCache setEvictsObjectsWhenApplicationEntersBackground:0];
    [(NSCache *)v2->_downloadedImagesCache setEvictsObjectsWithDiscardedContent:0];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    downloadOperationsPair = v2->_downloadOperationsPair;
    v2->_downloadOperationsPair = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    gradientOperationsPair = v2->_gradientOperationsPair;
    v2->_gradientOperationsPair = v15;

    v2->_isRTL = MKApplicationLayoutDirectionIsRightToLeft();
    v17 = +[MKSystemController sharedInstance];
    [v17 screenScale];
    v2->_screenScale = v18;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23348 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_23348, &__block_literal_global_23349);
  }

  v3 = sharedInstance_imageProvider;

  return v3;
}

void __48__MKPlaceCollectionImageProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MKPlaceCollectionImageProvider);
  v1 = sharedInstance_imageProvider;
  sharedInstance_imageProvider = v0;
}

@end