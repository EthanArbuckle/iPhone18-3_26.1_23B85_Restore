@interface VNVideoProcessorTimeIntervalCadence
- (BOOL)isEqual:(id)equal;
- (VNVideoProcessorTimeIntervalCadence)initWithTimeInterval:(CFTimeInterval)timeInterval;
- (unint64_t)hash;
- (void)populateVCPVideoProcessorRequestConfiguration:(id)configuration;
@end

@implementation VNVideoProcessorTimeIntervalCadence

- (void)populateVCPVideoProcessorRequestConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = VNVideoProcessorTimeIntervalCadence;
  configurationCopy = configuration;
  [(VNVideoProcessorCadence *)&v7 populateVCPVideoProcessorRequestConfiguration:configurationCopy];
  v5 = MEMORY[0x1E696AD98];
  [(VNVideoProcessorTimeIntervalCadence *)self timeInterval:v7.receiver];
  v6 = [v5 numberWithDouble:?];
  [configurationCopy setObject:v6 forKeyedSubscript:@"VNVideoProcessingOptionTimeInterval"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(VNVideoProcessorTimeIntervalCadence *)self timeInterval];
      v7 = v6;
      [(VNVideoProcessorTimeIntervalCadence *)v5 timeInterval];
      v9 = v8;

      v10 = v7 == v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  [(VNVideoProcessorTimeIntervalCadence *)self timeInterval];
  if (v2 == 0.0)
  {
    return 0;
  }

  else
  {
    return *&v2;
  }
}

- (VNVideoProcessorTimeIntervalCadence)initWithTimeInterval:(CFTimeInterval)timeInterval
{
  v5.receiver = self;
  v5.super_class = VNVideoProcessorTimeIntervalCadence;
  result = [(VNVideoProcessorTimeIntervalCadence *)&v5 init];
  if (result)
  {
    result->_timeInterval = timeInterval;
  }

  return result;
}

@end