@interface InstallWebAttributionService
+ (NSString)entitlement;
+ (_TtC9appstored28InstallWebAttributionService)defaultService;
- (_TtC9appstored28InstallWebAttributionService)init;
- (void)addInstallWebAttributionParamsWithConfig:(ASDInstallWebAttributionParamsConfig *)config completionHandler:(id)handler;
- (void)removeInstallWebAttributionParamsFromPrivateBrowsingSessionID:(NSUUID *)d completionHandler:(id)handler;
@end

@implementation InstallWebAttributionService

+ (_TtC9appstored28InstallWebAttributionService)defaultService
{
  if (qword_10059B4A8 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0D0;

  return v3;
}

+ (NSString)entitlement
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)addInstallWebAttributionParamsWithConfig:(ASDInstallWebAttributionParamsConfig *)config completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = config;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435648;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100435650;
  v14[5] = v13;
  configCopy = config;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_100439270, v14);
}

- (void)removeInstallWebAttributionParamsFromPrivateBrowsingSessionID:(NSUUID *)d completionHandler:(id)handler
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
  v13[4] = &unk_100435630;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

- (_TtC9appstored28InstallWebAttributionService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(InstallWebAttributionService *)&v3 init];
}

@end