@interface AVPresentationControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)presentationTransitionWillBegin;
@end

@implementation AVPresentationControllerInvertColorsAccessibility

- (void)presentationTransitionWillBegin
{
  v3.receiver = self;
  v3.super_class = AVPresentationControllerInvertColorsAccessibility;
  [(AVPresentationControllerInvertColorsAccessibility *)&v3 presentationTransitionWillBegin];
  [(AVPresentationControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(AVPresentationControllerInvertColorsAccessibility *)self safeValueForKey:@"context"];
  v2 = [v3 safeUIViewForKey:@"backgroundView"];
  [v2 setAccessibilityIgnoreInvertIfDarkBackgroundColor:1];
}

@end