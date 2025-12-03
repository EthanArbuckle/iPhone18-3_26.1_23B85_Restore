@interface SerializableColor
- (_TtC15AppDistribution17SerializableColor)init;
- (_TtC15AppDistribution17SerializableColor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SerializableColor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_23FFD8410(coderCopy);
}

- (_TtC15AppDistribution17SerializableColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_23FFD8C44(coderCopy);

  return v4;
}

- (_TtC15AppDistribution17SerializableColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end