@interface TPNumberPadButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation TPNumberPadButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPNumberPadButton" hasClassMethod:@"usesTelephonyGlyphsWhereAvailable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"TPNumberPadButton" hasClassMethod:@"localizedLettersForCharacter:" withFullSignature:{"@", "q", 0}];
}

- (BOOL)isAccessibilityElement
{
  if (([(TPNumberPadButtonAccessibility *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  [(TPNumberPadButtonAccessibility *)self alpha];
  if (v3 <= 0.0)
  {
    return 0;
  }

  accessibilityLabel = [(TPNumberPadButtonAccessibility *)self accessibilityLabel];
  v5 = accessibilityLabel != 0;

  return v5;
}

- (id)accessibilityHint
{
  v3 = [(TPNumberPadButtonAccessibility *)self safeValueForKey:@"character"];
  intValue = [v3 intValue];

  if ((intValue - 1) > 7)
  {
    accessibilityHint = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v10 = MEMORY[0x29EDCA5F8];
    v11 = 3221225472;
    v12 = __51__TPNumberPadButtonAccessibility_accessibilityHint__block_invoke;
    v13 = &unk_29F309668;
    selfCopy = self;
    v15 = &v17;
    v16 = intValue;
    AXPerformSafeBlock();
    accessibilityHint = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  if (![accessibilityHint length])
  {
    if (intValue <= 4)
    {
      if (intValue > 2)
      {
        if (intValue == 3)
        {
          v6 = @"4.key.hint";
        }

        else
        {
          v6 = @"5.key.hint";
        }

        goto LABEL_27;
      }

      if (intValue == 1)
      {
        v6 = @"2.key.hint";
        goto LABEL_27;
      }

      if (intValue == 2)
      {
        v6 = @"3.key.hint";
        goto LABEL_27;
      }
    }

    else
    {
      if (intValue <= 6)
      {
        if (intValue == 5)
        {
          v6 = @"6.key.hint";
        }

        else
        {
          v6 = @"7.key.hint";
        }

        goto LABEL_27;
      }

      if (intValue == 7)
      {
        v6 = @"8.key.hint";
        goto LABEL_27;
      }

      if (intValue == 8)
      {
        v6 = @"9.key.hint";
        goto LABEL_27;
      }

      if (intValue == 10 && ([objc_opt_class() safeBoolForKey:@"usesTelephonyGlyphsWhereAvailable"] & 1) != 0)
      {
        v6 = @"0.key.hint";
LABEL_27:

        accessibilityHint = v6;
LABEL_28:
        v7 = accessibilityLocalizedString(accessibilityHint);

        accessibilityHint = v7;
        goto LABEL_29;
      }
    }

    if (!accessibilityHint)
    {
      v9.receiver = self;
      v9.super_class = TPNumberPadButtonAccessibility;
      accessibilityHint = [(TPNumberPadButtonAccessibility *)&v9 accessibilityHint];
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_29:

  return accessibilityHint;
}

uint64_t __51__TPNumberPadButtonAccessibility_accessibilityHint__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() localizedLettersForCharacter:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2A1C71028]();
}

- (id)accessibilityLabel
{
  v2 = [(TPNumberPadButtonAccessibility *)self safeValueForKey:@"character"];
  intValue = [v2 intValue];

  v4 = @"number.pad.star";
  switch(intValue)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
      v6 = AXFormatInteger();
      goto LABEL_7;
    case 9:
      goto LABEL_4;
    case 11:
      v4 = @"number.pad.octothorpe";
      goto LABEL_4;
    case 12:
      v4 = @"number.pad.delete";
LABEL_4:
      v5 = accessibilityLocalizedString(v4);
      break;
    default:
      v6 = 0;
LABEL_7:
      v5 = v6;
      v4 = v5;
      break;
  }

  v7 = v5;

  return v7;
}

@end