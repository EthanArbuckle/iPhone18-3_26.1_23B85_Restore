@interface AXMTextDetectorNode
+ (id)effectiveLanguagesFromOptions:(id)a3;
+ (id)filterPreferredDetectionLanguages:(id)a3 withSupportedDetectionLanguages:(id)a4;
+ (id)supportedDetectionLanguagesForLevel:(int64_t)a3;
+ (id)textDetectionLanguagesFromOptions:(id)a3;
- (AXMSemanticTextFactory)semanticTextFactory;
- (AXMTextLayoutManager)textLayoutManager;
- (AXMTextSpecialCase)specialCaseManager;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (NSArray)sceneLabelsForOCRDocumentTypeDetection;
- (double)detectTextSkew:(id)a3;
- (id)_sequencesForObservations:(id)a3 canvasSize:(CGSize)a4;
- (id)_textDetectionOptions:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)nodeInitialize;
@end

@implementation AXMTextDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMTextDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNRecognizeTextRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMTextDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMTextDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

+ (id)effectiveLanguagesFromOptions:(id)a3
{
  v3 = a3;
  v4 = [AXMTextDetectorNode recognitionLevelFromOptions:v3];
  v5 = [AXMTextDetectorNode textDetectionLanguagesFromOptions:v3];

  v6 = [AXMTextDetectorNode supportedDetectionLanguagesForLevel:v4];
  v7 = [AXMTextDetectorNode filterPreferredDetectionLanguages:v5 withSupportedDetectionLanguages:v6];

  return v7;
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v86[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(AXMTextDetectorNode *)self _textDetectionOptions:v6];
  v10 = [AXMTextDetectorNode recognitionLevelFromOptions:v9];
  v11 = [AXMTextDetectorNode effectiveLanguagesFromOptions:v9];
  if ([v11 count])
  {
    v83.receiver = self;
    v83.super_class = AXMTextDetectorNode;
    [(AXMEvaluationNode *)&v83 evaluate:v6 metrics:v7];
    v12 = [v11 ax_mappedArrayUsingBlock:&__block_literal_global_6];
    v13 = objc_alloc_init(getVNRecognizeTextRequestClass());
    [v13 setRecognitionLanguages:v11];
    [v13 setRecognitionLevel:v10];
    [v13 setUsesLanguageCorrection:{objc_msgSend(v9, "usesLanguageCorrection")}];
    [v9 normalizedMinimumTextHeightRatio];
    *&v14 = v14;
    [v13 setMinimumTextHeight:v14];
    if (AXIsInternalInstall() && AXDeviceIsVM())
    {
      v15 = AXMediaLogOCR();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE37B000, v15, OS_LOG_TYPE_DEFAULT, "Using CPU only for VM request", buf, 2u);
      }

      [v13 setUsesCPUOnly:1];
    }

    v86[0] = v13;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
    v82 = 0;
    [(AXMEvaluationNode *)self evaluateRequests:v16 withContext:v6 requestHandlerOptions:0 metrics:v7 error:&v82];
    v17 = v82;

    if (v17)
    {
      v18 = AXMediaLogOCR();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v85 = v17;
        v19 = "Text detection error occurred: %@";
LABEL_46:
        _os_log_impl(&dword_1AE37B000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    v20 = [v13 results];
    v21 = [v20 count];

    if (!v21)
    {
      v17 = 0;
      goto LABEL_44;
    }

    v22 = [v6 sceneLabelsForOCRDocumentTypeDetection];
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v23 = [v6 mediaAnalysisSceneLabelsForOCRDocumentTypeDetection];

      v22 = v23;
    }

    v75 = v22;
    v76 = v12;
    if (![v22 count])
    {
      v24 = AXRuntimeCheck_MediaAnalysisSupport();
      v25 = [v6 analysisOptions];
      v26 = v25;
      if (v24)
      {
        v27 = [v25 detectMADScenes];

        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }

        v28 = @"mad-scene";
        v29 = off_1E7A1B9E0;
      }

      else
      {
        v30 = [v25 detectScenes];

        if (!v30)
        {
          goto LABEL_23;
        }

        v28 = @"scene";
        v29 = off_1E7A1BA90;
      }

      v31 = [objc_alloc(*v29) initWithIdentifier:v28];
      [v31 setTaxonomyOptions:7];
      [v31 evaluate:v6 metrics:v7];
    }

LABEL_23:
    v32 = [v6 sourceInput];
    v33 = [v32 ciImage];

    if (v33)
    {
      v73 = v8;
    }

    else
    {
      v34 = [v6 generateImageRepresentation];
      if (!v34)
      {
        v61 = AXMediaLogOCR();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE37B000, v61, OS_LOG_TYPE_DEFAULT, "Unable to convert detected text into document. Input image unexpectedly nil", buf, 2u);
        }

        v17 = 0;
LABEL_43:
        v12 = v76;
LABEL_44:
        v18 = AXMediaLogOCR();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v17;
          v19 = "Unable to convert detected text into document: %@";
          goto LABEL_46;
        }

LABEL_47:

        goto LABEL_48;
      }

      v73 = v8;
      v33 = v34;
    }

    v35 = [v13 results];
    [v6 size];
    v36 = [(AXMTextDetectorNode *)self _sequencesForObservations:v35 canvasSize:?];

    v74 = v36;
    v37 = [v36 ax_flatMappedArrayUsingBlock:&__block_literal_global_169];
    v38 = [(AXMTextDetectorNode *)self specialCaseManager];
    v72 = v37;
    v39 = [v38 detectSpecialCase:v37 preferredLocales:v76];

    v71 = v39;
    if ([v39 isEqualToString:@"NutritionLabel"])
    {
      v40 = [(AXMTextDetectorNode *)self textLayoutManager];
      [v6 size];
      v42 = v41;
      v44 = v43;
      v45 = [v6 visionImageRequestHandler];
      v81 = 0;
      v70 = v40;
      v18 = [v40 documentWithNutritionLabel:v33 canvasSize:v45 requestHandler:v7 metrics:&v81 error:{v42, v44}];
      v17 = v81;

      v46 = v75;
      v8 = v73;
      goto LABEL_41;
    }

    v47 = [v75 firstObject];
    v48 = [v47 isEqualToString:@"receipt"];

    v8 = v73;
    if (v48)
    {
      v49 = [(AXMTextDetectorNode *)self textLayoutManager];
      v69 = [v13 results];
      [(AXMTextDetectorNode *)self detectTextSkew:v69];
      v51 = v50;
      [v6 size];
      v53 = v52;
      v55 = v54;
      v56 = [v6 visionImageRequestHandler];
      v80 = 0;
      v70 = v49;
      v18 = [v49 documentWithReceipt:v33 withTextSkew:v76 canvasSize:v56 preferredLocales:v7 requestHandler:&v80 metrics:v51 error:{v53, v55}];
      v17 = v80;

LABEL_31:
      v46 = v75;
      goto LABEL_41;
    }

    v46 = v75;
    if ([v75 containsObject:@"envelope"])
    {
      v57 = [(AXMTextDetectorNode *)self textLayoutManager];
      [v6 size];
      v79 = 0;
      v70 = v57;
      v18 = [v57 envelopeWithTextFeatures:v74 canvasSize:v76 preferredLocales:objc_msgSend(v9 applySemanticAnalysis:"shouldApplySemanticTextFiltering") error:{&v79, v58, v59}];
      v60 = v79;
    }

    else
    {
      v62 = [v75 containsObject:@"diagram"];
      v63 = [(AXMTextDetectorNode *)self textLayoutManager];
      [v6 size];
      v66 = v64;
      v67 = v65;
      v70 = v63;
      if (v62)
      {
        v68 = [v6 visionImageRequestHandler];
        v78 = 0;
        v18 = [v63 documentWithTable:v33 canvasSize:v76 preferredLocales:v68 requestHandler:v7 metrics:&v78 error:{v66, v67}];
        v17 = v78;

        goto LABEL_31;
      }

      v77 = 0;
      v18 = [v63 documentWithTextFeatures:v74 canvasSize:v76 preferredLocales:objc_msgSend(v9 applySemanticAnalysis:"shouldApplySemanticTextFiltering") error:{&v77, v64, v65}];
      v60 = v77;
    }

    v17 = v60;
LABEL_41:

    if (v18)
    {
      [v6 appendFeature:v18];
      v12 = v76;
      [v6 setEffectiveTextDetectionLocales:v76];
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  v17 = AXMediaLogOCR();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE37B000, v17, OS_LOG_TYPE_DEFAULT, "Will not perform text detection. No effective languages resolved", buf, 2u);
  }

LABEL_48:

  objc_autoreleasePoolPop(v8);
}

id __40__AXMTextDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF58];
  v3 = a2;
  v4 = [[v2 alloc] initWithLocaleIdentifier:v3];

  return v4;
}

- (NSArray)sceneLabelsForOCRDocumentTypeDetection
{
  sceneLabelsForOCRDocumentTypeDetection = self->_sceneLabelsForOCRDocumentTypeDetection;
  if (!sceneLabelsForOCRDocumentTypeDetection)
  {
    v4 = [MEMORY[0x1E695DEC8] array];
    v5 = self->_sceneLabelsForOCRDocumentTypeDetection;
    self->_sceneLabelsForOCRDocumentTypeDetection = v4;

    sceneLabelsForOCRDocumentTypeDetection = self->_sceneLabelsForOCRDocumentTypeDetection;
  }

  return sceneLabelsForOCRDocumentTypeDetection;
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
    v5 = [(AXMTextDetectorNode *)self semanticTextFactory];
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
    _os_log_impl(&dword_1AE37B000, v5, OS_LOG_TYPE_INFO, "Will detect text with options: %@", &v7, 0xCu);
  }

  return v4;
}

+ (id)textDetectionLanguagesFromOptions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 textDetectionLocales];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) languageCode];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (![v4 count])
  {
    v11 = AXMediaLogOCR();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXMTextDetectorNode textDetectionLanguagesFromOptions:v11];
    }

    [v4 addObject:@"en-US"];
  }

  return v4;
}

+ (id)supportedDetectionLanguagesForLevel:(int64_t)a3
{
  v7 = 0;
  v3 = [getVNRecognizeTextRequestClass() supportedRecognitionLanguagesForTextRecognitionLevel:a3 revision:2 error:&v7];
  v4 = v7;
  if (v4 || ![v3 count])
  {
    v5 = AXMediaLogOCR();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(AXMTextDetectorNode *)v4 supportedDetectionLanguagesForLevel:v5];
    }

    v3 = &unk_1F240B3B8;
  }

  return v3;
}

+ (id)filterPreferredDetectionLanguages:(id)a3 withSupportedDetectionLanguages:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA0] orderedSet];
  v8 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_182];
  v20 = v5;
  v9 = [v5 ax_mappedArrayUsingBlock:&__block_literal_global_184];
  if ([v6 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([v11 containsString:*(*(&v21 + 1) + 8 * i)])
            {
              v17 = [v6 objectAtIndexedSubscript:v10];
              [v7 addObject:v17];

              goto LABEL_13;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      ++v10;
    }

    while (v10 < [v6 count]);
  }

  v18 = [v7 array];

  return v18;
}

id __89__AXMTextDetectorNode_filterPreferredDetectionLanguages_withSupportedDetectionLanguages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v2];
  if (![v3 length])
  {
    v4 = v2;

    v3 = v4;
  }

  return v3;
}

id __89__AXMTextDetectorNode_filterPreferredDetectionLanguages_withSupportedDetectionLanguages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DF58] baseLanguageFromLanguage:v2];
  if (![v3 length])
  {
    v4 = v2;

    v3 = v4;
  }

  return v3;
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

+ (void)supportedDetectionLanguagesForLevel:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not get supported text detection languages: %@", &v2, 0xCu);
}

@end