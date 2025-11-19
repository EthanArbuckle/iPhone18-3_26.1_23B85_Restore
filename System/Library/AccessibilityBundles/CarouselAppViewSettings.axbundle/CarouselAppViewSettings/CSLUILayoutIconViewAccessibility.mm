@interface CSLUILayoutIconViewAccessibility
- (id)accessibilityPath;
@end

@implementation CSLUILayoutIconViewAccessibility

- (id)accessibilityPath
{
  v3 = [(CSLUILayoutIconViewAccessibility *)self safeValueForKey:@"bounds"];
  [v3 rectValue];

  v4 = MEMORY[0x29EDC7948];
  AX_CGRectGetCenter();
  v5 = [v4 bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  v6 = UIAccessibilityConvertPathToScreenCoordinates(v5, self);

  return v6;
}

@end