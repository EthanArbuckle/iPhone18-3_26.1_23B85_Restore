@interface HKBeatToBeatInstantaneousBPM
- (HKBeatToBeatInstantaneousBPM)initWithBPM:(double)a3 time:(double)a4;
@end

@implementation HKBeatToBeatInstantaneousBPM

- (HKBeatToBeatInstantaneousBPM)initWithBPM:(double)a3 time:(double)a4
{
  v7.receiver = self;
  v7.super_class = HKBeatToBeatInstantaneousBPM;
  result = [(HKBeatToBeatInstantaneousBPM *)&v7 init];
  if (result)
  {
    result->_bpm = a3;
    result->_time = a4;
  }

  return result;
}

@end