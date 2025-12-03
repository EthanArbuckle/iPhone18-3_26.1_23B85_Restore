@interface CRLCommandSetConnectionLineConnection
- (NSUUID)connectedItemID;
- (NSUUID)connectionLineID;
- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)init;
- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)initWithConnectionLine:(id)line connectedItem:(id)item chirality:(int64_t)chirality;
- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)initWithConnectionLine:(id)line connectedItem:(id)item chirality:(int64_t)chirality pathSource:(id)source;
- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)initWithConnectionLineID:(id)d connectedItemID:(id)iD chirality:(int64_t)chirality pathSource:(id)source;
@end

@implementation CRLCommandSetConnectionLineConnection

- (NSUUID)connectionLineID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectionLineID, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSUUID)connectedItemID
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_100060460(self + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectedItemID, &v12 - v4);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v5, v6);
    v9 = isa;
  }

  return v9;
}

- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)initWithConnectionLineID:(id)d connectedItemID:(id)iD chirality:(int64_t)chirality pathSource:(id)source
{
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (iD)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v14 + 56))(v12, v17, 1, v13);
  (*(v14 + 16))(self + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectionLineID, v16, v13);
  sub_100060460(v12, self + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectedItemID);
  *(self + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_chirality) = chirality;
  *(self + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_pathSource) = source;
  v18 = type metadata accessor for CRLCommandSetConnectionLineConnection();
  v22.receiver = self;
  v22.super_class = v18;
  sourceCopy = source;
  v20 = [(CRLCommand *)&v22 init];
  sub_1005C5FFC(v12);
  (*(v14 + 8))(v16, v13);
  return v20;
}

- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)initWithConnectionLine:(id)line connectedItem:(id)item chirality:(int64_t)chirality pathSource:(id)source
{
  lineCopy = line;
  itemCopy = item;
  sourceCopy = source;
  return sub_100D82EC0(lineCopy, item, chirality, source);
}

- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)initWithConnectionLine:(id)line connectedItem:(id)item chirality:(int64_t)chirality
{
  lineCopy = line;
  itemCopy = item;
  return sub_100D83120(lineCopy, item, chirality);
}

- (_TtC8Freeform37CRLCommandSetConnectionLineConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end