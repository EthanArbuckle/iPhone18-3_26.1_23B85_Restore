@interface CLFindMyAccessoryAccelerometerOrientationModeConfiguration
- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithThreshold:(unsigned int)threshold sleepDuration:(unsigned __int16)duration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryAccelerometerOrientationModeConfiguration

- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithThreshold:(unsigned int)threshold sleepDuration:(unsigned __int16)duration
{
  v7.receiver = self;
  v7.super_class = CLFindMyAccessoryAccelerometerOrientationModeConfiguration;
  result = [(CLFindMyAccessoryAccelerometerOrientationModeConfiguration *)&v7 init];
  if (result)
  {
    result->_threshold = threshold;
    result->_sleepDuration_ms = duration;
  }

  return result;
}

- (CLFindMyAccessoryAccelerometerOrientationModeConfiguration)initWithCoder:(id)coder
{
  [coder decodeIntForKey:@"threshold"];
  [coder decodeIntForKey:@"sleepDuration"];

  return MEMORY[0x1EEE66B58](self, sel_initWithThreshold_sleepDuration_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_threshold forKey:@"threshold"];
  sleepDuration_ms = self->_sleepDuration_ms;

  [coder encodeInt:sleepDuration_ms forKey:@"sleepDuration"];
}

@end