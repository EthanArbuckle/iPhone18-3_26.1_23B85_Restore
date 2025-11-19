@interface SketchSurface
- (_TtC7Measure13SketchSurface)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SketchSurface

- (void)layoutSubviews
{
  v2 = self;
  sub_100047E1C();
}

- (_TtC7Measure13SketchSurface)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC7Measure13SketchSurface_surfaceView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIView) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13SketchSurface_rectSublayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13SketchSurface_horizontalLineSublayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13SketchSurface_verticalLineSublayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13SketchSurface_dotLayers) = _swiftEmptyArrayStorage;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SketchSurface();
  return [(SketchSurface *)&v10 initWithFrame:x, y, width, height];
}

@end