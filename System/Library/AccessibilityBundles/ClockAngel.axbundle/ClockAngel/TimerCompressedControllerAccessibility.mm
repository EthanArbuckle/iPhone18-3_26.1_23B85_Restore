@interface TimerCompressedControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLayoutSubviews;
@end

@implementation TimerCompressedControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = TimerCompressedControllerAccessibility;
  [(TimerCompressedControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(TimerCompressedControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setIsAccessibilityElementBlock:&__block_literal_global_0];
  [v3 setAccessibilityLabelBlock:&__block_literal_global_296];
  [v3 _setAccessibilityTraitsBlock:&__block_literal_global_302];
  [v3 _setAccessibilityShouldUseHostContextIDTap:&__block_literal_global_304];
  [v3 _setAccessibilityShouldUseHostContextIDLongPress:&__block_literal_global_306];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TimerCompressedControllerAccessibility;
  [(TimerCompressedControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(TimerCompressedControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end