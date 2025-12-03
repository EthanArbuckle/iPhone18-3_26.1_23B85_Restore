@interface CRLCommandSetStroke
- (NSUUID)id;
- (_TtC8Freeform19CRLCommandSetStroke)init;
- (_TtC8Freeform19CRLCommandSetStroke)initWithId:(id)id stroke:(id)stroke;
- (_TtC8Freeform19CRLCommandSetStroke)initWithStyledItem:(id)item stroke:(id)stroke;
@end

@implementation CRLCommandSetStroke

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform19CRLCommandSetStroke_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform19CRLCommandSetStroke)initWithId:(id)id stroke:(id)stroke
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  strokeCopy = stroke;
  v9 = sub_10125660C(v7, stroke);

  return v9;
}

- (_TtC8Freeform19CRLCommandSetStroke)initWithStyledItem:(id)item stroke:(id)stroke
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  itemCopy = item;
  strokeCopy = stroke;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetStroke *)self initWithId:isa stroke:strokeCopy];

  return v15;
}

- (_TtC8Freeform19CRLCommandSetStroke)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end