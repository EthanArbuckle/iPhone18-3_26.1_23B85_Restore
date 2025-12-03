@interface VNVideoProcessorFrameRateCadence
- (BOOL)isEqual:(id)equal;
- (VNVideoProcessorFrameRateCadence)initWithFrameRate:(NSInteger)frameRate;
- (void)populateVCPVideoProcessorRequestConfiguration:(id)configuration;
@end

@implementation VNVideoProcessorFrameRateCadence

- (void)populateVCPVideoProcessorRequestConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = VNVideoProcessorFrameRateCadence;
  configurationCopy = configuration;
  [(VNVideoProcessorCadence *)&v6 populateVCPVideoProcessorRequestConfiguration:configurationCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNVideoProcessorFrameRateCadence frameRate](self, "frameRate", v6.receiver, v6.super_class)}];
  [configurationCopy setObject:v5 forKeyedSubscript:@"VNVideoProcessingOptionFrameCadence"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      frameRate = [(VNVideoProcessorFrameRateCadence *)self frameRate];
      frameRate2 = [(VNVideoProcessorFrameRateCadence *)v5 frameRate];

      v8 = frameRate == frameRate2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (VNVideoProcessorFrameRateCadence)initWithFrameRate:(NSInteger)frameRate
{
  v5.receiver = self;
  v5.super_class = VNVideoProcessorFrameRateCadence;
  result = [(VNVideoProcessorFrameRateCadence *)&v5 init];
  if (result)
  {
    result->_frameRate = frameRate;
  }

  return result;
}

@end