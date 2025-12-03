@interface ComposeNavigationControllerAccessibility
- (void)setContentVisible:(BOOL)visible;
@end

@implementation ComposeNavigationControllerAccessibility

- (void)setContentVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = ComposeNavigationControllerAccessibility;
  [(ComposeNavigationControllerAccessibility *)&v6 setContentVisible:?];
  v5 = [(ComposeNavigationControllerAccessibility *)self safeValueForKey:@"view"];
  [v5 setAccessibilityElementsHidden:!visibleCopy];
}

@end