@interface LaunchMusicCellViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation LaunchMusicCellViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(LaunchMusicCellViewAccessibility *)self safeValueForKey:@"accessibilityLaunchMusicLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = LaunchMusicCellViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(LaunchMusicCellViewAccessibility *)&v3 accessibilityTraits];
}

@end