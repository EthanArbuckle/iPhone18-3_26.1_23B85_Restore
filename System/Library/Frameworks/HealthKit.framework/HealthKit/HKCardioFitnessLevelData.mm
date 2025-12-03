@interface HKCardioFitnessLevelData
- (HKCardioFitnessLevelData)initWithCardioFitnessLevel:(int64_t)level biologicalSex:(int64_t)sex ageLowerBound:(int64_t)bound ageUpperBound:(int64_t)upperBound vo2MaxLowerBound:(double)lowerBound vo2MaxUpperBound:(double)maxUpperBound;
@end

@implementation HKCardioFitnessLevelData

- (HKCardioFitnessLevelData)initWithCardioFitnessLevel:(int64_t)level biologicalSex:(int64_t)sex ageLowerBound:(int64_t)bound ageUpperBound:(int64_t)upperBound vo2MaxLowerBound:(double)lowerBound vo2MaxUpperBound:(double)maxUpperBound
{
  v15.receiver = self;
  v15.super_class = HKCardioFitnessLevelData;
  result = [(HKCardioFitnessLevelData *)&v15 init];
  if (result)
  {
    result->_biologicalSex = sex;
    result->_cardioFitnessLevel = level;
    result->_ageLowerBound = bound;
    result->_ageUpperBound = upperBound;
    result->_vo2MaxLowerBound = lowerBound;
    result->_vo2MaxUpperBound = maxUpperBound;
  }

  return result;
}

@end