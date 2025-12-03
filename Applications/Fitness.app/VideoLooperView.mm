@interface VideoLooperView
- (_TtC10FitnessApp15VideoLooperView)initWithCoder:(id)coder;
- (_TtC10FitnessApp15VideoLooperView)initWithFrame:(CGRect)frame;
- (void)configurePlayer;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)teardownPlayer;
@end

@implementation VideoLooperView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for VideoLooperView();
  v2 = v5.receiver;
  [(VideoLooperView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VideoLooperView();
  v2 = v3.receiver;
  [(VideoLooperView *)&v3 didMoveToWindow];
  sub_1006551C8();
}

- (_TtC10FitnessApp15VideoLooperView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp15VideoLooperView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp15VideoLooperView_playerLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp15VideoLooperView_observers) = _swiftEmptyArrayStorage;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp15VideoLooperView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurePlayer
{
  selfCopy = self;
  sub_1006554B4();
}

- (void)teardownPlayer
{
  selfCopy = self;
  sub_10065578C();
}

@end