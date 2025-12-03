@interface Asset
- (BOOL)isEqual:(id)equal;
- (_TtC20JournalWidgetsSecure5Asset)init;
- (int64_t)hash;
@end

@implementation Asset

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1000DC864();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100083CA4(v8);

  sub_1000080B0(v8, &qword_100121470);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1000845EC();

  return v3;
}

- (_TtC20JournalWidgetsSecure5Asset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end