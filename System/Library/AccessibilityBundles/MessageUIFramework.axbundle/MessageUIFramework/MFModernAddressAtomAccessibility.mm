@interface MFModernAddressAtomAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation MFModernAddressAtomAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_atomView" withType:"CNAtomView"];
  [v3 validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_delegate" withType:"<MFModernAddressAtomDelegate>"];
  [v3 validateClass:@"MFModernLabelledAtomList" conformsToProtocol:@"MFModernAddressAtomDelegate"];
  [v3 validateClass:@"MFModernLabelledAtomList" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFModernLabelledAtomList" hasInstanceVariable:@"_labelVisible" withType:"BOOL"];
  [v3 validateClass:@"MFModernLabelledAtomList"];
}

- (id)accessibilityLabel
{
  v2 = [(MFModernAddressAtomAccessibility *)self safeValueForKey:@"_atomView"];
  v3 = [v2 accessibilityLabel];

  v6 = accessibilityLocalizedString(@"address.atom.type");
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityHint
{
  v2 = [(MFModernAddressAtomAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeBoolForKey:@"labelVisible"];

  if (v3)
  {
    v4 = @"address.atom.hint";
  }

  else
  {
    v4 = @"address.atom.expand.hint";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

@end