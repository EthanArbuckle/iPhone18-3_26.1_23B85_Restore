@interface PGBackdropViewAccessibility
- (CGRect)_accessibilityVisibleFrame;
@end

@implementation PGBackdropViewAccessibility

- (CGRect)_accessibilityVisibleFrame
{
  *&rect.origin.y = self;
  *&rect.size.width = PGBackdropViewAccessibility;
  [(CGFloat *)&rect.origin.y _accessibilityVisibleFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  Height = v8;
  AXDeviceGetMainScreenBounds();
  rect.origin.x = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v25.origin.x = v3;
  v25.origin.y = v5;
  v25.size.width = v7;
  v25.size.height = Height;
  if (CGRectGetMinX(v25) >= 0.0)
  {
    v27.origin.x = v3;
    v27.origin.y = v5;
    v27.size.width = v7;
    v27.size.height = Height;
    MaxX = CGRectGetMaxX(v27);
    v28.origin.x = rect.origin.x;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    if (MaxX <= CGRectGetMaxX(v28))
    {
      MinX = v5;
      v18 = v3;
      goto LABEL_7;
    }

    v29.origin.x = rect.origin.x;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    v18 = CGRectGetMaxX(v29) + -25.0;
    v30.origin.x = v3;
    v30.origin.y = v5;
    v30.size.width = v7;
    v30.size.height = Height;
    MinX = CGRectGetMinX(v30);
  }

  else
  {
    v26.origin.x = v3;
    v26.origin.y = v5;
    v26.size.width = v7;
    v26.size.height = Height;
    MinX = CGRectGetMinY(v26);
    v18 = 0.0;
  }

  v31.origin.x = v3;
  v31.origin.y = v5;
  v31.size.width = v7;
  v31.size.height = Height;
  Height = CGRectGetHeight(v31);
  v7 = 25.0;
LABEL_7:
  v20 = v18;
  v21 = MinX;
  v22 = v7;
  v23 = Height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end