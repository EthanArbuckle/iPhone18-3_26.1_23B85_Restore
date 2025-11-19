@interface DragDropController.DragDelegate
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
@end

@implementation DragDropController.DragDelegate

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider);
  if (v4)
  {
    v7 = a3;
    swift_unknownObjectRetain();
    v8 = self;
    sub_100030444(v4);
    v4(a4);
    sub_100020438(v4);

    swift_unknownObjectRelease();
  }

  sub_100009F78(0, &qword_10118B920);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_dragItemsProvider);
  if (v5)
  {
    v8 = a3;
    swift_unknownObjectRetain();
    v9 = self;
    sub_100030444(v5);
    v5(a4);
    sub_100020438(v5);

    swift_unknownObjectRelease();
  }

  sub_100009F78(0, &qword_10118B920);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DragDelegate_onDragSessionDidEnd);
  if (v5)
  {
    swift_unknownObjectRetain();
    v8 = self;
    sub_100030444(v5);
    v5(a4);
    swift_unknownObjectRelease();

    sub_100020438(v5);
  }
}

@end