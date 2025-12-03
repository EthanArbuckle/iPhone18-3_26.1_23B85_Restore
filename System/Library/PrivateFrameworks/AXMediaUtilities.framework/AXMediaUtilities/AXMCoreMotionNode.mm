@interface AXMCoreMotionNode
- (AXMCoreMotionNode)initWithCoder:(id)coder;
- (AXMCoreMotionNode)initWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)nodeInitialize;
- (void)triggerWithCoreMotionManager:(id)manager deviceOrientation:(int64_t)orientation cacheKey:(id)key resultHandler:(id)handler;
@end

@implementation AXMCoreMotionNode

- (AXMCoreMotionNode)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = AXMCoreMotionNode;
  result = [(AXMVisionEngineNode *)&v4 initWithIdentifier:identifier];
  if (result)
  {
    result->_samplesPerSecond = 0;
    result->_lastSampleTime = 0.0;
  }

  return result;
}

- (AXMCoreMotionNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AXMCoreMotionNode;
  v5 = [(AXMVisionEngineNode *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_samplesPerSecond = [coderCopy decodeIntegerForKey:@"AXMCoreMotionNode_samplesPerSecond"];
    [coderCopy decodeDoubleForKey:@"AXMCoreMotionNode_lastSampleTime"];
    v5->_lastSampleTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AXMCoreMotionNode;
  coderCopy = coder;
  [(AXMVisionEngineNode *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_samplesPerSecond forKey:{@"AXMCoreMotionNode_samplesPerSecond", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"AXMCoreMotionNode_lastSampleTime" forKey:self->_lastSampleTime];
}

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMCoreMotionNode;
  [(AXMSourceNode *)&v2 nodeInitialize];
}

- (void)triggerWithCoreMotionManager:(id)manager deviceOrientation:(int64_t)orientation cacheKey:(id)key resultHandler:(id)handler
{
  v23[2] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  keyCopy = key;
  handlerCopy = handler;
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

    if (managerCopy && [managerCopy isDeviceMotionAvailable])
    {
      deviceMotion = [managerCopy deviceMotion];
      v20 = [AXMVisionFeature featureWithDeviceMotion:deviceMotion orientation:orientation];
      if (v20)
      {
        [v18 appendFeature:v20];
      }
    }

    v21.receiver = self;
    v21.super_class = AXMCoreMotionNode;
    [(AXMSourceNode *)&v21 triggerWithContext:v18 cacheKey:keyCopy resultHandler:handlerCopy];
    [(AXMCoreMotionNode *)self setLastSampleTime:CFAbsoluteTimeGetCurrent()];
  }
}

@end