@interface WorkoutTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin17WorkoutTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)queryWithStartDate:(id)a3 endDate:(id)a4 completion:(id)a5;
@end

@implementation WorkoutTaskServer

- (_TtC25FitnessIntelligencePlugin17WorkoutTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v9 = sub_749B8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  v13 = a4;
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = sub_4F1B4(v12, a4, v14, a6);

  swift_unknownObjectRelease();
  return v15;
}

+ (id)taskIdentifier
{
  _s25FitnessIntelligencePlugin17WorkoutTaskServerC14taskIdentifierSSyFZ_0();
  v2 = sub_75598();

  return v2;
}

- (id)exportedInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence26WorkoutTaskServerInterface_];

  return v2;
}

- (id)remoteInterface
{
  v2 = [objc_allocWithZone(NSXPCInterface) init];

  return v2;
}

- (void)queryWithStartDate:(id)a3 endDate:(id)a4 completion:(id)a5
{
  v7 = sub_74968();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = _Block_copy(a5);
  sub_74938();
  sub_74938();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = self;
  WorkoutTaskServer.query(startDate:endDate:completion:)(v14, v12, sub_199A0, v16);

  v18 = *(v8 + 8);
  v18(v12, v7);
  v18(v14, v7);
}

@end