@interface MFModernComposeRecipientAtomAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axMFAddressIsSafeDomain;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation MFModernComposeRecipientAtomAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFModernComposeRecipientAtom" isKindOfClass:@"MFModernAtomView"];
  [v3 validateClass:@"MFModernAtomView" hasInstanceMethod:@"presentationOptions" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"MFComposeRecipient" hasInstanceMethod:@"normalizedAddress" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFModernComposeRecipientAtom" hasInstanceVariable:@"_recipient" withType:"MFComposeRecipient"];
  [v3 validateClass:@"MFComposeRecipient" hasInstanceMethod:@"address" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NSString" hasInstanceMethod:@"mf_addressDomain" withFullSignature:{"@", 0}];
}

- (id)accessibilityHint
{
  NSClassFromString(&cfstr_Mfmoderncompos.isa);
  if (objc_opt_isKindOfClass())
  {
    v2 = accessibilityLocalizedString(@"address.atom.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityLabel
{
  v3 = [(MFModernComposeRecipientAtomAccessibility *)self safeValueForKey:@"recipient"];
  v4 = [v3 accessibilityLabel];

  v5 = [(MFModernComposeRecipientAtomAccessibility *)self safeValueForKey:@"recipient"];
  v6 = [v5 safeValueForKey:@"normalizedAddress"];

  if ([v4 isEqualToString:v6])
  {

    v6 = 0;
  }

  v7 = __UIAXStringForVariables();

  v8 = [(MFModernComposeRecipientAtomAccessibility *)self safeValueForKey:@"presentationOptions", v6, @"__AXStringForVariablesSentinel"];
  v9 = [v8 intValue];

  v10 = @"address.madrid.failure";
  if (v9 != 1 && v9 != 64)
  {
    if (v9 != 4)
    {
      goto LABEL_8;
    }

    v10 = @"address.madrid.loading";
  }

  v14 = accessibilityLocalizedString(v10);
  v16 = @"__AXStringForVariablesSentinel";
  v11 = __UIAXStringForVariables();

  v7 = v11;
LABEL_8:
  if (![(MFModernComposeRecipientAtomAccessibility *)self _axMFAddressIsSafeDomain:v14])
  {
    v15 = accessibilityLocalizedString(@"address.marked");
    v12 = __UIAXStringForVariables();

    v7 = v12;
  }

  return v7;
}

- (BOOL)_axMFAddressIsSafeDomain
{
  v2 = [(MFModernComposeRecipientAtomAccessibility *)self safeValueForKey:@"_recipient"];
  v3 = [v2 safeValueForKey:@"address"];
  v4 = [v3 safeValueForKey:@"mf_addressDomain"];

  v5 = [MEMORY[0x29EDC58E0] sharedConnection];
  v6 = [v5 managedEmailDomains];

  if (v6)
  {
    v7 = [v6 containsObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end