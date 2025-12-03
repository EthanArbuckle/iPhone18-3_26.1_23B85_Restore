@interface _PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing
- (BOOL)addAnalysisStateToAvailabilityStatus:(id)status error:(id *)error;
- (void)_addHighlightProcessingToAvailabilityStatus:(id)status;
- (void)_updateFeatureAvailabilityForAvailabilityStatus:(id)status;
- (void)executeWithCompletionHandler:(id)handler;
@end

@implementation _PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing

- (void)_updateFeatureAvailabilityForAvailabilityStatus:(id)status
{
  statusCopy = status;
  queue = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  dispatch_assert_queue_V2(queue);

  photosKnowledgeGraphIsReady = [statusCopy photosKnowledgeGraphIsReady];
  [statusCopy fractionOfStillAssetsWithEmbeddingsInIndex];
  v7 = v6;
  availabilityConfig = [(PHPhotoLibraryFeatureAvailabilityTask *)self availabilityConfig];
  [availabilityConfig fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
  v10 = v7 >= v9;

  [statusCopy fractionOfHighlightsEnriched];
  v12 = v11;
  availabilityConfig2 = [(PHPhotoLibraryFeatureAvailabilityTask *)self availabilityConfig];
  [availabilityConfig2 fractionOfHighlightsEnrichedThreshold];
  v15 = v14;

  if (v12 >= v15)
  {
    v16 = v10 & photosKnowledgeGraphIsReady;
  }

  else
  {
    v16 = 0;
  }

  [statusCopy setFeatureAvailability:v16];
}

- (void)_addHighlightProcessingToAvailabilityStatus:(id)status
{
  v27[2] = *MEMORY[0x1E69E9840];
  statusCopy = status;
  queue = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = PLPhotosSearchGetLog();
  v6 = os_signpost_id_generate(v5);

  v7 = v5;
  v8 = v7;
  spid = v6;
  v9 = v6 - 1;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "GlobalProcessingHighlighsProcessing", byte_19CB567AE, buf, 2u);
  }

  photoLibrary = [(PHPhotoLibraryFeatureAvailabilityTask *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  v12 = [PHAssetCollection fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v13 = [v12 count];
  if (v13)
  {
    photoLibrary2 = [(PHPhotoLibraryFeatureAvailabilityTask *)self photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

    [librarySpecificFetchOptions2 setShouldPrefetchCount:1];
    v16 = MEMORY[0x1E696AB28];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"enrichmentState", 4];
    v27[0] = v17;
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %K", @"enrichmentVersion", @"highlightVersion"];
    v27[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v20 = [v16 andPredicateWithSubpredicates:v19];
    [librarySpecificFetchOptions2 setInternalPredicate:v20];

    v21 = [PHAssetCollection fetchAssetCollectionsWithType:6 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions2];
    [statusCopy setFractionOfHighlightsEnriched:{objc_msgSend(v21, "count") / v13}];
  }

  else
  {
    [statusCopy setFractionOfHighlightsEnriched:1.0];
  }

  v22 = v8;
  v23 = v22;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v23, OS_SIGNPOST_INTERVAL_END, spid, "GlobalProcessingHighlighsProcessing", byte_19CB567AE, buf, 2u);
  }
}

- (BOOL)addAnalysisStateToAvailabilityStatus:(id)status error:(id *)error
{
  statusCopy = status;
  queue = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = PLPhotosSearchGetLog();
  v9 = os_signpost_id_generate(v8);

  v10 = v8;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "GlobalProcessingAddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = _PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing;
  v13 = [(PHPhotoLibraryFeatureAvailabilityTask *)&v18 addAnalysisStateToAvailabilityStatus:statusCopy error:error];
  if (v13)
  {
    [(_PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing *)self _addHighlightProcessingToAvailabilityStatus:statusCopy];
    v14 = v11;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
LABEL_11:
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_END, v9, "GlobalProcessingAddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
      }
    }
  }

  else
  {
    v16 = v11;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v16;
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        goto LABEL_11;
      }
    }
  }

  return v13;
}

- (void)executeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = PLPhotosSearchGetLog();
  v6 = os_signpost_id_generate(v5);

  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "GlobalProcessingFeatureAvailability", byte_19CB567AE, buf, 2u);
  }

  v9 = objc_alloc_init(PHPhotoLibraryFeatureAvailability);
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
  queue = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87___PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing_executeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E75A7588;
  objc_copyWeak(&v40, location);
  v12 = v9;
  v36 = v12;
  v38 = v47;
  v39 = buf;
  v13 = v10;
  v37 = v13;
  dispatch_async(queue, block);

  dispatch_group_enter(v13);
  queue2 = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __87___PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing_executeWithCompletionHandler___block_invoke_2;
  v29[3] = &unk_1E75A7588;
  objc_copyWeak(&v34, location);
  v15 = v12;
  v30 = v15;
  v32 = v47;
  v33 = buf;
  v16 = v13;
  v31 = v16;
  dispatch_async(queue2, v29);

  queue3 = [(PHPhotoLibraryFeatureAvailabilityTask *)self queue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3254779904;
  v21[2] = __87___PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing_executeWithCompletionHandler___block_invoke_3;
  v21[3] = &unk_1F0FC3DF8;
  objc_copyWeak(&v26, location);
  v22 = v15;
  v23 = handlerCopy;
  v24 = v47;
  v25 = buf;
  v27 = v8;
  v28 = v6;
  v18 = v8;
  v19 = handlerCopy;
  v20 = v15;
  dispatch_group_notify(v16, queue3, v21);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v40);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v47, 8);
  objc_destroyWeak(location);
}

@end