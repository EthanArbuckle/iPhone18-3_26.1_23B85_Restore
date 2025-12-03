@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC24ContactsButtonXPCService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100002BC4(connectionCopy);

  return v9 & 1;
}

- (_TtC24ContactsButtonXPCService15ServiceDelegate)init
{
  v3 = OBJC_IVAR____TtC24ContactsButtonXPCService15ServiceDelegate_logger;
  if (qword_10002D8B0 != -1)
  {
    swift_once();
  }

  v4 = sub_10001CE1C();
  v5 = sub_1000023A4(v4, qword_10002E558);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  v7.receiver = self;
  v7.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v7 init];
}

@end