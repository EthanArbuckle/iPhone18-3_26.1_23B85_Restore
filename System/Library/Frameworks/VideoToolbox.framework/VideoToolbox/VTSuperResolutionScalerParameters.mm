@interface VTSuperResolutionScalerParameters
- (VTSuperResolutionScalerParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame previousOutputFrame:(id)outputFrame opticalFlow:(id)flow submissionMode:(int64_t)mode destinationFrame:(id)destinationFrame;
- (void)dealloc;
@end

@implementation VTSuperResolutionScalerParameters

- (VTSuperResolutionScalerParameters)initWithSourceFrame:(id)frame previousFrame:(id)previousFrame previousOutputFrame:(id)outputFrame opticalFlow:(id)flow submissionMode:(int64_t)mode destinationFrame:(id)destinationFrame
{
  if (loadVEFrameworkOnce())
  {
    v18.receiver = self;
    v18.super_class = VTSuperResolutionScalerParameters;
    v15 = [(VTSuperResolutionScalerParameters *)&v18 init];
    if (v15)
    {
      v16 = NSClassFromString(&cfstr_Vesuperresolut_0.isa);
      v15->_sourceFrame = frame;
      v15->_previousFrame = previousFrame;
      v15->_previousOutputFrame = outputFrame;
      v15->_destinationFrame = destinationFrame;
      v15->_opticalFlow = flow;
      v15->_veParameters = [[v16 alloc] initWithSourceFrame:-[VTFrameProcessorFrame veFrame](v15->_sourceFrame previousFrame:"veFrame") previousOutputFrame:-[VTFrameProcessorFrame veFrame](v15->_previousFrame opticalFlow:"veFrame") submissionMode:-[VTFrameProcessorFrame veFrame](v15->_previousOutputFrame destinationFrame:{"veFrame"), -[VTFrameProcessorOpticalFlow veFrameOpticalFlow](v15->_opticalFlow, "veFrameOpticalFlow"), mode, -[VTFrameProcessorFrame veFrame](v15->_destinationFrame, "veFrame")}];
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

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTSuperResolutionScalerParameters;
  [(VTSuperResolutionScalerParameters *)&v3 dealloc];
}

@end