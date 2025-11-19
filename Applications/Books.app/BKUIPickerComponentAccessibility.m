@interface BKUIPickerComponentAccessibility
- (id)accessibilityValue;
@end

@implementation BKUIPickerComponentAccessibility

- (id)accessibilityValue
{
  v3 = AXRequestingClient();
  v4 = [(BKUIPickerComponentAccessibility *)self bkaxAccessibilityValueOverride];

  if (!v4 || v3 == 7 || v3 == 2)
  {
    v7.receiver = self;
    v7.super_class = BKUIPickerComponentAccessibility;
    v5 = [(BKUIPickerComponentAccessibility *)&v7 accessibilityValue];
  }

  else
  {
    v5 = [(BKUIPickerComponentAccessibility *)self bkaxAccessibilityValueOverride];
  }

  return v5;
}

@end