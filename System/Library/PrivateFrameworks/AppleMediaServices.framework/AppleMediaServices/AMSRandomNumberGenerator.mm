@interface AMSRandomNumberGenerator
+ (void)initialize;
@end

@implementation AMSRandomNumberGenerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = arc4random();

    srand48(v2);
  }
}

@end