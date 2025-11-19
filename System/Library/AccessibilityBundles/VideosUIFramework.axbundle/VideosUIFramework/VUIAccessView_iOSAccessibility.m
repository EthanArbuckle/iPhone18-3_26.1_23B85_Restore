@interface VUIAccessView_iOSAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VUIAccessView_iOSAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = VUIAccessView_iOSAccessibility;
  [(VUIAccessView_iOSAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(VUIAccessView_iOSAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29ED3FF70](@"UITransitionView")];
  [v3 setAccessibilityViewIsModal:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIAccessView_iOSAccessibility;
  [(VUIAccessView_iOSAccessibility *)&v3 layoutSubviews];
  [(VUIAccessView_iOSAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end