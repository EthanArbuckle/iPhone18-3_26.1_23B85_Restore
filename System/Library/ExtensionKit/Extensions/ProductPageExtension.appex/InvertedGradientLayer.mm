@interface InvertedGradientLayer
- (_TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer)init;
- (_TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation InvertedGradientLayer

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_100702290(v4);
}

- (_TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_textDirection) = 3;
  v3.receiver = self;
  v3.super_class = type metadata accessor for InvertedGradientLayer();
  return [(InvertedGradientLayer *)&v3 init];
}

- (_TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_10077123C();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20ProductPageExtensionP33_783347D3A1F7C40B6C9C949BBB68902921InvertedGradientLayer_textDirection) = 3;
  sub_10000CF78(v8, v8[3]);
  v4 = sub_10077165C();
  v7.receiver = self;
  v7.super_class = type metadata accessor for InvertedGradientLayer();
  v5 = [(InvertedGradientLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_10000CD74(v8);
  return v5;
}

@end