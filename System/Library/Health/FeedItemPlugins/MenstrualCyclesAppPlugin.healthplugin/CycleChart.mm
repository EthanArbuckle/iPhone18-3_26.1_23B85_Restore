@interface CycleChart
- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithFrame:(CGRect)a3;
@end

@implementation CycleChart

- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v8 = (*(ObjectType + 112))(MEMORY[0x29EDCA190], x, y, width, height);
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC24MenstrualCyclesAppPlugin10CycleChart)initWithCoder:(id)a3
{
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end