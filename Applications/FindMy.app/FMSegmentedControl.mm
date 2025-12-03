@interface FMSegmentedControl
- (_TtC6FindMy18FMSegmentedControl)initWithCoder:(id)coder;
- (_TtC6FindMy18FMSegmentedControl)initWithFrame:(CGRect)frame;
- (_TtC6FindMy18FMSegmentedControl)initWithItems:(id)items;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation FMSegmentedControl

- (_TtC6FindMy18FMSegmentedControl)initWithItems:(id)items
{
  if (items)
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

- (_TtC6FindMy18FMSegmentedControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMSegmentedControl();
  return [(FMSegmentedControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC6FindMy18FMSegmentedControl)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_100153064();
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  selectedSegmentIndex = [(FMSegmentedControl *)selfCopy selectedSegmentIndex];
  isa = Set._bridgeToObjectiveC()().super.isa;

  v10.receiver = selfCopy;
  v10.super_class = type metadata accessor for FMSegmentedControl();
  [(FMSegmentedControl *)&v10 touchesEnded:isa withEvent:eventCopy];

  if (selectedSegmentIndex == [(FMSegmentedControl *)selfCopy selectedSegmentIndex])
  {
    [(FMSegmentedControl *)selfCopy sendActionsForControlEvents:64];
  }
}

@end