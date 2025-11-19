@interface BCSCoachingMessageViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation BCSCoachingMessageViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(BCSCoachingMessageViewAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BCSCoachingMessageViewAccessibility;
  return *MEMORY[0x29EDC7FD0] | [(BCSCoachingMessageViewAccessibility *)&v3 accessibilityTraits];
}

@end