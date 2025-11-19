@interface TabOverviewLargeTitleViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TabOverviewLargeTitleViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TabOverviewLargeTitleViewAccessibility;
  [(TabOverviewLargeTitleViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(TabOverviewLargeTitleViewAccessibility *)self safeSwiftValueForKey:@"collaborationButtonWrapper"];
  v4 = accessibilityMobileSafariLocalizedString(@"collaborate");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityIdentifier:@"Collaborate"];
}

@end