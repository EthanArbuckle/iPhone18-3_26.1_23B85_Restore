@interface PHEmergencyDialerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)medicalIDButtonTapped:(id)a3;
@end

@implementation PHEmergencyDialerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHEmergencyDialerViewController" hasInstanceVariable:@"_dialerView" withType:"PHEmergencyHandsetDialerView"];
  [v3 validateClass:@"PHEmergencyHandsetDialerView" isKindOfClass:@"PHAbstractDialerView"];
  [v3 validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"callButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHEmergencyDialerViewController" hasInstanceMethod:@"medicalIDButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)medicalIDButtonTapped:(id)a3
{
  v4.receiver = self;
  v4.super_class = PHEmergencyDialerViewControllerAccessibility;
  [(PHEmergencyDialerViewControllerAccessibility *)&v4 medicalIDButtonTapped:a3];
  v3 = MEMORY[0x29EDC8008];
  [*MEMORY[0x29EDC8008] _accessibilitySetAllowsNotificationsDuringSuspension:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  [*v3 _accessibilitySetAllowsNotificationsDuringSuspension:0];
}

@end