@interface VTMotionBlurParameters
- (VTMotionBlurParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame nextOpticalFlow:(id)flow previousOpticalFlow:(id)opticalFlow motionBlurStrength:(int64_t)strength submissionMode:(int64_t)mode destinationFrame:(id)self0;
- (void)dealloc;
@end

@implementation VTMotionBlurParameters

- (VTMotionBlurParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame nextOpticalFlow:(id)flow previousOpticalFlow:(id)opticalFlow motionBlurStrength:(int64_t)strength submissionMode:(int64_t)mode destinationFrame:(id)self0
{
  if (loadVEFrameworkOnce())
  {
    v20.receiver = self;
    v20.super_class = VTMotionBlurParameters;
    v17 = [(VTMotionBlurParameters *)&v20 init];
    if (v17)
    {
      v18 = NSClassFromString(&cfstr_Vemotionblurpa.isa);
      v17->_sourceFrame = frame;
      v17->_nextFrame = nextFrame;
      v17->_previousFrame = previousFrame;
      v17->_destinationFrame = destinationFrame;
      v17->_nextOpticalFlow = flow;
      v17->_previousOpticalFlow = opticalFlow;
      v17->_motionBlurStrength = strength;
      v17->_submissionMode = mode;
      v17->_veParameters = [[v18 alloc] initWithSourceFrame:-[VTFrameProcessorFrame veFrame](v17->_sourceFrame nextFrame:"veFrame") previousFrame:-[VTFrameProcessorFrame veFrame](v17->_nextFrame nextOpticalFlow:"veFrame") previousOpticalFlow:-[VTFrameProcessorFrame veFrame](v17->_previousFrame motionBlurStrength:"veFrame") submissionMode:-[VTFrameProcessorOpticalFlow veFrameOpticalFlow](v17->_nextOpticalFlow destinationFrame:{"veFrameOpticalFlow"), -[VTFrameProcessorOpticalFlow veFrameOpticalFlow](v17->_previousOpticalFlow, "veFrameOpticalFlow"), v17->_motionBlurStrength, v17->_submissionMode, -[VTFrameProcessorFrame veFrame](v17->_destinationFrame, "veFrame")}];
    }

    else
    {
      NSLog(&cfstr_FailToInitiali.isa);
    }
  }

  else
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
    return 0;
  }

  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTMotionBlurParameters;
  [(VTMotionBlurParameters *)&v3 dealloc];
}

@end