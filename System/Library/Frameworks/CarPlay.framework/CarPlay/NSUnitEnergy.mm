@interface NSUnitEnergy
@end

@implementation NSUnitEnergy

void __47__NSUnitEnergy_CPChargePrecondition__wattHours__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:3600.0];
  v0 = [objc_alloc(MEMORY[0x277CCADF8]) initWithSymbol:@"Wh" converter:v2];
  v1 = wattHours__wattHours;
  wattHours__wattHours = v0;
}

@end