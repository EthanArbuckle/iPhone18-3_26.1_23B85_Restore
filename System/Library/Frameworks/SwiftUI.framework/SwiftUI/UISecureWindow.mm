@interface UISecureWindow
- (_TtC7SwiftUI14UISecureWindow)initWithCoder:(id)coder;
- (_TtC7SwiftUI14UISecureWindow)initWithFrame:(CGRect)frame;
- (_TtC7SwiftUI14UISecureWindow)initWithWindowScene:(id)scene;
@end

@implementation UISecureWindow

- (_TtC7SwiftUI14UISecureWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UISecureWindow();
  return [(UISecureWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC7SwiftUI14UISecureWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UISecureWindow();
  return [(UISecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI14UISecureWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UISecureWindow();
  coderCopy = coder;
  v5 = [(UISecureWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end