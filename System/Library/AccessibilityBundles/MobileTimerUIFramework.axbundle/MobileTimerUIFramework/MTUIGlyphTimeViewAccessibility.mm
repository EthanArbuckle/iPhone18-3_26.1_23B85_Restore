@interface MTUIGlyphTimeViewAccessibility
- (id)accessibilityValue;
@end

@implementation MTUIGlyphTimeViewAccessibility

- (id)accessibilityValue
{
  v2 = [(MTUIGlyphTimeViewAccessibility *)self safeUIViewForKey:@"timeLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end