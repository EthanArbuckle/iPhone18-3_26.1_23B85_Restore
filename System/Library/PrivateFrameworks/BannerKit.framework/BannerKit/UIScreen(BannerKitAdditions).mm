@interface UIScreen(BannerKitAdditions)
- (uint64_t)_bn_portraitPeripheryInsets;
@end

@implementation UIScreen(BannerKitAdditions)

- (uint64_t)_bn_portraitPeripheryInsets
{
  [self _peripheryInsets];
  if ([self _interfaceOrientation] != 1 && objc_msgSend(self, "_interfaceOrientation", 0.0) != 4 && objc_msgSend(self, "_interfaceOrientation") != 3)
  {
    [self _interfaceOrientation];
  }

  return UIEdgeInsetsRotate();
}

@end