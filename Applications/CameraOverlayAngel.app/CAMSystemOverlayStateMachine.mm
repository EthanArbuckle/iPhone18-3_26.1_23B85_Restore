@interface CAMSystemOverlayStateMachine
- (BOOL)wantsOverlayVisible;
- (CAMOverlayStateMachineDelegate)delegate;
- (NSString)name;
- (unint64_t)currentStage;
- (void)addReason:(int64_t)a3;
- (void)endAllStages;
- (void)handleStage:(unint64_t)a3 phase:(unint64_t)a4;
- (void)hideImmediately;
- (void)hideSwipeCoachingImmediately;
- (void)overlayVisibilityChangedWithReason:(int64_t)a3;
- (void)swipeCoachingVisibilityChangedWithReason:(int64_t)a3;
- (void)systemOverlayVisibility:(id)a3 changedForReason:(int64_t)a4;
@end

@implementation CAMSystemOverlayStateMachine

- (CAMOverlayStateMachineDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility);
  v3 = self;
  v4 = [v2 name];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (BOOL)wantsOverlayVisible
{
  v2 = self;
  v3 = sub_1000150A0();

  return v3 & 1;
}

- (void)hideImmediately
{
  v2 = *(self + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility);
  v3 = self;
  [v2 hideImmediately];
  sub_100015978();
  *(v3 + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) = 0;
}

- (void)addReason:(int64_t)a3
{
  v4 = self;
  sub_1000151D0(a3);
}

- (void)systemOverlayVisibility:(id)a3 changedForReason:(int64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1000152E4(a3, a4);
  swift_unknownObjectRelease();
}

- (void)overlayVisibilityChangedWithReason:(int64_t)a3
{
  v4 = self;
  sub_10001540C(a3);
}

- (void)hideSwipeCoachingImmediately
{
  v2 = self;
  sub_100015978();
}

- (void)swipeCoachingVisibilityChangedWithReason:(int64_t)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong overlayStateMachine:self swipeCoachingVisibilityChangedForReason:a3];

    swift_unknownObjectRelease();
  }
}

- (unint64_t)currentStage
{
  v3 = OBJC_IVAR___CAMSystemOverlayStateMachine_stageStack;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    return *(v4 + 8 * v5 + 24);
  }

  else
  {
    return 0;
  }
}

- (void)endAllStages
{
  v2 = self;
  sub_10001625C();
}

- (void)handleStage:(unint64_t)a3 phase:(unint64_t)a4
{
  v6 = self;
  sub_100016308(a3, a4);
}

@end