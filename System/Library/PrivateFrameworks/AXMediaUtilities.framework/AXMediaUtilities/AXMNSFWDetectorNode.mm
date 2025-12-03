@interface AXMNSFWDetectorNode
+ (BOOL)addNSFWResultToContext:(id)context forIdentifier:(id)identifier confidence:(double)confidence markAsSensitiveCaptionContent:(BOOL)content;
+ (BOOL)isSupported;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMNSFWDetectorNode

+ (BOOL)isSupported
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v3 = [processInfo physicalMemory] > 0x773593FF;

  return v3;
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNVYvzEtX1JlUdu8xx5qhDIClass())
  {
    v5.receiver = self;
    v5.super_class = AXMNSFWDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMNSFWDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v27[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v25.receiver = self;
  v25.super_class = AXMNSFWDetectorNode;
  [(AXMEvaluationNode *)&v25 evaluate:evaluateCopy metrics:metricsCopy];
  context = objc_autoreleasePoolPush();
  request = self->_request;
  if (!request)
  {
    v9 = objc_alloc_init(getVNVYvzEtX1JlUdu8xx5qhDIClass());
    v10 = self->_request;
    self->_request = v9;

    request = self->_request;
  }

  v27[0] = request;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v11 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  results = [(VNVYvzEtX1JlUdu8xx5qhDI *)self->_request results];
  v13 = [results countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(results);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        identifier = [v17 identifier];
        [v17 confidence];
        [AXMNSFWDetectorNode addNSFWResultToContext:evaluateCopy forIdentifier:identifier confidence:0 markAsSensitiveCaptionContent:v19];
      }

      v14 = [results countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

+ (BOOL)addNSFWResultToContext:(id)context forIdentifier:(id)identifier confidence:(double)confidence markAsSensitiveCaptionContent:(BOOL)content
{
  contentCopy = content;
  contextCopy = context;
  identifierCopy = identifier;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v11 = getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr;
  v24 = getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr;
  if (!getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr)
  {
    v12 = VisionLibrary_5();
    v22[3] = dlsym(v12, "VN81aedeb999c79d74e79af7f1c922cf97");
    getVN81aedeb999c79d74e79af7f1c922cf97SymbolLoc_ptr = v22[3];
    v11 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v11)
  {
    v20 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v21, 8);
    _Unwind_Resume(v20);
  }

  v13 = [identifierCopy isEqualToString:*v11];
  if (v13)
  {
    [contextCopy size];
    v16 = v15;
    confidenceCopy = confidence;
    *&v15 = confidenceCopy;
    v18 = [AXMVisionFeature nsfwClassificationWithCategory:@"NSFW Explicit" confidence:v15 canvasSize:v16, v17];
    [v18 setCaptionMayContainSensitiveContent:contentCopy];
    [contextCopy appendFeature:v18];
  }

  return v13;
}

@end