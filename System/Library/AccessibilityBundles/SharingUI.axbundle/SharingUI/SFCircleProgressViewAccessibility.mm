@interface SFCircleProgressViewAccessibility
- (id)accessibilityPath;
- (id)accessibilityValue;
@end

@implementation SFCircleProgressViewAccessibility

- (id)accessibilityPath
{
  v3 = MEMORY[0x29EDC7948];
  [(SFCircleProgressViewAccessibility *)self bounds];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  [(SFCircleProgressViewAccessibility *)self bounds];
  v9 = [v3 bezierPathWithArcCenter:1 radius:v5 startAngle:v7 endAngle:v8 * 0.5 clockwise:{0.0, 360.0}];
  v10 = UIAccessibilityConvertPathFunction();

  return v10;
}

- (id)accessibilityValue
{
  [(SFCircleProgressViewAccessibility *)self safeFloatForKey:@"progress"];

  return MEMORY[0x2A1C5E4D0](0);
}

@end