@interface COSRemoteUIStyle
- (void)applyToNavigationController:(id)a3;
@end

@implementation COSRemoteUIStyle

- (void)applyToNavigationController:(id)a3
{
  v3 = [a3 navigationBar];
  BPSApplyStyleToNavBar();
}

@end