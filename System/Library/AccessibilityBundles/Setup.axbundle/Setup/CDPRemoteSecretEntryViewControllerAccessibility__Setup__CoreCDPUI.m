@interface CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityShowsEscapeOffer;
@end

@implementation CDPRemoteSecretEntryViewControllerAccessibility__Setup__CoreCDPUI

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CDPRemoteSecretEntryViewController" isKindOfClass:@"PSDetailController"];
  [v3 validateClass:@"PSDetailController" hasInstanceMethod:@"pane" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CDPRemoteSecretEntryViewController" hasInstanceVariable:@"_validator" withType:"CDPRemoteDeviceSecretValidator"];
  [v3 validateClass:@"CDPRemoteDeviceSecretValidator" hasInstanceMethod:@"supportedEscapeOfferMask" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CDPRemoteSecretEntryPane"];
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