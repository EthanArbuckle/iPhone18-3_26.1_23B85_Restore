@interface ArtworkWithPlaybackStatusViewAccessibility
- (id)accessibilityValue;
@end

@implementation ArtworkWithPlaybackStatusViewAccessibility

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"playback.progress");
  [(ArtworkWithPlaybackStatusViewAccessibility *)self safeFloatForKey:@"accessibilityProgress"];
  v5 = AXFormatFloatWithPercentage();
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

@end