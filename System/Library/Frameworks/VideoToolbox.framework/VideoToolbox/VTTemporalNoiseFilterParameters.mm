@interface VTTemporalNoiseFilterParameters
- (VTTemporalNoiseFilterParameters)initWithSourceFrame:(id)a3 nextFrames:(id)a4 previousFrames:(id)a5 destinationFrame:(id)a6 filterStrength:(float)a7 hasDiscontinuity:(unsigned __int8)a8;
- (void)dealloc;
@end

@implementation VTTemporalNoiseFilterParameters

- (VTTemporalNoiseFilterParameters)initWithSourceFrame:(id)a3 nextFrames:(id)a4 previousFrames:(id)a5 destinationFrame:(id)a6 filterStrength:(float)a7 hasDiscontinuity:(unsigned __int8)a8
{
  v8 = a8;
  v16.receiver = self;
  v16.super_class = VTTemporalNoiseFilterParameters;
  v14 = [(VTTemporalNoiseFilterParameters *)&v16 init];
  if (!v14)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v14;
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

  if (a7 < 0.0 || a7 > 1.0)
  {
    NSLog(&cfstr_InvalidFilters.isa);
    return 0;
  }

  v14->_sourceFrame = a3;
  v14->_nextFrames = a4;
  v14->_previousFrames = a5;
  v14->_destinationFrame = a6;
  v14->_filterStrength = a7;
  v14->_hasDiscontinuity = v8 != 0;
  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTTemporalNoiseFilterParameters;
  [(VTTemporalNoiseFilterParameters *)&v3 dealloc];
}

@end