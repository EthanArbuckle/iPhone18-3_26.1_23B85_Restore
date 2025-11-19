@interface MedicationsCategoryRoomTipViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MedicationsCategoryRoomTipViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = MedicationsCategoryRoomTipViewAccessibility;
  [(MedicationsCategoryRoomTipViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(MedicationsCategoryRoomTipViewAccessibility *)self safeUIViewForKey:@"dismissButton"];
  v4 = accessibilityLocalizedString(@"close");
  [v3 setAccessibilityLabel:v4];
}

@end