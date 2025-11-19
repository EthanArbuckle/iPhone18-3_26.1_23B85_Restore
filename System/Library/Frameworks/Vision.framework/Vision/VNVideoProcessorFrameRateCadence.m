@interface VNVideoProcessorFrameRateCadence
- (BOOL)isEqual:(id)a3;
- (VNVideoProcessorFrameRateCadence)initWithFrameRate:(NSInteger)frameRate;
- (void)populateVCPVideoProcessorRequestConfiguration:(id)a3;
@end

@implementation VNVideoProcessorFrameRateCadence

- (void)populateVCPVideoProcessorRequestConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = VNVideoProcessorFrameRateCadence;
  v4 = a3;
  [(VNVideoProcessorCadence *)&v6 populateVCPVideoProcessorRequestConfiguration:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VNVideoProcessorFrameRateCadence frameRate](self, "frameRate", v6.receiver, v6.super_class)}];
  [v4 setObject:v5 forKeyedSubscript:@"VNVideoProcessingOptionFrameCadence"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VNVideoProcessorFrameRateCadence *)self frameRate];
      v7 = [(VNVideoProcessorFrameRateCadence *)v5 frameRate];

      v8 = v6 == v7;
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