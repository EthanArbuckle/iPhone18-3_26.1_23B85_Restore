@interface SKStoreProductViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation SKStoreProductViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (AXProcessIsSpringBoard())
  {
    v4 = [(SKStoreProductViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    v3 = [v4 layer];
    [AXInvertColorsAppHelper toggleInvertColors:v3];
  }
}

@end