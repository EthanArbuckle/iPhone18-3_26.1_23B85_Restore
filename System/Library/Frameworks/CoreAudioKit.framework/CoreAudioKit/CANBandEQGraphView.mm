@interface CANBandEQGraphView
- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithCoder:(id)a3;
- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithFrame:(CGRect)a3;
- (void)doubleTapped:(id)a3;
- (void)tintColorDidChange;
@end

@implementation CANBandEQGraphView

- (void)tintColorDidChange
{
  v2 = self;
  sub_2371430E0();
}

- (void)doubleTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2371432A8(v4);
}

- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CANBandEQGraphView();
  v4 = a3;
  v5 = [(CAAUEQGraphView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CANBandEQGraphView();
  return [(CAAUEQGraphView *)&v8 initWithFrame:x, y, width, height];
}

@end