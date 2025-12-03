@interface NSUnitIlluminance
+ (void)initialize;
@end

@implementation NSUnitIlluminance

+ (void)initialize
{
  if (NSUnitIlluminance == self)
  {
    objc_opt_class();
  }
}

@end