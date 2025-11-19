@interface CRLTableCellEditor
- (_TtC8Freeform18CRLTableCellEditor)init;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)setEditingCoordinator:(id)a3;
- (void)setEditorController:(id)a3;
- (void)willResignCurrentEditor;
@end

@implementation CRLTableCellEditor

- (void)setEditorController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editorController) = a3;
  v3 = a3;
}

- (void)setEditingCoordinator:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editingCoordinator);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform18CRLTableCellEditor_editingCoordinator) = a3;
  v3 = a3;
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1011C6444(v8);
}

- (void)willResignCurrentEditor
{
  v2 = self;
  sub_1011C4324();
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_1011C697C(v5);
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_1011C4518(a3, v10);

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