@interface UIBlurEffect
+ (id)crl_popoverVibrantBackgroundEffect;
+ (id)crl_standardVibrantBackgroundEffect;
@end

@implementation UIBlurEffect

+ (id)crl_standardVibrantBackgroundEffect
{
  v2 = [a1 crl_standardVibrantBackgroundStyle];

  return [UIBlurEffect effectWithStyle:v2];
}

+ (id)crl_popoverVibrantBackgroundEffect
{
  v2 = [a1 crl_popoverVibrantBackgroundStyle];

  return [UIBlurEffect effectWithStyle:v2];
}

@end