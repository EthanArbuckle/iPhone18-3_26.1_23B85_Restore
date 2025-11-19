@interface SecureSafeIndicatorView
+ (Class)layerClass;
- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithCoder:(id)a3;
- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithFrame:(CGRect)a3;
@end

@implementation SecureSafeIndicatorView

+ (Class)layerClass
{
  sub_10002C9FC(0, &qword_10032FE08);

  return swift_getObjCClassFromMetadata();
}

- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SecureSafeIndicatorView();
  return [(SecureSafeIndicatorView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureSafeIndicatorView();
  v4 = a3;
  v5 = [(SecureSafeIndicatorView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end