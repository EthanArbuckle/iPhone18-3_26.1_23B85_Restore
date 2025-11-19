@interface SecureButtonTag
- (BOOL)isEqual:(id)a3;
- (_TtC15AppDistribution15SecureButtonTag)init;
- (_TtC15AppDistribution15SecureButtonTag)initWithCoder:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecureButtonTag

- (_TtC15AppDistribution15SecureButtonTag)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_23FFD86D0(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SecureButtonTag.encode(with:)(v4);
}

- (int64_t)hash
{
  v2 = self;
  v3 = SecureButtonTag.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_23FFD95DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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