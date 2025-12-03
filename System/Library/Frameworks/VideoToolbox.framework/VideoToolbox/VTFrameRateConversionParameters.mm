@interface VTFrameRateConversionParameters
- (VTFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames;
- (void)dealloc;
@end

@implementation VTFrameRateConversionParameters

- (VTFrameRateConversionParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame opticalFlow:(id)flow interpolationPhase:(id)phase submissionMode:(int64_t)mode destinationFrames:(id)frames
{
  v28 = *MEMORY[0x1E69E9840];
  if (!loadVEFrameworkOnce())
  {
    NSLog(&cfstr_ProcessorUnsup.isa);
LABEL_15:
    [(VTFrameRateConversionParameters *)self dealloc];
    return 0;
  }

  v26.receiver = self;
  v26.super_class = VTFrameRateConversionParameters;
  self = [(VTFrameRateConversionParameters *)&v26 init];
  if (!self)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    goto LABEL_15;
  }

  v15 = NSClassFromString(&cfstr_Veframeratecon_0.isa);
  self->_sourceFrame = frame;
  self->_nextFrame = nextFrame;
  self->_destinationFrames = frames;
  self->_opticalFlow = flow;
  self->_interpolationPhase = phase;
  self->_submissionMode = mode;
  self->_veDestinationFrames = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_destinationFrames, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [frames countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(frames);
        }

        -[NSMutableArray addObject:](self->_veDestinationFrames, "addObject:", [*(*(&v22 + 1) + 8 * i) veFrame]);
      }

      v17 = [frames countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }

  v20 = [[v15 alloc] initWithSourceFrame:-[VTFrameProcessorFrame veFrame](self->_sourceFrame nextFrame:"veFrame") opticalFlow:-[VTFrameProcessorFrame veFrame](self->_nextFrame interpolationPhase:"veFrame") submissionMode:-[VTFrameProcessorOpticalFlow veFrameOpticalFlow](self->_opticalFlow destinationFrames:{"veFrameOpticalFlow"), self->_interpolationPhase, self->_submissionMode, self->_veDestinationFrames}];
  self->_veParameters = v20;
  if (!v20)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    goto LABEL_15;
  }

  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTFrameRateConversionParameters;
  [(VTFrameRateConversionParameters *)&v3 dealloc];
}

@end