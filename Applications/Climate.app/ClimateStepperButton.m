@interface ClimateStepperButton
- (BOOL)isHighlighted;
- (_TtC7Climate20ClimateStepperButton)init;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation ClimateStepperButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClimateStepperButton(0);
  return [(ClimateButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateStepperButton(0);
  v4 = v5.receiver;
  [(ClimateButton *)&v5 setHighlighted:v3];
  sub_10002D2C4();
}

- (_TtC7Climate20ClimateStepperButton)init
{
  v3 = &self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&self->_TtC7Climate13ClimateButton_opaque[OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClimateStepperButton(0);
  return [(ClimateButton *)&v5 init];
}

@end