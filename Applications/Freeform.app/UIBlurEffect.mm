@interface UIBlurEffect
+ (id)crl_popoverVibrantBackgroundEffect;
+ (id)crl_standardVibrantBackgroundEffect;
@end

@implementation UIBlurEffect

+ (id)crl_standardVibrantBackgroundEffect
{
  crl_standardVibrantBackgroundStyle = [self crl_standardVibrantBackgroundStyle];

  return [UIBlurEffect effectWithStyle:crl_standardVibrantBackgroundStyle];
}

+ (id)crl_popoverVibrantBackgroundEffect
{
  crl_popoverVibrantBackgroundStyle = [self crl_popoverVibrantBackgroundStyle];

  return [UIBlurEffect effectWithStyle:crl_popoverVibrantBackgroundStyle];
}

@end