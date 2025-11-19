@interface SketchObject
- (_TtC7Measure12SketchObject)initWithFrame:(CGRect)a3;
@end

@implementation SketchObject

- (_TtC7Measure12SketchObject)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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