@interface AXMHorizonDetectorNode
- (AXMHorizonDetectorNode)initWithCoder:(id)coder;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
- (void)nodeInitialize;
@end

@implementation AXMHorizonDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMHorizonDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (AXMHorizonDetectorNode)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AXMHorizonDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AXMHorizonDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:coder];
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

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v17[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v16.receiver = self;
  v16.super_class = AXMHorizonDetectorNode;
  [(AXMEvaluationNode *)&v16 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  _detectHorizonRequest = [(AXMHorizonDetectorNode *)self _detectHorizonRequest];

  if (!_detectHorizonRequest)
  {
    v10 = objc_alloc_init(getVNDetectHorizonRequestClass());
    [(AXMHorizonDetectorNode *)self _setDetectHorizonRequest:v10];
  }

  _detectHorizonRequest2 = [(AXMHorizonDetectorNode *)self _detectHorizonRequest];
  v17[0] = _detectHorizonRequest2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v12 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];

  results = [_detectHorizonRequest2 results];
  firstObject = [results firstObject];

  if (firstObject)
  {
    [evaluateCopy size];
    v15 = [AXMVisionFeature featureWithVisionRequest:_detectHorizonRequest2 horizonResult:firstObject canvasSize:?];
    [evaluateCopy appendFeature:v15];
  }

  objc_autoreleasePoolPop(v8);
}

@end