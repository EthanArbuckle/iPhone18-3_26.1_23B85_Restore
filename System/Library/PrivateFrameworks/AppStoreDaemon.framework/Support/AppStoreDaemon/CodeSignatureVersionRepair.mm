@interface CodeSignatureVersionRepair
- (ApplicationRepairDelegate)delegate;
- (NSArray)repairedBundleIDs;
- (NSString)repairType;
- (_TtC9appstored26CodeSignatureVersionRepair)init;
- (_TtC9appstored26CodeSignatureVersionRepair)initWithBundleID:(id)d requestToken:(id)token;
- (void)repairApplication:(ApplicationProxy *)application completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)setLogKey:(id)key;
- (void)setRepairedBundleIDs:(id)ds;
@end

@implementation CodeSignatureVersionRepair

- (NSArray)repairedBundleIDs
{
  if (*(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_repairedBundleIDs))
  {

    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setRepairedBundleIDs:(id)ds
{
  if (ds)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_repairedBundleIDs) = v4;
}

- (ApplicationRepairDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setLogKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_logKey);
  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_logKey) = key;
  keyCopy = key;
}

- (NSString)repairType
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC9appstored26CodeSignatureVersionRepair)initWithBundleID:(id)d requestToken:(id)token
{
  ObjectType = swift_getObjectType();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_repairedBundleIDs) = 0;
  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_delegate) = 0;
  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_logKey) = 0;
  v8 = (self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_bundleID);
  *v8 = v7;
  v8[1] = v9;
  *(self + OBJC_IVAR____TtC9appstored26CodeSignatureVersionRepair_requestToken) = token;
  v12.receiver = self;
  v12.super_class = ObjectType;
  tokenCopy = token;
  return [(CodeSignatureVersionRepair *)&v12 init];
}

- (void)repairApplication:(ApplicationProxy *)application completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = application;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10043A0C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  applicationCopy = application;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

- (_TtC9appstored26CodeSignatureVersionRepair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end