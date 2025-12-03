@interface SBBannerWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
@end

@implementation SBBannerWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBBannerWindow" hasInstanceVariable:@"_keyWindowStack" withType:"_SBFKeyWindowStack"];
  [validationsCopy validateClass:@"_SBFKeyWindowStack" hasInstanceVariable:@"_expectedKeyWindow" withType:"SBFWindow"];
  [validationsCopy validateClass:@"SBTransientOverlayWindow"];
}

- (BOOL)accessibilityViewIsModal
{
  v2 = [(SBBannerWindowAccessibility *)self safeValueForKey:@"_keyWindowStack"];
  v3 = [v2 safeValueForKey:@"_expectedKeyWindow"];
  NSClassFromString(&cfstr_Sbtransientove_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end