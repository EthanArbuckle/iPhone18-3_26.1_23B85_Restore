@interface HKAudioExposureValue
- (HKAudioExposureValue)initWithValue:(double)value duration:(double)duration;
@end

@implementation HKAudioExposureValue

- (HKAudioExposureValue)initWithValue:(double)value duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = HKAudioExposureValue;
  result = [(HKAudioExposureValue *)&v7 init];
  if (result)
  {
    result->_value = value;
    result->_duration = duration;
  }

  return result;
}

@end