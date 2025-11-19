@interface AXMCoreMotionNode
- (AXMCoreMotionNode)initWithCoder:(id)a3;
- (AXMCoreMotionNode)initWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)nodeInitialize;
- (void)triggerWithCoreMotionManager:(id)a3 deviceOrientation:(int64_t)a4 cacheKey:(id)a5 resultHandler:(id)a6;
@end

@implementation AXMCoreMotionNode

- (AXMCoreMotionNode)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = AXMCoreMotionNode;
  result = [(AXMVisionEngineNode *)&v4 initWithIdentifier:a3];
  if (result)
  {
    result->_samplesPerSecond = 0;
    result->_lastSampleTime = 0.0;
  }

  return result;
}

- (AXMCoreMotionNode)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AXMCoreMotionNode;
  v5 = [(AXMVisionEngineNode *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_samplesPerSecond = [v4 decodeIntegerForKey:@"AXMCoreMotionNode_samplesPerSecond"];
    [v4 decodeDoubleForKey:@"AXMCoreMotionNode_lastSampleTime"];
    v5->_lastSampleTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXMCoreMotionNode;
  v4 = a3;
  [(AXMVisionEngineNode *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_samplesPerSecond forKey:{@"AXMCoreMotionNode_samplesPerSecond", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"AXMCoreMotionNode_lastSampleTime" forKey:self->_lastSampleTime];
}

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMCoreMotionNode;
  [(AXMSourceNode *)&v2 nodeInitialize];
}

- (void)triggerWithCoreMotionManager:(id)a3 deviceOrientation:(int64_t)a4 cacheKey:(id)a5 resultHandler:(id)a6
{
  v23[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![(AXMCoreMotionNode *)self samplesPerSecond]|| (Current = CFAbsoluteTimeGetCurrent(), [(AXMCoreMotionNode *)self lastSampleTime], Current - v14 >= 1.0 / [(AXMCoreMotionNode *)self samplesPerSecond]))
  {
    v15 = +[AXMVisionAnalysisOptions defaultOptions];
    v22[0] = @"sourceProvidesResults";
    v22[1] = @"diagnosticsEnabled";
    v23[0] = MEMORY[0x1E695E118];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXMVisionEngineNode areDiagnosticsEnabled](self, "areDiagnosticsEnabled")}];
    v23[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v18 = [AXMVisionPipelineContext contextWithSourceParameters:v17 options:v15];

    if (v10 && [v10 isDeviceMotionAvailable])
    {
      v19 = [v10 deviceMotion];
      v20 = [AXMVisionFeature featureWithDeviceMotion:v19 orientation:a4];
      if (v20)
      {
        [v18 appendFeature:v20];
      }
    }

    v21.receiver = self;
    v21.super_class = AXMCoreMotionNode;
    [(AXMSourceNode *)&v21 triggerWithContext:v18 cacheKey:v11 resultHandler:v12];
    [(AXMCoreMotionNode *)self setLastSampleTime:CFAbsoluteTimeGetCurrent()];
  }
}

@end