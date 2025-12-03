@interface ColorPicker
- (_TtC7Measure11ColorPicker)initWithCoder:(id)coder;
- (_TtC7Measure11ColorPicker)initWithFrame:(CGRect)frame;
- (void)updateValue:(id)value;
@end

@implementation ColorPicker

- (_TtC7Measure11ColorPicker)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_redSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_greenSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_blueSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_alphaSlider) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Measure11ColorPicker_value) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(ColorPicker *)&v11 initWithFrame:x, y, width, height];
  sub_10012D31C();

  return height;
}

- (_TtC7Measure11ColorPicker)initWithCoder:(id)coder
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

- (void)updateValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  sub_10012DD30();
}

@end