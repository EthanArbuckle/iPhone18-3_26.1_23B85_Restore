@interface NTKRenegadeSeededRandomizer
+ (NTKRenegadeSeededRandomizer)randomizerWithSeedValue:(unint64_t)value;
- (BOOL)BOOLValueWithChance:(double)chance;
- (CGPoint)pointBetweenFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint;
- (double)floatValueBetweenFirstValue:(double)value secondValue:(double)secondValue;
- (unint64_t)unsignedLongValue;
@end

@implementation NTKRenegadeSeededRandomizer

- (unint64_t)unsignedLongValue
{
  v2 = 1103515245 * self->_nextValue + 12345;
  self->_nextValue = v2;
  return v2;
}

- (BOOL)BOOLValueWithChance:(double)chance
{
  v3 = chance * 100.0;
  unsignedLongValue = [(NTKRenegadeSeededRandomizer *)self unsignedLongValue];
  return v3 > (unsignedLongValue / 0x64 - 100 * (((unsignedLongValue / 0x64 * 0x51EB851EB851EB9uLL) >> 64) >> 1));
}

- (double)floatValueBetweenFirstValue:(double)value secondValue:(double)secondValue
{
  v5 = secondValue - value;
  [(NTKRenegadeSeededRandomizer *)self fractionValue];
  return value + v6 * v5;
}

- (CGPoint)pointBetweenFirstPoint:(CGPoint)point secondPoint:(CGPoint)secondPoint
{
  y = secondPoint.y;
  v5 = point.y;
  [(NTKRenegadeSeededRandomizer *)self floatValueBetweenFirstValue:point.x secondValue:secondPoint.x];
  v8 = v7;
  [(NTKRenegadeSeededRandomizer *)self floatValueBetweenFirstValue:v5 secondValue:y];
  v10 = v9;
  v11 = v8;
  result.y = v10;
  result.x = v11;
  return result;
}

+ (NTKRenegadeSeededRandomizer)randomizerWithSeedValue:(unint64_t)value
{
  v4 = [self new];
  if (value <= 1)
  {
    valueCopy = 1;
  }

  else
  {
    valueCopy = value;
  }

  v4[1] = valueCopy;
  v4[2] = valueCopy;

  return v4;
}

@end