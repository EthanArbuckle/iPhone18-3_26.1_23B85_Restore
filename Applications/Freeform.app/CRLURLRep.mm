@interface CRLURLRep
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
- (_TtC8Freeform10CRLURLItem)item;
- (_TtC8Freeform9CRLURLRep)initWithLayout:(id)a3 canvas:(id)a4;
- (void)cancelReload:(id)a3;
- (void)enterPreviewMode;
- (void)processChangedProperty:(unint64_t)a3;
- (void)willBeRemoved;
@end

@implementation CRLURLRep

- (_TtC8Freeform9CRLURLRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_10070C314(v5, a4);
}

- (void)willBeRemoved
{
  v2 = self;
  sub_10070C578();
}

- (void)processChangedProperty:(unint64_t)a3
{
  v4 = self;
  sub_10070C9E8(a3);
}

- (_TtC8Freeform10CRLURLItem)item
{
  v2 = self;
  v3 = sub_10070CFB4();

  return v3;
}

- (void)cancelReload:(id)a3
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

  sub_10070D3AC();

  sub_1005E09AC(v6);
}

- (void)enterPreviewMode
{
  v5 = self;
  v2 = [(CRLCanvasRep *)v5 info];
  type metadata accessor for CRLBoardItem(0);
  v3 = swift_isaMask & *swift_dynamicCastClassUnconditional();
  v4 = (*(v3 + 624))();
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_10125C4B4();
  }

  else
  {
    sub_10125D32C();
  }
}

- (NSURL)previewItemURL
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = self;
  CRLLinkViewHostingRep.item.getter();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 8))(ObjectType, v8);

  swift_unknownObjectRelease();
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v5, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v15 = v14;
    (*(v11 + 8))(v5, v10);
    v13 = v15;
  }

  return v13;
}

- (NSString)previewItemTitle
{
  v2 = self;
  CRLLinkViewHostingRep.item.getter();
  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 16))(ObjectType, v4);
  v7 = v6;

  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end