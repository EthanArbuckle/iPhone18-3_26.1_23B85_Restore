@interface Asset
- (BOOL)isEqual:(id)equal;
- (_TtC15JournalSettings5Asset)init;
- (int64_t)hash;
@end

@implementation Asset

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_6328C(v8);

  sub_8EF0(v8, &qword_C5418);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_63BA8();

  return v3;
}

- (_TtC15JournalSettings5Asset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end