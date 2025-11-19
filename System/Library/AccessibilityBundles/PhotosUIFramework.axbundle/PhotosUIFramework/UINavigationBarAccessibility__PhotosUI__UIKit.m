@interface UINavigationBarAccessibility__PhotosUI__UIKit
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation UINavigationBarAccessibility__PhotosUI__UIKit

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  UIAccessibilityPointForPoint();
  v9 = v8;
  v11 = v10;
  [(UINavigationBarAccessibility__PhotosUI__UIKit *)self accessibilityFrame];
  v16.x = v9;
  v16.y = v11;
  if (CGRectContainsPoint(v17, v16))
  {
    v14.receiver = self;
    v14.super_class = UINavigationBarAccessibility__PhotosUI__UIKit;
    v12 = [(UINavigationBarAccessibility__PhotosUI__UIKit *)&v14 _accessibilityHitTest:v7 withEvent:x, y];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end