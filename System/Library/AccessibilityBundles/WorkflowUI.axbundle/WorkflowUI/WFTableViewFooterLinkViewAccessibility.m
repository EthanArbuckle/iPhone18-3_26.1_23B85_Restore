@interface WFTableViewFooterLinkViewAccessibility
- (id)_accessibilityInternalTextLinks;
- (id)_axFooterViewTextView;
- (id)accessibilityLabel;
@end

@implementation WFTableViewFooterLinkViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(WFTableViewFooterLinkViewAccessibility *)self _axFooterViewTextView];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)_accessibilityInternalTextLinks
{
  v2 = [(WFTableViewFooterLinkViewAccessibility *)self _axFooterViewTextView];
  v3 = [v2 _accessibilityInternalTextLinks];

  return v3;
}

- (id)_axFooterViewTextView
{
  v3 = objc_opt_class();

  return [(WFTableViewFooterLinkViewAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end