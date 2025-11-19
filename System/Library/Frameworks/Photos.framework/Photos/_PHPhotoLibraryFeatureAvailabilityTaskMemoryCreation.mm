@interface _PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation
- (_PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation)initWithFeature:(unint64_t)a3 photoLibrary:(id)a4 availabilityConfig:(id)a5;
- (void)_updateFeatureAvailabilityForAvailabilityStatus:(id)a3;
- (void)executeWithCompletionHandler:(id)a3;
@end

@implementation _PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation

- (void)_updateFeatureAvailabilityForAvailabilityStatus:(id)a3
{
  v16 = a3;
  v4 = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [v16 photosKnowledgeGraphIsReady];
  [v16 fractionOfStillAssetsWithEmbeddingsInIndex];
  v7 = v6;
  v8 = [(PHPhotoLibraryFeatureAvailabilityTask *)self availabilityConfig];
  [v8 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
  v10 = v9;

  v11 = [v16 numberOfCuratedAssets];
  v12 = [(PHPhotoLibraryFeatureAvailabilityTask *)self availabilityConfig];
  v13 = [v12 minimumNumberOfCuratedAssets];

  if (v7 >= v10)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  if (v11 >= v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v16 setFeatureAvailability:v15];
  [v16 setStillAssetEmbeddingsAreIndexedEnough:v7 >= v10];
  [v16 setLibraryHasEnoughCuratedAssets:v11 >= v13];
}

- (void)executeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = PLPhotosSearchGetLog();
  v6 = os_signpost_id_generate(v5);

  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "MemoriesCreationFeatureAvailability", byte_19CB567AE, buf, 2u);
  }

  v9 = [[PHPhotoLibraryFeatureAvailability alloc] initWithFeature:[(PHPhotoLibraryFeatureAvailabilityTask *)self feature]];
  v10 = dispatch_group_create();
  objc_initWeak(location, self);
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 1;
  *buf = 0;
  v42 = buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24335;
  v45 = __Block_byref_object_dispose__24336;
  v46 = 0;
  dispatch_group_enter(v10);
  v11 = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85___PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation_executeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E75A7588;
  objc_copyWeak(&v40, location);
  v12 = v9;
  v36 = v12;
  v38 = v47;
  v39 = buf;
  v13 = v10;
  v37 = v13;
  dispatch_async(v11, block);

  dispatch_group_enter(v13);
  v14 = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __85___PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation_executeWithCompletionHandler___block_invoke_2;
  v29[3] = &unk_1E75A7588;
  objc_copyWeak(&v34, location);
  v15 = v12;
  v30 = v15;
  v32 = v47;
  v33 = buf;
  v16 = v13;
  v31 = v16;
  dispatch_async(v14, v29);

  v17 = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __85___PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation_executeWithCompletionHandler___block_invoke_3;
  v21[3] = &unk_1F0FC3DF8;
  objc_copyWeak(&v26, location);
  v22 = v15;
  v23 = v4;
  v24 = v47;
  v25 = buf;
  v27 = v8;
  v28 = v6;
  v18 = v8;
  v19 = v4;
  v20 = v15;
  dispatch_group_notify(v16, v17, v21);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v40);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v47, 8);
  objc_destroyWeak(location);
}

- (_PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation)initWithFeature:(unint64_t)a3 photoLibrary:(id)a4 availabilityConfig:(id)a5
{
  v9.receiver = self;
  v9.super_class = _PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation;
  v5 = [(PHPhotoLibraryFeatureAvailabilityTask *)&v9 initWithFeature:a3 photoLibrary:a4 availabilityConfig:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end