@interface CANBandEQGraphView
- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithCoder:(id)coder;
- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithFrame:(CGRect)frame;
- (void)doubleTapped:(id)tapped;
- (void)tintColorDidChange;
@end

@implementation CANBandEQGraphView

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_2371430E0();
}

- (void)doubleTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_2371432A8(tappedCopy);
}

- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CANBandEQGraphView();
  coderCopy = coder;
  v5 = [(CAAUEQGraphView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC12CoreAudioKit18CANBandEQGraphView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CANBandEQGraphView();
  return [(CAAUEQGraphView *)&v8 initWithFrame:x, y, width, height];
}

@end