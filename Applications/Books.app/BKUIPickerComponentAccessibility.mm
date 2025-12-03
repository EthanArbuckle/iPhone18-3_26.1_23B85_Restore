@interface BKUIPickerComponentAccessibility
- (id)accessibilityValue;
@end

@implementation BKUIPickerComponentAccessibility

- (id)accessibilityValue
{
  v3 = AXRequestingClient();
  bkaxAccessibilityValueOverride = [(BKUIPickerComponentAccessibility *)self bkaxAccessibilityValueOverride];

  if (!bkaxAccessibilityValueOverride || v3 == 7 || v3 == 2)
  {
    v7.receiver = self;
    v7.super_class = BKUIPickerComponentAccessibility;
    accessibilityValue = [(BKUIPickerComponentAccessibility *)&v7 accessibilityValue];
  }

  else
  {
    accessibilityValue = [(BKUIPickerComponentAccessibility *)self bkaxAccessibilityValueOverride];
  }

  return accessibilityValue;
}

@end