@interface VTOpticalFlowParameters
- (VTOpticalFlowParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 submissionMode:(int64_t)a5 destinationOpticalFlow:(id)a6;
- (void)dealloc;
@end

@implementation VTOpticalFlowParameters

- (VTOpticalFlowParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 submissionMode:(int64_t)a5 destinationOpticalFlow:(id)a6
{
  if (loadVEFrameworkOnce())
  {
    v15.receiver = self;
    v15.super_class = VTOpticalFlowParameters;
    v11 = [(VTOpticalFlowParameters *)&v15 init];
    if (v11)
    {
      v12 = NSClassFromString(&cfstr_Veopticalflowp.isa);
      v11->_sourceFrame = a3;
      v11->_nextFrame = a4;
      v13 = a6;
      v11->_submissionMode = a5;
      v11->_destinationOpticalFlow = v13;
      v11->_veParameters = [[v12 alloc] initWithSourceFrame:-[VTFrameProcessorFrame veFrame](v11->_sourceFrame nextFrame:"veFrame") submissionMode:-[VTFrameProcessorFrame veFrame](v11->_nextFrame opticalFlow:{"veFrame"), v11->_submissionMode, -[VTFrameProcessorOpticalFlow veFrameOpticalFlow](v11->_destinationOpticalFlow, "veFrameOpticalFlow")}];
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

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTOpticalFlowParameters;
  [(VTOpticalFlowParameters *)&v3 dealloc];
}

@end