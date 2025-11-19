@interface NTKWarlockTypefaceAttributes
- (NSDictionary)fontAttributes;
- (NSString)cacheKey;
- (NTKWarlockTypefaceAttributes)init;
@end

@implementation NTKWarlockTypefaceAttributes

- (NSDictionary)fontAttributes
{
  v2 = self;
  sub_9FF0();

  type metadata accessor for AttributeName(0);
  sub_A7E0();
  v3.super.isa = sub_374C0().super.isa;

  return v3.super.isa;
}

- (NSString)cacheKey
{
  v2 = self;
  sub_A4C0();

  v3 = sub_37500();

  return v3;
}

- (NTKWarlockTypefaceAttributes)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end