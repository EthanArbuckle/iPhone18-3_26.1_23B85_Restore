@interface VTLowLatencySuperResolutionScalerConfiguration
+ ($2825F4736939C4A6D3AD43837233062D)maximumDimensions;
+ ($2825F4736939C4A6D3AD43837233062D)minimumDimensions;
+ (id)supportedScaleFactorsForFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4;
- (VTLowLatencySuperResolutionScalerConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(float)a5;
- (void)dealloc;
@end

@implementation VTLowLatencySuperResolutionScalerConfiguration

- (VTLowLatencySuperResolutionScalerConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 scaleFactor:(float)a5
{
  if ((loadVCPFrameworkOnce() & 1) == 0)
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
    return 0;
  }

  v14.receiver = self;
  v14.super_class = VTLowLatencySuperResolutionScalerConfiguration;
  v9 = [(VTLowLatencySuperResolutionScalerConfiguration *)&v14 init];
  if (!v9)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v9;
  }

  v10 = objc_alloc(NSClassFromString(&cfstr_Vcpframesuperr.isa));
  *&v11 = a5;
  v12 = [v10 initWithFrameWidth:a3 sourceframeHeight:a4 scaleFactor:v11];
  v9->vcpConfiguration = v12;
  if (!v12)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    return 0;
  }

  v9->_frameWidth = a3;
  v9->_frameHeight = a4;
  v9->_frameSupportedPixelFormats = [-[VCPFrameSuperResolutionConfiguration supportedPixelFormats](v12 "supportedPixelFormats")];
  v9->_sourcePixelBufferAttributes = [-[VCPFrameSuperResolutionConfiguration sourcePixelBufferAttributes](v9->vcpConfiguration "sourcePixelBufferAttributes")];
  v9->_destinationPixelBufferAttributes = [-[VCPFrameSuperResolutionConfiguration destinationPixelBufferAttributes](v9->vcpConfiguration "destinationPixelBufferAttributes")];
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTLowLatencySuperResolutionScalerConfiguration;
  [(VTLowLatencySuperResolutionScalerConfiguration *)&v3 dealloc];
}

+ (id)supportedScaleFactorsForFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4
{
  if (loadVCPFrameworkOnce())
  {
    result = [-[objc_class supportedScaleFactorsForFrameWidth:frameHeight:](NSClassFromString(&cfstr_Vcpframesuperr.isa) supportedScaleFactorsForFrameWidth:a3 frameHeight:{a4), "copy"}];
    if (result)
    {
      return result;
    }
  }

  else
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
  }

  v7 = MEMORY[0x1E695DEC8];

  return objc_alloc_init(v7);
}

+ ($2825F4736939C4A6D3AD43837233062D)maximumDimensions
{
  if (loadVCPFrameworkOnce())
  {
    v2 = NSClassFromString(&cfstr_Vcpframesuperr.isa);
    v3 = [(objc_class *)v2 maximumSupportedWidth];
    return (v3 | ([(objc_class *)v2 maximumSupportedHeight]<< 32));
  }

  else
  {
    return 0;
  }
}

+ ($2825F4736939C4A6D3AD43837233062D)minimumDimensions
{
  if (loadVCPFrameworkOnce())
  {
    v2 = NSClassFromString(&cfstr_Vcpframesuperr.isa);
    v3 = [(objc_class *)v2 minimumSupportedWidth];
    return (v3 | ([(objc_class *)v2 minimumSupportedHeight]<< 32));
  }

  else
  {
    return 0;
  }
}

@end