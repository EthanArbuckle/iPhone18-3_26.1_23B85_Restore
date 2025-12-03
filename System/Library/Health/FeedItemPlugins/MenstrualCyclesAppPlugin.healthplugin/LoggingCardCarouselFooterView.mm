@interface LoggingCardCarouselFooterView
- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)doneTapped:(id)tapped;
@end

@implementation LoggingCardCarouselFooterView

- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView____lazy_storage___progressLabel) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)doneTapped:(id)tapped
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    tappedCopy = tapped;
    selfCopy = self;
    sub_29E222730();
    swift_unknownObjectRelease();
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  eventCopy = event;
  v8 = v11.receiver;
  v9 = [(LoggingCardCarouselFooterView *)&v11 hitTest:eventCopy withEvent:x, y];
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

- (_TtC24MenstrualCyclesAppPlugin29LoggingCardCarouselFooterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end