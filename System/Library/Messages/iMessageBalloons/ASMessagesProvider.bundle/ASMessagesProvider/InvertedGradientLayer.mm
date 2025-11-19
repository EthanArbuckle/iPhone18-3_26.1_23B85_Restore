@interface InvertedGradientLayer
- (_TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer)init;
- (_TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation InvertedGradientLayer

- (void)drawInContext:(CGContext *)a3
{
  v4 = a3;
  v5 = self;
  sub_1E93BC(v4);
}

- (_TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_textDirection) = (&dword_0 + 3);
  v3.receiver = self;
  v3.super_class = type metadata accessor for InvertedGradientLayer();
  return [(InvertedGradientLayer *)&v3 init];
}

- (_TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_76A510();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_lineHeight) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientStart) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_gradientEnd) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC18ASMessagesProviderP33_641AD3B9CC6D2F83FAB80978F020883021InvertedGradientLayer_textDirection) = (&dword_0 + 3);
  sub_B170(v8, v8[3]);
  v4 = sub_76A930();
  v7.receiver = self;
  v7.super_class = type metadata accessor for InvertedGradientLayer();
  v5 = [(InvertedGradientLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_BEB8(v8);
  return v5;
}

@end