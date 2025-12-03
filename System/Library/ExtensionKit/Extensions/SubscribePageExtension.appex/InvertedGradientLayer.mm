@interface InvertedGradientLayer
- (_TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer)init;
- (_TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation InvertedGradientLayer

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1001E9530(contextCopy);
}

- (_TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection) = 3;
  v3.receiver = self;
  v3.super_class = type metadata accessor for InvertedGradientLayer();
  return [(InvertedGradientLayer *)&v3 init];
}

- (_TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_100754314();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_01960AF73D0044DE1D4A999706BB79A321InvertedGradientLayer_textDirection) = 3;
  sub_10000C888(v8, v8[3]);
  v4 = sub_100754734();
  v7.receiver = self;
  v7.super_class = type metadata accessor for InvertedGradientLayer();
  v5 = [(InvertedGradientLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_10000C620(v8);
  return v5;
}

@end