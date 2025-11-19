@interface NowPlayingAutoPlayHeaderView
- (_TtC5Music28NowPlayingAutoPlayHeaderView)initWithCoder:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation NowPlayingAutoPlayHeaderView

- (_TtC5Music28NowPlayingAutoPlayHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView;
  v5 = type metadata accessor for BackdropView();
  v6 = objc_allocWithZone(v5);
  *(&self->super.super.super.super.isa + v4) = sub_100453A34();
  v7 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView;
  v8 = objc_allocWithZone(v5);
  *(&self->super.super.super.super.isa + v7) = sub_100453A34();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)applyLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  v4 = a3;
  v5 = v6.receiver;
  [(NowPlayingAutoPlayHeaderView *)&v6 applyLayoutAttributes:v4];
  [v5 setClipsToBounds:{sub_10056B5F4() & 1, v6.receiver, v6.super_class}];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10056B0BC();
}

@end