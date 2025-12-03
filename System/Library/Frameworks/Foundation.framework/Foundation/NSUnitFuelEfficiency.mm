@interface NSUnitFuelEfficiency
+ (NSUnitFuelEfficiency)milesPerGallon;
+ (NSUnitFuelEfficiency)milesPerImperialGallon;
+ (void)initialize;
@end

@implementation NSUnitFuelEfficiency

+ (void)initialize
{
  if (NSUnitFuelEfficiency == self)
  {
    objc_opt_class();
  }
}

+ (NSUnitFuelEfficiency)milesPerImperialGallon
{
  if (qword_1EA7C01E0 != -1)
  {
    dispatch_once(&qword_1EA7C01E0, &__block_literal_global_14);
  }

  return _MergedGlobals_49;
}

NSUnitFuelEfficiency *__46__NSUnitFuelEfficiency_milesPerImperialGallon__block_invoke()
{
  result = [(NSDimension *)[NSUnitFuelEfficiency alloc] initWithSpecifier:3331 symbol:@"mpg" converter:[[NSUnitConverterReciprocal alloc] initWithReciprocalValue:282.481]];
  _MergedGlobals_49 = result;
  return result;
}

+ (NSUnitFuelEfficiency)milesPerGallon
{
  if (qword_1EA7C01F0 != -1)
  {
    dispatch_once(&qword_1EA7C01F0, &__block_literal_global_868);
  }

  return qword_1EA7C01E8;
}

NSUnitFuelEfficiency *__38__NSUnitFuelEfficiency_milesPerGallon__block_invoke()
{
  result = [(NSDimension *)[NSUnitFuelEfficiency alloc] initWithSpecifier:3329 symbol:@"mpg" converter:[[NSUnitConverterReciprocal alloc] initWithReciprocalValue:235.215]];
  qword_1EA7C01E8 = result;
  return result;
}

@end