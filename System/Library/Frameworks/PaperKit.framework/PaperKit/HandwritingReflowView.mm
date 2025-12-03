@interface HandwritingReflowView
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
- (void)drawingContinuation:(id)continuation;
- (void)layoutSubviews;
- (void)longPress:(id)press;
- (void)tap;
@end

@implementation HandwritingReflowView

- (void)didMoveToWindow
{
  selfCopy = self;
  HandwritingReflowView.didMoveToWindow()();
}

- (void)tap
{
  selfCopy = self;
  HandwritingReflowView.tap()();
}

- (void)drawingContinuation:(id)continuation
{
  continuationCopy = continuation;
  selfCopy = self;
  HandwritingReflowView.drawingContinuation(_:)(continuationCopy);
}

- (void)longPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  HandwritingReflowView.longPress(_:)(pressCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  HandwritingReflowView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  HandwritingReflowView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10.super.super.isa = specialized HandwritingReflowView.editMenuInteraction(_:menuFor:suggestedActions:)().super.super.isa;

  return v10.super.super.isa;
}

@end