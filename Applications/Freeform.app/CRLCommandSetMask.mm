@interface CRLCommandSetMask
- (NSUUID)id;
- (_TtC8Freeform17CRLCommandSetMask)init;
- (_TtC8Freeform17CRLCommandSetMask)initWithId:(id)id maskInfo:(id)info;
- (_TtC8Freeform17CRLCommandSetMask)initWithImageItem:(id)item maskInfo:(id)info;
@end

@implementation CRLCommandSetMask

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform17CRLCommandSetMask)initWithId:(id)id maskInfo:(id)info
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v7 + 16))(self + OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_id, v9, v6);
  *(self + OBJC_IVAR____TtC8Freeform17CRLCommandSetMask_maskInfo) = info;
  v10 = type metadata accessor for CRLCommandSetMask();
  v14.receiver = self;
  v14.super_class = v10;
  infoCopy = info;
  v12 = [(CRLCommand *)&v14 init];
  (*(v7 + 8))(v9, v6);
  return v12;
}

- (_TtC8Freeform17CRLCommandSetMask)initWithImageItem:(id)item maskInfo:(id)info
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  itemCopy = item;
  infoCopy = info;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetMask *)self initWithId:isa maskInfo:infoCopy];

  return v15;
}

- (_TtC8Freeform17CRLCommandSetMask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end