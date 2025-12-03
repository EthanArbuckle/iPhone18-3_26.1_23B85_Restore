@interface CLFindMyAccessoryAccelerometerSlopeModeConfiguration
- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithThreshold:(float)threshold sampleCount:(unsigned __int8)count sampleRate:(unsigned __int8)rate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryAccelerometerSlopeModeConfiguration

- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithThreshold:(float)threshold sampleCount:(unsigned __int8)count sampleRate:(unsigned __int8)rate
{
  countCopy = count;
  [objc_opt_class() minimumThreshold];
  if (v9 > threshold)
  {
    return 0;
  }

  [objc_opt_class() maximumThreshold];
  if (v10 < threshold || [objc_opt_class() minimumSampleCount] > countCopy || objc_msgSend(objc_opt_class(), "maximumSampleCount") < countCopy)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryAccelerometerSlopeModeConfiguration;
  result = [(CLFindMyAccessoryAccelerometerSlopeModeConfiguration *)&v12 init];
  if (result)
  {
    result->_threshold = threshold;
    result->_sampleCount = countCopy;
    result->_sampleRate = rate;
  }

  return result;
}

- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CLFindMyAccessoryAccelerometerSlopeModeConfiguration;
  v4 = [(CLFindMyAccessoryAccelerometerSlopeModeConfiguration *)&v7 init];
  if (v4)
  {
    v4->_sampleCount = [coder decodeIntForKey:@"sampleCount"];
    [coder decodeFloatForKey:@"threshold"];
    v4->_threshold = v5;
    v4->_sampleRate = [coder decodeIntForKey:@"sampleRate"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_sampleCount forKey:@"sampleCount"];
  *&v5 = self->_threshold;
  [coder encodeFloat:@"threshold" forKey:v5];
  sampleRate = self->_sampleRate;

  [coder encodeInt:sampleRate forKey:@"sampleRate"];
}

@end