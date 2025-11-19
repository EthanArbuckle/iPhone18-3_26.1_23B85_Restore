@interface UISecureWindow
- (_TtC7SwiftUI14UISecureWindow)initWithCoder:(id)a3;
- (_TtC7SwiftUI14UISecureWindow)initWithFrame:(CGRect)a3;
- (_TtC7SwiftUI14UISecureWindow)initWithWindowScene:(id)a3;
@end

@implementation UISecureWindow

- (_TtC7SwiftUI14UISecureWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UISecureWindow();
  return [(UISecureWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC7SwiftUI14UISecureWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UISecureWindow();
  return [(UISecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7SwiftUI14UISecureWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UISecureWindow();
  v4 = a3;
  v5 = [(UISecureWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end