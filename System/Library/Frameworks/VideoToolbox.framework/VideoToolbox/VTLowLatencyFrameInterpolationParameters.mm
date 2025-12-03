@interface VTLowLatencyFrameInterpolationParameters
- (VTLowLatencyFrameInterpolationParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame interpolationPhase:(id)phase destinationFrames:(id)frames;
- (void)dealloc;
@end

@implementation VTLowLatencyFrameInterpolationParameters

- (VTLowLatencyFrameInterpolationParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame interpolationPhase:(id)phase destinationFrames:(id)frames
{
  v12.receiver = self;
  v12.super_class = VTLowLatencyFrameInterpolationParameters;
  v10 = [(VTLowLatencyFrameInterpolationParameters *)&v12 init];
  if (!v10)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v10;
  }

  if (!frame)
  {
    NSLog(&cfstr_SourceframeIsN.isa);
    return 0;
  }

  if (!frames)
  {
    NSLog(&cfstr_Destinationfra.isa);
    return 0;
  }

  v10->_sourceFrame = frame;
  v10->_previousFrame = previousFrame;
  v10->_destinationFrames = frames;
  v10->_interpolationPhase = phase;
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