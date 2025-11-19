@interface StorableColor
- (_TtC10FinanceKit13StorableColor)init;
- (_TtC10FinanceKit13StorableColor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StorableColor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  StorableColor.encode(with:)(v4);
}

- (_TtC10FinanceKit13StorableColor)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1B7375838(v3);

  return v4;
}

- (_TtC10FinanceKit13StorableColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end