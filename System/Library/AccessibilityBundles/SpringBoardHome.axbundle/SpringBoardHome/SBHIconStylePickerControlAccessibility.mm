@interface SBHIconStylePickerControlAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHIconStylePickerControlAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if ([v2 isSelected])
  {
    v3 = @"regular.icon.option";
  }

  else
  {
    v3 = @"large.icon.option";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBHIconStylePickerControlAccessibility;
  return [(SBHIconStylePickerControlAccessibility *)&v3 accessibilityTraits]& ~*MEMORY[0x29EDC7FC0];
}

@end