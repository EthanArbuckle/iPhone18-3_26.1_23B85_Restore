@interface AXInvertColors_SpringBoardUIServices
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SpringBoardUIServices

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUILegibilityLabel" hasInstanceMethod:@"legibilitySettings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBUIProudLockIconView"];
  [validationsCopy validateClass:@"SBUIPasscodeLockViewFactory" hasClassMethod:@"_passcodeLockViewForStyle:withLightStyle:" withFullSignature:{"@", "i", "B", 0}];
  [validationsCopy validateClass:@"SBUIProudLockIconView" hasInstanceMethod:@"_activeViewsForState:" withFullSignature:{"@", "q", 0}];
}

+ (void)installCategories:(id)categories
{
  categoriesCopy = categories;
  [categoriesCopy installSafeCategory:@"SBPasscodeNumberPadButtonInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBUILegibilityLabelInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBUIPasscodeLockViewFactoryInvertColorsAccessibility" canInteractWithTargetClass:1];
  [categoriesCopy installSafeCategory:@"SBUIProudLockIconViewInvertColorsAccessibility" canInteractWithTargetClass:1];
}

@end