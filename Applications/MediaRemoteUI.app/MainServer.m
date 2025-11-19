@interface MainServer
- (_TtC13MediaRemoteUI10MainServer)init;
@end

@implementation MainServer

- (_TtC13MediaRemoteUI10MainServer)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13MediaRemoteUI10MainServer_clientConnectionManager) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MainServer();
  v2 = [(MainServer *)&v4 init];
  static os_log_type_t.default.getter();
  if (qword_10006FF80 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();

  return v2;
}

@end