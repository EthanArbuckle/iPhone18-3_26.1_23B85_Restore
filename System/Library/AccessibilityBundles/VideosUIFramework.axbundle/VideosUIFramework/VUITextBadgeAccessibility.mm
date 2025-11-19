@interface VUITextBadgeAccessibility
- (id)accessibilityAttributedLabel;
@end

@implementation VUITextBadgeAccessibility

- (id)accessibilityAttributedLabel
{
  objc_opt_class();
  v3 = [(VUITextBadgeAccessibility *)self safeValueForKey:@"attributedTitle"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = accessibilityLivePronunciation(v4);

  return v5;
}

@end