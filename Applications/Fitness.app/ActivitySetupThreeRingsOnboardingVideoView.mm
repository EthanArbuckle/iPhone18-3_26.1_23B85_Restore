@interface ActivitySetupThreeRingsOnboardingVideoView
- (CGSize)intrinsicContentSize;
- (_TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView)init;
- (_TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView)initWithCoder:(id)a3;
- (_TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ActivitySetupThreeRingsOnboardingVideoView

- (_TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView();
  v2 = [(ActivitySetupThreeRingsOnboardingVideoView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_100675E58();

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v12 = CGRectGetWidth(v18) + -160.0;
  v13 = [v2 mainScreen];
  [v13 scale];

  UIRoundToScale();
  v15 = v14;
  v16 = v12;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView();
  v2 = v5.receiver;
  [(ActivitySetupThreeRingsOnboardingVideoView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (_TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView_playerLayer) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp42ActivitySetupThreeRingsOnboardingVideoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end