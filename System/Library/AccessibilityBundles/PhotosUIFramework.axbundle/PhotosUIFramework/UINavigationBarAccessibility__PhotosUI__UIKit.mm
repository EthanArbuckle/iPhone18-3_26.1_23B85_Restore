@interface UINavigationBarAccessibility__PhotosUI__UIKit
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation UINavigationBarAccessibility__PhotosUI__UIKit

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
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
    v12 = [(UINavigationBarAccessibility__PhotosUI__UIKit *)&v14 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end