@interface CRLTableEditor
- (_TtC8Freeform14CRLTableEditor)initWithInteractiveCanvasController:(id)controller;
- (_TtC8Freeform24CRLMultiselectResizeInfo)multiSelectResizeInfo;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)delete:(id)delete;
- (void)hideTableAxisEditMenu;
@end

@implementation CRLTableEditor

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

  v8 = sub_1011CA97C(action, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (void)delete:(id)delete
{
  if (delete)
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

  sub_1011D5EB0(v6);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  selfCopy = self;
  sub_1011D67E8(arrayCopy, x, y);
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLTableEditor();
  [(CRLBoardItemEditor *)&v7 addMiniFormatterElementsToArray:array atPoint:x, y];
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  sub_1005B981C(&qword_101A09750);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selectionCopy = selection;
  pathCopy = path;
  selfCopy = self;
  v12 = sub_1011D7978(selectionCopy, v8, pathCopy);

  return v12;
}

- (_TtC8Freeform24CRLMultiselectResizeInfo)multiSelectResizeInfo
{
  selfCopy = self;
  v3 = sub_1011D82F0();

  return v3;
}

- (_TtC8Freeform14CRLTableEditor)initWithInteractiveCanvasController:(id)controller
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform14CRLTableEditor____lazy_storage___tableAxisEditMenuInteraction) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLTableEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:controller];
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  sub_100006370(0, &qword_1019F6C00);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  v6.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v10, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v8).super.super.isa;

  return v6.super.super.isa;
}

- (void)hideTableAxisEditMenu
{
  selfCopy = self;
  v2 = sub_1011D6770();
  [v2 dismissMenu];
}

@end