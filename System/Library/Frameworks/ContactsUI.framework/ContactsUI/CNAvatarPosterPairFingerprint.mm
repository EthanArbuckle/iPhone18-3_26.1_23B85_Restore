@interface CNAvatarPosterPairFingerprint
- (BOOL)isEqual:(id)equal;
- (_TtC10ContactsUI29CNAvatarPosterPairFingerprint)init;
- (int64_t)hash;
@end

@implementation CNAvatarPosterPairFingerprint

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_199AC8AF8(v8);

  sub_199AC9058(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_199AC8E40();

  return v3;
}

- (_TtC10ContactsUI29CNAvatarPosterPairFingerprint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end