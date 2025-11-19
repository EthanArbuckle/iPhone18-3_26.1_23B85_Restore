@interface _UIActivityGroupActivityCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilitySlotID;
@end

@implementation _UIActivityGroupActivityCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIActivityGroupActivityCell" isKindOfClass:@"UICollectionReusableView"];
  [v3 validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UICollectionReusableView" hasInstanceMethod:@"reuseIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"activityProxy" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIHostActivityProxy" hasInstanceMethod:@"labelSlotID" withFullSignature:{"I", 0}];
}

- (unsigned)_accessibilitySlotID
{
  v2 = [(_UIActivityGroupActivityCellAccessibility *)self safeValueForKey:@"activityProxy"];
  v3 = [v2 safeUnsignedIntForKey:@"labelSlotID"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(_UIActivityGroupActivityCellAccessibility *)self _accessibilitySlotID])
  {
    v3 = objc_alloc(MEMORY[0x29EDBD7E8]);
    v4 = accessibilityLocalizedString(@"sharing.activity");
    v5 = [v3 initWithString:v4];

    v6 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[_UIActivityGroupActivityCellAccessibility _accessibilitySlotID](self, "_accessibilitySlotID")}];
    [v5 setAttribute:v6 forKey:*MEMORY[0x29EDBD9B8]];
  }

  else
  {
    v6 = [(_UIActivityGroupActivityCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = _UIActivityGroupActivityCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(_UIActivityGroupActivityCellAccessibility *)&v3 accessibilityTraits];
}

@end