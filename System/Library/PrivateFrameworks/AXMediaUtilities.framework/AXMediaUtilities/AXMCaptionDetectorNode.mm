@interface AXMCaptionDetectorNode
+ (BOOL)isSupported;
+ (CGSize)preferredModelInputSize;
- (AXImageCaptionModel)effectiveCaptionModelInfo;
- (AXMCaptionDetectorNode)initWithCoder:(id)coder;
- (AXMSceneDetectorNode)sceneDetector;
- (CVNLPCaptionHandler)_withLock_captionHandlerCreateIfNeeded:(id)needed;
- (NSURL)effectiveModelURL;
- (NSURL)overrideModelURL;
- (id)_computeCaptionForPixelBuffer:(__CVBuffer *)buffer orImage:(CGImage *)image captionHandler:(CVNLPCaptionHandler *)handler metrics:(id)metrics;
- (id)_withLock_captionModelURLCloningAssetIfNeeded;
- (id)_withLock_cloneCaptionModelIfNeeded:(id)needed;
- (id)_withLock_modelURLForOverrideURL:(id)l;
- (id)_withLock_valueForOverrideScaleMethod;
- (unint64_t)genderStrategy;
- (unint64_t)overrideScaleMethod;
- (void)_performWithLock:(id)lock;
- (void)_withLock_captionModelURLCloningAssetIfNeeded;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
- (void)nodeInitialize;
- (void)setGenderStrategy:(unint64_t)strategy;
- (void)setOverrideModelURL:(id)l;
- (void)setOverrideScaleMethod:(unint64_t)method;
@end

@implementation AXMCaptionDetectorNode

+ (CGSize)preferredModelInputSize
{
  v2 = 448.0;
  v3 = 448.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)nodeInitialize
{
  v3.receiver = self;
  v3.super_class = AXMCaptionDetectorNode;
  [(AXMEvaluationNode *)&v3 nodeInitialize];
  self->_lock._os_unfair_lock_opaque = 0;
}

- (void)dealloc
{
  captionHandlerRef = self->_captionHandlerRef;
  if (captionHandlerRef)
  {
    CFRelease(captionHandlerRef);
    self->_captionHandlerRef = 0;
  }

  v4.receiver = self;
  v4.super_class = AXMCaptionDetectorNode;
  [(AXMCaptionDetectorNode *)&v4 dealloc];
}

- (AXMCaptionDetectorNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = AXMCaptionDetectorNode;
  v5 = [(AXMEvaluationNode *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideModelURL"];
    [(AXMCaptionDetectorNode *)v5 setOverrideModelURL:v6];

    -[AXMCaptionDetectorNode setOverrideScaleMethod:](v5, "setOverrideScaleMethod:", [coderCopy decodeBoolForKey:@"overrideScaleMethod"]);
    -[AXMCaptionDetectorNode setGenderStrategy:](v5, "setGenderStrategy:", [coderCopy decodeIntegerForKey:@"genderStrategy"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sceneDetector"];
    [(AXMCaptionDetectorNode *)v5 setSceneDetector:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AXMCaptionDetectorNode;
  coderCopy = coder;
  [(AXMEvaluationNode *)&v7 encodeWithCoder:coderCopy];
  v5 = [(AXMCaptionDetectorNode *)self overrideModelURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"overrideModelURL"];

  [coderCopy encodeBool:-[AXMCaptionDetectorNode overrideScaleMethod](self forKey:{"overrideScaleMethod") != 0, @"overrideScaleMethod"}];
  [coderCopy encodeInteger:-[AXMCaptionDetectorNode genderStrategy](self forKey:{"genderStrategy"), @"genderStrategy"}];
  sceneDetector = [(AXMCaptionDetectorNode *)self sceneDetector];
  [coderCopy encodeObject:sceneDetector forKey:@"sceneDetector"];
}

+ (BOOL)isSupported
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  if ([processInfo physicalMemory] < 0x77359400)
  {
    v3 = 0;
  }

  else
  {
    v3 = AXRuntimeCheck_HasANE();
  }

  return v3;
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v13.receiver = self;
  v13.super_class = AXMCaptionDetectorNode;
  [(AXMEvaluationNode *)&v13 evaluate:evaluateCopy metrics:metricsCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke;
  v10[3] = &unk_1E7A1D5C8;
  v10[4] = self;
  v11 = metricsCopy;
  v12 = evaluateCopy;
  v8 = evaluateCopy;
  v9 = metricsCopy;
  [(AXMCaptionDetectorNode *)self _performWithLock:v10];
}

void __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) _withLock_captionHandlerCreateIfNeeded:*(a1 + 40)])
  {
    v5 = AXMediaLogCommon();
    v6 = v5;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_9();
LABEL_6:
    v6 = v5;
    goto LABEL_69;
  }

  v71 = a1;
  v2 = [*(a1 + 48) sourceInput];
  v3 = [v2 wrappedPixelBuffer];

  v67 = v3;
  if (v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v7 = AXMediaLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_INFO, "No CVPixelBufferRef found in pipeline context. Falling back to CGImageRef", buf, 2u);
  }

  v8 = [*(v71 + 48) sourceInput];
  v9 = [v8 createCGImageWithMetrics:*(v71 + 40)];

  v4 = v9;
  if (!v9)
  {
    v5 = AXMediaLogCommon();
    v6 = v5;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_69;
    }

    __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_8();
    goto LABEL_6;
  }

LABEL_10:
  cf = v4;
  v68 = [*(v71 + 32) _computeCaptionForPixelBuffer:v67 orImage:? captionHandler:? metrics:?];
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v10 = getCVNLPCaptionsSymbolLoc_ptr;
  v80 = getCVNLPCaptionsSymbolLoc_ptr;
  if (!getCVNLPCaptionsSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCVNLPCaptionsSymbolLoc_block_invoke;
    v83 = &unk_1E7A1C700;
    *v84 = &v77;
    v11 = CVNLPLibrary();
    v12 = dlsym(v11, "CVNLPCaptions");
    *(*(*v84 + 8) + 24) = v12;
    getCVNLPCaptionsSymbolLoc_ptr = *(*(*v84 + 8) + 24);
    v10 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v10)
  {
    goto LABEL_74;
  }

  v13 = [v68 objectForKeyedSubscript:*v10];
  v69 = [v13 firstObject];

  if (v69)
  {
    v77 = 0;
    v78 = &v77;
    v79 = 0x2020000000;
    v14 = getCVNLPGeneratedCaptionSymbolLoc_ptr;
    v80 = getCVNLPGeneratedCaptionSymbolLoc_ptr;
    if (!getCVNLPGeneratedCaptionSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCVNLPGeneratedCaptionSymbolLoc_block_invoke;
      v83 = &unk_1E7A1C700;
      *v84 = &v77;
      v15 = CVNLPLibrary();
      v16 = dlsym(v15, "CVNLPGeneratedCaption");
      *(*(*v84 + 8) + 24) = v16;
      getCVNLPGeneratedCaptionSymbolLoc_ptr = *(*(*v84 + 8) + 24);
      v14 = v78[3];
    }

    _Block_object_dispose(&v77, 8);
    if (v14)
    {
      v17 = *v14;
      v18 = [v69 objectForKeyedSubscript:v17];

      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v19 = getCVNLPGeneratedCaptionScoreSymbolLoc_ptr;
      v80 = getCVNLPGeneratedCaptionScoreSymbolLoc_ptr;
      if (!getCVNLPGeneratedCaptionScoreSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCVNLPGeneratedCaptionScoreSymbolLoc_block_invoke;
        v83 = &unk_1E7A1C700;
        *v84 = &v77;
        v20 = CVNLPLibrary();
        v21 = dlsym(v20, "CVNLPGeneratedCaptionScore");
        *(*(*v84 + 8) + 24) = v21;
        getCVNLPGeneratedCaptionScoreSymbolLoc_ptr = *(*(*v84 + 8) + 24);
        v19 = v78[3];
      }

      _Block_object_dispose(&v77, 8);
      if (v19)
      {
        v22 = *v19;
        v23 = [v69 objectForKeyedSubscript:v22];

        v77 = 0;
        v78 = &v77;
        v79 = 0x2020000000;
        v24 = getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_ptr;
        v80 = getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_ptr;
        if (!getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_block_invoke;
          v83 = &unk_1E7A1C700;
          *v84 = &v77;
          v25 = CVNLPLibrary();
          v26 = dlsym(v25, "CVNLPGeneratedCaptionConfidenceLow");
          *(*(*v84 + 8) + 24) = v26;
          getCVNLPGeneratedCaptionConfidenceLowSymbolLoc_ptr = *(*(*v84 + 8) + 24);
          v24 = v78[3];
        }

        _Block_object_dispose(&v77, 8);
        if (v24)
        {
          v27 = [v69 objectForKeyedSubscript:*v24];
          v66 = [v27 BOOLValue];

          v28 = AXMediaLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [*(*(v71 + 32) + 112) version];
            v30 = [*(*(v71 + 32) + 112) stage];
            *buf = 138413314;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v23;
            *&buf[22] = 2048;
            v83 = v66;
            *v84 = 2112;
            *&v84[2] = v29;
            v85 = 2112;
            v86 = v30;
            _os_log_impl(&dword_1AE37B000, v28, OS_LOG_TYPE_INFO, "Did produce caption for image. text: '%@'. confidence: %@. lowConfidence: %ld. model: [v'%@' - '%@']", buf, 0x34u);
          }

          v31 = [*(v71 + 48) analysisOptions];
          v32 = [v31 preferredOutputLocale];

          if (!v32)
          {
            v33 = AXMediaLogLanguageTranslation();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1AE37B000, v33, OS_LOG_TYPE_INFO, "preferred output language unexpectedly nil! Falling back to english", buf, 2u);
            }

            v34 = +[AXMLocSupport sharedInstance];
            v32 = [v34 en_USLocale];
          }

          v35 = +[AXMLocSupport sharedInstance];
          v36 = [v35 localeBaseLanguageIsEnglish:v32];

          if (v36)
          {
            v37 = AXMediaLogLanguageTranslation();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1AE37B000, v37, OS_LOG_TYPE_INFO, "preferred output language is English. Translation not required", buf, 2u);
            }

            v38 = [AXMTranslatedText text:v18 confidence:0 isLowConfidence:v32 targetLocale:1.0];
          }

          else
          {
            v39 = v71;
            v40 = *(*(v71 + 32) + 128);
            if (!v40)
            {
              v41 = objc_alloc_init(AXMLanguageTranslator);
              v42 = *(v71 + 32);
              v43 = *(v42 + 128);
              *(v42 + 128) = v41;

              v40 = *(*(v71 + 32) + 128);
              v39 = v71;
            }

            v44 = *(v39 + 40);
            v76 = 0;
            v38 = [v40 translateText:v18 toLocale:v32 respectAllowList:1 metrics:v44 error:&v76];
            v45 = v76;
            if (v45)
            {
              v46 = AXMediaLogLanguageTranslation();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_1();
              }
            }
          }

          [v23 floatValue];
          v70 = [AXMVisionFeature featureWithCaptionResult:v18 confidence:v38 translatedCaption:@"AXCustomModel" modelIdentifier:v66 canvasSize:v47 isLowConfidence:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
          [*(v71 + 48) appendFeature:v70];

          goto LABEL_44;
        }
      }
    }

LABEL_74:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_75:
    __break(1u);
  }

  v18 = AXMediaLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE37B000, v18, OS_LOG_TYPE_INFO, "Image produced no captions", buf, 2u);
  }

  v66 = 0;
  v70 = 0;
LABEL_44:

  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v48 = getCVNLPImageClassificationIdentifiersSymbolLoc_ptr;
  v80 = getCVNLPImageClassificationIdentifiersSymbolLoc_ptr;
  if (!getCVNLPImageClassificationIdentifiersSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCVNLPImageClassificationIdentifiersSymbolLoc_block_invoke;
    v83 = &unk_1E7A1C700;
    *v84 = &v77;
    v49 = CVNLPLibrary();
    v50 = dlsym(v49, "CVNLPImageClassificationIdentifiers");
    *(*(*v84 + 8) + 24) = v50;
    getCVNLPImageClassificationIdentifiersSymbolLoc_ptr = *(*(*v84 + 8) + 24);
    v48 = v78[3];
  }

  _Block_object_dispose(&v77, 8);
  if (!v48)
  {
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    goto LABEL_75;
  }

  [v68 objectForKeyedSubscript:*v48];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v51 = v73 = 0u;
  v52 = 0;
  v53 = [v51 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v53)
  {
    v54 = *v73;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v73 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v72 + 1) + 8 * i);
        v57 = [AXMSignificantEventDetectorNode addSignificantEventResultToContext:*(v71 + 48) forIdentifier:v56 confidence:1 markAsSensitiveCaptionContent:1.0];
        v58 = [AXMNSFWDetectorNode addNSFWResultToContext:*(v71 + 48) forIdentifier:v56 confidence:1 markAsSensitiveCaptionContent:1.0];
        if (v58 || v57)
        {
          [v70 setCaptionMayContainSensitiveContent:1];
        }

        v59 = AXMediaLogCommon();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v56;
          _os_log_impl(&dword_1AE37B000, v59, OS_LOG_TYPE_INFO, "Captioned image did activate classifier: %@", buf, 0xCu);
        }

        v52 |= v58;
      }

      v53 = [v51 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v53);
  }

  if (!v67)
  {
    CFRelease(cf);
  }

  if ((v66 | v52))
  {
    v60 = AXMediaLogCommon();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v60, OS_LOG_TYPE_INFO, "Caption was low confidence or explicit. Requesting auxiliary scene detection", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(v71 + 32) + 136));
    v62 = WeakRetained == 0;

    if (v62)
    {
      v64 = AXMediaLogCommon();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_5();
      }
    }

    else
    {
      v63 = *(v71 + 48);
      v64 = objc_loadWeakRetained((*(v71 + 32) + 136));
      [v63 addAuxiliaryDetector:v64];
    }
  }

  v6 = v70;
LABEL_69:
}

- (NSURL)overrideModelURL
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AXMCaptionDetectorNode_overrideModelURL__block_invoke;
  v4[3] = &unk_1E7A1CAE8;
  v4[4] = self;
  v4[5] = &v5;
  [(AXMCaptionDetectorNode *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setOverrideModelURL:(id)l
{
  lCopy = l;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AXMCaptionDetectorNode_setOverrideModelURL___block_invoke;
  v6[3] = &unk_1E7A1CB30;
  v6[4] = self;
  v7 = lCopy;
  v5 = lCopy;
  [(AXMCaptionDetectorNode *)self _performWithLock:v6];
}

void __46__AXMCaptionDetectorNode_setOverrideModelURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  if (v3 | v2)
  {
    if (([v3 isEqual:?] & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
      *(*(a1 + 32) + 68) = 1;
    }
  }
}

- (unint64_t)overrideScaleMethod
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__AXMCaptionDetectorNode_overrideScaleMethod__block_invoke;
  v4[3] = &unk_1E7A1CAE8;
  v4[4] = self;
  v4[5] = &v5;
  [(AXMCaptionDetectorNode *)self _performWithLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setOverrideScaleMethod:(unint64_t)method
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AXMCaptionDetectorNode_setOverrideScaleMethod___block_invoke;
  v3[3] = &unk_1E7A1D060;
  v3[4] = self;
  v3[5] = method;
  [(AXMCaptionDetectorNode *)self _performWithLock:v3];
}

uint64_t __49__AXMCaptionDetectorNode_setOverrideScaleMethod___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 88) != v2)
  {
    *(v1 + 88) = v2;
    *(*(result + 32) + 68) = 1;
  }

  return result;
}

- (unint64_t)genderStrategy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__AXMCaptionDetectorNode_genderStrategy__block_invoke;
  v4[3] = &unk_1E7A1CAE8;
  v4[4] = self;
  v4[5] = &v5;
  [(AXMCaptionDetectorNode *)self _performWithLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setGenderStrategy:(unint64_t)strategy
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__AXMCaptionDetectorNode_setGenderStrategy___block_invoke;
  v3[3] = &unk_1E7A1D060;
  v3[4] = self;
  v3[5] = strategy;
  [(AXMCaptionDetectorNode *)self _performWithLock:v3];
}

uint64_t __44__AXMCaptionDetectorNode_setGenderStrategy___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 96) != v2)
  {
    *(v1 + 96) = v2;
    *(*(result + 32) + 68) = 1;
  }

  return result;
}

- (NSURL)effectiveModelURL
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AXMCaptionDetectorNode_effectiveModelURL__block_invoke;
  v4[3] = &unk_1E7A1CAE8;
  v4[4] = self;
  v4[5] = &v5;
  [(AXMCaptionDetectorNode *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (AXImageCaptionModel)effectiveCaptionModelInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__13;
  v9 = __Block_byref_object_dispose__13;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AXMCaptionDetectorNode_effectiveCaptionModelInfo__block_invoke;
  v4[3] = &unk_1E7A1CAE8;
  v4[4] = self;
  v4[5] = &v5;
  [(AXMCaptionDetectorNode *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_performWithLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_withLock_modelURLForOverrideURL:(id)l
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [lCopy URLByAppendingPathComponent:@"model_info.json"];
  path = [v5 path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    v8 = lCopy;
LABEL_5:
    v12 = v8;
    goto LABEL_7;
  }

  v9 = [lCopy URLByAppendingPathComponent:@"ImageCaptionModel/model_info.json"];
  path2 = [v9 path];
  v11 = [defaultManager fileExistsAtPath:path2];

  if (v11)
  {
    v8 = [lCopy URLByAppendingPathComponent:@"ImageCaptionModel"];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = AXMediaLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    path3 = [v12 path];
    v16 = 138412290;
    v17 = path3;
    _os_log_impl(&dword_1AE37B000, v13, OS_LOG_TYPE_INFO, "Fixed up URL for override URL for image caption model: %@", &v16, 0xCu);
  }

  return v12;
}

- (id)_withLock_captionModelURLCloningAssetIfNeeded
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_overrideModelURL)
  {
    v3 = AXMediaLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      path = [(NSURL *)self->_overrideModelURL path];
      v12 = 138412290;
      v13 = path;
      _os_log_impl(&dword_1AE37B000, v3, OS_LOG_TYPE_INFO, "Override URL specified for image caption model: %@", &v12, 0xCu);
    }

    v5 = [(AXMCaptionDetectorNode *)self _withLock_modelURLForOverrideURL:self->_overrideModelURL];
  }

  else
  {
    v6 = +[AXMImageCaptionModelAssetManager sharedInstance];
    v5 = [v6 modelURLForType:0 timeout:0.5];
  }

  v7 = AXMediaLogCommon();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      path2 = [v5 path];
      v12 = 138412290;
      v13 = path2;
      _os_log_impl(&dword_1AE37B000, v8, OS_LOG_TYPE_INFO, "Original URL for caption model [type:AXMCaptionModelTypeImage] before cloning: %@", &v12, 0xCu);
    }

    v10 = [(AXMCaptionDetectorNode *)self _withLock_cloneCaptionModelIfNeeded:v5];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AXMCaptionDetectorNode _withLock_captionModelURLCloningAssetIfNeeded];
    }

    v10 = 0;
  }

  return v10;
}

- (id)_withLock_cloneCaptionModelIfNeeded:(id)needed
{
  v40 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ([(AXMCaptionDetectorNode *)self _captionModelCloningIsNeeded])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = MEMORY[0x1E695DFF8];
    v7 = NSTemporaryDirectory();
    v8 = [v6 fileURLWithPath:v7 isDirectory:1];
    v9 = [v8 URLByAppendingPathComponent:@"ClonedImageCaptionModel" isDirectory:1];

    v35 = 0;
    path = [v9 path];
    LODWORD(v8) = [defaultManager fileExistsAtPath:path isDirectory:&v35];

    if (v8)
    {
      v11 = AXMediaLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_INFO, "Deleting old clone directory for caption model: %@", buf, 0xCu);
      }

      v34 = 0;
      v12 = [defaultManager removeItemAtURL:v9 error:&v34];
      v13 = v34;
      v14 = v13;
      if ((v12 & 1) == 0)
      {
        v22 = AXMediaLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [AXMCaptionDetectorNode _withLock_cloneCaptionModelIfNeeded:];
        }

        goto LABEL_20;
      }

      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v19 = AXMediaLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&dword_1AE37B000, v19, OS_LOG_TYPE_INFO, "Creating clone directory for caption model: %@", buf, 0xCu);
    }

    v33 = v15;
    v20 = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v33];
    v14 = v33;

    if ((v20 & 1) == 0)
    {
      v21 = AXMediaLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [AXMCaptionDetectorNode _withLock_cloneCaptionModelIfNeeded:];
      }

      v18 = 0;
LABEL_31:

      goto LABEL_32;
    }

LABEL_20:
    lastPathComponent = [neededCopy lastPathComponent];
    v21 = [v9 URLByAppendingPathComponent:lastPathComponent isDirectory:1];

    path2 = [neededCopy path];
    path3 = [v21 path];
    v26 = AXMediaLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = path2;
      v38 = 2112;
      v39 = path3;
      _os_log_impl(&dword_1AE37B000, v26, OS_LOG_TYPE_INFO, "Cloning caption model: '%@' to: '%@'", buf, 0x16u);
    }

    if (!clonefile([path2 UTF8String], objc_msgSend(path3, "UTF8String"), 3u))
    {
      goto LABEL_29;
    }

    v27 = AXMediaLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(AXMCaptionDetectorNode *)path2 _withLock_cloneCaptionModelIfNeeded:path3, v27];
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v32 = 0;
    [defaultManager2 copyItemAtPath:path2 toPath:path3 error:&v32];
    v29 = v32;

    if (v29)
    {
      v30 = AXMediaLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [AXMCaptionDetectorNode _withLock_cloneCaptionModelIfNeeded:];
      }

      v18 = 0;
    }

    else
    {
LABEL_29:
      v18 = v21;
    }

    goto LABEL_31;
  }

  v16 = AXMediaLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    path4 = [neededCopy path];
    *buf = 138412290;
    v37 = path4;
    _os_log_impl(&dword_1AE37B000, v16, OS_LOG_TYPE_INFO, "Will not clone caption model. Using original location: %@", buf, 0xCu);
  }

  v18 = neededCopy;
LABEL_32:

  return v18;
}

- (CVNLPCaptionHandler)_withLock_captionHandlerCreateIfNeeded:(id)needed
{
  v72 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (self->_needsCaptionHandlerRefresh)
  {
    v5 = neededCopy;
    v6 = AXMediaLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v6, OS_LOG_TYPE_INFO, "image caption model overrides changed. Will recreate _captionHandlerRef", buf, 2u);
    }

    captionHandlerRef = self->_captionHandlerRef;
    if (captionHandlerRef)
    {
      CFRelease(captionHandlerRef);
      self->_captionHandlerRef = 0;
    }

    effectiveModelURL = self->_effectiveModelURL;
    self->_effectiveModelURL = 0;

    effectiveCaptionModelInfo = self->_effectiveCaptionModelInfo;
    self->_effectiveCaptionModelInfo = 0;

    self->_needsCaptionHandlerRefresh = 0;
    neededCopy = v5;
  }

  v10 = self->_captionHandlerRef;
  if (!v10)
  {
    v59 = neededCopy;
    obj = [(AXMCaptionDetectorNode *)self _withLock_captionModelURLCloningAssetIfNeeded];
    v11 = obj;
    if (!obj)
    {
      v10 = 0;
LABEL_48:

      neededCopy = v59;
      goto LABEL_49;
    }

    objc_storeStrong(&self->_effectiveModelURL, obj);
    v12 = +[AXMImageCaptionModelAssetManager sharedInstance];
    v13 = [v12 infoForModelAtURL:self->_effectiveModelURL];
    v14 = self->_effectiveCaptionModelInfo;
    self->_effectiveCaptionModelInfo = v13;

    v15 = AXMediaLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      version = [(AXImageCaptionModel *)self->_effectiveCaptionModelInfo version];
      stage = [(AXImageCaptionModel *)self->_effectiveCaptionModelInfo stage];
      *buf = 138412546;
      *&buf[4] = version;
      *&buf[12] = 2112;
      *&buf[14] = stage;
      _os_log_impl(&dword_1AE37B000, v15, OS_LOG_TYPE_INFO, "Did load image caption model: [v'%@' - '%@']", buf, 0x16u);
    }

    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v18 = getCVNLPCaptionModelPathSymbolLoc_ptr;
    v65 = getCVNLPCaptionModelPathSymbolLoc_ptr;
    if (!getCVNLPCaptionModelPathSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCVNLPCaptionModelPathSymbolLoc_block_invoke;
      v70 = &unk_1E7A1C700;
      v71 = &v62;
      v19 = CVNLPLibrary();
      v20 = dlsym(v19, "CVNLPCaptionModelPath");
      *(v71[1] + 24) = v20;
      getCVNLPCaptionModelPathSymbolLoc_ptr = *(v71[1] + 24);
      v18 = v63[3];
    }

    _Block_object_dispose(&v62, 8);
    if (v18)
    {
      v21 = *v18;
      v68[0] = obj;
      v62 = 0;
      v63 = &v62;
      v64 = 0x2020000000;
      v22 = getCVNLPCaptionLanguageSymbolLoc_ptr;
      v65 = getCVNLPCaptionLanguageSymbolLoc_ptr;
      v66[0] = v21;
      if (!getCVNLPCaptionLanguageSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCVNLPCaptionLanguageSymbolLoc_block_invoke;
        v70 = &unk_1E7A1C700;
        v71 = &v62;
        v23 = CVNLPLibrary();
        v24 = dlsym(v23, "CVNLPCaptionLanguage");
        *(v71[1] + 24) = v24;
        getCVNLPCaptionLanguageSymbolLoc_ptr = *(v71[1] + 24);
        v22 = v63[3];
      }

      _Block_object_dispose(&v62, 8);
      if (v22)
      {
        v25 = *v22;
        v66[1] = v25;
        v68[1] = @"en-US";
        v62 = 0;
        v63 = &v62;
        v64 = 0x2020000000;
        v26 = getCVNLPBeamSearchSizeSymbolLoc_ptr;
        v65 = getCVNLPBeamSearchSizeSymbolLoc_ptr;
        if (!getCVNLPBeamSearchSizeSymbolLoc_ptr)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getCVNLPBeamSearchSizeSymbolLoc_block_invoke;
          v70 = &unk_1E7A1C700;
          v71 = &v62;
          v27 = CVNLPLibrary();
          v28 = dlsym(v27, "CVNLPBeamSearchSize");
          *(v71[1] + 24) = v28;
          getCVNLPBeamSearchSizeSymbolLoc_ptr = *(v71[1] + 24);
          v26 = v63[3];
        }

        _Block_object_dispose(&v62, 8);
        if (v26)
        {
          v29 = *v26;
          v66[2] = v29;
          v68[2] = &unk_1F240B0E0;
          v62 = 0;
          v63 = &v62;
          v64 = 0x2020000000;
          v30 = getCVNLPCaptionModelTypeSymbolLoc_ptr;
          v65 = getCVNLPCaptionModelTypeSymbolLoc_ptr;
          if (!getCVNLPCaptionModelTypeSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getCVNLPCaptionModelTypeSymbolLoc_block_invoke;
            v70 = &unk_1E7A1C700;
            v71 = &v62;
            v31 = CVNLPLibrary();
            v32 = dlsym(v31, "CVNLPCaptionModelType");
            *(v71[1] + 24) = v32;
            getCVNLPCaptionModelTypeSymbolLoc_ptr = *(v71[1] + 24);
            v30 = v63[3];
          }

          _Block_object_dispose(&v62, 8);
          if (v30)
          {
            v33 = *v30;
            v66[3] = v33;
            v62 = 0;
            v63 = &v62;
            v64 = 0x2020000000;
            v34 = getCVNLPCaptionModelTransformerSymbolLoc_ptr;
            v65 = getCVNLPCaptionModelTransformerSymbolLoc_ptr;
            if (!getCVNLPCaptionModelTransformerSymbolLoc_ptr)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getCVNLPCaptionModelTransformerSymbolLoc_block_invoke;
              v70 = &unk_1E7A1C700;
              v71 = &v62;
              v35 = CVNLPLibrary();
              v36 = dlsym(v35, "CVNLPCaptionModelTransformer");
              *(v71[1] + 24) = v36;
              getCVNLPCaptionModelTransformerSymbolLoc_ptr = *(v71[1] + 24);
              v34 = v63[3];
            }

            _Block_object_dispose(&v62, 8);
            if (v34)
            {
              v37 = *v34;
              v68[3] = v37;
              v62 = 0;
              v63 = &v62;
              v64 = 0x2020000000;
              v38 = getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_ptr;
              v65 = getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_ptr;
              if (!getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_ptr)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_block_invoke;
                v70 = &unk_1E7A1C700;
                v71 = &v62;
                v39 = CVNLPLibrary();
                v40 = dlsym(v39, "CVNLPCaptionEnableGenderedCaptions");
                *(v71[1] + 24) = v40;
                getCVNLPCaptionEnableGenderedCaptionsSymbolLoc_ptr = *(v71[1] + 24);
                v38 = v63[3];
              }

              _Block_object_dispose(&v62, 8);
              if (v38)
              {
                v67 = *v38;
                v41 = MEMORY[0x1E696AD98];
                genderStrategy = self->_genderStrategy;
                v43 = v67;
                v44 = [v41 numberWithUnsignedInteger:genderStrategy];
                v68[4] = v44;
                v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v66 count:5];
                v58 = [v45 mutableCopy];

                _withLock_valueForOverrideScaleMethod = [(AXMCaptionDetectorNode *)self _withLock_valueForOverrideScaleMethod];
                if (_withLock_valueForOverrideScaleMethod)
                {
                  v62 = 0;
                  v63 = &v62;
                  v64 = 0x2020000000;
                  v47 = getCVNLPCaptionScaleMethodSymbolLoc_ptr;
                  v65 = getCVNLPCaptionScaleMethodSymbolLoc_ptr;
                  if (!getCVNLPCaptionScaleMethodSymbolLoc_ptr)
                  {
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __getCVNLPCaptionScaleMethodSymbolLoc_block_invoke;
                    v70 = &unk_1E7A1C700;
                    v71 = &v62;
                    v48 = CVNLPLibrary();
                    v49 = dlsym(v48, "CVNLPCaptionScaleMethod");
                    *(v71[1] + 24) = v49;
                    getCVNLPCaptionScaleMethodSymbolLoc_ptr = *(v71[1] + 24);
                    v47 = v63[3];
                  }

                  _Block_object_dispose(&v62, 8);
                  if (!v47)
                  {
                    goto LABEL_50;
                  }

                  [v58 setObject:_withLock_valueForOverrideScaleMethod forKeyedSubscript:*v47];
                }

                v50 = AXMediaLogCommon();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *&buf[4] = v58;
                  _os_log_impl(&dword_1AE37B000, v50, OS_LOG_TYPE_INFO, "Will generate captions with options: %@", buf, 0xCu);
                }

                v61 = 0;
                v51 = [v59 startMeasure:@"CVNLPCaptionHandlerCreate"];
                v62 = 0;
                v63 = &v62;
                v64 = 0x2020000000;
                v52 = getCVNLPCaptionHandlerCreateSymbolLoc_ptr;
                v65 = getCVNLPCaptionHandlerCreateSymbolLoc_ptr;
                if (!getCVNLPCaptionHandlerCreateSymbolLoc_ptr)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getCVNLPCaptionHandlerCreateSymbolLoc_block_invoke;
                  v70 = &unk_1E7A1C700;
                  v71 = &v62;
                  v53 = CVNLPLibrary();
                  v54 = dlsym(v53, "CVNLPCaptionHandlerCreate");
                  *(v71[1] + 24) = v54;
                  getCVNLPCaptionHandlerCreateSymbolLoc_ptr = *(v71[1] + 24);
                  v52 = v63[3];
                }

                _Block_object_dispose(&v62, 8);
                if (v52)
                {
                  self->_captionHandlerRef = v52(v58, &v61);
                  [v51 endMeasurement];
                  if (v61)
                  {
                    v55 = AXMediaLogCommon();
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                    {
                      [AXMCaptionDetectorNode _withLock_captionHandlerCreateIfNeeded:];
                    }

                    v56 = self->_captionHandlerRef;
                    if (v56)
                    {
                      CFRelease(v56);
                      v10 = 0;
                      self->_captionHandlerRef = 0;
                    }

                    else
                    {
                      v10 = 0;
                    }
                  }

                  else
                  {
                    v10 = self->_captionHandlerRef;
                  }

                  v11 = obj;
                  goto LABEL_48;
                }
              }
            }
          }
        }
      }
    }

LABEL_50:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    __break(1u);
  }

LABEL_49:

  return v10;
}

- (id)_withLock_valueForOverrideScaleMethod
{
  v3 = 0;
  overrideScaleMethod = self->_overrideScaleMethod;
  if (overrideScaleMethod > 2)
  {
    if (overrideScaleMethod == 3)
    {
LABEL_15:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v5 = getCVNLPCaptionScaleMethodCGInterpolationMediumSymbolLoc_ptr;
      v16 = getCVNLPCaptionScaleMethodCGInterpolationMediumSymbolLoc_ptr;
      if (!getCVNLPCaptionScaleMethodCGInterpolationMediumSymbolLoc_ptr)
      {
        v8 = CVNLPLibrary();
        v14[3] = dlsym(v8, "CVNLPCaptionScaleMethodCGInterpolationMedium");
        getCVNLPCaptionScaleMethodCGInterpolationMediumSymbolLoc_ptr = v14[3];
        v5 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (v5)
      {
        goto LABEL_26;
      }

      __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
      goto LABEL_19;
    }

    if (overrideScaleMethod == 4)
    {
LABEL_19:
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v5 = getCVNLPCaptionScaleMethodCGInterpolationHighSymbolLoc_ptr;
      v16 = getCVNLPCaptionScaleMethodCGInterpolationHighSymbolLoc_ptr;
      if (!getCVNLPCaptionScaleMethodCGInterpolationHighSymbolLoc_ptr)
      {
        v9 = CVNLPLibrary();
        v14[3] = dlsym(v9, "CVNLPCaptionScaleMethodCGInterpolationHigh");
        getCVNLPCaptionScaleMethodCGInterpolationHighSymbolLoc_ptr = v14[3];
        v5 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (v5)
      {
        goto LABEL_26;
      }

      __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
      goto LABEL_23;
    }

    if (overrideScaleMethod != 5)
    {
      goto LABEL_27;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v5 = getCVNLPCaptionScaleMethodvImageSymbolLoc_ptr;
    v16 = getCVNLPCaptionScaleMethodvImageSymbolLoc_ptr;
    if (!getCVNLPCaptionScaleMethodvImageSymbolLoc_ptr)
    {
      v6 = CVNLPLibrary();
      v14[3] = dlsym(v6, "CVNLPCaptionScaleMethodvImage");
      getCVNLPCaptionScaleMethodvImageSymbolLoc_ptr = v14[3];
      v5 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (v5)
    {
      goto LABEL_26;
    }

    v3 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
  }

  if (overrideScaleMethod == 1)
  {
LABEL_23:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v5 = getCVNLPCaptionScaleMethodCGInterpolationNoneSymbolLoc_ptr;
    v16 = getCVNLPCaptionScaleMethodCGInterpolationNoneSymbolLoc_ptr;
    if (!getCVNLPCaptionScaleMethodCGInterpolationNoneSymbolLoc_ptr)
    {
      v10 = CVNLPLibrary();
      v14[3] = dlsym(v10, "CVNLPCaptionScaleMethodCGInterpolationNone");
      getCVNLPCaptionScaleMethodCGInterpolationNoneSymbolLoc_ptr = v14[3];
      v5 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v5)
    {
      v12 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
      _Block_object_dispose(&v13, 8);
      _Unwind_Resume(v12);
    }

    goto LABEL_26;
  }

  if (overrideScaleMethod != 2)
  {
    goto LABEL_27;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getCVNLPCaptionScaleMethodCGInterpolationLowSymbolLoc_ptr;
  v16 = getCVNLPCaptionScaleMethodCGInterpolationLowSymbolLoc_ptr;
  if (!getCVNLPCaptionScaleMethodCGInterpolationLowSymbolLoc_ptr)
  {
    v7 = CVNLPLibrary();
    v14[3] = dlsym(v7, "CVNLPCaptionScaleMethodCGInterpolationLow");
    getCVNLPCaptionScaleMethodCGInterpolationLowSymbolLoc_ptr = v14[3];
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    goto LABEL_15;
  }

LABEL_26:
  v3 = *v5;
LABEL_27:

  return v3;
}

- (id)_computeCaptionForPixelBuffer:(__CVBuffer *)buffer orImage:(CGImage *)image captionHandler:(CVNLPCaptionHandler *)handler metrics:(id)metrics
{
  metricsCopy = metrics;
  v10 = metricsCopy;
  v22 = 0;
  if (buffer)
  {
    v11 = [metricsCopy startMeasure:@"CVNLPCaptionCopyForCVPixelBuffer"];
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v12 = getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_ptr;
    v31 = getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_ptr;
    if (!getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_block_invoke;
      v26 = &unk_1E7A1C700;
      v27 = &v28;
      v13 = CVNLPLibrary();
      v29[3] = dlsym(v13, "CVNLPCaptionCopyForCVPixelBuffer");
      getCVNLPCaptionCopyForCVPixelBufferSymbolLoc_ptr = *(v27[1] + 24);
      v12 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (v12)
    {
      handlerCopy2 = handler;
      imageCopy = buffer;
      goto LABEL_10;
    }

    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_19:
    v21 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v28, 8);
    _Unwind_Resume(v21);
  }

  v11 = [metricsCopy startMeasure:@"CVNLPCaptionCreateForImage"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v12 = getCVNLPCaptionCopyForImageSymbolLoc_ptr;
  v31 = getCVNLPCaptionCopyForImageSymbolLoc_ptr;
  if (!getCVNLPCaptionCopyForImageSymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getCVNLPCaptionCopyForImageSymbolLoc_block_invoke;
    v26 = &unk_1E7A1C700;
    v27 = &v28;
    v16 = CVNLPLibrary();
    v29[3] = dlsym(v16, "CVNLPCaptionCopyForImage");
    getCVNLPCaptionCopyForImageSymbolLoc_ptr = *(v27[1] + 24);
    v12 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v12)
  {
    goto LABEL_19;
  }

  handlerCopy2 = handler;
  imageCopy = image;
LABEL_10:
  v17 = v12(handlerCopy2, imageCopy, 0, &v22);
  [v11 endMeasurement];
  if (v22)
  {
    v18 = AXMediaLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AXMCaptionDetectorNode _computeCaptionForPixelBuffer:orImage:captionHandler:metrics:];
    }

    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  return v19;
}

- (AXMSceneDetectorNode)sceneDetector
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDetector);

  return WeakRetained;
}

void __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__AXMCaptionDetectorNode_evaluate_metrics___block_invoke_cold_9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_withLock_captionModelURLCloningAssetIfNeeded
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_withLock_cloneCaptionModelIfNeeded:(NSObject *)a3 .cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  v7 = __error();
  v8 = strerror(*v7);
  v9 = 138413314;
  v10 = a1;
  v11 = 2112;
  v12 = a2;
  v13 = 1024;
  v14 = 1;
  v15 = 1024;
  v16 = v6;
  v17 = 2080;
  v18 = v8;
  _os_log_error_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_ERROR, "Could not clone caption model. clonefile(%@, %@, %o) FAILED with (%d : %s) - trying copy", &v9, 0x2Cu);
}

@end