@interface PINEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)_updateLabels;
@end

@implementation PINEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PINEntryView" hasInstanceVariable:@"_text" withType:"NSMutableString"];
  [v3 validateClass:@"PINEntryView" hasInstanceVariable:@"_digits" withType:"NSArray"];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(PINEntryViewAccessibility *)self safeValueForKey:@"_text"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 length];
  v5 = v4;
  v6 = 0;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(PINEntryViewAccessibility *)self safeValueForKey:@"_text"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [(PINEntryViewAccessibility *)self safeValueForKey:@"_digits"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 count];
  v8 = v7 - [v4 length];

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"pin.values");
  v11 = [v9 localizedStringWithFormat:v10, v8];

  v12 = accessibilityLocalizedString(@"pin.code");
  v13 = __UIAXStringForVariables();

  return v13;
}

- (id)accessibilityValue
{
  v2 = [(PINEntryViewAccessibility *)self safeValueForKey:@"_text"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2A22E4FC8];

  return v4;
}

- (void)_updateLabels
{
  v7.receiver = self;
  v7.super_class = PINEntryViewAccessibility;
  [(PINEntryViewAccessibility *)&v7 _updateLabels];
  v3 = [(PINEntryViewAccessibility *)self _accessibilityValueForKey:@"AXLastSentValue"];
  v4 = [(PINEntryViewAccessibility *)self safeValueForKey:@"_text"];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75C8], 0);
    v6 = [(PINEntryViewAccessibility *)self safeValueForKey:@"_text"];
    [(PINEntryViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:@"AXLastSentValue"];
  }
}

@end