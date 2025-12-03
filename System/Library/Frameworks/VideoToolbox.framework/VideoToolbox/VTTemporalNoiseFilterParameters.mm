@interface VTTemporalNoiseFilterParameters
- (VTTemporalNoiseFilterParameters)initWithSourceFrame:(id)frame nextFrames:(id)frames previousFrames:(id)previousFrames destinationFrame:(id)destinationFrame filterStrength:(float)strength hasDiscontinuity:(unsigned __int8)discontinuity;
- (void)dealloc;
@end

@implementation VTTemporalNoiseFilterParameters

- (VTTemporalNoiseFilterParameters)initWithSourceFrame:(id)frame nextFrames:(id)frames previousFrames:(id)previousFrames destinationFrame:(id)destinationFrame filterStrength:(float)strength hasDiscontinuity:(unsigned __int8)discontinuity
{
  discontinuityCopy = discontinuity;
  v16.receiver = self;
  v16.super_class = VTTemporalNoiseFilterParameters;
  v14 = [(VTTemporalNoiseFilterParameters *)&v16 init];
  if (!v14)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v14;
  }

  if (!frame)
  {
    NSLog(&cfstr_SourceframeIsN.isa);
    return 0;
  }

  if (!destinationFrame)
  {
    NSLog(&cfstr_Destinationfra.isa);
    return 0;
  }

  if (strength < 0.0 || strength > 1.0)
  {
    NSLog(&cfstr_InvalidFilters.isa);
    return 0;
  }

  v14->_sourceFrame = frame;
  v14->_nextFrames = frames;
  v14->_previousFrames = previousFrames;
  v14->_destinationFrame = destinationFrame;
  v14->_filterStrength = strength;
  v14->_hasDiscontinuity = discontinuityCopy != 0;
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTTemporalNoiseFilterParameters;
  [(VTTemporalNoiseFilterParameters *)&v3 dealloc];
}

@end