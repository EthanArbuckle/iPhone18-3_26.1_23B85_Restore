@interface NSUnitAngle
+ (void)initialize;
@end

@implementation NSUnitAngle

+ (void)initialize
{
  if (NSUnitAngle == self)
  {
    objc_opt_class();
  }
}

@end