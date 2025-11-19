@interface ActionCellHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
- (void)markupIconViewHost;
@end

@implementation ActionCellHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = ActionCellHeaderViewAccessibility;
  [(ActionCellHeaderViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(ActionCellHeaderViewAccessibility *)self markupIconViewHost];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ActionCellHeaderViewAccessibility;
  [(ActionCellHeaderViewAccessibility *)&v3 layoutSubviews];
  [(ActionCellHeaderViewAccessibility *)self markupIconViewHost];
}

- (void)markupIconViewHost
{
  v3 = [(ActionCellHeaderViewAccessibility *)self safeSwiftValueForKey:@"iconViewHost"];
  v2 = accessibilityLocalizedString(@"action.options");
  [v3 setAccessibilityLabel:v2];
}

@end