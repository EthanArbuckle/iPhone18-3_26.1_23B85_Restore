@interface CRLURLItem
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSArray)stringContentForSearch;
- (NSString)previewTooltip;
- (_TtC8Freeform10CRLURLItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 url:(id)a5 geometry:(id)a6;
- (_TtC8Freeform8CRLAsset)metadataPayload;
- (id)promisedDataForPublicType:(id)a3;
- (id)promisedStringForCopy;
- (void)setHyperlinkURL:(id)a3;
@end

@implementation CRLURLItem

- (void)setHyperlinkURL:(id)a3
{
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_10000CAAC(v6, &unk_1019F33C0);
}

- (_TtC8Freeform8CRLAsset)metadataPayload
{
  v2 = self;
  v3 = sub_100A7C258();

  return v3;
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  sub_1005B981C(&unk_1019F61D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146BDE0;
  static UTType.url.getter();
  v10 = UTType.identifier.getter();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v8, v2);
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  static UTType.utf8PlainText.getter();
  v14 = UTType.identifier.getter();
  v16 = v15;
  v13(v5, v2);
  *(v9 + 48) = v14;
  *(v9 + 56) = v16;
  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v17.super.isa;
}

- (id)promisedDataForPublicType:(id)a3
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = self;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_100A7CD48();
  v13 = v12;

  (*(v6 + 8))(v8, v5);
  v14 = 0;
  if (v13 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100025870(v11, v13);
    v14 = isa;
  }

  return v14;
}

- (id)promisedStringForCopy
{
  v2 = self;
  sub_100A7D164();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)previewTooltip
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (Class)layoutClass
{
  type metadata accessor for CRLURLLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLURLRep();

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLURLEditor();

  return swift_getObjCClassFromMetadata();
}

- (NSArray)stringContentForSearch
{
  v2 = self;
  sub_100A7FC20();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC8Freeform10CRLURLItem)initWithStore:(id)a3 parentContainerUUID:(id)a4 url:(id)a5 geometry:(id)a6
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a6;
  return sub_100A80148(v14, v13, v10, a6);
}

@end