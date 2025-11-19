@interface SBHomeScreenOverlayViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation SBHomeScreenOverlayViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(SBHomeScreenOverlayViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"backgroundView"];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    [v3 setAccessibilityMaterialViewMimicsReduceTransparency:1];
    if (AXInvertColorsIsSystemWideDarkModeEnabled())
    {
      +[UIColor darkGrayColor];
    }

    else
    {
      +[UIColor lightGrayColor];
    }
    v2 = ;
    [v3 setBackgroundColor:v2];
  }

  else
  {
    [v3 setBackgroundColor:0];
  }
}

@end