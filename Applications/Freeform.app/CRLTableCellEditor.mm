@interface CRLTableCellEditor
- (_TtC8Freeform18CRLTableCellEditor)init;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)setEditingCoordinator:(id)coordinator;
- (void)setEditorController:(id)controller;
- (void)willResignCurrentEditor;
@end

@implementation CRLTableCellEditor

- (void)setEditorController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) = controller;
  controllerCopy = controller;
}

- (void)setEditingCoordinator:(id)coordinator
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editingCoordinator);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editingCoordinator) = coordinator;
  coordinatorCopy = coordinator;
}

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  selectionCopy = selection;
  toSelectionCopy = toSelection;
  selfCopy = self;
  sub_1011C6444(toSelectionCopy);
}

- (void)willResignCurrentEditor
{
  selfCopy = self;
  sub_1011C4324();
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  arrayCopy = array;
  selfCopy = self;
  sub_1011C697C(arrayCopy);
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_1011C4518(action, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (_TtC8Freeform18CRLTableCellEditor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end