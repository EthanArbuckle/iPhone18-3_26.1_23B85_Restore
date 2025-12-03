@interface _TVLoadingOverlayWindowAccessibility
- (BOOL)_accessibilityCanBeConsideredAsMainWindow;
@end

@implementation _TVLoadingOverlayWindowAccessibility

- (BOOL)_accessibilityCanBeConsideredAsMainWindow
{
  objc_opt_class();
  v3 = [(_TVLoadingOverlayWindowAccessibility *)self safeValueForKey:@"subviews"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 count] != 1)
  {
    _AXAssert();
  }

  firstObject = [v4 firstObject];
  _accessibilityViewIsVisible = [firstObject _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

@end