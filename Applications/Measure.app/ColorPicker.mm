@interface ColorPicker
- (_TtC7Measure11ColorPicker)initWithCoder:(id)a3;
- (_TtC7Measure11ColorPicker)initWithFrame:(CGRect)a3;
- (void)updateValue:(id)a3;
@end

@implementation ColorPicker

- (_TtC7Measure11ColorPicker)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_redSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_value) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(ColorPicker *)&v11 initWithFrame:x, y, width, height];
  sub_10012D31C();

  return v9;
}

- (_TtC7Measure11ColorPicker)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_redSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_value) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)updateValue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10012DD30();
}

@end