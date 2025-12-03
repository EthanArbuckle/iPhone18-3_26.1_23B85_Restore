@interface _CHSWidgetDisplayProperties
- (_CHSWidgetDisplayProperties)initWithCoder:(id)coder;
- (_CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)configuration;
- (_CHSWidgetDisplayProperties)initWithScale:(double)scale colorGamut:(unint64_t)gamut;
- (_CHSWidgetDisplayProperties)initWithSize:(CGSize)size scale:(double)scale colorGamut:(unint64_t)gamut;
- (_CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)properties;
@end

@implementation _CHSWidgetDisplayProperties

- (_CHSWidgetDisplayProperties)initWithScale:(double)scale colorGamut:(unint64_t)gamut
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
  return [(CHSWidgetDisplayProperties *)&v7 initWithScale:gamut colorGamut:scale];
}

- (_CHSWidgetDisplayProperties)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
  coderCopy = coder;
  v5 = [(CHSWidgetDisplayProperties *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_CHSWidgetDisplayProperties)initWithDisplayConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_CHSWidgetDisplayProperties)initWithWidgetDisplayProperties:(id)properties
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_CHSWidgetDisplayProperties)initWithSize:(CGSize)size scale:(double)scale colorGamut:(unint64_t)gamut
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end