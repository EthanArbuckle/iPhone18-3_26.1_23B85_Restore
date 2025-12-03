@interface GenericProductReviewCollectionViewCell
- (_TtC8AppStore38GenericProductReviewCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation GenericProductReviewCollectionViewCell

- (_TtC8AppStore38GenericProductReviewCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100784B84();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_100784E14();
}

@end