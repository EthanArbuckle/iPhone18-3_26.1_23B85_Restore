@interface NTKExactitudesDialView
- (NTKExactitudesDialView)initWithCoder:(id)coder;
- (NTKExactitudesDialView)initWithFrame:(CGRect)frame;
- (int64_t)state;
- (void)hideOffscreenSlices;
- (void)layoutSubviews;
- (void)setState:(int64_t)state;
@end

@implementation NTKExactitudesDialView

- (void)hideOffscreenSlices
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_9DE8();
}

- (int64_t)state
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___NTKExactitudesDialView__state);

  return v3;
}

- (void)setState:(int64_t)state
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___NTKExactitudesDialView__state);
  *(&self->super.super.super.isa + OBJC_IVAR___NTKExactitudesDialView__state) = state;
  selfCopy = self;
  sub_F1A0(v5);
}

- (NTKExactitudesDialView)initWithCoder:(id)coder
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_115D0();
}

- (void)layoutSubviews
{
  ObjectType = swift_getObjectType();
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = ObjectType;
  [(NTKExactitudesDialView *)&v4 layoutSubviews];
}

- (NTKExactitudesDialView)initWithFrame:(CGRect)frame
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