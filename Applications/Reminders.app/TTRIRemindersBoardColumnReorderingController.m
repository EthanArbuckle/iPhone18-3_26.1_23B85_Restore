@interface TTRIRemindersBoardColumnReorderingController
- (_TtC9Reminders44TTRIRemindersBoardColumnReorderingController)init;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
@end

@implementation TTRIRemindersBoardColumnReorderingController

- (_TtC9Reminders44TTRIRemindersBoardColumnReorderingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100315CC0(a4);

  swift_unknownObjectRelease();
  sub_100003540(0, &qword_10076BAC0);
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  sub_1003164F0(a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100316CEC();
}

- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100316E44(a4);

  swift_unknownObjectRelease();
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = self;
  if (sub_100315AE0(a4, v7))
  {
    sub_10031426C(5u);
  }

  sub_10031426C(6u);
  swift_unknownObjectRelease();
}

@end