@interface Asset
- (BOOL)isEqual:(id)equal;
- (_TtC21JournalShareExtension5Asset)init;
- (int64_t)hash;
@end

@implementation Asset

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1000406E4(v8);

  sub_10000FFB4(v8, &qword_10014CA68);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_10004102C();

  return v3;
}

- (_TtC21JournalShareExtension5Asset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end