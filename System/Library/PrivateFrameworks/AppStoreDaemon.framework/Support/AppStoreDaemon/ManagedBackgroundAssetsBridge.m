@interface ManagedBackgroundAssetsBridge
+ (void)cleanUpWithCompletionHandler:(id)a3;
+ (void)handleAppUninstallWithBundleID:(id)a3;
+ (void)handleAppUninstallsWithBundleIDs:(id)a3;
- (_TtC9appstored29ManagedBackgroundAssetsBridge)init;
@end

@implementation ManagedBackgroundAssetsBridge

+ (void)handleAppUninstallsWithBundleIDs:(id)a3
{
  v3 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = ObjCClassMetadata;
  v9[5] = v6;
  sub_10019F02C(0, 0, v5, &unk_100434528, v9);
}

+ (void)handleAppUninstallWithBundleID:(id)a3
{
  v3 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = ObjCClassMetadata;
  v11[5] = v6;
  v11[6] = v8;
  sub_10019F02C(0, 0, v5, &unk_100434500, v11);
}

+ (void)cleanUpWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004344D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored29ManagedBackgroundAssetsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ManagedBackgroundAssetsBridge();
  return [(ManagedBackgroundAssetsBridge *)&v3 init];
}

@end