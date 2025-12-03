@interface CarPlayNowPlayingIndicatorView
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithCoder:(id)coder;
- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setIsHighlighted:(BOOL)highlighted;
- (void)setIsPlaying:(BOOL)playing;
@end

@implementation CarPlayNowPlayingIndicatorView

- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithCoder:(id)coder
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

- (void)setIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music30CarPlayNowPlayingIndicatorView_isPlaying) = playing;
  selfCopy = self;
  if (playingCopy)
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

- (void)setIsHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_100260204(highlighted);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 24.0;
  v4 = 24.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC5Music30CarPlayNowPlayingIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end