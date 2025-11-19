@interface CRLFileEditor
+ (id)keyPathsForValuesAffectingSelectedObjectsSupportingReplacement;
- (NSSet)selectedObjectsSupportingReplacement;
- (_TtC8Freeform13CRLFileEditor)initWithInteractiveCanvasController:(id)a3;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)replaceCanvasElementInfo:(id)a3 withFilesAtURLs:(id)a4 allowedTypes:(id)a5 actionString:(id)a6 completion:(id)a7;
- (void)replaceSelectedMediaWithData:(id)a3 actionString:(id)a4 completion:(id)a5;
- (void)showMediaReplaceUI:(id)a3;
@end

@implementation CRLFileEditor

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_1008742A4(v7, x, y);
}

+ (id)keyPathsForValuesAffectingSelectedObjectsSupportingReplacement
{
  sub_1005BD9F8(&off_101874D88);
  sub_100874FB4(&unk_101874DA8);
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSSet)selectedObjectsSupportingReplacement
{
  v2 = self;
  v3 = [(CRLBoardItemEditor *)v2 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC8Freeform13CRLFileEditor)initWithInteractiveCanvasController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLFileEditor();
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
  sub_100874AC8(v8, v9, a4, v7, v11);
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
  sub_100874D00(a3, v12, a5, v13, a6, v11, v15);
  sub_1000C1014(v11);
  swift_unknownObjectRelease();
}

@end