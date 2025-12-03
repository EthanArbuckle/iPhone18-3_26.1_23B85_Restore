@interface AKFontSizePickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation AKFontSizePickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKFontSizePicker" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKFontSizePicker" hasInstanceVariable:@"_value" withType:"d"];
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v6.receiver = self;
  v6.super_class = AKFontSizePickerAccessibility;
  isAccessibilityElement = [(AKFontSizePickerAccessibility *)&v6 isAccessibilityElement];
  v4 = [(AKFontSizePickerAccessibility *)selfCopy safeValueForKey:@"slider"];
  LOBYTE(selfCopy) = v4 != 0;

  return (selfCopy | isAccessibilityElement) & 1;
}

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = AKFontSizePickerAccessibility;
  accessibilityLabel = [(AKFontSizePickerAccessibility *)&v7 accessibilityLabel];
  v4 = [(AKFontSizePickerAccessibility *)self safeValueForKey:@"slider"];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"text.size");

    accessibilityLabel = v5;
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = AKFontSizePickerAccessibility;
  accessibilityValue = [(AKFontSizePickerAccessibility *)&v11 accessibilityValue];
  v4 = [(AKFontSizePickerAccessibility *)self safeValueForKey:@"slider"];

  if (v4)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"stroke.fontsize.value");
    v7 = MEMORY[0x29EDBA070];
    [(AKFontSizePickerAccessibility *)self safeCGFloatForKey:@"_value"];
    v8 = [v7 numberWithDouble:?];
    v9 = [v5 stringWithFormat:v6, v8];

    accessibilityValue = v9;
  }

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AKFontSizePickerAccessibility;
  accessibilityTraits = [(AKFontSizePickerAccessibility *)&v7 accessibilityTraits];
  v4 = [(AKFontSizePickerAccessibility *)self safeValueForKey:@"slider"];

  v5 = *MEMORY[0x29EDC7F60];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)accessibilityDecrement
{
  v2 = [(AKFontSizePickerAccessibility *)self safeValueForKey:@"slider"];
  [v2 accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  v2 = [(AKFontSizePickerAccessibility *)self safeValueForKey:@"slider"];
  [v2 accessibilityIncrement];
}

@end