@interface _CNAtomTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityUseInactiveTextViewValueForParent:(id)parent;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityAttributedValue;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _CNAtomTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"_isTextViewCollapsed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceVariable:@"_inactiveTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView"];
  [validationsCopy validateClass:@"_CNAtomTextView" isKindOfClass:@"UITextView"];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(_CNAtomTextViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(_CNAtomTextViewAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_15;
  }

  accessibilityUserDefinedLabel2 = [MEMORY[0x29EDBA050] string];
  accessibilityIdentifier = [(_CNAtomTextViewAccessibility *)self accessibilityIdentifier];
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
  v10.super_class = _CNAtomTextViewAccessibility;
  accessibilityLabel = [(_CNAtomTextViewAccessibility *)&v10 accessibilityLabel];
  if (accessibilityLabel)
  {
    [accessibilityUserDefinedLabel2 appendString:accessibilityLabel];
  }

LABEL_15:

  return accessibilityUserDefinedLabel2;
}

- (CGPoint)accessibilityActivationPoint
{
  accessibilityTraits = [(_CNAtomTextViewAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7528] & accessibilityTraits) != 0)
  {
    v7.receiver = self;
    v7.super_class = _CNAtomTextViewAccessibility;
    [(_CNAtomTextViewAccessibility *)&v7 accessibilityActivationPoint];
  }

  else
  {
    accessibilityFrame = [(_CNAtomTextViewAccessibility *)self accessibilityFrame];

    MEMORY[0x2A1C5ECC8](accessibilityFrame);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (id)accessibilityValue
{
  v3 = [(_CNAtomTextViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cncomposerecip_5.isa)];
  if ([(_CNAtomTextViewAccessibility *)self _accessibilityUseInactiveTextViewValueForParent:v3])
  {
    v4 = [v3 safeValueForKey:@"_inactiveTextView"];
    accessibilityValue = [v4 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _CNAtomTextViewAccessibility;
    accessibilityValue = [(_CNAtomTextViewAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityAttributedValue
{
  v3 = [(_CNAtomTextViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cncomposerecip_5.isa)];
  if ([(_CNAtomTextViewAccessibility *)self _accessibilityUseInactiveTextViewValueForParent:v3])
  {
    v4 = [v3 safeValueForKey:@"_inactiveTextView"];
    accessibilityAttributedValue = [v4 accessibilityAttributedValue];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = _CNAtomTextViewAccessibility;
    accessibilityAttributedValue = [(_CNAtomTextViewAccessibility *)&v15 accessibilityAttributedValue];
    if (AXDoesRequestingClientDeserveAutomation())
    {
      v6 = [accessibilityAttributedValue mutableCopy];
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v14[3] = 0;
      v7 = [accessibilityAttributedValue length];
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = __60___CNAtomTextViewAccessibility_accessibilityAttributedValue__block_invoke;
      v11[3] = &unk_29F2B53E8;
      v8 = v6;
      v12 = v8;
      v13 = v14;
      [accessibilityAttributedValue enumerateAttributesInRange:0 options:v7 usingBlock:{0, v11}];
      v9 = v8;

      _Block_object_dispose(v14, 8);
      accessibilityAttributedValue = v9;
    }
  }

  return accessibilityAttributedValue;
}

- (BOOL)_accessibilityUseInactiveTextViewValueForParent:(id)parent
{
  parentCopy = parent;
  accessibilityTraits = [(_CNAtomTextViewAccessibility *)self accessibilityTraits];
  v6 = *MEMORY[0x29EDBDAF8];
  v7 = [parentCopy safeBoolForKey:@"_isTextViewCollapsed"];

  if ((v6 & ~accessibilityTraits) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)accessibilityTraits
{
  v4.receiver = self;
  v4.super_class = _CNAtomTextViewAccessibility;
  [(_CNAtomTextViewAccessibility *)&v4 accessibilityTraits];
  v2 = *MEMORY[0x29EDBDC00];
  return _AXTraitsRemoveTrait();
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v3 = [(_CNAtomTextViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cncomposerecip_5.isa)];
  if ([(_CNAtomTextViewAccessibility *)self _accessibilityUseInactiveTextViewValueForParent:v3])
  {
    v4 = [v3 safeValueForKey:@"_inactiveTextView"];
    _accessibilitySelectedTextRange = [v4 _accessibilitySelectedTextRange];
    v7 = v6;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _CNAtomTextViewAccessibility;
    _accessibilitySelectedTextRange = [(_CNAtomTextViewAccessibility *)&v11 _accessibilitySelectedTextRange];
    v7 = v8;
  }

  v9 = _accessibilitySelectedTextRange;
  v10 = v7;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(_CNAtomTextViewAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Cncomposerecip_5.isa)];
  if ([(_CNAtomTextViewAccessibility *)self _accessibilityUseInactiveTextViewValueForParent:v6])
  {
    v7 = [v6 safeValueForKey:@"_inactiveTextView"];
    [v7 _accessibilityBoundsForRange:{location, length}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = _CNAtomTextViewAccessibility;
    [(_CNAtomTextViewAccessibility *)&v24 _accessibilityBoundsForRange:location, length];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end