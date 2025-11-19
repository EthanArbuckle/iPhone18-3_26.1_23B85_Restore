@interface AXMNSFWDetectorNode
+ (BOOL)addNSFWResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6;
+ (BOOL)isSupported;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMNSFWDetectorNode

+ (BOOL)isSupported
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 physicalMemory] > 0x773593FF;

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

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = AXMNSFWDetectorNode;
  [(AXMEvaluationNode *)&v25 evaluate:v6 metrics:v7];
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
  [(AXMEvaluationNode *)self evaluateRequests:v11 withContext:v6 requestHandlerOptions:0 metrics:v7 error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(VNVYvzEtX1JlUdu8xx5qhDI *)self->_request results];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 identifier];
        [v17 confidence];
        [AXMNSFWDetectorNode addNSFWResultToContext:v6 forIdentifier:v18 confidence:0 markAsSensitiveCaptionContent:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

+ (BOOL)addNSFWResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
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

  v13 = [v10 isEqualToString:*v11];
  if (v13)
  {
    [v9 size];
    v16 = v15;
    v14 = a5;
    *&v15 = v14;
    v18 = [AXMVisionFeature nsfwClassificationWithCategory:@"NSFW Explicit" confidence:v15 canvasSize:v16, v17];
    [v18 setCaptionMayContainSensitiveContent:v6];
    [v9 appendFeature:v18];
  }

  return v13;
}

@end