@interface TTRIRemindersListScrollingController
- (_TtC9Reminders36TTRIRemindersListScrollingController)init;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation TTRIRemindersListScrollingController

- (_TtC9Reminders36TTRIRemindersListScrollingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"scrollViewWillBeginDragging:"])
    {
      [v5 scrollViewWillBeginDragging:dragging];
    }

    swift_unknownObjectRelease();
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    selfCopy = self;
    sub_1005CA044();
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  sub_1005CA044();
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_1005CAEB4();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1005CAFE8();
}

@end