@interface CustomUnitProportion
+ (id)baseUnit;
- (_TtC16AlchemistService20CustomUnitProportion)initWithCoder:(id)a3;
- (_TtC16AlchemistService20CustomUnitProportion)initWithSymbol:(id)a3 converter:(id)a4;
@end

@implementation CustomUnitProportion

+ (id)baseUnit
{
  swift_getObjCClassMetadata();
  v2 = sub_23ED7E768();

  return v2;
}

- (_TtC16AlchemistService20CustomUnitProportion)initWithSymbol:(id)a3 converter:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomUnitProportion();
  return [(NSDimension *)&v7 initWithSymbol:a3 converter:a4];
}

- (_TtC16AlchemistService20CustomUnitProportion)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomUnitProportion();
  v4 = a3;
  v5 = [(NSDimension *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end