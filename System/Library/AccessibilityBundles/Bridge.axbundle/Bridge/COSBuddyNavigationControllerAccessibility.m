@interface COSBuddyNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)addInternalDashboardButton;
@end

@implementation COSBuddyNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSBuddyNavigationController" hasInstanceVariable:@"_internalDashboardButton" withType:"UIButton"];
  [v3 validateClass:@"COSBuddyNavigationController" hasInstanceMethod:@"addInternalDashboardButton" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = COSBuddyNavigationControllerAccessibility;
  [(COSBuddyNavigationControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(COSBuddyNavigationControllerAccessibility *)self safeUIViewForKey:@"_internalDashboardButton"];
  [v3 setAccessibilityLabel:@"Internal Settings"];
}

- (void)addInternalDashboardButton
{
  v3.receiver = self;
  v3.super_class = COSBuddyNavigationControllerAccessibility;
  [(COSBuddyNavigationControllerAccessibility *)&v3 addInternalDashboardButton];
  [(COSBuddyNavigationControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end