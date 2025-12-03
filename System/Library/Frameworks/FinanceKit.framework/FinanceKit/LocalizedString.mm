@interface LocalizedString
- (BOOL)isEqual:(id)equal;
- (_TtC10FinanceKit15LocalizedString)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LocalizedString

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LocalizedString.isEqual(_:)(v8);

  sub_1B726990C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = LocalizedString.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  LocalizedString.encode(with:)(coderCopy);
}

- (_TtC10FinanceKit15LocalizedString)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end