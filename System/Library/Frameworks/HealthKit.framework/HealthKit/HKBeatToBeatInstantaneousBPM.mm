@interface HKBeatToBeatInstantaneousBPM
- (HKBeatToBeatInstantaneousBPM)initWithBPM:(double)m time:(double)time;
@end

@implementation HKBeatToBeatInstantaneousBPM

- (HKBeatToBeatInstantaneousBPM)initWithBPM:(double)m time:(double)time
{
  v7.receiver = self;
  v7.super_class = HKBeatToBeatInstantaneousBPM;
  result = [(HKBeatToBeatInstantaneousBPM *)&v7 init];
  if (result)
  {
    result->_bpm = m;
    result->_time = time;
  }

  return result;
}

@end