@interface NTKNumeralsAnalogElementsPlacement
+ (CGPoint)centerPointFor10NumeralInImageForStyle:(unint64_t)style forDevice:(id)device;
+ (int64_t)complicationPlacementForHour:(int64_t)hour forDevice:(id)device;
@end

@implementation NTKNumeralsAnalogElementsPlacement

+ (CGPoint)centerPointFor10NumeralInImageForStyle:(unint64_t)style forDevice:(id)device
{
  v5 = sub_7B28(self, device);
  v6 = [NSNumber numberWithUnsignedInteger:style];
  v7 = [v5 objectForKeyedSubscript:v6];
  [v7 CGPointValue];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

+ (int64_t)complicationPlacementForHour:(int64_t)hour forDevice:(id)device
{
  v5 = sub_7F3C(self, device);
  v6 = [v5 objectAtIndexedSubscript:hour - 1];
  integerValue = [v6 integerValue];

  return integerValue;
}

@end