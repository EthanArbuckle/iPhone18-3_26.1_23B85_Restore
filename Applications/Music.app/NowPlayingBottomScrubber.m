@interface NowPlayingBottomScrubber
- (BOOL)isHidden;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC5Music24NowPlayingBottomScrubber)initWithCoder:(id)a3;
- (_TtC5Music24NowPlayingBottomScrubber)initWithFrame:(CGRect)a3;
- (double)alpha;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation NowPlayingBottomScrubber

- (_TtC5Music24NowPlayingBottomScrubber)initWithCoder:(id)a3
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
  v2 = self;
  sub_10077D5E8();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NowPlayingBottomScrubber *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  v7 = [(NowPlayingBottomScrubber *)&v9 isHidden];
  v8.receiver = v6;
  v8.super_class = ObjectType;
  [(NowPlayingBottomScrubber *)&v8 setHidden:v3];
  sub_10077D808(v7);
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  [(NowPlayingBottomScrubber *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)a3
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = self;
  [(NowPlayingBottomScrubber *)&v10 alpha];
  v8 = v7;
  v9.receiver = v6;
  v9.super_class = ObjectType;
  [(NowPlayingBottomScrubber *)&v9 setAlpha:a3];
  sub_10077D99C(v8);
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(NowPlayingBottomScrubber *)&v5 didMoveToWindow];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  PlaybackTimeObserver.windowScene.setter(v4);
}

- (void)didMoveToSuperview
{
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v4 = self;
  [(NowPlayingBottomScrubber *)&v9 didMoveToSuperview];
  v5 = [(NowPlayingBottomScrubber *)v4 superview];
  if (v5)
  {

    v8.receiver = v4;
    v8.super_class = ObjectType;
    [(NowPlayingBottomScrubber *)&v8 alpha];
    if (v6 <= 0.0)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7.receiver = v4;
      v7.super_class = ObjectType;
      LOBYTE(v5) = ![(NowPlayingBottomScrubber *)&v7 isHidden];
    }
  }

  PlaybackTimeObserver.automaticallyUpdates.setter(v5);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(NowPlayingBottomScrubber *)v2 traitCollection];
  [v3 displayScale];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(NowPlayingBottomScrubber *)v4 traitCollection];
  [v5 displayScale];
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

- (_TtC5Music24NowPlayingBottomScrubber)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end