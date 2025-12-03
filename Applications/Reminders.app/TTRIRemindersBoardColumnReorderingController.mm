@interface TTRIRemindersBoardColumnReorderingController
- (_TtC9Reminders44TTRIRemindersBoardColumnReorderingController)init;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidMove:(id)move;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
@end

@implementation TTRIRemindersBoardColumnReorderingController

- (_TtC9Reminders44TTRIRemindersBoardColumnReorderingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100315CC0(session);

  swift_unknownObjectRelease();
  sub_100003540(0, &qword_10076BAC0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003164F0(session);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_100316CEC();
}

- (void)dragInteraction:(id)interaction sessionDidMove:(id)move
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100316E44(move);

  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  if (sub_100315AE0(session, selfCopy))
  {
    sub_10031426C(5u);
  }

  sub_10031426C(6u);
  swift_unknownObjectRelease();
}

@end