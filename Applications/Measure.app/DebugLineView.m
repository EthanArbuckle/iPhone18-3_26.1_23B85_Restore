@interface DebugLineView
- (_TtC7Measure13DebugLineView)initWithCoder:(id)a3;
- (_TtC7Measure13DebugLineView)initWithFrame:(CGRect)a3;
@end

@implementation DebugLineView

- (_TtC7Measure13DebugLineView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13DebugLineView_allRectangles) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13DebugLineView_allRectangleLabels) = _swiftEmptyArrayStorage;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(DebugLineView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC7Measure13DebugLineView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13DebugLineView_allRectangles) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13DebugLineView_allRectangleLabels) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end