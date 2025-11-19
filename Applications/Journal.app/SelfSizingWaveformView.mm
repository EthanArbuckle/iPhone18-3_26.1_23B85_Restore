@interface SelfSizingWaveformView
- (_TtC7Journal22SelfSizingWaveformView)initWithCoder:(id)a3;
- (_TtC7Journal22SelfSizingWaveformView)initWithFrame:(CGRect)a3;
@end

@implementation SelfSizingWaveformView

- (_TtC7Journal22SelfSizingWaveformView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView);
  v9 = type metadata accessor for SelfSizingWaveformView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(SelfSizingWaveformView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC7Journal22SelfSizingWaveformView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Journal22SelfSizingWaveformView_waveformContainerView);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SelfSizingWaveformView();
  v5 = a3;
  v6 = [(SelfSizingWaveformView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end