@interface HistoryButton
- (_TtC7Measure13HistoryButton)initWithCoder:(id)coder;
- (_TtC7Measure13HistoryButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)showHistoryFrom:(id)from;
@end

@implementation HistoryButton

- (_TtC7Measure13HistoryButton)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13HistoryButton_tapHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13HistoryButton_button) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13HistoryButton_controlType) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC7Measure13HistoryButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showHistoryFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_100040AD0();
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_100040B98();

  return v9;
}

@end