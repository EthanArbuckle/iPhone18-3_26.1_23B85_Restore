@interface GenericProductReviewCollectionViewCell
- (_TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GenericProductReviewCollectionViewCell

- (_TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10002FF2C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1000301BC();
}

@end