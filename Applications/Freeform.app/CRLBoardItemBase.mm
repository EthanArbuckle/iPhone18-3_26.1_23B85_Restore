@interface CRLBoardItemBase
- (BOOL)aspectRatioLocked;
- (BOOL)canBeGrouped;
- (BOOL)isSupported;
- (BOOL)locked;
- (BOOL)needsDownload;
- (CRLCanvasInfoGeometry)geometry;
- (CRLShadow)shadow;
- (NSArray)stringContentForSearch;
- (NSString)accessibilityDescription;
- (NSUUID)id;
- (NSUUID)parentUUID;
- (_TtC8Freeform16CRLBoardItemBase)init;
- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3;
- (int64_t)hash;
- (void)setAccessibilityDescription:(id)a3;
- (void)setAspectRatioLocked:(BOOL)a3;
- (void)setGeometry:(id)a3;
- (void)setLocked:(BOOL)a3;
- (void)setShadow:(id)a3;
@end

@implementation CRLBoardItemBase

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSUUID)parentUUID
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 272);
  v7 = self;

  v6(v8);

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v5, v9);
    v12 = isa;
  }

  return v12;
}

- (CRLCanvasInfoGeometry)geometry
{
  v2 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setGeometry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1009AF540(v4);
}

- (BOOL)locked
{
  v2 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 368);
  v3 = self;

  LOBYTE(v2) = v2(v4);

  return v2 & 1;
}

- (void)setLocked:(BOOL)a3
{
  v3 = a3;
  v8 = self;
  if (sub_1011255D4(v8))
  {
    v4 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v5 = *(**&v8->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 368);

    LODWORD(v5) = v5(v6) & 1;

    if (v5 != v3)
    {
      v7 = *(**&v8->_TtC8Freeform12CRLBoardItem_opaque[v4] + 376);

      v7(v3);
    }
  }
}

- (BOOL)canBeGrouped
{
  v2 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 368);
  v3 = self;

  LOBYTE(v2) = v2(v4);

  return (v2 & 1) == 0;
}

- (BOOL)aspectRatioLocked
{
  v2 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);
  v3 = self;

  LOBYTE(v2) = v2(v4);

  return v2 & 1;
}

- (void)setAspectRatioLocked:(BOOL)a3
{
  v3 = a3;
  v8 = self;
  if (sub_1011255D4(v8))
  {
    v4 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v5 = *(**&v8->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 392);

    LODWORD(v5) = v5(v6) & 1;

    if (v5 != v3)
    {
      v7 = *(**&v8->_TtC8Freeform12CRLBoardItem_opaque[v4] + 400);

      v7(v3);
    }
  }
}

- (NSString)accessibilityDescription
{
  v2 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 416);
  v3 = self;

  v2(v4);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setAccessibilityDescription:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_1009B02A4(v4, v6);
}

- (CRLShadow)shadow
{
  v2 = *(**&self->_TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);
  v3 = self;

  v5 = v2(v4);

  return v5;
}

- (void)setShadow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1009B5F44(a3);
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_1009BD4E8();

  return v3;
}

- (id)getReferencedAssetIDsWithIncludeChildren:(BOOL)a3
{
  v3 = self;

  sub_100743DF0();

  type metadata accessor for UUID();
  sub_1009C2C74(&qword_1019FB870, &type metadata accessor for UUID);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (BOOL)isSupported
{
  v2 = self;
  v3 = sub_1009AE78C();

  return v3;
}

- (BOOL)needsDownload
{
  v2 = self;
  v3 = sub_1009B07F4();

  return v3 & 1;
}

- (NSArray)stringContentForSearch
{
  v2 = self;
  sub_1009B4F54();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC8Freeform16CRLBoardItemBase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end