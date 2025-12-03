@interface CAMSystemOverlayStateMachine
- (BOOL)wantsOverlayVisible;
- (CAMOverlayStateMachineDelegate)delegate;
- (NSString)name;
- (unint64_t)currentStage;
- (void)addReason:(int64_t)reason;
- (void)endAllStages;
- (void)handleStage:(unint64_t)stage phase:(unint64_t)phase;
- (void)hideImmediately;
- (void)hideSwipeCoachingImmediately;
- (void)overlayVisibilityChangedWithReason:(int64_t)reason;
- (void)swipeCoachingVisibilityChangedWithReason:(int64_t)reason;
- (void)systemOverlayVisibility:(id)visibility changedForReason:(int64_t)reason;
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
  selfCopy = self;
  name = [v2 name];
  if (!name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = String._bridgeToObjectiveC()();
  }

  return name;
}

- (BOOL)wantsOverlayVisible
{
  selfCopy = self;
  v3 = sub_1000150A0();

  return v3 & 1;
}

- (void)hideImmediately
{
  v2 = *(self + OBJC_IVAR___CAMSystemOverlayStateMachine_visibility);
  selfCopy = self;
  [v2 hideImmediately];
  sub_100015978();
  *(selfCopy + OBJC_IVAR___CAMSystemOverlayStateMachine__wantsOverlayVisible) = 0;
}

- (void)addReason:(int64_t)reason
{
  selfCopy = self;
  sub_1000151D0(reason);
}

- (void)systemOverlayVisibility:(id)visibility changedForReason:(int64_t)reason
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000152E4(visibility, reason);
  swift_unknownObjectRelease();
}

- (void)overlayVisibilityChangedWithReason:(int64_t)reason
{
  selfCopy = self;
  sub_10001540C(reason);
}

- (void)hideSwipeCoachingImmediately
{
  selfCopy = self;
  sub_100015978();
}

- (void)swipeCoachingVisibilityChangedWithReason:(int64_t)reason
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong overlayStateMachine:self swipeCoachingVisibilityChangedForReason:reason];

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
  selfCopy = self;
  sub_10001625C();
}

- (void)handleStage:(unint64_t)stage phase:(unint64_t)phase
{
  selfCopy = self;
  sub_100016308(stage, phase);
}

@end