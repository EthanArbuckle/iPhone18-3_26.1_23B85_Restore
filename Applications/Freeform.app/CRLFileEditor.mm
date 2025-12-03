@interface CRLFileEditor
+ (id)keyPathsForValuesAffectingSelectedObjectsSupportingReplacement;
- (NSSet)selectedObjectsSupportingReplacement;
- (_TtC8Freeform13CRLFileEditor)initWithInteractiveCanvasController:(id)controller;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)replaceCanvasElementInfo:(id)info withFilesAtURLs:(id)ls allowedTypes:(id)types actionString:(id)string completion:(id)completion;
- (void)replaceSelectedMediaWithData:(id)data actionString:(id)string completion:(id)completion;
- (void)showMediaReplaceUI:(id)i;
@end

@implementation CRLFileEditor

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  selfCopy = self;
  sub_1008742A4(arrayCopy, x, y);
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
  selfCopy = self;
  boardItems = [(CRLBoardItemEditor *)selfCopy boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1006D2240();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC8Freeform13CRLFileEditor)initWithInteractiveCanvasController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLFileEditor();
  return [(CRLBoardItemEditor *)&v5 initWithInteractiveCanvasController:controller];
}

- (void)showMediaReplaceUI:(id)i
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(CRLMediaReplacingHelper) initWithEditor:selfCopy];
  sub_100020E58(v6, v6[3]);
  [v5 showMediaReplaceUI:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  sub_100005070(v6);
}

- (void)replaceSelectedMediaWithData:(id)data actionString:(id)string completion:(id)completion
{
  v7 = _Block_copy(completion);
  type metadata accessor for CRLAsset();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (string)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    string = v10;
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
  selfCopy = self;
  sub_100874AC8(v8, v9, string, v7, v11);
  sub_1000C1014(v7);
}

- (void)replaceCanvasElementInfo:(id)info withFilesAtURLs:(id)ls allowedTypes:(id)types actionString:(id)string completion:(id)completion
{
  v11 = _Block_copy(completion);
  type metadata accessor for URL();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (types)
  {
    types = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (string)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    string = v14;
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
  selfCopy = self;
  sub_100874D00(info, v12, types, v13, string, v11, v15);
  sub_1000C1014(v11);
  swift_unknownObjectRelease();
}

@end