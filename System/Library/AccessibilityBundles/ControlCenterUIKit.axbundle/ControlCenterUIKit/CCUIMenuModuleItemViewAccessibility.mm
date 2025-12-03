@interface CCUIMenuModuleItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (unint64_t)accessibilityTraits;
@end

@implementation CCUIMenuModuleItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIMenuModuleItemView" hasInstanceVariable:@"_titleLabel" withType:"BSUIEmojiLabelView"];
  [validationsCopy validateClass:@"CCUIMenuModuleItemView" hasInstanceVariable:@"_subtitleLabel" withType:"BSUIEmojiLabelView"];
  [validationsCopy validateClass:@"CCUIMenuModuleItemView" hasProperty:@"menuItem" withType:"@"];
  [validationsCopy validateClass:@"CCUIMenuModuleItem" hasProperty:@"selected" customGetter:@"isSelected" customSetter:0 withType:"B"];
  [validationsCopy validateClass:@"CCUIMenuModuleItem" hasProperty:@"placeholder" customGetter:@"isPlaceholder" customSetter:0 withType:"B"];
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
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(CCUIMenuModuleItemViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
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
  accessibilityLabel = [(CCUIMenuModuleItemViewAccessibility *)self accessibilityLabel];
  accessibilityValue = [(CCUIMenuModuleItemViewAccessibility *)self accessibilityValue];
  v7 = [v3 stringWithFormat:@"[%@ label:%@ value:%@]", v4, accessibilityLabel, accessibilityValue];

  return v7;
}

@end