@interface UIScreen(BannerKitAdditions)
- (uint64_t)_bn_portraitPeripheryInsets;
@end

@implementation UIScreen(BannerKitAdditions)

- (uint64_t)_bn_portraitPeripheryInsets
{
  [a1 _peripheryInsets];
  if ([a1 _interfaceOrientation] != 1 && objc_msgSend(a1, "_interfaceOrientation", 0.0) != 4 && objc_msgSend(a1, "_interfaceOrientation") != 3)
  {
    [a1 _interfaceOrientation];
  }

  return UIEdgeInsetsRotate();
}

@end