@interface VTLowLatencyFrameInterpolationConfiguration
- (VTLowLatencyFrameInterpolationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 numberOfInterpolatedFrames:(int64_t)a5;
- (VTLowLatencyFrameInterpolationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 spatialScaleFactor:(int64_t)a5;
- (void)dealloc;
@end

@implementation VTLowLatencyFrameInterpolationConfiguration

- (VTLowLatencyFrameInterpolationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 numberOfInterpolatedFrames:(int64_t)a5
{
  if ((loadVCPFrameworkOnce() & 1) == 0)
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
    return 0;
  }

  v14.receiver = self;
  v14.super_class = VTLowLatencyFrameInterpolationConfiguration;
  v9 = [(VTLowLatencyFrameInterpolationConfiguration *)&v14 init];
  if (!v9)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v9;
  }

  v10 = NSClassFromString(&cfstr_Vcpvideointerp.isa);
  v9->_spatialScaleFactor = 1;
  v11 = [[v10 alloc] initWithWidth:a3 height:a4 pixelFormat:875704438 spatialScaleFactor:v9->_spatialScaleFactor];
  v9->vcpConfiguration = v11;
  if (!v11)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    return 0;
  }

  v12 = v11;
  v9->_frameWidth = a3;
  v9->_frameHeight = a4;
  if (vcvtpd_s64_f64(log2((a5 + 1))) >= 4)
  {
    [v12 setMaxTemporalExponentialFactor:?];
  }

  v9->_frameSupportedPixelFormats = [&unk_1F039FA28 copy];
  v9->_sourcePixelBufferAttributes = [-[VCPVideoInterpolationConfiguration sourcePixelBufferAttributes](v9->vcpConfiguration "sourcePixelBufferAttributes")];
  v9->_destinationPixelBufferAttributes = [-[VCPVideoInterpolationConfiguration destinationPixelBufferAttributes](v9->vcpConfiguration "destinationPixelBufferAttributes")];
  return v9;
}

- (VTLowLatencyFrameInterpolationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 spatialScaleFactor:(int64_t)a5
{
  if ((loadVCPFrameworkOnce() & 1) == 0)
  {
    NSLog(&cfstr_ProcessorNotSu.isa);
    return 0;
  }

  v13.receiver = self;
  v13.super_class = VTLowLatencyFrameInterpolationConfiguration;
  v9 = [(VTLowLatencyFrameInterpolationConfiguration *)&v13 init];
  if (!v9)
  {
    NSLog(&cfstr_FailToInitiali.isa);
    return v9;
  }

  v10 = NSClassFromString(&cfstr_Vcpvideointerp.isa);
  v9->_spatialScaleFactor = a5;
  v11 = [[v10 alloc] initWithWidth:a3 height:a4 pixelFormat:875704438 spatialScaleFactor:v9->_spatialScaleFactor];
  v9->vcpConfiguration = v11;
  if (!v11)
  {
    NSLog(&cfstr_FailToCreateEf.isa);
    return 0;
  }

  v9->_frameWidth = a3;
  v9->_frameHeight = a4;
  v9->_frameSupportedPixelFormats = [&unk_1F039FA40 copy];
  v9->_sourcePixelBufferAttributes = [-[VCPVideoInterpolationConfiguration sourcePixelBufferAttributes](v9->vcpConfiguration "sourcePixelBufferAttributes")];
  v9->_destinationPixelBufferAttributes = [-[VCPVideoInterpolationConfiguration destinationPixelBufferAttributes](v9->vcpConfiguration "destinationPixelBufferAttributes")];
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTLowLatencyFrameInterpolationConfiguration;
  [(VTLowLatencyFrameInterpolationConfiguration *)&v3 dealloc];
}

@end