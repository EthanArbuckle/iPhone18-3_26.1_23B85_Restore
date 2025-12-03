@interface TTRIRemindersBoardRootViewDragInteractionHandler
- (_TtC9Reminders48TTRIRemindersBoardRootViewDragInteractionHandler)init;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    interactionCopy = interaction;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100076AB0();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1000776A8();
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    interactionCopy = interaction;
    itemCopy = item;
    swift_unknownObjectRetain();
    selfCopy = self;
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