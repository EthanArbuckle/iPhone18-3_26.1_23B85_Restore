@interface SHServiceProvider
+ (id)availableServices;
- (_TtC7shazamd17SHServiceProvider)init;
- (_TtC7shazamd17SHServiceProvider)initWithService:(Class)service;
- (id)buildListener;
- (id)handleForConnection:(id)connection withClientCredentials:(id)credentials;
@end

@implementation SHServiceProvider

+ (id)availableServices
{
  sub_10000485C(&qword_100096DC0, &qword_10005CFD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10005CFC0;
  v3 = sub_1000048A4(0, &qword_100096DC8, off_10007C4A0);
  *(v2 + 56) = sub_10000485C(&qword_100096DD0, &qword_10005CFD8);
  *(v2 + 32) = v3;
  v4 = sub_1000048A4(0, &qword_100096DD8, &off_10007C4A8);
  *(v2 + 88) = sub_10000485C(&qword_100096DE0, &qword_10005CFE0);
  *(v2 + 64) = v4;
  v5 = type metadata accessor for ShazamEventsService();
  *(v2 + 120) = sub_10000485C(&qword_100096DE8, &qword_10005CFE8);
  *(v2 + 96) = v5;
  sub_1000048A4(0, &qword_100096DF0, NSSet_ptr);
  v6 = NSSet.init(arrayLiteral:)();

  return v6;
}

- (_TtC7shazamd17SHServiceProvider)initWithService:(Class)service
{
  ObjectType = swift_getObjectType();
  swift_getObjCClassMetadata();
  machServiceName = [swift_getObjCClassFromMetadata() machServiceName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = (self + OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName);
  *v9 = v6;
  v9[1] = v8;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(SHServiceProvider *)&v11 init];
}

- (id)buildListener
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName);
  v4 = *&self->machServiceName[OBJC_IVAR____TtC7shazamd17SHServiceProvider_machServiceName];
  v5 = objc_allocWithZone(NSXPCListener);
  selfCopy = self;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithMachServiceName:v7];

  return v8;
}

- (id)handleForConnection:(id)connection withClientCredentials:(id)credentials
{
  connectionCopy = connection;
  credentialsCopy = credentials;
  selfCopy = self;
  v12.super.isa = credentialsCopy;
  v9 = SHServiceProvider.handle(for:with:)(connectionCopy, v12);

  return v9;
}

- (_TtC7shazamd17SHServiceProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end