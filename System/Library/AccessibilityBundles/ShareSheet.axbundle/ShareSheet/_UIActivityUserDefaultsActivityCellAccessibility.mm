@interface _UIActivityUserDefaultsActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unsigned)_accessibilitySlotID;
@end

@implementation _UIActivityUserDefaultsActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIActivityUserDefaultsActivityCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"_UIActivityUserDefaultsActivityCell" hasInstanceMethod:@"activityProxy" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIUserDefaultsActivityProxy" hasInstanceMethod:@"labelSlot" withFullSignature:{"@", 0}];
}

- (unsigned)_accessibilitySlotID
{
  v2 = [(_UIActivityUserDefaultsActivityCellAccessibility *)self safeValueForKey:@"activityProxy"];
  v3 = [v2 safeUnsignedIntForKey:@"labelSlot"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(_UIActivityUserDefaultsActivityCellAccessibility *)self _accessibilitySlotID])
  {
    v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v4 = accessibilityLocalizedString(@"sharing.activity");
    v5 = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[_UIActivityUserDefaultsActivityCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD9B8]];
  }

  else
  {
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    v7 = [v6 textLabel];
    v5 = [v7 text];
  }

  return v5;
}

@end