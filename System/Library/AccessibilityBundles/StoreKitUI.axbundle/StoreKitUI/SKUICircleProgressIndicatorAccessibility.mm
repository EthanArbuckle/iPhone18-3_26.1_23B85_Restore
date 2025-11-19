@interface SKUICircleProgressIndicatorAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation SKUICircleProgressIndicatorAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(SKUICircleProgressIndicatorAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessoryView];
    v6 = v5 != self;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end