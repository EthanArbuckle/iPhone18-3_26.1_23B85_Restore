@interface SecureWindow
- (_TtC6Tamale12SecureWindow)initWithCoder:(id)a3;
- (_TtC6Tamale12SecureWindow)initWithFrame:(CGRect)a3;
- (_TtC6Tamale12SecureWindow)initWithWindowScene:(id)a3;
@end

@implementation SecureWindow

- (_TtC6Tamale12SecureWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(SecureWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC6Tamale12SecureWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(SecureWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6Tamale12SecureWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(SecureWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end