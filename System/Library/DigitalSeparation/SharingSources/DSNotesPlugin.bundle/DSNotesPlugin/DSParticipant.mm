@interface DSParticipant
- (BOOL)isEqual:(id)equal;
- (DSIdentifiable)identity;
- (_TtC13DSNotesPlugin13DSParticipant)init;
- (int64_t)permission;
- (int64_t)role;
@end

@implementation DSParticipant

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1143C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10BF0(v8);

  sub_110F8(v8);
  return v6 & 1;
}

- (int64_t)role
{
  if ([*(&self->super.isa + OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant) role] == &dword_0 + 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)permission
{
  if ([*(&self->super.isa + OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant) permission] == &dword_0 + 3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (DSIdentifiable)identity
{
  userIdentity = [*(&self->super.isa + OBJC_IVAR____TtC13DSNotesPlugin13DSParticipant_participant) userIdentity];

  return userIdentity;
}

- (_TtC13DSNotesPlugin13DSParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end