@interface PHEmergencyDialerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)medicalIDButtonTapped:(id)tapped;
@end

@implementation PHEmergencyDialerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PHEmergencyDialerViewController" hasInstanceVariable:@"_dialerView" withType:"PHEmergencyHandsetDialerView"];
  [validationsCopy validateClass:@"PHEmergencyHandsetDialerView" isKindOfClass:@"PHAbstractDialerView"];
  [validationsCopy validateClass:@"PHAbstractDialerView" hasInstanceMethod:@"callButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PHEmergencyDialerViewController" hasInstanceMethod:@"medicalIDButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)medicalIDButtonTapped:(id)tapped
{
  v4.receiver = self;
  v4.super_class = PHEmergencyDialerViewControllerAccessibility;
  [(PHEmergencyDialerViewControllerAccessibility *)&v4 medicalIDButtonTapped:tapped];
  v3 = MEMORY[0x29EDC8008];
  [*MEMORY[0x29EDC8008] _accessibilitySetAllowsNotificationsDuringSuspension:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  [*v3 _accessibilitySetAllowsNotificationsDuringSuspension:0];
}

@end