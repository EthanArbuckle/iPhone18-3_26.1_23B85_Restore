@interface CRLCommandSetStroke
- (NSUUID)id;
- (_TtC8Freeform19CRLCommandSetStroke)init;
- (_TtC8Freeform19CRLCommandSetStroke)initWithId:(id)a3 stroke:(id)a4;
- (_TtC8Freeform19CRLCommandSetStroke)initWithStyledItem:(id)a3 stroke:(id)a4;
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

- (_TtC8Freeform19CRLCommandSetStroke)initWithId:(id)a3 stroke:(id)a4
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = sub_10125660C(v7, a4);

  return v9;
}

- (_TtC8Freeform19CRLCommandSetStroke)initWithStyledItem:(id)a3 stroke:(id)a4
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(a3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  v12 = a3;
  v13 = a4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetStroke *)self initWithId:isa stroke:v13];

  return v15;
}

- (_TtC8Freeform19CRLCommandSetStroke)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end