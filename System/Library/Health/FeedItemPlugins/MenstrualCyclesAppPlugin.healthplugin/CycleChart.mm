@interface CycleChart
- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithFrame:(CGRect)frame;
@end

@implementation CycleChart

- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v8 = (*(ObjectType + 112))(MEMORY[0x29EDCA190], x, y, width, height);
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithCoder:(id)coder
{
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end