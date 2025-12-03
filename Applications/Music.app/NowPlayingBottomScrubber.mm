@interface NowPlayingBottomScrubber
- (BOOL)isHidden;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5Music24NowPlayingBottomScrubber)initWithCoder:(id)coder;
- (_TtC5Music24NowPlayingBottomScrubber)initWithFrame:(CGRect)frame;
- (double)alpha;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
@end

@implementation NowPlayingBottomScrubber

- (_TtC5Music24NowPlayingBottomScrubber)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_trackingView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC5Music24NowPlayingBottomScrubber_timeObserver;
  type metadata accessor for PlaybackTimeObserver();
  swift_allocObject();
  *(&self->super.super.super.super.isa + v5) = PlaybackTimeObserver.init(name:)(0xD000000000000016, 0x8000000100E572E0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10077D5E8();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NowPlayingBottomScrubber *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  isHidden = [(NowPlayingBottomScrubber *)&v9 isHidden];
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(NowPlayingBottomScrubber *)&v8 setHidden:hiddenCopy];
  sub_10077D808(isHidden);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(NowPlayingBottomScrubber *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)alpha
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(NowPlayingBottomScrubber *)&v10 alpha];
  v8 = v7;
  v9.receiver = selfCopy;
  v9.super_class = ObjectType;
  [(NowPlayingBottomScrubber *)&v9 setAlpha:alpha];
  sub_10077D99C(v8);
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(NowPlayingBottomScrubber *)&v5 didMoveToWindow];
  window = [v2 window];
  windowScene = [window windowScene];

  PlaybackTimeObserver.windowScene.setter(windowScene);
}

- (void)didMoveToSuperview
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  selfCopy = self;
  [(NowPlayingBottomScrubber *)&v9 didMoveToSuperview];
  superview = [(NowPlayingBottomScrubber *)selfCopy superview];
  if (superview)
  {

    v8.receiver = selfCopy;
    v8.super_class = ObjectType;
    [(NowPlayingBottomScrubber *)&v8 alpha];
    if (v6 <= 0.0)
    {
      LOBYTE(superview) = 0;
    }

    else
    {
      v7.receiver = selfCopy;
      v7.super_class = ObjectType;
      LOBYTE(superview) = ![(NowPlayingBottomScrubber *)&v7 isHidden];
    }
  }

  PlaybackTimeObserver.automaticallyUpdates.setter(superview);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  traitCollection = [(NowPlayingBottomScrubber *)selfCopy traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  v6 = 2.5;
  if (v5 <= 1.0)
  {
    v6 = 3.0;
  }

  v7 = 1.0;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(NowPlayingBottomScrubber *)selfCopy traitCollection];
  [traitCollection displayScale];
  v7 = v6;

  v8 = 2.5;
  if (v7 <= 1.0)
  {
    v8 = 3.0;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (_TtC5Music24NowPlayingBottomScrubber)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end