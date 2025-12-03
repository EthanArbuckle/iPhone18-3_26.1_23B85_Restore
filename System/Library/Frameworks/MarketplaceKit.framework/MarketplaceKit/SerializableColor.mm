@interface SerializableColor
- (_TtC14MarketplaceKit17SerializableColor)init;
- (_TtC14MarketplaceKit17SerializableColor)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SerializableColor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D9625A70(coderCopy);
}

- (_TtC14MarketplaceKit17SerializableColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1D962637C(coderCopy);

  return v4;
}

- (_TtC14MarketplaceKit17SerializableColor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end