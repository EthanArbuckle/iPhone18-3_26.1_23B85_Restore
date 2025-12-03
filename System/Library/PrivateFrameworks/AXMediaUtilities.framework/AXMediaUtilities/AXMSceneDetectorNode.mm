@interface AXMSceneDetectorNode
+ (BOOL)isSupported;
+ (NSArray)possibleSceneClassifications;
- (AXMSceneDetectorNode)initWithCoder:(id)coder;
- (BOOL)_shouldIncludeSceneLabelForOCRDocumenTypeDetection:(id)detection;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMSceneDetectorNode

- (AXMSceneDetectorNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AXMSceneDetectorNode;
  v5 = [(AXMEvaluationNode *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_taxonomyOptions = [coderCopy decodeInt32ForKey:@"taxonomyOptions"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AXMSceneDetectorNode;
  coderCopy = coder;
  [(AXMEvaluationNode *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:self->_taxonomyOptions forKey:{@"taxonomyOptions", v5.receiver, v5.super_class}];
}

+ (BOOL)isSupported
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v3 = [processInfo physicalMemory] > 0x773593FF;

  return v3;
}

+ (NSArray)possibleSceneClassifications
{
  v16 = *MEMORY[0x1E69E9840];
  knownSceneClassifications = [getVNSceneClassificationRequestClass() knownSceneClassifications];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = knownSceneClassifications;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        identifier = [*(*(&v11 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNSceneClassificationRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMSceneDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMSceneDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v61[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v57.receiver = self;
  v57.super_class = AXMSceneDetectorNode;
  [(AXMEvaluationNode *)&v57 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  _sceneClassificationRequest = [(AXMSceneDetectorNode *)self _sceneClassificationRequest];

  if (!_sceneClassificationRequest)
  {
    v10 = objc_alloc_init(getVNSceneClassificationRequestClass());
    [(AXMSceneDetectorNode *)self _setSceneClassificationRequest:v10];

    _sceneClassificationRequest2 = [(AXMSceneDetectorNode *)self _sceneClassificationRequest];
    [AXMEvaluationNode configureForRunningOnANEIfPossibleWithRequest:_sceneClassificationRequest2];
  }

  _sceneClassificationRequest3 = [(AXMSceneDetectorNode *)self _sceneClassificationRequest];
  v61[0] = _sceneClassificationRequest3;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v13 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];

  v44 = _sceneClassificationRequest3;
  if ([(AXMSceneDetectorNode *)self taxonomyOptions])
  {
    v43 = v8;
    results = [_sceneClassificationRequest3 results];
    v15 = [AXMPhotoVisionSupport processSceneClassifications:results withOptions:[(AXMSceneDetectorNode *)self taxonomyOptions]];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    results2 = v15;
    v17 = [results2 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v54;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(results2);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          [evaluateCopy size];
          v22 = [AXMVisionFeature featureWithTaxonomyNode:v21 canvasSize:?];
          [evaluateCopy appendFeature:v22];
        }

        v18 = [results2 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    results2 = [_sceneClassificationRequest3 results];
    v23 = [results2 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = v23;
    v43 = v8;
    v25 = *v50;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(results2);
        }

        v27 = *(*(&v49 + 1) + 8 * j);
        v28 = [AXMPhotoVisionSupport localizedLabelForClassificationObservation:v27];
        identifier = [v27 identifier];
        [v27 confidence];
        v31 = v30;
        [evaluateCopy size];
        v33 = v32;
        LODWORD(v32) = v31;
        v35 = [AXMVisionFeature sceneClassificationWithLabel:identifier localizedValue:v28 confidence:v32 canvasSize:v33, v34];
        [evaluateCopy appendFeature:v35];
      }

      v24 = [results2 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v24);
  }

  v8 = v43;
  _sceneClassificationRequest3 = v44;
LABEL_20:

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  results3 = [_sceneClassificationRequest3 results];
  v37 = [results3 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v46;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(results3);
        }

        v41 = *(*(&v45 + 1) + 8 * k);
        if ([(AXMSceneDetectorNode *)self _shouldIncludeSceneLabelForOCRDocumenTypeDetection:v41])
        {
          identifier2 = [v41 identifier];
          [evaluateCopy addSceneLabelForOCRDocumentTypeDetection:identifier2];
        }
      }

      v38 = [results3 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v38);
  }

  [evaluateCopy addEvaluatedFeatureType:9];
  objc_autoreleasePoolPop(v8);
}

- (BOOL)_shouldIncludeSceneLabelForOCRDocumenTypeDetection:(id)detection
{
  detectionCopy = detection;
  identifier = [detectionCopy identifier];
  v5 = 0.35;
  if (([identifier isEqualToString:@"diagram"] & 1) == 0 && (objc_msgSend(identifier, "isEqualToString:", @"envelope") & 1) == 0)
  {
    if (![identifier isEqualToString:@"receipt"])
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = 0.65;
  }

  [detectionCopy confidence];
  v7 = v5 < v6;
LABEL_6:

  return v7;
}

@end