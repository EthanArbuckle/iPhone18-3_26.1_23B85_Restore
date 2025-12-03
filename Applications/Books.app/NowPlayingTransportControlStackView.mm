@interface NowPlayingTransportControlStackView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC5Books35NowPlayingTransportControlStackView)initWithCoder:(id)coder;
- (_TtC5Books35NowPlayingTransportControlStackView)initWithFrame:(CGRect)frame;
@end

@implementation NowPlayingTransportControlStackView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  LOBYTE(eventCopy) = sub_1006010A0(eventCopy, x, y);

  return eventCopy & 1;
}

- (_TtC5Books35NowPlayingTransportControlStackView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books35NowPlayingTransportControlStackView_useBoundsAsPointInside) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NowPlayingTransportControlStackView();
  return [(NowPlayingTransportControlStackView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books35NowPlayingTransportControlStackView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Books35NowPlayingTransportControlStackView_useBoundsAsPointInside) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingTransportControlStackView();
  return [(NowPlayingTransportControlStackView *)&v5 initWithCoder:coder];
}

@end