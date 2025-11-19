@interface LoggingCardCarouselFooterView
- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)doneTapped:(id)a3;
@end

@implementation LoggingCardCarouselFooterView

- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)doneTapped:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a3;
    v6 = self;
    sub_29E222730();
    swift_unknownObjectRelease();
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v7 = a4;
  v8 = v11.receiver;
  v9 = [(LoggingCardCarouselFooterView *)&v11 hitTest:v7 withEvent:x, y];
  if (_UISolariumEnabled() && v9)
  {

    if (v9 != v8)
    {
      goto LABEL_7;
    }

    v8 = v9;
    v9 = 0;
  }

  else
  {
  }

LABEL_7:

  return v9;
}

- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end