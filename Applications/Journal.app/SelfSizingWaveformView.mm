@interface SelfSizingWaveformView
- (_TtC7Journal22SelfSizingWaveformView)initWithCoder:(id)coder;
- (_TtC7Journal22SelfSizingWaveformView)initWithFrame:(CGRect)frame;
@end

@implementation SelfSizingWaveformView

- (_TtC7Journal22SelfSizingWaveformView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView);
  v9 = type metadata accessor for SelfSizingWaveformView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(SelfSizingWaveformView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC7Journal22SelfSizingWaveformView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SelfSizingWaveformView();
  coderCopy = coder;
  v6 = [(SelfSizingWaveformView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end