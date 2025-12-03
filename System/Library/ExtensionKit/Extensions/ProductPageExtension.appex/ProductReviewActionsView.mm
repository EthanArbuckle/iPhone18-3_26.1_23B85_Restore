@interface ProductReviewActionsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension24ProductReviewActionsView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation ProductReviewActionsView

- (_TtC20ProductPageExtension24ProductReviewActionsView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewAction;
  v5 = sub_10000A5D4(&qword_100955BD0);
  v6 = *(*(v5 - 8) + 56);
  v6(self + v4, 1, 1, v5);
  v6(self + OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportAction, 1, 1, v5);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProductReviewActionsView();
  v2 = v5.receiver;
  [(ProductReviewActionsView *)&v5 layoutSubviews];
  sub_100741F94(v4);
  sub_10000CF78(v4, v4[3]);
  [v2 bounds];
  traitCollection = [v2 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v4);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_10074218C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end