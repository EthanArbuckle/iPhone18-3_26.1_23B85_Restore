@interface VUITextBadgeViewAccessibility
- (id)accessibilityAttributedLabel;
@end

@implementation VUITextBadgeViewAccessibility

- (id)accessibilityAttributedLabel
{
  objc_opt_class();
  v3 = [(VUITextBadgeViewAccessibility *)self safeValueForKey:@"attributedTitle"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLivePronunciation(v4);

  return v5;
}

@end