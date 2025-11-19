@interface ComposeNavigationControllerAccessibility
- (void)setContentVisible:(BOOL)a3;
@end

@implementation ComposeNavigationControllerAccessibility

- (void)setContentVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ComposeNavigationControllerAccessibility;
  [(ComposeNavigationControllerAccessibility *)&v6 setContentVisible:?];
  v5 = [(ComposeNavigationControllerAccessibility *)self safeValueForKey:@"view"];
  [v5 setAccessibilityElementsHidden:!v3];
}

@end