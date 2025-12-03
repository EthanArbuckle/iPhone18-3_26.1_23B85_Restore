@interface RestoreKeeper
+ (BOOL)activeRestoreSupportEnabled;
+ (_TtC9appstored13RestoreKeeper)shared;
- (BOOL)hasRestoringCoordinatorForBundleID:(id)d logKey:(id)key;
- (_TtC9appstored13RestoreKeeper)init;
- (id)restoringCoordinatorForBundleID:(id)d logKey:(id)key;
- (void)displayDeleteActiveRestoreDialogWithBundleID:(id)d logKey:(id)key completion:(id)completion;
- (void)handleActiveRestoreWithCoordinator:(IXRestoringAppInstallCoordinator *)coordinator userInitiated:(BOOL)initiated logKey:(_TtC9appstored6LogKey *)key completionHandler:(id)handler;
- (void)installForBundleID:(NSString *)d completionHandler:(id)handler;
@end

@implementation RestoreKeeper

+ (_TtC9appstored13RestoreKeeper)shared
{
  if (qword_10059B4D0 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0F0;

  return v3;
}

+ (BOOL)activeRestoreSupportEnabled
{
  v2 = type metadata accessor for FeatureFlag();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  if (([v6 deviceIsAppleTV] & 1) != 0 || objc_msgSend(v6, "deviceIsAudioAccessory"))
  {
    v7 = 0;
  }

  else
  {
    (*(v3 + 104))(v5, enum case for FeatureFlag.activeRestore(_:), v2);
    v7 = asd_isFeatureEnabled(_:)();
    (*(v3 + 8))(v5, v2);
  }

  return v7 & 1;
}

- (void)displayDeleteActiveRestoreDialogWithBundleID:(id)d logKey:(id)key completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  keyCopy = key;
  selfCopy = self;
  sub_1000F5D7C(v8, v10, keyCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)handleActiveRestoreWithCoordinator:(IXRestoringAppInstallCoordinator *)coordinator userInitiated:(BOOL)initiated logKey:(_TtC9appstored6LogKey *)key completionHandler:(id)handler
{
  v11 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = coordinator;
  *(v15 + 24) = initiated;
  *(v15 + 32) = key;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1004365B8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1004365C0;
  v18[5] = v17;
  coordinatorCopy = coordinator;
  keyCopy = key;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v13, &unk_1004365C8, v18);
}

- (BOOL)hasRestoringCoordinatorForBundleID:(id)d logKey:(id)key
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  keyCopy = key;
  selfCopy = self;
  LOBYTE(v6) = sub_1000F8438(v6, v8, keyCopy);

  return v6 & 1;
}

- (void)installForBundleID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100436598;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004365A0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004365A8, v14);
}

- (id)restoringCoordinatorForBundleID:(id)d logKey:(id)key
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  keyCopy = key;
  selfCopy = self;
  v11 = sub_1000F8038(v6, v8, keyCopy);

  return v11;
}

- (_TtC9appstored13RestoreKeeper)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC9appstored13RestoreKeeper_lockedRestores;
  *v4 = 0;
  *(v4 + 1) = &_swiftEmptyDictionarySingleton;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(RestoreKeeper *)&v6 init];
}

@end