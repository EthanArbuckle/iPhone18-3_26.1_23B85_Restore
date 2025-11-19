@interface MRUHapticViewAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MRUHapticViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MRUHapticViewAccessibility;
  return *MEMORY[0x29EDC7FE8] | [(MRUHapticViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v2 = [MEMORY[0x29EDBDFA0] sharedInstance];
  if ([v2 hapticMusicActive])
  {
    v3 = @"music.haptics.active.value";
  }

  else
  {
    v3 = @"music.haptics.inactive.value";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

@end