@interface COSRemoteUIStyle
- (void)applyToNavigationController:(id)controller;
@end

@implementation COSRemoteUIStyle

- (void)applyToNavigationController:(id)controller
{
  navigationBar = [controller navigationBar];
  BPSApplyStyleToNavBar();
}

@end