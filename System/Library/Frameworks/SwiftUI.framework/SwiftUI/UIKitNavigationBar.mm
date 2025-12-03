@interface UIKitNavigationBar
- (_TtC7SwiftUI18UIKitNavigationBar)initWithCoder:(id)coder;
- (_TtC7SwiftUI18UIKitNavigationBar)initWithFrame:(CGRect)frame;
@end

@implementation UIKitNavigationBar

- (_TtC7SwiftUI18UIKitNavigationBar)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UIKitNavigationBar *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI18UIKitNavigationBar)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(UIKitNavigationBar *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end