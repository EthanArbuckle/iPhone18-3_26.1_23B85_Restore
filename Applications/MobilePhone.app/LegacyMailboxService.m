@interface LegacyMailboxService
- (_TtC11MobilePhone20LegacyMailboxService)init;
- (void)voicemailInfoAvailableNotification:(id)a3 voicemailInfo:(id)a4;
@end

@implementation LegacyMailboxService

- (_TtC11MobilePhone20LegacyMailboxService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailInfoAvailableNotification:(id)a3 voicemailInfo:(id)a4
{
  swift_beginAccess();
  v5 = self;

  PassthroughSubject.send(_:)();
}

@end