@interface InteractiveProductReviewsShelfHeaderView
- (_TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation InteractiveProductReviewsShelfHeaderView

- (_TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 1;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(InteractiveProductReviewsShelfHeaderView *)&v4 prepareForReuse];
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] setText:{0, v4.receiver, v4.super_class}];
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_pinnedLabel] setText:0];
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v3[40] = 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002191F4();
}

@end