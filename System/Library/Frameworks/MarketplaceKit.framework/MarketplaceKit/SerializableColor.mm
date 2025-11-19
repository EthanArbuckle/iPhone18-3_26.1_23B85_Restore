@interface SerializableColor
- (_TtC14MarketplaceKit17SerializableColor)init;
- (_TtC14MarketplaceKit17SerializableColor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SerializableColor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D9625A70(v4);
}

- (_TtC14MarketplaceKit17SerializableColor)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1D962637C(v3);

  return v4;
}

- (_TtC14MarketplaceKit17SerializableColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end