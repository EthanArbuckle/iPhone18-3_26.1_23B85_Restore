@interface SkannerService
+ (NSString)entitlement;
+ (_TtC9appstored14SkannerService)defaultService;
- (_TtC9appstored14SkannerService)init;
- (void)fetchStoriesWithCompletionHandler:(id)a3;
@end

@implementation SkannerService

+ (_TtC9appstored14SkannerService)defaultService
{
  if (qword_10059B508 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB148;

  return v3;
}

+ (NSString)entitlement
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)fetchStoriesWithCompletionHandler:(id)a3
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
  v11[4] = &unk_1004370D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  v13 = self;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (_TtC9appstored14SkannerService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SkannerService *)&v3 init];
}

@end