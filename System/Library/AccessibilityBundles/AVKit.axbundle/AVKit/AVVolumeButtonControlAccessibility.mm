@interface AVVolumeButtonControlAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation AVVolumeButtonControlAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AVVolumeButtonControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(AVVolumeButtonControlAccessibility *)&v3 accessibilityTraits];
}

@end