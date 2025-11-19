@interface HandwritingReflowView
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToWindow;
- (void)drawingContinuation:(id)a3;
- (void)layoutSubviews;
- (void)longPress:(id)a3;
- (void)tap;
@end

@implementation HandwritingReflowView

- (void)didMoveToWindow
{
  v2 = self;
  HandwritingReflowView.didMoveToWindow()();
}

- (void)tap
{
  v2 = self;
  HandwritingReflowView.tap()();
}

- (void)drawingContinuation:(id)a3
{
  v4 = a3;
  v5 = self;
  HandwritingReflowView.drawingContinuation(_:)(v4);
}

- (void)longPress:(id)a3
{
  v4 = a3;
  v5 = self;
  HandwritingReflowView.longPress(_:)(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  HandwritingReflowView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  HandwritingReflowView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10.super.super.isa = specialized HandwritingReflowView.editMenuInteraction(_:menuFor:suggestedActions:)().super.super.isa;

  return v10.super.super.isa;
}

@end