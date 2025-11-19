@interface FMSegmentedControl
- (_TtC6FindMy18FMSegmentedControl)initWithCoder:(id)a3;
- (_TtC6FindMy18FMSegmentedControl)initWithFrame:(CGRect)a3;
- (_TtC6FindMy18FMSegmentedControl)initWithItems:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation FMSegmentedControl

- (_TtC6FindMy18FMSegmentedControl)initWithItems:(id)a3
{
  if (a3)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSegmentedControl();
  v5 = [(FMSegmentedControl *)&v7 initWithItems:v4.super.isa];

  return v5;
}

- (_TtC6FindMy18FMSegmentedControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMSegmentedControl();
  return [(FMSegmentedControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy18FMSegmentedControl)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_100153064();
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4;
  v7 = self;
  v8 = [(FMSegmentedControl *)v7 selectedSegmentIndex];
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = v7;
  v10.super_class = type metadata accessor for FMSegmentedControl();
  [(FMSegmentedControl *)&v10 touchesEnded:isa withEvent:v6];

  if (v8 == [(FMSegmentedControl *)v7 selectedSegmentIndex])
  {
    [(FMSegmentedControl *)v7 sendActionsForControlEvents:64];
  }
}

@end