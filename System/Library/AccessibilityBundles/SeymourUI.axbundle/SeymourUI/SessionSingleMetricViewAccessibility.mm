@interface SessionSingleMetricViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SessionSingleMetricViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SessionSingleMetricViewAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  v3 = [v2 stringByReplacingOccurrencesOfString:@" withString:{", &stru_2A22D9E70}];
  localizedLowercaseString = [v3 localizedLowercaseString];

  return localizedLowercaseString;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SessionSingleMetricViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(SessionSingleMetricViewAccessibility *)&v3 accessibilityTraits];
}

@end