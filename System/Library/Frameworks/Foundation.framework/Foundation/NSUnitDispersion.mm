@interface NSUnitDispersion
+ (void)initialize;
@end

@implementation NSUnitDispersion

+ (void)initialize
{
  if (NSUnitDispersion == self)
  {
    objc_opt_class();
  }
}

@end