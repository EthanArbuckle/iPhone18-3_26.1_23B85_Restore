@interface NavTrayStackedLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NavTrayStackedLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NavTrayStackedLabel" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NavTrayStackedLabel" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v3 setNumberStyle:1];
  v4 = [(NavTrayStackedLabelAccessibility *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"ETA"];

  if (v5)
  {
    v6 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
    v7 = [v6 accessibilityLabel];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7];
    }

    else
    {
      v8 = v7;
    }

    v13 = v8;
    [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888]];
    v14 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
    v15 = [v14 accessibilityLabel];
    goto LABEL_24;
  }

  v9 = [(NavTrayStackedLabelAccessibility *)self accessibilityIdentification];
  v10 = [v9 isEqualToString:@"RemainingTime"];

  if (!v10)
  {
    v16 = [(NavTrayStackedLabelAccessibility *)self accessibilityIdentification];
    v17 = [v16 isEqualToString:@"RemainingDistance"];

    if (v17)
    {
      v18 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
      v7 = [v18 accessibilityLabel];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v7 string];
      }

      else
      {
        v19 = v7;
      }

      v13 = v19;
      v27 = [v3 numberFromString:v19];
      [v27 doubleValue];
      v29 = v28;

      v30 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
      v31 = [v30 text];
      v14 = [v31 accessibilityIdentifier];

      if (v14)
      {
        v32 = MEMORY[0x29EDBA0F8];
        v33 = AXLocalizedString();
        v24 = [v32 localizedStringWithFormat:v33, v29];

        goto LABEL_25;
      }
    }

LABEL_23:
    v7 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
    v13 = [v7 accessibilityLabel];
    v14 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
    v15 = [v14 accessibilityLabel];
LABEL_24:
    v24 = __UIAXStringForVariables();

    goto LABEL_25;
  }

  v11 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
  v7 = [v11 accessibilityLabel];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 string];
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;
  v14 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@":-."];
  if ([v13 rangeOfCharacterFromSet:v14] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v13];
    [v24 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD8B8]];
LABEL_25:

    goto LABEL_26;
  }

  v20 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
  v21 = [v20 text];
  v22 = [v21 accessibilityIdentifier];

  v23 = [v3 numberFromString:v13];
  v24 = [v23 intValue];

  if (v22)
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = AXLocalizedString();
    v24 = [v25 localizedStringWithFormat:v26, v24];
  }

  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_26:

  return v24;
}

@end