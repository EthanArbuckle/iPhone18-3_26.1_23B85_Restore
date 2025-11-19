@interface AMSRandomNumberGenerator
+ (void)initialize;
@end

@implementation AMSRandomNumberGenerator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = arc4random();

    srand48(v2);
  }
}

@end