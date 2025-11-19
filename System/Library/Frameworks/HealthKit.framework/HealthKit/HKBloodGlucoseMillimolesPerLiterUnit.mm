@interface HKBloodGlucoseMillimolesPerLiterUnit
@end

@implementation HKBloodGlucoseMillimolesPerLiterUnit

void ___HKBloodGlucoseMillimolesPerLiterUnit_block_invoke()
{
  v3 = [HKUnit moleUnitWithMetricPrefix:4 molarMass:180.15588];
  v0 = +[HKUnit literUnit];
  v1 = [v3 unitDividedByUnit:v0];
  v2 = _HKBloodGlucoseMillimolesPerLiterUnit_glucoseUnit;
  _HKBloodGlucoseMillimolesPerLiterUnit_glucoseUnit = v1;
}

@end