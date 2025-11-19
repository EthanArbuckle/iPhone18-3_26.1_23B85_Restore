@interface ProductReviewCollectionViewCell
- (_TtC22SubscribePageExtension31ProductReviewCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductReviewCollectionViewCell

- (_TtC22SubscribePageExtension31ProductReviewCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100288140();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100288224();
}

@end