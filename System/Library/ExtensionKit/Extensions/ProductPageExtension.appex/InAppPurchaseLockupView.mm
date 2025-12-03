@interface InAppPurchaseLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension23InAppPurchaseLockupView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension23InAppPurchaseLockupView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation InAppPurchaseLockupView

- (_TtC20ProductPageExtension23InAppPurchaseLockupView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = sub_10075E57C();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_isHeightConstrained) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1000CAFA0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000CB308();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = qword_10093F668;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_10075E8CC();
  sub_10000A61C(v5, qword_10099CD58);
  sub_10075E8EC();
  sub_1000CBF30(&qword_1009476F8, &type metadata accessor for InAppPurchaseLockupViewLayout);
  sub_10076DBDC();
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC20ProductPageExtension23InAppPurchaseLockupView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end