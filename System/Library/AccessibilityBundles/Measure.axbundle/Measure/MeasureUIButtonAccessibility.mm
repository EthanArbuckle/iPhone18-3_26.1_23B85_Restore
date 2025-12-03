@interface MeasureUIButtonAccessibility
- (BOOL)_axIsDeleteButton;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MeasureUIButtonAccessibility

- (BOOL)_axIsDeleteButton
{
  accessibilityIdentification = [(MeasureUIButtonAccessibility *)self accessibilityIdentification];
  v3 = [accessibilityIdentification isEqualToString:@"AXMeasureDeleteButton"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(MeasureUIButtonAccessibility *)self _axIsDeleteButton])
  {
    accessibilityLabel = accessibilityLocalizedString(@"DELETE_BUTTON");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MeasureUIButtonAccessibility;
    accessibilityLabel = [(MeasureUIButtonAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = MeasureUIButtonAccessibility;
  accessibilityTraits = [(MeasureUIButtonAccessibility *)&v5 accessibilityTraits];
  if ([(MeasureUIButtonAccessibility *)self _axIsDeleteButton])
  {
    return accessibilityTraits & ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7FC8];
  }

  if ([(MeasureUIButtonAccessibility *)self axIsActuallySelected])
  {
    accessibilityTraits |= *MEMORY[0x29EDC7FC0];
  }

  return accessibilityTraits;
}

@end