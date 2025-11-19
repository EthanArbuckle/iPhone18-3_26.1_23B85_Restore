@interface CAMZoomButtonAccessibility
- (id)accessibilityPath;
@end

@implementation CAMZoomButtonAccessibility

- (id)accessibilityPath
{
  [(CAMZoomButtonAccessibility *)self accessibilityFrame];
  v2 = MEMORY[0x29EDC7948];

  return [v2 bezierPathWithRoundedRect:? cornerRadius:?];
}

@end