@interface SystemSegmentedControl.UISegmentedControl
- (_TtCV7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7522SystemSegmentedControl18UISegmentedControl)initWithCoder:(id)a3;
- (_TtCV7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7522SystemSegmentedControl18UISegmentedControl)initWithFrame:(CGRect)a3;
- (_TtCV7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7522SystemSegmentedControl18UISegmentedControl)initWithItems:(id)isa;
@end

@implementation SystemSegmentedControl.UISegmentedControl

- (_TtCV7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7522SystemSegmentedControl18UISegmentedControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(SystemSegmentedControl.UISegmentedControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCV7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7522SystemSegmentedControl18UISegmentedControl)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(SystemSegmentedControl.UISegmentedControl *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtCV7SwiftUIP33_D74FE142C3C5A6C2CEA4987A69AEBD7522SystemSegmentedControl18UISegmentedControl)initWithItems:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(SystemSegmentedControl.UISegmentedControl *)&v8 initWithItems:isa];

  return v6;
}

@end