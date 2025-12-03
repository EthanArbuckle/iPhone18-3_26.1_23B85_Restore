@interface MCDSharePlayTogetherViewModel
+ (NSString)notificationName;
- (BOOL)isActive;
- (_TtC5Music29MCDSharePlayTogetherViewModel)init;
- (int64_t)connectedParticipantsCount;
- (int64_t)pendingParticipantsCount;
@end

@implementation MCDSharePlayTogetherViewModel

+ (NSString)notificationName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)connectedParticipantsCount
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session);
  v3 = *((swift_isaMask & *v2) + 0x1B0);
  selfCopy = self;
  v5 = v2;
  v6 = v3();

  return v6;
}

- (int64_t)pendingParticipantsCount
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session);
  v3 = *((swift_isaMask & *v2) + 0x1E0);
  selfCopy = self;
  v5 = v2;
  v6 = v3();

  return v6;
}

- (BOOL)isActive
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session);
  v3 = *((swift_isaMask & *v2) + 0x268);
  selfCopy = self;
  v5 = v2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

- (_TtC5Music29MCDSharePlayTogetherViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end