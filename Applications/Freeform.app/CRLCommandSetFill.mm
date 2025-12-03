@interface CRLCommandSetFill
- (NSString)actionString;
- (NSUUID)id;
- (_TtC8Freeform17CRLCommandSetFill)init;
- (_TtC8Freeform17CRLCommandSetFill)initWithId:(id)id fill:(id)fill;
- (_TtC8Freeform17CRLCommandSetFill)initWithShapeItem:(id)item fill:(id)fill;
- (void)setActionString:(id)string;
@end

@implementation CRLCommandSetFill

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform17CRLCommandSetFill)initWithId:(id)id fill:(id)fill
{
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  fillCopy = fill;
  v9 = sub_101288AD0(v7, fill);

  return v9;
}

- (_TtC8Freeform17CRLCommandSetFill)initWithShapeItem:(id)item fill:(id)fill
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(item + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v9);
  itemCopy = item;
  fillCopy = fill;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v11, v7);
  v15 = [(CRLCommandSetFill *)self initWithId:isa fill:fillCopy];

  return v15;
}

- (NSString)actionString
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setActionString:(id)string
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC8Freeform17CRLCommandSetFill_actionString);
  *v5 = v4;
  v5[1] = v6;
}

- (_TtC8Freeform17CRLCommandSetFill)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end