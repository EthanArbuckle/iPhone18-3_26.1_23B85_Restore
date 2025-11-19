@interface NowPlayingTransportControlStackView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC12NowPlayingUI35NowPlayingTransportControlStackView)initWithCoder:(id)a3;
- (_TtC12NowPlayingUI35NowPlayingTransportControlStackView)initWithFrame:(CGRect)a3;
@end

@implementation NowPlayingTransportControlStackView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_F9320(v4, x, y);

  return v4 & 1;
}

- (_TtC12NowPlayingUI35NowPlayingTransportControlStackView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI35NowPlayingTransportControlStackView_useBoundsAsPointInside) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NowPlayingTransportControlStackView();
  return [(NowPlayingTransportControlStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC12NowPlayingUI35NowPlayingTransportControlStackView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI35NowPlayingTransportControlStackView_useBoundsAsPointInside) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingTransportControlStackView();
  return [(NowPlayingTransportControlStackView *)&v5 initWithCoder:a3];
}

@end