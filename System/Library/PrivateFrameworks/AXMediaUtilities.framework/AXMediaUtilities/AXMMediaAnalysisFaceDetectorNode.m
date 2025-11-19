@interface AXMMediaAnalysisFaceDetectorNode
- (AXMMediaAnalysisFaceDetectorNode)initWithCoder:(id)a3;
- (id)_faceResultForUUID:(id)a3 inFaceDictionary:(id)a4;
- (void)_addFaceDetectionFeaturesToContext:(id)a3 fromResults:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMMediaAnalysisFaceDetectorNode

- (AXMMediaAnalysisFaceDetectorNode)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXMMediaAnalysisFaceDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = AXMMediaAnalysisFaceDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:a3];
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v40.receiver = self;
  v40.super_class = AXMMediaAnalysisFaceDetectorNode;
  v30 = a4;
  [(AXMEvaluationNode *)&v40 evaluate:v6 metrics:?];
  v7 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceNameHelper];
  LODWORD(a4) = v7 == 0;

  if (a4)
  {
    v8 = objc_alloc_init(AXMVisionFaceNameHelper);
    [(AXMMediaAnalysisFaceDetectorNode *)self set_faceNameHelper:v8];
  }

  v9 = [v6 sourceInput];
  v33 = [v9 phAssetLocalIdentifier];

  v10 = [v6 sourceInput];
  v34 = [v10 photoLibraryURL];

  v11 = [v6 sourceInput];
  v32 = [v11 ciImage];

  v12 = [v6 sourceInput];
  v31 = [v12 pixelBuffer];

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
  v29 = v6;
  v37 = v29;
  v18 = v16;
  v38 = v18;
  v19 = MEMORY[0x1B2700900](v35);
  v20 = +[AXMMADSService sharedInstance];
  v21 = [v20 service];

  if (v34 && v33)
  {
    v48[0] = v17;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    v23 = [v21 performRequests:v22 onAssetWithLocalIdentifier:v33 fromPhotoLibraryWithURL:v34 completionHandler:v19];
LABEL_12:
    v24 = v23;

    goto LABEL_13;
  }

  if (v32)
  {
    v47 = v17;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    v23 = [v21 performRequests:v22 onCIImage:v32 withOrientation:1 andIdentifier:&stru_1F23EA908 completionHandler:v19];
    goto LABEL_12;
  }

  if (v31)
  {
    v46 = v17;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    v23 = [v21 performRequests:v22 onPixelBuffer:objc_msgSend(v31 withOrientation:"pixelBuffer") andIdentifier:objc_msgSend(v31 completionHandler:{"orientation"), &stru_1F23EA908, v19}];
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

        [v21 cancelRequestID:v24];
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

- (void)_addFaceDetectionFeaturesToContext:(id)a3 fromResults:(id)a4
{
  v105 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v70 = a4;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  if ([v70 count])
  {
    v7 = [v70 firstObject];
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
      v68 = [v70 firstObject];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v11 = [v68 faceRectanglesObservations];
      v12 = [v11 countByEnumeratingWithState:&v91 objects:v104 count:16];
      if (v12)
      {
        v13 = *v92;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v92 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v91 + 1) + 8 * i);
            v16 = [v15 uuid];
            v17 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:v16 inFaceDictionary:v6];

            [v17 setFaceId:{objc_msgSend(v15, "faceId")}];
            v18 = [v15 uuid];
            [v17 setUuid:v18];

            [v15 boundingBox];
            [v17 setFrame:?];
            [v15 confidence];
            [v17 setRectanglesConfidence:v19];
          }

          v12 = [v11 countByEnumeratingWithState:&v91 objects:v104 count:16];
        }

        while (v12);
      }

      v20 = [v69 sourceInput];
      v66 = [v20 photoLibraryURL];

      v21 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceNameHelper];
      LODWORD(v20) = [v21 prepareForLookupWithPhotoLibraryURL:v66];

      if (v20)
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v22 = [v68 faceprintObservations];
        v23 = [v22 countByEnumeratingWithState:&v87 objects:v103 count:16];
        if (v23)
        {
          v24 = *v88;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v88 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v87 + 1) + 8 * j);
              v27 = [v26 uuid];
              v28 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:v27 inFaceDictionary:v6];

              v29 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceNameHelper];
              v30 = [v29 nameForFaceObservation:v26];
              [v28 setName:v30];

              [v26 confidence];
              [v28 setNameConfidence:v31];
            }

            v23 = [v22 countByEnumeratingWithState:&v87 objects:v103 count:16];
          }

          while (v23);
        }
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = [v68 faceAttributesObservations];
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
            v36 = [v35 uuid];
            v37 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:v36 inFaceDictionary:v6];

            v38 = [AXMVisionFeatureFaceAttributes alloc];
            v39 = [v35 faceAttributes];
            v40 = [(AXMVisionFeatureFaceAttributes *)v38 initWithVisionFaceAttributes:v39];
            [v37 setAttributes:v40];

            v41 = +[AXMVisionFeatureFaceAttributes defaultExcludeOptions];
            v42 = [v37 attributes];
            [v42 setExcludeOptions:v41];

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
      v44 = [v68 faceExpressionsObservations];
      v45 = [v44 countByEnumeratingWithState:&v79 objects:v101 count:16];
      if (v45)
      {
        v46 = *v80;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v80 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = *(*(&v79 + 1) + 8 * m);
            v49 = [v48 uuid];
            v50 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:v49 inFaceDictionary:v6];

            v51 = [v48 expressionsAndConfidence];
            [v50 setExpressionsAndConfidence:v51];
          }

          v45 = [v44 countByEnumeratingWithState:&v79 objects:v101 count:16];
        }

        while (v45);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      obja = [v68 faceLandmarksObservations];
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
            v56 = [v55 uuid];
            v57 = [(AXMMediaAnalysisFaceDetectorNode *)self _faceResultForUUID:v56 inFaceDictionary:v6];

            v58 = [AXMVisionFeatureFaceLandmarks alloc];
            v59 = [v55 landmarks];
            v60 = [(AXMVisionFeatureFaceLandmarks *)v58 initWithVisionFaceLandmarks:v59];
            [v57 setLandmarks:v60];

            v61 = [AXMVisionFeatureFaceLandmarks alloc];
            v62 = [v55 landmarks3d];
            v63 = [(AXMVisionFeatureFaceLandmarks *)v61 initWithVisionFaceLandmarks:v62];
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
  v74 = v69;
  v65 = v69;
  [v6 enumerateKeysAndObjectsUsingBlock:v73];
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

- (id)_faceResultForUUID:(id)a3 inFaceDictionary:(id)a4
{
  v5 = a4;
  v6 = [a3 UUIDString];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(AXMVisionFeatureFaceDetectionResult);
    [v5 setObject:v7 forKeyedSubscript:v6];
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