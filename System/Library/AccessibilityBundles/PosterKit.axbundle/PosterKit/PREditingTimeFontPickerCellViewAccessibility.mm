@interface PREditingTimeFontPickerCellViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)axFontWeight:(id)weight;
@end

@implementation PREditingTimeFontPickerCellViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PREditingTimeFontPickerCellViewAccessibility *)self safeValueForKey:@"contentLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(PREditingTimeFontPickerCellViewAccessibility *)self safeValueForKey:@"contentLabel"];
  v4 = __UIAccessibilityCastAsClass();

  font = [v4 font];
  fontName = [font fontName];
  v7 = [fontName componentsSeparatedByString:@"-"];

  font2 = [v4 font];
  familyName = [font2 familyName];
  lastObject = [v7 lastObject];
  v13 = [(PREditingTimeFontPickerCellViewAccessibility *)self axFontWeight:lastObject];
  v11 = __UIAXStringForVariables();

  return v11;
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