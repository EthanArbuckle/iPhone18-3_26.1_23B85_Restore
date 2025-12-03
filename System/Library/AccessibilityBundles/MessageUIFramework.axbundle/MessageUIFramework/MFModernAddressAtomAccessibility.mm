@interface MFModernAddressAtomAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation MFModernAddressAtomAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_atomView" withType:"CNAtomView"];
  [validationsCopy validateClass:@"MFModernAddressAtom" hasInstanceVariable:@"_delegate" withType:"<MFModernAddressAtomDelegate>"];
  [validationsCopy validateClass:@"MFModernLabelledAtomList" conformsToProtocol:@"MFModernAddressAtomDelegate"];
  [validationsCopy validateClass:@"MFModernLabelledAtomList" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFModernLabelledAtomList" hasInstanceVariable:@"_labelVisible" withType:"BOOL"];
  [validationsCopy validateClass:@"MFModernLabelledAtomList"];
}

- (id)accessibilityLabel
{
  v2 = [(MFModernAddressAtomAccessibility *)self safeValueForKey:@"_atomView"];
  accessibilityLabel = [v2 accessibilityLabel];

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