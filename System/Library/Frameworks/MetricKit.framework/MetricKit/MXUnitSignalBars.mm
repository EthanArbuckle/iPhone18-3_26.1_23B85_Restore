@interface MXUnitSignalBars
+ (MXUnitSignalBars)bars;
@end

@implementation MXUnitSignalBars

+ (MXUnitSignalBars)bars
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v3 = [(NSDimension *)[MXUnitSignalBars alloc] initWithSymbol:@"bars" converter:v2];

  return v3;
}

@end