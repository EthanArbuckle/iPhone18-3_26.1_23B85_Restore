@interface CRLUSDZEditor
- (NSSet)selectedObjectsSupportingReplacement;
- (_TtC8Freeform13CRLUSDZEditor)initWithInteractiveCanvasController:(id)controller;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)compress:(id)compress;
- (void)replaceCanvasElementInfo:(id)info withFilesAtURLs:(id)ls allowedTypes:(id)types actionString:(id)string completion:(id)completion;
- (void)replaceSelectedMediaWithData:(id)data actionString:(id)string completion:(id)completion;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)showMediaReplaceUI:(id)i;
@end

@implementation CRLUSDZEditor

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  selectionCopy = selection;
  toSelectionCopy = toSelection;
  selfCopy = self;
  sub_1008E8AA4(selection, toSelectionCopy, flags);
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  selfCopy = self;
  sub_1008EA1B4(arrayCopy, x, y);
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  selfCopy = self;
  sub_1008EA910(arrayCopy, x, y);
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

  v8 = sub_1008EB8B0(action, v10);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (void)compress:(id)compress
{
  if (compress)
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

  sub_1008EBBC4();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (_TtC8Freeform13CRLUSDZEditor)initWithInteractiveCanvasController:(id)controller
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___commandProvider) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___asyncRenderer) = xmmword_101482150;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLUSDZEditor();
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
  sub_1008F1E0C(v8, v9, string, v7, v11);
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
  sub_1008F2044(info, v12, types, v13, string, v11, v15);
  sub_1000C1014(v11);
  swift_unknownObjectRelease();
}

- (NSSet)selectedObjectsSupportingReplacement
{
  selfCopy = self;
  boardItems = [(CRLBoardItemEditor *)selfCopy boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end