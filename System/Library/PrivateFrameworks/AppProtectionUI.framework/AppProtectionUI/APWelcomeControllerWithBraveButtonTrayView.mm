@interface APWelcomeControllerWithBraveButtonTrayView
- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithCoder:(id)a3;
- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation APWelcomeControllerWithBraveButtonTrayView

- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView) = 0;
  v3 = OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for APBraveAndIconoclasticSafeAreaUsingButtonTray()) initWithFrame_];
  result = sub_1AEA32664();
  __break(1u);
  return result;
}

- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView) = 0;
  v8 = OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for APBraveAndIconoclasticSafeAreaUsingButtonTray()) initWithFrame_];
  v11.receiver = self;
  v11.super_class = type metadata accessor for APWelcomeControllerWithBraveButtonTrayView();
  v9 = [(APWelcomeControllerWithBraveButtonTrayView *)&v11 initWithFrame:x, y, width, height];
  [(APWelcomeControllerWithBraveButtonTrayView *)v9 addSubview:*(&v9->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray)];
  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1AEA27C88();
}

@end