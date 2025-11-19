@interface UIActivityActionGroupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityAXAttributedLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilitySlotID;
@end

@implementation UIActivityActionGroupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIActivityActionGroupCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIActivityActionGroupCell" hasInstanceMethod:@"activityProxy" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIHostActivityProxy" hasInstanceMethod:@"labelSlotID" withFullSignature:{"I", 0}];
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
    v5 = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[UIActivityActionGroupCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD9B8]];
  }

  else
  {
    v6 = [(UIActivityActionGroupCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

@end