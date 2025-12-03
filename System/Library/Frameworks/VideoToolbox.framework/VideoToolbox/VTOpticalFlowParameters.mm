@interface VTOpticalFlowParameters
- (VTOpticalFlowParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame submissionMode:(int64_t)mode destinationOpticalFlow:(id)flow;
- (void)dealloc;
@end

@implementation VTOpticalFlowParameters

- (VTOpticalFlowParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame submissionMode:(int64_t)mode destinationOpticalFlow:(id)flow
{
  if (loadVEFrameworkOnce())
  {
    v15.receiver = self;
    v15.super_class = VTOpticalFlowParameters;
    v11 = [(VTOpticalFlowParameters *)&v15 init];
    if (v11)
    {
      v12 = NSClassFromString(&cfstr_Veopticalflowp.isa);
      v11->_sourceFrame = frame;
      v11->_nextFrame = nextFrame;
      flowCopy = flow;
      v11->_submissionMode = mode;
      v11->_destinationOpticalFlow = flowCopy;
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