@interface NSUnitTemperature
+ (void)initialize;
@end

@implementation NSUnitTemperature

+ (void)initialize
{
  if (NSUnitTemperature == self)
  {
    objc_opt_class();
  }
}

@end