@interface VTLowLatencyFrameInterpolationParameters
- (VTLowLatencyFrameInterpolationParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 interpolationPhase:(id)a5 destinationFrames:(id)a6;
- (void)dealloc;
@end

@implementation VTLowLatencyFrameInterpolationParameters

- (VTLowLatencyFrameInterpolationParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 interpolationPhase:(id)a5 destinationFrames:(id)a6
{
  v12.receiver = self;
  v12.super_class = VTLowLatencyFrameInterpolationParameters;
  v10 = [(VTLowLatencyFrameInterpolationParameters *)&v12 init];
  if (!v10)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v10;
  }

  if (!a3)
  {
    NSLog(&cfstr_SourceframeIsN.isa);
    return 0;
  }

  if (!a6)
  {
    NSLog(&cfstr_Destinationfra.isa);
    return 0;
  }

  v10->_sourceFrame = a3;
  v10->_previousFrame = a4;
  v10->_destinationFrames = a6;
  v10->_interpolationPhase = a5;
  v10->_parameterDispatchGroup = dispatch_group_create();
  return v10;
}

- (void)dealloc
{
  parameterDispatchGroup = self->_parameterDispatchGroup;
  if (parameterDispatchGroup)
  {
    dispatch_release(parameterDispatchGroup);
  }

  v4.receiver = self;
  v4.super_class = VTLowLatencyFrameInterpolationParameters;
  [(VTLowLatencyFrameInterpolationParameters *)&v4 dealloc];
}

@end