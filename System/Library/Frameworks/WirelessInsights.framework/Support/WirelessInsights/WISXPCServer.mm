@interface WISXPCServer
+ (WISXPCServer)shared;
- (BOOL)startAndReturnError:(id *)error;
- (WISXPCServer)init;
@end

@implementation WISXPCServer

- (WISXPCServer)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for ServicePredictionController();
  v4 = sub_1001C420C();
  type metadata accessor for XPCServer();
  v5 = swift_allocObject();
  sub_1001696FC(v4);
  *(&self->super.isa + OBJC_IVAR___WISXPCServer_xpcServer) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(WISXPCServer *)&v7 init];
}

+ (WISXPCServer)shared
{
  if (qword_1002D90C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1002DBF60;

  return v3;
}

- (BOOL)startAndReturnError:(id *)error
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_10016930C(0, 0, v7, &unk_10024A180, v9);

  return 1;
}

@end