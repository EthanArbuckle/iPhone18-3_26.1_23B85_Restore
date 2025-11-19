@interface ProductTapToRateView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension20ProductTapToRateView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateView

- (_TtC20ProductPageExtension20ProductTapToRateView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_rateAction;
  v5 = sub_10000A5D4(&qword_100947408);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10046A0E0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_100469230(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end