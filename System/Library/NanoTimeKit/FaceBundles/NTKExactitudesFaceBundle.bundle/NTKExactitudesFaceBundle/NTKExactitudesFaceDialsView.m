@interface NTKExactitudesFaceDialsView
- (NTKExactitudesFaceDialsView)initWithCoder:(id)a3;
- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)a3;
- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)a3 device:(id)a4 colorsWrapper:(id)a5 style:(int64_t)a6;
- (id)initForMiniClockWithFrame:(CGRect)a3 device:(id)a4 colorsWrapper:(id)a5;
- (int64_t)style;
- (void)hideInactiveDials;
- (void)setColorsWrapper:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setStyle:(int64_t)a3;
- (void)setTimeOffset:(double)a3;
- (void)showInactiveDials;
@end

@implementation NTKExactitudesFaceDialsView

- (int64_t)style
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView_style;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);

  return v4;
}

- (void)setStyle:(int64_t)a3
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR___NTKExactitudesFaceDialsView_style;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  v6 = self;
  sub_1865C();
}

- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)a3 device:(id)a4 colorsWrapper:(id)a5 style:(int64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = ExactitudesFaceDialsView.init(frame:device:colorsWrapper:style:)(a4, a5, a6, x, y, width, height);

  return v13;
}

- (NTKExactitudesFaceDialsView)initWithCoder:(id)a3
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_18A4C();
}

- (void)setColorsWrapper:(id)a3
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  ExactitudesFaceDialsView.setColorsWrapper(_:)(v5);
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = sub_CA10(&qword_37C80, &qword_251F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_2159C();
    v11 = sub_215AC();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_215AC();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = self;
  ExactitudesFaceDialsView.setOverrideDate(_:duration:)(v10, a4);

  sub_11958(v10);
}

- (void)setTimeOffset:(double)a3
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)showInactiveDials
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible;
  if (*(&self->super.super.super.isa + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) == 1)
  {
  }

  else
  {
    v4 = self;
    sub_16730(1, 1, 0.0);
    sub_16730(1, 2, 0.0);
    *(&self->super.super.super.isa + v3) = 1;
  }
}

- (void)hideInactiveDials
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible;
  if (*(&self->super.super.super.isa + OBJC_IVAR___NTKExactitudesFaceDialsView__inactiveDialsVisible) == 1)
  {
    v4 = self;
    sub_16730(0, 1, 0.0);
    sub_16730(0, 2, 0.0);
    *(&self->super.super.super.isa + v3) = 0;
  }

  else
  {
  }
}

- (id)initForMiniClockWithFrame:(CGRect)a3 device:(id)a4 colorsWrapper:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = ExactitudesFaceDialsView.init(frame:device:colorsWrapper:)(a4, a5, x, y, width, height);

  return v11;
}

- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)a3
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end