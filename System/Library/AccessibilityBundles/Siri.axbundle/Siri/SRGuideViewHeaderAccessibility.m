@interface SRGuideViewHeaderAccessibility
- (id)accessibilityLabel;
@end

@implementation SRGuideViewHeaderAccessibility

- (id)accessibilityLabel
{
  v2 = [(SRGuideViewHeaderAccessibility *)self safeValueForKey:@"_headerLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end