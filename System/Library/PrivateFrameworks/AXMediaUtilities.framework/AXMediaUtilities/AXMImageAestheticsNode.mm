@interface AXMImageAestheticsNode
- (AXMImageAestheticsNode)initWithCoder:(id)coder;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMImageAestheticsNode

- (AXMImageAestheticsNode)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AXMImageAestheticsNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AXMImageAestheticsNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:coder];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNClassifyImageAestheticsRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMImageAestheticsNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMImageAestheticsNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v18[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v17.receiver = self;
  v17.super_class = AXMImageAestheticsNode;
  [(AXMEvaluationNode *)&v17 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  _imageAestheticsRequest = [(AXMImageAestheticsNode *)self _imageAestheticsRequest];

  if (!_imageAestheticsRequest)
  {
    v10 = objc_alloc_init(getVNClassifyImageAestheticsRequestClass());
    [(AXMImageAestheticsNode *)self set_imageAestheticsRequest:v10];

    _imageAestheticsRequest2 = [(AXMImageAestheticsNode *)self _imageAestheticsRequest];
    [AXMEvaluationNode configureForRunningOnANEIfPossibleWithRequest:_imageAestheticsRequest2];
  }

  _imageAestheticsRequest3 = [(AXMImageAestheticsNode *)self _imageAestheticsRequest];
  v18[0] = _imageAestheticsRequest3;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v13 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];

  results = [_imageAestheticsRequest3 results];
  firstObject = [results firstObject];

  if (firstObject)
  {
    v16 = [AXMVisionFeature featureWithImageAestheticsObservation:firstObject];
    [evaluateCopy appendFeature:v16];
  }

  objc_autoreleasePoolPop(v8);
}

@end