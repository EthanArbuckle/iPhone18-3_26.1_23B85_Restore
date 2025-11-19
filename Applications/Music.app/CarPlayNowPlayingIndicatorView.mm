@interface CarPlayNowPlayingIndicatorView
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithCoder:(id)a3;
- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setIsHighlighted:(BOOL)a3;
- (void)setIsPlaying:(BOOL)a3;
@end

@implementation CarPlayNowPlayingIndicatorView

- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isPlaying) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted) = 0;
  v4 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform;
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v5 = qword_101219020;
  v6 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator());
  *(&self->super.super.super.isa + v4) = WaveformPlayIndicator.init(settings:)(v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setIsPlaying:(BOOL)a3
{
  v3 = a3;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isPlaying) = a3;
  v5 = self;
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  WaveformPlayIndicator.mode.setter(v4);
}

- (BOOL)isHighlighted
{
  v3 = OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isHighlighted;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setIsHighlighted:(BOOL)a3
{
  v4 = self;
  sub_100260204(a3);
}

- (CGSize)intrinsicContentSize
{
  v2 = 24.0;
  v3 = 24.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CarPlayNowPlayingIndicatorView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_waveform];
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 24.0;
  v4 = 24.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end