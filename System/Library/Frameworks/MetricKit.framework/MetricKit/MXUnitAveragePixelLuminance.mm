@interface MXUnitAveragePixelLuminance
+ (MXUnitAveragePixelLuminance)apl;
@end

@implementation MXUnitAveragePixelLuminance

+ (MXUnitAveragePixelLuminance)apl
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v3 = [(NSDimension *)[MXUnitAveragePixelLuminance alloc] initWithSymbol:@"apl" converter:v2];

  return v3;
}

@end