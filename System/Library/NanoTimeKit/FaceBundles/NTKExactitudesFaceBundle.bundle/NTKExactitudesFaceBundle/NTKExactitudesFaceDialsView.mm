@interface NTKExactitudesFaceDialsView
- (NTKExactitudesFaceDialsView)initWithCoder:(id)coder;
- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)frame;
- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)frame device:(id)device colorsWrapper:(id)wrapper style:(int64_t)style;
- (id)initForMiniClockWithFrame:(CGRect)frame device:(id)device colorsWrapper:(id)wrapper;
- (int64_t)style;
- (void)hideInactiveDials;
- (void)setColorsWrapper:(id)wrapper;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setStyle:(int64_t)style;
- (void)setTimeOffset:(double)offset;
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

- (void)setStyle:(int64_t)style
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
  *(&self->super.super.super.isa + v5) = style;
  selfCopy = self;
  sub_1865C();
}

- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)frame device:(id)device colorsWrapper:(id)wrapper style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = ExactitudesFaceDialsView.init(frame:device:colorsWrapper:style:)(device, wrapper, style, x, y, width, height);

  return v13;
}

- (NTKExactitudesFaceDialsView)initWithCoder:(id)coder
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

- (void)setColorsWrapper:(id)wrapper
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  wrapperCopy = wrapper;
  selfCopy = self;
  ExactitudesFaceDialsView.setColorsWrapper(_:)(wrapperCopy);
}

- (void)setOverrideDate:(id)date duration:(double)duration
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

  if (date)
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

  selfCopy = self;
  ExactitudesFaceDialsView.setOverrideDate(_:duration:)(v10, duration);

  sub_11958(v10);
}

- (void)setTimeOffset:(double)offset
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
    selfCopy = self;
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
    selfCopy = self;
    sub_16730(0, 1, 0.0);
    sub_16730(0, 2, 0.0);
    *(&self->super.super.super.isa + v3) = 0;
  }

  else
  {
  }
}

- (id)initForMiniClockWithFrame:(CGRect)frame device:(id)device colorsWrapper:(id)wrapper
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = ExactitudesFaceDialsView.init(frame:device:colorsWrapper:)(device, wrapper, x, y, width, height);

  return v11;
}

- (NTKExactitudesFaceDialsView)initWithFrame:(CGRect)frame
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