@interface AXMHorizonDetectorNode
- (AXMHorizonDetectorNode)initWithCoder:(id)a3;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate:(id)a3 metrics:(id)a4;
- (void)nodeInitialize;
@end

@implementation AXMHorizonDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMHorizonDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (AXMHorizonDetectorNode)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXMHorizonDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = AXMHorizonDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:a3];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNDetectHorizonRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMHorizonDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMHorizonDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AXMHorizonDetectorNode;
  [(AXMEvaluationNode *)&v16 evaluate:v6 metrics:v7];
  v8 = objc_autoreleasePoolPush();
  v9 = [(AXMHorizonDetectorNode *)self _detectHorizonRequest];

  if (!v9)
  {
    v10 = objc_alloc_init(getVNDetectHorizonRequestClass());
    [(AXMHorizonDetectorNode *)self _setDetectHorizonRequest:v10];
  }

  v11 = [(AXMHorizonDetectorNode *)self _detectHorizonRequest];
  v17[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v12 withContext:v6 requestHandlerOptions:0 metrics:v7 error:0];

  v13 = [v11 results];
  v14 = [v13 firstObject];

  if (v14)
  {
    [v6 size];
    v15 = [AXMVisionFeature featureWithVisionRequest:v11 horizonResult:v14 canvasSize:?];
    [v6 appendFeature:v15];
  }

  objc_autoreleasePoolPop(v8);
}

@end