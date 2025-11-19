@interface ProductReviewActionsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension24ProductReviewActionsView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ProductReviewActionsView

- (_TtC22SubscribePageExtension24ProductReviewActionsView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewAction;
  v5 = sub_10000C518(&unk_100933080);
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportAction, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProductReviewActionsView();
  v2 = v5.receiver;
  [(ProductReviewActionsView *)&v5 layoutSubviews];
  sub_100494340(v4);
  sub_10000C888(v4, v4[3]);
  [v2 bounds];
  v3 = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_100494538(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end