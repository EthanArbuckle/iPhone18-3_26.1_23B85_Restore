@interface BackgroundAssetsService
+ (NSString)entitlement;
+ (_TtC9appstored23BackgroundAssetsService)defaultService;
- (_TtC9appstored23BackgroundAssetsService)init;
- (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(NSNumber *)identifier bundleIdentifier:(NSString *)bundleIdentifier assetPackIdentifier:(NSString *)packIdentifier assetPackVersion:(NSNumber *)version internalBeta:(BOOL)beta terminalPhase:(int64_t)phase error:(NSError *)error replyHandler:(id)self0;
- (void)getTestFlightDownloadManifestRequestForStoreItemIdentifier:(NSNumber *)identifier bundleIdentifier:(NSString *)bundleIdentifier replyHandler:(id)handler;
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

- (void)getTestFlightDownloadManifestRequestForStoreItemIdentifier:(NSNumber *)identifier bundleIdentifier:(NSString *)bundleIdentifier replyHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = bundleIdentifier;
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
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_100439270, v16);
}

- (void)didReachAssetPackTerminalPhaseForStoreItemIdentifier:(NSNumber *)identifier bundleIdentifier:(NSString *)bundleIdentifier assetPackIdentifier:(NSString *)packIdentifier assetPackVersion:(NSNumber *)version internalBeta:(BOOL)beta terminalPhase:(int64_t)phase error:(NSError *)error replyHandler:(id)self0
{
  phaseCopy = phase;
  identifierCopy = identifier;
  v16 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v16 - 8);
  v18 = &phaseCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = identifier;
  *(v20 + 24) = bundleIdentifier;
  *(v20 + 32) = packIdentifier;
  *(v20 + 40) = version;
  *(v20 + 48) = beta;
  *(v20 + 56) = phaseCopy;
  *(v20 + 64) = error;
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
  v24 = identifierCopy;
  bundleIdentifierCopy = bundleIdentifier;
  packIdentifierCopy = packIdentifier;
  versionCopy = version;
  errorCopy = error;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v18, &unk_1004344E0, v23);
}

@end