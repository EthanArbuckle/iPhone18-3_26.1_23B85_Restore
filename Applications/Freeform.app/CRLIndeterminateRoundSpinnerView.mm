@interface CRLIndeterminateRoundSpinnerView
- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithCoder:(id)a3;
- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CRLIndeterminateRoundSpinnerView

- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_wantsLinkViewSublayerTransformAdjustedHitTestFrame) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_backgroundLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_lineWidth) = 0x4000000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_100AC74CC(a4, x, y);

  return v10;
}

- (_TtC8Freeform32CRLIndeterminateRoundSpinnerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end