@interface LegacyMailboxService
- (_TtC11MobilePhone20LegacyMailboxService)init;
- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
@end

@implementation LegacyMailboxService

- (_TtC11MobilePhone20LegacyMailboxService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  swift_beginAccess();
  selfCopy = self;

  PassthroughSubject.send(_:)();
}

@end