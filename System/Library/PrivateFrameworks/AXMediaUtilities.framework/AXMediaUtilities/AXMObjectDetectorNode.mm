@interface AXMObjectDetectorNode
+ (BOOL)isSupported;
+ (id)possibleObjectClassifications;
- (AXMObjectDetectorNode)initWithCoder:(id)coder;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMObjectDetectorNode

- (AXMObjectDetectorNode)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AXMObjectDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AXMObjectDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:coder];
}

+ (BOOL)isSupported
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v3 = [processInfo physicalMemory] > 0x773593FF;

  return v3;
}

+ (id)possibleObjectClassifications
{
  v2 = objc_alloc_init(getVNRecognizeObjectsRequestClass());
  v6 = 0;
  v3 = [v2 supportedIdentifiersAndReturnError:&v6];
  if (v6)
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(AXMObjectDetectorNode *)v4];
    }
  }

  if (!v3)
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNRecognizeObjectsRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMObjectDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMObjectDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
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
  v57.super_class = AXMObjectDetectorNode;
  [(AXMEvaluationNode *)&v57 evaluate:evaluateCopy metrics:metricsCopy];
  context = objc_autoreleasePoolPush();
  recognizeObjectsRequest = self->_recognizeObjectsRequest;
  if (!recognizeObjectsRequest)
  {
    v9 = objc_alloc_init(getVNRecognizeObjectsRequestClass());
    v10 = self->_recognizeObjectsRequest;
    self->_recognizeObjectsRequest = v9;

    [AXMEvaluationNode configureForRunningOnANEIfPossibleWithRequest:self->_recognizeObjectsRequest, context];
    recognizeObjectsRequest = self->_recognizeObjectsRequest;
  }

  v61[0] = recognizeObjectsRequest;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:{1, context}];
  v51 = evaluateCopy;
  v50 = metricsCopy;
  [(AXMEvaluationNode *)self evaluateRequests:v11 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  results = [(VNRecognizeObjectsRequest *)self->_recognizeObjectsRequest results];
  v52 = [results countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v52)
  {
    v13 = *v54;
    v14 = 0x1E7A1B000uLL;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(results);
        }

        v16 = *(*(&v53 + 1) + 8 * i);
        v17 = [*(v14 + 2656) axmTaxonomyNodeForObjectObservation:v16];
        v18 = v17;
        if (v17)
        {
          label = [v17 label];
          if (label && (v20 = label, [*(v14 + 2656) _deniedVoiceOverObjectClassificationLabels], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "label"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "containsObject:", v22), v22, v21, v20, v23))
          {
            localizedName = AXMediaLogCommon();
            if (os_log_type_enabled(localizedName, OS_LOG_TYPE_INFO))
            {
              label2 = [v18 label];
              *buf = 138412290;
              v59 = label2;
              _os_log_impl(&dword_1AE37B000, localizedName, OS_LOG_TYPE_INFO, "Object classifier detected but denied for VoiceOver: %@", buf, 0xCu);
            }
          }

          else
          {
            localizedName = [v18 localizedName];
            if (![localizedName length])
            {
              v26 = AXMediaLogCommon();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v59 = localizedName;
                _os_log_impl(&dword_1AE37B000, v26, OS_LOG_TYPE_DEFAULT, "Could not get localized value for label: %@. Falling back to raw value", buf, 0xCu);
              }

              label3 = [v18 label];

              localizedName = label3;
            }

            [v16 confidence];
            if (v28 > 0.4)
            {
              label4 = [v18 label];
              [v16 boundingBox];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v37 = v36;
              [v16 confidence];
              v39 = v38;
              [v51 size];
              v41 = v40;
              v43 = v42;
              v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v18, "sceneClassId")}];
              stringValue = [v44 stringValue];
              LODWORD(v46) = v39;
              v47 = [AXMVisionFeature objectClassificationWithLabel:label4 localizedValue:localizedName boundingBox:stringValue confidence:v31 canvasSize:v33 sceneClassId:v35, v37, v46, v41, v43];

              v14 = 0x1E7A1B000;
              [v51 appendFeature:v47];
            }
          }
        }

        else
        {
          localizedName = AXMediaLogCommon();
          if (os_log_type_enabled(localizedName, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE37B000, localizedName, OS_LOG_TYPE_DEFAULT, "Recognized object result produced no labels", buf, 2u);
          }
        }
      }

      v52 = [results countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v52);
  }

  [v51 addEvaluatedFeatureType:10];
  objc_autoreleasePoolPop(contexta);
}

@end