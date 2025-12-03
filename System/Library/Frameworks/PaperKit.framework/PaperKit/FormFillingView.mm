@interface FormFillingView
- (_TtC8PaperKit15FormFillingView)initWithFrame:(CGRect)frame;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)doubleTap:(id)tap;
- (void)tap:(id)tap;
@end

@implementation FormFillingView

- (void)tap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  FormFillingView.tap(_:)(tapCopy);
}

- (void)doubleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  FormFillingView.doubleTap(_:)(tapCopy);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  FormFillingView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10.super.super.isa = specialized FormFillingView.editMenuInteraction(_:menuFor:suggestedActions:)().super.super.isa;

  return v10.super.super.isa;
}

- (_TtC8PaperKit15FormFillingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end