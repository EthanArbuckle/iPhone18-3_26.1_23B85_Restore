@interface APUISecureWindow
- (_TtC18ActivityProgressUI16APUISecureWindow)initWithCoder:(id)a3;
- (_TtC18ActivityProgressUI16APUISecureWindow)initWithFrame:(CGRect)a3;
- (_TtC18ActivityProgressUI16APUISecureWindow)initWithWindowScene:(id)a3;
@end

@implementation APUISecureWindow

- (_TtC18ActivityProgressUI16APUISecureWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for APUISecureWindow();
  return [(APUISecureWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC18ActivityProgressUI16APUISecureWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for APUISecureWindow();
  return [(APUISecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18ActivityProgressUI16APUISecureWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for APUISecureWindow();
  v4 = a3;
  v5 = [(APUISecureWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end