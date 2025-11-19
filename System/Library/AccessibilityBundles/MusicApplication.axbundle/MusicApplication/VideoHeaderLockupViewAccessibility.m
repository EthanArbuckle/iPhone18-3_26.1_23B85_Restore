@interface VideoHeaderLockupViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation VideoHeaderLockupViewAccessibility

- (id)accessibilityLabel
{
  v3 = accessibilityMusicLocalizedString(@"video.artwork");
  v6 = [(VideoHeaderLockupViewAccessibility *)self _accessibilityVideoLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(VideoHeaderLockupViewAccessibility *)self safeValueForKey:@"accessibilityProgressView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VideoHeaderLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VideoHeaderLockupViewAccessibility *)&v3 accessibilityTraits];
}

@end