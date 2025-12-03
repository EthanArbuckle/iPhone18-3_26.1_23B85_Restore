@interface APWelcomeControllerWithBraveButtonTrayView
- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithCoder:(id)coder;
- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation APWelcomeControllerWithBraveButtonTrayView

- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView) = 0;
  v3 = OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for APBraveAndIconoclasticSafeAreaUsingButtonTray()) initWithFrame_];
  result = sub_1AEA32664();
  __break(1u);
  return result;
}

- (_TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_welcomeScrollView) = 0;
  v8 = OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for APBraveAndIconoclasticSafeAreaUsingButtonTray()) initWithFrame_];
  v11.receiver = self;
  v11.super_class = type metadata accessor for APWelcomeControllerWithBraveButtonTrayView();
  height = [(APWelcomeControllerWithBraveButtonTrayView *)&v11 initWithFrame:x, y, width, height];
  [(APWelcomeControllerWithBraveButtonTrayView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC15AppProtectionUI42APWelcomeControllerWithBraveButtonTrayView_buttonTray)];
  return height;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1AEA27C88();
}

@end