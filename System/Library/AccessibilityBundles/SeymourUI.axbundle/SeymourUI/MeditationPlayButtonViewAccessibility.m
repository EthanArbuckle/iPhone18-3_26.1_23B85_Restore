@interface MeditationPlayButtonViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MeditationPlayButtonViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MeditationPlayButtonViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MeditationPlayButtonViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FC8];
}

@end