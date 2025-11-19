@interface NewFeaturesFlowAssetManager
- (_TtC5Setup27NewFeaturesFlowAssetManager)init;
- (_TtC5Setup27NewFeaturesFlowAssetManager)initWithManager:(id)a3 networkMonitor:(id)a4;
- (_TtP5Setup26NewFeaturesFlowManagerType_)manager;
- (void)downloadAssetsWhenNetworkIsAvailable;
- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4;
- (void)removeAssetsWithCompletionHandler:(id)a3;
@end

@implementation NewFeaturesFlowAssetManager

- (_TtP5Setup26NewFeaturesFlowManagerType_)manager
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC5Setup27NewFeaturesFlowAssetManager)initWithManager:(id)a3 networkMonitor:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup27NewFeaturesFlowAssetManager_manager) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup27NewFeaturesFlowAssetManager_networkMonitor) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NewFeaturesFlowAssetManager();
  swift_unknownObjectRetain();
  v5 = a4;
  return [(NewFeaturesFlowAssetManager *)&v7 init];
}

- (void)downloadAssetsWhenNetworkIsAvailable
{
  v2 = self;
  sub_10003F9FC();
}

- (void)removeAssetsWithCompletionHandler:(id)a3
{
  v5 = sub_100006410(&qword_1003A0110);
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
  v11[4] = &unk_100298978;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100297310;
  v12[5] = v11;
  v13 = self;
  sub_100063A28(0, 0, v7, &unk_1002979A0, v12);
}

- (_TtC5Setup27NewFeaturesFlowAssetManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkChangedFromNetworkType:(int)a3 toNetworkType:(int)a4
{
  v6 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  if (a4 == 1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = self;
    v11 = self;
    sub_100022A78(0, 0, v8, &unk_100298948, v10);
  }
}

@end