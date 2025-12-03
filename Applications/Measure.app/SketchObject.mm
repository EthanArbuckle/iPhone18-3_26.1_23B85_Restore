@interface SketchObject
- (_TtC7Measure12SketchObject)initWithFrame:(CGRect)frame;
@end

@implementation SketchObject

- (_TtC7Measure12SketchObject)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12SketchObject_topSurface) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12SketchObject_longSideSurface) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12SketchObject_shortSideSurface) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12SketchObject_backgroundLines) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure12SketchObject_foregroundLines) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SketchObject();
  return [(SketchObject *)&v8 initWithFrame:x, y, width, height];
}

@end