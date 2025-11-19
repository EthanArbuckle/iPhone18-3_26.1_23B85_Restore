@interface SBDashBoardSetupViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_infoButtonTapped:(id)a3;
- (void)_regulatoryInfoButtonTapped:(id)a3;
@end

@implementation SBDashBoardSetupViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBDashBoardSetupViewController" hasInstanceMethod:@"_infoButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBDashBoardSetupViewController" hasInstanceMethod:@"_regulatoryInfoButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)_infoButtonTapped:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBDashBoardSetupViewControllerAccessibility;
  [(SBDashBoardSetupViewControllerAccessibility *)&v3 _infoButtonTapped:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_regulatoryInfoButtonTapped:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBDashBoardSetupViewControllerAccessibility;
  [(SBDashBoardSetupViewControllerAccessibility *)&v3 _regulatoryInfoButtonTapped:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end