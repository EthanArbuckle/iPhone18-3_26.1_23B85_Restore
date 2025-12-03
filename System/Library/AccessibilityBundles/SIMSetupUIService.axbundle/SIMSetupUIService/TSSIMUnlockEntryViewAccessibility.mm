@interface TSSIMUnlockEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (TSSIMUnlockEntryViewAccessibility)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureDetailLabelText;
@end

@implementation TSSIMUnlockEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TSSIMUnlockEntryView" hasInstanceVariable:@"_entryField" withType:"UITextField"];
  [validationsCopy validateClass:@"TSSIMUnlockEntryView" hasInstanceVariable:@"_detailLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"TSSIMUnlockEntryView" hasInstanceMethod:@"initWithActionType:actionSubtype:" withFullSignature:{"@", "q", "q", 0}];
  [validationsCopy validateClass:@"TSSIMUnlockEntryView" hasInstanceMethod:@"_configureDetailLabelText" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = TSSIMUnlockEntryViewAccessibility;
  [(TSSIMUnlockEntryViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(TSSIMUnlockEntryViewAccessibility *)self safeValueForKey:@"_entryField"];
  v4 = accessibilityLocalizedString(@"enter.sim.pin");
  [v3 setAccessibilityLabel:v4];
}

- (TSSIMUnlockEntryViewAccessibility)initWithActionType:(int64_t)type actionSubtype:(int64_t)subtype
{
  v7.receiver = self;
  v7.super_class = TSSIMUnlockEntryViewAccessibility;
  v4 = [(TSSIMUnlockEntryViewAccessibility *)&v7 initWithActionType:type actionSubtype:subtype];
  v5 = v4;
  if (v4)
  {
    [(TSSIMUnlockEntryViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  }

  return v5;
}

- (void)_configureDetailLabelText
{
  v6.receiver = self;
  v6.super_class = TSSIMUnlockEntryViewAccessibility;
  [(TSSIMUnlockEntryViewAccessibility *)&v6 _configureDetailLabelText];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = [(TSSIMUnlockEntryViewAccessibility *)self safeValueForKey:@"_detailLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  UIAccessibilityPostNotification(v3, accessibilityLabel);
}

@end