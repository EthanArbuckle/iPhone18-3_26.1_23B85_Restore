@interface BackgroundAssetRelayTask
+ (TaskQueue)taskQueue;
- (_TtC9appstored24BackgroundAssetRelayTask)init;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithAppInstall:(id)install metadata:(id)metadata shouldSkipTransparencySheet:(BOOL)sheet requestToken:(id)token bag:(id)bag;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithClipData:(id)data diskUsage:(int64_t)usage metadata:(id)metadata logKey:(id)key isUpdate:(BOOL)update bag:(id)bag;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithLogKey:(id)key;
- (_TtC9appstored24BackgroundAssetRelayTask)initWithoutKeepAlive;
- (void)mainWithCompletionHandler:(id)handler;
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

- (_TtC9appstored24BackgroundAssetRelayTask)initWithAppInstall:(id)install metadata:(id)metadata shouldSkipTransparencySheet:(BOOL)sheet requestToken:(id)token bag:(id)bag
{
  sheetCopy = sheet;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  installCopy = install;
  tokenCopy = token;
  bagCopy = bag;
  v15 = sub_1001896C4(installCopy, v11, sheetCopy, token, bag);

  return v15;
}

- (_TtC9appstored24BackgroundAssetRelayTask)initWithClipData:(id)data diskUsage:(int64_t)usage metadata:(id)metadata logKey:(id)key isUpdate:(BOOL)update bag:(id)bag
{
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  dataCopy = data;
  keyCopy = key;
  bagCopy = bag;
  v17 = sub_10018A1E8(dataCopy, usage, v13, keyCopy, update, bagCopy);

  return v17;
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
  v11[4] = &unk_100438760;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored24BackgroundAssetRelayTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored24BackgroundAssetRelayTask)initWithLogKey:(id)key
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