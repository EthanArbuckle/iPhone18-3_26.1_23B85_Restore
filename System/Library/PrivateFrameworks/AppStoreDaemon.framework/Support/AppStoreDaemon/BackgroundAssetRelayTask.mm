@interface BackgroundAssetRelayTask
+ (TaskQueue)taskQueue;
- (_TtC9appstored24BackgroundAssetRelayTask)init;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithAppInstall:(id)a3 metadata:(id)a4 shouldSkipTransparencySheet:(BOOL)a5 requestToken:(id)a6 bag:(id)a7;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithClipData:(id)a3 diskUsage:(int64_t)a4 metadata:(id)a5 logKey:(id)a6 isUpdate:(BOOL)a7 bag:(id)a8;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithLogKey:(id)a3;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation BackgroundAssetRelayTask

+ (TaskQueue)taskQueue
{
  if (qword_10059B578 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB188;

  return v3;
}

- (_TtC9appstored24BackgroundAssetRelayTask)initWithAppInstall:(id)a3 metadata:(id)a4 shouldSkipTransparencySheet:(BOOL)a5 requestToken:(id)a6 bag:(id)a7
{
  v9 = a5;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = sub_1001896C4(v12, v11, v9, a6, a7);

  return v15;
}

- (_TtC9appstored24BackgroundAssetRelayTask)initWithClipData:(id)a3 diskUsage:(int64_t)a4 metadata:(id)a5 logKey:(id)a6 isUpdate:(BOOL)a7 bag:(id)a8
{
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = sub_10018A1E8(v14, a4, v13, v15, a7, v16);

  return v17;
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
  v11[4] = &unk_100438760;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  v13 = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored24BackgroundAssetRelayTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored24BackgroundAssetRelayTask)initWithLogKey:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored24BackgroundAssetRelayTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end