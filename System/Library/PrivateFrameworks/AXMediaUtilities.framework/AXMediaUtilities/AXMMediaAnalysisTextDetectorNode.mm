@interface AXMMediaAnalysisTextDetectorNode
- (AXMMediaAnalysisTextDetectorNode)initWithCoder:(id)coder;
- (AXMSemanticTextFactory)semanticTextFactory;
- (AXMTextLayoutManager)textLayoutManager;
- (AXMTextSpecialCase)specialCaseManager;
- (double)detectTextSkew:(id)skew;
- (id)_sequencesForObservations:(id)observations canvasSize:(CGSize)size;
- (id)_textDetectionOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
- (void)processResults:(id)results context:(id)context metrics:(id)metrics textDetectionLocales:(id)locales textDetectionOptions:(id)options requestID:(int)d error:(id)error;
@end

@implementation AXMMediaAnalysisTextDetectorNode

- (AXMMediaAnalysisTextDetectorNode)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AXMMediaAnalysisTextDetectorNode;
  v3 = [(AXMEvaluationNode *)&v7 initWithCoder:coder];
  if (v3)
  {
    v4 = dispatch_queue_create("process-results-queue-axmedia", 0);
    processResultQueue = v3->_processResultQueue;
    v3->_processResultQueue = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AXMMediaAnalysisTextDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:coder];
}

- (void)processResults:(id)results context:(id)context metrics:(id)metrics textDetectionLocales:(id)locales textDetectionOptions:(id)options requestID:(int)d error:(id)error
{
  v55 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  metricsCopy = metrics;
  localesCopy = locales;
  optionsCopy = options;
  errorCopy = error;
  v21 = AXMediaLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    results = [resultsCopy results];
    *buf = 67109634;
    *&buf[4] = d;
    *&buf[8] = 2112;
    *&buf[10] = errorCopy;
    *&buf[18] = 2112;
    *&buf[20] = results;
    _os_log_debug_impl(&dword_1AE37B000, v21, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Text Detection results: requestID: %d error: %@ results: %@", buf, 0x1Cu);
  }

  if (errorCopy)
  {
    ciImage = AXMediaLogCommon();
    if (os_log_type_enabled(ciImage, OS_LOG_TYPE_DEBUG))
    {
      [AXMMediaAnalysisTextDetectorNode processResults:errorCopy context:ciImage metrics:? textDetectionLocales:? textDetectionOptions:? requestID:? error:?];
    }

    goto LABEL_32;
  }

  if (d != -1)
  {
    sourceInput = [contextCopy sourceInput];
    ciImage = [sourceInput ciImage];

    if (!ciImage)
    {
      ciImage = [contextCopy generateImageRepresentation];
    }

    results2 = [resultsCopy results];
    if (![results2 count])
    {
      goto LABEL_31;
    }

    firstObject = [results2 firstObject];
    v49 = 0;
    v50 = &v49;
    v51 = 0x2050000000;
    v25 = getMADVIDocumentRecognitionResultClass_softClass;
    v52 = getMADVIDocumentRecognitionResultClass_softClass;
    if (!getMADVIDocumentRecognitionResultClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMADVIDocumentRecognitionResultClass_block_invoke;
      *&buf[24] = &unk_1E7A1C700;
      v54 = &v49;
      __getMADVIDocumentRecognitionResultClass_block_invoke(buf);
      v25 = v50[3];
    }

    v26 = v25;
    _Block_object_dispose(&v49, 8);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_31;
    }

    firstObject2 = [results2 firstObject];
    observations = [firstObject2 observations];
    firstObject3 = [observations firstObject];

    v46 = [firstObject3 blocksWithTypes:4 inRegion:{0.0, 0.0, 1.0, 1.0}];
    if ([v46 count])
    {
      mediaAnalysisSceneLabelsForOCRDocumentTypeDetection = [contextCopy mediaAnalysisSceneLabelsForOCRDocumentTypeDetection];
      v29 = AXMediaLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [AXMMediaAnalysisTextDetectorNode processResults:mediaAnalysisSceneLabelsForOCRDocumentTypeDetection context:v29 metrics:? textDetectionLocales:? textDetectionOptions:? requestID:? error:?];
      }

      if (![mediaAnalysisSceneLabelsForOCRDocumentTypeDetection count])
      {
        analysisOptions = [contextCopy analysisOptions];
        detectMADScenes = [analysisOptions detectMADScenes];

        if (detectMADScenes)
        {
          v32 = [(AXMVisionEngineNode *)[AXMMediaAnalysisSceneDetectorNode alloc] initWithIdentifier:@"mad-scene"];
          [(AXMMediaAnalysisSceneDetectorNode *)v32 setTaxonomyOptions:7];
          [(AXMMediaAnalysisSceneDetectorNode *)v32 evaluate:contextCopy metrics:metricsCopy];
        }
      }

      if (ciImage)
      {
        [contextCopy size];
        v33 = [(AXMMediaAnalysisTextDetectorNode *)self _sequencesForObservations:v46 canvasSize:?];
        textLayoutManager = [(AXMMediaAnalysisTextDetectorNode *)self textLayoutManager];
        [contextCopy size];
        v48 = 0;
        v37 = [textLayoutManager documentWithTextFeatures:v33 canvasSize:localesCopy preferredLocales:objc_msgSend(optionsCopy applySemanticAnalysis:"shouldApplySemanticTextFiltering") error:{&v48, v35, v36}];
        v38 = v48;
        v39 = textLayoutManager;
        v40 = v38;

        if (v37)
        {
          [contextCopy appendFeature:v37];
          [contextCopy setEffectiveTextDetectionLocales:localesCopy];
LABEL_30:

LABEL_31:
          goto LABEL_32;
        }

LABEL_28:
        v37 = AXMediaLogOCR();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&dword_1AE37B000, v37, OS_LOG_TYPE_DEFAULT, "Unable to convert detected text into document: %@", buf, 0xCu);
        }

        goto LABEL_30;
      }

      v42 = AXMediaLogOCR();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE37B000, v42, OS_LOG_TYPE_DEFAULT, "Unable to convert detected text into document. Input image unexpectedly nil", buf, 2u);
      }
    }

    v40 = 0;
    goto LABEL_28;
  }

  ciImage = AXMediaLogCommon();
  if (os_log_type_enabled(ciImage, OS_LOG_TYPE_DEBUG))
  {
    [AXMMediaAnalysisTextDetectorNode processResults:ciImage context:? metrics:? textDetectionLocales:? textDetectionOptions:? requestID:? error:?];
  }

LABEL_32:
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v55[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  v47.receiver = self;
  v47.super_class = AXMMediaAnalysisTextDetectorNode;
  metricsCopy = metrics;
  [(AXMEvaluationNode *)&v47 evaluate:evaluateCopy metrics:?];
  sourceInput = [evaluateCopy sourceInput];
  phAssetLocalIdentifier = [sourceInput phAssetLocalIdentifier];

  sourceInput2 = [evaluateCopy sourceInput];
  photoLibraryURL = [sourceInput2 photoLibraryURL];

  sourceInput3 = [evaluateCopy sourceInput];
  ciImage = [sourceInput3 ciImage];

  sourceInput4 = [evaluateCopy sourceInput];
  pixelBuffer = [sourceInput4 pixelBuffer];

  v11 = [(AXMMediaAnalysisTextDetectorNode *)self _textDetectionOptions:evaluateCopy];
  v12 = [AXMTextDetectorNode recognitionLevelFromOptions:v11];
  v38 = [AXMTextDetectorNode effectiveLanguagesFromOptions:v11];
  if ([v38 count])
  {
    v13 = [v38 ax_mappedArrayUsingBlock:&__block_literal_global_18];
    *buf = 0;
    v50 = buf;
    v51 = 0x2050000000;
    v14 = getMADVIDocumentRecognitionRequestClass_softClass;
    v52 = getMADVIDocumentRecognitionRequestClass_softClass;
    if (!getMADVIDocumentRecognitionRequestClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getMADVIDocumentRecognitionRequestClass_block_invoke;
      location[3] = &unk_1E7A1C700;
      location[4] = buf;
      __getMADVIDocumentRecognitionRequestClass_block_invoke(location);
      v14 = *(v50 + 3);
    }

    v15 = v14;
    _Block_object_dispose(buf, 8);
    v16 = objc_alloc_init(v14);
    [v16 setRecognitionLevel:v12];
    [v16 setLanguages:v38];
    [v11 normalizedMinimumTextHeightRatio];
    *&v17 = v17;
    [v16 setMinimumTextHeight:v17];
    [v16 setUsesLanguageCorrection:{objc_msgSend(v11, "usesLanguageCorrection")}];
    v18 = dispatch_semaphore_create(0);
    objc_initWeak(location, self);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __53__AXMMediaAnalysisTextDetectorNode_evaluate_metrics___block_invoke_2;
    v39[3] = &unk_1E7A1DF48;
    v39[4] = self;
    objc_copyWeak(&v46, location);
    v31 = v16;
    v40 = v31;
    v41 = evaluateCopy;
    v42 = metricsCopy;
    v30 = v13;
    v43 = v30;
    v44 = v11;
    v19 = v18;
    v45 = v19;
    v32 = MEMORY[0x1B2700900](v39);
    v20 = +[AXMMADSService sharedInstance];
    service = [v20 service];

    if (photoLibraryURL && phAssetLocalIdentifier)
    {
      v55[0] = v31;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      v23 = [service performRequests:v22 onAssetWithLocalIdentifier:phAssetLocalIdentifier fromPhotoLibraryWithURL:photoLibraryURL completionHandler:v32];
    }

    else if (ciImage)
    {
      v54 = v31;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      v23 = [service performRequests:v22 onCIImage:ciImage withOrientation:1 andIdentifier:&stru_1F23EA908 completionHandler:v32];
    }

    else
    {
      if (!pixelBuffer)
      {
        v25 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v53 = v31;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v23 = [service performRequests:v22 onPixelBuffer:objc_msgSend(pixelBuffer withOrientation:"pixelBuffer") andIdentifier:objc_msgSend(pixelBuffer completionHandler:{"orientation"), &stru_1F23EA908, v32}];
    }

    v25 = v23;

LABEL_14:
    v26 = dispatch_time(0, 100000000);
    if (dispatch_semaphore_wait(v19, v26))
    {
      v27 = 100000000;
      do
      {
        if (v27 >= 0x2540BE401)
        {
          v28 = AXMediaLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [(AXMMediaAnalysisTextDetectorNode *)buf evaluate:v28 metrics:?];
          }

          [service cancelRequestID:v25];
        }

        v29 = dispatch_time(0, 100000000);
        v27 += 100000000;
      }

      while (dispatch_semaphore_wait(v19, v29));
    }

    objc_destroyWeak(&v46);
    objc_destroyWeak(location);

    v24 = v30;
    goto LABEL_22;
  }

  v24 = AXMediaLogOCR();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1AE37B000, v24, OS_LOG_TYPE_DEFAULT, "Will not perform text detection. No effective languages resolved", location, 2u);
  }

LABEL_22:
}

id __53__AXMMediaAnalysisTextDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF58];
  v3 = a2;
  v4 = [[v2 alloc] initWithLocaleIdentifier:v3];

  return v4;
}

void __53__AXMMediaAnalysisTextDetectorNode_evaluate_metrics___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AXMMediaAnalysisTextDetectorNode_evaluate_metrics___block_invoke_3;
  block[3] = &unk_1E7A1DF20;
  objc_copyWeak(&v21, (a1 + 88));
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = *(a1 + 72);
  v22 = a2;
  v18 = v13;
  v19 = v5;
  v20 = *(a1 + 80);
  v14 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v21);
}

intptr_t __53__AXMMediaAnalysisTextDetectorNode_evaluate_metrics___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained processResults:*(a1 + 32) context:*(a1 + 40) metrics:*(a1 + 48) textDetectionLocales:*(a1 + 56) textDetectionOptions:*(a1 + 64) requestID:*(a1 + 96) error:*(a1 + 72)];

  v3 = *(a1 + 80);

  return dispatch_semaphore_signal(v3);
}

- (AXMSemanticTextFactory)semanticTextFactory
{
  semanticTextFactory = self->_semanticTextFactory;
  if (!semanticTextFactory)
  {
    v4 = objc_alloc_init(AXMSemanticTextFactory);
    v5 = self->_semanticTextFactory;
    self->_semanticTextFactory = v4;

    semanticTextFactory = self->_semanticTextFactory;
  }

  return semanticTextFactory;
}

- (AXMTextLayoutManager)textLayoutManager
{
  textLayoutManager = self->_textLayoutManager;
  if (!textLayoutManager)
  {
    v4 = [AXMTextLayoutManager alloc];
    semanticTextFactory = [(AXMMediaAnalysisTextDetectorNode *)self semanticTextFactory];
    v6 = [(AXMTextLayoutManager *)v4 initWithSemanticTextFactory:semanticTextFactory];
    v7 = self->_textLayoutManager;
    self->_textLayoutManager = v6;

    textLayoutManager = self->_textLayoutManager;
  }

  return textLayoutManager;
}

- (AXMTextSpecialCase)specialCaseManager
{
  specialCaseManager = self->_specialCaseManager;
  if (!specialCaseManager)
  {
    v4 = objc_alloc_init(AXMTextSpecialCase);
    v5 = self->_specialCaseManager;
    self->_specialCaseManager = v4;

    specialCaseManager = self->_specialCaseManager;
  }

  return specialCaseManager;
}

- (id)_sequencesForObservations:(id)observations canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v37 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = observationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v13 topCandidates:{1, v31}];
        firstObject = [v14 firstObject];

        if (firstObject)
        {
          string = [firstObject string];
          if ([string length])
          {
            [string rangeOfComposedCharacterSequenceAtIndex:0];
            if (v17 != 1 || [string characterAtIndex:0] != 0xFFFF)
            {
              v18 = -[AXMVisionFeatureRecognizedText initWithRecognizedText:range:]([AXMVisionFeatureRecognizedText alloc], "initWithRecognizedText:range:", firstObject, 0, [string length]);
              [v13 boundingBox];
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v26 = v25;
              v35 = v18;
              v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
              [firstObject confidence];
              height = [AXMVisionFeature textSequence:string boundingBox:v27 recognizedTextFeatures:v20 confidence:v22 canvasSize:v24, v26, v28, width, height];

              [array addObject:height];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)_textDetectionOptions:(id)options
{
  v9 = *MEMORY[0x1E69E9840];
  analysisOptions = [options analysisOptions];
  textDetectionOptions = [analysisOptions textDetectionOptions];

  if (!textDetectionOptions)
  {
    textDetectionOptions = +[AXMTextDetectionOptions defaultOptions];
  }

  v5 = AXMediaLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = textDetectionOptions;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_INFO, "AXM Media analysis: Will detect text with options: %@", &v7, 0xCu);
  }

  return textDetectionOptions;
}

- (double)detectTextSkew:(id)skew
{
  skewCopy = skew;
  if ([skewCopy count])
  {
    firstObject = [skewCopy firstObject];
    v5 = [firstObject topCandidates:1];
    firstObject2 = [v5 firstObject];

    v22 = 0;
    v7 = [firstObject2 boundingBoxForRange:1 error:{1, &v22}];
    v8 = v22;
    string = [firstObject2 string];
    v21 = v8;
    v10 = [firstObject2 boundingBoxForRange:objc_msgSend(string error:{"length") - 2, 1, &v21}];
    v11 = v21;

    [v7 bottomLeft];
    v13 = v12;
    v15 = v14;
    [v10 bottomRight];
    v18 = v17 - v13;
    if (v18 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = atan((v16 - v15) / v18);
    }
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

- (void)processResults:(uint64_t)a1 context:(NSObject *)a2 metrics:textDetectionLocales:textDetectionOptions:requestID:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Error in text analysis: %@", &v2, 0xCu);
}

- (void)processResults:(uint64_t)a1 context:(NSObject *)a2 metrics:textDetectionLocales:textDetectionOptions:requestID:error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_DEBUG, "AXM Media analysis: sceneLabelsForOCRDocumentTypeDetection : %@", &v2, 0xCu);
}

- (void)evaluate:(os_log_t)log metrics:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1AE37B000, log, OS_LOG_TYPE_ERROR, "AXM Media Analysis: Text Detection request timed out", buf, 2u);
}

@end