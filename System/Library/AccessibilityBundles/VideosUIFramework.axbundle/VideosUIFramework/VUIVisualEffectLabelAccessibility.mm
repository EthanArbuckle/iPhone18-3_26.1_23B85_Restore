@interface VUIVisualEffectLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation VUIVisualEffectLabelAccessibility

- (id)accessibilityLabel
{
  v2 = [(VUIVisualEffectLabelAccessibility *)self safeValueForKey:@"label"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end