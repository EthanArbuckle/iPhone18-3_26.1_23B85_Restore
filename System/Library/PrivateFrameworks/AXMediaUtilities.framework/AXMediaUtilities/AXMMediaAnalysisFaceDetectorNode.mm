@interface AXMMediaAnalysisFaceDetectorNode
- (AXMMediaAnalysisFaceDetectorNode)initWithCoder:(id)coder;
- (id)_faceResultForUUID:(id)d inFaceDictionary:(id)dictionary;
- (void)_addFaceDetectionFeaturesToContext:(id)context fromResults:(id)results;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMMediaAnalysisFaceDetectorNode

- (AXMMediaAnalysisFaceDetectorNode)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AXMMediaAnalysisFaceDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AXMMediaAnalysisFaceDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:coder];
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v48[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  v40.receiver = self;
  v40.super_class = AXMMediaAnalysisFaceDetectorNode;
  metricsCopy = metrics;
  [(AXMEvaluationNode *)&v40 evaluate:evaluateCopy metrics:?];
  _faceNameHelper = [(AXMMediaAnalysisFaceDetectorNode *)self _faceNameHelper];
  LODWORD(metrics) = _faceNameHelper == 0;

  if (metrics)
  {
    v8 = objc_alloc_init(AXMVisionFaceNameHelper);
    [(AXMMediaAnalysisFaceDetectorNode *)self set_faceNameHelper:v8];
  }

  sourceInput = [evaluateCopy sourceInput];
  phAssetLocalIdentifier = [sourceInput phAssetLocalIdentifier];

  sourceInput2 = [evaluateCopy sourceInput];
  photoLibraryURL = [sourceInput2 photoLibraryURL];

  sourceInput3 = [evaluateCopy sourceInput];
  ciImage = [sourceInput3 ciImage];

  sourceInput4 = [evaluateCopy sourceInput];
  pixelBuffer = [sourceInput4 pixelBuffer];

  *buf = 0;
  v43 = buf;
  v44 = 0x2050000000;
  v13 = getMADVIFaceRequestClass_softClass;
  v45 = getMADVIFaceRequestClass_softClass;
  if (!getMADVIFaceRequestClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getMADVIFaceRequestClass_block_invoke;
    location[3] = &unk_1E7A1C700;
    location[4] = buf;
    __getMADVIFaceRequestClass_block_invoke(location);
    v13 = *(v43 + 3);
  }

  v14 = v13;
  _Block_object_dispose(buf, 8);
  v15 = objc_alloc_init(v13);
  v16 = dispatch_semaphore_create(0);
  objc_initWeak(location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __53__AXMMediaAnalysisFaceDetectorNode_evaluate_metrics___block_invoke;
  v35[3] = &unk_1E7A1E1B8;
  objc_copyWeak(&v39, location);
  v17 = v15;
  v36 = v17;
  v29 = evaluateCopy;
  v37 = v29;
  v18 = v16;
  v38 = v18;
  v19 = MEMORY[0x1B2700900](v35);
  v20 = +[AXMMADSService sharedInstance];
  service = [v20 service];

  if (photoLibraryURL && phAssetLocalIdentifier)
  {
    v48[0] = v17;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    v23 = [service performRequests:v22 onAssetWithLocalIdentifier:phAssetLocalIdentifier fromPhotoLibraryWithURL:photoLibraryURL completionHandler:v19];
LABEL_12:
    v24 = v23;

    goto LABEL_13;
  }

  if (ciImage)
  {
    v47 = v17;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    v23 = [service performRequests:v22 onCIImage:ciImage withOrientation:1 andIdentifier:&stru_1F23EA908 completionHandler:v19];
    goto LABEL_12;
  }

  if (pixelBuffer)
  {
    v46 = v17;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v23 = [service performRequests:v22 onPixelBuffer:objc_msgSend(pixelBuffer withOrientation:"pixelBuffer") andIdentifier:objc_msgSend(pixelBuffer completionHandler:{"orientation"), &stru_1F23EA908, v19}];
    goto LABEL_12;
  }

  v24 = 0xFFFFFFFFLL;
LABEL_13:
  v25 = dispatch_time(0, 100000000);
  if (dispatch_semaphore_wait(v18, v25))
  {
    v26 = 100000000;
    do
    {
      if (v26 >= 0x2540BE401)
      {
        v27 = AXMediaLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(AXMMediaAnalysisFaceDetectorNode *)buf evaluate:v27 metrics:?];
        }

        [service cancelRequestID:v24];
      }

      v28 = dispatch_time(0, 100000000);
      v26 += 100000000;
    }

    while (dispatch_semaphore_wait(v18, v28));
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(location);
}

void __53__AXMMediaAnalysisFaceDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = AXMediaLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 32) results];
    v11[0] = 67109634;
    v11[1] = a2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v10;
    _os_log_debug_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Face Detection results: requestID: %d error: %@ results: %@", v11, 0x1Cu);
  }

  if (v5)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__AXMMediaAnalysisFaceDetectorNode_evaluate_metrics___block_invoke_cold_1(v5, v8);
    }
  }

  else if (a2 == -1)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__AXMMediaAnalysisFaceDetectorNode_evaluate_metrics___block_invoke_cold_2(v8);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v8 = [*(a1 + 32) results];
    [WeakRetained _addFaceDetectionFeaturesToContext:v9 fromResults:v8];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_addFaceDetectionFeaturesToContext:(id)context fromResults:(id)results
{
  v105 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resultsCopy = results;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([resultsCopy count])
  {
    firstObject = [resultsCopy firstObject];
    v96 = 0;
    v97 = &v96;
    v98 = 0x2050000000;
    v8 = getMADVIFaceResultClass_softClass;
    v99 = getMADVIFaceResultClass_softClass;
    if (!getMADVIFaceResultClass_softClass)
    {
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __getMADVIFaceResultClass_block_invoke;
      v95[3] = &unk_1E7A1C700;
      v95[4] = &v96;
      __getMADVIFaceResultClass_block_invoke(v95);
      v8 = v97[3];
    }

    v9 = v8;
    _Block_object_dispose(&v96, 8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      firstObject2 = [resultsCopy firstObject];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      faceRectanglesObservations = [firstObject2 faceRectanglesObservations];
      v12 = [faceRectanglesObservations countByEnumeratingWithState:&v91 objects:v104 count:16];
      if (v12)
      {
        v13 = *v92;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v92 != v13)
            {
              objc_enumerationMutation(faceRectanglesObservations);
            }

            v15 = *(*(&v91 + 1) + 8 * i);
            uuid = [v15 uuid];
            v17 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:uuid inFaceDictionary:dictionary];

            [v17 setFaceId:{objc_msgSend(v15, "faceId")}];
            uuid2 = [v15 uuid];
            [v17 setUuid:uuid2];

            [v15 boundingBox];
            [v17 setFrame:?];
            [v15 confidence];
            [v17 setRectanglesConfidence:v19];
          }

          v12 = [faceRectanglesObservations countByEnumeratingWithState:&v91 objects:v104 count:16];
        }

        while (v12);
      }

      sourceInput = [contextCopy sourceInput];
      photoLibraryURL = [sourceInput photoLibraryURL];

      _faceNameHelper = [(AXMMediaAnalysisFaceDetectorNode *)self _faceNameHelper];
      LODWORD(sourceInput) = [_faceNameHelper prepareForLookupWithPhotoLibraryURL:photoLibraryURL];

      if (sourceInput)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        faceprintObservations = [firstObject2 faceprintObservations];
        v23 = [faceprintObservations countByEnumeratingWithState:&v87 objects:v103 count:16];
        if (v23)
        {
          v24 = *v88;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v88 != v24)
              {
                objc_enumerationMutation(faceprintObservations);
              }

              v26 = *(*(&v87 + 1) + 8 * j);
              uuid3 = [v26 uuid];
              v28 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:uuid3 inFaceDictionary:dictionary];

              _faceNameHelper2 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceNameHelper];
              v30 = [_faceNameHelper2 nameForFaceObservation:v26];
              [v28 setName:v30];

              [v26 confidence];
              [v28 setNameConfidence:v31];
            }

            v23 = [faceprintObservations countByEnumeratingWithState:&v87 objects:v103 count:16];
          }

          while (v23);
        }
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = [firstObject2 faceAttributesObservations];
      v32 = [obj countByEnumeratingWithState:&v83 objects:v102 count:16];
      if (v32)
      {
        v33 = *v84;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v84 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v35 = *(*(&v83 + 1) + 8 * k);
            uuid4 = [v35 uuid];
            v37 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:uuid4 inFaceDictionary:dictionary];

            v38 = [AXMVisionFeatureFaceAttributes alloc];
            faceAttributes = [v35 faceAttributes];
            v40 = [(AXMVisionFeatureFaceAttributes *)v38 initWithVisionFaceAttributes:faceAttributes];
            [v37 setAttributes:v40];

            v41 = +[AXMVisionFeatureFaceAttributes defaultExcludeOptions];
            attributes = [v37 attributes];
            [attributes setExcludeOptions:v41];

            [v35 confidence];
            [v37 setAttributesConfidence:v43];
          }

          v32 = [obj countByEnumeratingWithState:&v83 objects:v102 count:16];
        }

        while (v32);
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      faceExpressionsObservations = [firstObject2 faceExpressionsObservations];
      v45 = [faceExpressionsObservations countByEnumeratingWithState:&v79 objects:v101 count:16];
      if (v45)
      {
        v46 = *v80;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v80 != v46)
            {
              objc_enumerationMutation(faceExpressionsObservations);
            }

            v48 = *(*(&v79 + 1) + 8 * m);
            uuid5 = [v48 uuid];
            v50 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:uuid5 inFaceDictionary:dictionary];

            expressionsAndConfidence = [v48 expressionsAndConfidence];
            [v50 setExpressionsAndConfidence:expressionsAndConfidence];
          }

          v45 = [faceExpressionsObservations countByEnumeratingWithState:&v79 objects:v101 count:16];
        }

        while (v45);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      obja = [firstObject2 faceLandmarksObservations];
      v52 = [obja countByEnumeratingWithState:&v75 objects:v100 count:16];
      if (v52)
      {
        v53 = *v76;
        do
        {
          for (n = 0; n != v52; ++n)
          {
            if (*v76 != v53)
            {
              objc_enumerationMutation(obja);
            }

            v55 = *(*(&v75 + 1) + 8 * n);
            uuid6 = [v55 uuid];
            v57 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:uuid6 inFaceDictionary:dictionary];

            v58 = [AXMVisionFeatureFaceLandmarks alloc];
            landmarks = [v55 landmarks];
            v60 = [(AXMVisionFeatureFaceLandmarks *)v58 initWithVisionFaceLandmarks:landmarks];
            [v57 setLandmarks:v60];

            v61 = [AXMVisionFeatureFaceLandmarks alloc];
            landmarks3d = [v55 landmarks3d];
            v63 = [(AXMVisionFeatureFaceLandmarks *)v61 initWithVisionFaceLandmarks:landmarks3d];
            [v57 setLandmarks3d:v63];

            [v55 confidence];
            [v57 setLandmarksConfidence:v64];
          }

          v52 = [obja countByEnumeratingWithState:&v75 objects:v100 count:16];
        }

        while (v52);
      }
    }
  }

  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __83__AXMMediaAnalysisFaceDetectorNode__addFaceDetectionFeaturesToContext_fromResults___block_invoke;
  v73[3] = &unk_1E7A1C9D8;
  v74 = contextCopy;
  v65 = contextCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v73];
  [v65 addEvaluatedFeatureType:31];
}

void __83__AXMMediaAnalysisFaceDetectorNode__addFaceDetectionFeaturesToContext_fromResults___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = AXMediaLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __83__AXMMediaAnalysisFaceDetectorNode__addFaceDetectionFeaturesToContext_fromResults___block_invoke_cold_1(v4, v5);
  }

  v6 = *(a1 + 32);
  [v6 size];
  v7 = [AXMVisionFeature featureWithMediaAnalysisFaceDetectionResult:v4 canvasSize:?];
  [v6 appendFeature:v7];
}

- (id)_faceResultForUUID:(id)d inFaceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uUIDString = [d UUIDString];
  v7 = [dictionaryCopy objectForKeyedSubscript:uUIDString];
  if (!v7)
  {
    v7 = objc_alloc_init(AXMVisionFeatureFaceDetectionResult);
    [dictionaryCopy setObject:v7 forKeyedSubscript:uUIDString];
  }

  return v7;
}

- (void)evaluate:(os_log_t)log metrics:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1AE37B000, log, OS_LOG_TYPE_ERROR, "AXM Media Analysis: Face Detection request timed out", buf, 2u);
}

void __53__AXMMediaAnalysisFaceDetectorNode_evaluate_metrics___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Error in face analysis: %@", &v2, 0xCu);
}

void __83__AXMMediaAnalysisFaceDetectorNode__addFaceDetectionFeaturesToContext_fromResults___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 name];
  v5 = [a1 attributes];
  v6 = [v5 accessibilityLabelForAttributes];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "AXM Media analysis: results : %@ %@", &v7, 0x16u);
}

@end