@interface AASSessionManager
- (_TtC8Freeform17AASSessionManager)init;
- (void)end;
- (void)start;
@end

@implementation AASSessionManager

- (void)start
{
  v2 = self;
  sub_1006F2104();
}

- (void)end
{
  v2 = self;

  SessionManager.endSync()();
}

- (_TtC8Freeform17AASSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end