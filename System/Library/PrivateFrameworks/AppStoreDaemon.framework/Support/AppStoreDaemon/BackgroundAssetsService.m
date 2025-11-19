@interface BackgroundAssetsService
+ (NSString)entitlement;
+ (_TtC9appstored23BackgroundAssetsService)defaultService;
- (_TtC9appstored23BackgroundAssetsService)init;
- (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(NSNumber *)a3 bundleIdentifier:(NSString *)a4 assetPackIdentifier:(NSString *)a5 assetPackVersion:(NSNumber *)a6 internalBeta:(BOOL)a7 terminalPhase:(int64_t)a8 error:(NSError *)a9 replyHandler:(id)a10;
- (void)getTestFlightDownloadManifestRequestForStoreItemIdentifier:(NSNumber *)a3 bundleIdentifier:(NSString *)a4 replyHandler:(id)a5;
@end

@implementation BackgroundAssetsService

+ (_TtC9appstored23BackgroundAssetsService)defaultService
{
  if (qword_10059B590 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB198;

  return v3;
}

+ (NSString)entitlement
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC9appstored23BackgroundAssetsService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BackgroundAssetsService *)&v3 init];
}

- (void)getTestFlightDownloadManifestRequestForStoreItemIdentifier:(NSNumber *)a3 bundleIdentifier:(NSString *)a4 replyHandler:(id)a5
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100439260;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100435650;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1001BD9B4(0, 0, v11, &unk_100439270, v16);
}

- (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(NSNumber *)a3 bundleIdentifier:(NSString *)a4 assetPackIdentifier:(NSString *)a5 assetPackVersion:(NSNumber *)a6 internalBeta:(BOOL)a7 terminalPhase:(int64_t)a8 error:(NSError *)a9 replyHandler:(id)a10
{
  v30 = a8;
  v31 = a3;
  v16 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v19 = _Block_copy(a10);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 56) = v30;
  *(v20 + 64) = a9;
  *(v20 + 72) = v19;
  *(v20 + 80) = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_100439248;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1004366D0;
  v23[5] = v22;
  v24 = v31;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a9;
  v29 = self;
  sub_1001BD9B4(0, 0, v18, &unk_1004344E0, v23);
}

@end