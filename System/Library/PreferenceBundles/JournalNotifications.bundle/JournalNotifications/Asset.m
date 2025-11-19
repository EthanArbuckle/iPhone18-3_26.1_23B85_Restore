@interface Asset
- (BOOL)isEqual:(id)a3;
- (_TtC20JournalNotifications5Asset)init;
- (int64_t)hash;
@end

@implementation Asset

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_C5E44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_84A5C(v8);

  sub_C060(v8, &qword_104818);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_8522C();

  return v3;
}

- (_TtC20JournalNotifications5Asset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end