@interface SBBannerWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
@end

@implementation SBBannerWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBBannerWindow" hasInstanceVariable:@"_keyWindowStack" withType:"_SBFKeyWindowStack"];
  [v3 validateClass:@"_SBFKeyWindowStack" hasInstanceVariable:@"_expectedKeyWindow" withType:"SBFWindow"];
  [v3 validateClass:@"SBTransientOverlayWindow"];
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