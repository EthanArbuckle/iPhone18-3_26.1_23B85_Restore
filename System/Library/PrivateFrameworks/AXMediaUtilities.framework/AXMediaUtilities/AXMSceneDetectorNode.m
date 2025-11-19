@interface AXMSceneDetectorNode
+ (BOOL)isSupported;
+ (NSArray)possibleSceneClassifications;
- (AXMSceneDetectorNode)initWithCoder:(id)a3;
- (BOOL)_shouldIncludeSceneLabelForOCRDocumenTypeDetection:(id)a3;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMSceneDetectorNode

- (AXMSceneDetectorNode)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AXMSceneDetectorNode;
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
  v5.super_class = AXMSceneDetectorNode;
  v4 = a3;
  [(AXMEvaluationNode *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:self->_taxonomyOptions forKey:{@"taxonomyOptions", v5.receiver, v5.super_class}];
}

+ (BOOL)isSupported
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 physicalMemory] > 0x773593FF;

  return v3;
}

+ (NSArray)possibleSceneClassifications
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [getVNSceneClassificationRequestClass() knownSceneClassifications];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
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

        v9 = [*(*(&v11 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
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

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v57.receiver = self;
  v57.super_class = AXMSceneDetectorNode;
  [(AXMEvaluationNode *)&v57 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  v9 = [(AXMSceneDetectorNode *)self _sceneClassificationRequest];

  if (!v9)
  {
    v10 = objc_alloc_init(getVNSceneClassificationRequestClass());
    [(AXMSceneDetectorNode *)self _setSceneClassificationRequest:v10];

    v11 = [(AXMSceneDetectorNode *)self _sceneClassificationRequest];
    [AXMEvaluationNode configureForRunningOnANEIfPossibleWithRequest:v11];
  }

  v12 = [(AXMSceneDetectorNode *)self _sceneClassificationRequest];
  v61[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v13 withContext:v6 requestHandlerOptions:0 metrics:v7 error:0];

  v44 = v12;
  if ([(AXMSceneDetectorNode *)self taxonomyOptions])
  {
    v43 = v8;
    v14 = [v12 results];
    v15 = [AXMPhotoVisionSupport processSceneClassifications:v14 withOptions:[(AXMSceneDetectorNode *)self taxonomyOptions]];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v53 objects:v60 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          [v6 size];
          v22 = [AXMVisionFeature featureWithTaxonomyNode:v21 canvasSize:?];
          [v6 appendFeature:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v53 objects:v60 count:16];
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
    v16 = [v12 results];
    v23 = [v16 countByEnumeratingWithState:&v49 objects:v59 count:16];
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
          objc_enumerationMutation(v16);
        }

        v27 = *(*(&v49 + 1) + 8 * j);
        v28 = [AXMPhotoVisionSupport localizedLabelForClassificationObservation:v27];
        v29 = [v27 identifier];
        [v27 confidence];
        v31 = v30;
        [v6 size];
        v33 = v32;
        LODWORD(v32) = v31;
        v35 = [AXMVisionFeature sceneClassificationWithLabel:v29 localizedValue:v28 confidence:v32 canvasSize:v33, v34];
        [v6 appendFeature:v35];
      }

      v24 = [v16 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v24);
  }

  v8 = v43;
  v12 = v44;
LABEL_20:

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = [v12 results];
  v37 = [v36 countByEnumeratingWithState:&v45 objects:v58 count:16];
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
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v45 + 1) + 8 * k);
        if ([(AXMSceneDetectorNode *)self _shouldIncludeSceneLabelForOCRDocumenTypeDetection:v41])
        {
          v42 = [v41 identifier];
          [v6 addSceneLabelForOCRDocumentTypeDetection:v42];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v38);
  }

  [v6 addEvaluatedFeatureType:9];
  objc_autoreleasePoolPop(v8);
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

@end