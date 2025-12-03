@interface SKStoreProductViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation SKStoreProductViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (AXProcessIsSpringBoard())
  {
    v4 = [(SKStoreProductViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    layer = [v4 layer];
    [AXInvertColorsAppHelper toggleInvertColors:layer];
  }
}

@end