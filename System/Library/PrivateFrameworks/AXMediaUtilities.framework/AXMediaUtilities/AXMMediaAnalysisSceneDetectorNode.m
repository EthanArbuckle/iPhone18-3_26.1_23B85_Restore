@interface AXMMediaAnalysisSceneDetectorNode
+ (BOOL)addNSFWResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6;
+ (BOOL)addSignificantEventResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6;
+ (BOOL)isSupported;
- (AXMMediaAnalysisSceneDetectorNode)initWithCoder:(id)a3;
- (BOOL)_shouldIncludeSceneLabelForOCRDocumenTypeDetection:(id)a3;
- (void)_addNSFWClassificationObservations:(id)a3 toContext:(id)a4;
- (void)_addRecognizedObjectObservations:(id)a3 toContext:(id)a4;
- (void)_addSaliencyImageObservations:(id)a3 toContext:(id)a4;
- (void)_addSceneClassificationObservations:(id)a3 toContext:(id)a4;
- (void)_addSceneDetectorFeaturesToContext:(id)a3 fromResults:(id)a4;
- (void)_addSignificantEventClassificationObservations:(id)a3 toContext:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMMediaAnalysisSceneDetectorNode

- (AXMMediaAnalysisSceneDetectorNode)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXMMediaAnalysisSceneDetectorNode;
  v5 = [(AXMEvaluationNode *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_taxonomyOptions = [v4 decodeInt32ForKey:@"taxonomyOptions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXMMediaAnalysisSceneDetectorNode;
  v4 = a3;
  [(AXMEvaluationNode *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_taxonomyOptions forKey:{@"taxonomyOptions", v5.receiver, v5.super_class}];
}

+ (BOOL)isSupported
{
  if (!AXRuntimeCheck_MediaAnalysisSupport())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 physicalMemory] > 0x773593FF;

  return v3;
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v40.receiver = self;
  v40.super_class = AXMMediaAnalysisSceneDetectorNode;
  v30 = a4;
  [(AXMEvaluationNode *)&v40 evaluate:v6 metrics:?];
  v7 = [v6 sourceInput];
  v33 = [v7 phAssetLocalIdentifier];

  v8 = [v6 sourceInput];
  v34 = [v8 photoLibraryURL];

  v9 = [v6 sourceInput];
  v32 = [v9 ciImage];

  v10 = [v6 sourceInput];
  v31 = [v10 pixelBuffer];

  v11 = [(AXMMediaAnalysisSceneDetectorNode *)self _sceneClassificationRequest];
  LODWORD(v10) = v11 == 0;

  if (v10)
  {
    *buf = 0;
    v43 = buf;
    v44 = 0x2050000000;
    v12 = getMADVISceneClassificationRequestClass_softClass;
    v45 = getMADVISceneClassificationRequestClass_softClass;
    if (!getMADVISceneClassificationRequestClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getMADVISceneClassificationRequestClass_block_invoke;
      location[3] = &unk_1E7A1C700;
      location[4] = buf;
      __getMADVISceneClassificationRequestClass_block_invoke(location);
      v12 = *(v43 + 3);
    }

    v13 = v12;
    _Block_object_dispose(buf, 8);
    v14 = objc_alloc_init(v12);
    [(AXMMediaAnalysisSceneDetectorNode *)self _setSceneClassificationRequest:v14];
  }

  v15 = [(AXMMediaAnalysisSceneDetectorNode *)self _sceneClassificationRequest];
  v16 = dispatch_semaphore_create(0);
  objc_initWeak(location, self);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __54__AXMMediaAnalysisSceneDetectorNode_evaluate_metrics___block_invoke;
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
          [(AXMMediaAnalysisSceneDetectorNode *)buf evaluate:v27 metrics:?];
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

void __54__AXMMediaAnalysisSceneDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, int a2, void *a3)
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
    _os_log_debug_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Scene Classification results: requestID: %d error: %@ results: %@", v11, 0x1Cu);
  }

  if (v5)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__AXMMediaAnalysisSceneDetectorNode_evaluate_metrics___block_invoke_cold_1(v5, v8);
    }
  }

  else if (a2 == -1)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__AXMMediaAnalysisSceneDetectorNode_evaluate_metrics___block_invoke_cold_2(v8);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v8 = [*(a1 + 32) results];
    [WeakRetained _addSceneDetectorFeaturesToContext:v9 fromResults:v8];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_addSceneDetectorFeaturesToContext:(id)a3 fromResults:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [v7 firstObject];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v9 = getMADVISceneClassificationResultClass_softClass;
    v26 = getMADVISceneClassificationResultClass_softClass;
    if (!getMADVISceneClassificationResultClass_softClass)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __getMADVISceneClassificationResultClass_block_invoke;
      v22[3] = &unk_1E7A1C700;
      v22[4] = &v23;
      __getMADVISceneClassificationResultClass_block_invoke(v22);
      v9 = v24[3];
    }

    v10 = v9;
    _Block_object_dispose(&v23, 8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v7 firstObject];
      v13 = [v12 classificationObservations];
      [(AXMMediaAnalysisSceneDetectorNode *)self _addSceneClassificationObservations:v13 toContext:v6];

      v14 = [v6 analysisOptions];
      v15 = [v14 detectMADScenesNSFW];

      if (v15)
      {
        v16 = [v12 nsfwObservations];
        [(AXMMediaAnalysisSceneDetectorNode *)self _addNSFWClassificationObservations:v16 toContext:v6];
      }

      v17 = [v6 analysisOptions];
      v18 = [v17 detectMADScenesSignificantEvents];

      if (v18)
      {
        v19 = [v12 significantEventObservations];
        [(AXMMediaAnalysisSceneDetectorNode *)self _addSignificantEventClassificationObservations:v19 toContext:v6];
      }

      v20 = [v12 recognizedObjectObservations];
      [(AXMMediaAnalysisSceneDetectorNode *)self _addRecognizedObjectObservations:v20 toContext:v6];

      v21 = [v12 saliencyObservations];
      [(AXMMediaAnalysisSceneDetectorNode *)self _addSaliencyImageObservations:v21 toContext:v6];
    }
  }
}

- (void)_addSceneClassificationObservations:(id)a3 toContext:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(AXMMediaAnalysisSceneDetectorNode *)self taxonomyOptions])
  {
    v8 = [AXMPhotoVisionSupport processSceneClassifications:v6 withOptions:[(AXMMediaAnalysisSceneDetectorNode *)self taxonomyOptions]];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          [v7 size];
          v14 = [AXMVisionFeature featureWithMediaAnalysisTaxonomyNode:v13 canvasSize:?];
          [v7 appendFeature:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v6;
    v15 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v35 = v6;
      v17 = *v41;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v40 + 1) + 8 * j);
          v20 = [AXMPhotoVisionSupport localizedLabelForClassificationObservation:v19];
          v21 = [v19 identifier];
          [v19 confidence];
          v23 = v22;
          [v7 size];
          v25 = v24;
          LODWORD(v24) = v23;
          v27 = [AXMVisionFeature mediaAnalysisSceneClassificationWithLabel:v21 localizedValue:v20 confidence:v24 canvasSize:v25, v26];
          [v7 appendFeature:v27];
        }

        v16 = [v8 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v16);
      v6 = v35;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = v6;
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v36 + 1) + 8 * k);
        if ([(AXMMediaAnalysisSceneDetectorNode *)self _shouldIncludeSceneLabelForOCRDocumenTypeDetection:v33])
        {
          v34 = [v33 identifier];
          [v7 addMediaAnalysisSceneLabelForOCRDocumentTypeDetection:v34];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v30);
  }

  [v7 addEvaluatedFeatureType:26];
}

+ (BOOL)addNSFWResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v11 = getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr_0;
  v24 = getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr_0;
  if (!getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr_0)
  {
    v12 = VisionLibrary_8();
    v22[3] = dlsym(v12, "VN81aedeb999c79d74e79af7f1c922cf97");
    getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr_0 = v22[3];
    v11 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v11)
  {
    v20 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v21, 8);
    _Unwind_Resume(v20);
  }

  v13 = [v10 isEqualToString:*v11];
  if (v13)
  {
    [v9 size];
    v16 = v15;
    v14 = a5;
    *&v15 = v14;
    v18 = [AXMVisionFeature mediaAnalysisNSFWClassificationWithCategory:@"NSFW Explicit" confidence:v15 canvasSize:v16, v17];
    [v18 setCaptionMayContainSensitiveContent:v6];
    [v9 appendFeature:v18];
  }

  return v13;
}

+ (BOOL)addSignificantEventResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v11 = getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr;
  v45 = getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr;
  if (!getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr)
  {
    v12 = VisionLibrary_8();
    v43[3] = dlsym(v12, "VN3FNQUJVIs2puI1uPc9mxh7");
    getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr = v43[3];
    v11 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v11)
  {
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_44:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_45:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_46:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_47:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    goto LABEL_48;
  }

  if ([v10 isEqualToString:*v11])
  {
    v13 = AXMSignificantEventCategoryBlood;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v14 = getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr;
  v45 = getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr;
  if (!getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr)
  {
    v15 = VisionLibrary_8();
    v43[3] = dlsym(v15, "VNSY8t4EoTztuqIL02g8uVA0");
    getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr = v43[3];
    v14 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v14)
  {
    goto LABEL_44;
  }

  if ([v10 isEqualToString:*v14])
  {
    v13 = AXMSignificantEventCategoryDemonstration;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v16 = getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr;
  v45 = getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr;
  if (!getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr)
  {
    v17 = VisionLibrary_8();
    v43[3] = dlsym(v17, "VN6XNMvaRunPpzWjGa9uUHD6");
    getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr = v43[3];
    v16 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v16)
  {
    goto LABEL_45;
  }

  if ([v10 isEqualToString:*v16])
  {
    v13 = AXMSignificantEventCategoryDestruction;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v18 = getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr;
  v45 = getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr;
  if (!getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr)
  {
    v19 = VisionLibrary_8();
    v43[3] = dlsym(v19, "VN4QuphG8kE4qDaDycivBkX5");
    getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr = v43[3];
    v18 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v18)
  {
    goto LABEL_46;
  }

  if ([v10 isEqualToString:*v18])
  {
    v13 = AXMSignificantEventCategoryFireDevastation;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v20 = getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr;
  v45 = getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr;
  if (!getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr)
  {
    v21 = VisionLibrary_8();
    v43[3] = dlsym(v21, "VN7gQUejje8mmnE9GSTsVBVV");
    getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr = v43[3];
    v20 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v20)
  {
    goto LABEL_47;
  }

  if ([v10 isEqualToString:*v20])
  {
    v13 = AXMSignificantEventCategoryFloodDevastation;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v22 = getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr;
  v45 = getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr;
  if (!getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr)
  {
    v23 = VisionLibrary_8();
    v43[3] = dlsym(v23, "VNa9xpOJNvRoaW9plFGZ9Eo0");
    getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr = v43[3];
    v22 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v22)
  {
LABEL_48:
    v41 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v42, 8);
    _Unwind_Resume(v41);
  }

  if ([v10 isEqualToString:*v22])
  {
    v13 = AXMSignificantEventCategoryFuneral;
  }

  else
  {
    v24 = getVN2vIWnsZbk4Su55oeWfKDq1();
    v25 = [v10 isEqualToString:v24];

    if (v25)
    {
      v13 = AXMSignificantEventCategoryHospital;
    }

    else
    {
      v26 = getVNmNJnu0xlW8CZXt6hJ7Rpb0();
      v27 = [v10 isEqualToString:v26];

      if (v27)
      {
        v13 = AXMSignificantEventCategoryReligiousSetting;
      }

      else
      {
        v28 = getVN35FOB1QhtSfYGRIJvTgtTq();
        v29 = [v10 isEqualToString:v28];

        if (v29)
        {
          v13 = AXMSignificantEventCategoryVehicleCrash;
        }

        else
        {
          v30 = getVN6ZsEIQ9ri2eF1vhsxw5COm();
          v31 = [v10 isEqualToString:v30];

          if (!v31)
          {
LABEL_41:
            v39 = 0;
            goto LABEL_42;
          }

          v13 = &AXMSignificantEventCategoryWar;
        }
      }
    }
  }

LABEL_39:
  v32 = *v13;
  if (!v32)
  {
    goto LABEL_41;
  }

  v33 = v32;
  [v9 size];
  v36 = v35;
  v34 = a5;
  *&v35 = v34;
  v38 = [AXMVisionFeature mediaAnalysisSignificantEventClassificationWithCategory:v33 confidence:v35 canvasSize:v36, v37];
  [v38 setCaptionMayContainSensitiveContent:v6];
  [v9 appendFeature:v38];

  v39 = 1;
LABEL_42:

  return v39;
}

- (void)_addNSFWClassificationObservations:(id)a3 toContext:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 identifier];
        [v11 confidence];
        [AXMMediaAnalysisSceneDetectorNode addNSFWResultToContext:v6 forIdentifier:v12 confidence:0 markAsSensitiveCaptionContent:v13];
      }

      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v6 addEvaluatedFeatureType:29];
}

- (void)_addSignificantEventClassificationObservations:(id)a3 toContext:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 identifier];
        [v11 confidence];
        [AXMMediaAnalysisSceneDetectorNode addSignificantEventResultToContext:v6 forIdentifier:v12 confidence:0 markAsSensitiveCaptionContent:v13];
      }

      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v6 addEvaluatedFeatureType:30];
}

- (void)_addRecognizedObjectObservations:(id)a3 toContext:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v43 = a4;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v47;
    *&v7 = 138412290;
    v42 = v7;
    do
    {
      v10 = 0;
      v44 = v8;
      do
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        v12 = [AXMPhotoVisionSupport axmTaxonomyNodeForObjectObservation:v11, v42];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 label];
          if (v14)
          {
            v15 = v14;
            v16 = +[AXMPhotoVisionSupport _deniedVoiceOverObjectClassificationLabels];
            v17 = [v13 label];
            v18 = [v16 containsObject:v17];

            if (v18)
            {
              v19 = AXMediaLogCommon();
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                goto LABEL_20;
              }

              v20 = [v13 label];
              *buf = v42;
              v51 = v20;
              _os_log_impl(&dword_1AE37B000, v19, OS_LOG_TYPE_INFO, "Object classifier detected but denied for VoiceOver: %@", buf, 0xCu);
              goto LABEL_17;
            }
          }

          v19 = [v13 localizedName];
          if (![v19 length])
          {
            v21 = AXMediaLogCommon();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v42;
              v51 = v19;
              _os_log_impl(&dword_1AE37B000, v21, OS_LOG_TYPE_DEFAULT, "Could not get localized value for label: %@. Falling back to raw value", buf, 0xCu);
            }

            v22 = [v13 label];

            v19 = v22;
          }

          [v11 confidence];
          if (v23 > 0.4)
          {
            v24 = [v13 label];
            [v11 boundingBox];
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v32 = v31;
            [v11 confidence];
            v34 = v33;
            [v43 size];
            v36 = v35;
            v38 = v37;
            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13, "sceneClassId")}];
            v40 = [v39 stringValue];
            LODWORD(v41) = v34;
            v20 = [AXMVisionFeature mediaAnalysisObjectClassificationWithLabel:v24 localizedValue:v19 boundingBox:v40 confidence:v26 canvasSize:v28 sceneClassId:v30, v32, v41, v36, v38];

            v8 = v44;
            [v43 appendFeature:v20];
LABEL_17:
          }
        }

        else
        {
          v19 = AXMediaLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE37B000, v19, OS_LOG_TYPE_DEFAULT, "Recognized object result produced no labels", buf, 2u);
          }
        }

LABEL_20:

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v8);
  }

  [v43 addEvaluatedFeatureType:27];
}

- (void)_addSaliencyImageObservations:(id)a3 toContext:(id)a4
{
  v5 = a4;
  v6 = [a3 firstObject];
  v7 = [v6 salientObjects];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __77__AXMMediaAnalysisSceneDetectorNode__addSaliencyImageObservations_toContext___block_invoke;
  v13 = &unk_1E7A1E1E0;
  v14 = v6;
  v15 = v5;
  v8 = v5;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:&v10];
  [v8 addEvaluatedFeatureType:{28, v10, v11, v12, v13}];
}

void __77__AXMMediaAnalysisSceneDetectorNode__addSaliencyImageObservations_toContext___block_invoke(uint64_t a1, void *a2)
{
  v29 = a2;
  [v29 boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) narrowedBoundingBox];
  v33.origin.x = v11;
  v33.origin.y = v12;
  v33.size.width = v13;
  v33.size.height = v14;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectIntersection(v31, v33);
  if (!CGRectIsEmpty(v32))
  {
    [v29 boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = 1.0 - v21 - v19;
    [*(a1 + 40) size];
    v24 = v23;
    v26 = v25;
    [v29 confidence];
    v28 = [AXMVisionFeature mediaAnalysisProminentObjectWithBoundingBox:v16 canvasSize:v22 confidence:v18, v20, v24, v26, v27];
    [*(a1 + 40) appendFeature:v28];
  }
}

- (BOOL)_shouldIncludeSceneLabelForOCRDocumenTypeDetection:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = 0.35;
  if (([v4 isEqualToString:@"diagram"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"envelope") & 1) == 0)
  {
    if (![v4 isEqualToString:@"receipt"])
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = 0.65;
  }

  [v3 confidence];
  v7 = v5 < v6;
LABEL_6:

  return v7;
}

- (void)evaluate:(os_log_t)log metrics:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1AE37B000, log, OS_LOG_TYPE_ERROR, "AXM Media Analysis: Scene Detection request timed out", buf, 2u);
}

void __54__AXMMediaAnalysisSceneDetectorNode_evaluate_metrics___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Error in scene analysis: %@", &v2, 0xCu);
}

@end