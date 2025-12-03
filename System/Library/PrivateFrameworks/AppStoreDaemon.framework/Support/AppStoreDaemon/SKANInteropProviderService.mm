@interface SKANInteropProviderService
+ (NSString)entitlement;
+ (_TtC9appstored26SKANInteropProviderService)defaultService;
- (_TtC9appstored26SKANInteropProviderService)init;
- (void)getImpressionsForApp:(NSNumber *)app completionHandler:(id)handler;
- (void)storePostbacks:(NSData *)postbacks completionHandler:(id)handler;
- (void)storeSkannerEvents:(NSData *)events advertisedItemID:(NSNumber *)d completionHandler:(id)handler;
@end

@implementation SKANInteropProviderService

+ (_TtC9appstored26SKANInteropProviderService)defaultService
{
  if (qword_10059B498 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0A8;

  return v3;
}

+ (NSString)entitlement
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)getImpressionsForApp:(NSNumber *)app completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = app;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004352E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004352F0;
  v14[5] = v13;
  appCopy = app;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004352F8, v14);
}

- (void)storeSkannerEvents:(NSData *)events advertisedItemID:(NSNumber *)d completionHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = events;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1004352C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1004352D0;
  v16[5] = v15;
  eventsCopy = events;
  dCopy = d;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v11, &unk_1004352D8, v16);
}

- (void)storePostbacks:(NSData *)postbacks completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = postbacks;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004352B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  postbacksCopy = postbacks;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

- (_TtC9appstored26SKANInteropProviderService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SKANInteropProviderService *)&v3 init];
}

@end