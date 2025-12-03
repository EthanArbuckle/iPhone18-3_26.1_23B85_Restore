@interface VideoHeaderLockupViewAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation VideoHeaderLockupViewAccessibility

- (id)accessibilityLabel
{
  v3 = accessibilityMusicLocalizedString(@"video.artwork");
  _accessibilityVideoLabel = [(VideoHeaderLockupViewAccessibility *)self _accessibilityVideoLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(VideoHeaderLockupViewAccessibility *)self safeValueForKey:@"accessibilityProgressView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VideoHeaderLockupViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VideoHeaderLockupViewAccessibility *)&v3 accessibilityTraits];
}

@end