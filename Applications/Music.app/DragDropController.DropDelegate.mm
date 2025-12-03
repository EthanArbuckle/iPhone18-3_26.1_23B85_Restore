@interface DragDropController.DropDelegate
- (_TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate)init;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
@end

@implementation DragDropController.DropDelegate

- (_TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_canHandleSession);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onPerformDrop);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidExitOrEnd);
  v7 = type metadata accessor for DragDropController.DropDelegate();
  *v6 = 0;
  v6[1] = 0;
  v9.receiver = self;
  v9.super_class = v7;
  return [(DragDropController.DropDelegate *)&v9 init];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC5Music18DragDropControllerP33_A2D93B940709760920FE5612D029DD8B12DropDelegate_onDropSessionDidUpdate);
  if (v4)
  {
    interactionCopy = interaction;
    swift_unknownObjectRetain();
    selfCopy = self;
    sub_100030444(v4);
    v9 = v4(update);
    sub_100020438(v4);

    swift_unknownObjectRelease();
    v10 = v9;
  }

  else
  {
    v10 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  }

  return v10;
}

@end