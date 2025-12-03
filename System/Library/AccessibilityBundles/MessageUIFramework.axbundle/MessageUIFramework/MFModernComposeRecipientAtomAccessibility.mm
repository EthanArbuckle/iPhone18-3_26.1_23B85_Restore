@interface MFModernComposeRecipientAtomAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axMFAddressIsSafeDomain;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation MFModernComposeRecipientAtomAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFModernComposeRecipientAtom" isKindOfClass:@"MFModernAtomView"];
  [validationsCopy validateClass:@"MFModernAtomView" hasInstanceMethod:@"presentationOptions" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"MFComposeRecipient" hasInstanceMethod:@"normalizedAddress" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFModernComposeRecipientAtom" hasInstanceVariable:@"_recipient" withType:"MFComposeRecipient"];
  [validationsCopy validateClass:@"MFComposeRecipient" hasInstanceMethod:@"address" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NSString" hasInstanceMethod:@"mf_addressDomain" withFullSignature:{"@", 0}];
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
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MFModernComposeRecipientAtomAccessibility *)self safeValueForKey:@"recipient"];
  v6 = [v5 safeValueForKey:@"normalizedAddress"];

  if ([accessibilityLabel isEqualToString:v6])
  {

    v6 = 0;
  }

  v7 = __UIAXStringForVariables();

  v8 = [(MFModernComposeRecipientAtomAccessibility *)self safeValueForKey:@"presentationOptions", v6, @"__AXStringForVariablesSentinel"];
  intValue = [v8 intValue];

  v10 = @"address.madrid.failure";
  if (intValue != 1 && intValue != 64)
  {
    if (intValue != 4)
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

  mEMORY[0x29EDC58E0] = [MEMORY[0x29EDC58E0] sharedConnection];
  managedEmailDomains = [mEMORY[0x29EDC58E0] managedEmailDomains];

  if (managedEmailDomains)
  {
    v7 = [managedEmailDomains containsObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end