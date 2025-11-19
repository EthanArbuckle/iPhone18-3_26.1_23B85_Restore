@interface CalendarDayLabel
- (_TtC24MenstrualCyclesAppPlugin16CalendarDayLabel)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin16CalendarDayLabel)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation CalendarDayLabel

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for CalendarDayLabel();
  v2 = v9.receiver;
  [(CalendarDayLabel *)&v9 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 layer];
    v6 = [v4 screen];
    [v6 scale];
    v8 = v7;

    [v5 setRasterizationScale_];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_29DEAB85C();
}

- (_TtC24MenstrualCyclesAppPlugin16CalendarDayLabel)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin16CalendarDayLabel_lastSize);
  *v5 = 0;
  v5[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin16CalendarDayLabel)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end