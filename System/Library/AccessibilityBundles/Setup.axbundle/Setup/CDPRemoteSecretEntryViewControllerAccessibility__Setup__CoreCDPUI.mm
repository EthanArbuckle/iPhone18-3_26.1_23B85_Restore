@interface CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityShowsEscapeOffer;
@end

@implementation CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CDPRemoteSecretEntryViewController" isKindOfClass:@"PSDetailController"];
  [validationsCopy validateClass:@"PSDetailController" hasInstanceMethod:@"pane" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CDPRemoteSecretEntryViewController" hasInstanceVariable:@"_validator" withType:"CDPRemoteDeviceSecretValidator"];
  [validationsCopy validateClass:@"CDPRemoteDeviceSecretValidator" hasInstanceMethod:@"supportedEscapeOfferMask" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CDPRemoteSecretEntryPane"];
}

- (BOOL)accessibilityShowsEscapeOffer
{
  v3 = [(CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI *)self safeValueForKey:@"_validator"];
  v4 = [v3 _accessibilityUnsignedIntegerValueForKey:@"AXEscapeOffer"];
  v5 = [(CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI *)self safeValueForKey:@"pane"];
  NSClassFromString(&cfstr_Cdpremotesecre_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v4 != 1);
}

@end