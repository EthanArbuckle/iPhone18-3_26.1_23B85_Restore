@interface _MFAtomTextViewAccessibility
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _MFAtomTextViewAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(_MFAtomTextViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(_MFAtomTextViewAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_15;
  }

  accessibilityUserDefinedLabel2 = [MEMORY[0x29EDBA050] string];
  accessibilityIdentifier = [(_MFAtomTextViewAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"toField"])
  {
    v6 = @"to.text";
LABEL_11:
    v7 = accessibilityLocalizedString(v6);
    [accessibilityUserDefinedLabel2 appendString:v7];

    goto LABEL_12;
  }

  if ([accessibilityIdentifier isEqualToString:@"subjectField"])
  {
    v6 = @"subject.text";
    goto LABEL_11;
  }

  if ([accessibilityIdentifier isEqualToString:@"ccField"])
  {
    v6 = @"cc.text";
    goto LABEL_11;
  }

  if ([accessibilityIdentifier isEqualToString:@"bccField"])
  {
    v6 = @"bcc.text";
    goto LABEL_11;
  }

LABEL_12:
  v10.receiver = self;
  v10.super_class = _MFAtomTextViewAccessibility;
  accessibilityLabel = [(_MFAtomTextViewAccessibility *)&v10 accessibilityLabel];
  if (accessibilityLabel)
  {
    [accessibilityUserDefinedLabel2 appendString:accessibilityLabel];
  }

LABEL_15:

  return accessibilityUserDefinedLabel2;
}

- (CGPoint)accessibilityActivationPoint
{
  accessibilityTraits = [(_MFAtomTextViewAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & accessibilityTraits) != 0)
  {
    v7.receiver = self;
    v7.super_class = _MFAtomTextViewAccessibility;
    [(_MFAtomTextViewAccessibility *)&v7 accessibilityActivationPoint];
  }

  else
  {
    accessibilityFrame = [(_MFAtomTextViewAccessibility *)self accessibilityFrame];

    MEMORY[0x2A1C5ECC8](accessibilityFrame);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (id)accessibilityValue
{
  LOBYTE(v11) = 0;
  objc_opt_class();
  v3 = [(_MFAtomTextViewAccessibility *)self safeValueForKey:@"atoms"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(_MFAtomTextViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Mfcomposerecip_4.isa)];
  if ([v5 safeBoolForKey:@"_isTextViewCollapsed"])
  {
    v6 = [v5 safeValueForKey:@"_inactiveTextView"];
    accessibilityValue = [v6 accessibilityValue];
  }

  else if ([v4 count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    array = [MEMORY[0x29EDB8DE8] array];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __50___MFAtomTextViewAccessibility_accessibilityValue__block_invoke;
    v10[3] = &unk_29F2D1AB0;
    v10[4] = &v11;
    [v4 enumerateObjectsUsingBlock:v10];
    accessibilityValue = [v12[5] componentsJoinedByString:{@", "}];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _MFAtomTextViewAccessibility;
    accessibilityValue = [(_MFAtomTextViewAccessibility *)&v9 accessibilityValue];
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v4.receiver = self;
  v4.super_class = _MFAtomTextViewAccessibility;
  [(_MFAtomTextViewAccessibility *)&v4 accessibilityTraits];
  v2 = *MEMORY[0x29EDBDC00];
  return _AXTraitsRemoveTrait();
}

@end