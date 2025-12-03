@interface FairPlayService
+ (NSString)entitlement;
+ (_TtC9appstored15FairPlayService)defaultService;
- (_TtC9appstored15FairPlayService)init;
- (void)generateKeybagRequestForDSID:(unint64_t)d completionHandler:(id)handler;
- (void)generateSubscriptionRequestForDSID:(unint64_t)d completionHandler:(id)handler;
- (void)importKeybag:(NSData *)keybag completionHandler:(id)handler;
- (void)importSubscriptionKeybag:(NSData *)keybag completionHandler:(id)handler;
@end

@implementation FairPlayService

+ (_TtC9appstored15FairPlayService)defaultService
{
  if (qword_10059B478 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB090;

  return v3;
}

+ (NSString)entitlement
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)generateKeybagRequestForDSID:(unint64_t)d completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
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
  v13[4] = &unk_1004345D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004345D8;
  v14[5] = v13;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004345E0, v14);
}

- (void)generateSubscriptionRequestForDSID:(unint64_t)d completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
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
  v13[4] = &unk_1004345B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004345B8;
  v14[5] = v13;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004345C0, v14);
}

- (void)importKeybag:(NSData *)keybag completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = keybag;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100434590;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100434598;
  v14[5] = v13;
  keybagCopy = keybag;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004345A0, v14);
}

- (void)importSubscriptionKeybag:(NSData *)keybag completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = keybag;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100434580;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  keybagCopy = keybag;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

- (_TtC9appstored15FairPlayService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(FairPlayService *)&v3 init];
}

@end