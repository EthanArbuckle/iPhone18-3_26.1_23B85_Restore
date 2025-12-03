@interface SecureButtonTag
- (BOOL)isEqual:(id)equal;
- (_TtC15AppDistribution15SecureButtonTag)init;
- (_TtC15AppDistribution15SecureButtonTag)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecureButtonTag

- (_TtC15AppDistribution15SecureButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_23FFD86D0(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SecureButtonTag.encode(with:)(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SecureButtonTag.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23FFD95DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SecureButtonTag.isEqual(_:)(v8);

  sub_23FFB9790(v8);
  return v6 & 1;
}

- (_TtC15AppDistribution15SecureButtonTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end