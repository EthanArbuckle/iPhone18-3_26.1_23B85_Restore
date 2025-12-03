@interface SketchSurfaceHistory
- (_TtC7Measure20SketchSurfaceHistory)initWithCoder:(id)coder;
- (_TtC7Measure20SketchSurfaceHistory)initWithFrame:(CGRect)frame;
@end

@implementation SketchSurfaceHistory

- (_TtC7Measure20SketchSurfaceHistory)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7Measure20SketchSurfaceHistory_surfaceView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SketchSurfaceHistory();
  return [(SketchSurfaceHistory *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC7Measure20SketchSurfaceHistory)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC7Measure20SketchSurfaceHistory_surfaceView;
  v6 = objc_allocWithZone(UIView);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SketchSurfaceHistory();
  v8 = [(SketchSurfaceHistory *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end