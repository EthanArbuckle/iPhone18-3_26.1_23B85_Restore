@interface PHAbstractDialerViewAccessibility
- (PHAbstractDialerViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PHAbstractDialerViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PHAbstractDialerViewAccessibility;
  [(PHAbstractDialerViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PHAbstractDialerViewAccessibility *)self safeValueForKey:@"_addContactButton"];
  v4 = accessibilityLocalizedString(@"add.number.text");
  [v3 setAccessibilityLabel:v4];

  v5 = [(PHAbstractDialerViewAccessibility *)self safeValueForKey:@"_deleteButton"];
  v6 = accessibilityLocalizedString(@"delete.text");
  [v5 setAccessibilityLabel:v6];

  v7 = [(PHAbstractDialerViewAccessibility *)self safeValueForKey:@"_deleteButton"];
  [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  v8 = [(PHAbstractDialerViewAccessibility *)self safeValueForKey:@"_deleteButton"];
  [v8 setAccessibilityIdentifier:@"DeleteButton"];
}

- (PHAbstractDialerViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PHAbstractDialerViewAccessibility;
  v3 = [(PHAbstractDialerViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PHAbstractDialerViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end