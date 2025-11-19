@interface MTACircleButtonAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityPath;
@end

@implementation MTACircleButtonAccessibility

- (id)accessibilityPath
{
  [(MTACircleButtonAccessibility *)self accessibilityFrame];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v6 = CGRectGetWidth(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v7 = CGRectGetHeight(v15);
  if (v6 >= v7)
  {
    v7 = v6;
  }

  v8 = v7 * 0.5;
  v9 = MEMORY[0x29EDC7948];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);

  return [v9 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v8 clockwise:{0.0, 6.28318531}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(MTACircleButtonAccessibility *)self safeValueForKey:@"alpha"];
  [v2 floatValue];
  v4 = v3 == 1.0;

  return v4;
}

@end