@interface NSUnitSpeed
+ (void)initialize;
@end

@implementation NSUnitSpeed

+ (void)initialize
{
  if (NSUnitSpeed == self)
  {
    objc_opt_class();
  }
}

@end