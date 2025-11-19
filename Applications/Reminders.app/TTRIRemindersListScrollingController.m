@interface TTRIRemindersListScrollingController
- (_TtC9Reminders36TTRIRemindersListScrollingController)init;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
@end

@implementation TTRIRemindersListScrollingController

- (_TtC9Reminders36TTRIRemindersListScrollingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"scrollViewWillBeginDragging:"])
    {
      [v5 scrollViewWillBeginDragging:a3];
    }

    swift_unknownObjectRelease();
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v5 = self;
    sub_1005CA044();
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = self;
  sub_1005CA044();
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005CAEB4();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005CAFE8();
}

@end