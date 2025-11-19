@interface NTKExactitudesMiniClockHandView
- (_TtC24NTKExactitudesFaceBundle31NTKExactitudesMiniClockHandView)initWithFrame:(CGRect)a3;
- (void)_layoutInlayLayer;
@end

@implementation NTKExactitudesMiniClockHandView

- (void)_layoutInlayLayer
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_1F168();
}

- (_TtC24NTKExactitudesFaceBundle31NTKExactitudesMiniClockHandView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for NTKExactitudesMiniClockHandView();
  v8 = [(NTKExactitudesHandView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

@end