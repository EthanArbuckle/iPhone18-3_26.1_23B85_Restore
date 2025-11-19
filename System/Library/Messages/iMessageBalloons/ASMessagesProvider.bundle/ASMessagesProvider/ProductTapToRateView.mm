@interface ProductTapToRateView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider20ProductTapToRateView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductTapToRateView

- (_TtC18ASMessagesProvider20ProductTapToRateView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_rateAction;
  v5 = sub_BD88(&qword_93FAE0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20ProductTapToRateView_isSingleColumn) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_32B00();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_330D8(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end