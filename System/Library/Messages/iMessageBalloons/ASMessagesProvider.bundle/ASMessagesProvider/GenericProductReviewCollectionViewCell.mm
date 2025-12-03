@interface GenericProductReviewCollectionViewCell
- (_TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GenericProductReviewCollectionViewCell

- (_TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_userReviewView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38GenericProductReviewCollectionViewCell_reviewSummaryView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_399F8();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_39C88();
}

@end