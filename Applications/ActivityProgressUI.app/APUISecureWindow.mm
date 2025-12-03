@interface APUISecureWindow
- (_TtC18ActivityProgressUI16APUISecureWindow)initWithCoder:(id)coder;
- (_TtC18ActivityProgressUI16APUISecureWindow)initWithFrame:(CGRect)frame;
- (_TtC18ActivityProgressUI16APUISecureWindow)initWithWindowScene:(id)scene;
@end

@implementation APUISecureWindow

- (_TtC18ActivityProgressUI16APUISecureWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for APUISecureWindow();
  return [(APUISecureWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC18ActivityProgressUI16APUISecureWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for APUISecureWindow();
  return [(APUISecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18ActivityProgressUI16APUISecureWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for APUISecureWindow();
  coderCopy = coder;
  v5 = [(APUISecureWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end