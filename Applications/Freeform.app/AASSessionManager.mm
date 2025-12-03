@interface AASSessionManager
- (_TtC8Freeform17AASSessionManager)init;
- (void)end;
- (void)start;
@end

@implementation AASSessionManager

- (void)start
{
  selfCopy = self;
  sub_1006F2104();
}

- (void)end
{
  selfCopy = self;

  SessionManager.endSync()();
}

- (_TtC8Freeform17AASSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end