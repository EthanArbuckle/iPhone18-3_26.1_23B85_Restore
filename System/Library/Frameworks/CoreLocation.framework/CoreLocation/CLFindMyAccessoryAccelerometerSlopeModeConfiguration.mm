@interface CLFindMyAccessoryAccelerometerSlopeModeConfiguration
- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithCoder:(id)a3;
- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithThreshold:(float)a3 sampleCount:(unsigned __int8)a4 sampleRate:(unsigned __int8)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryAccelerometerSlopeModeConfiguration

- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithThreshold:(float)a3 sampleCount:(unsigned __int8)a4 sampleRate:(unsigned __int8)a5
{
  v6 = a4;
  [objc_opt_class() minimumThreshold];
  if (v9 > a3)
  {
    return 0;
  }

  [objc_opt_class() maximumThreshold];
  if (v10 < a3 || [objc_opt_class() minimumSampleCount] > v6 || objc_msgSend(objc_opt_class(), "maximumSampleCount") < v6)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryAccelerometerSlopeModeConfiguration;
  result = [(CLFindMyAccessoryAccelerometerSlopeModeConfiguration *)&v12 init];
  if (result)
  {
    result->_threshold = a3;
    result->_sampleCount = v6;
    result->_sampleRate = a5;
  }

  return result;
}

- (CLFindMyAccessoryAccelerometerSlopeModeConfiguration)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLFindMyAccessoryAccelerometerSlopeModeConfiguration;
  v4 = [(CLFindMyAccessoryAccelerometerSlopeModeConfiguration *)&v7 init];
  if (v4)
  {
    v4->_sampleCount = [a3 decodeIntForKey:@"sampleCount"];
    [a3 decodeFloatForKey:@"threshold"];
    v4->_threshold = v5;
    v4->_sampleRate = [a3 decodeIntForKey:@"sampleRate"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_sampleCount forKey:@"sampleCount"];
  *&v5 = self->_threshold;
  [a3 encodeFloat:@"threshold" forKey:v5];
  sampleRate = self->_sampleRate;

  [a3 encodeInt:sampleRate forKey:@"sampleRate"];
}

@end