@interface SBDashBoardSetupViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_infoButtonTapped:(id)tapped;
- (void)_regulatoryInfoButtonTapped:(id)tapped;
@end

@implementation SBDashBoardSetupViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDashBoardSetupViewController" hasInstanceMethod:@"_infoButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBDashBoardSetupViewController" hasInstanceMethod:@"_regulatoryInfoButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)_infoButtonTapped:(id)tapped
{
  v3.receiver = self;
  v3.super_class = SBDashBoardSetupViewControllerAccessibility;
  [(SBDashBoardSetupViewControllerAccessibility *)&v3 _infoButtonTapped:tapped];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_regulatoryInfoButtonTapped:(id)tapped
{
  v3.receiver = self;
  v3.super_class = SBDashBoardSetupViewControllerAccessibility;
  [(SBDashBoardSetupViewControllerAccessibility *)&v3 _regulatoryInfoButtonTapped:tapped];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end