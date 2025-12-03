@interface CustomUnitProportion
+ (id)baseUnit;
- (_TtC16AlchemistService20CustomUnitProportion)initWithCoder:(id)coder;
- (_TtC16AlchemistService20CustomUnitProportion)initWithSymbol:(id)symbol converter:(id)converter;
@end

@implementation CustomUnitProportion

+ (id)baseUnit
{
  swift_getObjCClassMetadata();
  v2 = sub_23ED7E768();

  return v2;
}

- (_TtC16AlchemistService20CustomUnitProportion)initWithSymbol:(id)symbol converter:(id)converter
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomUnitProportion();
  return [(NSDimension *)&v7 initWithSymbol:symbol converter:converter];
}

- (_TtC16AlchemistService20CustomUnitProportion)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomUnitProportion();
  coderCopy = coder;
  v5 = [(NSDimension *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end