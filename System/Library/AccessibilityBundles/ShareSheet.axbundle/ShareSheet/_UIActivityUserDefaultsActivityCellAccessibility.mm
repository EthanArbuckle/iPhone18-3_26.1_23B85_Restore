@interface _UIActivityUserDefaultsActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unsigned)_accessibilitySlotID;
@end

@implementation _UIActivityUserDefaultsActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIActivityUserDefaultsActivityCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"_UIActivityUserDefaultsActivityCell" hasInstanceMethod:@"activityProxy" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIUserDefaultsActivityProxy" hasInstanceMethod:@"labelSlot" withFullSignature:{"@", 0}];
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
    text = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[_UIActivityUserDefaultsActivityCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [text setAttribute:v6 forKey:*MEMORY[0x29EDBD9B8]];
  }

  else
  {
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    textLabel = [v6 textLabel];
    text = [textLabel text];
  }

  return text;
}

@end