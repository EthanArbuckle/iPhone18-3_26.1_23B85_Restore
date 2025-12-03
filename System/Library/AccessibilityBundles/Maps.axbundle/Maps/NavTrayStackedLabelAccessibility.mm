@interface NavTrayStackedLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NavTrayStackedLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavTrayStackedLabel" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NavTrayStackedLabel" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v3 setNumberStyle:1];
  accessibilityIdentification = [(NavTrayStackedLabelAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"ETA"];

  if (v5)
  {
    v6 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
    accessibilityLabel = [v6 accessibilityLabel];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];
    }

    else
    {
      v8 = accessibilityLabel;
    }

    v7AccessibilityLabel = v8;
    [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888]];
    accessibilityIdentifier = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
    accessibilityLabel2 = [accessibilityIdentifier accessibilityLabel];
    goto LABEL_24;
  }

  accessibilityIdentification2 = [(NavTrayStackedLabelAccessibility *)self accessibilityIdentification];
  v10 = [accessibilityIdentification2 isEqualToString:@"RemainingTime"];

  if (!v10)
  {
    accessibilityIdentification3 = [(NavTrayStackedLabelAccessibility *)self accessibilityIdentification];
    v17 = [accessibilityIdentification3 isEqualToString:@"RemainingDistance"];

    if (v17)
    {
      v18 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
      accessibilityLabel = [v18 accessibilityLabel];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        string = [accessibilityLabel string];
      }

      else
      {
        string = accessibilityLabel;
      }

      v7AccessibilityLabel = string;
      v27 = [v3 numberFromString:string];
      [v27 doubleValue];
      v29 = v28;

      v30 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
      text = [v30 text];
      accessibilityIdentifier = [text accessibilityIdentifier];

      if (accessibilityIdentifier)
      {
        v32 = MEMORY[0x29EDBA0F8];
        v33 = AXLocalizedString();
        intValue = [v32 localizedStringWithFormat:v33, v29];

        goto LABEL_25;
      }
    }

LABEL_23:
    accessibilityLabel = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
    v7AccessibilityLabel = [accessibilityLabel accessibilityLabel];
    accessibilityIdentifier = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
    accessibilityLabel2 = [accessibilityIdentifier accessibilityLabel];
LABEL_24:
    intValue = __UIAXStringForVariables();

    goto LABEL_25;
  }

  v11 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"topLabel"];
  accessibilityLabel = [v11 accessibilityLabel];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string2 = [accessibilityLabel string];
  }

  else
  {
    string2 = accessibilityLabel;
  }

  v7AccessibilityLabel = string2;
  accessibilityIdentifier = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@":-."];
  if ([v7AccessibilityLabel rangeOfCharacterFromSet:accessibilityIdentifier] != 0x7FFFFFFFFFFFFFFFLL)
  {
    intValue = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v7AccessibilityLabel];
    [intValue setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD8B8]];
LABEL_25:

    goto LABEL_26;
  }

  v20 = [(NavTrayStackedLabelAccessibility *)self safeValueForKey:@"bottomLabel"];
  text2 = [v20 text];
  accessibilityIdentifier2 = [text2 accessibilityIdentifier];

  v23 = [v3 numberFromString:v7AccessibilityLabel];
  intValue = [v23 intValue];

  if (accessibilityIdentifier2)
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = AXLocalizedString();
    intValue = [v25 localizedStringWithFormat:v26, intValue];
  }

  if (!accessibilityIdentifier2)
  {
    goto LABEL_23;
  }

LABEL_26:

  return intValue;
}

@end