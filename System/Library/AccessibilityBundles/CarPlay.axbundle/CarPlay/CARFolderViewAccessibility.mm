@interface CARFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityUserTestingChildrenFromSBRootFolderView;
- (id)automationElements;
@end

@implementation CARFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CARFolderView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CARFolderView" isKindOfClass:@"SBFolderView"];
  [v3 validateClass:@"CARTodayViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"_CARDashboardHomeViewController" hasInstanceMethod:@"todayViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
}

- (id)_accessibilityUserTestingChildrenFromSBRootFolderView
{
  v7.receiver = self;
  v7.super_class = CARFolderViewAccessibility;
  v3 = [(CARFolderViewAccessibility *)&v7 automationElements];
  v4 = AXGuaranteedMutableArray();

  v5 = [(CARFolderViewAccessibility *)self safeValueForKey:@"pageControl"];
  [v4 removeObject:v5];

  return v4;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 subviews];

  return v3;
}

@end