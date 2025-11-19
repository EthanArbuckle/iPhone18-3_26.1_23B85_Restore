@interface NTKNumeralsAnalogElementsPlacement
+ (CGPoint)centerPointFor10NumeralInImageForStyle:(unint64_t)a3 forDevice:(id)a4;
+ (int64_t)complicationPlacementForHour:(int64_t)a3 forDevice:(id)a4;
@end

@implementation NTKNumeralsAnalogElementsPlacement

+ (CGPoint)centerPointFor10NumeralInImageForStyle:(unint64_t)a3 forDevice:(id)a4
{
  v5 = sub_7B28(a1, a4);
  v6 = [NSNumber numberWithUnsignedInteger:a3];
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

+ (int64_t)complicationPlacementForHour:(int64_t)a3 forDevice:(id)a4
{
  v5 = sub_7F3C(a1, a4);
  v6 = [v5 objectAtIndexedSubscript:a3 - 1];
  v7 = [v6 integerValue];

  return v7;
}

@end