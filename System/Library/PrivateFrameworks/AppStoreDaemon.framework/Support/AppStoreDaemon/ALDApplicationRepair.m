@interface ALDApplicationRepair
- (ApplicationRepairDelegate)delegate;
- (NSArray)repairedBundleIDs;
- (NSString)repairType;
- (_TtC9appstored20ALDApplicationRepair)init;
- (_TtC9appstored20ALDApplicationRepair)initWithFairPlayStatus:(int)a3;
- (void)repairApplication:(ApplicationProxy *)a3 completionHandler:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setLogKey:(id)a3;
- (void)setRepairedBundleIDs:(id)a3;
@end

@implementation ALDApplicationRepair

- (NSArray)repairedBundleIDs
{
  if (*(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_repairedBundleIDs))
  {

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setRepairedBundleIDs:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_repairedBundleIDs) = v4;
}

- (ApplicationRepairDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setLogKey:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_logKey);
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_logKey) = a3;
  v3 = a3;
}

- (NSString)repairType
{
  if (*(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_repairType + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC9appstored20ALDApplicationRepair)initWithFairPlayStatus:(int)a3
{
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_repairedBundleIDs) = 0;
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_delegate) = 0;
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_logKey) = 0;
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_repairType) = xmmword_1004366F0;
  *(self + OBJC_IVAR____TtC9appstored20ALDApplicationRepair_fairPlayStatus) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ALDApplicationRepair();
  return [(ALDApplicationRepair *)&v4 init];
}

- (void)repairApplication:(ApplicationProxy *)a3 completionHandler:(id)a4
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100436730;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

- (_TtC9appstored20ALDApplicationRepair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end