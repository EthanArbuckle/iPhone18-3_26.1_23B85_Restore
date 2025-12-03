@interface ContentBoxView
- (_TtC9RemindersP33_2A597C232914E6F8316CC19090A1D8C314ContentBoxView)initWithArrangedSubviews:(id)isa;
- (_TtC9RemindersP33_2A597C232914E6F8316CC19090A1D8C314ContentBoxView)initWithCoder:(id)coder;
- (_TtC9RemindersP33_2A597C232914E6F8316CC19090A1D8C314ContentBoxView)initWithFrame:(CGRect)frame;
@end

@implementation ContentBoxView

- (_TtC9RemindersP33_2A597C232914E6F8316CC19090A1D8C314ContentBoxView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ContentBoxView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9RemindersP33_2A597C232914E6F8316CC19090A1D8C314ContentBoxView)initWithArrangedSubviews:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(ContentBoxView *)&v8 initWithArrangedSubviews:isa];

  return v6;
}

- (_TtC9RemindersP33_2A597C232914E6F8316CC19090A1D8C314ContentBoxView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ContentBoxView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end