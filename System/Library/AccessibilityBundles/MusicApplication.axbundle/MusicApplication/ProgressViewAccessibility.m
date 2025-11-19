@interface ProgressViewAccessibility
- (id)accessibilityValue;
@end

@implementation ProgressViewAccessibility

- (id)accessibilityValue
{
  [(ProgressViewAccessibility *)self safeCGFloatForKey:@"progress"];
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityMusicLocalizedString(@"playback.percentage");
  v4 = AXFormatFloatWithPercentage();
  v5 = [v2 stringWithFormat:v3, v4];

  return v5;
}

@end