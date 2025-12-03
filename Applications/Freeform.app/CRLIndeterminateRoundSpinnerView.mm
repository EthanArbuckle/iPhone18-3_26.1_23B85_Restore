@interface CRLIndeterminateRoundSpinnerView
- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithCoder:(id)coder;
- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CRLIndeterminateRoundSpinnerView

- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_wantsLinkViewSublayerTransformAdjustedHitTestFrame) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_backgroundLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_lineWidth) = 0x4000000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_100AC74CC(event, x, y);

  return v10;
}

- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end