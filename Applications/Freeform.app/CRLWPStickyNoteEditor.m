@interface CRLWPStickyNoteEditor
- (_TtC8Freeform21CRLWPStickyNoteEditor)initWithInteractiveCanvasController:(id)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)saveDefaultInsertionPreset:(id)a3;
- (void)updatePreset:(id)a3;
@end

@implementation CRLWPStickyNoteEditor

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

  v8 = sub_100FE5988(a3, v10);

  sub_1005E09AC(v10);
  return v8;
}

- (void)updatePreset:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100FE5B88(v6);

  sub_1005E09AC(v6);
}

- (void)saveDefaultInsertionPreset:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100FE6F14();

  sub_1005E09AC(v6);
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_100FE7BAC(v7, x, y);
}

- (_TtC8Freeform21CRLWPStickyNoteEditor)initWithInteractiveCanvasController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLWPStickyNoteEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:a3];
}

@end