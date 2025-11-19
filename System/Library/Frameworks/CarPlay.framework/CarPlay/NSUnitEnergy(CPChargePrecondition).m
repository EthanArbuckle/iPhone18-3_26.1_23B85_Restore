@interface NSUnitEnergy(CPChargePrecondition)
+ (id)wattHours;
@end

@implementation NSUnitEnergy(CPChargePrecondition)

+ (id)wattHours
{
  if (wattHours_onceToken != -1)
  {
    +[NSUnitEnergy(CPChargePrecondition) wattHours];
  }

  v1 = wattHours__wattHours;

  return v1;
}

@end