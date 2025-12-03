@interface CARFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityUserTestingChildrenFromSBRootFolderView;
- (id)automationElements;
@end

@implementation CARFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CARFolderView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CARFolderView" isKindOfClass:@"SBFolderView"];
  [validationsCopy validateClass:@"CARTodayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"_CARDashboardHomeViewController" hasInstanceMethod:@"todayViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
}

- (id)_accessibilityUserTestingChildrenFromSBRootFolderView
{
  v7.receiver = self;
  v7.super_class = CARFolderViewAccessibility;
  automationElements = [(CARFolderViewAccessibility *)&v7 automationElements];
  v4 = AXGuaranteedMutableArray();

  v5 = [(CARFolderViewAccessibility *)self safeValueForKey:@"pageControl"];
  [v4 removeObject:v5];

  return v4;
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  subviews = [v2 subviews];

  return subviews;
}

@end