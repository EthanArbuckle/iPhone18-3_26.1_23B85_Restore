@interface DragDropController.DragDelegate
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
@end

@implementation DragDropController.DragDelegate

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider);
  if (v4)
  {
    interactionCopy = interaction;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100030444(v4);
    v4(session);
    sub_100020438(v4);

    swift_unknownObjectRelease();
  }

  sub_100009F78(0, &qword_10118B920);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider);
  if (v5)
  {
    interactionCopy = interaction;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100030444(v5);
    v5(session);
    sub_100020438(v5);

    swift_unknownObjectRelease();
  }

  sub_100009F78(0, &qword_10118B920);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd);
  if (v5)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100030444(v5);
    v5(session);
    swift_unknownObjectRelease();

    sub_100020438(v5);
  }
}

@end