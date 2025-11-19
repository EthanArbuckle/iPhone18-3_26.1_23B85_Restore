@interface VTLowLatencySuperResolutionScalerParameters
- (VTLowLatencySuperResolutionScalerParameters)initWithSourceFrame:(id)a3 destinationFrame:(id)a4;
- (void)dealloc;
@end

@implementation VTLowLatencySuperResolutionScalerParameters

- (VTLowLatencySuperResolutionScalerParameters)initWithSourceFrame:(id)a3 destinationFrame:(id)a4
{
  if ((loadVCPFrameworkOnce() & 1) == 0)
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
    return 0;
  }

  v9.receiver = self;
  v9.super_class = VTLowLatencySuperResolutionScalerParameters;
  v7 = [(VTLowLatencySuperResolutionScalerParameters *)&v9 init];
  if (!v7)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v7;
  }

  if (!a3)
  {
    NSLog(&cfstr_SourceframeIsN.isa);
    return 0;
  }

  if (!a4)
  {
    NSLog(&cfstr_Destinationfra.isa);
    return 0;
  }

  v7->_sourceFrame = a3;
  v7->_destinationFrame = a4;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTLowLatencySuperResolutionScalerParameters;
  [(VTLowLatencySuperResolutionScalerParameters *)&v3 dealloc];
}

@end