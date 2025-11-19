@interface ProductReviewCollectionViewCell
- (_TtC20ProductPageExtension31ProductReviewCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ProductReviewCollectionViewCell

- (_TtC20ProductPageExtension31ProductReviewCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003206DC();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003207C0();
}

@end