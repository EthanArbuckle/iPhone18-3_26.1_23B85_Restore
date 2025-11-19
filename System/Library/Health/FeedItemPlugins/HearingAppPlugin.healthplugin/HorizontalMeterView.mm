@interface HorizontalMeterView
- (_TtC16HearingAppPlugin19HorizontalMeterView)initWithCoder:(id)a3;
- (_TtC16HearingAppPlugin19HorizontalMeterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HorizontalMeterView

- (_TtC16HearingAppPlugin19HorizontalMeterView)initWithCoder:(id)a3
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HearingAppPlugin19HorizontalMeterView_foregroundViewWidth) = 0;
  result = sub_29D660594();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  HorizontalMeterView.layoutSubviews()();
}

- (_TtC16HearingAppPlugin19HorizontalMeterView)initWithFrame:(CGRect)a3
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end