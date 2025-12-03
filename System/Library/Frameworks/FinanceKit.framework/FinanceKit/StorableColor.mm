@interface StorableColor
- (_TtC10FinanceKit13StorableColor)init;
- (_TtC10FinanceKit13StorableColor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StorableColor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  StorableColor.encode(with:)(coderCopy);
}

- (_TtC10FinanceKit13StorableColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1B7375838(coderCopy);

  return v4;
}

- (_TtC10FinanceKit13StorableColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end