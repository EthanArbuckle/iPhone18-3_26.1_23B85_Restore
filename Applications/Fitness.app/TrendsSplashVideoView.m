@interface TrendsSplashVideoView
- (_TtC10FitnessApp21TrendsSplashVideoView)initWithCoder:(id)a3;
- (_TtC10FitnessApp21TrendsSplashVideoView)initWithFrame:(CGRect)a3;
- (void)configurePlayer;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)teardownPlayer;
@end

@implementation TrendsSplashVideoView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TrendsSplashVideoView();
  v2 = v5.receiver;
  [(TrendsSplashVideoView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (_TtC10FitnessApp21TrendsSplashVideoView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp21TrendsSplashVideoView_playerLayer) = 0;
  type metadata accessor for TrendsSplashVideoView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1001C00B8();
}

- (_TtC10FitnessApp21TrendsSplashVideoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurePlayer
{
  v2 = self;
  sub_10006825C();
}

- (void)teardownPlayer
{
  v2 = self;
  sub_1001C0758();
}

@end