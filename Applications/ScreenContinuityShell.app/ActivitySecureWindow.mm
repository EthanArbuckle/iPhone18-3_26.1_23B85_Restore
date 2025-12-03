@interface ActivitySecureWindow
- (_TtC21ScreenContinuityShell20ActivitySecureWindow)initWithCoder:(id)coder;
- (_TtC21ScreenContinuityShell20ActivitySecureWindow)initWithFrame:(CGRect)frame;
- (_TtC21ScreenContinuityShell20ActivitySecureWindow)initWithWindowScene:(id)scene;
@end

@implementation ActivitySecureWindow

- (_TtC21ScreenContinuityShell20ActivitySecureWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivitySecureWindow();
  return [(ActivitySecureWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC21ScreenContinuityShell20ActivitySecureWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActivitySecureWindow();
  return [(ActivitySecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC21ScreenContinuityShell20ActivitySecureWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ActivitySecureWindow();
  coderCopy = coder;
  v5 = [(ActivitySecureWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end