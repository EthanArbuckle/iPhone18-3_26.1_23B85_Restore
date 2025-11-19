@interface MeasureUIButtonAccessibility
- (BOOL)_axIsDeleteButton;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MeasureUIButtonAccessibility

- (BOOL)_axIsDeleteButton
{
  v2 = [(MeasureUIButtonAccessibility *)self accessibilityIdentification];
  v3 = [v2 isEqualToString:@"AXMeasureDeleteButton"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(MeasureUIButtonAccessibility *)self _axIsDeleteButton])
  {
    v3 = accessibilityLocalizedString(@"DELETE_BUTTON");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MeasureUIButtonAccessibility;
    v3 = [(MeasureUIButtonAccessibility *)&v5 accessibilityLabel];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = MeasureUIButtonAccessibility;
  v3 = [(MeasureUIButtonAccessibility *)&v5 accessibilityTraits];
  if ([(MeasureUIButtonAccessibility *)self _axIsDeleteButton])
  {
    return v3 & ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7FC8];
  }

  if ([(MeasureUIButtonAccessibility *)self axIsActuallySelected])
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

@end