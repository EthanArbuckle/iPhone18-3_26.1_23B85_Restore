@interface LocalizedString
- (BOOL)isEqual:(id)a3;
- (_TtC10FinanceKit15LocalizedString)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LocalizedString

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LocalizedString.isEqual(_:)(v8);

  sub_1B726990C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = LocalizedString.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  LocalizedString.encode(with:)(v4);
}

- (_TtC10FinanceKit15LocalizedString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end