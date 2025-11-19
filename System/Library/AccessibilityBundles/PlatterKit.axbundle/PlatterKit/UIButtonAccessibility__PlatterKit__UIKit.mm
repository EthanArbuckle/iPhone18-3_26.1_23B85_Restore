@interface UIButtonAccessibility__PlatterKit__UIKit
- (CGRect)accessibilityFrame;
@end

@implementation UIButtonAccessibility__PlatterKit__UIKit

- (CGRect)accessibilityFrame
{
  v28.receiver = self;
  v28.super_class = UIButtonAccessibility__PlatterKit__UIKit;
  [(UIButtonAccessibility__PlatterKit__UIKit *)&v28 accessibilityFrame];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = self;
  v12 = [(UIButtonAccessibility__PlatterKit__UIKit *)v11 accessibilityIdentification];
  v13 = [v12 isEqualToString:@"HeaderAppIcon"];

  if (v13)
  {
    v14 = [(UIButtonAccessibility__PlatterKit__UIKit *)v11 superview];
    v15 = v14;
    if (v14)
    {
      [(UIView *)v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [(UIButtonAccessibility__PlatterKit__UIKit *)v11 frame];
      v33.origin.x = v17;
      v33.origin.y = v19;
      v33.size.width = v21;
      v33.size.height = v23;
      v30 = CGRectIntersection(v29, v33);
      v31 = UIAccessibilityConvertFrameToScreenCoordinates(v30, v15);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
    }
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

@end