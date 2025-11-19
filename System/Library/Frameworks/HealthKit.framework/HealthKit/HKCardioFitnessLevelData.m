@interface HKCardioFitnessLevelData
- (HKCardioFitnessLevelData)initWithCardioFitnessLevel:(int64_t)a3 biologicalSex:(int64_t)a4 ageLowerBound:(int64_t)a5 ageUpperBound:(int64_t)a6 vo2MaxLowerBound:(double)a7 vo2MaxUpperBound:(double)a8;
@end

@implementation HKCardioFitnessLevelData

- (HKCardioFitnessLevelData)initWithCardioFitnessLevel:(int64_t)a3 biologicalSex:(int64_t)a4 ageLowerBound:(int64_t)a5 ageUpperBound:(int64_t)a6 vo2MaxLowerBound:(double)a7 vo2MaxUpperBound:(double)a8
{
  v15.receiver = self;
  v15.super_class = HKCardioFitnessLevelData;
  result = [(HKCardioFitnessLevelData *)&v15 init];
  if (result)
  {
    result->_biologicalSex = a4;
    result->_cardioFitnessLevel = a3;
    result->_ageLowerBound = a5;
    result->_ageUpperBound = a6;
    result->_vo2MaxLowerBound = a7;
    result->_vo2MaxUpperBound = a8;
  }

  return result;
}

@end