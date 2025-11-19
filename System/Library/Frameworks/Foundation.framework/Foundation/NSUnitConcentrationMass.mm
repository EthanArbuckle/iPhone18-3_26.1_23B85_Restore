@interface NSUnitConcentrationMass
+ (NSUnitConcentrationMass)millimolesPerLiterWithGramsPerMole:(double)gramsPerMole;
+ (void)initialize;
@end

@implementation NSUnitConcentrationMass

+ (void)initialize
{
  if (NSUnitConcentrationMass == a1)
  {
    objc_opt_class();
  }
}

+ (NSUnitConcentrationMass)millimolesPerLiterWithGramsPerMole:(double)gramsPerMole
{
  v3 = [(NSDimension *)[NSUnitConcentrationMass alloc] initWithSpecifier:4610 symbol:@"mmol/L" converter:[[NSUnitConverterLinear alloc] initWithCoefficient:gramsPerMole * 0.001]];

  return v3;
}

@end