@interface AppleIDLookupTask
- (NSString)appleID;
- (_TtC9appstored17AppleIDLookupTask)init;
- (_TtC9appstored17AppleIDLookupTask)initWithLogKey:(id)key;
- (_TtC9appstored17AppleIDLookupTask)initWithReceipt:(id)receipt;
- (_TtC9appstored17AppleIDLookupTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)handler;
- (void)setAppleID:(id)d;
@end

@implementation AppleIDLookupTask

- (NSString)appleID
{
  if (*(self + OBJC_IVAR____TtC9appstored17AppleIDLookupTask_appleID + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAppleID:(id)d
{
  if (d)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC9appstored17AppleIDLookupTask_appleID);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC9appstored17AppleIDLookupTask)initWithReceipt:(id)receipt
{
  ObjectType = swift_getObjectType();
  v6 = (self + OBJC_IVAR____TtC9appstored17AppleIDLookupTask_appleID);
  *v6 = 0;
  v6[1] = 0;
  *(self + OBJC_IVAR____TtC9appstored17AppleIDLookupTask_receipt) = receipt;
  v9.receiver = self;
  v9.super_class = ObjectType;
  receiptCopy = receipt;
  return [(Task *)&v9 init];
}

- (void)mainWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004387F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored17AppleIDLookupTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored17AppleIDLookupTask)initWithLogKey:(id)key
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored17AppleIDLookupTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end