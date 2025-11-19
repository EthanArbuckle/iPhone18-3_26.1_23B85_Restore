@interface _CHSWidgetDisplayProperties
- (_CHSWidgetDisplayProperties)initWithCoder:(id)a3;
- (_CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)a3;
- (_CHSWidgetDisplayProperties)initWithScale:(double)a3 colorGamut:(unint64_t)a4;
- (_CHSWidgetDisplayProperties)initWithSize:(CGSize)a3 scale:(double)a4 colorGamut:(unint64_t)a5;
- (_CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)a3;
@end

@implementation _CHSWidgetDisplayProperties

- (_CHSWidgetDisplayProperties)initWithScale:(double)a3 colorGamut:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
  return [(CHSWidgetDisplayProperties *)&v7 initWithScale:a4 colorGamut:a3];
}

- (_CHSWidgetDisplayProperties)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
  v4 = a3;
  v5 = [(CHSWidgetDisplayProperties *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_CHSWidgetDisplayProperties)initWithSize:(CGSize)a3 scale:(double)a4 colorGamut:(unint64_t)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end