@interface PHAudioControlsButtonAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation PHAudioControlsButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = PHAudioControlsButtonAccessibility;
  accessibilityTraits = [(PHAudioControlsButtonAccessibility *)&v7 accessibilityTraits];
  v4 = [(PHAudioControlsButtonAccessibility *)self safeUnsignedIntegerForKey:@"controlType"];
  if (v4 == 14 || v4 == 11)
  {
    accessibilityTraits &= ~*MEMORY[0x29EDC7FC0];
  }

  return accessibilityTraits;
}

@end