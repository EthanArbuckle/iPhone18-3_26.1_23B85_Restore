@interface AMSUICommonScreen
+ (double)scale;
@end

@implementation AMSUICommonScreen

+ (double)scale
{
  mainScreen = [self mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

@end