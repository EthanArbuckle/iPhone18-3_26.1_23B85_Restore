@interface CRLWPStickyNoteEditor
- (_TtC8Freeform21CRLWPStickyNoteEditor)initWithInteractiveCanvasController:(id)controller;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)saveDefaultInsertionPreset:(id)preset;
- (void)updatePreset:(id)preset;
@end

@implementation CRLWPStickyNoteEditor

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

  v8 = sub_100FE5988(action, v10);

  sub_1005E09AC(v10);
  return v8;
}

- (void)updatePreset:(id)preset
{
  if (preset)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100FE5B88(v6);

  sub_1005E09AC(v6);
}

- (void)saveDefaultInsertionPreset:(id)preset
{
  if (preset)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100FE6F14();

  sub_1005E09AC(v6);
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  selfCopy = self;
  sub_100FE7BAC(arrayCopy, x, y);
}

- (_TtC8Freeform21CRLWPStickyNoteEditor)initWithInteractiveCanvasController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLWPStickyNoteEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:controller];
}

@end