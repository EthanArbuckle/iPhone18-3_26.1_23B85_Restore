@interface AXMFaceDetectorNode
- (AXMFaceDetectorNode)initWithCoder:(id)a3;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (id)_createRequestsForContext:(id)a3;
- (id)_faceDetectionResultsForVisionRequests:(id)a3 canvasSize:(CGSize)a4;
- (id)_faceResultForUUID:(id)a3 inFaceDictionary:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)nodeInitialize;
@end

@implementation AXMFaceDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMFaceDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (AXMFaceDetectorNode)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXMFaceDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = AXMFaceDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:a3];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNDetectFaceExpressionsRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMFaceDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AXMFaceDetectorNode validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (id)_createRequestsForContext:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 analysisOptions];
  v7 = [v6 detectFaceNames];

  if (v7)
  {
    v8 = [v4 sourceInput];
    v9 = [v8 photoLibraryURL];

    v10 = [(AXMFaceDetectorNode *)self _faceNameHelper];

    if (!v10)
    {
      v11 = objc_alloc_init(AXMVisionFaceNameHelper);
      [(AXMFaceDetectorNode *)self set_faceNameHelper:v11];
    }

    v12 = [(AXMFaceDetectorNode *)self _faceNameHelper];
    v13 = [v12 prepareForLookupWithPhotoLibraryURL:v9];

    if (v13)
    {
      if (!getVNCreateFaceprintRequestClass())
      {
        v61 = AXMediaLogCommon();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [AXMFaceDetectorNode _createRequestsForContext:];
        }

        goto LABEL_54;
      }

      v14 = [(AXMFaceDetectorNode *)self _faceprintRequest];

      if (!v14)
      {
        v62 = objc_alloc_init(getVNCreateFaceprintRequestClass());
        [(AXMFaceDetectorNode *)self set_faceprintRequest:v62];

        v63 = [(AXMFaceDetectorNode *)self _faceprintRequest];
        v64 = [(AXMFaceDetectorNode *)self _faceNameHelper];
        v71 = 0;
        [v63 setRevision:objc_msgSend(v64 error:{"faceprintRequestRevisionForPersonsModel"), &v71}];
        v61 = v71;

        if (v61)
        {
          v65 = AXMediaLogCommon();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            [(AXMFaceDetectorNode *)self _createRequestsForContext:v61, v65];
          }

LABEL_54:
LABEL_59:

          goto LABEL_60;
        }
      }

      v15 = [(AXMFaceDetectorNode *)self _faceprintRequest];
      [v5 addObject:v15];
    }
  }

  v16 = [v4 analysisOptions];
  v17 = [v16 detectFaceAttributes];

  if (v17)
  {
    if (!getVNClassifyFaceAttributesRequestClass())
    {
      v57 = AXMediaLogCommon();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode _createRequestsForContext:];
      }

      goto LABEL_49;
    }

    v18 = [(AXMFaceDetectorNode *)self _faceAttributesRequest];

    if (!v18)
    {
      v58 = objc_alloc_init(getVNClassifyFaceAttributesRequestClass());
      [(AXMFaceDetectorNode *)self set_faceAttributesRequest:v58];

      v59 = [(AXMFaceDetectorNode *)self _faceAttributesRequest];
      v70 = 0;
      [v59 setRevision:3737841666 error:&v70];
      v9 = v70;

      if (v9)
      {
        v60 = AXMediaLogCommon();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          [(AXMFaceDetectorNode *)v9 _createRequestsForContext:v60];
        }

LABEL_58:

        goto LABEL_59;
      }
    }

    v19 = [(AXMFaceDetectorNode *)self _faceAttributesRequest];
    [v5 addObject:v19];
  }

  v20 = [v4 analysisOptions];
  v21 = [v20 detectFaceExpressions];

  if (v21)
  {
    if (!getVNDetectFaceExpressionsRequestClass())
    {
      v57 = AXMediaLogCommon();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode validateVisionKitSoftLinkSymbols];
      }

      goto LABEL_49;
    }

    v22 = [(AXMFaceDetectorNode *)self _faceExpressionsRequest];

    if (!v22)
    {
      v23 = objc_alloc_init(getVNDetectFaceExpressionsRequestClass());
      [(AXMFaceDetectorNode *)self set_faceExpressionsRequest:v23];
    }

    v24 = [(AXMFaceDetectorNode *)self _faceExpressionsRequest];
    [v5 addObject:v24];
  }

  v25 = [v4 analysisOptions];
  v26 = [v25 detectFaceLandmarks];

  if (v26)
  {
    if (!getVNDetectFaceLandmarksRequestClass())
    {
      v57 = AXMediaLogCommon();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode _createRequestsForContext:];
      }

      goto LABEL_49;
    }

    v27 = [(AXMFaceDetectorNode *)self _faceLandmarksRequest];

    if (!v27)
    {
      v28 = objc_alloc_init(getVNDetectFaceLandmarksRequestClass());
      [(AXMFaceDetectorNode *)self set_faceLandmarksRequest:v28];
    }

    v29 = [(AXMFaceDetectorNode *)self _faceLandmarksRequest];
    [v5 addObject:v29];
  }

  v30 = [v4 analysisOptions];
  v31 = [v30 detectFacePose];

  if (v31)
  {
    if (!getVNDetectFacePoseRequestClass())
    {
      v57 = AXMediaLogCommon();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode _createRequestsForContext:];
      }

      goto LABEL_49;
    }

    v32 = [(AXMFaceDetectorNode *)self _facePoseRequest];

    if (!v32)
    {
      v33 = objc_alloc_init(getVNDetectFacePoseRequestClass());
      [(AXMFaceDetectorNode *)self set_facePoseRequest:v33];
    }

    v34 = [(AXMFaceDetectorNode *)self _facePoseRequest];
    [v5 addObject:v34];
  }

  v35 = [v5 count];
  v36 = [v4 analysisOptions];
  v37 = [v36 detectFaceRectangles];

  if ((v37 & 1) == 0 && !v35)
  {
    goto LABEL_33;
  }

  if (getVNDetectFaceRectanglesRequestClass(v38, v39, v40, v41, v42, v43, v44, v45))
  {
    v46 = [(AXMFaceDetectorNode *)self _faceRectanglesRequest];

    if (!v46)
    {
      v66 = objc_alloc_init(getVNDetectFaceRectanglesRequestClass(v47, v48, v49, v50, v51, v52, v53, v54));
      [(AXMFaceDetectorNode *)self set_faceRectanglesRequest:v66];

      v67 = [(AXMFaceDetectorNode *)self _faceRectanglesRequest];
      v69 = 0;
      [v67 setRevision:3737841666 error:&v69];
      v9 = v69;

      if (v9)
      {
        v60 = AXMediaLogCommon();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          [(AXMFaceDetectorNode *)v9 _createRequestsForContext:v60];
        }

        goto LABEL_58;
      }
    }

    v55 = [(AXMFaceDetectorNode *)self _faceRectanglesRequest];
    [v5 addObject:v55];

LABEL_33:
    v56 = v5;
    goto LABEL_61;
  }

  v57 = AXMediaLogCommon();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    [AXMFaceDetectorNode _createRequestsForContext:];
  }

LABEL_49:

LABEL_60:
  v56 = 0;
LABEL_61:

  return v56;
}

- (id)_faceDetectionResultsForVisionRequests:(id)a3 canvasSize:(CGSize)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AXMFaceDetectorNode__faceDetectionResultsForVisionRequests_canvasSize___block_invoke;
  v12[3] = &unk_1E7A1C9B0;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __73__AXMFaceDetectorNode__faceDetectionResultsForVisionRequests_canvasSize___block_invoke(uint64_t a1, void *a2)
{
  v111 = *MEMORY[0x1E69E9840];
  v3 = a2;
  getVNDetectFaceRectanglesRequestClass(v3, v4, v5, v6, v7, v8, v9, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v11 = [v3 results];
    v12 = [v11 countByEnumeratingWithState:&v101 objects:v110 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v102;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v102 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v101 + 1) + 8 * i);
          v17 = *(a1 + 32);
          v18 = [v16 uuid];
          v19 = [v17 _faceResultForUUID:v18 inFaceDictionary:*(a1 + 40)];

          [v19 setFaceId:{objc_msgSend(v16, "faceId")}];
          v20 = [v16 uuid];
          [v19 setUuid:v20];

          [v16 boundingBox];
          [v19 setFrame:?];
          [v16 confidence];
          [v19 setRectanglesConfidence:v21];
        }

        v13 = [v11 countByEnumeratingWithState:&v101 objects:v110 count:16];
      }

      while (v13);
    }

    goto LABEL_54;
  }

  getVNCreateFaceprintRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v11 = [v3 results];
    v22 = [v11 countByEnumeratingWithState:&v97 objects:v109 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v98;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v98 != v24)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(*(&v97 + 1) + 8 * j);
          v27 = *(a1 + 32);
          v28 = [v26 uuid];
          v29 = [v27 _faceResultForUUID:v28 inFaceDictionary:*(a1 + 40)];

          v30 = [*(a1 + 32) _faceNameHelper];
          v31 = [v30 nameForFaceObservation:v26];
          [v29 setName:v31];

          [v26 confidence];
          [v29 setNameConfidence:v32];
        }

        v23 = [v11 countByEnumeratingWithState:&v97 objects:v109 count:16];
      }

      while (v23);
    }

    goto LABEL_54;
  }

  getVNClassifyFaceAttributesRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v11 = [v3 results];
    v33 = [v11 countByEnumeratingWithState:&v93 objects:v108 count:16];
    if (!v33)
    {
LABEL_54:

      goto LABEL_55;
    }

    v34 = v33;
    v80 = v3;
    v35 = *v94;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v94 != v35)
        {
          objc_enumerationMutation(v11);
        }

        v37 = *(*(&v93 + 1) + 8 * k);
        v38 = *(a1 + 32);
        v39 = [v37 uuid];
        v40 = [v38 _faceResultForUUID:v39 inFaceDictionary:*(a1 + 40)];

        v41 = [AXMVisionFeatureFaceAttributes alloc];
        v42 = [v37 faceAttributes];
        v43 = [(AXMVisionFeatureFaceAttributes *)v41 initWithVisionFaceAttributes:v42];
        [v40 setAttributes:v43];

        v44 = +[AXMVisionFeatureFaceAttributes defaultExcludeOptions];
        v45 = [v40 attributes];
        [v45 setExcludeOptions:v44];

        [v37 confidence];
        [v40 setAttributesConfidence:v46];
      }

      v34 = [v11 countByEnumeratingWithState:&v93 objects:v108 count:16];
    }

    while (v34);
LABEL_27:
    v3 = v80;
    goto LABEL_54;
  }

  getVNDetectFaceExpressionsRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v11 = [v3 results];
    v47 = [v11 countByEnumeratingWithState:&v89 objects:v107 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v90;
      do
      {
        for (m = 0; m != v48; ++m)
        {
          if (*v90 != v49)
          {
            objc_enumerationMutation(v11);
          }

          v51 = *(*(&v89 + 1) + 8 * m);
          v52 = *(a1 + 32);
          v53 = [v51 uuid];
          v54 = [v52 _faceResultForUUID:v53 inFaceDictionary:*(a1 + 40)];

          v55 = [v51 expressionsAndConfidence];
          [v54 setExpressionsAndConfidence:v55];
        }

        v48 = [v11 countByEnumeratingWithState:&v89 objects:v107 count:16];
      }

      while (v48);
    }

    goto LABEL_54;
  }

  getVNDetectFaceLandmarksRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v11 = [v3 results];
    v56 = [v11 countByEnumeratingWithState:&v85 objects:v106 count:16];
    if (!v56)
    {
      goto LABEL_54;
    }

    v57 = v56;
    v80 = v3;
    v58 = *v86;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v86 != v58)
        {
          objc_enumerationMutation(v11);
        }

        v60 = *(*(&v85 + 1) + 8 * n);
        v61 = *(a1 + 32);
        v62 = [v60 uuid];
        v63 = [v61 _faceResultForUUID:v62 inFaceDictionary:*(a1 + 40)];

        v64 = [AXMVisionFeatureFaceLandmarks alloc];
        v65 = [v60 landmarks];
        v66 = [(AXMVisionFeatureFaceLandmarks *)v64 initWithVisionFaceLandmarks:v65];
        [v63 setLandmarks:v66];

        v67 = [AXMVisionFeatureFaceLandmarks alloc];
        v68 = [v60 landmarks3d];
        v69 = [(AXMVisionFeatureFaceLandmarks *)v67 initWithVisionFaceLandmarks:v68];
        [v63 setLandmarks3d:v69];

        [v60 confidence];
        [v63 setLandmarksConfidence:v70];
      }

      v57 = [v11 countByEnumeratingWithState:&v85 objects:v106 count:16];
    }

    while (v57);
    goto LABEL_27;
  }

  getVNDetectFacePoseRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v11 = [v3 results];
    v71 = [v11 countByEnumeratingWithState:&v81 objects:v105 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v82;
      do
      {
        for (ii = 0; ii != v72; ++ii)
        {
          if (*v82 != v73)
          {
            objc_enumerationMutation(v11);
          }

          v75 = *(*(&v81 + 1) + 8 * ii);
          v76 = *(a1 + 32);
          v77 = [v75 uuid];
          v78 = [v76 _faceResultForUUID:v77 inFaceDictionary:*(a1 + 40)];

          [v75 pose];
          [v78 setPose:?];
          [v75 confidence];
          [v78 setPoseConfidence:v79];
        }

        v72 = [v11 countByEnumeratingWithState:&v81 objects:v105 count:16];
      }

      while (v72);
    }

    goto LABEL_54;
  }

LABEL_55:
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AXMFaceDetectorNode;
  [(AXMEvaluationNode *)&v15 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  v9 = [(AXMFaceDetectorNode *)self _createRequestsForContext:v6];
  if ([v9 count])
  {
    [(AXMEvaluationNode *)self evaluateRequests:v9 withContext:v6 requestHandlerOptions:0 metrics:v7 error:0];
    [v6 size];
    v10 = [(AXMFaceDetectorNode *)self _faceDetectionResultsForVisionRequests:v9 canvasSize:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__AXMFaceDetectorNode_evaluate_metrics___block_invoke;
    v12[3] = &unk_1E7A1C9D8;
    v11 = v6;
    v13 = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:v12];
    [v11 addEvaluatedFeatureType:5];
  }

  else
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEFAULT, "AXMFaceDetectorNode: no requests to evaluate", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void __40__AXMFaceDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v3 size];
  v5 = [AXMVisionFeature featureWithFaceDetectionResult:v4 canvasSize:?];

  [v3 appendFeature:v5];
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

- (void)_createRequestsForContext:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 _faceNameHelper];
  v6 = 134218242;
  v7 = [v5 faceprintRequestRevisionForPersonsModel];
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_ERROR, "Could not set revision %ld. Error : %@", &v6, 0x16u);
}

- (void)_createRequestsForContext:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218242;
  v3 = 3737841666;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not set face attributes revision %ld. Error : %@", &v2, 0x16u);
}

- (void)_createRequestsForContext:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not set revision VNDetectFaceRectanglesRequestPrivateRevisionANOD3Detector. Error : %@", &v2, 0xCu);
}

@end