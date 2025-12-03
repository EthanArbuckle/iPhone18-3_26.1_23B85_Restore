@interface SoundLevelView
- (_TtC16HearingAppPlugin14SoundLevelView)initWithCoder:(id)coder;
- (_TtC16HearingAppPlugin14SoundLevelView)initWithFrame:(CGRect)frame;
@end

@implementation SoundLevelView

- (_TtC16HearingAppPlugin14SoundLevelView)initWithCoder:(id)coder
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HearingAppPlugin14SoundLevelView_headerStackView) = 0;
  result = sub_29D660594();
  __break(1u);
  return result;
}

- (_TtC16HearingAppPlugin14SoundLevelView)initWithFrame:(CGRect)frame
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