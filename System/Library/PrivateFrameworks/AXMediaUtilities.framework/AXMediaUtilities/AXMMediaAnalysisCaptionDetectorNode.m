@interface AXMMediaAnalysisCaptionDetectorNode
+ (BOOL)isSupported;
- (AXMMediaAnalysisCaptionDetectorNode)initWithCoder:(id)a3;
- (AXMMediaAnalysisSceneDetectorNode)sceneDetector;
- (id)_captionsFromAnalysis:(id)a3 forType:(unint64_t)a4;
- (id)_mediaAnalysisCaptionResultForPHAssetsFromAnalysis:(id)a3;
- (id)_mediaAnalysisCaptionResultFromResults:(id)a3;
- (id)translatedTextForCaption:(id)a3 withContext:(id)a4 metrics:(id)a5;
- (void)_addCaptionFeaturesToContext:(id)a3 metrics:(id)a4 fromResult:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMMediaAnalysisCaptionDetectorNode

- (AXMMediaAnalysisCaptionDetectorNode)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXMMediaAnalysisCaptionDetectorNode;
  v5 = [(AXMEvaluationNode *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sceneDetector"];
    [(AXMMediaAnalysisCaptionDetectorNode *)v5 setSceneDetector:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXMMediaAnalysisCaptionDetectorNode;
  v4 = a3;
  [(AXMEvaluationNode *)&v6 encodeWithCoder:v4];
  v5 = [(AXMMediaAnalysisCaptionDetectorNode *)self sceneDetector:v6.receiver];
  [v4 encodeObject:v5 forKey:@"sceneDetector"];
}

+ (BOOL)isSupported
{
  if (!AXRuntimeCheck_MediaAnalysisSupport())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AE30] processInfo];
  if ([v2 physicalMemory] < 0x77359400)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXRuntimeCheck_HasANE();
  }

  return v3;
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v77.receiver = self;
  v77.super_class = AXMMediaAnalysisCaptionDetectorNode;
  v53 = a4;
  [(AXMEvaluationNode *)&v77 evaluate:v6 metrics:?];
  v7 = [v6 sourceInput];
  v55 = [v7 phAssetLocalIdentifier];

  v8 = [v6 sourceInput];
  v56 = [v8 photoLibraryURL];

  v9 = [v6 sourceInput];
  v54 = [v9 ciImage];

  v10 = [v6 sourceInput];
  v52 = [v10 pixelBuffer];

  v11 = AXMediaLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v55;
    *&buf[12] = 2112;
    *&buf[14] = v56;
    _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_DEFAULT, "AXM Media analysis: Will evaluate media analysis caption detector node. phAssetLocalIdentifier : %@ and photoLibraryURL : %@", buf, 0x16u);
  }

  if (v56 && v55)
  {
    v12 = [AXMPhotoAssetData phAssetFromLocalIdentifier:v55 photoLibraryURL:v56];
    if (!v12)
    {
      v50 = AXMediaLogCommon();
      v49 = v50;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [AXMMediaAnalysisCaptionDetectorNode evaluate:metrics:];
        v49 = v50;
      }

      goto LABEL_38;
    }

    v51 = [MEMORY[0x1E695DF90] dictionary];
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v13 = getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr;
    v81 = getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr;
    if (!getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_block_invoke;
      v86 = &unk_1E7A1C700;
      v87 = &v78;
      v14 = MediaAnalysisLibrary();
      v15 = dlsym(v14, "VCPMediaAnalysisService_AllowOnDemandOption");
      *(v87[1] + 24) = v15;
      getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr = *(v87[1] + 24);
      v13 = v79[3];
    }

    _Block_object_dispose(&v78, 8);
    if (!v13)
    {
      __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
      __break(1u);
    }

    [v51 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v13];
    v16 = dispatch_semaphore_create(0);
    v78 = 0;
    v79 = &v78;
    v80 = 0x2050000000;
    v17 = getVCPMediaAnalysisServiceClass_softClass;
    v81 = getVCPMediaAnalysisServiceClass_softClass;
    if (!getVCPMediaAnalysisServiceClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getVCPMediaAnalysisServiceClass_block_invoke;
      v86 = &unk_1E7A1C700;
      v87 = &v78;
      __getVCPMediaAnalysisServiceClass_block_invoke(buf);
      v17 = v79[3];
    }

    v18 = v17;
    _Block_object_dispose(&v78, 8);
    v19 = [v17 analysisService];
    objc_initWeak(buf, self);
    v84 = v12;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67;
    v71[3] = &unk_1E7A1E560;
    objc_copyWeak(&v76, buf);
    v12 = v12;
    v72 = v12;
    v73 = v6;
    v74 = v53;
    v21 = v16;
    v75 = v21;
    v22 = [v19 requestAnalysisTypes:0x100000000 forAssets:v20 withOptions:v51 progressHandler:&__block_literal_global_29 andCompletionHandler:v71];

    v23 = dispatch_time(0, 100000000);
    if (dispatch_semaphore_wait(v21, v23))
    {
      v24 = 100000000;
      do
      {
        if (v24 > 0x2540BE400)
        {
          v25 = AXMediaLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [AXMMediaAnalysisCaptionDetectorNode evaluate:&v78 + 1 metrics:?];
          }

          [v19 cancelRequest:v22];
        }

        v26 = dispatch_time(0, 100000000);
        v24 += 100000000;
      }

      while (dispatch_semaphore_wait(v21, v26));
    }

    objc_destroyWeak(&v76);
    objc_destroyWeak(buf);

LABEL_37:
    v49 = v51;
LABEL_38:

    goto LABEL_39;
  }

  if (v54)
  {
    v27 = dispatch_semaphore_create(0);
    v28 = objc_alloc_init(getMADImageCaptionRequestClass());
    v29 = +[AXMMADSService sharedInstance];
    v30 = [v29 service];

    objc_initWeak(buf, self);
    v83 = v28;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73;
    v64[3] = &unk_1E7A1E588;
    objc_copyWeak(&v70, buf);
    v51 = v28;
    v65 = v51;
    v66 = v54;
    v67 = v6;
    v68 = v53;
    v12 = v27;
    v69 = v12;
    v32 = [v30 performRequests:v31 onCIImage:v66 withOrientation:1 andIdentifier:&stru_1F23EA908 completionHandler:v64];

    v33 = dispatch_time(0, 100000000);
    if (dispatch_semaphore_wait(v12, v33))
    {
      v34 = 100000000;
      do
      {
        if (v34 > 0x2540BE400)
        {
          v35 = AXMediaLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [AXMMediaAnalysisCaptionDetectorNode evaluate:&v78 + 1 metrics:?];
          }

          [v30 cancelRequestID:v32];
        }

        v36 = dispatch_time(0, 100000000);
        v34 += 100000000;
      }

      while (dispatch_semaphore_wait(v12, v36));
    }

    objc_destroyWeak(&v70);
    objc_destroyWeak(buf);

    goto LABEL_37;
  }

  if (v52)
  {
    v37 = dispatch_semaphore_create(0);
    v38 = objc_alloc_init(getMADImageCaptionRequestClass());
    v39 = +[AXMMADSService sharedInstance];
    v40 = [v39 service];

    objc_initWeak(buf, self);
    v82 = v38;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    v42 = [v52 pixelBuffer];
    v43 = [v52 orientation];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75;
    v57[3] = &unk_1E7A1E588;
    objc_copyWeak(&v63, buf);
    v51 = v38;
    v58 = v51;
    v59 = v52;
    v60 = v6;
    v61 = v53;
    v12 = v37;
    v62 = v12;
    v44 = [v40 performRequests:v41 onPixelBuffer:v42 withOrientation:v43 andIdentifier:&stru_1F23EA908 completionHandler:v57];

    v45 = dispatch_time(0, 100000000);
    if (dispatch_semaphore_wait(v12, v45))
    {
      v46 = 100000000;
      do
      {
        if (v46 > 0x2540BE400)
        {
          v47 = AXMediaLogCommon();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [AXMMediaAnalysisCaptionDetectorNode evaluate:&v78 + 1 metrics:?];
          }

          [v40 cancelRequestID:v44];
        }

        v48 = dispatch_time(0, 100000000);
        v46 += 100000000;
      }

      while (dispatch_semaphore_wait(v12, v48));
    }

    objc_destroyWeak(&v63);
    objc_destroyWeak(buf);

    goto LABEL_37;
  }

LABEL_39:
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke()
{
  v0 = AXMediaLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = AXMediaLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_1();
  }

  if (v6)
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_2();
    }
  }

  else if (v5)
  {
    v10 = [*(a1 + 32) localIdentifier];
    v9 = [v5 objectForKeyedSubscript:v10];

    if (v9)
    {
      v11 = [WeakRetained _mediaAnalysisCaptionResultForPHAssetsFromAnalysis:v9];
      if (v11)
      {
        [WeakRetained _addCaptionFeaturesToContext:*(a1 + 40) metrics:*(a1 + 48) fromResult:v11];
      }

      else
      {
        v12 = AXMediaLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_3((a1 + 32));
        }
      }
    }

    else
    {
      v11 = AXMediaLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_4((a1 + 32));
      }
    }
  }

  else
  {
    v9 = AXMediaLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_5(a1);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = AXMediaLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) results];
    v12[0] = 67109634;
    v12[1] = a2;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v11;
    _os_log_debug_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Caption Detection (CIImage) results: requestID: %d error: %@ results: %@", v12, 0x1Cu);
  }

  if (v5)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73_cold_1();
    }
  }

  else if (a2 == -1)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73_cold_3();
    }
  }

  else
  {
    v9 = [*(a1 + 32) results];
    v8 = [WeakRetained _mediaAnalysisCaptionResultFromResults:v9];

    if (v8)
    {
      [WeakRetained _addCaptionFeaturesToContext:*(a1 + 48) metrics:*(a1 + 56) fromResult:v8];
    }

    else
    {
      v10 = AXMediaLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73_cold_2();
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = AXMediaLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 32) results];
    v12[0] = 67109634;
    v12[1] = a2;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v11;
    _os_log_debug_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Caption Detection (PixelBuffer) results: requestID: %d. error: %@ results: %@", v12, 0x1Cu);
  }

  if (v5)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75_cold_1();
    }
  }

  else if (a2 == -1)
  {
    v8 = AXMediaLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75_cold_3();
    }
  }

  else
  {
    v9 = [*(a1 + 32) results];
    v8 = [WeakRetained _mediaAnalysisCaptionResultFromResults:v9];

    if (v8)
    {
      [WeakRetained _addCaptionFeaturesToContext:*(a1 + 48) metrics:*(a1 + 56) fromResult:v8];
    }

    else
    {
      v10 = AXMediaLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75_cold_2();
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));
}

- (id)translatedTextForCaption:(id)a3 withContext:(id)a4 metrics:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 analysisOptions];
  v11 = [v10 preferredOutputLocale];

  if (!v11)
  {
    v12 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v12, OS_LOG_TYPE_INFO, "preferred output language unexpectedly nil! Falling back to english", buf, 2u);
    }

    v13 = +[AXMLocSupport sharedInstance];
    v11 = [v13 en_USLocale];
  }

  v14 = +[AXMLocSupport sharedInstance];
  v15 = [v14 localeBaseLanguageIsEnglish:v11];

  if (v15)
  {
    v16 = AXMediaLogLanguageTranslation();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_1AE37B000, v16, OS_LOG_TYPE_INFO, "preferred output language is English. Translation not required", v25, 2u);
    }

    v17 = [AXMTranslatedText text:v8 confidence:0 isLowConfidence:v11 targetLocale:1.0];
  }

  else
  {
    languageTranslator = self->_languageTranslator;
    if (!languageTranslator)
    {
      v19 = objc_alloc_init(AXMLanguageTranslator);
      v20 = self->_languageTranslator;
      self->_languageTranslator = v19;

      languageTranslator = self->_languageTranslator;
    }

    v24 = 0;
    v17 = [(AXMLanguageTranslator *)languageTranslator translateText:v8 toLocale:v11 respectAllowList:1 metrics:v9 error:&v24];
    v21 = v24;
    if (v21)
    {
      v22 = AXMediaLogLanguageTranslation();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [AXMMediaAnalysisCaptionDetectorNode translatedTextForCaption:withContext:metrics:];
      }
    }
  }

  return v17;
}

- (void)_addCaptionFeaturesToContext:(id)a3 metrics:(id)a4 fromResult:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a5 imageCaptionResults];
  v11 = [v10 firstObject];

  if (v11)
  {
    v12 = [v11 text];
    v28 = self;
    v31 = v9;
    v13 = [(AXMMediaAnalysisCaptionDetectorNode *)self translatedTextForCaption:v12 withContext:v8 metrics:v9];

    v14 = [v11 text];
    [v11 confidence];
    v29 = v13;
    v32 = [AXMVisionFeature featureWithMediaAnalysisImageCaptionResult:v14 confidence:v13 translatedCaption:?];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v11;
    v15 = [v11 classificationIdentifiers];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v33 + 1) + 8 * i);
          v22 = [AXMMediaAnalysisSceneDetectorNode addSignificantEventResultToContext:v8 forIdentifier:v21 confidence:1 markAsSensitiveCaptionContent:1.0];
          v23 = [AXMMediaAnalysisSceneDetectorNode addNSFWResultToContext:v8 forIdentifier:v21 confidence:1 markAsSensitiveCaptionContent:1.0];
          if (v23 || v22)
          {
            [v32 setCaptionMayContainSensitiveContent:1];
          }

          v24 = AXMediaLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v21;
            _os_log_impl(&dword_1AE37B000, v24, OS_LOG_TYPE_INFO, "Captioned image did activate classifier: %@", buf, 0xCu);
          }

          v18 |= v23;
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    [v8 appendFeature:v32];
    [v8 addEvaluatedFeatureType:25];
    v11 = v30;
    if ([v30 isLowConfidence] & 1) != 0 || (v18)
    {
      v25 = AXMediaLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE37B000, v25, OS_LOG_TYPE_INFO, "Caption was low confidence or explicit. Requesting auxiliary scene detection", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&v28->_sceneDetector);
      if (WeakRetained)
      {
        v27 = objc_loadWeakRetained(&v28->_sceneDetector);
        [v8 addAuxiliaryDetector:v27];
      }

      else
      {
        v27 = AXMediaLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [AXMMediaAnalysisCaptionDetectorNode _addCaptionFeaturesToContext:v27 metrics:? fromResult:?];
        }
      }
    }

    v9 = v31;
  }
}

- (id)_mediaAnalysisCaptionResultForPHAssetsFromAnalysis:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXMMediaAnalysisCaptionsResult);
  v6 = [(AXMMediaAnalysisCaptionDetectorNode *)self _captionsFromAnalysis:v4 forType:0];

  if ([v6 count])
  {
    [(AXMMediaAnalysisCaptionsResult *)v5 setImageCaptionResults:v6];
  }

  else
  {
    v7 = AXMediaLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AXMMediaAnalysisCaptionDetectorNode _mediaAnalysisCaptionResultForPHAssetsFromAnalysis:v7];
    }
  }

  return v5;
}

- (id)_captionsFromAnalysis:(id)a3 forType:(unint64_t)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v5 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr;
  v54 = getMediaAnalysisResultAttributesKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultAttributesKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getMediaAnalysisResultAttributesKeySymbolLoc_block_invoke;
    v58 = &unk_1E7A1C700;
    v59 = &v51;
    v6 = MediaAnalysisLibrary();
    v7 = dlsym(v6, "MediaAnalysisResultAttributesKey");
    *(v59[1] + 24) = v7;
    getMediaAnalysisResultAttributesKeySymbolLoc_ptr = *(v59[1] + 24);
    v5 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v5)
  {
    goto LABEL_40;
  }

  v46 = *v5;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v8 = getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_ptr;
  v54 = getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_block_invoke;
    v58 = &unk_1E7A1C700;
    v59 = &v51;
    v9 = MediaAnalysisLibrary();
    v10 = dlsym(v9, "MediaAnalysisResultImageCaptionLowConfidenceAttributeKey");
    *(v59[1] + 24) = v10;
    getMediaAnalysisResultImageCaptionLowConfidenceAttributeKeySymbolLoc_ptr = *(v59[1] + 24);
    v8 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v8)
  {
    goto LABEL_40;
  }

  v45 = *v8;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v11 = getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_ptr;
  v54 = getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_block_invoke;
    v58 = &unk_1E7A1C700;
    v59 = &v51;
    v12 = MediaAnalysisLibrary();
    v13 = dlsym(v12, "MediaAnalysisResultClassificationIdentifiersAttributeKey");
    *(v59[1] + 24) = v13;
    getMediaAnalysisResultClassificationIdentifiersAttributeKeySymbolLoc_ptr = *(v59[1] + 24);
    v11 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v11)
  {
    goto LABEL_40;
  }

  v44 = *v11;
  if (a4)
  {
    v14 = 0;
    v15 = 0;
    v41 = 0;
    goto LABEL_22;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v16 = getMediaAnalysisImageCaptionResultsKeySymbolLoc_ptr;
  v54 = getMediaAnalysisImageCaptionResultsKeySymbolLoc_ptr;
  if (!getMediaAnalysisImageCaptionResultsKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getMediaAnalysisImageCaptionResultsKeySymbolLoc_block_invoke;
    v58 = &unk_1E7A1C700;
    v59 = &v51;
    v17 = MediaAnalysisLibrary();
    v18 = dlsym(v17, "MediaAnalysisImageCaptionResultsKey");
    *(v59[1] + 24) = v18;
    getMediaAnalysisImageCaptionResultsKeySymbolLoc_ptr = *(v59[1] + 24);
    v16 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v16)
  {
    goto LABEL_40;
  }

  v41 = *v16;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v19 = getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr;
  v54 = getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_block_invoke;
    v58 = &unk_1E7A1C700;
    v59 = &v51;
    v20 = MediaAnalysisLibrary();
    v21 = dlsym(v20, "MediaAnalysisResultImageCaptionTextAttributeKey");
    *(v59[1] + 24) = v21;
    getMediaAnalysisResultImageCaptionTextAttributeKeySymbolLoc_ptr = *(v59[1] + 24);
    v19 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v19)
  {
    goto LABEL_40;
  }

  v15 = *v19;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v22 = getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr;
  v54 = getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr;
  if (!getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v57 = __getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_block_invoke;
    v58 = &unk_1E7A1C700;
    v59 = &v51;
    v23 = MediaAnalysisLibrary();
    v24 = dlsym(v23, "MediaAnalysisResultImageCaptionConfidenceAttributeKey");
    *(v59[1] + 24) = v24;
    getMediaAnalysisResultImageCaptionConfidenceAttributeKeySymbolLoc_ptr = *(v59[1] + 24);
    v22 = v52[3];
  }

  _Block_object_dispose(&v51, 8);
  if (!v22)
  {
LABEL_40:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

  v14 = *v22;
LABEL_22:
  v43 = [MEMORY[0x1E695DF70] array];
  if (v41)
  {
    v39 = [v40 objectForKeyedSubscript:v41];
    if ([v39 count])
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v39;
      v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v25)
      {
        v26 = *v48;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v47 + 1) + 8 * i);
            v29 = [v28 objectForKeyedSubscript:v46];
            v30 = [v29 objectForKeyedSubscript:v15];
            v31 = [v29 objectForKeyedSubscript:v14];
            [v31 doubleValue];
            v33 = v32;

            v34 = [v29 objectForKeyedSubscript:v45];
            v35 = [v34 BOOLValue];

            v36 = [v29 objectForKeyedSubscript:v44];
            if ([v30 length])
            {
              v37 = [[AXMMediaAnalysisCaptions alloc] initWithText:v30 confidence:v35 isLowConfidence:v36 classificationIdentifiers:v33];
              [v43 addObject:v37];
            }

            else
            {
              v37 = AXMediaLogCommon();
              if (os_log_type_enabled(&v37->super, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v28;
                _os_log_debug_impl(&dword_1AE37B000, &v37->super, OS_LOG_TYPE_DEBUG, "AXM Media analysis: No caption attrs unexpected: %@", &buf, 0xCu);
              }
            }
          }

          v25 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v25);
      }
    }
  }

  return v43;
}

- (id)_mediaAnalysisCaptionResultFromResults:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AXMMediaAnalysisCaptionsResult);
  if (![v3 count])
  {
    v16 = AXMediaLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [AXMMediaAnalysisCaptionDetectorNode _mediaAnalysisCaptionResultFromResults:v16];
    }

    goto LABEL_12;
  }

  v12 = [v3 firstObject];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v13 = getMADCaptionResultClass_softClass;
  v30 = getMADCaptionResultClass_softClass;
  if (!getMADCaptionResultClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getMADCaptionResultClass_block_invoke;
    v26[3] = &unk_1E7A1C700;
    v26[4] = &v27;
    __getMADCaptionResultClass_block_invoke(v26, v5, v6, v7, v8, v9, v10, v11, v25);
    v13 = v28[3];
  }

  v14 = v13;
  _Block_object_dispose(&v27, 8);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v16 = [v3 firstObject];
    v17 = [v16 caption];
    [v16 score];
    v19 = v18;
    v20 = [v16 isLowConfidence];
    v21 = [v16 classificationIdentifiers];
    v22 = [MEMORY[0x1E695DF70] array];
    if ([v17 length])
    {
      v23 = [[AXMMediaAnalysisCaptions alloc] initWithText:v17 confidence:v20 isLowConfidence:v21 classificationIdentifiers:v19];
      [v22 addObject:v23];
    }

    if ([v22 count])
    {
      [(AXMMediaAnalysisCaptionsResult *)v4 setImageCaptionResults:v22];
    }

LABEL_12:
  }

  return v4;
}

- (AXMMediaAnalysisSceneDetectorNode)sceneDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDetector);

  return WeakRetained;
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_3(id *a1)
{
  v1 = [*a1 localIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE37B000, v2, v3, "AXM Media analysis: AXMMediaAnalysisCaptionsResult is nil for asset with ID: %@", v4, v5, v6, v7, v8);
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_4(id *a1)
{
  v1 = [*a1 localIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE37B000, v2, v3, "AXM Media analysis: No analysis dict found for asset with ID: %@", v4, v5, v6, v7, v8);
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_67_cold_5(uint64_t a1)
{
  v1 = [*(a1 + 32) localIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE37B000, v2, v3, "AXM Media analysis: No analysis result or error produced for asset with ID: %@", v4, v5, v6, v7, v8);
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73_cold_2()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_1AE37B000, v0, v1, "AXM Media analysis: AXMMediaAnalysisCaptionsResult is nil on ciimage : %@", v2, v3, v4, v5, v6);
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_73_cold_3()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_1AE37B000, v0, v1, "AXM Media analysis: Invalid request - MADImageCaptionRequest on ciimage : %@", v2, v3, v4, v5, v6);
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75_cold_2()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_1AE37B000, v0, v1, "AXM Media analysis: AXMMediaAnalysisCaptionsResult is nil on pixelBuffer : %@", v2, v3, v4, v5, v6);
}

void __56__AXMMediaAnalysisCaptionDetectorNode_evaluate_metrics___block_invoke_75_cold_3()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2(&dword_1AE37B000, v0, v1, "AXM Media analysis: Invalid request - MADImageCaptionRequest on pixelBuffer : %@", v2, v3, v4, v5, v6);
}

- (void)translatedTextForCaption:withContext:metrics:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_ERROR, "Caption translation failed: %@", v1, 0xCu);
}

@end