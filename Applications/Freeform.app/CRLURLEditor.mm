@interface CRLURLEditor
+ (BOOL)canOpenItemURLFor:(id)for;
+ (void)openItemURLFor:(id)for;
- (_TtC8Freeform12CRLURLEditor)initWithInteractiveCanvasController:(id)controller;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)tearDown;
- (void)willResignCurrentEditor;
@end

@implementation CRLURLEditor

- (void)tearDown
{
  selfCopy = self;
  sub_1009225A8();
}

- (void)willResignCurrentEditor
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_10064191C(0, 0, v5, &unk_101488188, v9);

  v10 = type metadata accessor for CRLURLEditor();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(CRLBoardItemEditor *)&v11 willResignCurrentEditor];
}

+ (BOOL)canOpenItemURLFor:(id)for
{
  type metadata accessor for CRLBoardItem(0);
  sub_100928BCC(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_10092888C(v3);

  return v4 & 1;
}

+ (void)openItemURLFor:(id)for
{
  forCopy = for;
  sub_100928914(forCopy);
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  selfCopy = self;
  sub_100922D2C(arrayCopy, x, y);
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

  v8 = sub_100923550(action, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (_TtC8Freeform12CRLURLEditor)initWithInteractiveCanvasController:(id)controller
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLURLEditor_editURLAlert) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLURLEditor_reloadTask) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLURLEditor____lazy_storage___insertingHelper) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform12CRLURLEditor_replaceTask) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLURLEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:controller];
}

@end