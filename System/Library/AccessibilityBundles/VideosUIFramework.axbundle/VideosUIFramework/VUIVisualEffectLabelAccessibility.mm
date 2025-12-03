@interface VUIVisualEffectLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation VUIVisualEffectLabelAccessibility

- (id)accessibilityLabel
{
  v2 = [(VUIVisualEffectLabelAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end