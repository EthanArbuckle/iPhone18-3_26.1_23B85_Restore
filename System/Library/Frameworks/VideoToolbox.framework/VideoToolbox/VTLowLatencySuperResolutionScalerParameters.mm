@interface VTLowLatencySuperResolutionScalerParameters
- (VTLowLatencySuperResolutionScalerParameters)initWithSourceFrame:(id)frame destinationFrame:(id)destinationFrame;
- (void)dealloc;
@end

@implementation VTLowLatencySuperResolutionScalerParameters

- (VTLowLatencySuperResolutionScalerParameters)initWithSourceFrame:(id)frame destinationFrame:(id)destinationFrame
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

  v7->_sourceFrame = frame;
  v7->_destinationFrame = destinationFrame;
  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTLowLatencySuperResolutionScalerParameters;
  [(VTLowLatencySuperResolutionScalerParameters *)&v3 dealloc];
}

@end