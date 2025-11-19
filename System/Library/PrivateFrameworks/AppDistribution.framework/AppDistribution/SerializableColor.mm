@interface SerializableColor
- (_TtC15AppDistribution17SerializableColor)init;
- (_TtC15AppDistribution17SerializableColor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SerializableColor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23FFD8410(v4);
}

- (_TtC15AppDistribution17SerializableColor)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_23FFD8C44(v3);

  return v4;
}

- (_TtC15AppDistribution17SerializableColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end