@interface PREditingTimeFontPickerCellViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)axFontWeight:(id)a3;
@end

@implementation PREditingTimeFontPickerCellViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(PREditingTimeFontPickerCellViewAccessibility *)self safeValueForKey:@"contentLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(PREditingTimeFontPickerCellViewAccessibility *)self safeValueForKey:@"contentLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 font];
  v6 = [v5 fontName];
  v7 = [v6 componentsSeparatedByString:@"-"];

  v8 = [v4 font];
  v9 = [v8 familyName];
  v10 = [v7 lastObject];
  v13 = [(PREditingTimeFontPickerCellViewAccessibility *)self axFontWeight:v10];
  v11 = __UIAXStringForVariables();

  return v11;
}

- (id)axFontWeight:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Medium"])
  {
    v4 = @"time.font.medium";
LABEL_9:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"Semibold"])
  {
    v4 = @"time.font.bold";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"Light"])
  {
    v4 = @"time.font.light";
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"Heavy"])
  {
    v4 = @"time.font.heavy";
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

@end