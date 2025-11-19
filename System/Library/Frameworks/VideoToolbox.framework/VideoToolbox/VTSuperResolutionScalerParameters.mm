@interface VTSuperResolutionScalerParameters
- (VTSuperResolutionScalerParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 previousOutputFrame:(id)a5 opticalFlow:(id)a6 submissionMode:(int64_t)a7 destinationFrame:(id)a8;
- (void)dealloc;
@end

@implementation VTSuperResolutionScalerParameters

- (VTSuperResolutionScalerParameters)initWithSourceFrame:(id)a3 previousFrame:(id)a4 previousOutputFrame:(id)a5 opticalFlow:(id)a6 submissionMode:(int64_t)a7 destinationFrame:(id)a8
{
  if (loadVEFrameworkOnce())
  {
    v18.receiver = self;
    v18.super_class = VTSuperResolutionScalerParameters;
    v15 = [(VTSuperResolutionScalerParameters *)&v18 init];
    if (v15)
    {
      v16 = NSClassFromString(&cfstr_Vesuperresolut_0.isa);
      v15->_sourceFrame = a3;
      v15->_previousFrame = a4;
      v15->_previousOutputFrame = a5;
      v15->_destinationFrame = a8;
      v15->_opticalFlow = a6;
      v15->_veParameters = [[v16 alloc] initWithSourceFrame:-[VTFrameProcessorFrame veFrame](v15->_sourceFrame previousFrame:"veFrame") previousOutputFrame:-[VTFrameProcessorFrame veFrame](v15->_previousFrame opticalFlow:"veFrame") submissionMode:-[VTFrameProcessorFrame veFrame](v15->_previousOutputFrame destinationFrame:{"veFrame"), -[VTFrameProcessorOpticalFlow veFrameOpticalFlow](v15->_opticalFlow, "veFrameOpticalFlow"), a7, -[VTFrameProcessorFrame veFrame](v15->_destinationFrame, "veFrame")}];
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