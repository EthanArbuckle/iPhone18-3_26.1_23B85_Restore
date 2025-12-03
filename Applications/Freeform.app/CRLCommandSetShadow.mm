@interface CRLCommandSetShadow
- (NSUUID)id;
- (_TtC8Freeform19CRLCommandSetShadow)init;
- (_TtC8Freeform19CRLCommandSetShadow)initWithBoardItem:(id)item shadow:(id)shadow;
- (_TtC8Freeform19CRLCommandSetShadow)initWithId:(id)id shadow:(id)shadow;
@end

@implementation CRLCommandSetShadow

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform19CRLCommandSetShadow_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform19CRLCommandSetShadow)initWithId:(id)id shadow:(id)shadow
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  shadowCopy = shadow;
  v9 = sub_100AE4EDC(v7, shadow);

  return v9;
}

- (_TtC8Freeform19CRLCommandSetShadow)initWithBoardItem:(id)item shadow:(id)shadow
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *item) + 0x88))(v9);
  itemCopy = item;
  shadowCopy = shadow;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetShadow *)self initWithId:isa shadow:shadowCopy];

  return v15;
}

- (_TtC8Freeform19CRLCommandSetShadow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end