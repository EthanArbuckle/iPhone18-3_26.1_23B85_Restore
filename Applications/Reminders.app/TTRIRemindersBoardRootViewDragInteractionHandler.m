@interface TTRIRemindersBoardRootViewDragInteractionHandler
- (_TtC9Reminders48TTRIRemindersBoardRootViewDragInteractionHandler)init;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
@end

@implementation TTRIRemindersBoardRootViewDragInteractionHandler

- (_TtC9Reminders48TTRIRemindersBoardRootViewDragInteractionHandler)init
{
  ObjectType = swift_getObjectType();
  *&self->delegate[OBJC_IVAR____TtC9Reminders48TTRIRemindersBoardRootViewDragInteractionHandler_delegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TTRIRemindersBoardRootViewDragInteractionHandler *)&v5 init];
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a3;
    swift_unknownObjectRetain();
    v7 = self;
    sub_100076AB0();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1000776A8();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = a3;
    v9 = a4;
    swift_unknownObjectRetain();
    v10 = self;
    v11 = sub_100077458();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end