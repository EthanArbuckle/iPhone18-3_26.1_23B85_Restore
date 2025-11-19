@interface AXMProminentObjectsDetectorNode
- (AXMProminentObjectsDetectorNode)initWithCoder:(id)a3;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)nodeInitialize;
@end

@implementation AXMProminentObjectsDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMProminentObjectsDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (AXMProminentObjectsDetectorNode)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXMProminentObjectsDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = AXMProminentObjectsDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:a3];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNGenerateAttentionBasedSaliencyImageRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMProminentObjectsDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMProminentObjectsDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = AXMProminentObjectsDetectorNode;
  [(AXMEvaluationNode *)&v25 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  v9 = [(AXMProminentObjectsDetectorNode *)self _imageSaliencyRequest];

  if (!v9)
  {
    v10 = objc_alloc_init(getVNGenerateAttentionBasedSaliencyImageRequestClass());
    [(AXMProminentObjectsDetectorNode *)self set_imageSaliencyRequest:v10];

    v11 = [(AXMProminentObjectsDetectorNode *)self _imageSaliencyRequest];
    [AXMEvaluationNode configureForRunningOnANEIfPossibleWithRequest:v11];
  }

  v12 = [(AXMProminentObjectsDetectorNode *)self _imageSaliencyRequest];
  v26[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v13 withContext:v6 requestHandlerOptions:0 metrics:v7 error:0];

  v14 = [v12 results];
  v15 = [v14 firstObject];

  v16 = [v15 salientObjects];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __52__AXMProminentObjectsDetectorNode_evaluate_metrics___block_invoke;
  v22 = &unk_1E7A1E1E0;
  v23 = v15;
  v17 = v6;
  v24 = v17;
  v18 = v15;
  [v16 enumerateObjectsUsingBlock:&v19];
  [v17 addEvaluatedFeatureType:{19, v19, v20, v21, v22}];

  objc_autoreleasePoolPop(v8);
}

void __52__AXMProminentObjectsDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, void *a2)
{
  v29 = a2;
  [v29 boundingBox];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) narrowedBoundingBox];
  v33.origin.x = v11;
  v33.origin.y = v12;
  v33.size.width = v13;
  v33.size.height = v14;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectIntersection(v31, v33);
  if (!CGRectIsEmpty(v32))
  {
    [v29 boundingBox];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = 1.0 - v21 - v19;
    [*(a1 + 40) size];
    v24 = v23;
    v26 = v25;
    [v29 confidence];
    v28 = [AXMVisionFeature prominentObjectWithBoundingBox:v16 canvasSize:v22 confidence:v18, v20, v24, v26, v27];
    [*(a1 + 40) appendFeature:v28];
  }
}

@end