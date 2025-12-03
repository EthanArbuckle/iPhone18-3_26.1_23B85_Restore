@interface UIPanelControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIPanelControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIPanelController";
  v3 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"configuration" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"leadingViewController" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"trailingViewController" withFullSignature:{v3, 0}];
  [location[0] validateClass:@"UISplitViewControllerPanelImpl" hasInstanceMethod:@"primaryEdge" withFullSignature:{"q", 0}];
  v5 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"_setLeadingBorderView:" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setTrailingBorderView:" withFullSignature:{v5, v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_setSupplementaryBorderView:" withFullSignature:{v5, v3, 0}];
  objc_storeStrong(v7, v6);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIPanelControllerAccessibility;
  [(UIPanelControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end