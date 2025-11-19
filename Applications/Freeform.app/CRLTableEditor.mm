@interface CRLTableEditor
- (_TtC8Freeform14CRLTableEditor)initWithInteractiveCanvasController:(id)a3;
- (_TtC8Freeform24CRLMultiselectResizeInfo)multiSelectResizeInfo;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)delete:(id)a3;
- (void)hideTableAxisEditMenu;
@end

@implementation CRLTableEditor

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

  v8 = sub_1011CA97C(a3, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (void)delete:(id)a3
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

  sub_1011D5EB0(v6);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1011D67E8(v7, x, y);
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLTableEditor();
  [(CRLBoardItemEditor *)&v7 addMiniFormatterElementsToArray:a3 atPoint:x, y];
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  sub_1005B981C(&qword_101A09750);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a5;
  v11 = self;
  v12 = sub_1011D7978(v9, v8, v10);

  return v12;
}

- (_TtC8Freeform24CRLMultiselectResizeInfo)multiSelectResizeInfo
{
  v2 = self;
  v3 = sub_1011D82F0();

  return v3;
}

- (_TtC8Freeform14CRLTableEditor)initWithInteractiveCanvasController:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform14CRLTableEditor____lazy_storage___tableAxisEditMenuInteraction) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLTableEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:a3];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
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
  v3 = self;
  v2 = sub_1011D6770();
  [v2 dismissMenu];
}

@end