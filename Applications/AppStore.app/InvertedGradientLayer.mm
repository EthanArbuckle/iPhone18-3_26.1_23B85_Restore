@interface InvertedGradientLayer
- (_TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer)init;
- (_TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation InvertedGradientLayer

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_10043C2E8(contextCopy);
}

- (_TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection) = 3;
  v3.receiver = self;
  v3.super_class = type metadata accessor for InvertedGradientLayer();
  return [(InvertedGradientLayer *)&v3 init];
}

- (_TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC8AppStoreP33_94B25735D188DA0572222549F0689D5E21InvertedGradientLayer_textDirection) = 3;
  sub_10002A400(v8, v8[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7.receiver = self;
  v7.super_class = type metadata accessor for InvertedGradientLayer();
  v5 = [(InvertedGradientLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_100007000(v8);
  return v5;
}

@end