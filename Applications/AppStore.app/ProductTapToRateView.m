@interface ProductTapToRateView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore20ProductTapToRateView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateView

- (_TtC8AppStore20ProductTapToRateView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
  v5 = sub_10002849C(&qword_10098E2C0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005DF1BC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1005DE30C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end