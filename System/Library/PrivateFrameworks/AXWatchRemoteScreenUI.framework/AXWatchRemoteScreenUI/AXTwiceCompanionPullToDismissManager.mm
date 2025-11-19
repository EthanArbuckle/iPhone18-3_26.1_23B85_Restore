@interface AXTwiceCompanionPullToDismissManager
- (_TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)interactionControllerForDismissal:(id)a3;
@end

@implementation AXTwiceCompanionPullToDismissManager

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_23D6D2670(v4);

  return v6;
}

- (id)interactionControllerForDismissal:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_23D6D285C();
  swift_unknownObjectRelease();

  return v5;
}

- (_TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_isInteractive) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI36AXTwiceCompanionPullToDismissManager_percentDrivenInteractive) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXTwiceCompanionPullToDismissManager();
  return [(AXTwiceCompanionPullToDismissManager *)&v3 init];
}

@end