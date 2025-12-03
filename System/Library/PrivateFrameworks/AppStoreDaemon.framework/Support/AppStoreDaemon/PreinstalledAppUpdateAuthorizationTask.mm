@interface PreinstalledAppUpdateAuthorizationTask
+ (TaskQueue)taskQueue;
+ (void)cleanupAfterUninstalledAppsWithBundleIDs:(id)ds;
- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)init;
- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)initWithBundleID:(id)d logKey:(id)key processHandle:(id)handle completion:(id)completion;
- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)initWithLogKey:(id)key;
- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation PreinstalledAppUpdateAuthorizationTask

+ (TaskQueue)taskQueue
{
  if (qword_10059B4E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0F8;

  return v3;
}

- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)initWithBundleID:(id)d logKey:(id)key processHandle:(id)handle completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  keyCopy = key;
  handleCopy = handle;
  v15 = sub_1000FBD08(v9, v11, keyCopy, handleCopy, sub_1000F8678, v12);

  return v15;
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
  v11[4] = &unk_1004366C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

+ (void)cleanupAfterUninstalledAppsWithBundleIDs:(id)ds
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000FC058(v3);
}

- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)initWithLogKey:(id)key
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored38PreinstalledAppUpdateAuthorizationTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end