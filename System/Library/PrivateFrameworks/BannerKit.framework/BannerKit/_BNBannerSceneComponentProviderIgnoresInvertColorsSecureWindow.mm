@interface _BNBannerSceneComponentProviderIgnoresInvertColorsSecureWindow
- (void)accessibilityApplyInvertFilter;
@end

@implementation _BNBannerSceneComponentProviderIgnoresInvertColorsSecureWindow

- (void)accessibilityApplyInvertFilter
{
  if (([(_BNBannerSceneComponentProviderIgnoresInvertColorsSecureWindow *)self accessibilityIgnoresInvertColors]& 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = _BNBannerSceneComponentProviderIgnoresInvertColorsSecureWindow;
    [(_BNBannerSceneComponentProviderIgnoresInvertColorsSecureWindow *)&v3 accessibilityApplyInvertFilter];
  }
}

@end