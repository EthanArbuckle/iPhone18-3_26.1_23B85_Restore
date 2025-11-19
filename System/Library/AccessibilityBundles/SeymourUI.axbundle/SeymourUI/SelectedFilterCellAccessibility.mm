@interface SelectedFilterCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SelectedFilterCellAccessibility

- (id)accessibilityLabel
{
  v3 = accessibilityLocalizedString(@"workout.filter.remove");
  v6 = [(SelectedFilterCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SelectedFilterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SelectedFilterCellAccessibility *)&v3 accessibilityTraits];
}

@end