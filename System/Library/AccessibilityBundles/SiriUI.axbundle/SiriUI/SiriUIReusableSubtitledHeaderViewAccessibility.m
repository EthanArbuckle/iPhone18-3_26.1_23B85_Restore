@interface SiriUIReusableSubtitledHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriUIReusableSubtitledHeaderViewAccessibility

- (id)accessibilityLabel
{
  v7.receiver = self;
  v7.super_class = SiriUIReusableSubtitledHeaderViewAccessibility;
  v3 = [(SiriUIReusableSubtitledHeaderViewAccessibility *)&v7 accessibilityLabel];
  v6 = [(SiriUIReusableSubtitledHeaderViewAccessibility *)self safeValueForKey:@"subtitleText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end