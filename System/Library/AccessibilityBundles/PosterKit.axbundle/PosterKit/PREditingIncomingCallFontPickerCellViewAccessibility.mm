@interface PREditingIncomingCallFontPickerCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)axFontWeight:(id)weight;
@end

@implementation PREditingIncomingCallFontPickerCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingIncomingCallFontPickerCellView" isKindOfClass:@"PREditingFontPickerCellView"];
  [validationsCopy validateClass:@"PREditingFontPickerCellView" hasInstanceMethod:@"contentFont" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(PREditingIncomingCallFontPickerCellViewAccessibility *)self safeValueForKey:@"contentFont"];
  v4 = __UIAccessibilityCastAsClass();

  fontName = [v4 fontName];
  v6 = [fontName componentsSeparatedByString:@"-"];

  familyName = [v4 familyName];
  lastObject = [v6 lastObject];
  v11 = [(PREditingIncomingCallFontPickerCellViewAccessibility *)self axFontWeight:lastObject];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (id)axFontWeight:(id)weight
{
  weightCopy = weight;
  if ([weightCopy isEqualToString:@"Medium"])
  {
    v4 = @"time.font.medium";
LABEL_9:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_10;
  }

  if ([weightCopy isEqualToString:@"Semibold"])
  {
    v4 = @"time.font.bold";
    goto LABEL_9;
  }

  if ([weightCopy isEqualToString:@"Light"])
  {
    v4 = @"time.font.light";
    goto LABEL_9;
  }

  if ([weightCopy isEqualToString:@"Heavy"])
  {
    v4 = @"time.font.heavy";
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end