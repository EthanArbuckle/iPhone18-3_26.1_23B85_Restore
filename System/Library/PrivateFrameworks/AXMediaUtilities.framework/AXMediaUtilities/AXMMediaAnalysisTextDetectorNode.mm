@interface AXMMediaAnalysisTextDetectorNode
- (AXMMediaAnalysisTextDetectorNode)initWithCoder:(id)a3;
- (AXMSemanticTextFactory)semanticTextFactory;
- (AXMTextLayoutManager)textLayoutManager;
- (AXMTextSpecialCase)specialCaseManager;
- (double)detectTextSkew:(id)a3;
- (id)_sequencesForObservations:(id)a3 canvasSize:(CGSize)a4;
- (id)_textDetectionOptions:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)processResults:(id)a3 context:(id)a4 metrics:(id)a5 textDetectionLocales:(id)a6 textDetectionOptions:(id)a7 requestID:(int)a8 error:(id)a9;
@end

@implementation AXMMediaAnalysisTextDetectorNode

- (AXMMediaAnalysisTextDetectorNode)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = AXMMediaAnalysisTextDetectorNode;
  v3 = [(AXMEvaluationNode *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("process-results-queue-axmedia", 0);
    processResultQueue = v3->_processResultQueue;
    v3->_processResultQueue = v4;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = AXMMediaAnalysisTextDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:a3];
}

- (void)processResults:(id)a3 context:(id)a4 metrics:(id)a5 textDetectionLocales:(id)a6 textDetectionOptions:(id)a7 requestID:(int)a8 error:(id)a9
{
  v55 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = AXMediaLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v41 = [v15 results];
    *buf = 67109634;
    *&buf[4] = a8;
    *&buf[8] = 2112;
    *&buf[10] = v20;
    *&buf[18] = 2112;
    *&buf[20] = v41;
    _os_log_debug_impl(&dword_1AE37B000, v21, OS_LOG_TYPE_DEBUG, "AXM Media analysis: Text Detection results: requestID: %d error: %@ results: %@", buf, 0x1Cu);
  }

  if (v20)
  {
    v22 = AXMediaLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [AXMMediaAnalysisTextDetectorNode processResults:v20 context:v22 metrics:? textDetectionLocales:? textDetectionOptions:? requestID:? error:?];
    }

    goto LABEL_32;
  }

  if (a8 != -1)
  {
    v23 = [v16 sourceInput];
    v22 = [v23 ciImage];

    if (!v22)
    {
      v22 = [v16 generateImageRepresentation];
    }

    v47 = [v15 results];
    if (![v47 count])
    {
      goto LABEL_31;
    }

    v24 = [v47 firstObject];
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

    v45 = [v47 firstObject];
    v28 = [v45 observations];
    v44 = [v28 firstObject];

    v46 = [v44 blocksWithTypes:4 inRegion:{0.0, 0.0, 1.0, 1.0}];
    if ([v46 count])
    {
      v43 = [v16 mediaAnalysisSceneLabelsForOCRDocumentTypeDetection];
      v29 = AXMediaLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [AXMMediaAnalysisTextDetectorNode processResults:v43 context:v29 metrics:? textDetectionLocales:? textDetectionOptions:? requestID:? error:?];
      }

      if (![v43 count])
      {
        v30 = [v16 analysisOptions];
        v31 = [v30 detectMADScenes];

        if (v31)
        {
          v32 = [(AXMVisionEngineNode *)[AXMMediaAnalysisSceneDetectorNode alloc] initWithIdentifier:@"mad-scene"];
          [(AXMMediaAnalysisSceneDetectorNode *)v32 setTaxonomyOptions:7];
          [(AXMMediaAnalysisSceneDetectorNode *)v32 evaluate:v16 metrics:v17];
        }
      }

      if (v22)
      {
        [v16 size];
        v33 = [(AXMMediaAnalysisTextDetectorNode *)self _sequencesForObservations:v46 canvasSize:?];
        v34 = [(AXMMediaAnalysisTextDetectorNode *)self textLayoutManager];
        [v16 size];
        v48 = 0;
        v37 = [v34 documentWithTextFeatures:v33 canvasSize:v18 preferredLocales:objc_msgSend(v19 applySemanticAnalysis:"shouldApplySemanticTextFiltering") error:{&v48, v35, v36}];
        v38 = v48;
        v39 = v34;
        v40 = v38;

        if (v37)
        {
          [v16 appendFeature:v37];
          [v16 setEffectiveTextDetectionLocales:v18];
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

  v22 = AXMediaLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [AXMMediaAnalysisTextDetectorNode processResults:v22 context:? metrics:? textDetectionLocales:? textDetectionOptions:? requestID:? error:?];
  }

LABEL_32:
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v47.receiver = self;
  v47.super_class = AXMMediaAnalysisTextDetectorNode;
  v35 = a4;
  [(AXMEvaluationNode *)&v47 evaluate:v6 metrics:?];
  v7 = [v6 sourceInput];
  v36 = [v7 phAssetLocalIdentifier];

  v8 = [v6 sourceInput];
  v37 = [v8 photoLibraryURL];

  v9 = [v6 sourceInput];
  v34 = [v9 ciImage];

  v10 = [v6 sourceInput];
  v33 = [v10 pixelBuffer];

  v11 = [(AXMMediaAnalysisTextDetectorNode *)self _textDetectionOptions:v6];
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
    v41 = v6;
    v42 = v35;
    v30 = v13;
    v43 = v30;
    v44 = v11;
    v19 = v18;
    v45 = v19;
    v32 = MEMORY[0x1B2700900](v39);
    v20 = +[AXMMADSService sharedInstance];
    v21 = [v20 service];

    if (v37 && v36)
    {
      v55[0] = v31;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
      v23 = [v21 performRequests:v22 onAssetWithLocalIdentifier:v36 fromPhotoLibraryWithURL:v37 completionHandler:v32];
    }

    else if (v34)
    {
      v54 = v31;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      v23 = [v21 performRequests:v22 onCIImage:v34 withOrientation:1 andIdentifier:&stru_1F23EA908 completionHandler:v32];
    }

    else
    {
      if (!v33)
      {
        v25 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v53 = v31;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v23 = [v21 performRequests:v22 onPixelBuffer:objc_msgSend(v33 withOrientation:"pixelBuffer") andIdentifier:objc_msgSend(v33 completionHandler:{"orientation"), &stru_1F23EA908, v32}];
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

          [v21 cancelRequestID:v25];
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
    v5 = [(AXMMediaAnalysisTextDetectorNode *)self semanticTextFactory];
    v6 = [(AXMTextLayoutManager *)v4 initWithSemanticTextFactory:v5];
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

- (id)_sequencesForObservations:(id)a3 canvasSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
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
        v15 = [v14 firstObject];

        if (v15)
        {
          v16 = [v15 string];
          if ([v16 length])
          {
            [v16 rangeOfComposedCharacterSequenceAtIndex:0];
            if (v17 != 1 || [v16 characterAtIndex:0] != 0xFFFF)
            {
              v18 = -[AXMVisionFeatureRecognizedText initWithRecognizedText:range:]([AXMVisionFeatureRecognizedText alloc], "initWithRecognizedText:range:", v15, 0, [v16 length]);
              [v13 boundingBox];
              v20 = v19;
              v22 = v21;
              v24 = v23;
              v26 = v25;
              v35 = v18;
              v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
              [v15 confidence];
              v29 = [AXMVisionFeature textSequence:v16 boundingBox:v27 recognizedTextFeatures:v20 confidence:v22 canvasSize:v24, v26, v28, width, height];

              [v7 addObject:v29];
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_textDetectionOptions:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a3 analysisOptions];
  v4 = [v3 textDetectionOptions];

  if (!v4)
  {
    v4 = +[AXMTextDetectionOptions defaultOptions];
  }

  v5 = AXMediaLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_INFO, "AXM Media analysis: Will detect text with options: %@", &v7, 0xCu);
  }

  return v4;
}

- (double)detectTextSkew:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 topCandidates:1];
    v6 = [v5 firstObject];

    v22 = 0;
    v7 = [v6 boundingBoxForRange:1 error:{1, &v22}];
    v8 = v22;
    v9 = [v6 string];
    v21 = v8;
    v10 = [v6 boundingBoxForRange:objc_msgSend(v9 error:{"length") - 2, 1, &v21}];
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