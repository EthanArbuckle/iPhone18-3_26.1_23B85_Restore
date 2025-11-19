@interface CRLUSDZEditor
- (NSSet)selectedObjectsSupportingReplacement;
- (_TtC8Freeform13CRLUSDZEditor)initWithInteractiveCanvasController:(id)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)compress:(id)a3;
- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7;
- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)showMediaReplaceUI:(id)a3;
@end

@implementation CRLUSDZEditor

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1008E8AA4(a3, v10, a5);
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1008EA1B4(v7, x, y);
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1008EA910(v7, x, y);
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

  v8 = sub_1008EB8B0(a3, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (void)compress:(id)a3
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

  sub_1008EBBC4();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (_TtC8Freeform13CRLUSDZEditor)initWithInteractiveCanvasController:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___commandProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___asyncRenderer) = xmmword_101482150;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUSDZEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:a3];
}

- (void)showMediaReplaceUI:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(CRLMediaReplacingHelper) initWithEditor:v4];
  sub_100020E58(v6, v6[3]);
  [v5 showMediaReplaceUI:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  sub_100005070(v6);
}

- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  type metadata accessor for CRLAsset();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
    if (v7)
    {
LABEL_3:
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      v7 = sub_100874FAC;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = self;
  sub_1008F1E0C(v8, v9, a4, v7, v11);
  sub_1000C1014(v7);
}

- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  type metadata accessor for URL();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a6)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v14;
    if (v11)
    {
LABEL_5:
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      v11 = sub_100685EBC;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_5;
    }
  }

  v15 = 0;
LABEL_8:
  swift_unknownObjectRetain();
  v16 = self;
  sub_1008F2044(a3, v12, a5, v13, a6, v11, v15);
  sub_1000C1014(v11);
  swift_unknownObjectRelease();
}

- (NSSet)selectedObjectsSupportingReplacement
{
  v2 = self;
  v3 = [(CRLBoardItemEditor *)v2 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end