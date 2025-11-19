@interface CRLFileItem
- (BOOL)placeHolderDataNeedsDownload;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem;
- (NSString)previewTooltip;
- (NSURL)url;
- (_TtC8Freeform8CRLAsset)metadataPayload;
- (id)promisedDataForPublicType:(id)a3;
- (void)updateGeometryToReplaceBoardItem:(id)a3;
@end

@implementation CRLFileItem

- (NSURL)url
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = self;
  sub_100BEBAE8(v5);

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (_TtC8Freeform8CRLAsset)metadataPayload
{
  v2 = self;
  v3 = sub_100BEBD9C();

  return v3;
}

- (NSString)previewTooltip
{
  sub_100BEFCD0();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (Class)layoutClass
{
  type metadata accessor for CRLFileLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLFileRep();

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLFileEditor();

  return swift_getObjCClassFromMetadata();
}

- (NSArray)customPublicTypesToPromiseWhenCopyingSingleBoardItem
{
  v2 = self;
  sub_100BEED74();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
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

  v11 = sub_100D8E064(v8);
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

- (void)updateGeometryToReplaceBoardItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100BEF42C(v4);
}

- (BOOL)placeHolderDataNeedsDownload
{
  v2 = self;
  v3 = sub_100BEBD9C();
  v4 = *&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v5 = *&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v3[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v4);
  v6 = (*(v5 + 64))(v4, v5);

  return v6 & 1;
}

@end