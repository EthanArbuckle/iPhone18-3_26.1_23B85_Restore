@interface StatusBarSafeAreaViewController
- (_TtC12ClarityBoard31StatusBarSafeAreaViewController)initWithCoder:(id)a3;
- (_TtC12ClarityBoard31StatusBarSafeAreaViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation StatusBarSafeAreaViewController

- (_TtC12ClarityBoard31StatusBarSafeAreaViewController)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_safeRect);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = self + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_maxAllowedSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = (self + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_cornerRadii);
  *v5 = 0u;
  v5[1] = 0u;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_boundingRectRequiresUpdate) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_widthShrinkFraction) = 0x3FE999999999999ALL;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  v2 = OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_boundingRectRequiresUpdate;
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_boundingRectRequiresUpdate) == 1)
  {
    memset(v10, 0, sizeof(v10));
    v11 = 1;
    v9 = self;
    sub_10007E5F0(0, v10, 0);
    v4 = (&v9->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_safeRect);
    *v4 = v5;
    v4[1] = v6;
    v4[2] = v7;
    v4[3] = v8;
    *(&self->super.super.super.isa + v2) = 0;
  }
}

- (_TtC12ClarityBoard31StatusBarSafeAreaViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_boundingRectRequiresUpdate) = 1;
  if (a3)
  {
    [a3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

@end