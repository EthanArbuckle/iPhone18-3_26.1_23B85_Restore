@interface SketchSurfaceHistory
- (_TtC7Measure20SketchSurfaceHistory)initWithCoder:(id)a3;
- (_TtC7Measure20SketchSurfaceHistory)initWithFrame:(CGRect)a3;
@end

@implementation SketchSurfaceHistory

- (_TtC7Measure20SketchSurfaceHistory)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC7Measure20SketchSurfaceHistory_surfaceView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SketchSurfaceHistory();
  return [(SketchSurfaceHistory *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC7Measure20SketchSurfaceHistory)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC7Measure20SketchSurfaceHistory_surfaceView;
  v6 = objc_allocWithZone(UIView);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SketchSurfaceHistory();
  v8 = [(SketchSurfaceHistory *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end