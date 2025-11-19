@interface HistoryButton
- (_TtC7Measure13HistoryButton)initWithCoder:(id)a3;
- (_TtC7Measure13HistoryButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)showHistoryFrom:(id)a3;
@end

@implementation HistoryButton

- (_TtC7Measure13HistoryButton)initWithCoder:(id)a3
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

- (_TtC7Measure13HistoryButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showHistoryFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100040AD0();
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100040B98();

  return v9;
}

@end