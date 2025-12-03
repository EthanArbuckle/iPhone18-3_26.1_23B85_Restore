@interface PHPhotoLibraryFeatureAvailabilityTask
+ (id)availabilityStatusTaskForFeature:(unint64_t)feature photoLibrary:(id)library availabilityConfig:(id)config error:(id *)error;
- (BOOL)_recordCaptionAndEmbeddingAnalysisToAvailability:(id)availability error:(id *)error;
- (BOOL)_recordFaceAndSceneAnalysisToAvailability:(id)availability error:(id *)error;
- (BOOL)addAnalysisStateToAvailabilityStatus:(id)status error:(id *)error;
- (BOOL)addGraphAvailabilityToAvailabilityStatus:(id)status error:(id *)error;
- (BOOL)addIndexingStateToAvailabilityStatus:(id)status error:(id *)error;
- (PHPhotoLibraryFeatureAvailabilityTask)initWithFeature:(unint64_t)feature photoLibrary:(id)library availabilityConfig:(id)config;
- (double)_fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs:(id)ds error:(id *)error;
- (void)computeSearchDonationProgressForTaskID:(unint64_t)d libraryClient:(id)client completionHandler:(id)handler;
- (void)executeWithCompletionHandler:(id)handler;
@end

@implementation PHPhotoLibraryFeatureAvailabilityTask

- (double)_fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  photoLibrary = [(PHPhotoLibraryFeatureAvailabilityTask *)self photoLibrary];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__24335;
  v23 = __Block_byref_object_dispose__24336;
  v24 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__PHPhotoLibraryFeatureAvailabilityTask__fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs_error___block_invoke;
  v12[3] = &unk_1E75A75B0;
  v8 = photoLibrary;
  v15 = &v19;
  v16 = &v25;
  v13 = v8;
  selfCopy = self;
  v17 = &v33;
  v18 = &v29;
  [dsCopy enumerateKeysAndObjectsUsingBlock:v12];
  if (*(v26 + 24) == 1)
  {
    v9 = 0.0;
    if (error)
    {
      *error = v20[5];
    }
  }

  else
  {
    v10 = v34[3];
    if (v10)
    {
      v9 = v30[3] / v10;
    }

    else
    {
      v9 = 1.0;
    }
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v9;
}

void __101__PHPhotoLibraryFeatureAvailabilityTask__fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v41;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = a1[4];
        v14 = [v6 unsignedIntValue];
        v15 = [v12 unsignedIntValue];
        v16 = *(a1[6] + 8);
        v39 = *(v16 + 40);
        v17 = [v13 countOfAllAssetsForMediaProcessingTaskID:v14 priority:v15 sceneConfidenceThreshold:&v39 error:0.0];
        objc_storeStrong((v16 + 40), v39);
        if (*(*(a1[6] + 8) + 40))
        {
          *a4 = 1;
          *(*(a1[7] + 8) + 24) = 1;
          v18 = obj;

          goto LABEL_25;
        }

        v9 += v17;
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = obj;
  v19 = [v31 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v32 = *v36;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v23 = *(*(&v35 + 1) + 8 * j);
        v24 = a1[4];
        v25 = [v6 unsignedIntValue];
        v26 = [v23 unsignedIntValue];
        v27 = *(a1[5] + 56);
        v28 = *(a1[6] + 8);
        v34 = *(v28 + 40);
        v29 = [v24 countOfProcessedAssetsForMediaProcessingTaskID:v25 priority:v26 algorithmVersion:v27 sceneConfidenceThreshold:&v34 error:0.0];
        objc_storeStrong((v28 + 40), v34);
        if (*(*(a1[6] + 8) + 40))
        {
          *a4 = 1;
          *(*(a1[7] + 8) + 24) = 1;

          goto LABEL_24;
        }

        v21 += v29;
      }

      v20 = [v31 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 0;
  }

  *(*(a1[8] + 8) + 24) += v9;
  *(*(a1[9] + 8) + 24) += v21;
LABEL_24:
  v18 = obj;
LABEL_25:
}

- (BOOL)_recordCaptionAndEmbeddingAnalysisToAvailability:(id)availability error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RecordCaptionAndEmbeddingAnalysisToAvailability", byte_19CB567AE, buf, 2u);
  }

  v35 = &unk_1F102CFC8;
  v36[0] = &unk_1F102E0A8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v31 = 0;
  [(PHPhotoLibraryFeatureAvailabilityTask *)self _fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs:v12 error:&v31];
  v14 = v13;
  v15 = v31;
  if (v15)
  {
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    v18 = v10;
    v19 = v18;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_END, v8, "RecordCaptionAndEmbeddingAnalysisToAvailability", byte_19CB567AE, buf, 2u);
    }

    v20 = 0;
  }

  else
  {
    v33[0] = &unk_1F102CFE0;
    v33[1] = &unk_1F102CFC8;
    v34[0] = &unk_1F102E0C0;
    v34[1] = &unk_1F102E0D8;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v30 = 0;
    [(PHPhotoLibraryFeatureAvailabilityTask *)self _fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs:v21 error:&v30];
    v23 = v22;
    v24 = v30;
    if (v24)
    {
      v16 = v24;
      if (error)
      {
        v25 = v24;
        *error = v16;
      }

      v26 = v10;
      v27 = v26;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v27, OS_SIGNPOST_INTERVAL_END, v8, "RecordCaptionAndEmbeddingAnalysisToAvailability", byte_19CB567AE, buf, 2u);
      }

      v20 = 0;
    }

    else
    {
      [availabilityCopy setFractionOfCuratedAssetsWithCaptions:v14];
      [availabilityCopy setFractionOfCuratedAssetsWithEmbeddings:v14];
      [availabilityCopy setFractionOfAssetsWithCaptions:v23];
      [availabilityCopy setFractionOfAssetsWithEmbeddings:v23];
      v28 = v10;
      v16 = v28;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v16, OS_SIGNPOST_INTERVAL_END, v8, "RecordCaptionAndEmbeddingAnalysisToAvailability", byte_19CB567AE, buf, 2u);
      }

      v20 = 1;
    }

    v12 = v21;
  }

  return v20;
}

- (BOOL)_recordFaceAndSceneAnalysisToAvailability:(id)availability error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  availabilityCopy = availability;
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RecordFaceAndSceneAnalysisToAvailability", byte_19CB567AE, buf, 2u);
  }

  v35 = &unk_1F102CF80;
  v36[0] = &unk_1F102E078;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  v31 = 0;
  [(PHPhotoLibraryFeatureAvailabilityTask *)self _fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs:v12 error:&v31];
  v14 = v13;
  v15 = v31;
  if (v15)
  {
    v16 = v15;
    if (error)
    {
      v17 = v15;
      *error = v16;
    }

    v18 = v10;
    v19 = v18;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_END, v8, "RecordFaceAndSceneAnalysisToAvailability", byte_19CB567AE, buf, 2u);
    }

    v20 = 0;
  }

  else
  {
    v33 = &unk_1F102CFB0;
    v34 = &unk_1F102E090;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v30 = 0;
    [(PHPhotoLibraryFeatureAvailabilityTask *)self _fractionOfAssetsProcessedForPrioritiesByMediaTaskIDs:v21 error:&v30];
    v23 = v22;
    v24 = v30;
    if (v24)
    {
      v16 = v24;
      if (error)
      {
        v25 = v24;
        *error = v16;
      }

      v26 = v10;
      v27 = v26;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v27, OS_SIGNPOST_INTERVAL_END, v8, "RecordFaceAndSceneAnalysisToAvailability", byte_19CB567AE, buf, 2u);
      }

      v20 = 0;
    }

    else
    {
      [availabilityCopy setFractionOfAssetsWithFaceAnalysis:v14];
      [availabilityCopy setFractionOfAssetsWithSceneAnalysis:v23];
      v28 = v10;
      v16 = v28;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v16, OS_SIGNPOST_INTERVAL_END, v8, "RecordFaceAndSceneAnalysisToAvailability", byte_19CB567AE, buf, 2u);
      }

      v20 = 1;
    }

    v12 = v21;
  }

  return v20;
}

- (BOOL)addIndexingStateToAvailabilityStatus:(id)status error:(id *)error
{
  statusCopy = status;
  dispatch_assert_queue_V2(self->_queue);
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "AddIndexingStateToAvailability", byte_19CB567AE, buf, 2u);
  }

  photoLibrary = self->_photoLibrary;
  v24 = 0;
  v12 = [(PHPhotoLibrary *)photoLibrary countOfAllAssetsForMediaProcessingTaskID:17 priority:1 sceneConfidenceThreshold:&v24 error:0.0];
  v13 = v24;
  if (v13)
  {
    if (error)
    {
LABEL_6:
      v13 = v13;
      v14 = 0;
      *error = v13;
      goto LABEL_17;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_17;
  }

  [statusCopy setNumberOfCuratedAssets:v12];
  v15 = self->_photoLibrary;
  versionProvider = self->_versionProvider;
  v23 = 0;
  v17 = [(PHPhotoLibrary *)v15 countOfProcessedAssetsForMediaProcessingTaskID:17 priority:1 algorithmVersion:versionProvider sceneConfidenceThreshold:&v23 error:0.0];
  v13 = v23;
  if (v13)
  {
    if (error)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v12)
  {
    v18 = v17 / v12;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = fmin(v18, 1.0);
  [statusCopy setFractionOfStillAssetsWithEmbeddingsInIndex:v19];
  [statusCopy setFractionOfStillAssetsWithCaptions:v19];
  v20 = v10;
  v21 = v20;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_END, v8, "AddIndexingStateToAvailability", byte_19CB567AE, buf, 2u);
  }

  v13 = 0;
  v14 = 1;
LABEL_17:

  return v14;
}

- (BOOL)addGraphAvailabilityToAvailabilityStatus:(id)status error:(id *)error
{
  statusCopy = status;
  dispatch_assert_queue_V2(self->_queue);
  v7 = PLPhotosSearchGetLog();
  v8 = os_signpost_id_generate(v7);

  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PhotosKnowledgeGraphAvailability", byte_19CB567AE, buf, 2u);
  }

  photoAnalysisClient = [(PHPhotoLibrary *)self->_photoLibrary photoAnalysisClient];
  v13 = photoAnalysisClient;
  if (photoAnalysisClient)
  {
    v14 = [photoAnalysisClient requestGraphStatus:error];
    v15 = v14;
    v16 = v14 != 0;
    if (v14)
    {
      [statusCopy setPhotosKnowledgeGraphIsReady:{-[NSObject availability](v14, "availability") == 2}];
      v17 = v10;
      if (v11 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }

      v18 = v17;
      if (!os_signpost_enabled(v17))
      {
        goto LABEL_21;
      }

      v23 = 0;
      v19 = &v23;
    }

    else
    {
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Could not get graph status."];
      }

      v21 = v10;
      if (v11 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }

      v18 = v21;
      if (!os_signpost_enabled(v21))
      {
        goto LABEL_21;
      }

      *v24 = 0;
      v19 = v24;
    }

    _os_signpost_emit_with_name_impl(&dword_19C86F000, v18, OS_SIGNPOST_INTERVAL_END, v8, "PhotosKnowledgeGraphAvailability", byte_19CB567AE, v19, 2u);
LABEL_21:

    goto LABEL_22;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Could not get PhotoAnalysis client."];
  }

  v20 = v10;
  v15 = v20;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v15, OS_SIGNPOST_INTERVAL_END, v8, "PhotosKnowledgeGraphAvailability", byte_19CB567AE, v25, 2u);
  }

  v16 = 0;
LABEL_22:

  return v16;
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
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
  }

  photoLibrary = [(PHPhotoLibraryFeatureAvailabilityTask *)self photoLibrary];
  photoAnalysisClient = [photoLibrary photoAnalysisClient];

  if (photoAnalysisClient)
  {
    v33 = 0;
    v15 = [(PHPhotoLibraryFeatureAvailabilityTask *)self _recordFaceAndSceneAnalysisToAvailability:statusCopy error:&v33];
    v16 = v33;
    v17 = v16;
    if (!v15)
    {
      if (error)
      {
        v26 = v16;
        *error = v17;
      }

      v27 = v11;
      v21 = v27;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_END, v9, "AddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
      }

      v22 = 0;
      v19 = v17;
      goto LABEL_34;
    }

    v32 = v16;
    v18 = [(PHPhotoLibraryFeatureAvailabilityTask *)self _recordCaptionAndEmbeddingAnalysisToAvailability:statusCopy error:&v32];
    v19 = v32;

    if (!v18)
    {
      if (error)
      {
        v28 = v19;
        *error = v19;
      }

      v29 = v11;
      v21 = v29;
      if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19C86F000, v21, OS_SIGNPOST_INTERVAL_END, v9, "AddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
      }

      v22 = 0;
      goto LABEL_34;
    }

    v20 = [photoAnalysisClient requestGraphStatus:error];
    v21 = v20;
    v22 = v20 != 0;
    if (v20)
    {
      [statusCopy setPhotosKnowledgeGraphIsReady:{-[NSObject availability](v20, "availability") == 2}];
      v23 = v11;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_33;
      }

      v24 = v23;
      if (!os_signpost_enabled(v23))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    else
    {
      v30 = v11;
      if (v12 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_33;
      }

      v24 = v30;
      if (!os_signpost_enabled(v30))
      {
        goto LABEL_33;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_19C86F000, v24, OS_SIGNPOST_INTERVAL_END, v9, "AddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
LABEL_33:

LABEL_34:
    goto LABEL_35;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Could not get PhotoAnalysis client."];
  }

  v25 = v11;
  v19 = v25;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v19, OS_SIGNPOST_INTERVAL_END, v9, "AddAnalysisStateToAvailability", byte_19CB567AE, buf, 2u);
  }

  v22 = 0;
LABEL_35:

  return v22;
}

- (void)computeSearchDonationProgressForTaskID:(unint64_t)d libraryClient:(id)client completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  handlerCopy = handler;
  v10 = PLPhotosSearchGetLog();
  v11 = os_signpost_id_generate(v10);

  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ComputeSearchDonationProgress", byte_19CB567AE, buf, 2u);
  }

  if (clientCopy)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:d];
    v24[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3254779904;
    v19[2] = __112__PHPhotoLibraryFeatureAvailabilityTask_computeSearchDonationProgressForTaskID_libraryClient_completionHandler___block_invoke;
    v19[3] = &unk_1F0FC3E68;
    v19[4] = self;
    v20 = handlerCopy;
    v21 = v13;
    v22 = v11;
    [clientCopy searchDonationProgressForTaskIDs:v15 completionHandler:v19];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Library client is nil"];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v16);
    v17 = v13;
    v18 = v17;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19C86F000, v18, OS_SIGNPOST_INTERVAL_END, v11, "ComputeSearchDonationProgress", byte_19CB567AE, buf, 2u);
    }
  }
}

void __112__PHPhotoLibraryFeatureAvailabilityTask_computeSearchDonationProgressForTaskID_libraryClient_completionHandler___block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3254779904;
  block[2] = __112__PHPhotoLibraryFeatureAvailabilityTask_computeSearchDonationProgressForTaskID_libraryClient_completionHandler___block_invoke_2;
  block[3] = &unk_1F0FC3E30;
  v22 = a2;
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v11;
  v18 = a3;
  v19 = a4;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v20 = v12;
  v21 = v13;
  v14 = v9;
  dispatch_async(v10, block);
}

void __112__PHPhotoLibraryFeatureAvailabilityTask_computeSearchDonationProgressForTaskID_libraryClient_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 64);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_19C86F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ComputeSearchDonationProgress", byte_19CB567AE, v5, 2u);
  }
}

- (void)executeWithCompletionHandler:(id)handler
{
  v3 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v5 = [v3 ph_errorWithCode:-1 localizedDescription:@"Base class execute not supported."];
  handlerCopy[2](handlerCopy, 0, v5);
}

- (PHPhotoLibraryFeatureAvailabilityTask)initWithFeature:(unint64_t)feature photoLibrary:(id)library availabilityConfig:(id)config
{
  libraryCopy = library;
  configCopy = config;
  v22.receiver = self;
  v22.super_class = PHPhotoLibraryFeatureAvailabilityTask;
  v11 = [(PHPhotoLibraryFeatureAvailabilityTask *)&v22 init];
  if (v11)
  {
    v12 = +[PHMediaProcessingAlgorithmVersionProvider providerWithCurrentVersions];
    versionProvider = v11->_versionProvider;
    v11->_versionProvider = v12;

    [(PHMediaProcessingAlgorithmVersionProvider *)v11->_versionProvider setSceneAnalysisVersion:1];
    [(PHMediaProcessingAlgorithmVersionProvider *)v11->_versionProvider setFaceAnalysisVersion:1];
    [(PHMediaProcessingAlgorithmVersionProvider *)v11->_versionProvider setMediaAnalysisVersion:66];
    [(PHMediaProcessingAlgorithmVersionProvider *)v11->_versionProvider setMediaAnalysisImageVersion:66];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    taskID = v11->_taskID;
    v11->_taskID = uUIDString;

    v11->_feature = feature;
    objc_storeStrong(&v11->_photoLibrary, library);
    v11->_lock._os_unfair_lock_opaque = 0;
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.photolibrary.availability", v17);
    queue = v11->_queue;
    v11->_queue = v18;

    objc_storeStrong(&v11->_availabilityConfig, config);
    v20 = v11;
  }

  return v11;
}

+ (id)availabilityStatusTaskForFeature:(unint64_t)feature photoLibrary:(id)library availabilityConfig:(id)config error:(id *)error
{
  libraryCopy = library;
  configCopy = config;
  if (feature == 6)
  {
    v11 = [_PHPhotoLibraryFeatureAvailabilityTaskGlobalProcessing alloc];
    v12 = 6;
    goto LABEL_5;
  }

  if (feature == 1)
  {
    v11 = [_PHPhotoLibraryFeatureAvailabilityTaskMemoryCreation alloc];
    v12 = 1;
LABEL_5:
    v13 = [(PHPhotoLibraryFeatureAvailabilityTask *)v11 initWithFeature:v12 photoLibrary:libraryCopy availabilityConfig:configCopy];
    goto LABEL_9;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] ph_errorWithCode:-1 localizedDescription:@"Feature availability status for feature not yet supported."];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

@end