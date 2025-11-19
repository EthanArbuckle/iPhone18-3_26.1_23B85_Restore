@interface CLFindMyAccessoryAccelerometerOrientationModeConfiguration
- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithCoder:(id)a3;
- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithThreshold:(unsigned int)a3 sleepDuration:(unsigned __int16)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryAccelerometerOrientationModeConfiguration

- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithThreshold:(unsigned int)a3 sleepDuration:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = CLFindMyAccessoryAccelerometerOrientationModeConfiguration;
  result = [(CLFindMyAccessoryAccelerometerOrientationModeConfiguration *)&v7 init];
  if (result)
  {
    result->_threshold = a3;
    result->_sleepDuration_ms = a4;
  }

  return result;
}

- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithCoder:(id)a3
{
  [a3 decodeIntForKey:@"threshold"];
  [a3 decodeIntForKey:@"sleepDuration"];

  return MEMORY[0x1EEE66B58](self, sel_initWithThreshold_sleepDuration_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_threshold forKey:@"threshold"];
  sleepDuration_ms = self->_sleepDuration_ms;

  [a3 encodeInt:sleepDuration_ms forKey:@"sleepDuration"];
}

@end