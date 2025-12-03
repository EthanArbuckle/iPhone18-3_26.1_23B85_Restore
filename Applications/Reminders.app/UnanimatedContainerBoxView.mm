@interface UnanimatedContainerBoxView
- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4226UnanimatedContainerBoxView)initWithArrangedSubviews:(id)subviews;
- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4226UnanimatedContainerBoxView)initWithCoder:(id)coder;
- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4226UnanimatedContainerBoxView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation UnanimatedContainerBoxView

- (void)layoutSubviews
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100493338;
  *(v5 + 24) = v4;
  v8[4] = sub_100026410;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_10072AA60;
  v6 = _Block_copy(v8);
  selfCopy = self;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4226UnanimatedContainerBoxView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for UnanimatedContainerBoxView();
  return [(UnanimatedContainerBoxView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4226UnanimatedContainerBoxView)initWithArrangedSubviews:(id)subviews
{
  isa = subviews;
  if (subviews)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for UnanimatedContainerBoxView();
  v5 = [(UnanimatedContainerBoxView *)&v7 initWithArrangedSubviews:isa];

  return v5;
}

- (_TtC9RemindersP33_867866E3C408EC8E125699C6A4109C4226UnanimatedContainerBoxView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UnanimatedContainerBoxView();
  coderCopy = coder;
  v5 = [(UnanimatedContainerBoxView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end