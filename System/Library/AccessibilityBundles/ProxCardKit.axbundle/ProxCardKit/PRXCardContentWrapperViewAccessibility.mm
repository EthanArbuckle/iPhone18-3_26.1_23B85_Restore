@interface PRXCardContentWrapperViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PRXCardContentWrapperViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PRXCardContentWrapperViewAccessibility;
  [(PRXCardContentWrapperViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7FA0];
  v4 = [(PRXCardContentWrapperViewAccessibility *)self safeUIViewForKey:@"scrollView"];
  [v4 setAccessibilityContainerType:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRXCardContentWrapperViewAccessibility;
  [(PRXCardContentWrapperViewAccessibility *)&v3 layoutSubviews];
  [(PRXCardContentWrapperViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end