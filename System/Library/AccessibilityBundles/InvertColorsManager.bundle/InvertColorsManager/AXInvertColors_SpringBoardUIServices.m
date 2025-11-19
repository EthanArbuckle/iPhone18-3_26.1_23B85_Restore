@interface AXInvertColors_SpringBoardUIServices
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SpringBoardUIServices

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUILegibilityLabel" hasInstanceMethod:@"legibilitySettings" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBUIProudLockIconView"];
  [v3 validateClass:@"SBUIPasscodeLockViewFactory" hasClassMethod:@"_passcodeLockViewForStyle:withLightStyle:" withFullSignature:{"@", "i", "B", 0}];
  [v3 validateClass:@"SBUIProudLockIconView" hasInstanceMethod:@"_activeViewsForState:" withFullSignature:{"@", "q", 0}];
}

+ (void)installCategories:(id)a3
{
  v3 = a3;
  [v3 installSafeCategory:@"SBPasscodeNumberPadButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBUILegibilityLabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBUIPasscodeLockViewFactoryInvertColorsAccessibility" canInteractWithTargetClass:1];
  [v3 installSafeCategory:@"SBUIProudLockIconViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end