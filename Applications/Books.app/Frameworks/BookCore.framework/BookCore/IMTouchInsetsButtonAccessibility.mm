@interface IMTouchInsetsButtonAccessibility
- (CGRect)accessibilityFrame;
@end

@implementation IMTouchInsetsButtonAccessibility

- (CGRect)accessibilityFrame
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_2514D6;
  v22 = 0u;
  v23 = 0u;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5BB4C;
  v17[3] = &unk_2C7AE0;
  v17[4] = self;
  v17[5] = &v18;
  IMAXAccessibilityPerformSafeBlock(v17);
  [(IMTouchInsetsButtonAccessibility *)self bounds];
  v3 = v19[4];
  v4 = v19[5];
  v24.origin.x = v5 + v4;
  v24.origin.y = v6 + v3;
  v24.size.width = v7 - (v4 + v19[7]);
  v24.size.height = v8 - (v3 + v19[6]);
  v25 = UIAccessibilityConvertFrameToScreenCoordinates(v24, self);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  _Block_object_dispose(&v18, 8);
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end