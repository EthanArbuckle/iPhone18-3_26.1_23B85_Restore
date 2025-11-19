@interface CRLCommandSetImageMedia
- (NSUUID)id;
- (_TtC8Freeform23CRLCommandSetImageMedia)init;
- (_TtC8Freeform23CRLCommandSetImageMedia)initWithId:(id)a3 imageData:(id)a4 thumbnailData:(id)a5;
- (_TtC8Freeform23CRLCommandSetImageMedia)initWithImageItem:(id)a3 imageData:(id)a4 thumbnailData:(id)a5;
@end

@implementation CRLCommandSetImageMedia

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform23CRLCommandSetImageMedia)initWithId:(id)a3 imageData:(id)a4 thumbnailData:(id)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v9 + 16))(self + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_id, v11, v8);
  *(self + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_imageData) = a4;
  *(self + OBJC_IVAR____TtC8Freeform23CRLCommandSetImageMedia_thumbnailData) = a5;
  v12 = type metadata accessor for CRLCommandSetImageMedia();
  v17.receiver = self;
  v17.super_class = v12;
  v13 = a4;
  v14 = a5;
  v15 = [(CRLCommand *)&v17 init];
  (*(v9 + 8))(v11, v8);
  return v15;
}

- (_TtC8Freeform23CRLCommandSetImageMedia)initWithImageItem:(id)a3 imageData:(id)a4 thumbnailData:(id)a5
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(a3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v11);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v9);
  v18 = [(CRLCommandSetImageMedia *)self initWithId:isa imageData:v15 thumbnailData:v16];

  return v18;
}

- (_TtC8Freeform23CRLCommandSetImageMedia)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end