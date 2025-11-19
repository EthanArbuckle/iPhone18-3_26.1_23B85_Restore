@interface CameraCAFManager
- (_TtC9CarCamera16CameraCAFManager)init;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CameraCAFManager

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002363C(v4);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000240D0();
}

- (_TtC9CarCamera16CameraCAFManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end