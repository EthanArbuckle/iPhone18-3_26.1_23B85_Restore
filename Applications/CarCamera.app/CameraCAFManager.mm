@interface CameraCAFManager
- (_TtC9CarCamera16CameraCAFManager)init;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CameraCAFManager

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_10002363C(connectCopy);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000240D0();
}

- (_TtC9CarCamera16CameraCAFManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end