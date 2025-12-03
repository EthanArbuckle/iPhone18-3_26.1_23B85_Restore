@interface WFTableViewFooterLinkViewAccessibility
- (id)_accessibilityInternalTextLinks;
- (id)_axFooterViewTextView;
- (id)accessibilityLabel;
@end

@implementation WFTableViewFooterLinkViewAccessibility

- (id)accessibilityLabel
{
  _axFooterViewTextView = [(WFTableViewFooterLinkViewAccessibility *)self _axFooterViewTextView];
  accessibilityValue = [_axFooterViewTextView accessibilityValue];

  return accessibilityValue;
}

- (id)_accessibilityInternalTextLinks
{
  _axFooterViewTextView = [(WFTableViewFooterLinkViewAccessibility *)self _axFooterViewTextView];
  _accessibilityInternalTextLinks = [_axFooterViewTextView _accessibilityInternalTextLinks];

  return _accessibilityInternalTextLinks;
}

- (id)_axFooterViewTextView
{
  v3 = objc_opt_class();

  return [(WFTableViewFooterLinkViewAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end