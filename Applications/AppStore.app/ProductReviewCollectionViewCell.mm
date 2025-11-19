@interface ProductReviewCollectionViewCell
- (_TtC8AppStore31ProductReviewCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductReviewCollectionViewCell

- (_TtC8AppStore31ProductReviewCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10039B850();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10039B934();
}

@end