@interface MTUIGlyphTimeViewAccessibility
- (id)accessibilityValue;
@end

@implementation MTUIGlyphTimeViewAccessibility

- (id)accessibilityValue
{
  v2 = [(MTUIGlyphTimeViewAccessibility *)self safeUIViewForKey:@"timeLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end