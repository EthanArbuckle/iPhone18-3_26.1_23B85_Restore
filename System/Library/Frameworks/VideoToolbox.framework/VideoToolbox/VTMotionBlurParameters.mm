@interface VTMotionBlurParameters
- (VTMotionBlurParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 nextOpticalFlow:(id)a6 previousOpticalFlow:(id)a7 motionBlurStrength:(int64_t)a8 submissionMode:(int64_t)a9 destinationFrame:(id)a10;
- (void)dealloc;
@end

@implementation VTMotionBlurParameters

- (VTMotionBlurParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 nextOpticalFlow:(id)a6 previousOpticalFlow:(id)a7 motionBlurStrength:(int64_t)a8 submissionMode:(int64_t)a9 destinationFrame:(id)a10
{
  if (loadVEFrameworkOnce())
  {
    v20.receiver = self;
    v20.super_class = VTMotionBlurParameters;
    v17 = [(VTMotionBlurParameters *)&v20 init];
    if (v17)
    {
      v18 = NSClassFromString(&cfstr_Vemotionblurpa.isa);
      v17->_sourceFrame = a3;
      v17->_nextFrame = a4;
      v17->_previousFrame = a5;
      v17->_destinationFrame = a10;
      v17->_nextOpticalFlow = a6;
      v17->_previousOpticalFlow = a7;
      v17->_motionBlurStrength = a8;
      v17->_submissionMode = a9;
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