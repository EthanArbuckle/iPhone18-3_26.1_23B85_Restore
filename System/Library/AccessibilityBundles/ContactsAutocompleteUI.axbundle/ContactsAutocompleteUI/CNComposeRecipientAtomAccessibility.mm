@interface CNComposeRecipientAtomAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsScreenLocked;
- (BOOL)_axMFAddressIsSafeDomain;
- (id)_accessibilityElementHelp;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation CNComposeRecipientAtomAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNComposeRecipientAtom" isKindOfClass:@"CNAtomView"];
  [validationsCopy validateClass:@"CNAtomView" hasInstanceMethod:@"presentationOptions" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CNComposeRecipient" hasInstanceMethod:@"displayString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipient" hasInstanceMethod:@"compositeName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipient" hasInstanceMethod:@"normalizedAddress" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientAtom" hasInstanceVariable:@"_recipient" withType:"CNComposeRecipient"];
  [validationsCopy validateClass:@"CNComposeRecipient" hasInstanceMethod:@"address" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NSString" hasInstanceMethod:@"mf_addressDomain" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNAtomView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientAtom" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CNComposeRecipientAtomDelegate" hasRequiredInstanceMethod:@"selectComposeRecipientAtom:"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasProperty:@"delegate" withType:"@"];
  [validationsCopy validateClass:@"CNComposeHeaderView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" isKindOfClass:@"CNComposeHeaderView"];
  [validationsCopy validateProtocol:@"CNComposeRecipientTextViewDelegate" hasOptionalInstanceMethod:@"composeRecipientView:disambiguateRecipientForAtom:"];
}

- (id)accessibilityHint
{
  NSClassFromString(&cfstr_Cncomposerecip_2.isa);
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
  v3 = [(CNComposeRecipientAtomAccessibility *)self safeValueForKey:@"recipient"];
  v4 = [v3 safeStringForKey:@"displayString"];

  if ([v4 isEqualToString:&stru_2A2170820])
  {
    v5 = [(CNComposeRecipientAtomAccessibility *)self safeValueForKey:@"recipient"];
    v6 = [v5 safeStringForKey:@"compositeName"];

    v4 = v6;
  }

  v7 = [(CNComposeRecipientAtomAccessibility *)self safeValueForKey:@"recipient"];
  v8 = [v7 safeStringForKey:@"normalizedAddress"];

  if (([v4 isEqualToString:v8] & 1) != 0 || -[CNComposeRecipientAtomAccessibility _axIsScreenLocked](self, "_axIsScreenLocked"))
  {

    v8 = 0;
  }

  v9 = __UIAXStringForVariables();

  v10 = [(CNComposeRecipientAtomAccessibility *)self safeValueForKey:@"presentationOptions", v8, @"__AXStringForVariablesSentinel"];
  intValue = [v10 intValue];

  v12 = @"address.madrid.failure";
  if (intValue <= 63)
  {
    if (intValue != 1)
    {
      if (intValue != 4)
      {
        goto LABEL_13;
      }

      v12 = @"address.madrid.loading";
    }

    goto LABEL_12;
  }

  if (intValue == 64 || intValue == 0x20000)
  {
LABEL_12:
    v16 = accessibilityLocalizedString(v12);
    v18 = @"__AXStringForVariablesSentinel";
    v13 = __UIAXStringForVariables();

    v9 = v13;
  }

LABEL_13:
  if (![(CNComposeRecipientAtomAccessibility *)self _axMFAddressIsSafeDomain:v16])
  {
    v17 = accessibilityLocalizedString(@"address.marked");
    v14 = __UIAXStringForVariables();

    v9 = v14;
  }

  return v9;
}

- (id)_accessibilityElementHelp
{
  if ([(CNComposeRecipientAtomAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v2 = accessibilityLocalizedString(@"address.atom.macos.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityCustomActions
{
  v12[1] = *MEMORY[0x29EDCA608];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityLocalizedString(@"show.alternate.addresses");
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __65__CNComposeRecipientAtomAccessibility_accessibilityCustomActions__block_invoke;
  v9[3] = &unk_29F2B5328;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v5 = [v3 initWithName:v4 actionHandler:v9];

  if ([(CNComposeRecipientAtomAccessibility *)self _axIsScreenLocked])
  {
    v6 = 0;
  }

  else
  {
    v12[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

uint64_t __65__CNComposeRecipientAtomAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  AXPerformSafeBlock();
  objc_destroyWeak(&v6);

  return 1;
}

void __65__CNComposeRecipientAtomAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained safeValueForKey:@"delegate"];

  v3 = [v4 safeValueForKey:@"delegate"];
  [v4 selectComposeRecipientAtom:*(a1 + 32)];
  if (objc_opt_respondsToSelector())
  {
    [v3 composeRecipientView:v4 disambiguateRecipientForAtom:*(a1 + 32)];
  }
}

- (BOOL)_axMFAddressIsSafeDomain
{
  v2 = [(CNComposeRecipientAtomAccessibility *)self safeValueForKey:@"_recipient"];
  v3 = [v2 safeStringForKey:@"address"];
  mf_addressDomain = [v3 mf_addressDomain];

  mEMORY[0x29EDC58E0] = [MEMORY[0x29EDC58E0] sharedConnection];
  managedEmailDomains = [mEMORY[0x29EDC58E0] managedEmailDomains];

  if (managedEmailDomains)
  {
    v7 = [managedEmailDomains containsObject:mf_addressDomain];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_axIsScreenLocked
{
  server = [MEMORY[0x29EDBDFA8] server];
  v3 = [server isScreenLockedWithPasscode:0];

  return v3;
}

@end