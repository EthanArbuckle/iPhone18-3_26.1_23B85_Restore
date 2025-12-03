@interface UIActivityActionGroupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityAXAttributedLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilitySlotID;
@end

@implementation UIActivityActionGroupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIActivityActionGroupCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIActivityActionGroupCell" hasInstanceMethod:@"activityProxy" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIHostActivityProxy" hasInstanceMethod:@"labelSlotID" withFullSignature:{"I", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIActivityActionGroupCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(UIActivityActionGroupCellAccessibility *)&v3 accessibilityTraits];
}

- (unsigned)_accessibilitySlotID
{
  v2 = [(UIActivityActionGroupCellAccessibility *)self safeValueForKey:@"activityProxy"];
  v3 = [v2 safeUnsignedIntForKey:@"labelSlotID"];

  return v3;
}

- (id)_accessibilityAXAttributedLabel
{
  if ([(UIActivityActionGroupCellAccessibility *)self _accessibilitySlotID])
  {
    v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v4 = accessibilityLocalizedString(@"sharing.activity");
    accessibilityLabel = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[UIActivityActionGroupCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [accessibilityLabel setAttribute:v6 forKey:*MEMORY[0x29EDBD9B8]];
  }

  else
  {
    v6 = [(UIActivityActionGroupCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
    accessibilityLabel = [v6 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end