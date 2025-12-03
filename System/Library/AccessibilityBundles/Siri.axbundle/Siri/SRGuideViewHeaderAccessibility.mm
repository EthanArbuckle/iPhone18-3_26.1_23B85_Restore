@interface SRGuideViewHeaderAccessibility
- (id)accessibilityLabel;
@end

@implementation SRGuideViewHeaderAccessibility

- (id)accessibilityLabel
{
  v2 = [(SRGuideViewHeaderAccessibility *)self safeValueForKey:@"_headerLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end