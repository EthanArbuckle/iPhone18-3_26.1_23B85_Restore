@interface AKBasicLoginContentViewControllerContainerViewAccessibility
- (AKBasicLoginContentViewControllerContainerViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AKBasicLoginContentViewControllerContainerViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = AKBasicLoginContentViewControllerContainerViewAccessibility;
  [(AKBasicLoginContentViewControllerContainerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(AKBasicLoginContentViewControllerContainerViewAccessibility *)self safeValueForKey:@"_bannerView"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityLocalizedString(@"appleid.label");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
}

- (AKBasicLoginContentViewControllerContainerViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AKBasicLoginContentViewControllerContainerViewAccessibility;
  v3 = [(AKBasicLoginContentViewControllerContainerViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AKBasicLoginContentViewControllerContainerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end