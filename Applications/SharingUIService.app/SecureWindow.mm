@interface SecureWindow
- (_TtC16SharingUIService12SecureWindow)initWithCoder:(id)coder;
- (_TtC16SharingUIService12SecureWindow)initWithFrame:(CGRect)frame;
- (_TtC16SharingUIService12SecureWindow)initWithWindowScene:(id)scene;
@end

@implementation SecureWindow

- (_TtC16SharingUIService12SecureWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SecureWindow();
  return [(SecureWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC16SharingUIService12SecureWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SecureWindow();
  return [(SecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16SharingUIService12SecureWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureWindow();
  coderCopy = coder;
  v5 = [(SecureWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end