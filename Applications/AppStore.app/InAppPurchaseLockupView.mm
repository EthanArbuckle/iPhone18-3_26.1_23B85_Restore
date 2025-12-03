@interface InAppPurchaseLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore23InAppPurchaseLockupView)initWithCoder:(id)coder;
- (_TtC8AppStore23InAppPurchaseLockupView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation InAppPurchaseLockupView

- (_TtC8AppStore23InAppPurchaseLockupView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = type metadata accessor for InAppPurchaseTheme();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_isHeightConstrained) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1004A12F0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004A1658();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = qword_10096E508;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for InAppPurchaseLockupViewLayout.Metrics();
  sub_1000056A8(v5, qword_1009D1F00);
  type metadata accessor for InAppPurchaseLockupViewLayout();
  sub_1004A2280(&qword_100986CC0, &type metadata accessor for InAppPurchaseLockupViewLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC8AppStore23InAppPurchaseLockupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end