@interface SecureSafeIndicatorView
+ (Class)layerClass;
- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithCoder:(id)coder;
- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithFrame:(CGRect)frame;
@end

@implementation SecureSafeIndicatorView

+ (Class)layerClass
{
  sub_10002C9FC(0, &qword_10032FE08);

  return swift_getObjCClassFromMetadata();
}

- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SecureSafeIndicatorView();
  return [(SecureSafeIndicatorView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12ClarityBoard23SecureSafeIndicatorView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureSafeIndicatorView();
  coderCopy = coder;
  v5 = [(SecureSafeIndicatorView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end