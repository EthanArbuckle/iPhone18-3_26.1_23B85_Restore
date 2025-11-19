@interface OwnsCheckTask
- (NSDictionary)output;
- (_TtC9appstored13OwnsCheckTask)init;
- (_TtC9appstored13OwnsCheckTask)initWithAccount:(id)a3 bundleIDs:(id)a4 bag:(id)a5;
- (_TtC9appstored13OwnsCheckTask)initWithLogKey:(id)a3;
- (_TtC9appstored13OwnsCheckTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)a3;
- (void)setOutput:(id)a3;
@end

@implementation OwnsCheckTask

- (NSDictionary)output
{
  if (*(self + OBJC_IVAR____TtC9appstored13OwnsCheckTask_output))
  {

    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setOutput:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC9appstored13OwnsCheckTask_output) = v4;
}

- (_TtC9appstored13OwnsCheckTask)initWithAccount:(id)a3 bundleIDs:(id)a4 bag:(id)a5
{
  ObjectType = swift_getObjectType();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC9appstored13OwnsCheckTask_output) = 0;
  sub_1000056D0(a5 + OBJC_IVAR___Bag_bag, v16);
  v10 = (self + OBJC_IVAR____TtC9appstored13OwnsCheckTask_input);
  v11 = a3;
  v12 = a5;
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&unk_10059CE80);
  swift_dynamicCast();
  *v10 = a3;
  v10[1] = v9;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(Task *)&v15 init];

  return v13;
}

- (void)mainWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100437A70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  v13 = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored13OwnsCheckTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored13OwnsCheckTask)initWithLogKey:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored13OwnsCheckTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end