@interface CCUIMenuModuleItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUIMenuModuleItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIMenuModuleItemView" hasInstanceVariable:@"_titleLabel" withType:"BSUIEmojiLabelView"];
  [v3 validateClass:@"CCUIMenuModuleItemView" hasInstanceVariable:@"_subtitleLabel" withType:"BSUIEmojiLabelView"];
  [v3 validateClass:@"CCUIMenuModuleItemView" hasProperty:@"menuItem" withType:"@"];
  [v3 validateClass:@"CCUIMenuModuleItem" hasProperty:@"selected" customGetter:@"isSelected" customSetter:0 withType:"B"];
  [v3 validateClass:@"CCUIMenuModuleItem" hasProperty:@"placeholder" customGetter:@"isPlaceholder" customSetter:0 withType:"B"];
}

- (BOOL)isAccessibilityElement
{
  if ([(CCUIMenuModuleItemViewAccessibility *)self _accessibilityViewIsVisible])
  {
    v3 = [(CCUIMenuModuleItemViewAccessibility *)self safeValueForKey:@"menuItem"];
    v4 = [v3 safeBoolForKey:@"isPlaceholder"] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)accessibilityLabel
{
  v2 = [(CCUIMenuModuleItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(CCUIMenuModuleItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(CCUIMenuModuleItemViewAccessibility *)self safeValueForKey:@"menuItem"];
  v3 = [v2 safeBoolForKey:@"isSelected"];

  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | *MEMORY[0x29EDC7F70];
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v9.receiver = self;
  v9.super_class = CCUIMenuModuleItemViewAccessibility;
  v4 = [(CCUIMenuModuleItemViewAccessibility *)&v9 description];
  v5 = [(CCUIMenuModuleItemViewAccessibility *)self accessibilityLabel];
  v6 = [(CCUIMenuModuleItemViewAccessibility *)self accessibilityValue];
  v7 = [v3 stringWithFormat:@"[%@ label:%@ value:%@]", v4, v5, v6];

  return v7;
}

@end