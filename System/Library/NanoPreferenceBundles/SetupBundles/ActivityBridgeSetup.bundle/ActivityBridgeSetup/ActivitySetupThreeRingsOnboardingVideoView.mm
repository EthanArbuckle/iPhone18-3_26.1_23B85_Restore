@interface ActivitySetupThreeRingsOnboardingVideoView
- (CGSize)intrinsicContentSize;
- (_TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView)init;
- (_TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView)initWithCoder:(id)coder;
- (_TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ActivitySetupThreeRingsOnboardingVideoView

- (_TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ActivitySetupThreeRingsOnboardingVideoView();
  v2 = [(ActivitySetupThreeRingsOnboardingVideoView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_189F0();

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v2 = objc_opt_self();
  mainScreen = [v2 mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v12 = CGRectGetWidth(v18) + -160.0;
  mainScreen2 = [v2 mainScreen];
  [mainScreen2 scale];

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
  v3 = *&v2[OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame:?];
  }
}

- (_TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_player) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView_playerLayer) = 0;
  result = sub_22130();
  __break(1u);
  return result;
}

- (_TtC19ActivityBridgeSetup42ActivitySetupThreeRingsOnboardingVideoView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end